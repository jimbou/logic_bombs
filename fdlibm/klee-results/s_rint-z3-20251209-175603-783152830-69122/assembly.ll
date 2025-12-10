; ModuleID = 's_rint.bc'
source_filename = "./s_rint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TWO52 = internal constant [2 x double] [double 0x4330000000000000, double 0xC330000000000000], align 16, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1

; Function Attrs: noinline nounwind optnone readnone uwtable willreturn
define dso_local double @rint(double %x) #0 !dbg !24 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %i0 = alloca i32, align 4
  %j0 = alloca i32, align 4
  %sx = alloca i32, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %w = alloca double, align 8
  %t = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %i0, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %j0, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %sx, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %i, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata double* %w, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata double* %t, metadata !41, metadata !DIExpression()), !dbg !42
  %0 = bitcast double* %x.addr to i32*, !dbg !43
  %1 = load i32, i32* %0, align 8, !dbg !43
  store i32 %1, i32* %i0, align 4, !dbg !44
  %2 = load i32, i32* %i0, align 4, !dbg !45
  %shr = ashr i32 %2, 31, !dbg !46
  %and = and i32 %shr, 1, !dbg !47
  store i32 %and, i32* %sx, align 4, !dbg !48
  %3 = bitcast double* %x.addr to i32*, !dbg !49
  %add.ptr = getelementptr inbounds i32, i32* %3, i64 1, !dbg !49
  %4 = load i32, i32* %add.ptr, align 4, !dbg !49
  store i32 %4, i32* %i1, align 4, !dbg !50
  %5 = load i32, i32* %i0, align 4, !dbg !51
  %shr1 = ashr i32 %5, 20, !dbg !52
  %and2 = and i32 %shr1, 2047, !dbg !53
  %sub = sub nsw i32 %and2, 1023, !dbg !54
  store i32 %sub, i32* %j0, align 4, !dbg !55
  %6 = load i32, i32* %j0, align 4, !dbg !56
  %cmp = icmp slt i32 %6, 20, !dbg !58
  br i1 %cmp, label %if.then, label %if.else41, !dbg !59

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %j0, align 4, !dbg !60
  %cmp3 = icmp slt i32 %7, 0, !dbg !63
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !64

if.then4:                                         ; preds = %if.then
  %8 = load i32, i32* %i0, align 4, !dbg !65
  %and5 = and i32 %8, 2147483647, !dbg !68
  %9 = load i32, i32* %i1, align 4, !dbg !69
  %or = or i32 %and5, %9, !dbg !70
  %cmp6 = icmp eq i32 %or, 0, !dbg !71
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !72

if.then7:                                         ; preds = %if.then4
  %10 = load double, double* %x.addr, align 8, !dbg !73
  store double %10, double* %retval, align 8, !dbg !74
  br label %return, !dbg !74

