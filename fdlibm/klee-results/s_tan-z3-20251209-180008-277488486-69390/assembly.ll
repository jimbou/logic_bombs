; ModuleID = 's_tan.bc'
source_filename = "./s_tan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @tan(double %x) #0 !dbg !12 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %y = alloca [2 x double], align 16
  %z = alloca double, align 8
  %n = alloca i32, align 4
  %ix = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata [2 x double]* %y, metadata !19, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata double* %z, metadata !24, metadata !DIExpression()), !dbg !25
  store double 0.000000e+00, double* %z, align 8, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %n, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !28, metadata !DIExpression()), !dbg !29
  %0 = bitcast double* %x.addr to i32*, !dbg !30
  %1 = load i32, i32* %0, align 8, !dbg !30
  store i32 %1, i32* %ix, align 4, !dbg !31
  %2 = load i32, i32* %ix, align 4, !dbg !32
  %and = and i32 %2, 2147483647, !dbg !32
  store i32 %and, i32* %ix, align 4, !dbg !32
  %3 = load i32, i32* %ix, align 4, !dbg !33
  %cmp = icmp sle i32 %3, 1072243195, !dbg !35
  br i1 %cmp, label %if.then, label %if.else, !dbg !36

if.then:                                          ; preds = %entry
  %4 = load double, double* %x.addr, align 8, !dbg !37
  %5 = load double, double* %z, align 8, !dbg !38
  %call = call double @__kernel_tan(double %4, double %5, i32 1), !dbg !39
  store double %call, double* %retval, align 8, !dbg !40
  br label %return, !dbg !40

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %ix, align 4, !dbg !41
  %cmp1 = icmp sge i32 %6, 2146435072, !dbg !43
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !44

if.then2:                                         ; preds = %if.else
  %7 = load double, double* %x.addr, align 8, !dbg !45
  %8 = load double, double* %x.addr, align 8, !dbg !46
  %sub = fsub double %7, %8, !dbg !47
  store double %sub, double* %retval, align 8, !dbg !48
  br label %return, !dbg !48

if.else3:                                         ; preds = %if.else
  %9 = load double, double* %x.addr, align 8, !dbg !49
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %y, i64 0, i64 0, !dbg !51
  %call4 = call i32 @__ieee754_rem_pio2(double %9, double* %arraydecay), !dbg !52
  store i32 %call4, i32* %n, align 4, !dbg !53
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %y, i64 0, i64 0, !dbg !54
  %10 = load double, double* %arrayidx, align 16, !dbg !54
  %arrayidx5 = getelementptr inbounds [2 x double], [2 x double]* %y, i64 0, i64 1, !dbg !55
  %11 = load double, double* %arrayidx5, align 8, !dbg !55
  %12 = load i32, i32* %n, align 4, !dbg !56
  %and6 = and i32 %12, 1, !dbg !57
  %shl = shl i32 %and6, 1, !dbg !58
  %sub7 = sub nsw i32 1, %shl, !dbg !59
  %call8 = call double @__kernel_tan(double %10, double %11, i32 %sub7), !dbg !60
  store double %call8, double* %retval, align 8, !dbg !61
  br label %return, !dbg !61

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %13 = load double, double* %retval, align 8, !dbg !62
  ret double %13, !dbg !62
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local double @__kernel_tan(double, double, i32) #2

