; ModuleID = 's_fabs.bc'
source_filename = "./s_fabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone readnone uwtable willreturn
define dso_local double @fabs(double %x) #0 !dbg !12 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !17, metadata !DIExpression()), !dbg !18
  %0 = bitcast double* %x.addr to i32*, !dbg !19
  %1 = load i32, i32* %0, align 8, !dbg !20
  %and = and i32 %1, 2147483647, !dbg !20
  store i32 %and, i32* %0, align 8, !dbg !20
  %2 = load double, double* %x.addr, align 8, !dbg !21
  ret double %2, !dbg !22
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #2 !dbg !23 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !26, metadata !DIExpression()), !dbg !27
  %0 = bitcast double* %a0 to i8*, !dbg !28
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !29
  call void @llvm.dbg.declare(metadata double* %r, metadata !30, metadata !DIExpression()), !dbg !31
  %1 = load double, double* %a0, align 8, !dbg !32
  %2 = call double @llvm.fabs.f64(double %1), !dbg !33
  store double %2, double* %r, align 8, !dbg !31
  ret i32 0, !dbg !34
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

attributes #0 = { noinline nounwind optnone readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "s_fabs.c", directory: "/home/klee/logic_bombs/fdlibm")
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
!12 = distinct !DISubprogram(name: "fabs", scope: !13, file: !13, line: 21, type: !14, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!13 = !DIFile(filename: "./s_fabs.c", directory: "/home/klee/logic_bombs/fdlibm")
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !16}
!16 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!17 = !DILocalVariable(name: "x", arg: 1, scope: !12, file: !13, line: 21, type: !16)
!18 = !DILocation(line: 21, column: 21, scope: !12)
!19 = !DILocation(line: 27, column: 2, scope: !12)
!20 = !DILocation(line: 27, column: 10, scope: !12)
!21 = !DILocation(line: 28, column: 16, scope: !12)
!22 = !DILocation(line: 28, column: 9, scope: !12)
!23 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 33, type: !24, scopeLine: 33, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!24 = !DISubroutineType(types: !25)
!25 = !{!5}
!26 = !DILocalVariable(name: "a0", scope: !23, file: !13, line: 34, type: !16)
!27 = !DILocation(line: 34, column: 12, scope: !23)
!28 = !DILocation(line: 35, column: 24, scope: !23)
!29 = !DILocation(line: 35, column: 5, scope: !23)
!30 = !DILocalVariable(name: "r", scope: !23, file: !13, line: 37, type: !16)
!31 = !DILocation(line: 37, column: 12, scope: !23)
!32 = !DILocation(line: 37, column: 21, scope: !23)
!33 = !DILocation(line: 37, column: 16, scope: !23)
!34 = !DILocation(line: 38, column: 5, scope: !23)
