; ModuleID = 'e_gamma_r.bc'
source_filename = "./e_gamma_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_gamma_r(double %x, i32* %signgamp) #0 !dbg !9 {
entry:
  %x.addr = alloca double, align 8
  %signgamp.addr = alloca i32*, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store i32* %signgamp, i32** %signgamp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %signgamp.addr, metadata !18, metadata !DIExpression()), !dbg !19
  %0 = load double, double* %x.addr, align 8, !dbg !20
  %1 = load i32*, i32** %signgamp.addr, align 8, !dbg !21
  %call = call double @__ieee754_lgamma_r(double %0, i32* %1), !dbg !22
  ret double %call, !dbg !23
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local double @__ieee754_lgamma_r(double, i32*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !24 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca i32, align 4
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !27, metadata !DIExpression()), !dbg !28
  %0 = bitcast double* %a0 to i8*, !dbg !29
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %a1, metadata !31, metadata !DIExpression()), !dbg !32
  %1 = bitcast i32* %a1 to i8*, !dbg !33
  call void @klee_make_symbolic(i8* %1, i64 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !34
  call void @llvm.dbg.declare(metadata double* %r, metadata !35, metadata !DIExpression()), !dbg !36
  %2 = load double, double* %a0, align 8, !dbg !37
  %call = call double @__ieee754_lgamma_r(double %2, i32* %a1), !dbg !38
  store double %call, double* %r, align 8, !dbg !36
  ret i32 0, !dbg !39
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "e_gamma_r.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!9 = distinct !DISubprogram(name: "__ieee754_gamma_r", scope: !10, file: !10, line: 25, type: !11, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DIFile(filename: "./e_gamma_r.c", directory: "/home/klee/logic_bombs/fdlibm")
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !14}
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "x", arg: 1, scope: !9, file: !10, line: 25, type: !13)
!17 = !DILocation(line: 25, column: 34, scope: !9)
!18 = !DILocalVariable(name: "signgamp", arg: 2, scope: !9, file: !10, line: 25, type: !14)
!19 = !DILocation(line: 25, column: 42, scope: !9)
!20 = !DILocation(line: 31, column: 28, scope: !9)
!21 = !DILocation(line: 31, column: 30, scope: !9)
!22 = !DILocation(line: 31, column: 9, scope: !9)
!23 = !DILocation(line: 31, column: 2, scope: !9)
!24 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 36, type: !25, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!25 = !DISubroutineType(types: !26)
!26 = !{!15}
!27 = !DILocalVariable(name: "a0", scope: !24, file: !10, line: 37, type: !13)
!28 = !DILocation(line: 37, column: 12, scope: !24)
!29 = !DILocation(line: 38, column: 24, scope: !24)
!30 = !DILocation(line: 38, column: 5, scope: !24)
!31 = !DILocalVariable(name: "a1", scope: !24, file: !10, line: 40, type: !15)
!32 = !DILocation(line: 40, column: 9, scope: !24)
!33 = !DILocation(line: 41, column: 24, scope: !24)
!34 = !DILocation(line: 41, column: 5, scope: !24)
!35 = !DILocalVariable(name: "r", scope: !24, file: !10, line: 42, type: !13)
!36 = !DILocation(line: 42, column: 12, scope: !24)
!37 = !DILocation(line: 42, column: 35, scope: !24)
!38 = !DILocation(line: 42, column: 16, scope: !24)
!39 = !DILocation(line: 44, column: 5, scope: !24)
