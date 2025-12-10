; ModuleID = 's_modf.bc'
source_filename = "./s_modf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a1\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str.1.4 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @modf(double %x, double* %iptr) #0 !dbg !21 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %iptr.addr = alloca double*, align 8
  %i0 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j0 = alloca i32, align 4
  %i = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !25, metadata !DIExpression()), !dbg !26
  store double* %iptr, double** %iptr.addr, align 8
  call void @llvm.dbg.declare(metadata double** %iptr.addr, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %i0, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %j0, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %i, metadata !35, metadata !DIExpression()), !dbg !36
  %0 = bitcast double* %x.addr to i32*, !dbg !37
  %1 = load i32, i32* %0, align 8, !dbg !37
  store i32 %1, i32* %i0, align 4, !dbg !38
  %2 = bitcast double* %x.addr to i32*, !dbg !39
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 1, !dbg !39
  %3 = load i32, i32* %add.ptr, align 4, !dbg !39
  store i32 %3, i32* %i1, align 4, !dbg !40
  %4 = load i32, i32* %i0, align 4, !dbg !41
  %shr = ashr i32 %4, 20, !dbg !42
  %and = and i32 %shr, 2047, !dbg !43
  %sub = sub nsw i32 %and, 1023, !dbg !44
  store i32 %sub, i32* %j0, align 4, !dbg !45
  %5 = load i32, i32* %j0, align 4, !dbg !46
  %cmp = icmp slt i32 %5, 20, !dbg !48
  br i1 %cmp, label %if.then, label %if.else15, !dbg !49

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %j0, align 4, !dbg !50
  %cmp1 = icmp slt i32 %6, 0, !dbg !53
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !54

if.then2:                                         ; preds = %if.then
  %7 = load i32, i32* %i0, align 4, !dbg !55
  %and3 = and i32 %7, -2147483648, !dbg !57
  %8 = load double*, double** %iptr.addr, align 8, !dbg !58
  %9 = bitcast double* %8 to i32*, !dbg !58
  store i32 %and3, i32* %9, align 4, !dbg !59
  %10 = load double*, double** %iptr.addr, align 8, !dbg !60
  %11 = bitcast double* %10 to i32*, !dbg !60
  %add.ptr4 = getelementptr inbounds i32, i32* %11, i64 1, !dbg !60
  store i32 0, i32* %add.ptr4, align 4, !dbg !61
  %12 = load double, double* %x.addr, align 8, !dbg !62
  store double %12, double* %retval, align 8, !dbg !63
  br label %return, !dbg !63

if.else:                                          ; preds = %if.then
  %13 = load i32, i32* %j0, align 4, !dbg !64
  %int_cast_to_i64 = zext i32 %13 to i64, !dbg !66
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !66
  %shr5 = ashr i32 1048575, %13, !dbg !66, !klee.check.shift !67
  store i32 %shr5, i32* %i, align 4, !dbg !68
  %14 = load i32, i32* %i0, align 4, !dbg !69
  %15 = load i32, i32* %i, align 4, !dbg !71
  %and6 = and i32 %14, %15, !dbg !72
  %16 = load i32, i32* %i1, align 4, !dbg !73
  %or = or i32 %and6, %16, !dbg !74
  %cmp7 = icmp eq i32 %or, 0, !dbg !75
  br i1 %cmp7, label %if.then8, label %if.else11, !dbg !76

if.then8:                                         ; preds = %if.else
  %17 = load double, double* %x.addr, align 8, !dbg !77
  %18 = load double*, double** %iptr.addr, align 8, !dbg !79
  store double %17, double* %18, align 8, !dbg !80
  %19 = bitcast double* %x.addr to i32*, !dbg !81
  %20 = load i32, i32* %19, align 8, !dbg !82
  %and9 = and i32 %20, -2147483648, !dbg !82
  store i32 %and9, i32* %19, align 8, !dbg !82
  %21 = bitcast double* %x.addr to i32*, !dbg !83
  %add.ptr10 = getelementptr inbounds i32, i32* %21, i64 1, !dbg !83
  store i32 0, i32* %add.ptr10, align 4, !dbg !84
  %22 = load double, double* %x.addr, align 8, !dbg !85
  store double %22, double* %retval, align 8, !dbg !86
  br label %return, !dbg !86

