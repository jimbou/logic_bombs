; ModuleID = 's_ceil.bc'
source_filename = "./s_ceil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1

; Function Attrs: noinline nounwind optnone readnone uwtable willreturn
define dso_local double @ceil(double %x) #0 !dbg !21 {
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
  br i1 %cmp, label %if.then, label %if.else29, !dbg !48

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %j0, align 4, !dbg !49
  %cmp1 = icmp slt i32 %6, 0, !dbg !52
  br i1 %cmp1, label %if.then2, label %if.else11, !dbg !53

if.then2:                                         ; preds = %if.then
  %7 = load double, double* %x.addr, align 8, !dbg !54
  %add = fadd double 1.000000e+300, %7, !dbg !57
  %cmp3 = fcmp ogt double %add, 0.000000e+00, !dbg !58
  br i1 %cmp3, label %if.then4, label %if.end10, !dbg !59

if.then4:                                         ; preds = %if.then2
  %8 = load i32, i32* %i0, align 4, !dbg !60
  %cmp5 = icmp slt i32 %8, 0, !dbg !63
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !64

if.then6:                                         ; preds = %if.then4
  store i32 -2147483648, i32* %i0, align 4, !dbg !65
  store i32 0, i32* %i1, align 4, !dbg !67
  br label %if.end9, !dbg !68

if.else:                                          ; preds = %if.then4
  %9 = load i32, i32* %i0, align 4, !dbg !69
  %10 = load i32, i32* %i1, align 4, !dbg !71
  %or = or i32 %9, %10, !dbg !72
  %cmp7 = icmp ne i32 %or, 0, !dbg !73
  br i1 %cmp7, label %if.then8, label %if.end, !dbg !74

if.then8:                                         ; preds = %if.else
  store i32 1072693248, i32* %i0, align 4, !dbg !75
  store i32 0, i32* %i1, align 4, !dbg !77
  br label %if.end, !dbg !78

if.end:                                           ; preds = %if.then8, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then6
  br label %if.end10, !dbg !79

if.end10:                                         ; preds = %if.end9, %if.then2
  br label %if.end28, !dbg !80

if.else11:                                        ; preds = %if.then
  %11 = load i32, i32* %j0, align 4, !dbg !81
  %int_cast_to_i64 = zext i32 %11 to i64, !dbg !83
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !83
  %shr12 = ashr i32 1048575, %11, !dbg !83, !klee.check.shift !84
  store i32 %shr12, i32* %i, align 4, !dbg !85
  %12 = load i32, i32* %i0, align 4, !dbg !86
  %13 = load i32, i32* %i, align 4, !dbg !88
  %and13 = and i32 %12, %13, !dbg !89
  %14 = load i32, i32* %i1, align 4, !dbg !90
  %or14 = or i32 %and13, %14, !dbg !91
  %cmp15 = icmp eq i32 %or14, 0, !dbg !92
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !93

if.then16:                                        ; preds = %if.else11
  %15 = load double, double* %x.addr, align 8, !dbg !94
  store double %15, double* %retval, align 8, !dbg !95
  br label %return, !dbg !95

if.end17:                                         ; preds = %if.else11
  %16 = load double, double* %x.addr, align 8, !dbg !96
  %add18 = fadd double 1.000000e+300, %16, !dbg !98
  %cmp19 = fcmp ogt double %add18, 0.000000e+00, !dbg !99
  br i1 %cmp19, label %if.then20, label %if.end27, !dbg !100

if.then20:                                        ; preds = %if.end17
  %17 = load i32, i32* %i0, align 4, !dbg !101
  %cmp21 = icmp sgt i32 %17, 0, !dbg !104
  br i1 %cmp21, label %if.then22, label %if.end25, !dbg !105

if.then22:                                        ; preds = %if.then20
  %18 = load i32, i32* %j0, align 4, !dbg !106
  %int_cast_to_i641 = zext i32 %18 to i64, !dbg !107
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !107
  %shr23 = ashr i32 1048576, %18, !dbg !107, !klee.check.shift !84
  %19 = load i32, i32* %i0, align 4, !dbg !108
  %add24 = add nsw i32 %19, %shr23, !dbg !108
  store i32 %add24, i32* %i0, align 4, !dbg !108
  br label %if.end25, !dbg !109

