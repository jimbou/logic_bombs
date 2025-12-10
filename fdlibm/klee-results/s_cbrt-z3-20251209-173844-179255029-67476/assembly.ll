; ModuleID = 's_cbrt.bc'
source_filename = "./s_cbrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone readnone uwtable willreturn
define dso_local double @cbrt(double %x) #0 !dbg !32 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %hx = alloca i32, align 4
  %r = alloca double, align 8
  %s = alloca double, align 8
  %t = alloca double, align 8
  %w = alloca double, align 8
  %sign = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata double* %r, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata double* %s, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata double* %t, metadata !43, metadata !DIExpression()), !dbg !44
  store double 0.000000e+00, double* %t, align 8, !dbg !44
  call void @llvm.dbg.declare(metadata double* %w, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %sign, metadata !47, metadata !DIExpression()), !dbg !48
  %0 = bitcast double* %x.addr to i32*, !dbg !49
  %1 = load i32, i32* %0, align 8, !dbg !49
  store i32 %1, i32* %hx, align 4, !dbg !50
  %2 = load i32, i32* %hx, align 4, !dbg !51
  %and = and i32 %2, -2147483648, !dbg !52
  store i32 %and, i32* %sign, align 4, !dbg !53
  %3 = load i32, i32* %sign, align 4, !dbg !54
  %4 = load i32, i32* %hx, align 4, !dbg !55
  %xor = xor i32 %4, %3, !dbg !55
  store i32 %xor, i32* %hx, align 4, !dbg !55
  %5 = load i32, i32* %hx, align 4, !dbg !56
  %cmp = icmp sge i32 %5, 2146435072, !dbg !58
  br i1 %cmp, label %if.then, label %if.end, !dbg !59

if.then:                                          ; preds = %entry
  %6 = load double, double* %x.addr, align 8, !dbg !60
  %7 = load double, double* %x.addr, align 8, !dbg !61
  %add = fadd double %6, %7, !dbg !62
  store double %add, double* %retval, align 8, !dbg !63
  br label %return, !dbg !63

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %hx, align 4, !dbg !64
  %9 = bitcast double* %x.addr to i32*, !dbg !66
  %add.ptr = getelementptr inbounds i32, i32* %9, i64 1, !dbg !66
  %10 = load i32, i32* %add.ptr, align 4, !dbg !66
  %or = or i32 %8, %10, !dbg !67
  %cmp1 = icmp eq i32 %or, 0, !dbg !68
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !69

if.then2:                                         ; preds = %if.end
  %11 = load double, double* %x.addr, align 8, !dbg !70
  store double %11, double* %retval, align 8, !dbg !71
  br label %return, !dbg !71

if.end3:                                          ; preds = %if.end
  %12 = load i32, i32* %hx, align 4, !dbg !72
  %13 = bitcast double* %x.addr to i32*, !dbg !73
  store i32 %12, i32* %13, align 8, !dbg !74
  %14 = load i32, i32* %hx, align 4, !dbg !75
  %cmp4 = icmp slt i32 %14, 1048576, !dbg !77
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !78

if.then5:                                         ; preds = %if.end3
  %15 = bitcast double* %t to i32*, !dbg !79
  store i32 1129316352, i32* %15, align 8, !dbg !81
  %16 = load double, double* %x.addr, align 8, !dbg !82
  %17 = load double, double* %t, align 8, !dbg !83
  %mul = fmul double %17, %16, !dbg !83
  store double %mul, double* %t, align 8, !dbg !83
  %18 = bitcast double* %t to i32*, !dbg !84
  %19 = load i32, i32* %18, align 8, !dbg !84
  %div = sdiv i32 %19, 3, !dbg !85
  %add6 = add i32 %div, 696219795, !dbg !86
  %20 = bitcast double* %t to i32*, !dbg !87
  store i32 %add6, i32* %20, align 8, !dbg !88
  br label %if.end9, !dbg !89

