; ModuleID = 'w_pow.bc'
source_filename = "./w_pow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_fdlib_version = external dso_local global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @pow(double %x, double %y) #0 !dbg !17 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %z = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !23, metadata !DIExpression()), !dbg !24
  store double %y, double* %y.addr, align 8
  call void @llvm.dbg.declare(metadata double* %y.addr, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata double* %z, metadata !27, metadata !DIExpression()), !dbg !28
  %0 = load double, double* %x.addr, align 8, !dbg !29
  %1 = load double, double* %y.addr, align 8, !dbg !30
  %call = call double @__ieee754_pow(double %0, double %1), !dbg !31
  store double %call, double* %z, align 8, !dbg !32
  %2 = load i32, i32* @_fdlib_version, align 4, !dbg !33
  %cmp = icmp eq i32 %2, -1, !dbg !35
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !36

lor.lhs.false:                                    ; preds = %entry
  %3 = load double, double* %y.addr, align 8, !dbg !37
  %call1 = call i32 @isnan(double %3), !dbg !38
  %tobool = icmp ne i32 %call1, 0, !dbg !38
  br i1 %tobool, label %if.then, label %if.end, !dbg !39

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load double, double* %z, align 8, !dbg !40
  store double %4, double* %retval, align 8, !dbg !41
  br label %return, !dbg !41

if.end:                                           ; preds = %lor.lhs.false
  %5 = load double, double* %x.addr, align 8, !dbg !42
  %call2 = call i32 @isnan(double %5), !dbg !44
  %tobool3 = icmp ne i32 %call2, 0, !dbg !44
  br i1 %tobool3, label %if.then4, label %if.end8, !dbg !45

if.then4:                                         ; preds = %if.end
  %6 = load double, double* %y.addr, align 8, !dbg !46
  %cmp5 = fcmp oeq double %6, 0.000000e+00, !dbg !49
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !50

if.then6:                                         ; preds = %if.then4
  %7 = load double, double* %x.addr, align 8, !dbg !51
  %8 = load double, double* %y.addr, align 8, !dbg !52
  %call7 = call double @__kernel_standard(double %7, double %8, i32 42), !dbg !53
  store double %call7, double* %retval, align 8, !dbg !54
  br label %return, !dbg !54

if.else:                                          ; preds = %if.then4
  %9 = load double, double* %z, align 8, !dbg !55
  store double %9, double* %retval, align 8, !dbg !56
  br label %return, !dbg !56

if.end8:                                          ; preds = %if.end
  %10 = load double, double* %x.addr, align 8, !dbg !57
  %cmp9 = fcmp oeq double %10, 0.000000e+00, !dbg !59
  br i1 %cmp9, label %if.then10, label %if.end19, !dbg !60

if.then10:                                        ; preds = %if.end8
  %11 = load double, double* %y.addr, align 8, !dbg !61
  %cmp11 = fcmp oeq double %11, 0.000000e+00, !dbg !64
  br i1 %cmp11, label %if.then12, label %if.end14, !dbg !65

if.then12:                                        ; preds = %if.then10
  %12 = load double, double* %x.addr, align 8, !dbg !66
  %13 = load double, double* %y.addr, align 8, !dbg !67
  %call13 = call double @__kernel_standard(double %12, double %13, i32 20), !dbg !68
  store double %call13, double* %retval, align 8, !dbg !69
  br label %return, !dbg !69

if.end14:                                         ; preds = %if.then10
  %14 = load double, double* %y.addr, align 8, !dbg !70
  %15 = call double @llvm.fabs.f64(double %14) #3, !dbg !72
  %cmpinf = fcmp one double %15, 0x7FF0000000000000, !dbg !72
  br i1 %cmpinf, label %land.lhs.true, label %if.end18, !dbg !73

land.lhs.true:                                    ; preds = %if.end14
  %16 = load double, double* %y.addr, align 8, !dbg !74
  %cmp15 = fcmp olt double %16, 0.000000e+00, !dbg !75
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !76

if.then16:                                        ; preds = %land.lhs.true
  %17 = load double, double* %x.addr, align 8, !dbg !77
  %18 = load double, double* %y.addr, align 8, !dbg !78
  %call17 = call double @__kernel_standard(double %17, double %18, i32 23), !dbg !79
  store double %call17, double* %retval, align 8, !dbg !80
  br label %return, !dbg !80

if.end18:                                         ; preds = %land.lhs.true, %if.end14
  %19 = load double, double* %z, align 8, !dbg !81
  store double %19, double* %retval, align 8, !dbg !82
  br label %return, !dbg !82

