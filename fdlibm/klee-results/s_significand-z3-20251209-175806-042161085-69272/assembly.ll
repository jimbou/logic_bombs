; ModuleID = 's_significand.bc'
source_filename = "./s_significand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @significand(double %x) #0 !dbg !11 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !15, metadata !DIExpression()), !dbg !16
  %0 = load double, double* %x.addr, align 8, !dbg !17
  %1 = load double, double* %x.addr, align 8, !dbg !18
  %call = call i32 @ilogb(double %1) #4, !dbg !19
  %sub = sub nsw i32 0, %call, !dbg !20
  %conv = sitofp i32 %sub to double, !dbg !21
  %call1 = call double @__ieee754_scalb(double %0, double %conv), !dbg !22
  ret double %call1, !dbg !23
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local double @__ieee754_scalb(double, double) #2

; Function Attrs: nounwind
declare dso_local i32 @ilogb(double) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !24 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !28, metadata !DIExpression()), !dbg !29
  %0 = bitcast double* %a0 to i8*, !dbg !30
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !31
  call void @llvm.dbg.declare(metadata double* %r, metadata !32, metadata !DIExpression()), !dbg !33
  %1 = load double, double* %a0, align 8, !dbg !34
  %call = call double @significand(double %1), !dbg !35
  store double %call, double* %r, align 8, !dbg !33
  ret i32 0, !dbg !36
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "s_significand.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!11 = distinct !DISubprogram(name: "significand", scope: !12, file: !12, line: 23, type: !13, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!12 = !DIFile(filename: "./s_significand.c", directory: "/home/klee/logic_bombs/fdlibm")
!13 = !DISubroutineType(types: !14)
!14 = !{!4, !4}
!15 = !DILocalVariable(name: "x", arg: 1, scope: !11, file: !12, line: 23, type: !4)
!16 = !DILocation(line: 23, column: 28, scope: !11)
!17 = !DILocation(line: 29, column: 25, scope: !11)
!18 = !DILocation(line: 29, column: 43, scope: !11)
!19 = !DILocation(line: 29, column: 37, scope: !11)
!20 = !DILocation(line: 29, column: 36, scope: !11)
!21 = !DILocation(line: 29, column: 27, scope: !11)
!22 = !DILocation(line: 29, column: 9, scope: !11)
!23 = !DILocation(line: 29, column: 2, scope: !11)
!24 = distinct !DISubprogram(name: "main", scope: !12, file: !12, line: 34, type: !25, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!25 = !DISubroutineType(types: !26)
!26 = !{!27}
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DILocalVariable(name: "a0", scope: !24, file: !12, line: 35, type: !4)
!29 = !DILocation(line: 35, column: 12, scope: !24)
!30 = !DILocation(line: 36, column: 24, scope: !24)
!31 = !DILocation(line: 36, column: 5, scope: !24)
!32 = !DILocalVariable(name: "r", scope: !24, file: !12, line: 38, type: !4)
!33 = !DILocation(line: 38, column: 12, scope: !24)
!34 = !DILocation(line: 38, column: 28, scope: !24)
!35 = !DILocation(line: 38, column: 16, scope: !24)
!36 = !DILocation(line: 39, column: 5, scope: !24)