if.else:                                          ; preds = %if.end3
  %21 = load i32, i32* %hx, align 4, !dbg !90
  %div7 = sdiv i32 %21, 3, !dbg !91
  %add8 = add i32 %div7, 715094163, !dbg !92
  %22 = bitcast double* %t to i32*, !dbg !93
  store i32 %add8, i32* %22, align 8, !dbg !94
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5
  %23 = load double, double* %t, align 8, !dbg !95
  %24 = load double, double* %t, align 8, !dbg !96
  %mul10 = fmul double %23, %24, !dbg !97
  %25 = load double, double* %x.addr, align 8, !dbg !98
  %div11 = fdiv double %mul10, %25, !dbg !99
  store double %div11, double* %r, align 8, !dbg !100
  %26 = load double, double* %r, align 8, !dbg !101
  %27 = load double, double* %t, align 8, !dbg !102
  %mul12 = fmul double %26, %27, !dbg !103
  %add13 = fadd double 0x3FE15F15F15F15F1, %mul12, !dbg !104
  store double %add13, double* %s, align 8, !dbg !105
  %28 = load double, double* %s, align 8, !dbg !106
  %add14 = fadd double %28, 0x3FF6A0EA0EA0EA0F, !dbg !107
  %29 = load double, double* %s, align 8, !dbg !108
  %div15 = fdiv double 0xBFE691DE2532C834, %29, !dbg !109
  %add16 = fadd double %add14, %div15, !dbg !110
  %div17 = fdiv double 0x3FF9B6DB6DB6DB6E, %add16, !dbg !111
  %add18 = fadd double 0x3FD6DB6DB6DB6DB7, %div17, !dbg !112
  %30 = load double, double* %t, align 8, !dbg !113
  %mul19 = fmul double %30, %add18, !dbg !113
  store double %mul19, double* %t, align 8, !dbg !113
  %31 = bitcast double* %t to i32*, !dbg !114
  %add.ptr20 = getelementptr inbounds i32, i32* %31, i64 1, !dbg !114
  store i32 0, i32* %add.ptr20, align 4, !dbg !115
  %32 = bitcast double* %t to i32*, !dbg !116
  %33 = load i32, i32* %32, align 8, !dbg !117
  %add21 = add nsw i32 %33, 1, !dbg !117
  store i32 %add21, i32* %32, align 8, !dbg !117
  %34 = load double, double* %t, align 8, !dbg !118
  %35 = load double, double* %t, align 8, !dbg !119
  %mul22 = fmul double %34, %35, !dbg !120
  store double %mul22, double* %s, align 8, !dbg !121
  %36 = load double, double* %x.addr, align 8, !dbg !122
  %37 = load double, double* %s, align 8, !dbg !123
  %div23 = fdiv double %36, %37, !dbg !124
  store double %div23, double* %r, align 8, !dbg !125
  %38 = load double, double* %t, align 8, !dbg !126
  %39 = load double, double* %t, align 8, !dbg !127
  %add24 = fadd double %38, %39, !dbg !128
  store double %add24, double* %w, align 8, !dbg !129
  %40 = load double, double* %r, align 8, !dbg !130
  %41 = load double, double* %t, align 8, !dbg !131
  %sub = fsub double %40, %41, !dbg !132
  %42 = load double, double* %w, align 8, !dbg !133
  %43 = load double, double* %r, align 8, !dbg !134
  %add25 = fadd double %42, %43, !dbg !135
  %div26 = fdiv double %sub, %add25, !dbg !136
  store double %div26, double* %r, align 8, !dbg !137
  %44 = load double, double* %t, align 8, !dbg !138
  %45 = load double, double* %t, align 8, !dbg !139
  %46 = load double, double* %r, align 8, !dbg !140
  %mul27 = fmul double %45, %46, !dbg !141
  %add28 = fadd double %44, %mul27, !dbg !142
  store double %add28, double* %t, align 8, !dbg !143
  %47 = load i32, i32* %sign, align 4, !dbg !144
  %48 = bitcast double* %t to i32*, !dbg !145
  %49 = load i32, i32* %48, align 8, !dbg !146
  %or29 = or i32 %49, %47, !dbg !146
  store i32 %or29, i32* %48, align 8, !dbg !146
  %50 = load double, double* %t, align 8, !dbg !147
  store double %50, double* %retval, align 8, !dbg !148
  br label %return, !dbg !148

return:                                           ; preds = %if.end9, %if.then2, %if.then
  %51 = load double, double* %retval, align 8, !dbg !149
  ret double %51, !dbg !149
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #2 !dbg !150 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !153, metadata !DIExpression()), !dbg !154
  %0 = bitcast double* %a0 to i8*, !dbg !155
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !156
  call void @llvm.dbg.declare(metadata double* %r, metadata !157, metadata !DIExpression()), !dbg !158
  %1 = load double, double* %a0, align 8, !dbg !159
  %call = call double @cbrt(double %1) #4, !dbg !160
  store double %call, double* %r, align 8, !dbg !158
  ret i32 0, !dbg !161
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #3

