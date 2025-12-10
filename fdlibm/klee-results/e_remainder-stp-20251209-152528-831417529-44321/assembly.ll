; ModuleID = 'e_remainder.bc'
source_filename = "./e_remainder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_remainder(double %x, double %p) #0 !dbg !18 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %p.addr = alloca double, align 8
  %hx = alloca i32, align 4
  %hp = alloca i32, align 4
  %sx = alloca i32, align 4
  %lx = alloca i32, align 4
  %lp = alloca i32, align 4
  %p_half = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !21, metadata !DIExpression()), !dbg !22
  store double %p, double* %p.addr, align 8
  call void @llvm.dbg.declare(metadata double* %p.addr, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %hp, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %sx, metadata !29, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %lx, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %lp, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata double* %p_half, metadata !36, metadata !DIExpression()), !dbg !37
  %0 = bitcast double* %x.addr to i32*, !dbg !38
  %1 = load i32, i32* %0, align 8, !dbg !38
  store i32 %1, i32* %hx, align 4, !dbg !39
  %2 = bitcast double* %x.addr to i32*, !dbg !40
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 1, !dbg !40
  %3 = load i32, i32* %add.ptr, align 4, !dbg !40
  store i32 %3, i32* %lx, align 4, !dbg !41
  %4 = bitcast double* %p.addr to i32*, !dbg !42
  %5 = load i32, i32* %4, align 8, !dbg !42
  store i32 %5, i32* %hp, align 4, !dbg !43
  %6 = bitcast double* %p.addr to i32*, !dbg !44
  %add.ptr1 = getelementptr inbounds i32, i32* %6, i64 1, !dbg !44
  %7 = load i32, i32* %add.ptr1, align 4, !dbg !44
  store i32 %7, i32* %lp, align 4, !dbg !45
  %8 = load i32, i32* %hx, align 4, !dbg !46
  %and = and i32 %8, -2147483648, !dbg !47
  store i32 %and, i32* %sx, align 4, !dbg !48
  %9 = load i32, i32* %hp, align 4, !dbg !49
  %and2 = and i32 %9, 2147483647, !dbg !49
  store i32 %and2, i32* %hp, align 4, !dbg !49
  %10 = load i32, i32* %hx, align 4, !dbg !50
  %and3 = and i32 %10, 2147483647, !dbg !50
  store i32 %and3, i32* %hx, align 4, !dbg !50
  %11 = load i32, i32* %hp, align 4, !dbg !51
  %12 = load i32, i32* %lp, align 4, !dbg !53
  %or = or i32 %11, %12, !dbg !54
  %cmp = icmp eq i32 %or, 0, !dbg !55
  br i1 %cmp, label %if.then, label %if.end, !dbg !56

if.then:                                          ; preds = %entry
  %13 = load double, double* %x.addr, align 8, !dbg !57
  %14 = load double, double* %p.addr, align 8, !dbg !58
  %mul = fmul double %13, %14, !dbg !59
  %15 = load double, double* %x.addr, align 8, !dbg !60
  %16 = load double, double* %p.addr, align 8, !dbg !61
  %mul4 = fmul double %15, %16, !dbg !62
  %div = fdiv double %mul, %mul4, !dbg !63
  store double %div, double* %retval, align 8, !dbg !64
  br label %return, !dbg !64

if.end:                                           ; preds = %entry
  %17 = load i32, i32* %hx, align 4, !dbg !65
  %cmp5 = icmp sge i32 %17, 2146435072, !dbg !67
  br i1 %cmp5, label %if.then9, label %lor.lhs.false, !dbg !68

lor.lhs.false:                                    ; preds = %if.end
  %18 = load i32, i32* %hp, align 4, !dbg !69
  %cmp6 = icmp sge i32 %18, 2146435072, !dbg !70
  br i1 %cmp6, label %land.lhs.true, label %if.end13, !dbg !71