if.end:                                           ; preds = %if.then4
  %11 = load i32, i32* %i0, align 4, !dbg !75
  %and8 = and i32 %11, 1048575, !dbg !76
  %12 = load i32, i32* %i1, align 4, !dbg !77
  %or9 = or i32 %12, %and8, !dbg !77
  store i32 %or9, i32* %i1, align 4, !dbg !77
  %13 = load i32, i32* %i0, align 4, !dbg !78
  %and10 = and i32 %13, -131072, !dbg !78
  store i32 %and10, i32* %i0, align 4, !dbg !78
  %14 = load i32, i32* %i1, align 4, !dbg !79
  %15 = load i32, i32* %i1, align 4, !dbg !80
  %sub11 = sub i32 0, %15, !dbg !81
  %or12 = or i32 %14, %sub11, !dbg !82
  %shr13 = lshr i32 %or12, 12, !dbg !83
  %and14 = and i32 %shr13, 524288, !dbg !84
  %16 = load i32, i32* %i0, align 4, !dbg !85
  %or15 = or i32 %16, %and14, !dbg !85
  store i32 %or15, i32* %i0, align 4, !dbg !85
  %17 = load i32, i32* %i0, align 4, !dbg !86
  %18 = bitcast double* %x.addr to i32*, !dbg !87
  store i32 %17, i32* %18, align 8, !dbg !88
  %19 = load i32, i32* %sx, align 4, !dbg !89
  %idxprom = sext i32 %19 to i64, !dbg !90
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* @TWO52, i64 0, i64 %idxprom, !dbg !90
  %20 = load double, double* %arrayidx, align 8, !dbg !90
  %21 = load double, double* %x.addr, align 8, !dbg !91
  %add = fadd double %20, %21, !dbg !92
  store double %add, double* %w, align 8, !dbg !93
  %22 = load double, double* %w, align 8, !dbg !94
  %23 = load i32, i32* %sx, align 4, !dbg !95
  %idxprom16 = sext i32 %23 to i64, !dbg !96
  %arrayidx17 = getelementptr inbounds [2 x double], [2 x double]* @TWO52, i64 0, i64 %idxprom16, !dbg !96
  %24 = load double, double* %arrayidx17, align 8, !dbg !96
  %sub18 = fsub double %22, %24, !dbg !97
  store double %sub18, double* %t, align 8, !dbg !98
  %25 = bitcast double* %t to i32*, !dbg !99
  %26 = load i32, i32* %25, align 8, !dbg !99
  store i32 %26, i32* %i0, align 4, !dbg !100
  %27 = load i32, i32* %i0, align 4, !dbg !101
  %and19 = and i32 %27, 2147483647, !dbg !102
  %28 = load i32, i32* %sx, align 4, !dbg !103
  %shl = shl i32 %28, 31, !dbg !104
  %or20 = or i32 %and19, %shl, !dbg !105
  %29 = bitcast double* %t to i32*, !dbg !106
  store i32 %or20, i32* %29, align 8, !dbg !107
  %30 = load double, double* %t, align 8, !dbg !108
  store double %30, double* %retval, align 8, !dbg !109
  br label %return, !dbg !109

if.else:                                          ; preds = %if.then
  %31 = load i32, i32* %j0, align 4, !dbg !110
  %int_cast_to_i64 = zext i32 %31 to i64, !dbg !112
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !112
  %shr21 = ashr i32 1048575, %31, !dbg !112, !klee.check.shift !113
  store i32 %shr21, i32* %i, align 4, !dbg !114
  %32 = load i32, i32* %i0, align 4, !dbg !115
  %33 = load i32, i32* %i, align 4, !dbg !117
  %and22 = and i32 %32, %33, !dbg !118
  %34 = load i32, i32* %i1, align 4, !dbg !119
  %or23 = or i32 %and22, %34, !dbg !120
  %cmp24 = icmp eq i32 %or23, 0, !dbg !121
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !122

if.then25:                                        ; preds = %if.else
  %35 = load double, double* %x.addr, align 8, !dbg !123
  store double %35, double* %retval, align 8, !dbg !124
  br label %return, !dbg !124

if.end26:                                         ; preds = %if.else
  %36 = load i32, i32* %i, align 4, !dbg !125
  %shr27 = lshr i32 %36, 1, !dbg !125
  store i32 %shr27, i32* %i, align 4, !dbg !125
  %37 = load i32, i32* %i0, align 4, !dbg !126
  %38 = load i32, i32* %i, align 4, !dbg !128
  %and28 = and i32 %37, %38, !dbg !129
  %39 = load i32, i32* %i1, align 4, !dbg !130
  %or29 = or i32 %and28, %39, !dbg !131
  %cmp30 = icmp ne i32 %or29, 0, !dbg !132
  br i1 %cmp30, label %if.then31, label %if.end39, !dbg !133

if.then31:                                        ; preds = %if.end26
  %40 = load i32, i32* %j0, align 4, !dbg !134
  %cmp32 = icmp eq i32 %40, 19, !dbg !137
  br i1 %cmp32, label %if.then33, label %if.else34, !dbg !138

if.then33:                                        ; preds = %if.then31
  store i32 1073741824, i32* %i1, align 4, !dbg !139
  br label %if.end38, !dbg !140