if.end19:                                         ; preds = %if.end8
  %20 = load double, double* %z, align 8, !dbg !83
  %21 = call double @llvm.fabs.f64(double %20) #3, !dbg !85
  %cmpinf20 = fcmp one double %21, 0x7FF0000000000000, !dbg !85
  br i1 %cmpinf20, label %if.end33, label %if.then21, !dbg !86

if.then21:                                        ; preds = %if.end19
  %22 = load double, double* %x.addr, align 8, !dbg !87
  %23 = call double @llvm.fabs.f64(double %22) #3, !dbg !90
  %cmpinf22 = fcmp one double %23, 0x7FF0000000000000, !dbg !90
  br i1 %cmpinf22, label %land.lhs.true23, label %if.end32, !dbg !91

land.lhs.true23:                                  ; preds = %if.then21
  %24 = load double, double* %y.addr, align 8, !dbg !92
  %25 = call double @llvm.fabs.f64(double %24) #3, !dbg !93
  %cmpinf24 = fcmp one double %25, 0x7FF0000000000000, !dbg !93
  br i1 %cmpinf24, label %if.then25, label %if.end32, !dbg !94

if.then25:                                        ; preds = %land.lhs.true23
  %26 = load double, double* %z, align 8, !dbg !95
  %call26 = call i32 @isnan(double %26), !dbg !98
  %tobool27 = icmp ne i32 %call26, 0, !dbg !98
  br i1 %tobool27, label %if.then28, label %if.else30, !dbg !99

if.then28:                                        ; preds = %if.then25
  %27 = load double, double* %x.addr, align 8, !dbg !100
  %28 = load double, double* %y.addr, align 8, !dbg !101
  %call29 = call double @__kernel_standard(double %27, double %28, i32 24), !dbg !102
  store double %call29, double* %retval, align 8, !dbg !103
  br label %return, !dbg !103

if.else30:                                        ; preds = %if.then25
  %29 = load double, double* %x.addr, align 8, !dbg !104
  %30 = load double, double* %y.addr, align 8, !dbg !105
  %call31 = call double @__kernel_standard(double %29, double %30, i32 21), !dbg !106
  store double %call31, double* %retval, align 8, !dbg !107
  br label %return, !dbg !107

if.end32:                                         ; preds = %land.lhs.true23, %if.then21
  br label %if.end33, !dbg !108

if.end33:                                         ; preds = %if.end32, %if.end19
  %31 = load double, double* %z, align 8, !dbg !109
  %cmp34 = fcmp oeq double %31, 0.000000e+00, !dbg !111
  br i1 %cmp34, label %land.lhs.true35, label %if.end41, !dbg !112

land.lhs.true35:                                  ; preds = %if.end33
  %32 = load double, double* %x.addr, align 8, !dbg !113
  %33 = call double @llvm.fabs.f64(double %32) #3, !dbg !114
  %cmpinf36 = fcmp one double %33, 0x7FF0000000000000, !dbg !114
  br i1 %cmpinf36, label %land.lhs.true37, label %if.end41, !dbg !115

land.lhs.true37:                                  ; preds = %land.lhs.true35
  %34 = load double, double* %y.addr, align 8, !dbg !116
  %35 = call double @llvm.fabs.f64(double %34) #3, !dbg !117
  %cmpinf38 = fcmp one double %35, 0x7FF0000000000000, !dbg !117
  br i1 %cmpinf38, label %if.then39, label %if.end41, !dbg !118

if.then39:                                        ; preds = %land.lhs.true37
  %36 = load double, double* %x.addr, align 8, !dbg !119
  %37 = load double, double* %y.addr, align 8, !dbg !120
  %call40 = call double @__kernel_standard(double %36, double %37, i32 22), !dbg !121
  store double %call40, double* %retval, align 8, !dbg !122
  br label %return, !dbg !122

if.end41:                                         ; preds = %land.lhs.true37, %land.lhs.true35, %if.end33
  %38 = load double, double* %z, align 8, !dbg !123
  store double %38, double* %retval, align 8, !dbg !124
  br label %return, !dbg !124

return:                                           ; preds = %if.end41, %if.then39, %if.else30, %if.then28, %if.end18, %if.then16, %if.then12, %if.else, %if.then6, %if.then
  %39 = load double, double* %retval, align 8, !dbg !125
  ret double %39, !dbg !125
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local double @__ieee754_pow(double, double) #2

declare dso_local i32 @isnan(double) #2