land.lhs.true:                                    ; preds = %lor.lhs.false
  %19 = load i32, i32* %hp, align 4, !dbg !72
  %sub = sub nsw i32 %19, 2146435072, !dbg !73
  %20 = load i32, i32* %lp, align 4, !dbg !74
  %or7 = or i32 %sub, %20, !dbg !75
  %cmp8 = icmp ne i32 %or7, 0, !dbg !76
  br i1 %cmp8, label %if.then9, label %if.end13, !dbg !77

if.then9:                                         ; preds = %land.lhs.true, %if.end
  %21 = load double, double* %x.addr, align 8, !dbg !78
  %22 = load double, double* %p.addr, align 8, !dbg !79
  %mul10 = fmul double %21, %22, !dbg !80
  %23 = load double, double* %x.addr, align 8, !dbg !81
  %24 = load double, double* %p.addr, align 8, !dbg !82
  %mul11 = fmul double %23, %24, !dbg !83
  %div12 = fdiv double %mul10, %mul11, !dbg !84
  store double %div12, double* %retval, align 8, !dbg !85
  br label %return, !dbg !85

if.end13:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %25 = load i32, i32* %hp, align 4, !dbg !86
  %cmp14 = icmp sle i32 %25, 2145386495, !dbg !88
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !89

if.then15:                                        ; preds = %if.end13
  %26 = load double, double* %x.addr, align 8, !dbg !90
  %27 = load double, double* %p.addr, align 8, !dbg !91
  %28 = load double, double* %p.addr, align 8, !dbg !92
  %add = fadd double %27, %28, !dbg !93
  %call = call double @__ieee754_fmod(double %26, double %add), !dbg !94
  store double %call, double* %x.addr, align 8, !dbg !95
  br label %if.end16, !dbg !96

if.end16:                                         ; preds = %if.then15, %if.end13
  %29 = load i32, i32* %hx, align 4, !dbg !97
  %30 = load i32, i32* %hp, align 4, !dbg !99
  %sub17 = sub nsw i32 %29, %30, !dbg !100
  %31 = load i32, i32* %lx, align 4, !dbg !101
  %32 = load i32, i32* %lp, align 4, !dbg !102
  %sub18 = sub i32 %31, %32, !dbg !103
  %or19 = or i32 %sub17, %sub18, !dbg !104
  %cmp20 = icmp eq i32 %or19, 0, !dbg !105
  br i1 %cmp20, label %if.then21, label %if.end23, !dbg !106

if.then21:                                        ; preds = %if.end16
  %33 = load double, double* %x.addr, align 8, !dbg !107
  %mul22 = fmul double 0.000000e+00, %33, !dbg !108
  store double %mul22, double* %retval, align 8, !dbg !109
  br label %return, !dbg !109

if.end23:                                         ; preds = %if.end16
  %34 = load double, double* %x.addr, align 8, !dbg !110
  %35 = call double @llvm.fabs.f64(double %34), !dbg !111
  store double %35, double* %x.addr, align 8, !dbg !112
  %36 = load double, double* %p.addr, align 8, !dbg !113
  %37 = call double @llvm.fabs.f64(double %36), !dbg !114
  store double %37, double* %p.addr, align 8, !dbg !115
  %38 = load i32, i32* %hp, align 4, !dbg !116
  %cmp24 = icmp slt i32 %38, 2097152, !dbg !118
  br i1 %cmp24, label %if.then25, label %if.else, !dbg !119

if.then25:                                        ; preds = %if.end23
  %39 = load double, double* %x.addr, align 8, !dbg !120
  %40 = load double, double* %x.addr, align 8, !dbg !123
  %add26 = fadd double %39, %40, !dbg !124
  %41 = load double, double* %p.addr, align 8, !dbg !125
  %cmp27 = fcmp ogt double %add26, %41, !dbg !126
  br i1 %cmp27, label %if.then28, label %if.end35, !dbg !127