if.else11:                                        ; preds = %if.else
  %23 = load i32, i32* %i0, align 4, !dbg !87
  %24 = load i32, i32* %i, align 4, !dbg !89
  %neg = xor i32 %24, -1, !dbg !90
  %and12 = and i32 %23, %neg, !dbg !91
  %25 = load double*, double** %iptr.addr, align 8, !dbg !92
  %26 = bitcast double* %25 to i32*, !dbg !92
  store i32 %and12, i32* %26, align 4, !dbg !93
  %27 = load double*, double** %iptr.addr, align 8, !dbg !94
  %28 = bitcast double* %27 to i32*, !dbg !94
  %add.ptr13 = getelementptr inbounds i32, i32* %28, i64 1, !dbg !94
  store i32 0, i32* %add.ptr13, align 4, !dbg !95
  %29 = load double, double* %x.addr, align 8, !dbg !96
  %30 = load double*, double** %iptr.addr, align 8, !dbg !97
  %31 = load double, double* %30, align 8, !dbg !98
  %sub14 = fsub double %29, %31, !dbg !99
  store double %sub14, double* %retval, align 8, !dbg !100
  br label %return, !dbg !100

if.else15:                                        ; preds = %entry
  %32 = load i32, i32* %j0, align 4, !dbg !101
  %cmp16 = icmp sgt i32 %32, 51, !dbg !103
  br i1 %cmp16, label %if.then17, label %if.else20, !dbg !104

if.then17:                                        ; preds = %if.else15
  %33 = load double, double* %x.addr, align 8, !dbg !105
  %mul = fmul double %33, 1.000000e+00, !dbg !107
  %34 = load double*, double** %iptr.addr, align 8, !dbg !108
  store double %mul, double* %34, align 8, !dbg !109
  %35 = bitcast double* %x.addr to i32*, !dbg !110
  %36 = load i32, i32* %35, align 8, !dbg !111
  %and18 = and i32 %36, -2147483648, !dbg !111
  store i32 %and18, i32* %35, align 8, !dbg !111
  %37 = bitcast double* %x.addr to i32*, !dbg !112
  %add.ptr19 = getelementptr inbounds i32, i32* %37, i64 1, !dbg !112
  store i32 0, i32* %add.ptr19, align 4, !dbg !113
  %38 = load double, double* %x.addr, align 8, !dbg !114
  store double %38, double* %retval, align 8, !dbg !115
  br label %return, !dbg !115

if.else20:                                        ; preds = %if.else15
  %39 = load i32, i32* %j0, align 4, !dbg !116
  %sub21 = sub nsw i32 %39, 20, !dbg !118
  %int_cast_to_i641 = zext i32 %sub21 to i64, !dbg !119
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !119
  %shr22 = lshr i32 -1, %sub21, !dbg !119, !klee.check.shift !67
  store i32 %shr22, i32* %i, align 4, !dbg !120
  %40 = load i32, i32* %i1, align 4, !dbg !121
  %41 = load i32, i32* %i, align 4, !dbg !123
  %and23 = and i32 %40, %41, !dbg !124
  %cmp24 = icmp eq i32 %and23, 0, !dbg !125
  br i1 %cmp24, label %if.then25, label %if.else28, !dbg !126

if.then25:                                        ; preds = %if.else20
  %42 = load double, double* %x.addr, align 8, !dbg !127
  %43 = load double*, double** %iptr.addr, align 8, !dbg !129
  store double %42, double* %43, align 8, !dbg !130
  %44 = bitcast double* %x.addr to i32*, !dbg !131
  %45 = load i32, i32* %44, align 8, !dbg !132
  %and26 = and i32 %45, -2147483648, !dbg !132
  store i32 %and26, i32* %44, align 8, !dbg !132
  %46 = bitcast double* %x.addr to i32*, !dbg !133
  %add.ptr27 = getelementptr inbounds i32, i32* %46, i64 1, !dbg !133
  store i32 0, i32* %add.ptr27, align 4, !dbg !134
  %47 = load double, double* %x.addr, align 8, !dbg !135
  store double %47, double* %retval, align 8, !dbg !136
  br label %return, !dbg !136