declare dso_local double @__kernel_standard(double, double, i32) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !126 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !129, metadata !DIExpression()), !dbg !130
  %0 = bitcast double* %a0 to i8*, !dbg !131
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !132
  call void @llvm.dbg.declare(metadata double* %a1, metadata !133, metadata !DIExpression()), !dbg !134
  %1 = bitcast double* %a1 to i8*, !dbg !135
  call void @klee_make_symbolic(i8* %1, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !136
  call void @llvm.dbg.declare(metadata double* %r, metadata !137, metadata !DIExpression()), !dbg !138
  %2 = load double, double* %a0, align 8, !dbg !139
  %3 = load double, double* %a1, align 8, !dbg !140
  %call = call double @pow(double %2, double %3) #4, !dbg !141
  store double %call, double* %r, align 8, !dbg !138
  ret i32 0, !dbg !142
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { readnone }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "w_pow.c", directory: "/home/klee/logic_bombs/fdlibm")
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
!17 = distinct !DISubprogram(name: "pow", scope: !18, file: !18, line: 23, type: !19, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!18 = !DIFile(filename: "./w_pow.c", directory: "/home/klee/logic_bombs/fdlibm")
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !21, !21}
!21 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!22 = !{}
!23 = !DILocalVariable(name: "x", arg: 1, scope: !17, file: !18, line: 23, type: !21)
!24 = !DILocation(line: 23, column: 20, scope: !17)
!25 = !DILocalVariable(name: "y", arg: 2, scope: !17, file: !18, line: 23, type: !21)
!26 = !DILocation(line: 23, column: 30, scope: !17)
!27 = !DILocalVariable(name: "z", scope: !17, file: !18, line: 32, type: !21)
!28 = !DILocation(line: 32, column: 9, scope: !17)
!29 = !DILocation(line: 33, column: 18, scope: !17)
!30 = !DILocation(line: 33, column: 20, scope: !17)
!31 = !DILocation(line: 33, column: 4, scope: !17)
!32 = !DILocation(line: 33, column: 3, scope: !17)
!33 = !DILocation(line: 34, column: 5, scope: !34)
!34 = distinct !DILexicalBlock(scope: !17, file: !18, line: 34, column: 5)
!35 = !DILocation(line: 34, column: 18, scope: !34)
!36 = !DILocation(line: 34, column: 27, scope: !34)
!37 = !DILocation(line: 34, column: 36, scope: !34)
!38 = !DILocation(line: 34, column: 30, scope: !34)
!39 = !DILocation(line: 34, column: 5, scope: !17)
!40 = !DILocation(line: 34, column: 47, scope: !34)
!41 = !DILocation(line: 34, column: 40, scope: !34)
!42 = !DILocation(line: 35, column: 11, scope: !43)
!43 = distinct !DILexicalBlock(scope: !17, file: !18, line: 35, column: 5)
!44 = !DILocation(line: 35, column: 5, scope: !43)
!45 = !DILocation(line: 35, column: 5, scope: !17)
!46 = !DILocation(line: 36, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !18, line: 36, column: 9)
!48 = distinct !DILexicalBlock(scope: !43, file: !18, line: 35, column: 15)
!49 = !DILocation(line: 36, column: 10, scope: !47)
!50 = !DILocation(line: 36, column: 9, scope: !48)
!51 = !DILocation(line: 37, column: 35, scope: !47)
!52 = !DILocation(line: 37, column: 37, scope: !47)
!53 = !DILocation(line: 37, column: 17, scope: !47)
!54 = !DILocation(line: 37, column: 10, scope: !47)
!55 = !DILocation(line: 39, column: 10, scope: !47)
!56 = !DILocation(line: 39, column: 3, scope: !47)
!57 = !DILocation(line: 41, column: 5, scope: !58)
!58 = distinct !DILexicalBlock(scope: !17, file: !18, line: 41, column: 5)
!59 = !DILocation(line: 41, column: 6, scope: !58)
!60 = !DILocation(line: 41, column: 5, scope: !17)
!61 = !DILocation(line: 42, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !63, file: !18, line: 42, column: 9)
!63 = distinct !DILexicalBlock(scope: !58, file: !18, line: 41, column: 12)
!64 = !DILocation(line: 42, column: 10, scope: !62)
!65 = !DILocation(line: 42, column: 9, scope: !63)
!66 = !DILocation(line: 43, column: 35, scope: !62)
!67 = !DILocation(line: 43, column: 37, scope: !62)
!68 = !DILocation(line: 43, column: 17, scope: !62)
!69 = !DILocation(line: 43, column: 10, scope: !62)
!70 = !DILocation(line: 44, column: 16, scope: !71)
!71 = distinct !DILexicalBlock(scope: !63, file: !18, line: 44, column: 9)
!72 = !DILocation(line: 44, column: 9, scope: !71)
!73 = !DILocation(line: 44, column: 18, scope: !71)
!74 = !DILocation(line: 44, column: 20, scope: !71)
!75 = !DILocation(line: 44, column: 21, scope: !71)
!76 = !DILocation(line: 44, column: 9, scope: !63)
!77 = !DILocation(line: 45, column: 35, scope: !71)
!78 = !DILocation(line: 45, column: 37, scope: !71)
!79 = !DILocation(line: 45, column: 17, scope: !71)
!80 = !DILocation(line: 45, column: 10, scope: !71)
!81 = !DILocation(line: 46, column: 13, scope: !63)
!82 = !DILocation(line: 46, column: 6, scope: !63)
!83 = !DILocation(line: 48, column: 13, scope: !84)
!84 = distinct !DILexicalBlock(scope: !17, file: !18, line: 48, column: 5)
!85 = !DILocation(line: 48, column: 6, scope: !84)
!86 = !DILocation(line: 48, column: 5, scope: !17)
!87 = !DILocation(line: 49, column: 16, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !18, line: 49, column: 9)
!89 = distinct !DILexicalBlock(scope: !84, file: !18, line: 48, column: 17)
!90 = !DILocation(line: 49, column: 9, scope: !88)
!91 = !DILocation(line: 49, column: 18, scope: !88)
!92 = !DILocation(line: 49, column: 27, scope: !88)
!93 = !DILocation(line: 49, column: 20, scope: !88)
!94 = !DILocation(line: 49, column: 9, scope: !89)
!95 = !DILocation(line: 50, column: 19, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !18, line: 50, column: 13)
!97 = distinct !DILexicalBlock(scope: !88, file: !18, line: 49, column: 31)
!98 = !DILocation(line: 50, column: 13, scope: !96)
!99 = !DILocation(line: 50, column: 13, scope: !97)
!100 = !DILocation(line: 51, column: 39, scope: !96)
!101 = !DILocation(line: 51, column: 41, scope: !96)
!102 = !DILocation(line: 51, column: 21, scope: !96)
!103 = !DILocation(line: 51, column: 14, scope: !96)
!104 = !DILocation(line: 53, column: 39, scope: !96)
!105 = !DILocation(line: 53, column: 41, scope: !96)
!106 = !DILocation(line: 53, column: 21, scope: !96)
!107 = !DILocation(line: 53, column: 14, scope: !96)
!108 = !DILocation(line: 55, column: 2, scope: !89)
!109 = !DILocation(line: 56, column: 5, scope: !110)
!110 = distinct !DILexicalBlock(scope: !17, file: !18, line: 56, column: 5)
!111 = !DILocation(line: 56, column: 6, scope: !110)
!112 = !DILocation(line: 56, column: 11, scope: !110)
!113 = !DILocation(line: 56, column: 20, scope: !110)
!114 = !DILocation(line: 56, column: 13, scope: !110)
!115 = !DILocation(line: 56, column: 22, scope: !110)
!116 = !DILocation(line: 56, column: 31, scope: !110)
!117 = !DILocation(line: 56, column: 24, scope: !110)
!118 = !DILocation(line: 56, column: 5, scope: !17)
!119 = !DILocation(line: 57, column: 31, scope: !110)
!120 = !DILocation(line: 57, column: 33, scope: !110)
!121 = !DILocation(line: 57, column: 13, scope: !110)
!122 = !DILocation(line: 57, column: 6, scope: !110)
!123 = !DILocation(line: 58, column: 9, scope: !17)
!124 = !DILocation(line: 58, column: 2, scope: !17)
!125 = !DILocation(line: 60, column: 1, scope: !17)
!126 = distinct !DISubprogram(name: "main", scope: !18, file: !18, line: 64, type: !127, scopeLine: 64, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!127 = !DISubroutineType(types: !128)
!128 = !{!5}
!129 = !DILocalVariable(name: "a0", scope: !126, file: !18, line: 65, type: !21)
!130 = !DILocation(line: 65, column: 12, scope: !126)
!131 = !DILocation(line: 66, column: 24, scope: !126)
!132 = !DILocation(line: 66, column: 5, scope: !126)
!133 = !DILocalVariable(name: "a1", scope: !126, file: !18, line: 67, type: !21)
!134 = !DILocation(line: 67, column: 12, scope: !126)
!135 = !DILocation(line: 68, column: 24, scope: !126)
!136 = !DILocation(line: 68, column: 5, scope: !126)
!137 = !DILocalVariable(name: "r", scope: !126, file: !18, line: 70, type: !21)
!138 = !DILocation(line: 70, column: 12, scope: !126)
!139 = !DILocation(line: 70, column: 20, scope: !126)
!140 = !DILocation(line: 70, column: 24, scope: !126)
!141 = !DILocation(line: 70, column: 16, scope: !126)
!142 = !DILocation(line: 71, column: 5, scope: !126)
