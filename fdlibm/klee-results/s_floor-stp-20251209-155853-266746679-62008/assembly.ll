; ModuleID = 's_floor.bc'
source_filename = "./s_floor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1

; Function Attrs: noinline nounwind optnone readnone uwtable willreturn
define dso_local double @floor(double %x) #0 !dbg !21 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %i0 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j0 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %i0, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %j0, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %j, metadata !34, metadata !DIExpression()), !dbg !35
  %0 = bitcast double* %x.addr to i32*, !dbg !36
  %1 = load i32, i32* %0, align 8, !dbg !36
  store i32 %1, i32* %i0, align 4, !dbg !37
  %2 = bitcast double* %x.addr to i32*, !dbg !38
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 1, !dbg !38
  %3 = load i32, i32* %add.ptr, align 4, !dbg !38
  store i32 %3, i32* %i1, align 4, !dbg !39
  %4 = load i32, i32* %i0, align 4, !dbg !40
  %shr = ashr i32 %4, 20, !dbg !41
  %and = and i32 %shr, 2047, !dbg !42
  %sub = sub nsw i32 %and, 1023, !dbg !43
  store i32 %sub, i32* %j0, align 4, !dbg !44
  %5 = load i32, i32* %j0, align 4, !dbg !45
  %cmp = icmp slt i32 %5, 20, !dbg !47
  br i1 %cmp, label %if.then, label %if.else30, !dbg !48

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %j0, align 4, !dbg !49
  %cmp1 = icmp slt i32 %6, 0, !dbg !52
  br i1 %cmp1, label %if.then2, label %if.else12, !dbg !53

if.then2:                                         ; preds = %if.then
  %7 = load double, double* %x.addr, align 8, !dbg !54
  %add = fadd double 1.000000e+300, %7, !dbg !57
  %cmp3 = fcmp ogt double %add, 0.000000e+00, !dbg !58
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !59

if.then4:                                         ; preds = %if.then2
  %8 = load i32, i32* %i0, align 4, !dbg !60
  %cmp5 = icmp sge i32 %8, 0, !dbg !63
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !64

if.then6:                                         ; preds = %if.then4
  store i32 0, i32* %i1, align 4, !dbg !65
  store i32 0, i32* %i0, align 4, !dbg !67
  br label %if.end10, !dbg !68

if.else:                                          ; preds = %if.then4
  %9 = load i32, i32* %i0, align 4, !dbg !69
  %and7 = and i32 %9, 2147483647, !dbg !71
  %10 = load i32, i32* %i1, align 4, !dbg !72
  %or = or i32 %and7, %10, !dbg !73
  %cmp8 = icmp ne i32 %or, 0, !dbg !74
  br i1 %cmp8, label %if.then9, label %if.end, !dbg !75

if.then9:                                         ; preds = %if.else
  store i32 -1074790400, i32* %i0, align 4, !dbg !76
  store i32 0, i32* %i1, align 4, !dbg !78
  br label %if.end, !dbg !79

if.end:                                           ; preds = %if.then9, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then6
  br label %if.end11, !dbg !80

if.end11:                                         ; preds = %if.end10, %if.then2
  br label %if.end29, !dbg !81

if.else12:                                        ; preds = %if.then
  %11 = load i32, i32* %j0, align 4, !dbg !82
  %int_cast_to_i64 = zext i32 %11 to i64, !dbg !84
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !84
  %shr13 = ashr i32 1048575, %11, !dbg !84, !klee.check.shift !85
  store i32 %shr13, i32* %i, align 4, !dbg !86
  %12 = load i32, i32* %i0, align 4, !dbg !87
  %13 = load i32, i32* %i, align 4, !dbg !89
  %and14 = and i32 %12, %13, !dbg !90
  %14 = load i32, i32* %i1, align 4, !dbg !91
  %or15 = or i32 %and14, %14, !dbg !92
  %cmp16 = icmp eq i32 %or15, 0, !dbg !93
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !94