if.end25:                                         ; preds = %if.then22, %if.then20
  %20 = load i32, i32* %i, align 4, !dbg !110
  %neg = xor i32 %20, -1, !dbg !111
  %21 = load i32, i32* %i0, align 4, !dbg !112
  %and26 = and i32 %21, %neg, !dbg !112
  store i32 %and26, i32* %i0, align 4, !dbg !112
  store i32 0, i32* %i1, align 4, !dbg !113
  br label %if.end27, !dbg !114

if.end27:                                         ; preds = %if.end25, %if.end17
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end10
  br label %if.end64, !dbg !115

if.else29:                                        ; preds = %entry
  %22 = load i32, i32* %j0, align 4, !dbg !116
  %cmp30 = icmp sgt i32 %22, 51, !dbg !118
  br i1 %cmp30, label %if.then31, label %if.else36, !dbg !119

if.then31:                                        ; preds = %if.else29
  %23 = load i32, i32* %j0, align 4, !dbg !120
  %cmp32 = icmp eq i32 %23, 1024, !dbg !123
  br i1 %cmp32, label %if.then33, label %if.else35, !dbg !124

if.then33:                                        ; preds = %if.then31
  %24 = load double, double* %x.addr, align 8, !dbg !125
  %25 = load double, double* %x.addr, align 8, !dbg !126
  %add34 = fadd double %24, %25, !dbg !127
  store double %add34, double* %retval, align 8, !dbg !128
  br label %return, !dbg !128

if.else35:                                        ; preds = %if.then31
  %26 = load double, double* %x.addr, align 8, !dbg !129
  store double %26, double* %retval, align 8, !dbg !130
  br label %return, !dbg !130

if.else36:                                        ; preds = %if.else29
  %27 = load i32, i32* %j0, align 4, !dbg !131
  %sub37 = sub nsw i32 %27, 20, !dbg !133
  %int_cast_to_i642 = zext i32 %sub37 to i64, !dbg !134
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i642), !dbg !134
  %shr38 = lshr i32 -1, %sub37, !dbg !134, !klee.check.shift !84
  store i32 %shr38, i32* %i, align 4, !dbg !135
  %28 = load i32, i32* %i1, align 4, !dbg !136
  %29 = load i32, i32* %i, align 4, !dbg !138
  %and39 = and i32 %28, %29, !dbg !139
  %cmp40 = icmp eq i32 %and39, 0, !dbg !140
  br i1 %cmp40, label %if.then41, label %if.end42, !dbg !141

if.then41:                                        ; preds = %if.else36
  %30 = load double, double* %x.addr, align 8, !dbg !142
  store double %30, double* %retval, align 8, !dbg !143
  br label %return, !dbg !143

if.end42:                                         ; preds = %if.else36
  %31 = load double, double* %x.addr, align 8, !dbg !144
  %add43 = fadd double 1.000000e+300, %31, !dbg !146
  %cmp44 = fcmp ogt double %add43, 0.000000e+00, !dbg !147
  br i1 %cmp44, label %if.then45, label %if.end62, !dbg !148

if.then45:                                        ; preds = %if.end42
  %32 = load i32, i32* %i0, align 4, !dbg !149
  %cmp46 = icmp sgt i32 %32, 0, !dbg !152
  br i1 %cmp46, label %if.then47, label %if.end59, !dbg !153

if.then47:                                        ; preds = %if.then45
  %33 = load i32, i32* %j0, align 4, !dbg !154
  %cmp48 = icmp eq i32 %33, 20, !dbg !157
  br i1 %cmp48, label %if.then49, label %if.else51, !dbg !158

