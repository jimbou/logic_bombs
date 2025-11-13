; ModuleID = '/tmp/klee_build130stp_z3/runtime/Intrinsic/klee_int32_Debug.bc'
source_filename = "/tmp/klee_src/runtime/Intrinsic/klee_int.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

; Function Attrs: noinline nounwind
define dso_local i32 @klee_int(i8* %name) #0 !dbg !9 {
entry:
  %name.addr = alloca i8*, align 4
  %x = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %x, metadata !19, metadata !DIExpression()), !dbg !20
  %0 = bitcast i32* %x to i8*, !dbg !21
  %1 = load i8*, i8** %name.addr, align 4, !dbg !22
  call void @klee_make_symbolic(i8* %0, i32 4, i8* %1), !dbg !23
  %2 = load i32, i32* %x, align 4, !dbg !24
  ret i32 %2, !dbg !25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @klee_make_symbolic(i8*, i32, i8*) #2

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/tmp/klee_src/runtime/Intrinsic/klee_int.c", directory: "/tmp/klee_build130stp_z3/runtime/Intrinsic")
!2 = !{}
!3 = !{i32 1, !"NumRegisterParameters", i32 0}
!4 = !{i32 7, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!9 = distinct !DISubprogram(name: "klee_int", scope: !10, file: !10, line: 13, type: !11, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DIFile(filename: "klee_src/runtime/Intrinsic/klee_int.c", directory: "/tmp")
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DILocalVariable(name: "name", arg: 1, scope: !9, file: !10, line: 13, type: !14)
!18 = !DILocation(line: 13, column: 26, scope: !9)
!19 = !DILocalVariable(name: "x", scope: !9, file: !10, line: 14, type: !13)
!20 = !DILocation(line: 14, column: 7, scope: !9)
!21 = !DILocation(line: 15, column: 22, scope: !9)
!22 = !DILocation(line: 15, column: 36, scope: !9)
!23 = !DILocation(line: 15, column: 3, scope: !9)
!24 = !DILocation(line: 16, column: 10, scope: !9)
!25 = !DILocation(line: 16, column: 3, scope: !9)
