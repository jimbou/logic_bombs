; ModuleID = 's_scalbn.bc'
source_filename = "./s_scalbn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @scalbn(double %x, i32 %n) #0 !dbg !24 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %n.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %hx = alloca i32, align 4
  %lx = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !27, metadata !DIExpression()), !dbg !28
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %k, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %lx, metadata !35, metadata !DIExpression()), !dbg !36
  %0 = bitcast double* %x.addr to i32*, !dbg !37
  %1 = load i32, i32* %0, align 8, !dbg !37
  store i32 %1, i32* %hx, align 4, !dbg !38
  %2 = bitcast double* %x.addr to i32*, !dbg !39
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 1, !dbg !39
  %3 = load i32, i32* %add.ptr, align 4, !dbg !39
  store i32 %3, i32* %lx, align 4, !dbg !40
  %4 = load i32, i32* %hx, align 4, !dbg !41
  %and = and i32 %4, 2146435072, !dbg !42
  %shr = ashr i32 %and, 20, !dbg !43
  store i32 %shr, i32* %k, align 4, !dbg !44
  %5 = load i32, i32* %k, align 4, !dbg !45
  %cmp = icmp eq i32 %5, 0, !dbg !47
  br i1 %cmp, label %if.then, label %if.end10, !dbg !48

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %lx, align 4, !dbg !49
  %7 = load i32, i32* %hx, align 4, !dbg !52
  %and1 = and i32 %7, 2147483647, !dbg !53
  %or = or i32 %6, %and1, !dbg !54
  %cmp2 = icmp eq i32 %or, 0, !dbg !55
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !56

if.then3:                                         ; preds = %if.then
  %8 = load double, double* %x.addr, align 8, !dbg !57
  store double %8, double* %retval, align 8, !dbg !58
  br label %return, !dbg !58

if.end:                                           ; preds = %if.then
  %9 = load double, double* %x.addr, align 8, !dbg !59
  %mul = fmul double %9, 0x4350000000000000, !dbg !59
  store double %mul, double* %x.addr, align 8, !dbg !59
  %10 = bitcast double* %x.addr to i32*, !dbg !60
  %11 = load i32, i32* %10, align 8, !dbg !60
  store i32 %11, i32* %hx, align 4, !dbg !61
  %12 = load i32, i32* %hx, align 4, !dbg !62
  %and4 = and i32 %12, 2146435072, !dbg !63
  %shr5 = ashr i32 %and4, 20, !dbg !64
  %sub = sub nsw i32 %shr5, 54, !dbg !65
  store i32 %sub, i32* %k, align 4, !dbg !66
  %13 = load i32, i32* %n.addr, align 4, !dbg !67
  %cmp6 = icmp slt i32 %13, -50000, !dbg !69
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !70

if.then7:                                         ; preds = %if.end
  %14 = load double, double* %x.addr, align 8, !dbg !71
  %mul8 = fmul double 1.000000e-300, %14, !dbg !72
  store double %mul8, double* %retval, align 8, !dbg !73
  br label %return, !dbg !73

if.end9:                                          ; preds = %if.end
  br label %if.end10, !dbg !74

if.end10:                                         ; preds = %if.end9, %entry
  %15 = load i32, i32* %k, align 4, !dbg !75
  %cmp11 = icmp eq i32 %15, 2047, !dbg !77
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !78

if.then12:                                        ; preds = %if.end10
  %16 = load double, double* %x.addr, align 8, !dbg !79
  %17 = load double, double* %x.addr, align 8, !dbg !80
  %add = fadd double %16, %17, !dbg !81
  store double %add, double* %retval, align 8, !dbg !82
  br label %return, !dbg !82

if.end13:                                         ; preds = %if.end10
  %18 = load i32, i32* %k, align 4, !dbg !83
  %19 = load i32, i32* %n.addr, align 4, !dbg !84
  %add14 = add nsw i32 %18, %19, !dbg !85
  store i32 %add14, i32* %k, align 4, !dbg !86
  %20 = load i32, i32* %k, align 4, !dbg !87
  %cmp15 = icmp sgt i32 %20, 2046, !dbg !89
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !90

if.then16:                                        ; preds = %if.end13
  %21 = load double, double* %x.addr, align 8, !dbg !91
  %22 = call double @copysign(double 1.000000e+300, double %21), !dbg !92
  %mul17 = fmul double 1.000000e+300, %22, !dbg !93
  store double %mul17, double* %retval, align 8, !dbg !94
  br label %return, !dbg !94

if.end18:                                         ; preds = %if.end13
  %23 = load i32, i32* %k, align 4, !dbg !95
  %cmp19 = icmp sgt i32 %23, 0, !dbg !97
  br i1 %cmp19, label %if.then20, label %if.end23, !dbg !98