if.then17:                                        ; preds = %if.else12
  %15 = load double, double* %x.addr, align 8, !dbg !95
  store double %15, double* %retval, align 8, !dbg !96
  br label %return, !dbg !96

if.end18:                                         ; preds = %if.else12
  %16 = load double, double* %x.addr, align 8, !dbg !97
  %add19 = fadd double 1.000000e+300, %16, !dbg !99
  %cmp20 = fcmp ogt double %add19, 0.000000e+00, !dbg !100
  br i1 %cmp20, label %if.then21, label %if.end28, !dbg !101

if.then21:                                        ; preds = %if.end18
  %17 = load i32, i32* %i0, align 4, !dbg !102
  %cmp22 = icmp slt i32 %17, 0, !dbg !105
  br i1 %cmp22, label %if.then23, label %if.end26, !dbg !106

if.then23:                                        ; preds = %if.then21
  %18 = load i32, i32* %j0, align 4, !dbg !107
  %int_cast_to_i641 = zext i32 %18 to i64, !dbg !108
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !108
  %shr24 = ashr i32 1048576, %18, !dbg !108, !klee.check.shift !85
  %19 = load i32, i32* %i0, align 4, !dbg !109
  %add25 = add nsw i32 %19, %shr24, !dbg !109
  store i32 %add25, i32* %i0, align 4, !dbg !109
  br label %if.end26, !dbg !110

if.end26:                                         ; preds = %if.then23, %if.then21
  %20 = load i32, i32* %i, align 4, !dbg !111
  %neg = xor i32 %20, -1, !dbg !112
  %21 = load i32, i32* %i0, align 4, !dbg !113
  %and27 = and i32 %21, %neg, !dbg !113
  store i32 %and27, i32* %i0, align 4, !dbg !113
  store i32 0, i32* %i1, align 4, !dbg !114
  br label %if.end28, !dbg !115

if.end28:                                         ; preds = %if.end26, %if.end18
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end11
  br label %if.end65, !dbg !116

if.else30:                                        ; preds = %entry
  %22 = load i32, i32* %j0, align 4, !dbg !117
  %cmp31 = icmp sgt i32 %22, 51, !dbg !119
  br i1 %cmp31, label %if.then32, label %if.else37, !dbg !120

if.then32:                                        ; preds = %if.else30
  %23 = load i32, i32* %j0, align 4, !dbg !121
  %cmp33 = icmp eq i32 %23, 1024, !dbg !124
  br i1 %cmp33, label %if.then34, label %if.else36, !dbg !125

if.then34:                                        ; preds = %if.then32
  %24 = load double, double* %x.addr, align 8, !dbg !126
  %25 = load double, double* %x.addr, align 8, !dbg !127
  %add35 = fadd double %24, %25, !dbg !128
  store double %add35, double* %retval, align 8, !dbg !129
  br label %return, !dbg !129

if.else36:                                        ; preds = %if.then32
  %26 = load double, double* %x.addr, align 8, !dbg !130
  store double %26, double* %retval, align 8, !dbg !131
  br label %return, !dbg !131

if.else37:                                        ; preds = %if.else30
  %27 = load i32, i32* %j0, align 4, !dbg !132
  %sub38 = sub nsw i32 %27, 20, !dbg !134
  %int_cast_to_i642 = zext i32 %sub38 to i64, !dbg !135
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i642), !dbg !135
  %shr39 = lshr i32 -1, %sub38, !dbg !135, !klee.check.shift !85
  store i32 %shr39, i32* %i, align 4, !dbg !136
  %28 = load i32, i32* %i1, align 4, !dbg !137
  %29 = load i32, i32* %i, align 4, !dbg !139
  %and40 = and i32 %28, %29, !dbg !140
  %cmp41 = icmp eq i32 %and40, 0, !dbg !141
  br i1 %cmp41, label %if.then42, label %if.end43, !dbg !142

if.then42:                                        ; preds = %if.else37
  %30 = load double, double* %x.addr, align 8, !dbg !143
  store double %30, double* %retval, align 8, !dbg !144
  br label %return, !dbg !144