if.else34:                                        ; preds = %if.then31
  %41 = load i32, i32* %i0, align 4, !dbg !141
  %42 = load i32, i32* %i, align 4, !dbg !142
  %neg = xor i32 %42, -1, !dbg !143
  %and35 = and i32 %41, %neg, !dbg !144
  %43 = load i32, i32* %j0, align 4, !dbg !145
  %int_cast_to_i641 = zext i32 %43 to i64, !dbg !146
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !146
  %shr36 = ashr i32 131072, %43, !dbg !146, !klee.check.shift !113
  %or37 = or i32 %and35, %shr36, !dbg !147
  store i32 %or37, i32* %i0, align 4, !dbg !148
  br label %if.end38

if.end38:                                         ; preds = %if.else34, %if.then33
  br label %if.end39, !dbg !149

if.end39:                                         ; preds = %if.end38, %if.end26
  br label %if.end40

if.end40:                                         ; preds = %if.end39
  br label %if.end66, !dbg !150

if.else41:                                        ; preds = %entry
  %44 = load i32, i32* %j0, align 4, !dbg !151
  %cmp42 = icmp sgt i32 %44, 51, !dbg !153
  br i1 %cmp42, label %if.then43, label %if.else48, !dbg !154

if.then43:                                        ; preds = %if.else41
  %45 = load i32, i32* %j0, align 4, !dbg !155
  %cmp44 = icmp eq i32 %45, 1024, !dbg !158
  br i1 %cmp44, label %if.then45, label %if.else47, !dbg !159

if.then45:                                        ; preds = %if.then43
  %46 = load double, double* %x.addr, align 8, !dbg !160
  %47 = load double, double* %x.addr, align 8, !dbg !161
  %add46 = fadd double %46, %47, !dbg !162
  store double %add46, double* %retval, align 8, !dbg !163
  br label %return, !dbg !163

if.else47:                                        ; preds = %if.then43
  %48 = load double, double* %x.addr, align 8, !dbg !164
  store double %48, double* %retval, align 8, !dbg !165
  br label %return, !dbg !165

if.else48:                                        ; preds = %if.else41
  %49 = load i32, i32* %j0, align 4, !dbg !166
  %sub49 = sub nsw i32 %49, 20, !dbg !168
  %int_cast_to_i642 = zext i32 %sub49 to i64, !dbg !169
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i642), !dbg !169
  %shr50 = lshr i32 -1, %sub49, !dbg !169, !klee.check.shift !113
  store i32 %shr50, i32* %i, align 4, !dbg !170
  %50 = load i32, i32* %i1, align 4, !dbg !171
  %51 = load i32, i32* %i, align 4, !dbg !173
  %and51 = and i32 %50, %51, !dbg !174
  %cmp52 = icmp eq i32 %and51, 0, !dbg !175
  br i1 %cmp52, label %if.then53, label %if.end54, !dbg !176

if.then53:                                        ; preds = %if.else48
  %52 = load double, double* %x.addr, align 8, !dbg !177
  store double %52, double* %retval, align 8, !dbg !178
  br label %return, !dbg !178

if.end54:                                         ; preds = %if.else48
  %53 = load i32, i32* %i, align 4, !dbg !179
  %shr55 = lshr i32 %53, 1, !dbg !179
  store i32 %shr55, i32* %i, align 4, !dbg !179
  %54 = load i32, i32* %i1, align 4, !dbg !180
  %55 = load i32, i32* %i, align 4, !dbg !182
  %and56 = and i32 %54, %55, !dbg !183
  %cmp57 = icmp ne i32 %and56, 0, !dbg !184
  br i1 %cmp57, label %if.then58, label %if.end64, !dbg !185