if.then28:                                        ; preds = %if.then25
  %42 = load double, double* %p.addr, align 8, !dbg !128
  %43 = load double, double* %x.addr, align 8, !dbg !130
  %sub29 = fsub double %43, %42, !dbg !130
  store double %sub29, double* %x.addr, align 8, !dbg !130
  %44 = load double, double* %x.addr, align 8, !dbg !131
  %45 = load double, double* %x.addr, align 8, !dbg !133
  %add30 = fadd double %44, %45, !dbg !134
  %46 = load double, double* %p.addr, align 8, !dbg !135
  %cmp31 = fcmp oge double %add30, %46, !dbg !136
  br i1 %cmp31, label %if.then32, label %if.end34, !dbg !137

if.then32:                                        ; preds = %if.then28
  %47 = load double, double* %p.addr, align 8, !dbg !138
  %48 = load double, double* %x.addr, align 8, !dbg !139
  %sub33 = fsub double %48, %47, !dbg !139
  store double %sub33, double* %x.addr, align 8, !dbg !139
  br label %if.end34, !dbg !140

if.end34:                                         ; preds = %if.then32, %if.then28
  br label %if.end35, !dbg !141

if.end35:                                         ; preds = %if.end34, %if.then25
  br label %if.end45, !dbg !142

if.else:                                          ; preds = %if.end23
  %49 = load double, double* %p.addr, align 8, !dbg !143
  %mul36 = fmul double 5.000000e-01, %49, !dbg !145
  store double %mul36, double* %p_half, align 8, !dbg !146
  %50 = load double, double* %x.addr, align 8, !dbg !147
  %51 = load double, double* %p_half, align 8, !dbg !149
  %cmp37 = fcmp ogt double %50, %51, !dbg !150
  br i1 %cmp37, label %if.then38, label %if.end44, !dbg !151

if.then38:                                        ; preds = %if.else
  %52 = load double, double* %p.addr, align 8, !dbg !152
  %53 = load double, double* %x.addr, align 8, !dbg !154
  %sub39 = fsub double %53, %52, !dbg !154
  store double %sub39, double* %x.addr, align 8, !dbg !154
  %54 = load double, double* %x.addr, align 8, !dbg !155
  %55 = load double, double* %p_half, align 8, !dbg !157
  %cmp40 = fcmp oge double %54, %55, !dbg !158
  br i1 %cmp40, label %if.then41, label %if.end43, !dbg !159

if.then41:                                        ; preds = %if.then38
  %56 = load double, double* %p.addr, align 8, !dbg !160
  %57 = load double, double* %x.addr, align 8, !dbg !161
  %sub42 = fsub double %57, %56, !dbg !161
  store double %sub42, double* %x.addr, align 8, !dbg !161
  br label %if.end43, !dbg !162

if.end43:                                         ; preds = %if.then41, %if.then38
  br label %if.end44, !dbg !163

if.end44:                                         ; preds = %if.end43, %if.else
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end35
  %58 = load i32, i32* %sx, align 4, !dbg !164
  %59 = bitcast double* %x.addr to i32*, !dbg !165
  %60 = load i32, i32* %59, align 8, !dbg !166
  %xor = xor i32 %60, %58, !dbg !166
  store i32 %xor, i32* %59, align 8, !dbg !166
  %61 = load double, double* %x.addr, align 8, !dbg !167
  store double %61, double* %retval, align 8, !dbg !168
  br label %return, !dbg !168