if.end43:                                         ; preds = %if.else37
  %31 = load double, double* %x.addr, align 8, !dbg !145
  %add44 = fadd double 1.000000e+300, %31, !dbg !147
  %cmp45 = fcmp ogt double %add44, 0.000000e+00, !dbg !148
  br i1 %cmp45, label %if.then46, label %if.end63, !dbg !149

if.then46:                                        ; preds = %if.end43
  %32 = load i32, i32* %i0, align 4, !dbg !150
  %cmp47 = icmp slt i32 %32, 0, !dbg !153
  br i1 %cmp47, label %if.then48, label %if.end60, !dbg !154

if.then48:                                        ; preds = %if.then46
  %33 = load i32, i32* %j0, align 4, !dbg !155
  %cmp49 = icmp eq i32 %33, 20, !dbg !158
  br i1 %cmp49, label %if.then50, label %if.else52, !dbg !159

if.then50:                                        ; preds = %if.then48
  %34 = load i32, i32* %i0, align 4, !dbg !160
  %add51 = add nsw i32 %34, 1, !dbg !160
  store i32 %add51, i32* %i0, align 4, !dbg !160
  br label %if.end59, !dbg !161

if.else52:                                        ; preds = %if.then48
  %35 = load i32, i32* %i1, align 4, !dbg !162
  %36 = load i32, i32* %j0, align 4, !dbg !164
  %sub53 = sub nsw i32 52, %36, !dbg !165
  %int_cast_to_i643 = zext i32 %sub53 to i64, !dbg !166
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i643), !dbg !166
  %shl = shl i32 1, %sub53, !dbg !166, !klee.check.shift !85
  %add54 = add nsw i32 %35, %shl, !dbg !167
  store i32 %add54, i32* %j, align 4, !dbg !168
  %37 = load i32, i32* %j, align 4, !dbg !169
  %38 = load i32, i32* %i1, align 4, !dbg !171
  %cmp55 = icmp ult i32 %37, %38, !dbg !172
  br i1 %cmp55, label %if.then56, label %if.end58, !dbg !173

if.then56:                                        ; preds = %if.else52
  %39 = load i32, i32* %i0, align 4, !dbg !174
  %add57 = add nsw i32 %39, 1, !dbg !174
  store i32 %add57, i32* %i0, align 4, !dbg !174
  br label %if.end58, !dbg !175

if.end58:                                         ; preds = %if.then56, %if.else52
  %40 = load i32, i32* %j, align 4, !dbg !176
  store i32 %40, i32* %i1, align 4, !dbg !177
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then50
  br label %if.end60, !dbg !178

if.end60:                                         ; preds = %if.end59, %if.then46
  %41 = load i32, i32* %i, align 4, !dbg !179
  %neg61 = xor i32 %41, -1, !dbg !180
  %42 = load i32, i32* %i1, align 4, !dbg !181
  %and62 = and i32 %42, %neg61, !dbg !181
  store i32 %and62, i32* %i1, align 4, !dbg !181
  br label %if.end63, !dbg !182

if.end63:                                         ; preds = %if.end60, %if.end43
  br label %if.end64

if.end64:                                         ; preds = %if.end63
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end29
  %43 = load i32, i32* %i0, align 4, !dbg !183
  %44 = bitcast double* %x.addr to i32*, !dbg !184
  store i32 %43, i32* %44, align 8, !dbg !185
  %45 = load i32, i32* %i1, align 4, !dbg !186
  %46 = bitcast double* %x.addr to i32*, !dbg !187
  %add.ptr66 = getelementptr inbounds i32, i32* %46, i64 1, !dbg !187
  store i32 %45, i32* %add.ptr66, align 4, !dbg !188
  %47 = load double, double* %x.addr, align 8, !dbg !189
  store double %47, double* %retval, align 8, !dbg !190
  br label %return, !dbg !190

