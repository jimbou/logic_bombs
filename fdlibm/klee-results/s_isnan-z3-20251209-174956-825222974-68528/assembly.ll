; ModuleID = 's_isnan.bc'
source_filename = "./s_isnan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isnan(double %x) #0 !dbg !13 {
entry:
  %x.addr = alloca double, align 8
  %hx = alloca i32, align 4
  %lx = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %lx, metadata !22, metadata !DIExpression()), !dbg !23
  %0 = bitcast double* %x.addr to i32*, !dbg !24
  %1 = load i32, i32* %0, align 8, !dbg !24
  %and = and i32 %1, 2147483647, !dbg !25
  store i32 %and, i32* %hx, align 4, !dbg !26
  %2 = bitcast double* %x.addr to i32*, !dbg !27
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 1, !dbg !27
  %3 = load i32, i32* %add.ptr, align 4, !dbg !27
  store i32 %3, i32* %lx, align 4, !dbg !28
  %4 = load i32, i32* %lx, align 4, !dbg !29
  %5 = load i32, i32* %lx, align 4, !dbg !30
  %sub = sub nsw i32 0, %5, !dbg !31
  %or = or i32 %4, %sub, !dbg !32
  %shr = lshr i32 %or, 31, !dbg !33
  %6 = load i32, i32* %hx, align 4, !dbg !34
  %or1 = or i32 %6, %shr, !dbg !34
  store i32 %or1, i32* %hx, align 4, !dbg !34
  %7 = load i32, i32* %hx, align 4, !dbg !35
  %sub2 = sub nsw i32 2146435072, %7, !dbg !36
  store i32 %sub2, i32* %hx, align 4, !dbg !37
  %8 = load i32, i32* %hx, align 4, !dbg !38
  %shr3 = lshr i32 %8, 31, !dbg !39
  ret i32 %shr3, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !41 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !44, metadata !DIExpression()), !dbg !45
  %0 = bitcast double* %a0 to i8*, !dbg !46
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !47
  call void @llvm.dbg.declare(metadata i32* %r, metadata !48, metadata !DIExpression()), !dbg !49
  %1 = load double, double* %a0, align 8, !dbg !50
  %call = call i32 @isnan(double %1), !dbg !51
  store i32 %call, i32* %r, align 4, !dbg !49
  ret i32 0, !dbg !52
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "s_isnan.c", directory: "/home/klee/logic_bombs/fdlibm")
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
!13 = distinct !DISubprogram(name: "isnan", scope: !14, file: !14, line: 22, type: !15, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!14 = !DIFile(filename: "./s_isnan.c", directory: "/home/klee/logic_bombs/fdlibm")
!15 = !DISubroutineType(types: !16)
!16 = !{!5, !17}
!17 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!18 = !DILocalVariable(name: "x", arg: 1, scope: !13, file: !14, line: 22, type: !17)
!19 = !DILocation(line: 22, column: 19, scope: !13)
!20 = !DILocalVariable(name: "hx", scope: !13, file: !14, line: 28, type: !5)
!21 = !DILocation(line: 28, column: 6, scope: !13)
!22 = !DILocalVariable(name: "lx", scope: !13, file: !14, line: 28, type: !5)
!23 = !DILocation(line: 28, column: 9, scope: !13)
!24 = !DILocation(line: 29, column: 8, scope: !13)
!25 = !DILocation(line: 29, column: 15, scope: !13)
!26 = !DILocation(line: 29, column: 5, scope: !13)
!27 = !DILocation(line: 30, column: 7, scope: !13)
!28 = !DILocation(line: 30, column: 5, scope: !13)
!29 = !DILocation(line: 31, column: 19, scope: !13)
!30 = !DILocation(line: 31, column: 24, scope: !13)
!31 = !DILocation(line: 31, column: 23, scope: !13)
!32 = !DILocation(line: 31, column: 21, scope: !13)
!33 = !DILocation(line: 31, column: 28, scope: !13)
!34 = !DILocation(line: 31, column: 5, scope: !13)
!35 = !DILocation(line: 32, column: 20, scope: !13)
!36 = !DILocation(line: 32, column: 18, scope: !13)
!37 = !DILocation(line: 32, column: 5, scope: !13)
!38 = !DILocation(line: 33, column: 21, scope: !13)
!39 = !DILocation(line: 33, column: 25, scope: !13)
!40 = !DILocation(line: 33, column: 2, scope: !13)
!41 = distinct !DISubprogram(name: "main", scope: !14, file: !14, line: 38, type: !42, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{!5}
!44 = !DILocalVariable(name: "a0", scope: !41, file: !14, line: 39, type: !17)
!45 = !DILocation(line: 39, column: 12, scope: !41)
!46 = !DILocation(line: 40, column: 24, scope: !41)
!47 = !DILocation(line: 40, column: 5, scope: !41)
!48 = !DILocalVariable(name: "r", scope: !41, file: !14, line: 42, type: !5)
!49 = !DILocation(line: 42, column: 9, scope: !41)
!50 = !DILocation(line: 42, column: 19, scope: !41)
!51 = !DILocation(line: 42, column: 13, scope: !41)
!52 = !DILocation(line: 43, column: 5, scope: !41)