if.then49:                                        ; preds = %if.then47
  %34 = load i32, i32* %i0, align 4, !dbg !159
  %add50 = add nsw i32 %34, 1, !dbg !159
  store i32 %add50, i32* %i0, align 4, !dbg !159
  br label %if.end58, !dbg !160

if.else51:                                        ; preds = %if.then47
  %35 = load i32, i32* %i1, align 4, !dbg !161
  %36 = load i32, i32* %j0, align 4, !dbg !163
  %sub52 = sub nsw i32 52, %36, !dbg !164
  %int_cast_to_i643 = zext i32 %sub52 to i64, !dbg !165
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i643), !dbg !165
  %shl = shl i32 1, %sub52, !dbg !165, !klee.check.shift !84
  %add53 = add nsw i32 %35, %shl, !dbg !166
  store i32 %add53, i32* %j, align 4, !dbg !167
  %37 = load i32, i32* %j, align 4, !dbg !168
  %38 = load i32, i32* %i1, align 4, !dbg !170
  %cmp54 = icmp ult i32 %37, %38, !dbg !171
  br i1 %cmp54, label %if.then55, label %if.end57, !dbg !172

if.then55:                                        ; preds = %if.else51
  %39 = load i32, i32* %i0, align 4, !dbg !173
  %add56 = add nsw i32 %39, 1, !dbg !173
  store i32 %add56, i32* %i0, align 4, !dbg !173
  br label %if.end57, !dbg !174

if.end57:                                         ; preds = %if.then55, %if.else51
  %40 = load i32, i32* %j, align 4, !dbg !175
  store i32 %40, i32* %i1, align 4, !dbg !176
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then49
  br label %if.end59, !dbg !177

if.end59:                                         ; preds = %if.end58, %if.then45
  %41 = load i32, i32* %i, align 4, !dbg !178
  %neg60 = xor i32 %41, -1, !dbg !179
  %42 = load i32, i32* %i1, align 4, !dbg !180
  %and61 = and i32 %42, %neg60, !dbg !180
  store i32 %and61, i32* %i1, align 4, !dbg !180
  br label %if.end62, !dbg !181

if.end62:                                         ; preds = %if.end59, %if.end42
  br label %if.end63

if.end63:                                         ; preds = %if.end62
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end28
  %43 = load i32, i32* %i0, align 4, !dbg !182
  %44 = bitcast double* %x.addr to i32*, !dbg !183
  store i32 %43, i32* %44, align 8, !dbg !184
  %45 = load i32, i32* %i1, align 4, !dbg !185
  %46 = bitcast double* %x.addr to i32*, !dbg !186
  %add.ptr65 = getelementptr inbounds i32, i32* %46, i64 1, !dbg !186
  store i32 %45, i32* %add.ptr65, align 4, !dbg !187
  %47 = load double, double* %x.addr, align 8, !dbg !188
  store double %47, double* %retval, align 8, !dbg !189
  br label %return, !dbg !189

return:                                           ; preds = %if.end64, %if.then41, %if.else35, %if.then33, %if.then16
  %48 = load double, double* %retval, align 8, !dbg !190
  ret double %48, !dbg !190
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #2 !dbg !191 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !194, metadata !DIExpression()), !dbg !195
  %0 = bitcast double* %a0 to i8*, !dbg !196
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !197
  call void @llvm.dbg.declare(metadata double* %r, metadata !198, metadata !DIExpression()), !dbg !199
  %1 = load double, double* %a0, align 8, !dbg !200
  %2 = call double @ceil(double %1), !dbg !201
  store double %2, double* %r, align 8, !dbg !199
  ret i32 0, !dbg !202
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_overshift_check(i64 %bitWidth, i64 %shift) #4 !dbg !203 {
entry:
  %bitWidth.addr = alloca i64, align 8
  %shift.addr = alloca i64, align 8
  store i64 %bitWidth, i64* %bitWidth.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %bitWidth.addr, metadata !208, metadata !DIExpression()), !dbg !209
  store i64 %shift, i64* %shift.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %shift.addr, metadata !210, metadata !DIExpression()), !dbg !211
  %0 = load i64, i64* %shift.addr, align 8, !dbg !212
  %1 = load i64, i64* %bitWidth.addr, align 8, !dbg !214
  %cmp = icmp uge i64 %0, %1, !dbg !215
  br i1 %cmp, label %if.then, label %if.end, !dbg !216

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !217
  unreachable, !dbg !217