if.then20:                                        ; preds = %if.end18
  %24 = load i32, i32* %hx, align 4, !dbg !99
  %and21 = and i32 %24, -2146435073, !dbg !101
  %25 = load i32, i32* %k, align 4, !dbg !102
  %shl = shl i32 %25, 20, !dbg !103
  %or22 = or i32 %and21, %shl, !dbg !104
  %26 = bitcast double* %x.addr to i32*, !dbg !105
  store i32 %or22, i32* %26, align 8, !dbg !106
  %27 = load double, double* %x.addr, align 8, !dbg !107
  store double %27, double* %retval, align 8, !dbg !108
  br label %return, !dbg !108

if.end23:                                         ; preds = %if.end18
  %28 = load i32, i32* %k, align 4, !dbg !109
  %cmp24 = icmp sle i32 %28, -54, !dbg !111
  br i1 %cmp24, label %if.then25, label %if.end30, !dbg !112

if.then25:                                        ; preds = %if.end23
  %29 = load i32, i32* %n.addr, align 4, !dbg !113
  %cmp26 = icmp sgt i32 %29, 50000, !dbg !116
  br i1 %cmp26, label %if.then27, label %if.else, !dbg !117

if.then27:                                        ; preds = %if.then25
  %30 = load double, double* %x.addr, align 8, !dbg !118
  %31 = call double @copysign(double 1.000000e+300, double %30), !dbg !120
  %mul28 = fmul double 1.000000e+300, %31, !dbg !121
  store double %mul28, double* %retval, align 8, !dbg !122
  br label %return, !dbg !122

if.else:                                          ; preds = %if.then25
  %32 = load double, double* %x.addr, align 8, !dbg !123
  %33 = call double @copysign(double 1.000000e-300, double %32), !dbg !125
  %mul29 = fmul double 1.000000e-300, %33, !dbg !126
  store double %mul29, double* %retval, align 8, !dbg !127
  br label %return, !dbg !127

if.end30:                                         ; preds = %if.end23
  %34 = load i32, i32* %k, align 4, !dbg !128
  %add31 = add nsw i32 %34, 54, !dbg !128
  store i32 %add31, i32* %k, align 4, !dbg !128
  %35 = load i32, i32* %hx, align 4, !dbg !129
  %and32 = and i32 %35, -2146435073, !dbg !130
  %36 = load i32, i32* %k, align 4, !dbg !131
  %shl33 = shl i32 %36, 20, !dbg !132
  %or34 = or i32 %and32, %shl33, !dbg !133
  %37 = bitcast double* %x.addr to i32*, !dbg !134
  store i32 %or34, i32* %37, align 8, !dbg !135
  %38 = load double, double* %x.addr, align 8, !dbg !136
  %mul35 = fmul double %38, 0x3C90000000000000, !dbg !137
  store double %mul35, double* %retval, align 8, !dbg !138
  br label %return, !dbg !138