if.then58:                                        ; preds = %if.end54
  %56 = load i32, i32* %i1, align 4, !dbg !186
  %57 = load i32, i32* %i, align 4, !dbg !187
  %neg59 = xor i32 %57, -1, !dbg !188
  %and60 = and i32 %56, %neg59, !dbg !189
  %58 = load i32, i32* %j0, align 4, !dbg !190
  %sub61 = sub nsw i32 %58, 20, !dbg !191
  %int_cast_to_i643 = zext i32 %sub61 to i64, !dbg !192
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i643), !dbg !192
  %shr62 = ashr i32 1073741824, %sub61, !dbg !192, !klee.check.shift !113
  %or63 = or i32 %and60, %shr62, !dbg !193
  store i32 %or63, i32* %i1, align 4, !dbg !194
  br label %if.end64, !dbg !195

if.end64:                                         ; preds = %if.then58, %if.end54
  br label %if.end65

if.end65:                                         ; preds = %if.end64
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end40
  %59 = load i32, i32* %i0, align 4, !dbg !196
  %60 = bitcast double* %x.addr to i32*, !dbg !197
  store i32 %59, i32* %60, align 8, !dbg !198
  %61 = load i32, i32* %i1, align 4, !dbg !199
  %62 = bitcast double* %x.addr to i32*, !dbg !200
  %add.ptr67 = getelementptr inbounds i32, i32* %62, i64 1, !dbg !200
  store i32 %61, i32* %add.ptr67, align 4, !dbg !201
  %63 = load i32, i32* %sx, align 4, !dbg !202
  %idxprom68 = sext i32 %63 to i64, !dbg !203
  %arrayidx69 = getelementptr inbounds [2 x double], [2 x double]* @TWO52, i64 0, i64 %idxprom68, !dbg !203
  %64 = load double, double* %arrayidx69, align 8, !dbg !203
  %65 = load double, double* %x.addr, align 8, !dbg !204
  %add70 = fadd double %64, %65, !dbg !205
  store double %add70, double* %w, align 8, !dbg !206
  %66 = load double, double* %w, align 8, !dbg !207
  %67 = load i32, i32* %sx, align 4, !dbg !208
  %idxprom71 = sext i32 %67 to i64, !dbg !209
  %arrayidx72 = getelementptr inbounds [2 x double], [2 x double]* @TWO52, i64 0, i64 %idxprom71, !dbg !209
  %68 = load double, double* %arrayidx72, align 8, !dbg !209
  %sub73 = fsub double %66, %68, !dbg !210
  store double %sub73, double* %retval, align 8, !dbg !211
  br label %return, !dbg !211

return:                                           ; preds = %if.end66, %if.then53, %if.else47, %if.then45, %if.then25, %if.end, %if.then7
  %69 = load double, double* %retval, align 8, !dbg !212
  ret double %69, !dbg !212
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #2 !dbg !213 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !216, metadata !DIExpression()), !dbg !217
  %0 = bitcast double* %a0 to i8*, !dbg !218
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !219
  call void @llvm.dbg.declare(metadata double* %r, metadata !220, metadata !DIExpression()), !dbg !221
  %1 = load double, double* %a0, align 8, !dbg !222
  %2 = call double @llvm.rint.f64(double %1), !dbg !223
  store double %2, double* %r, align 8, !dbg !221
  ret i32 0, !dbg !224
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.rint.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_overshift_check(i64 %bitWidth, i64 %shift) #4 !dbg !225 {
entry:
  %bitWidth.addr = alloca i64, align 8
  %shift.addr = alloca i64, align 8
  store i64 %bitWidth, i64* %bitWidth.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %bitWidth.addr, metadata !230, metadata !DIExpression()), !dbg !231
  store i64 %shift, i64* %shift.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %shift.addr, metadata !232, metadata !DIExpression()), !dbg !233
  %0 = load i64, i64* %shift.addr, align 8, !dbg !234
  %1 = load i64, i64* %bitWidth.addr, align 8, !dbg !236
  %cmp = icmp uge i64 %0, %1, !dbg !237
  br i1 %cmp, label %if.then, label %if.end, !dbg !238

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !239
  unreachable, !dbg !239

if.end:                                           ; preds = %entry
  ret void, !dbg !241
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

