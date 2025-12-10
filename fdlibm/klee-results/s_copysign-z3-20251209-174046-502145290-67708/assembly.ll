; ModuleID = 's_copysign.bc'
source_filename = "./s_copysign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a1\00", align 1

; Function Attrs: noinline nounwind optnone readnone uwtable willreturn
define dso_local double @copysign(double %x, double %y) #0 !dbg !12 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store double %y, double* %y.addr, align 8
  call void @llvm.dbg.declare(metadata double* %y.addr, metadata !19, metadata !DIExpression()), !dbg !20
  %0 = bitcast double* %x.addr to i32*, !dbg !21
  %1 = load i32, i32* %0, align 8, !dbg !21
  %and = and i32 %1, 2147483647, !dbg !22
  %2 = bitcast double* %y.addr to i32*, !dbg !23
  %3 = load i32, i32* %2, align 8, !dbg !23
  %and1 = and i32 %3, -2147483648, !dbg !24
  %or = or i32 %and, %and1, !dbg !25
  %4 = bitcast double* %x.addr to i32*, !dbg !26
  store i32 %or, i32* %4, align 8, !dbg !27
  %5 = load double, double* %x.addr, align 8, !dbg !28
  ret double %5, !dbg !29
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #2 !dbg !30 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !33, metadata !DIExpression()), !dbg !34
  %0 = bitcast double* %a0 to i8*, !dbg !35
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !36
  call void @llvm.dbg.declare(metadata double* %a1, metadata !37, metadata !DIExpression()), !dbg !38
  %1 = bitcast double* %a1 to i8*, !dbg !39
  call void @klee_make_symbolic(i8* %1, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !40
  call void @llvm.dbg.declare(metadata double* %r, metadata !41, metadata !DIExpression()), !dbg !42
  %2 = load double, double* %a0, align 8, !dbg !43
  %3 = load double, double* %a1, align 8, !dbg !44
  %4 = call double @copysign(double %2, double %3), !dbg !45
  store double %4, double* %r, align 8, !dbg !42
  ret i32 0, !dbg !46
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.copysign.f64(double, double) #1

attributes #0 = { noinline nounwind optnone readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "s_copysign.c", directory: "/home/klee/logic_bombs/fdlibm")
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
!12 = distinct !DISubprogram(name: "copysign", scope: !13, file: !13, line: 23, type: !14, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!13 = !DIFile(filename: "./s_copysign.c", directory: "/home/klee/logic_bombs/fdlibm")
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !16, !16}
!16 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!17 = !DILocalVariable(name: "x", arg: 1, scope: !12, file: !13, line: 23, type: !16)
!18 = !DILocation(line: 23, column: 25, scope: !12)
!19 = !DILocalVariable(name: "y", arg: 2, scope: !12, file: !13, line: 23, type: !16)
!20 = !DILocation(line: 23, column: 35, scope: !12)
!21 = !DILocation(line: 29, column: 13, scope: !12)
!22 = !DILocation(line: 29, column: 20, scope: !12)
!23 = !DILocation(line: 29, column: 34, scope: !12)
!24 = !DILocation(line: 29, column: 41, scope: !12)
!25 = !DILocation(line: 29, column: 32, scope: !12)
!26 = !DILocation(line: 29, column: 2, scope: !12)
!27 = !DILocation(line: 29, column: 10, scope: !12)
!28 = !DILocation(line: 30, column: 16, scope: !12)
!29 = !DILocation(line: 30, column: 9, scope: !12)
!30 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 35, type: !31, scopeLine: 35, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!31 = !DISubroutineType(types: !32)
!32 = !{!5}
!33 = !DILocalVariable(name: "a0", scope: !30, file: !13, line: 36, type: !16)
!34 = !DILocation(line: 36, column: 12, scope: !30)
!35 = !DILocation(line: 37, column: 24, scope: !30)
!36 = !DILocation(line: 37, column: 5, scope: !30)
!37 = !DILocalVariable(name: "a1", scope: !30, file: !13, line: 38, type: !16)
!38 = !DILocation(line: 38, column: 12, scope: !30)
!39 = !DILocation(line: 39, column: 24, scope: !30)
!40 = !DILocation(line: 39, column: 5, scope: !30)
!41 = !DILocalVariable(name: "r", scope: !30, file: !13, line: 41, type: !16)
!42 = !DILocation(line: 41, column: 12, scope: !30)
!43 = !DILocation(line: 41, column: 25, scope: !30)
!44 = !DILocation(line: 41, column: 29, scope: !30)
!45 = !DILocation(line: 41, column: 16, scope: !30)
!46 = !DILocation(line: 42, column: 5, scope: !30)