return:                                           ; preds = %if.end30, %if.else, %if.then27, %if.then20, %if.then16, %if.then12, %if.then7, %if.then3
  %39 = load double, double* %retval, align 8, !dbg !139
  ret double %39, !dbg !139
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.copysign.f64(double, double) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !140 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca i32, align 4
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !143, metadata !DIExpression()), !dbg !144
  %0 = bitcast double* %a0 to i8*, !dbg !145
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !146
  call void @llvm.dbg.declare(metadata i32* %a1, metadata !147, metadata !DIExpression()), !dbg !148
  %1 = bitcast i32* %a1 to i8*, !dbg !149
  call void @klee_make_symbolic(i8* %1, i64 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !150
  call void @llvm.dbg.declare(metadata double* %r, metadata !151, metadata !DIExpression()), !dbg !152
  %2 = load double, double* %a0, align 8, !dbg !153
  %3 = load i32, i32* %a1, align 4, !dbg !154
  %call = call double @scalbn(double %2, i32 %3) #3, !dbg !155
  store double %call, double* %r, align 8, !dbg !152
  ret i32 0, !dbg !156
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

declare double @copysign(double, double)

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !6, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "s_scalbn.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !12, !14, !16}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression(DW_OP_constu, 4850376798678024192, DW_OP_stack_value))
!8 = distinct !DIGlobalVariable(name: "two54", scope: !0, file: !9, line: 28, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./s_scalbn.c", directory: "/home/klee/logic_bombs/fdlibm")
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 118622047889322841, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "tiny", scope: !0, file: !9, line: 31, type: !10, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "huge", scope: !0, file: !9, line: 30, type: !10, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4363988038922010624, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "twom54", scope: !0, file: !9, line: 29, type: !10, isLocal: true, isDefinition: true)
!18 = !{i32 7, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!24 = distinct !DISubprogram(name: "scalbn", scope: !9, file: !9, line: 34, type: !25, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!25 = !DISubroutineType(types: !26)
!26 = !{!11, !11, !5}
!27 = !DILocalVariable(name: "x", arg: 1, scope: !24, file: !9, line: 34, type: !11)
!28 = !DILocation(line: 34, column: 24, scope: !24)
!29 = !DILocalVariable(name: "n", arg: 2, scope: !24, file: !9, line: 34, type: !5)
!30 = !DILocation(line: 34, column: 31, scope: !24)
!31 = !DILocalVariable(name: "k", scope: !24, file: !9, line: 40, type: !5)
!32 = !DILocation(line: 40, column: 7, scope: !24)
!33 = !DILocalVariable(name: "hx", scope: !24, file: !9, line: 40, type: !5)
!34 = !DILocation(line: 40, column: 9, scope: !24)
!35 = !DILocalVariable(name: "lx", scope: !24, file: !9, line: 40, type: !5)
!36 = !DILocation(line: 40, column: 12, scope: !24)
!37 = !DILocation(line: 41, column: 7, scope: !24)
!38 = !DILocation(line: 41, column: 5, scope: !24)
!39 = !DILocation(line: 42, column: 7, scope: !24)
!40 = !DILocation(line: 42, column: 5, scope: !24)
!41 = !DILocation(line: 43, column: 14, scope: !24)
!42 = !DILocation(line: 43, column: 16, scope: !24)
!43 = !DILocation(line: 43, column: 28, scope: !24)
!44 = !DILocation(line: 43, column: 11, scope: !24)
!45 = !DILocation(line: 44, column: 13, scope: !46)
!46 = distinct !DILexicalBlock(scope: !24, file: !9, line: 44, column: 13)
!47 = !DILocation(line: 44, column: 14, scope: !46)
!48 = !DILocation(line: 44, column: 13, scope: !24)
!49 = !DILocation(line: 45, column: 18, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !9, line: 45, column: 17)
!51 = distinct !DILexicalBlock(scope: !46, file: !9, line: 44, column: 19)
!52 = !DILocation(line: 45, column: 22, scope: !50)
!53 = !DILocation(line: 45, column: 24, scope: !50)
!54 = !DILocation(line: 45, column: 20, scope: !50)
!55 = !DILocation(line: 45, column: 37, scope: !50)
!56 = !DILocation(line: 45, column: 17, scope: !51)
!57 = !DILocation(line: 45, column: 49, scope: !50)
!58 = !DILocation(line: 45, column: 42, scope: !50)
!59 = !DILocation(line: 46, column: 8, scope: !51)
!60 = !DILocation(line: 47, column: 11, scope: !51)
!61 = !DILocation(line: 47, column: 9, scope: !51)
!62 = !DILocation(line: 48, column: 12, scope: !51)
!63 = !DILocation(line: 48, column: 14, scope: !51)
!64 = !DILocation(line: 48, column: 26, scope: !51)
!65 = !DILocation(line: 48, column: 32, scope: !51)
!66 = !DILocation(line: 48, column: 8, scope: !51)
!67 = !DILocation(line: 49, column: 17, scope: !68)
!68 = distinct !DILexicalBlock(scope: !51, file: !9, line: 49, column: 17)
!69 = !DILocation(line: 49, column: 18, scope: !68)
!70 = !DILocation(line: 49, column: 17, scope: !51)
!71 = !DILocation(line: 49, column: 40, scope: !68)
!72 = !DILocation(line: 49, column: 39, scope: !68)
!73 = !DILocation(line: 49, column: 28, scope: !68)
!74 = !DILocation(line: 50, column: 6, scope: !51)
!75 = !DILocation(line: 51, column: 13, scope: !76)
!76 = distinct !DILexicalBlock(scope: !24, file: !9, line: 51, column: 13)
!77 = !DILocation(line: 51, column: 14, scope: !76)
!78 = !DILocation(line: 51, column: 13, scope: !24)
!79 = !DILocation(line: 51, column: 30, scope: !76)
!80 = !DILocation(line: 51, column: 32, scope: !76)
!81 = !DILocation(line: 51, column: 31, scope: !76)
!82 = !DILocation(line: 51, column: 23, scope: !76)
!83 = !DILocation(line: 52, column: 13, scope: !24)
!84 = !DILocation(line: 52, column: 15, scope: !24)
!85 = !DILocation(line: 52, column: 14, scope: !24)
!86 = !DILocation(line: 52, column: 11, scope: !24)
!87 = !DILocation(line: 53, column: 13, scope: !88)
!88 = distinct !DILexicalBlock(scope: !24, file: !9, line: 53, column: 13)
!89 = !DILocation(line: 53, column: 15, scope: !88)
!90 = !DILocation(line: 53, column: 13, scope: !24)
!91 = !DILocation(line: 53, column: 51, scope: !88)
!92 = !DILocation(line: 53, column: 37, scope: !88)
!93 = !DILocation(line: 53, column: 36, scope: !88)
!94 = !DILocation(line: 53, column: 25, scope: !88)
!95 = !DILocation(line: 54, column: 13, scope: !96)
!96 = distinct !DILexicalBlock(scope: !24, file: !9, line: 54, column: 13)
!97 = !DILocation(line: 54, column: 15, scope: !96)
!98 = !DILocation(line: 54, column: 13, scope: !24)
!99 = !DILocation(line: 55, column: 18, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !9, line: 55, column: 6)
!101 = !DILocation(line: 55, column: 20, scope: !100)
!102 = !DILocation(line: 55, column: 34, scope: !100)
!103 = !DILocation(line: 55, column: 35, scope: !100)
!104 = !DILocation(line: 55, column: 32, scope: !100)
!105 = !DILocation(line: 55, column: 7, scope: !100)
!106 = !DILocation(line: 55, column: 15, scope: !100)
!107 = !DILocation(line: 55, column: 49, scope: !100)
!108 = !DILocation(line: 55, column: 42, scope: !100)
!109 = !DILocation(line: 56, column: 13, scope: !110)
!110 = distinct !DILexicalBlock(scope: !24, file: !9, line: 56, column: 13)
!111 = !DILocation(line: 56, column: 15, scope: !110)
!112 = !DILocation(line: 56, column: 13, scope: !24)
!113 = !DILocation(line: 57, column: 17, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !9, line: 57, column: 17)
!115 = distinct !DILexicalBlock(scope: !110, file: !9, line: 56, column: 23)
!116 = !DILocation(line: 57, column: 19, scope: !114)
!117 = !DILocation(line: 57, column: 17, scope: !115)
!118 = !DILocation(line: 59, column: 46, scope: !119)
!119 = distinct !DILexicalBlock(scope: !114, file: !9, line: 57, column: 28)
!120 = !DILocation(line: 59, column: 31, scope: !119)
!121 = !DILocation(line: 59, column: 29, scope: !119)
!122 = !DILocation(line: 59, column: 17, scope: !119)
!123 = !DILocation(line: 62, column: 46, scope: !124)
!124 = distinct !DILexicalBlock(scope: !114, file: !9, line: 60, column: 20)
!125 = !DILocation(line: 62, column: 31, scope: !124)
!126 = !DILocation(line: 62, column: 29, scope: !124)
!127 = !DILocation(line: 62, column: 17, scope: !124)
!128 = !DILocation(line: 67, column: 11, scope: !24)
!129 = !DILocation(line: 68, column: 20, scope: !24)
!130 = !DILocation(line: 68, column: 23, scope: !24)
!131 = !DILocation(line: 68, column: 40, scope: !24)
!132 = !DILocation(line: 68, column: 42, scope: !24)
!133 = !DILocation(line: 68, column: 37, scope: !24)
!134 = !DILocation(line: 68, column: 9, scope: !24)
!135 = !DILocation(line: 68, column: 17, scope: !24)
!136 = !DILocation(line: 69, column: 16, scope: !24)
!137 = !DILocation(line: 69, column: 18, scope: !24)
!138 = !DILocation(line: 69, column: 9, scope: !24)
!139 = !DILocation(line: 71, column: 1, scope: !24)
!140 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 75, type: !141, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!141 = !DISubroutineType(types: !142)
!142 = !{!5}
!143 = !DILocalVariable(name: "a0", scope: !140, file: !9, line: 76, type: !11)
!144 = !DILocation(line: 76, column: 12, scope: !140)
!145 = !DILocation(line: 77, column: 24, scope: !140)
!146 = !DILocation(line: 77, column: 5, scope: !140)
!147 = !DILocalVariable(name: "a1", scope: !140, file: !9, line: 78, type: !5)
!148 = !DILocation(line: 78, column: 9, scope: !140)
!149 = !DILocation(line: 79, column: 24, scope: !140)
!150 = !DILocation(line: 79, column: 5, scope: !140)
!151 = !DILocalVariable(name: "r", scope: !140, file: !9, line: 81, type: !11)
!152 = !DILocation(line: 81, column: 12, scope: !140)
!153 = !DILocation(line: 81, column: 23, scope: !140)
!154 = !DILocation(line: 81, column: 27, scope: !140)
!155 = !DILocation(line: 81, column: 16, scope: !140)
!156 = !DILocation(line: 82, column: 5, scope: !140)
