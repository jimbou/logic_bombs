; ModuleID = 'e_acosh.bc'
source_filename = "./e_acosh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_acosh(double %x) #0 !dbg !20 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %t = alloca double, align 8
  %hx = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata double* %t, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !27, metadata !DIExpression()), !dbg !28
  %0 = bitcast double* %x.addr to i32*, !dbg !29
  %1 = load i32, i32* %0, align 8, !dbg !29
  store i32 %1, i32* %hx, align 4, !dbg !30
  %2 = load i32, i32* %hx, align 4, !dbg !31
  %cmp = icmp slt i32 %2, 1072693248, !dbg !33
  br i1 %cmp, label %if.then, label %if.else, !dbg !34

if.then:                                          ; preds = %entry
  %3 = load double, double* %x.addr, align 8, !dbg !35
  %4 = load double, double* %x.addr, align 8, !dbg !37
  %sub = fsub double %3, %4, !dbg !38
  %5 = load double, double* %x.addr, align 8, !dbg !39
  %6 = load double, double* %x.addr, align 8, !dbg !40
  %sub1 = fsub double %5, %6, !dbg !41
  %div = fdiv double %sub, %sub1, !dbg !42
  store double %div, double* %retval, align 8, !dbg !43
  br label %return, !dbg !43

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %hx, align 4, !dbg !44
  %cmp2 = icmp sge i32 %7, 1102053376, !dbg !46
  br i1 %cmp2, label %if.then3, label %if.else8, !dbg !47

if.then3:                                         ; preds = %if.else
  %8 = load i32, i32* %hx, align 4, !dbg !48
  %cmp4 = icmp sge i32 %8, 2146435072, !dbg !51
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !52

if.then5:                                         ; preds = %if.then3
  %9 = load double, double* %x.addr, align 8, !dbg !53
  %10 = load double, double* %x.addr, align 8, !dbg !55
  %add = fadd double %9, %10, !dbg !56
  store double %add, double* %retval, align 8, !dbg !57
  br label %return, !dbg !57

if.else6:                                         ; preds = %if.then3
  %11 = load double, double* %x.addr, align 8, !dbg !58
  %call = call double @__ieee754_log(double %11), !dbg !59
  %add7 = fadd double %call, 0x3FE62E42FEFA39EF, !dbg !60
  store double %add7, double* %retval, align 8, !dbg !61
  br label %return, !dbg !61

if.else8:                                         ; preds = %if.else
  %12 = load i32, i32* %hx, align 4, !dbg !62
  %sub9 = sub nsw i32 %12, 1072693248, !dbg !64
  %13 = bitcast double* %x.addr to i32*, !dbg !65
  %add.ptr = getelementptr inbounds i32, i32* %13, i64 1, !dbg !65
  %14 = load i32, i32* %add.ptr, align 4, !dbg !65
  %or = or i32 %sub9, %14, !dbg !66
  %cmp10 = icmp eq i32 %or, 0, !dbg !67
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !68

if.then11:                                        ; preds = %if.else8
  store double 0.000000e+00, double* %retval, align 8, !dbg !69
  br label %return, !dbg !69

if.else12:                                        ; preds = %if.else8
  %15 = load i32, i32* %hx, align 4, !dbg !71
  %cmp13 = icmp sgt i32 %15, 1073741824, !dbg !73
  br i1 %cmp13, label %if.then14, label %if.else22, !dbg !74

if.then14:                                        ; preds = %if.else12
  %16 = load double, double* %x.addr, align 8, !dbg !75
  %17 = load double, double* %x.addr, align 8, !dbg !77
  %mul = fmul double %16, %17, !dbg !78
  store double %mul, double* %t, align 8, !dbg !79
  %18 = load double, double* %x.addr, align 8, !dbg !80
  %mul15 = fmul double 2.000000e+00, %18, !dbg !81
  %19 = load double, double* %x.addr, align 8, !dbg !82
  %20 = load double, double* %t, align 8, !dbg !83
  %sub16 = fsub double %20, 1.000000e+00, !dbg !84
  %call17 = call double @sqrt(double %sub16) #4, !dbg !85
  %add18 = fadd double %19, %call17, !dbg !86
  %div19 = fdiv double 1.000000e+00, %add18, !dbg !87
  %sub20 = fsub double %mul15, %div19, !dbg !88
  %call21 = call double @__ieee754_log(double %sub20), !dbg !89
  store double %call21, double* %retval, align 8, !dbg !90
  br label %return, !dbg !90