return:                                           ; preds = %if.end65, %if.then42, %if.else36, %if.then34, %if.then17
  %48 = load double, double* %retval, align 8, !dbg !191
  ret double %48, !dbg !191
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #2 !dbg !192 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !195, metadata !DIExpression()), !dbg !196
  %0 = bitcast double* %a0 to i8*, !dbg !197
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !198
  call void @llvm.dbg.declare(metadata double* %r, metadata !199, metadata !DIExpression()), !dbg !200
  %1 = load double, double* %a0, align 8, !dbg !201
  %2 = call double @floor(double %1), !dbg !202
  store double %2, double* %r, align 8, !dbg !200
  ret i32 0, !dbg !203
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_overshift_check(i64 %bitWidth, i64 %shift) #4 !dbg !204 {
entry:
  %bitWidth.addr = alloca i64, align 8
  %shift.addr = alloca i64, align 8
  store i64 %bitWidth, i64* %bitWidth.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %bitWidth.addr, metadata !209, metadata !DIExpression()), !dbg !210
  store i64 %shift, i64* %shift.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %shift.addr, metadata !211, metadata !DIExpression()), !dbg !212
  %0 = load i64, i64* %shift.addr, align 8, !dbg !213
  %1 = load i64, i64* %bitWidth.addr, align 8, !dbg !215
  %cmp = icmp uge i64 %0, %1, !dbg !216
  br i1 %cmp, label %if.then, label %if.end, !dbg !217

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !218
  unreachable, !dbg !218

if.end:                                           ; preds = %entry
  ret void, !dbg !220
}

; Function Attrs: noreturn
declare dso_local void @klee_report_error(i8*, i32, i8*, i8*) #5

attributes #0 = { noinline nounwind optnone readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn }

!llvm.dbg.cu = !{!0, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19}
!llvm.ident = !{!20, !20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "s_floor.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "huge", scope: !0, file: !10, line: 26, type: !11, isLocal: true, isDefinition: true)
!10 = !DIFile(filename: "./s_floor.c", directory: "/home/klee/logic_bombs/fdlibm")
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
!21 = distinct !DISubprogram(name: "floor", scope: !10, file: !10, line: 32, type: !22, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!22 = !DISubroutineType(types: !23)
!23 = !{!12, !12}
!24 = !DILocalVariable(name: "x", arg: 1, scope: !21, file: !10, line: 32, type: !12)
!25 = !DILocation(line: 32, column: 22, scope: !21)
!26 = !DILocalVariable(name: "i0", scope: !21, file: !10, line: 38, type: !5)
!27 = !DILocation(line: 38, column: 6, scope: !21)
!28 = !DILocalVariable(name: "i1", scope: !21, file: !10, line: 38, type: !5)
!29 = !DILocation(line: 38, column: 9, scope: !21)
!30 = !DILocalVariable(name: "j0", scope: !21, file: !10, line: 38, type: !5)
!31 = !DILocation(line: 38, column: 12, scope: !21)
!32 = !DILocalVariable(name: "i", scope: !21, file: !10, line: 39, type: !6)
!33 = !DILocation(line: 39, column: 11, scope: !21)
!34 = !DILocalVariable(name: "j", scope: !21, file: !10, line: 39, type: !6)
!35 = !DILocation(line: 39, column: 13, scope: !21)
!36 = !DILocation(line: 40, column: 8, scope: !21)
!37 = !DILocation(line: 40, column: 5, scope: !21)
!38 = !DILocation(line: 41, column: 8, scope: !21)
!39 = !DILocation(line: 41, column: 5, scope: !21)
!40 = !DILocation(line: 42, column: 9, scope: !21)
!41 = !DILocation(line: 42, column: 11, scope: !21)
!42 = !DILocation(line: 42, column: 16, scope: !21)
!43 = !DILocation(line: 42, column: 23, scope: !21)
!44 = !DILocation(line: 42, column: 5, scope: !21)
!45 = !DILocation(line: 43, column: 5, scope: !46)
!46 = distinct !DILexicalBlock(scope: !21, file: !10, line: 43, column: 5)
!47 = !DILocation(line: 43, column: 7, scope: !46)
!48 = !DILocation(line: 43, column: 5, scope: !21)
!49 = !DILocation(line: 44, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !10, line: 44, column: 9)
!51 = distinct !DILexicalBlock(scope: !46, file: !10, line: 43, column: 12)
!52 = !DILocation(line: 44, column: 11, scope: !50)
!53 = !DILocation(line: 44, column: 9, scope: !51)
!54 = !DILocation(line: 45, column: 11, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !10, line: 45, column: 6)
!56 = distinct !DILexicalBlock(scope: !50, file: !10, line: 44, column: 15)
!57 = !DILocation(line: 45, column: 10, scope: !55)
!58 = !DILocation(line: 45, column: 12, scope: !55)
!59 = !DILocation(line: 45, column: 6, scope: !56)
!60 = !DILocation(line: 46, column: 10, scope: !61)
!61 = distinct !DILexicalBlock(scope: !62, file: !10, line: 46, column: 10)
!62 = distinct !DILexicalBlock(scope: !55, file: !10, line: 45, column: 18)
!63 = !DILocation(line: 46, column: 12, scope: !61)
!64 = !DILocation(line: 46, column: 10, scope: !62)
!65 = !DILocation(line: 46, column: 23, scope: !66)
!66 = distinct !DILexicalBlock(scope: !61, file: !10, line: 46, column: 17)
!67 = !DILocation(line: 46, column: 20, scope: !66)
!68 = !DILocation(line: 46, column: 26, scope: !66)
!69 = !DILocation(line: 47, column: 17, scope: !70)
!70 = distinct !DILexicalBlock(scope: !61, file: !10, line: 47, column: 15)
!71 = !DILocation(line: 47, column: 19, scope: !70)
!72 = !DILocation(line: 47, column: 32, scope: !70)
!73 = !DILocation(line: 47, column: 31, scope: !70)
!74 = !DILocation(line: 47, column: 35, scope: !70)
!75 = !DILocation(line: 47, column: 15, scope: !61)
!76 = !DILocation(line: 48, column: 8, scope: !77)
!77 = distinct !DILexicalBlock(scope: !70, file: !10, line: 48, column: 4)
!78 = !DILocation(line: 48, column: 22, scope: !77)
!79 = !DILocation(line: 48, column: 25, scope: !77)
!80 = !DILocation(line: 49, column: 3, scope: !62)
!81 = !DILocation(line: 50, column: 6, scope: !56)
!82 = !DILocation(line: 51, column: 21, scope: !83)
!83 = distinct !DILexicalBlock(scope: !50, file: !10, line: 50, column: 13)
!84 = !DILocation(line: 51, column: 19, scope: !83)
!85 = !{!"True"}
!86 = !DILocation(line: 51, column: 5, scope: !83)
!87 = !DILocation(line: 52, column: 8, scope: !88)
!88 = distinct !DILexicalBlock(scope: !83, file: !10, line: 52, column: 6)
!89 = !DILocation(line: 52, column: 11, scope: !88)
!90 = !DILocation(line: 52, column: 10, scope: !88)
!91 = !DILocation(line: 52, column: 14, scope: !88)
!92 = !DILocation(line: 52, column: 13, scope: !88)
!93 = !DILocation(line: 52, column: 17, scope: !88)
!94 = !DILocation(line: 52, column: 6, scope: !83)
!95 = !DILocation(line: 52, column: 29, scope: !88)
!96 = !DILocation(line: 52, column: 22, scope: !88)
!97 = !DILocation(line: 53, column: 11, scope: !98)
!98 = distinct !DILexicalBlock(scope: !83, file: !10, line: 53, column: 6)
!99 = !DILocation(line: 53, column: 10, scope: !98)
!100 = !DILocation(line: 53, column: 12, scope: !98)
!101 = !DILocation(line: 53, column: 6, scope: !83)
!102 = !DILocation(line: 54, column: 10, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !10, line: 54, column: 10)
!104 = distinct !DILexicalBlock(scope: !98, file: !10, line: 53, column: 18)
!105 = !DILocation(line: 54, column: 12, scope: !103)
!106 = !DILocation(line: 54, column: 10, scope: !104)
!107 = !DILocation(line: 54, column: 36, scope: !103)
!108 = !DILocation(line: 54, column: 34, scope: !103)
!109 = !DILocation(line: 54, column: 19, scope: !103)
!110 = !DILocation(line: 54, column: 16, scope: !103)
!111 = !DILocation(line: 55, column: 15, scope: !104)
!112 = !DILocation(line: 55, column: 14, scope: !104)
!113 = !DILocation(line: 55, column: 10, scope: !104)
!114 = !DILocation(line: 55, column: 21, scope: !104)
!115 = !DILocation(line: 56, column: 3, scope: !104)
!116 = !DILocation(line: 58, column: 2, scope: !51)
!117 = !DILocation(line: 58, column: 13, scope: !118)
!118 = distinct !DILexicalBlock(scope: !46, file: !10, line: 58, column: 13)
!119 = !DILocation(line: 58, column: 15, scope: !118)
!120 = !DILocation(line: 58, column: 13, scope: !46)
!121 = !DILocation(line: 59, column: 9, scope: !122)
!122 = distinct !DILexicalBlock(scope: !123, file: !10, line: 59, column: 9)
!123 = distinct !DILexicalBlock(scope: !118, file: !10, line: 58, column: 20)
!124 = !DILocation(line: 59, column: 11, scope: !122)
!125 = !DILocation(line: 59, column: 9, scope: !123)
!126 = !DILocation(line: 59, column: 27, scope: !122)
!127 = !DILocation(line: 59, column: 29, scope: !122)
!128 = !DILocation(line: 59, column: 28, scope: !122)
!129 = !DILocation(line: 59, column: 20, scope: !122)
!130 = !DILocation(line: 60, column: 18, scope: !122)
!131 = !DILocation(line: 60, column: 11, scope: !122)
!132 = !DILocation(line: 62, column: 37, scope: !133)
!133 = distinct !DILexicalBlock(scope: !118, file: !10, line: 61, column: 9)
!134 = !DILocation(line: 62, column: 39, scope: !133)
!135 = !DILocation(line: 62, column: 34, scope: !133)
!136 = !DILocation(line: 62, column: 8, scope: !133)
!137 = !DILocation(line: 63, column: 10, scope: !138)
!138 = distinct !DILexicalBlock(scope: !133, file: !10, line: 63, column: 9)
!139 = !DILocation(line: 63, column: 13, scope: !138)
!140 = !DILocation(line: 63, column: 12, scope: !138)
!141 = !DILocation(line: 63, column: 15, scope: !138)
!142 = !DILocation(line: 63, column: 9, scope: !133)
!143 = !DILocation(line: 63, column: 27, scope: !138)
!144 = !DILocation(line: 63, column: 20, scope: !138)
!145 = !DILocation(line: 64, column: 14, scope: !146)
!146 = distinct !DILexicalBlock(scope: !133, file: !10, line: 64, column: 9)
!147 = !DILocation(line: 64, column: 13, scope: !146)
!148 = !DILocation(line: 64, column: 15, scope: !146)
!149 = !DILocation(line: 64, column: 9, scope: !133)
!150 = !DILocation(line: 65, column: 6, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !10, line: 65, column: 6)
!152 = distinct !DILexicalBlock(scope: !146, file: !10, line: 64, column: 21)
!153 = !DILocation(line: 65, column: 8, scope: !151)
!154 = !DILocation(line: 65, column: 6, scope: !152)
!155 = !DILocation(line: 66, column: 10, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !10, line: 66, column: 10)
!157 = distinct !DILexicalBlock(scope: !151, file: !10, line: 65, column: 12)
!158 = !DILocation(line: 66, column: 12, scope: !156)
!159 = !DILocation(line: 66, column: 10, scope: !157)
!160 = !DILocation(line: 66, column: 20, scope: !156)
!161 = !DILocation(line: 66, column: 18, scope: !156)
!162 = !DILocation(line: 68, column: 8, scope: !163)
!163 = distinct !DILexicalBlock(scope: !156, file: !10, line: 67, column: 12)
!164 = !DILocation(line: 68, column: 19, scope: !163)
!165 = !DILocation(line: 68, column: 18, scope: !163)
!166 = !DILocation(line: 68, column: 13, scope: !163)
!167 = !DILocation(line: 68, column: 10, scope: !163)
!168 = !DILocation(line: 68, column: 6, scope: !163)
!169 = !DILocation(line: 69, column: 7, scope: !170)
!170 = distinct !DILexicalBlock(scope: !163, file: !10, line: 69, column: 7)
!171 = !DILocation(line: 69, column: 9, scope: !170)
!172 = !DILocation(line: 69, column: 8, scope: !170)
!173 = !DILocation(line: 69, column: 7, scope: !163)
!174 = !DILocation(line: 69, column: 16, scope: !170)
!175 = !DILocation(line: 69, column: 13, scope: !170)
!176 = !DILocation(line: 70, column: 7, scope: !163)
!177 = !DILocation(line: 70, column: 6, scope: !163)
!178 = !DILocation(line: 72, column: 3, scope: !157)
!179 = !DILocation(line: 73, column: 11, scope: !152)
!180 = !DILocation(line: 73, column: 10, scope: !152)
!181 = !DILocation(line: 73, column: 6, scope: !152)
!182 = !DILocation(line: 74, column: 6, scope: !152)
!183 = !DILocation(line: 76, column: 12, scope: !21)
!184 = !DILocation(line: 76, column: 2, scope: !21)
!185 = !DILocation(line: 76, column: 10, scope: !21)
!186 = !DILocation(line: 77, column: 12, scope: !21)
!187 = !DILocation(line: 77, column: 2, scope: !21)
!188 = !DILocation(line: 77, column: 10, scope: !21)
!189 = !DILocation(line: 78, column: 9, scope: !21)
!190 = !DILocation(line: 78, column: 2, scope: !21)
!191 = !DILocation(line: 79, column: 1, scope: !21)
!192 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 83, type: !193, scopeLine: 83, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!193 = !DISubroutineType(types: !194)
!194 = !{!5}
!195 = !DILocalVariable(name: "a0", scope: !192, file: !10, line: 84, type: !12)
!196 = !DILocation(line: 84, column: 12, scope: !192)
!197 = !DILocation(line: 85, column: 24, scope: !192)
!198 = !DILocation(line: 85, column: 5, scope: !192)
!199 = !DILocalVariable(name: "r", scope: !192, file: !10, line: 87, type: !12)
!200 = !DILocation(line: 87, column: 12, scope: !192)
!201 = !DILocation(line: 87, column: 22, scope: !192)
!202 = !DILocation(line: 87, column: 16, scope: !192)
!203 = !DILocation(line: 88, column: 5, scope: !192)
!204 = distinct !DISubprogram(name: "klee_overshift_check", scope: !205, file: !205, line: 20, type: !206, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !2)
!205 = !DIFile(filename: "klee_src/runtime/Intrinsic/klee_overshift_check.c", directory: "/tmp")
!206 = !DISubroutineType(types: !207)
!207 = !{null, !208, !208}
!208 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!209 = !DILocalVariable(name: "bitWidth", arg: 1, scope: !204, file: !205, line: 20, type: !208)
!210 = !DILocation(line: 20, column: 46, scope: !204)
!211 = !DILocalVariable(name: "shift", arg: 2, scope: !204, file: !205, line: 20, type: !208)
!212 = !DILocation(line: 20, column: 75, scope: !204)
!213 = !DILocation(line: 21, column: 7, scope: !214)
!214 = distinct !DILexicalBlock(scope: !204, file: !205, line: 21, column: 7)
!215 = !DILocation(line: 21, column: 16, scope: !214)
!216 = !DILocation(line: 21, column: 13, scope: !214)
!217 = !DILocation(line: 21, column: 7, scope: !204)
!218 = !DILocation(line: 27, column: 5, scope: !219)
!219 = distinct !DILexicalBlock(scope: !214, file: !205, line: 21, column: 26)
!220 = !DILocation(line: 29, column: 1, scope: !204)