declare dso_local i32 @__ieee754_rem_pio2(double, double*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !63 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !66, metadata !DIExpression()), !dbg !67
  %0 = bitcast double* %a0 to i8*, !dbg !68
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !69
  call void @llvm.dbg.declare(metadata double* %r, metadata !70, metadata !DIExpression()), !dbg !71
  %1 = load double, double* %a0, align 8, !dbg !72
  %call = call double @tan(double %1) #3, !dbg !73
  store double %call, double* %r, align 8, !dbg !71
  ret i32 0, !dbg !74
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "s_tan.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!12 = distinct !DISubprogram(name: "tan", scope: !13, file: !13, line: 47, type: !14, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!13 = !DIFile(filename: "./s_tan.c", directory: "/home/klee/logic_bombs/fdlibm")
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !16}
!16 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!17 = !DILocalVariable(name: "x", arg: 1, scope: !12, file: !13, line: 47, type: !16)
!18 = !DILocation(line: 47, column: 20, scope: !12)
!19 = !DILocalVariable(name: "y", scope: !12, file: !13, line: 53, type: !20)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 128, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 2)
!23 = !DILocation(line: 53, column: 9, scope: !12)
!24 = !DILocalVariable(name: "z", scope: !12, file: !13, line: 53, type: !16)
!25 = !DILocation(line: 53, column: 14, scope: !12)
!26 = !DILocalVariable(name: "n", scope: !12, file: !13, line: 54, type: !5)
!27 = !DILocation(line: 54, column: 6, scope: !12)
!28 = !DILocalVariable(name: "ix", scope: !12, file: !13, line: 54, type: !5)
!29 = !DILocation(line: 54, column: 9, scope: !12)
!30 = !DILocation(line: 57, column: 7, scope: !12)
!31 = !DILocation(line: 57, column: 5, scope: !12)
!32 = !DILocation(line: 60, column: 5, scope: !12)
!33 = !DILocation(line: 61, column: 5, scope: !34)
!34 = distinct !DILexicalBlock(scope: !12, file: !13, line: 61, column: 5)
!35 = !DILocation(line: 61, column: 8, scope: !34)
!36 = !DILocation(line: 61, column: 5, scope: !12)
!37 = !DILocation(line: 61, column: 43, scope: !34)
!38 = !DILocation(line: 61, column: 45, scope: !34)
!39 = !DILocation(line: 61, column: 30, scope: !34)
!40 = !DILocation(line: 61, column: 23, scope: !34)
!41 = !DILocation(line: 64, column: 11, scope: !42)
!42 = distinct !DILexicalBlock(scope: !34, file: !13, line: 64, column: 11)
!43 = !DILocation(line: 64, column: 13, scope: !42)
!44 = !DILocation(line: 64, column: 11, scope: !34)
!45 = !DILocation(line: 64, column: 34, scope: !42)
!46 = !DILocation(line: 64, column: 36, scope: !42)
!47 = !DILocation(line: 64, column: 35, scope: !42)
!48 = !DILocation(line: 64, column: 27, scope: !42)
!49 = !DILocation(line: 68, column: 29, scope: !50)
!50 = distinct !DILexicalBlock(scope: !42, file: !13, line: 67, column: 7)
!51 = !DILocation(line: 68, column: 31, scope: !50)
!52 = !DILocation(line: 68, column: 10, scope: !50)
!53 = !DILocation(line: 68, column: 8, scope: !50)
!54 = !DILocation(line: 69, column: 26, scope: !50)
!55 = !DILocation(line: 69, column: 31, scope: !50)
!56 = !DILocation(line: 69, column: 40, scope: !50)
!57 = !DILocation(line: 69, column: 41, scope: !50)
!58 = !DILocation(line: 69, column: 44, scope: !50)
!59 = !DILocation(line: 69, column: 37, scope: !50)
!60 = !DILocation(line: 69, column: 13, scope: !50)
!61 = !DILocation(line: 69, column: 6, scope: !50)
!62 = !DILocation(line: 72, column: 1, scope: !12)
!63 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 76, type: !64, scopeLine: 76, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!64 = !DISubroutineType(types: !65)
!65 = !{!5}
!66 = !DILocalVariable(name: "a0", scope: !63, file: !13, line: 77, type: !16)
!67 = !DILocation(line: 77, column: 12, scope: !63)
!68 = !DILocation(line: 78, column: 24, scope: !63)
!69 = !DILocation(line: 78, column: 5, scope: !63)
!70 = !DILocalVariable(name: "r", scope: !63, file: !13, line: 80, type: !16)
!71 = !DILocation(line: 80, column: 12, scope: !63)
!72 = !DILocation(line: 80, column: 20, scope: !63)
!73 = !DILocation(line: 80, column: 16, scope: !63)
!74 = !DILocation(line: 81, column: 5, scope: !63)