if.end:                                           ; preds = %entry
  ret void, !dbg !219
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
!1 = !DIFile(filename: "s_ceil.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "huge", scope: !0, file: !10, line: 26, type: !11, isLocal: true, isDefinition: true)
!10 = !DIFile(filename: "./s_ceil.c", directory: "/home/klee/logic_bombs/fdlibm")
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
!21 = distinct !DISubprogram(name: "ceil", scope: !10, file: !10, line: 32, type: !22, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!22 = !DISubroutineType(types: !23)
!23 = !{!12, !12}
!24 = !DILocalVariable(name: "x", arg: 1, scope: !21, file: !10, line: 32, type: !12)
!25 = !DILocation(line: 32, column: 21, scope: !21)
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
!65 = !DILocation(line: 46, column: 19, scope: !66)
!66 = distinct !DILexicalBlock(scope: !61, file: !10, line: 46, column: 16)
!67 = !DILocation(line: 46, column: 33, scope: !66)
!68 = !DILocation(line: 46, column: 36, scope: !66)
!69 = !DILocation(line: 47, column: 16, scope: !70)
!70 = distinct !DILexicalBlock(scope: !61, file: !10, line: 47, column: 15)
!71 = !DILocation(line: 47, column: 19, scope: !70)
!72 = !DILocation(line: 47, column: 18, scope: !70)
!73 = !DILocation(line: 47, column: 22, scope: !70)
!74 = !DILocation(line: 47, column: 15, scope: !61)
!75 = !DILocation(line: 47, column: 31, scope: !76)
!76 = distinct !DILexicalBlock(scope: !70, file: !10, line: 47, column: 27)
!77 = !DILocation(line: 47, column: 45, scope: !76)
!78 = !DILocation(line: 47, column: 48, scope: !76)
!79 = !DILocation(line: 48, column: 3, scope: !62)
!80 = !DILocation(line: 49, column: 6, scope: !56)
!81 = !DILocation(line: 50, column: 21, scope: !82)
!82 = distinct !DILexicalBlock(scope: !50, file: !10, line: 49, column: 13)
!83 = !DILocation(line: 50, column: 19, scope: !82)
!84 = !{!"True"}
!85 = !DILocation(line: 50, column: 5, scope: !82)
!86 = !DILocation(line: 51, column: 8, scope: !87)
!87 = distinct !DILexicalBlock(scope: !82, file: !10, line: 51, column: 6)
!88 = !DILocation(line: 51, column: 11, scope: !87)
!89 = !DILocation(line: 51, column: 10, scope: !87)
!90 = !DILocation(line: 51, column: 14, scope: !87)
!91 = !DILocation(line: 51, column: 13, scope: !87)
!92 = !DILocation(line: 51, column: 17, scope: !87)
!93 = !DILocation(line: 51, column: 6, scope: !82)
!94 = !DILocation(line: 51, column: 29, scope: !87)
!95 = !DILocation(line: 51, column: 22, scope: !87)
!96 = !DILocation(line: 52, column: 11, scope: !97)
!97 = distinct !DILexicalBlock(scope: !82, file: !10, line: 52, column: 6)
!98 = !DILocation(line: 52, column: 10, scope: !97)
!99 = !DILocation(line: 52, column: 12, scope: !97)
!100 = !DILocation(line: 52, column: 6, scope: !82)
!101 = !DILocation(line: 53, column: 10, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !10, line: 53, column: 10)
!103 = distinct !DILexicalBlock(scope: !97, file: !10, line: 52, column: 18)
!104 = !DILocation(line: 53, column: 12, scope: !102)
!105 = !DILocation(line: 53, column: 10, scope: !103)
!106 = !DILocation(line: 53, column: 36, scope: !102)
!107 = !DILocation(line: 53, column: 34, scope: !102)
!108 = !DILocation(line: 53, column: 19, scope: !102)
!109 = !DILocation(line: 53, column: 16, scope: !102)
!110 = !DILocation(line: 54, column: 15, scope: !103)
!111 = !DILocation(line: 54, column: 14, scope: !103)
!112 = !DILocation(line: 54, column: 10, scope: !103)
!113 = !DILocation(line: 54, column: 21, scope: !103)
!114 = !DILocation(line: 55, column: 3, scope: !103)
!115 = !DILocation(line: 57, column: 2, scope: !51)
!116 = !DILocation(line: 57, column: 13, scope: !117)
!117 = distinct !DILexicalBlock(scope: !46, file: !10, line: 57, column: 13)
!118 = !DILocation(line: 57, column: 15, scope: !117)
!119 = !DILocation(line: 57, column: 13, scope: !46)
!120 = !DILocation(line: 58, column: 9, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !10, line: 58, column: 9)
!122 = distinct !DILexicalBlock(scope: !117, file: !10, line: 57, column: 20)
!123 = !DILocation(line: 58, column: 11, scope: !121)
!124 = !DILocation(line: 58, column: 9, scope: !122)
!125 = !DILocation(line: 58, column: 27, scope: !121)
!126 = !DILocation(line: 58, column: 29, scope: !121)
!127 = !DILocation(line: 58, column: 28, scope: !121)
!128 = !DILocation(line: 58, column: 20, scope: !121)
!129 = !DILocation(line: 59, column: 18, scope: !121)
!130 = !DILocation(line: 59, column: 11, scope: !121)
!131 = !DILocation(line: 61, column: 37, scope: !132)
!132 = distinct !DILexicalBlock(scope: !117, file: !10, line: 60, column: 9)
!133 = !DILocation(line: 61, column: 39, scope: !132)
!134 = !DILocation(line: 61, column: 34, scope: !132)
!135 = !DILocation(line: 61, column: 8, scope: !132)
!136 = !DILocation(line: 62, column: 10, scope: !137)
!137 = distinct !DILexicalBlock(scope: !132, file: !10, line: 62, column: 9)
!138 = !DILocation(line: 62, column: 13, scope: !137)
!139 = !DILocation(line: 62, column: 12, scope: !137)
!140 = !DILocation(line: 62, column: 15, scope: !137)
!141 = !DILocation(line: 62, column: 9, scope: !132)
!142 = !DILocation(line: 62, column: 27, scope: !137)
!143 = !DILocation(line: 62, column: 20, scope: !137)
!144 = !DILocation(line: 63, column: 14, scope: !145)
!145 = distinct !DILexicalBlock(scope: !132, file: !10, line: 63, column: 9)
!146 = !DILocation(line: 63, column: 13, scope: !145)
!147 = !DILocation(line: 63, column: 15, scope: !145)
!148 = !DILocation(line: 63, column: 9, scope: !132)
!149 = !DILocation(line: 64, column: 6, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !10, line: 64, column: 6)
!151 = distinct !DILexicalBlock(scope: !145, file: !10, line: 63, column: 21)
!152 = !DILocation(line: 64, column: 8, scope: !150)
!153 = !DILocation(line: 64, column: 6, scope: !151)
!154 = !DILocation(line: 65, column: 10, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !10, line: 65, column: 10)
!156 = distinct !DILexicalBlock(scope: !150, file: !10, line: 64, column: 12)
!157 = !DILocation(line: 65, column: 12, scope: !155)
!158 = !DILocation(line: 65, column: 10, scope: !156)
!159 = !DILocation(line: 65, column: 20, scope: !155)
!160 = !DILocation(line: 65, column: 18, scope: !155)
!161 = !DILocation(line: 67, column: 8, scope: !162)
!162 = distinct !DILexicalBlock(scope: !155, file: !10, line: 66, column: 12)
!163 = !DILocation(line: 67, column: 21, scope: !162)
!164 = !DILocation(line: 67, column: 20, scope: !162)
!165 = !DILocation(line: 67, column: 15, scope: !162)
!166 = !DILocation(line: 67, column: 11, scope: !162)
!167 = !DILocation(line: 67, column: 6, scope: !162)
!168 = !DILocation(line: 68, column: 7, scope: !169)
!169 = distinct !DILexicalBlock(scope: !162, file: !10, line: 68, column: 7)
!170 = !DILocation(line: 68, column: 9, scope: !169)
!171 = !DILocation(line: 68, column: 8, scope: !169)
!172 = !DILocation(line: 68, column: 7, scope: !162)
!173 = !DILocation(line: 68, column: 15, scope: !169)
!174 = !DILocation(line: 68, column: 13, scope: !169)
!175 = !DILocation(line: 69, column: 9, scope: !162)
!176 = !DILocation(line: 69, column: 7, scope: !162)
!177 = !DILocation(line: 71, column: 3, scope: !156)
!178 = !DILocation(line: 72, column: 11, scope: !151)
!179 = !DILocation(line: 72, column: 10, scope: !151)
!180 = !DILocation(line: 72, column: 6, scope: !151)
!181 = !DILocation(line: 73, column: 6, scope: !151)
!182 = !DILocation(line: 75, column: 12, scope: !21)
!183 = !DILocation(line: 75, column: 2, scope: !21)
!184 = !DILocation(line: 75, column: 10, scope: !21)
!185 = !DILocation(line: 76, column: 12, scope: !21)
!186 = !DILocation(line: 76, column: 2, scope: !21)
!187 = !DILocation(line: 76, column: 10, scope: !21)
!188 = !DILocation(line: 77, column: 9, scope: !21)
!189 = !DILocation(line: 77, column: 2, scope: !21)
!190 = !DILocation(line: 78, column: 1, scope: !21)
!191 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 82, type: !192, scopeLine: 82, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!192 = !DISubroutineType(types: !193)
!193 = !{!5}
!194 = !DILocalVariable(name: "a0", scope: !191, file: !10, line: 83, type: !12)
!195 = !DILocation(line: 83, column: 12, scope: !191)
!196 = !DILocation(line: 84, column: 24, scope: !191)
!197 = !DILocation(line: 84, column: 5, scope: !191)
!198 = !DILocalVariable(name: "r", scope: !191, file: !10, line: 86, type: !12)
!199 = !DILocation(line: 86, column: 12, scope: !191)
!200 = !DILocation(line: 86, column: 21, scope: !191)
!201 = !DILocation(line: 86, column: 16, scope: !191)
!202 = !DILocation(line: 87, column: 5, scope: !191)
!203 = distinct !DISubprogram(name: "klee_overshift_check", scope: !204, file: !204, line: 20, type: !205, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !2)
!204 = !DIFile(filename: "klee_src/runtime/Intrinsic/klee_overshift_check.c", directory: "/tmp")
!205 = !DISubroutineType(types: !206)
!206 = !{null, !207, !207}
!207 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!208 = !DILocalVariable(name: "bitWidth", arg: 1, scope: !203, file: !204, line: 20, type: !207)
!209 = !DILocation(line: 20, column: 46, scope: !203)
!210 = !DILocalVariable(name: "shift", arg: 2, scope: !203, file: !204, line: 20, type: !207)
!211 = !DILocation(line: 20, column: 75, scope: !203)
!212 = !DILocation(line: 21, column: 7, scope: !213)
!213 = distinct !DILexicalBlock(scope: !203, file: !204, line: 21, column: 7)
!214 = !DILocation(line: 21, column: 16, scope: !213)
!215 = !DILocation(line: 21, column: 13, scope: !213)
!216 = !DILocation(line: 21, column: 7, scope: !203)
!217 = !DILocation(line: 27, column: 5, scope: !218)
!218 = distinct !DILexicalBlock(scope: !213, file: !204, line: 21, column: 26)
!219 = !DILocation(line: 29, column: 1, scope: !203)