return:                                           ; preds = %if.end45, %if.then21, %if.then9, %if.then
  %62 = load double, double* %retval, align 8, !dbg !169
  ret double %62, !dbg !169
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local double @__ieee754_fmod(double, double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !170 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !173, metadata !DIExpression()), !dbg !174
  %0 = bitcast double* %a0 to i8*, !dbg !175
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !176
  call void @llvm.dbg.declare(metadata double* %a1, metadata !177, metadata !DIExpression()), !dbg !178
  %1 = bitcast double* %a1 to i8*, !dbg !179
  call void @klee_make_symbolic(i8* %1, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !180
  call void @llvm.dbg.declare(metadata double* %r, metadata !181, metadata !DIExpression()), !dbg !182
  %2 = load double, double* %a0, align 8, !dbg !183
  %3 = load double, double* %a1, align 8, !dbg !184
  %call = call double @__ieee754_remainder(double %2, double %3), !dbg !185
  store double %call, double* %r, align 8, !dbg !182
  ret i32 0, !dbg !186
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !6, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "e_remainder.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!8 = distinct !DIGlobalVariable(name: "zero", scope: !0, file: !9, line: 26, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./e_remainder.c", directory: "/home/klee/logic_bombs/fdlibm")
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!18 = distinct !DISubprogram(name: "__ieee754_remainder", scope: !9, file: !9, line: 33, type: !19, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!19 = !DISubroutineType(types: !20)
!20 = !{!11, !11, !11}
!21 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !9, line: 33, type: !11)
!22 = !DILocation(line: 33, column: 36, scope: !18)
!23 = !DILocalVariable(name: "p", arg: 2, scope: !18, file: !9, line: 33, type: !11)
!24 = !DILocation(line: 33, column: 46, scope: !18)
!25 = !DILocalVariable(name: "hx", scope: !18, file: !9, line: 39, type: !5)
!26 = !DILocation(line: 39, column: 6, scope: !18)
!27 = !DILocalVariable(name: "hp", scope: !18, file: !9, line: 39, type: !5)
!28 = !DILocation(line: 39, column: 9, scope: !18)
!29 = !DILocalVariable(name: "sx", scope: !18, file: !9, line: 40, type: !30)
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !DILocation(line: 40, column: 11, scope: !18)
!32 = !DILocalVariable(name: "lx", scope: !18, file: !9, line: 40, type: !30)
!33 = !DILocation(line: 40, column: 14, scope: !18)
!34 = !DILocalVariable(name: "lp", scope: !18, file: !9, line: 40, type: !30)
!35 = !DILocation(line: 40, column: 17, scope: !18)
!36 = !DILocalVariable(name: "p_half", scope: !18, file: !9, line: 41, type: !11)
!37 = !DILocation(line: 41, column: 9, scope: !18)
!38 = !DILocation(line: 43, column: 7, scope: !18)
!39 = !DILocation(line: 43, column: 5, scope: !18)
!40 = !DILocation(line: 44, column: 7, scope: !18)
!41 = !DILocation(line: 44, column: 5, scope: !18)
!42 = !DILocation(line: 45, column: 7, scope: !18)
!43 = !DILocation(line: 45, column: 5, scope: !18)
!44 = !DILocation(line: 46, column: 7, scope: !18)
!45 = !DILocation(line: 46, column: 5, scope: !18)
!46 = !DILocation(line: 47, column: 7, scope: !18)
!47 = !DILocation(line: 47, column: 9, scope: !18)
!48 = !DILocation(line: 47, column: 5, scope: !18)
!49 = !DILocation(line: 48, column: 5, scope: !18)
!50 = !DILocation(line: 49, column: 5, scope: !18)
!51 = !DILocation(line: 52, column: 6, scope: !52)
!52 = distinct !DILexicalBlock(scope: !18, file: !9, line: 52, column: 5)
!53 = !DILocation(line: 52, column: 9, scope: !52)
!54 = !DILocation(line: 52, column: 8, scope: !52)
!55 = !DILocation(line: 52, column: 12, scope: !52)
!56 = !DILocation(line: 52, column: 5, scope: !18)
!57 = !DILocation(line: 52, column: 25, scope: !52)
!58 = !DILocation(line: 52, column: 27, scope: !52)
!59 = !DILocation(line: 52, column: 26, scope: !52)
!60 = !DILocation(line: 52, column: 31, scope: !52)
!61 = !DILocation(line: 52, column: 33, scope: !52)
!62 = !DILocation(line: 52, column: 32, scope: !52)
!63 = !DILocation(line: 52, column: 29, scope: !52)
!64 = !DILocation(line: 52, column: 17, scope: !52)
!65 = !DILocation(line: 53, column: 6, scope: !66)
!66 = distinct !DILexicalBlock(scope: !18, file: !9, line: 53, column: 5)
!67 = !DILocation(line: 53, column: 8, scope: !66)
!68 = !DILocation(line: 53, column: 21, scope: !66)
!69 = !DILocation(line: 54, column: 6, scope: !66)
!70 = !DILocation(line: 54, column: 8, scope: !66)
!71 = !DILocation(line: 54, column: 21, scope: !66)
!72 = !DILocation(line: 55, column: 7, scope: !66)
!73 = !DILocation(line: 55, column: 9, scope: !66)
!74 = !DILocation(line: 55, column: 22, scope: !66)
!75 = !DILocation(line: 55, column: 21, scope: !66)
!76 = !DILocation(line: 55, column: 25, scope: !66)
!77 = !DILocation(line: 53, column: 5, scope: !18)
!78 = !DILocation(line: 56, column: 14, scope: !66)
!79 = !DILocation(line: 56, column: 16, scope: !66)
!80 = !DILocation(line: 56, column: 15, scope: !66)
!81 = !DILocation(line: 56, column: 20, scope: !66)
!82 = !DILocation(line: 56, column: 22, scope: !66)
!83 = !DILocation(line: 56, column: 21, scope: !66)
!84 = !DILocation(line: 56, column: 18, scope: !66)
!85 = !DILocation(line: 56, column: 6, scope: !66)
!86 = !DILocation(line: 59, column: 6, scope: !87)
!87 = distinct !DILexicalBlock(scope: !18, file: !9, line: 59, column: 6)
!88 = !DILocation(line: 59, column: 8, scope: !87)
!89 = !DILocation(line: 59, column: 6, scope: !18)
!90 = !DILocation(line: 59, column: 41, scope: !87)
!91 = !DILocation(line: 59, column: 43, scope: !87)
!92 = !DILocation(line: 59, column: 45, scope: !87)
!93 = !DILocation(line: 59, column: 44, scope: !87)
!94 = !DILocation(line: 59, column: 26, scope: !87)
!95 = !DILocation(line: 59, column: 24, scope: !87)
!96 = !DILocation(line: 59, column: 22, scope: !87)
!97 = !DILocation(line: 60, column: 8, scope: !98)
!98 = distinct !DILexicalBlock(scope: !18, file: !9, line: 60, column: 6)
!99 = !DILocation(line: 60, column: 11, scope: !98)
!100 = !DILocation(line: 60, column: 10, scope: !98)
!101 = !DILocation(line: 60, column: 16, scope: !98)
!102 = !DILocation(line: 60, column: 19, scope: !98)
!103 = !DILocation(line: 60, column: 18, scope: !98)
!104 = !DILocation(line: 60, column: 14, scope: !98)
!105 = !DILocation(line: 60, column: 23, scope: !98)
!106 = !DILocation(line: 60, column: 6, scope: !18)
!107 = !DILocation(line: 60, column: 40, scope: !98)
!108 = !DILocation(line: 60, column: 39, scope: !98)
!109 = !DILocation(line: 60, column: 28, scope: !98)
!110 = !DILocation(line: 61, column: 12, scope: !18)
!111 = !DILocation(line: 61, column: 7, scope: !18)
!112 = !DILocation(line: 61, column: 5, scope: !18)
!113 = !DILocation(line: 62, column: 12, scope: !18)
!114 = !DILocation(line: 62, column: 7, scope: !18)
!115 = !DILocation(line: 62, column: 5, scope: !18)
!116 = !DILocation(line: 63, column: 6, scope: !117)
!117 = distinct !DILexicalBlock(scope: !18, file: !9, line: 63, column: 6)
!118 = !DILocation(line: 63, column: 8, scope: !117)
!119 = !DILocation(line: 63, column: 6, scope: !18)
!120 = !DILocation(line: 64, column: 9, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !9, line: 64, column: 9)
!122 = distinct !DILexicalBlock(scope: !117, file: !9, line: 63, column: 21)
!123 = !DILocation(line: 64, column: 11, scope: !121)
!124 = !DILocation(line: 64, column: 10, scope: !121)
!125 = !DILocation(line: 64, column: 13, scope: !121)
!126 = !DILocation(line: 64, column: 12, scope: !121)
!127 = !DILocation(line: 64, column: 9, scope: !122)
!128 = !DILocation(line: 65, column: 6, scope: !129)
!129 = distinct !DILexicalBlock(scope: !121, file: !9, line: 64, column: 16)
!130 = !DILocation(line: 65, column: 4, scope: !129)
!131 = !DILocation(line: 66, column: 6, scope: !132)
!132 = distinct !DILexicalBlock(scope: !129, file: !9, line: 66, column: 6)
!133 = !DILocation(line: 66, column: 8, scope: !132)
!134 = !DILocation(line: 66, column: 7, scope: !132)
!135 = !DILocation(line: 66, column: 11, scope: !132)
!136 = !DILocation(line: 66, column: 9, scope: !132)
!137 = !DILocation(line: 66, column: 6, scope: !129)
!138 = !DILocation(line: 66, column: 19, scope: !132)
!139 = !DILocation(line: 66, column: 16, scope: !132)
!140 = !DILocation(line: 66, column: 14, scope: !132)
!141 = !DILocation(line: 67, column: 6, scope: !129)
!142 = !DILocation(line: 68, column: 2, scope: !122)
!143 = !DILocation(line: 69, column: 19, scope: !144)
!144 = distinct !DILexicalBlock(scope: !117, file: !9, line: 68, column: 9)
!145 = !DILocation(line: 69, column: 18, scope: !144)
!146 = !DILocation(line: 69, column: 13, scope: !144)
!147 = !DILocation(line: 70, column: 9, scope: !148)
!148 = distinct !DILexicalBlock(scope: !144, file: !9, line: 70, column: 9)
!149 = !DILocation(line: 70, column: 11, scope: !148)
!150 = !DILocation(line: 70, column: 10, scope: !148)
!151 = !DILocation(line: 70, column: 9, scope: !144)
!152 = !DILocation(line: 71, column: 6, scope: !153)
!153 = distinct !DILexicalBlock(scope: !148, file: !9, line: 70, column: 19)
!154 = !DILocation(line: 71, column: 4, scope: !153)
!155 = !DILocation(line: 72, column: 6, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !9, line: 72, column: 6)
!157 = !DILocation(line: 72, column: 9, scope: !156)
!158 = !DILocation(line: 72, column: 7, scope: !156)
!159 = !DILocation(line: 72, column: 6, scope: !153)
!160 = !DILocation(line: 72, column: 22, scope: !156)
!161 = !DILocation(line: 72, column: 19, scope: !156)
!162 = !DILocation(line: 72, column: 17, scope: !156)
!163 = !DILocation(line: 73, column: 6, scope: !153)
!164 = !DILocation(line: 75, column: 13, scope: !18)
!165 = !DILocation(line: 75, column: 2, scope: !18)
!166 = !DILocation(line: 75, column: 10, scope: !18)
!167 = !DILocation(line: 76, column: 9, scope: !18)
!168 = !DILocation(line: 76, column: 2, scope: !18)
!169 = !DILocation(line: 77, column: 1, scope: !18)
!170 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 81, type: !171, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!171 = !DISubroutineType(types: !172)
!172 = !{!5}
!173 = !DILocalVariable(name: "a0", scope: !170, file: !9, line: 82, type: !11)
!174 = !DILocation(line: 82, column: 12, scope: !170)
!175 = !DILocation(line: 83, column: 24, scope: !170)
!176 = !DILocation(line: 83, column: 5, scope: !170)
!177 = !DILocalVariable(name: "a1", scope: !170, file: !9, line: 84, type: !11)
!178 = !DILocation(line: 84, column: 12, scope: !170)
!179 = !DILocation(line: 85, column: 24, scope: !170)
!180 = !DILocation(line: 85, column: 5, scope: !170)
!181 = !DILocalVariable(name: "r", scope: !170, file: !9, line: 87, type: !11)
!182 = !DILocation(line: 87, column: 12, scope: !170)
!183 = !DILocation(line: 87, column: 36, scope: !170)
!184 = !DILocation(line: 87, column: 40, scope: !170)
!185 = !DILocation(line: 87, column: 16, scope: !170)
!186 = !DILocation(line: 88, column: 5, scope: !170)