!llvm.dbg.cu = !{!2, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22}
!llvm.ident = !{!23, !23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "TWO52", scope: !2, file: !10, line: 31, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "s_rint.c", directory: "/home/klee/logic_bombs/fdlibm")
!4 = !{}
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !{!0}
!10 = !DIFile(filename: "./s_rint.c", directory: "/home/klee/logic_bombs/fdlibm")
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128, elements: !14)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !{!15}
!15 = !DISubrange(count: 2)
!16 = distinct !DICompileUnit(language: DW_LANG_C89, file: !17, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "/tmp/klee_src/runtime/Intrinsic/klee_overshift_check.c", directory: "/tmp/klee_build130stp_z3/runtime/Intrinsic")
!18 = !{i32 7, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!24 = distinct !DISubprogram(name: "rint", scope: !10, file: !10, line: 37, type: !25, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!25 = !DISubroutineType(types: !26)
!26 = !{!13, !13}
!27 = !DILocalVariable(name: "x", arg: 1, scope: !24, file: !10, line: 37, type: !13)
!28 = !DILocation(line: 37, column: 21, scope: !24)
!29 = !DILocalVariable(name: "i0", scope: !24, file: !10, line: 43, type: !7)
!30 = !DILocation(line: 43, column: 6, scope: !24)
!31 = !DILocalVariable(name: "j0", scope: !24, file: !10, line: 43, type: !7)
!32 = !DILocation(line: 43, column: 9, scope: !24)
!33 = !DILocalVariable(name: "sx", scope: !24, file: !10, line: 43, type: !7)
!34 = !DILocation(line: 43, column: 12, scope: !24)
!35 = !DILocalVariable(name: "i", scope: !24, file: !10, line: 44, type: !8)
!36 = !DILocation(line: 44, column: 11, scope: !24)
!37 = !DILocalVariable(name: "i1", scope: !24, file: !10, line: 44, type: !8)
!38 = !DILocation(line: 44, column: 13, scope: !24)
!39 = !DILocalVariable(name: "w", scope: !24, file: !10, line: 45, type: !13)
!40 = !DILocation(line: 45, column: 9, scope: !24)
!41 = !DILocalVariable(name: "t", scope: !24, file: !10, line: 45, type: !13)
!42 = !DILocation(line: 45, column: 11, scope: !24)
!43 = !DILocation(line: 46, column: 8, scope: !24)
!44 = !DILocation(line: 46, column: 5, scope: !24)
!45 = !DILocation(line: 47, column: 8, scope: !24)
!46 = !DILocation(line: 47, column: 10, scope: !24)
!47 = !DILocation(line: 47, column: 15, scope: !24)
!48 = !DILocation(line: 47, column: 5, scope: !24)
!49 = !DILocation(line: 48, column: 8, scope: !24)
!50 = !DILocation(line: 48, column: 5, scope: !24)
!51 = !DILocation(line: 49, column: 9, scope: !24)
!52 = !DILocation(line: 49, column: 11, scope: !24)
!53 = !DILocation(line: 49, column: 16, scope: !24)
!54 = !DILocation(line: 49, column: 23, scope: !24)
!55 = !DILocation(line: 49, column: 5, scope: !24)
!56 = !DILocation(line: 50, column: 5, scope: !57)
!57 = distinct !DILexicalBlock(scope: !24, file: !10, line: 50, column: 5)
!58 = !DILocation(line: 50, column: 7, scope: !57)
!59 = !DILocation(line: 50, column: 5, scope: !24)
!60 = !DILocation(line: 51, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !62, file: !10, line: 51, column: 9)
!62 = distinct !DILexicalBlock(scope: !57, file: !10, line: 50, column: 12)
!63 = !DILocation(line: 51, column: 11, scope: !61)
!64 = !DILocation(line: 51, column: 9, scope: !62)
!65 = !DILocation(line: 52, column: 8, scope: !66)
!66 = distinct !DILexicalBlock(scope: !67, file: !10, line: 52, column: 6)
!67 = distinct !DILexicalBlock(scope: !61, file: !10, line: 51, column: 15)
!68 = !DILocation(line: 52, column: 10, scope: !66)
!69 = !DILocation(line: 52, column: 23, scope: !66)
!70 = !DILocation(line: 52, column: 22, scope: !66)
!71 = !DILocation(line: 52, column: 26, scope: !66)
!72 = !DILocation(line: 52, column: 6, scope: !67)
!73 = !DILocation(line: 52, column: 38, scope: !66)
!74 = !DILocation(line: 52, column: 31, scope: !66)
!75 = !DILocation(line: 53, column: 10, scope: !67)
!76 = !DILocation(line: 53, column: 12, scope: !67)
!77 = !DILocation(line: 53, column: 6, scope: !67)
!78 = !DILocation(line: 54, column: 6, scope: !67)
!79 = !DILocation(line: 55, column: 11, scope: !67)
!80 = !DILocation(line: 55, column: 15, scope: !67)
!81 = !DILocation(line: 55, column: 14, scope: !67)
!82 = !DILocation(line: 55, column: 13, scope: !67)
!83 = !DILocation(line: 55, column: 18, scope: !67)
!84 = !DILocation(line: 55, column: 23, scope: !67)
!85 = !DILocation(line: 55, column: 6, scope: !67)
!86 = !DILocation(line: 56, column: 11, scope: !67)
!87 = !DILocation(line: 56, column: 3, scope: !67)
!88 = !DILocation(line: 56, column: 10, scope: !67)
!89 = !DILocation(line: 57, column: 20, scope: !67)
!90 = !DILocation(line: 57, column: 14, scope: !67)
!91 = !DILocation(line: 57, column: 24, scope: !67)
!92 = !DILocation(line: 57, column: 23, scope: !67)
!93 = !DILocation(line: 57, column: 12, scope: !67)
!94 = !DILocation(line: 58, column: 15, scope: !67)
!95 = !DILocation(line: 58, column: 23, scope: !67)
!96 = !DILocation(line: 58, column: 17, scope: !67)
!97 = !DILocation(line: 58, column: 16, scope: !67)
!98 = !DILocation(line: 58, column: 12, scope: !67)
!99 = !DILocation(line: 59, column: 15, scope: !67)
!100 = !DILocation(line: 59, column: 13, scope: !67)
!101 = !DILocation(line: 60, column: 21, scope: !67)
!102 = !DILocation(line: 60, column: 23, scope: !67)
!103 = !DILocation(line: 60, column: 37, scope: !67)
!104 = !DILocation(line: 60, column: 39, scope: !67)
!105 = !DILocation(line: 60, column: 35, scope: !67)
!106 = !DILocation(line: 60, column: 10, scope: !67)
!107 = !DILocation(line: 60, column: 18, scope: !67)
!108 = !DILocation(line: 61, column: 17, scope: !67)
!109 = !DILocation(line: 61, column: 10, scope: !67)
!110 = !DILocation(line: 63, column: 21, scope: !111)
!111 = distinct !DILexicalBlock(scope: !61, file: !10, line: 62, column: 13)
!112 = !DILocation(line: 63, column: 19, scope: !111)
!113 = !{!"True"}
!114 = !DILocation(line: 63, column: 5, scope: !111)
!115 = !DILocation(line: 64, column: 8, scope: !116)
!116 = distinct !DILexicalBlock(scope: !111, file: !10, line: 64, column: 6)
!117 = !DILocation(line: 64, column: 11, scope: !116)
!118 = !DILocation(line: 64, column: 10, scope: !116)
!119 = !DILocation(line: 64, column: 14, scope: !116)
!120 = !DILocation(line: 64, column: 13, scope: !116)
!121 = !DILocation(line: 64, column: 17, scope: !116)
!122 = !DILocation(line: 64, column: 6, scope: !111)
!123 = !DILocation(line: 64, column: 29, scope: !116)
!124 = !DILocation(line: 64, column: 22, scope: !116)
!125 = !DILocation(line: 65, column: 4, scope: !111)
!126 = !DILocation(line: 66, column: 8, scope: !127)
!127 = distinct !DILexicalBlock(scope: !111, file: !10, line: 66, column: 6)
!128 = !DILocation(line: 66, column: 11, scope: !127)
!129 = !DILocation(line: 66, column: 10, scope: !127)
!130 = !DILocation(line: 66, column: 14, scope: !127)
!131 = !DILocation(line: 66, column: 13, scope: !127)
!132 = !DILocation(line: 66, column: 17, scope: !127)
!133 = !DILocation(line: 66, column: 6, scope: !111)
!134 = !DILocation(line: 67, column: 10, scope: !135)
!135 = distinct !DILexicalBlock(scope: !136, file: !10, line: 67, column: 10)
!136 = distinct !DILexicalBlock(scope: !127, file: !10, line: 66, column: 22)
!137 = !DILocation(line: 67, column: 12, scope: !135)
!138 = !DILocation(line: 67, column: 10, scope: !136)
!139 = !DILocation(line: 67, column: 21, scope: !135)
!140 = !DILocation(line: 67, column: 18, scope: !135)
!141 = !DILocation(line: 68, column: 13, scope: !135)
!142 = !DILocation(line: 68, column: 18, scope: !135)
!143 = !DILocation(line: 68, column: 17, scope: !135)
!144 = !DILocation(line: 68, column: 15, scope: !135)
!145 = !DILocation(line: 68, column: 34, scope: !135)
!146 = !DILocation(line: 68, column: 32, scope: !135)
!147 = !DILocation(line: 68, column: 21, scope: !135)
!148 = !DILocation(line: 68, column: 10, scope: !135)
!149 = !DILocation(line: 69, column: 3, scope: !136)
!150 = !DILocation(line: 71, column: 2, scope: !62)
!151 = !DILocation(line: 71, column: 13, scope: !152)
!152 = distinct !DILexicalBlock(scope: !57, file: !10, line: 71, column: 13)
!153 = !DILocation(line: 71, column: 15, scope: !152)
!154 = !DILocation(line: 71, column: 13, scope: !57)
!155 = !DILocation(line: 72, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !10, line: 72, column: 9)
!157 = distinct !DILexicalBlock(scope: !152, file: !10, line: 71, column: 20)
!158 = !DILocation(line: 72, column: 11, scope: !156)
!159 = !DILocation(line: 72, column: 9, scope: !157)
!160 = !DILocation(line: 72, column: 27, scope: !156)
!161 = !DILocation(line: 72, column: 29, scope: !156)
!162 = !DILocation(line: 72, column: 28, scope: !156)
!163 = !DILocation(line: 72, column: 20, scope: !156)
!164 = !DILocation(line: 73, column: 18, scope: !156)
!165 = !DILocation(line: 73, column: 11, scope: !156)
!166 = !DILocation(line: 75, column: 37, scope: !167)
!167 = distinct !DILexicalBlock(scope: !152, file: !10, line: 74, column: 9)
!168 = !DILocation(line: 75, column: 39, scope: !167)
!169 = !DILocation(line: 75, column: 34, scope: !167)
!170 = !DILocation(line: 75, column: 8, scope: !167)
!171 = !DILocation(line: 76, column: 10, scope: !172)
!172 = distinct !DILexicalBlock(scope: !167, file: !10, line: 76, column: 9)
!173 = !DILocation(line: 76, column: 13, scope: !172)
!174 = !DILocation(line: 76, column: 12, scope: !172)
!175 = !DILocation(line: 76, column: 15, scope: !172)
!176 = !DILocation(line: 76, column: 9, scope: !167)
!177 = !DILocation(line: 76, column: 27, scope: !172)
!178 = !DILocation(line: 76, column: 20, scope: !172)
!179 = !DILocation(line: 77, column: 7, scope: !167)
!180 = !DILocation(line: 78, column: 10, scope: !181)
!181 = distinct !DILexicalBlock(scope: !167, file: !10, line: 78, column: 9)
!182 = !DILocation(line: 78, column: 13, scope: !181)
!183 = !DILocation(line: 78, column: 12, scope: !181)
!184 = !DILocation(line: 78, column: 15, scope: !181)
!185 = !DILocation(line: 78, column: 9, scope: !167)
!186 = !DILocation(line: 78, column: 26, scope: !181)
!187 = !DILocation(line: 78, column: 31, scope: !181)
!188 = !DILocation(line: 78, column: 30, scope: !181)
!189 = !DILocation(line: 78, column: 28, scope: !181)
!190 = !DILocation(line: 78, column: 51, scope: !181)
!191 = !DILocation(line: 78, column: 53, scope: !181)
!192 = !DILocation(line: 78, column: 48, scope: !181)
!193 = !DILocation(line: 78, column: 34, scope: !181)
!194 = !DILocation(line: 78, column: 23, scope: !181)
!195 = !DILocation(line: 78, column: 20, scope: !181)
!196 = !DILocation(line: 80, column: 12, scope: !24)
!197 = !DILocation(line: 80, column: 2, scope: !24)
!198 = !DILocation(line: 80, column: 10, scope: !24)
!199 = !DILocation(line: 81, column: 12, scope: !24)
!200 = !DILocation(line: 81, column: 2, scope: !24)
!201 = !DILocation(line: 81, column: 10, scope: !24)
!202 = !DILocation(line: 82, column: 12, scope: !24)
!203 = !DILocation(line: 82, column: 6, scope: !24)
!204 = !DILocation(line: 82, column: 16, scope: !24)
!205 = !DILocation(line: 82, column: 15, scope: !24)
!206 = !DILocation(line: 82, column: 4, scope: !24)
!207 = !DILocation(line: 83, column: 9, scope: !24)
!208 = !DILocation(line: 83, column: 17, scope: !24)
!209 = !DILocation(line: 83, column: 11, scope: !24)
!210 = !DILocation(line: 83, column: 10, scope: !24)
!211 = !DILocation(line: 83, column: 2, scope: !24)
!212 = !DILocation(line: 84, column: 1, scope: !24)
!213 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 88, type: !214, scopeLine: 88, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!214 = !DISubroutineType(types: !215)
!215 = !{!7}
!216 = !DILocalVariable(name: "a0", scope: !213, file: !10, line: 89, type: !13)
!217 = !DILocation(line: 89, column: 12, scope: !213)
!218 = !DILocation(line: 90, column: 24, scope: !213)
!219 = !DILocation(line: 90, column: 5, scope: !213)
!220 = !DILocalVariable(name: "r", scope: !213, file: !10, line: 92, type: !13)
!221 = !DILocation(line: 92, column: 12, scope: !213)
!222 = !DILocation(line: 92, column: 21, scope: !213)
!223 = !DILocation(line: 92, column: 16, scope: !213)
!224 = !DILocation(line: 93, column: 5, scope: !213)
!225 = distinct !DISubprogram(name: "klee_overshift_check", scope: !226, file: !226, line: 20, type: !227, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!226 = !DIFile(filename: "klee_src/runtime/Intrinsic/klee_overshift_check.c", directory: "/tmp")
!227 = !DISubroutineType(types: !228)
!228 = !{null, !229, !229}
!229 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!230 = !DILocalVariable(name: "bitWidth", arg: 1, scope: !225, file: !226, line: 20, type: !229)
!231 = !DILocation(line: 20, column: 46, scope: !225)
!232 = !DILocalVariable(name: "shift", arg: 2, scope: !225, file: !226, line: 20, type: !229)
!233 = !DILocation(line: 20, column: 75, scope: !225)
!234 = !DILocation(line: 21, column: 7, scope: !235)
!235 = distinct !DILexicalBlock(scope: !225, file: !226, line: 21, column: 7)
!236 = !DILocation(line: 21, column: 16, scope: !235)
!237 = !DILocation(line: 21, column: 13, scope: !235)
!238 = !DILocation(line: 21, column: 7, scope: !225)
!239 = !DILocation(line: 27, column: 5, scope: !240)
!240 = distinct !DILexicalBlock(scope: !235, file: !226, line: 21, column: 26)
!241 = !DILocation(line: 29, column: 1, scope: !225)
