; ModuleID = 's_finite.bc'
source_filename = "./s_finite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone readnone uwtable willreturn
define dso_local i32 @finite(double %x) #0 !dbg !13 {
entry:
  %x.addr = alloca double, align 8
  %hx = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !20, metadata !DIExpression()), !dbg !21
  %0 = bitcast double* %x.addr to i32*, !dbg !22
  %1 = load i32, i32* %0, align 8, !dbg !22
  store i32 %1, i32* %hx, align 4, !dbg !23
  %2 = load i32, i32* %hx, align 4, !dbg !24
  %and = and i32 %2, 2147483647, !dbg !25
  %sub = sub nsw i32 %and, 2146435072, !dbg !26
  %shr = lshr i32 %sub, 31, !dbg !27
  ret i32 %shr, !dbg !28
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #2 !dbg !29 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !32, metadata !DIExpression()), !dbg !33
  %0 = bitcast double* %a0 to i8*, !dbg !34
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %r, metadata !36, metadata !DIExpression()), !dbg !37
  %1 = load double, double* %a0, align 8, !dbg !38
  %2 = call double @llvm.fabs.f64(double %1) #4, !dbg !39
  %cmpinf = fcmp one double %2, 0x7FF0000000000000, !dbg !39
  %3 = zext i1 %cmpinf to i32, !dbg !39
  store i32 %3, i32* %r, align 4, !dbg !37
  ret i32 0, !dbg !40
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

attributes #0 = { noinline nounwind optnone readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "s_finite.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!13 = distinct !DISubprogram(name: "finite", scope: !14, file: !14, line: 22, type: !15, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!14 = !DIFile(filename: "./s_finite.c", directory: "/home/klee/logic_bombs/fdlibm")
!15 = !DISubroutineType(types: !16)
!16 = !{!5, !17}
!17 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!18 = !DILocalVariable(name: "x", arg: 1, scope: !13, file: !14, line: 22, type: !17)
!19 = !DILocation(line: 22, column: 20, scope: !13)
!20 = !DILocalVariable(name: "hx", scope: !13, file: !14, line: 28, type: !5)
!21 = !DILocation(line: 28, column: 6, scope: !13)
!22 = !DILocation(line: 29, column: 7, scope: !13)
!23 = !DILocation(line: 29, column: 5, scope: !13)
!24 = !DILocation(line: 30, column: 22, scope: !13)
!25 = !DILocation(line: 30, column: 24, scope: !13)
!26 = !DILocation(line: 30, column: 36, scope: !13)
!27 = !DILocation(line: 30, column: 48, scope: !13)
!28 = !DILocation(line: 30, column: 2, scope: !13)
!29 = distinct !DISubprogram(name: "main", scope: !14, file: !14, line: 35, type: !30, scopeLine: 35, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!30 = !DISubroutineType(types: !31)
!31 = !{!5}
!32 = !DILocalVariable(name: "a0", scope: !29, file: !14, line: 36, type: !17)
!33 = !DILocation(line: 36, column: 12, scope: !29)
!34 = !DILocation(line: 37, column: 24, scope: !29)
!35 = !DILocation(line: 37, column: 5, scope: !29)
!36 = !DILocalVariable(name: "r", scope: !29, file: !14, line: 39, type: !5)
!37 = !DILocation(line: 39, column: 9, scope: !29)
!38 = !DILocation(line: 39, column: 20, scope: !29)
!39 = !DILocation(line: 39, column: 13, scope: !29)
!40 = !DILocation(line: 40, column: 5, scope: !29)