attributes #0 = { noinline nounwind optnone readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !6, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "s_cbrt.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !12, !14, !18, !20, !22, !24}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression(DW_OP_constu, 696219795, DW_OP_stack_value))
!8 = distinct !DIGlobalVariable(name: "B2", scope: !0, file: !9, line: 26, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./s_cbrt.c", directory: "/home/klee/logic_bombs/fdlibm")
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 715094163, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "B1", scope: !0, file: !9, line: 25, type: !10, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4603064841997850097, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "C", scope: !0, file: !9, line: 33, type: !16, isLocal: true, isDefinition: true)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 4600105333671292343, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "G", scope: !0, file: !9, line: 37, type: !16, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 4609916747145206638, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "F", scope: !0, file: !9, line: 36, type: !16, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 4609048195788499471, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "E", scope: !0, file: !9, line: 35, type: !16, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression(DW_OP_constu, 13827900089180538932, DW_OP_stack_value))
!25 = distinct !DIGlobalVariable(name: "D", scope: !0, file: !9, line: 34, type: !16, isLocal: true, isDefinition: true)
!26 = !{i32 7, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!32 = distinct !DISubprogram(name: "cbrt", scope: !9, file: !9, line: 40, type: !33, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!33 = !DISubroutineType(types: !34)
!34 = !{!17, !17}
!35 = !DILocalVariable(name: "x", arg: 1, scope: !32, file: !9, line: 40, type: !17)
!36 = !DILocation(line: 40, column: 21, scope: !32)
!37 = !DILocalVariable(name: "hx", scope: !32, file: !9, line: 46, type: !5)
!38 = !DILocation(line: 46, column: 6, scope: !32)
!39 = !DILocalVariable(name: "r", scope: !32, file: !9, line: 47, type: !17)
!40 = !DILocation(line: 47, column: 9, scope: !32)
!41 = !DILocalVariable(name: "s", scope: !32, file: !9, line: 47, type: !17)
!42 = !DILocation(line: 47, column: 11, scope: !32)
!43 = !DILocalVariable(name: "t", scope: !32, file: !9, line: 47, type: !17)
!44 = !DILocation(line: 47, column: 13, scope: !32)
!45 = !DILocalVariable(name: "w", scope: !32, file: !9, line: 47, type: !17)
!46 = !DILocation(line: 47, column: 19, scope: !32)
!47 = !DILocalVariable(name: "sign", scope: !32, file: !9, line: 48, type: !11)
!48 = !DILocation(line: 48, column: 11, scope: !32)
!49 = !DILocation(line: 51, column: 7, scope: !32)
!50 = !DILocation(line: 51, column: 5, scope: !32)
!51 = !DILocation(line: 52, column: 7, scope: !32)
!52 = !DILocation(line: 52, column: 9, scope: !32)
!53 = !DILocation(line: 52, column: 6, scope: !32)
!54 = !DILocation(line: 53, column: 8, scope: !32)
!55 = !DILocation(line: 53, column: 6, scope: !32)
!56 = !DILocation(line: 54, column: 5, scope: !57)
!57 = distinct !DILexicalBlock(scope: !32, file: !9, line: 54, column: 5)
!58 = !DILocation(line: 54, column: 7, scope: !57)
!59 = !DILocation(line: 54, column: 5, scope: !32)
!60 = !DILocation(line: 54, column: 28, scope: !57)
!61 = !DILocation(line: 54, column: 30, scope: !57)
!62 = !DILocation(line: 54, column: 29, scope: !57)
!63 = !DILocation(line: 54, column: 21, scope: !57)
!64 = !DILocation(line: 55, column: 6, scope: !65)
!65 = distinct !DILexicalBlock(scope: !32, file: !9, line: 55, column: 5)
!66 = !DILocation(line: 55, column: 9, scope: !65)
!67 = !DILocation(line: 55, column: 8, scope: !65)
!68 = !DILocation(line: 55, column: 17, scope: !65)
!69 = !DILocation(line: 55, column: 5, scope: !32)
!70 = !DILocation(line: 56, column: 13, scope: !65)
!71 = !DILocation(line: 56, column: 6, scope: !65)
!72 = !DILocation(line: 58, column: 12, scope: !32)
!73 = !DILocation(line: 58, column: 2, scope: !32)
!74 = !DILocation(line: 58, column: 10, scope: !32)
!75 = !DILocation(line: 60, column: 5, scope: !76)
!76 = distinct !DILexicalBlock(scope: !32, file: !9, line: 60, column: 5)
!77 = !DILocation(line: 60, column: 7, scope: !76)
!78 = !DILocation(line: 60, column: 5, scope: !32)
!79 = !DILocation(line: 61, column: 5, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !9, line: 61, column: 4)
!81 = !DILocation(line: 61, column: 12, scope: !80)
!82 = !DILocation(line: 62, column: 8, scope: !80)
!83 = !DILocation(line: 62, column: 6, scope: !80)
!84 = !DILocation(line: 62, column: 19, scope: !80)
!85 = !DILocation(line: 62, column: 26, scope: !80)
!86 = !DILocation(line: 62, column: 28, scope: !80)
!87 = !DILocation(line: 62, column: 11, scope: !80)
!88 = !DILocation(line: 62, column: 18, scope: !80)
!89 = !DILocation(line: 63, column: 4, scope: !80)
!90 = !DILocation(line: 65, column: 12, scope: !76)
!91 = !DILocation(line: 65, column: 14, scope: !76)
!92 = !DILocation(line: 65, column: 16, scope: !76)
!93 = !DILocation(line: 65, column: 4, scope: !76)
!94 = !DILocation(line: 65, column: 11, scope: !76)
!95 = !DILocation(line: 69, column: 4, scope: !32)
!96 = !DILocation(line: 69, column: 6, scope: !32)
!97 = !DILocation(line: 69, column: 5, scope: !32)
!98 = !DILocation(line: 69, column: 8, scope: !32)
!99 = !DILocation(line: 69, column: 7, scope: !32)
!100 = !DILocation(line: 69, column: 3, scope: !32)
!101 = !DILocation(line: 70, column: 6, scope: !32)
!102 = !DILocation(line: 70, column: 8, scope: !32)
!103 = !DILocation(line: 70, column: 7, scope: !32)
!104 = !DILocation(line: 70, column: 5, scope: !32)
!105 = !DILocation(line: 70, column: 3, scope: !32)
!106 = !DILocation(line: 71, column: 10, scope: !32)
!107 = !DILocation(line: 71, column: 11, scope: !32)
!108 = !DILocation(line: 71, column: 16, scope: !32)
!109 = !DILocation(line: 71, column: 15, scope: !32)
!110 = !DILocation(line: 71, column: 13, scope: !32)
!111 = !DILocation(line: 71, column: 8, scope: !32)
!112 = !DILocation(line: 71, column: 6, scope: !32)
!113 = !DILocation(line: 71, column: 3, scope: !32)
!114 = !DILocation(line: 74, column: 2, scope: !32)
!115 = !DILocation(line: 74, column: 9, scope: !32)
!116 = !DILocation(line: 74, column: 13, scope: !32)
!117 = !DILocation(line: 74, column: 20, scope: !32)
!118 = !DILocation(line: 78, column: 4, scope: !32)
!119 = !DILocation(line: 78, column: 6, scope: !32)
!120 = !DILocation(line: 78, column: 5, scope: !32)
!121 = !DILocation(line: 78, column: 3, scope: !32)
!122 = !DILocation(line: 79, column: 4, scope: !32)
!123 = !DILocation(line: 79, column: 6, scope: !32)
!124 = !DILocation(line: 79, column: 5, scope: !32)
!125 = !DILocation(line: 79, column: 3, scope: !32)
!126 = !DILocation(line: 80, column: 4, scope: !32)
!127 = !DILocation(line: 80, column: 6, scope: !32)
!128 = !DILocation(line: 80, column: 5, scope: !32)
!129 = !DILocation(line: 80, column: 3, scope: !32)
!130 = !DILocation(line: 81, column: 5, scope: !32)
!131 = !DILocation(line: 81, column: 7, scope: !32)
!132 = !DILocation(line: 81, column: 6, scope: !32)
!133 = !DILocation(line: 81, column: 11, scope: !32)
!134 = !DILocation(line: 81, column: 13, scope: !32)
!135 = !DILocation(line: 81, column: 12, scope: !32)
!136 = !DILocation(line: 81, column: 9, scope: !32)
!137 = !DILocation(line: 81, column: 3, scope: !32)
!138 = !DILocation(line: 82, column: 4, scope: !32)
!139 = !DILocation(line: 82, column: 6, scope: !32)
!140 = !DILocation(line: 82, column: 8, scope: !32)
!141 = !DILocation(line: 82, column: 7, scope: !32)
!142 = !DILocation(line: 82, column: 5, scope: !32)
!143 = !DILocation(line: 82, column: 3, scope: !32)
!144 = !DILocation(line: 85, column: 13, scope: !32)
!145 = !DILocation(line: 85, column: 2, scope: !32)
!146 = !DILocation(line: 85, column: 10, scope: !32)
!147 = !DILocation(line: 86, column: 9, scope: !32)
!148 = !DILocation(line: 86, column: 2, scope: !32)
!149 = !DILocation(line: 87, column: 1, scope: !32)
!150 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 91, type: !151, scopeLine: 91, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!151 = !DISubroutineType(types: !152)
!152 = !{!5}
!153 = !DILocalVariable(name: "a0", scope: !150, file: !9, line: 92, type: !17)
!154 = !DILocation(line: 92, column: 12, scope: !150)
!155 = !DILocation(line: 93, column: 24, scope: !150)
!156 = !DILocation(line: 93, column: 5, scope: !150)
!157 = !DILocalVariable(name: "r", scope: !150, file: !9, line: 95, type: !17)
!158 = !DILocation(line: 95, column: 12, scope: !150)
!159 = !DILocation(line: 95, column: 21, scope: !150)
!160 = !DILocation(line: 95, column: 16, scope: !150)
!161 = !DILocation(line: 96, column: 5, scope: !150)