if.else28:                                        ; preds = %if.else20
  %48 = load i32, i32* %i0, align 4, !dbg !137
  %49 = load double*, double** %iptr.addr, align 8, !dbg !139
  %50 = bitcast double* %49 to i32*, !dbg !139
  store i32 %48, i32* %50, align 4, !dbg !140
  %51 = load i32, i32* %i1, align 4, !dbg !141
  %52 = load i32, i32* %i, align 4, !dbg !142
  %neg29 = xor i32 %52, -1, !dbg !143
  %and30 = and i32 %51, %neg29, !dbg !144
  %53 = load double*, double** %iptr.addr, align 8, !dbg !145
  %54 = bitcast double* %53 to i32*, !dbg !145
  %add.ptr31 = getelementptr inbounds i32, i32* %54, i64 1, !dbg !145
  store i32 %and30, i32* %add.ptr31, align 4, !dbg !146
  %55 = load double, double* %x.addr, align 8, !dbg !147
  %56 = load double*, double** %iptr.addr, align 8, !dbg !148
  %57 = load double, double* %56, align 8, !dbg !149
  %sub32 = fsub double %55, %57, !dbg !150
  store double %sub32, double* %retval, align 8, !dbg !151
  br label %return, !dbg !151

return:                                           ; preds = %if.else28, %if.then25, %if.then17, %if.else11, %if.then8, %if.then2
  %58 = load double, double* %retval, align 8, !dbg !152
  ret double %58, !dbg !152
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !153 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !156, metadata !DIExpression()), !dbg !157
  %0 = bitcast double* %a0 to i8*, !dbg !158
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !159
  call void @llvm.dbg.declare(metadata double* %a1, metadata !160, metadata !DIExpression()), !dbg !161
  %1 = bitcast double* %a1 to i8*, !dbg !162
  call void @klee_make_symbolic(i8* %1, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !163
  call void @llvm.dbg.declare(metadata double* %r, metadata !164, metadata !DIExpression()), !dbg !165
  %2 = load double, double* %a0, align 8, !dbg !166
  %call = call double @modf(double %2, double* %a1) #5, !dbg !167
  store double %call, double* %r, align 8, !dbg !165
  ret i32 0, !dbg !168
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_overshift_check(i64 %bitWidth, i64 %shift) #3 !dbg !169 {
entry:
  %bitWidth.addr = alloca i64, align 8
  %shift.addr = alloca i64, align 8
  store i64 %bitWidth, i64* %bitWidth.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %bitWidth.addr, metadata !174, metadata !DIExpression()), !dbg !175
  store i64 %shift, i64* %shift.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %shift.addr, metadata !176, metadata !DIExpression()), !dbg !177
  %0 = load i64, i64* %shift.addr, align 8, !dbg !178
  %1 = load i64, i64* %bitWidth.addr, align 8, !dbg !180
  %cmp = icmp uge i64 %0, %1, !dbg !181
  br i1 %cmp, label %if.then, label %if.end, !dbg !182

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !183
  unreachable, !dbg !183

if.end:                                           ; preds = %entry
  ret void, !dbg !185
}