if.else22:                                        ; preds = %if.else12
  %21 = load double, double* %x.addr, align 8, !dbg !91
  %sub23 = fsub double %21, 1.000000e+00, !dbg !93
  store double %sub23, double* %t, align 8, !dbg !94
  %22 = load double, double* %t, align 8, !dbg !95
  %23 = load double, double* %t, align 8, !dbg !96
  %mul24 = fmul double 2.000000e+00, %23, !dbg !97
  %24 = load double, double* %t, align 8, !dbg !98
  %25 = load double, double* %t, align 8, !dbg !99
  %mul25 = fmul double %24, %25, !dbg !100
  %add26 = fadd double %mul24, %mul25, !dbg !101
  %call27 = call double @sqrt(double %add26) #4, !dbg !102
  %add28 = fadd double %22, %call27, !dbg !103
  %call29 = call double @log1p(double %add28) #4, !dbg !104
  store double %call29, double* %retval, align 8, !dbg !105
  br label %return, !dbg !105

return:                                           ; preds = %if.else22, %if.then14, %if.then11, %if.else6, %if.then5, %if.then
  %26 = load double, double* %retval, align 8, !dbg !106
  ret double %26, !dbg !106
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local double @__ieee754_log(double) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

; Function Attrs: nounwind
declare dso_local double @log1p(double) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !107 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !110, metadata !DIExpression()), !dbg !111
  %0 = bitcast double* %a0 to i8*, !dbg !112
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !113
  call void @llvm.dbg.declare(metadata double* %r, metadata !114, metadata !DIExpression()), !dbg !115
  %1 = load double, double* %a0, align 8, !dbg !116
  %call = call double @__ieee754_acosh(double %1), !dbg !117
  store double %call, double* %r, align 8, !dbg !115
  ret i32 0, !dbg !118
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !6, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "e_acosh.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !12}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression(DW_OP_constu, 4604418534313441775, DW_OP_stack_value))
!8 = distinct !DIGlobalVariable(name: "ln2", scope: !0, file: !9, line: 37, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./e_acosh.c", directory: "/home/klee/logic_bombs/fdlibm")
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !9, line: 36, type: !10, isLocal: true, isDefinition: true)
!14 = !{i32 7, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!20 = distinct !DISubprogram(name: "__ieee754_acosh", scope: !9, file: !9, line: 40, type: !21, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!21 = !DISubroutineType(types: !22)
!22 = !{!11, !11}
!23 = !DILocalVariable(name: "x", arg: 1, scope: !20, file: !9, line: 40, type: !11)
!24 = !DILocation(line: 40, column: 32, scope: !20)
!25 = !DILocalVariable(name: "t", scope: !20, file: !9, line: 46, type: !11)
!26 = !DILocation(line: 46, column: 9, scope: !20)
!27 = !DILocalVariable(name: "hx", scope: !20, file: !9, line: 47, type: !5)
!28 = !DILocation(line: 47, column: 6, scope: !20)
!29 = !DILocation(line: 48, column: 7, scope: !20)
!30 = !DILocation(line: 48, column: 5, scope: !20)
!31 = !DILocation(line: 49, column: 5, scope: !32)
!32 = distinct !DILexicalBlock(scope: !20, file: !9, line: 49, column: 5)
!33 = !DILocation(line: 49, column: 7, scope: !32)
!34 = !DILocation(line: 49, column: 5, scope: !20)
!35 = !DILocation(line: 50, column: 14, scope: !36)
!36 = distinct !DILexicalBlock(scope: !32, file: !9, line: 49, column: 20)
!37 = !DILocation(line: 50, column: 16, scope: !36)
!38 = !DILocation(line: 50, column: 15, scope: !36)
!39 = !DILocation(line: 50, column: 20, scope: !36)
!40 = !DILocation(line: 50, column: 22, scope: !36)
!41 = !DILocation(line: 50, column: 21, scope: !36)
!42 = !DILocation(line: 50, column: 18, scope: !36)
!43 = !DILocation(line: 50, column: 6, scope: !36)
!44 = !DILocation(line: 51, column: 12, scope: !45)
!45 = distinct !DILexicalBlock(scope: !32, file: !9, line: 51, column: 12)
!46 = !DILocation(line: 51, column: 15, scope: !45)
!47 = !DILocation(line: 51, column: 12, scope: !32)
!48 = !DILocation(line: 52, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !9, line: 52, column: 9)
!50 = distinct !DILexicalBlock(scope: !45, file: !9, line: 51, column: 29)
!51 = !DILocation(line: 52, column: 12, scope: !49)
!52 = !DILocation(line: 52, column: 9, scope: !50)
!53 = !DILocation(line: 53, column: 17, scope: !54)
!54 = distinct !DILexicalBlock(scope: !49, file: !9, line: 52, column: 26)
!55 = !DILocation(line: 53, column: 19, scope: !54)
!56 = !DILocation(line: 53, column: 18, scope: !54)
!57 = !DILocation(line: 53, column: 10, scope: !54)
!58 = !DILocation(line: 55, column: 24, scope: !49)
!59 = !DILocation(line: 55, column: 10, scope: !49)
!60 = !DILocation(line: 55, column: 26, scope: !49)
!61 = !DILocation(line: 55, column: 3, scope: !49)
!62 = !DILocation(line: 56, column: 14, scope: !63)
!63 = distinct !DILexicalBlock(scope: !45, file: !9, line: 56, column: 12)
!64 = !DILocation(line: 56, column: 16, scope: !63)
!65 = !DILocation(line: 56, column: 29, scope: !63)
!66 = !DILocation(line: 56, column: 28, scope: !63)
!67 = !DILocation(line: 56, column: 37, scope: !63)
!68 = !DILocation(line: 56, column: 12, scope: !45)
!69 = !DILocation(line: 57, column: 6, scope: !70)
!70 = distinct !DILexicalBlock(scope: !63, file: !9, line: 56, column: 42)
!71 = !DILocation(line: 58, column: 13, scope: !72)
!72 = distinct !DILexicalBlock(scope: !63, file: !9, line: 58, column: 13)
!73 = !DILocation(line: 58, column: 16, scope: !72)
!74 = !DILocation(line: 58, column: 13, scope: !63)
!75 = !DILocation(line: 59, column: 8, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !9, line: 58, column: 30)
!77 = !DILocation(line: 59, column: 10, scope: !76)
!78 = !DILocation(line: 59, column: 9, scope: !76)
!79 = !DILocation(line: 59, column: 7, scope: !76)
!80 = !DILocation(line: 60, column: 31, scope: !76)
!81 = !DILocation(line: 60, column: 30, scope: !76)
!82 = !DILocation(line: 60, column: 38, scope: !76)
!83 = !DILocation(line: 60, column: 45, scope: !76)
!84 = !DILocation(line: 60, column: 46, scope: !76)
!85 = !DILocation(line: 60, column: 40, scope: !76)
!86 = !DILocation(line: 60, column: 39, scope: !76)
!87 = !DILocation(line: 60, column: 36, scope: !76)
!88 = !DILocation(line: 60, column: 32, scope: !76)
!89 = !DILocation(line: 60, column: 13, scope: !76)
!90 = !DILocation(line: 60, column: 6, scope: !76)
!91 = !DILocation(line: 62, column: 10, scope: !92)
!92 = distinct !DILexicalBlock(scope: !72, file: !9, line: 61, column: 9)
!93 = !DILocation(line: 62, column: 11, scope: !92)
!94 = !DILocation(line: 62, column: 8, scope: !92)
!95 = !DILocation(line: 63, column: 19, scope: !92)
!96 = !DILocation(line: 63, column: 30, scope: !92)
!97 = !DILocation(line: 63, column: 29, scope: !92)
!98 = !DILocation(line: 63, column: 32, scope: !92)
!99 = !DILocation(line: 63, column: 34, scope: !92)
!100 = !DILocation(line: 63, column: 33, scope: !92)
!101 = !DILocation(line: 63, column: 31, scope: !92)
!102 = !DILocation(line: 63, column: 21, scope: !92)
!103 = !DILocation(line: 63, column: 20, scope: !92)
!104 = !DILocation(line: 63, column: 13, scope: !92)
!105 = !DILocation(line: 63, column: 6, scope: !92)
!106 = !DILocation(line: 65, column: 1, scope: !20)
!107 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 69, type: !108, scopeLine: 69, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!108 = !DISubroutineType(types: !109)
!109 = !{!5}
!110 = !DILocalVariable(name: "a0", scope: !107, file: !9, line: 70, type: !11)
!111 = !DILocation(line: 70, column: 12, scope: !107)
!112 = !DILocation(line: 71, column: 24, scope: !107)
!113 = !DILocation(line: 71, column: 5, scope: !107)
!114 = !DILocalVariable(name: "r", scope: !107, file: !9, line: 73, type: !11)
!115 = !DILocation(line: 73, column: 12, scope: !107)
!116 = !DILocation(line: 73, column: 32, scope: !107)
!117 = !DILocation(line: 73, column: 16, scope: !107)
!118 = !DILocation(line: 74, column: 5, scope: !107)