; Function Attrs: noreturn
declare dso_local void @klee_report_error(i8*, i32, i8*, i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

!llvm.dbg.cu = !{!0, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19}
!llvm.ident = !{!20, !20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "s_modf.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !10, line: 27, type: !11, isLocal: true, isDefinition: true)
!10 = !DIFile(filename: "./s_modf.c", directory: "/home/klee/logic_bombs/fdlibm")
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!13 = distinct !DICompileUnit(language: DW_LANG_C89, file: !14, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "/tmp/klee_src/runtime/Intrinsic/klee_overshift_check.c", directory: "/tmp/klee_build130stp_z3/runtime/Intrinsic")
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!21 = distinct !DISubprogram(name: "modf", scope: !10, file: !10, line: 33, type: !22, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!22 = !DISubroutineType(types: !23)
!23 = !{!12, !12, !24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!25 = !DILocalVariable(name: "x", arg: 1, scope: !21, file: !10, line: 33, type: !12)
!26 = !DILocation(line: 33, column: 21, scope: !21)
!27 = !DILocalVariable(name: "iptr", arg: 2, scope: !21, file: !10, line: 33, type: !24)
!28 = !DILocation(line: 33, column: 32, scope: !21)
!29 = !DILocalVariable(name: "i0", scope: !21, file: !10, line: 39, type: !5)
!30 = !DILocation(line: 39, column: 6, scope: !21)
!31 = !DILocalVariable(name: "i1", scope: !21, file: !10, line: 39, type: !5)
!32 = !DILocation(line: 39, column: 9, scope: !21)
!33 = !DILocalVariable(name: "j0", scope: !21, file: !10, line: 39, type: !5)
!34 = !DILocation(line: 39, column: 12, scope: !21)
!35 = !DILocalVariable(name: "i", scope: !21, file: !10, line: 40, type: !6)
!36 = !DILocation(line: 40, column: 11, scope: !21)
!37 = !DILocation(line: 41, column: 8, scope: !21)
!38 = !DILocation(line: 41, column: 5, scope: !21)
!39 = !DILocation(line: 42, column: 8, scope: !21)
!40 = !DILocation(line: 42, column: 5, scope: !21)
!41 = !DILocation(line: 43, column: 9, scope: !21)
!42 = !DILocation(line: 43, column: 11, scope: !21)
!43 = !DILocation(line: 43, column: 16, scope: !21)
!44 = !DILocation(line: 43, column: 23, scope: !21)
!45 = !DILocation(line: 43, column: 5, scope: !21)
!46 = !DILocation(line: 44, column: 5, scope: !47)
!47 = distinct !DILexicalBlock(scope: !21, file: !10, line: 44, column: 5)
!48 = !DILocation(line: 44, column: 7, scope: !47)
!49 = !DILocation(line: 44, column: 5, scope: !21)
!50 = !DILocation(line: 45, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !52, file: !10, line: 45, column: 9)
!52 = distinct !DILexicalBlock(scope: !47, file: !10, line: 44, column: 12)
!53 = !DILocation(line: 45, column: 11, scope: !51)
!54 = !DILocation(line: 45, column: 9, scope: !52)
!55 = !DILocation(line: 46, column: 17, scope: !56)
!56 = distinct !DILexicalBlock(scope: !51, file: !10, line: 45, column: 15)
!57 = !DILocation(line: 46, column: 19, scope: !56)
!58 = !DILocation(line: 46, column: 3, scope: !56)
!59 = !DILocation(line: 46, column: 15, scope: !56)
!60 = !DILocation(line: 47, column: 3, scope: !56)
!61 = !DILocation(line: 47, column: 15, scope: !56)
!62 = !DILocation(line: 48, column: 10, scope: !56)
!63 = !DILocation(line: 48, column: 3, scope: !56)
!64 = !DILocation(line: 50, column: 21, scope: !65)
!65 = distinct !DILexicalBlock(scope: !51, file: !10, line: 49, column: 13)
!66 = !DILocation(line: 50, column: 19, scope: !65)
!67 = !{!"True"}
!68 = !DILocation(line: 50, column: 5, scope: !65)
!69 = !DILocation(line: 51, column: 8, scope: !70)
!70 = distinct !DILexicalBlock(scope: !65, file: !10, line: 51, column: 6)
!71 = !DILocation(line: 51, column: 11, scope: !70)
!72 = !DILocation(line: 51, column: 10, scope: !70)
!73 = !DILocation(line: 51, column: 14, scope: !70)
!74 = !DILocation(line: 51, column: 13, scope: !70)
!75 = !DILocation(line: 51, column: 17, scope: !70)
!76 = !DILocation(line: 51, column: 6, scope: !65)
!77 = !DILocation(line: 52, column: 15, scope: !78)
!78 = distinct !DILexicalBlock(scope: !70, file: !10, line: 51, column: 22)
!79 = !DILocation(line: 52, column: 8, scope: !78)
!80 = !DILocation(line: 52, column: 13, scope: !78)
!81 = !DILocation(line: 53, column: 7, scope: !78)
!82 = !DILocation(line: 53, column: 15, scope: !78)
!83 = !DILocation(line: 54, column: 7, scope: !78)
!84 = !DILocation(line: 54, column: 16, scope: !78)
!85 = !DILocation(line: 55, column: 14, scope: !78)
!86 = !DILocation(line: 55, column: 7, scope: !78)
!87 = !DILocation(line: 57, column: 21, scope: !88)
!88 = distinct !DILexicalBlock(scope: !70, file: !10, line: 56, column: 10)
!89 = !DILocation(line: 57, column: 26, scope: !88)
!90 = !DILocation(line: 57, column: 25, scope: !88)
!91 = !DILocation(line: 57, column: 23, scope: !88)
!92 = !DILocation(line: 57, column: 7, scope: !88)
!93 = !DILocation(line: 57, column: 19, scope: !88)
!94 = !DILocation(line: 58, column: 7, scope: !88)
!95 = !DILocation(line: 58, column: 19, scope: !88)
!96 = !DILocation(line: 59, column: 14, scope: !88)
!97 = !DILocation(line: 59, column: 19, scope: !88)
!98 = !DILocation(line: 59, column: 18, scope: !88)
!99 = !DILocation(line: 59, column: 16, scope: !88)
!100 = !DILocation(line: 59, column: 7, scope: !88)
!101 = !DILocation(line: 62, column: 13, scope: !102)
!102 = distinct !DILexicalBlock(scope: !47, file: !10, line: 62, column: 13)
!103 = !DILocation(line: 62, column: 15, scope: !102)
!104 = !DILocation(line: 62, column: 13, scope: !47)
!105 = !DILocation(line: 63, column: 14, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !10, line: 62, column: 20)
!107 = !DILocation(line: 63, column: 15, scope: !106)
!108 = !DILocation(line: 63, column: 7, scope: !106)
!109 = !DILocation(line: 63, column: 12, scope: !106)
!110 = !DILocation(line: 64, column: 6, scope: !106)
!111 = !DILocation(line: 64, column: 14, scope: !106)
!112 = !DILocation(line: 65, column: 6, scope: !106)
!113 = !DILocation(line: 65, column: 15, scope: !106)
!114 = !DILocation(line: 66, column: 13, scope: !106)
!115 = !DILocation(line: 66, column: 6, scope: !106)
!116 = !DILocation(line: 68, column: 37, scope: !117)
!117 = distinct !DILexicalBlock(scope: !102, file: !10, line: 67, column: 9)
!118 = !DILocation(line: 68, column: 39, scope: !117)
!119 = !DILocation(line: 68, column: 34, scope: !117)
!120 = !DILocation(line: 68, column: 8, scope: !117)
!121 = !DILocation(line: 69, column: 10, scope: !122)
!122 = distinct !DILexicalBlock(scope: !117, file: !10, line: 69, column: 9)
!123 = !DILocation(line: 69, column: 13, scope: !122)
!124 = !DILocation(line: 69, column: 12, scope: !122)
!125 = !DILocation(line: 69, column: 15, scope: !122)
!126 = !DILocation(line: 69, column: 9, scope: !117)
!127 = !DILocation(line: 70, column: 11, scope: !128)
!128 = distinct !DILexicalBlock(scope: !122, file: !10, line: 69, column: 20)
!129 = !DILocation(line: 70, column: 4, scope: !128)
!130 = !DILocation(line: 70, column: 9, scope: !128)
!131 = !DILocation(line: 71, column: 3, scope: !128)
!132 = !DILocation(line: 71, column: 11, scope: !128)
!133 = !DILocation(line: 72, column: 3, scope: !128)
!134 = !DILocation(line: 72, column: 12, scope: !128)
!135 = !DILocation(line: 73, column: 10, scope: !128)
!136 = !DILocation(line: 73, column: 3, scope: !128)
!137 = !DILocation(line: 75, column: 17, scope: !138)
!138 = distinct !DILexicalBlock(scope: !122, file: !10, line: 74, column: 13)
!139 = !DILocation(line: 75, column: 3, scope: !138)
!140 = !DILocation(line: 75, column: 15, scope: !138)
!141 = !DILocation(line: 76, column: 17, scope: !138)
!142 = !DILocation(line: 76, column: 22, scope: !138)
!143 = !DILocation(line: 76, column: 21, scope: !138)
!144 = !DILocation(line: 76, column: 19, scope: !138)
!145 = !DILocation(line: 76, column: 3, scope: !138)
!146 = !DILocation(line: 76, column: 15, scope: !138)
!147 = !DILocation(line: 77, column: 10, scope: !138)
!148 = !DILocation(line: 77, column: 15, scope: !138)
!149 = !DILocation(line: 77, column: 14, scope: !138)
!150 = !DILocation(line: 77, column: 12, scope: !138)
!151 = !DILocation(line: 77, column: 3, scope: !138)
!152 = !DILocation(line: 80, column: 1, scope: !21)
!153 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 84, type: !154, scopeLine: 84, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!154 = !DISubroutineType(types: !155)
!155 = !{!5}
!156 = !DILocalVariable(name: "a0", scope: !153, file: !10, line: 85, type: !12)
!157 = !DILocation(line: 85, column: 12, scope: !153)
!158 = !DILocation(line: 86, column: 24, scope: !153)
!159 = !DILocation(line: 86, column: 5, scope: !153)
!160 = !DILocalVariable(name: "a1", scope: !153, file: !10, line: 88, type: !12)
!161 = !DILocation(line: 88, column: 12, scope: !153)
!162 = !DILocation(line: 89, column: 21, scope: !153)
!163 = !DILocation(line: 89, column: 2, scope: !153)
!164 = !DILocalVariable(name: "r", scope: !153, file: !10, line: 90, type: !12)
!165 = !DILocation(line: 90, column: 9, scope: !153)
!166 = !DILocation(line: 90, column: 18, scope: !153)
!167 = !DILocation(line: 90, column: 13, scope: !153)
!168 = !DILocation(line: 92, column: 5, scope: !153)
!169 = distinct !DISubprogram(name: "klee_overshift_check", scope: !170, file: !170, line: 20, type: !171, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !2)
!170 = !DIFile(filename: "klee_src/runtime/Intrinsic/klee_overshift_check.c", directory: "/tmp")
!171 = !DISubroutineType(types: !172)
!172 = !{null, !173, !173}
!173 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!174 = !DILocalVariable(name: "bitWidth", arg: 1, scope: !169, file: !170, line: 20, type: !173)
!175 = !DILocation(line: 20, column: 46, scope: !169)
!176 = !DILocalVariable(name: "shift", arg: 2, scope: !169, file: !170, line: 20, type: !173)
!177 = !DILocation(line: 20, column: 75, scope: !169)
!178 = !DILocation(line: 21, column: 7, scope: !179)
!179 = distinct !DILexicalBlock(scope: !169, file: !170, line: 21, column: 7)
!180 = !DILocation(line: 21, column: 16, scope: !179)
!181 = !DILocation(line: 21, column: 13, scope: !179)
!182 = !DILocation(line: 21, column: 7, scope: !169)
!183 = !DILocation(line: 27, column: 5, scope: !184)
!184 = distinct !DILexicalBlock(scope: !179, file: !170, line: 21, column: 26)
!185 = !DILocation(line: 29, column: 1, scope: !169)
