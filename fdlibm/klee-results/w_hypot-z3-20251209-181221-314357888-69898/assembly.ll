; ModuleID = 'w_hypot.bc'
source_filename = "./w_hypot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_fdlib_version = external dso_local global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @hypot(double %x, double %y) #0 !dbg !17 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %z = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !23, metadata !DIExpression()), !dbg !24
  store double %y, double* %y.addr, align 8
  call void @llvm.dbg.declare(metadata double* %y.addr, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata double* %z, metadata !27, metadata !DIExpression()), !dbg !28
  %0 = load double, double* %x.addr, align 8, !dbg !29
  %1 = load double, double* %y.addr, align 8, !dbg !30
  %call = call double @__ieee754_hypot(double %0, double %1), !dbg !31
  store double %call, double* %z, align 8, !dbg !32
  %2 = load i32, i32* @_fdlib_version, align 4, !dbg !33
  %cmp = icmp eq i32 %2, -1, !dbg !35
  br i1 %cmp, label %if.then, label %if.end, !dbg !36

if.then:                                          ; preds = %entry
  %3 = load double, double* %z, align 8, !dbg !37
  store double %3, double* %retval, align 8, !dbg !38
  br label %return, !dbg !38

if.end:                                           ; preds = %entry
  %4 = load double, double* %z, align 8, !dbg !39
  %5 = call double @llvm.fabs.f64(double %4) #3, !dbg !41
  %cmpinf = fcmp one double %5, 0x7FF0000000000000, !dbg !41
  br i1 %cmpinf, label %if.else, label %land.lhs.true, !dbg !42

land.lhs.true:                                    ; preds = %if.end
  %6 = load double, double* %x.addr, align 8, !dbg !43
  %7 = call double @llvm.fabs.f64(double %6) #3, !dbg !44
  %cmpinf1 = fcmp one double %7, 0x7FF0000000000000, !dbg !44
  br i1 %cmpinf1, label %land.lhs.true2, label %if.else, !dbg !45

land.lhs.true2:                                   ; preds = %land.lhs.true
  %8 = load double, double* %y.addr, align 8, !dbg !46
  %9 = call double @llvm.fabs.f64(double %8) #3, !dbg !47
  %cmpinf3 = fcmp one double %9, 0x7FF0000000000000, !dbg !47
  br i1 %cmpinf3, label %if.then4, label %if.else, !dbg !48

if.then4:                                         ; preds = %land.lhs.true2
  %10 = load double, double* %x.addr, align 8, !dbg !49
  %11 = load double, double* %y.addr, align 8, !dbg !50
  %call5 = call double @__kernel_standard(double %10, double %11, i32 4), !dbg !51
  store double %call5, double* %retval, align 8, !dbg !52
  br label %return, !dbg !52

if.else:                                          ; preds = %land.lhs.true2, %land.lhs.true, %if.end
  %12 = load double, double* %z, align 8, !dbg !53
  store double %12, double* %retval, align 8, !dbg !54
  br label %return, !dbg !54

return:                                           ; preds = %if.else, %if.then4, %if.then
  %13 = load double, double* %retval, align 8, !dbg !55
  ret double %13, !dbg !55
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local double @__ieee754_hypot(double, double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

declare dso_local double @__kernel_standard(double, double, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !56 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !59, metadata !DIExpression()), !dbg !60
  %0 = bitcast double* %a0 to i8*, !dbg !61
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !62
  call void @llvm.dbg.declare(metadata double* %a1, metadata !63, metadata !DIExpression()), !dbg !64
  %1 = bitcast double* %a1 to i8*, !dbg !65
  call void @klee_make_symbolic(i8* %1, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !66
  call void @llvm.dbg.declare(metadata double* %r, metadata !67, metadata !DIExpression()), !dbg !68
  %2 = load double, double* %a0, align 8, !dbg !69
  %3 = load double, double* %a1, align 8, !dbg !70
  %call = call double @hypot(double %2, double %3) #4, !dbg !71
  store double %call, double* %r, align 8, !dbg !68
  ret i32 0, !dbg !72
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { readnone }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "w_hypot.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fdversion", file: !4, line: 48, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./fdlibm.h", directory: "/home/klee/logic_bombs/fdlibm")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "fdlibm_ieee", value: -1)
!8 = !DIEnumerator(name: "fdlibm_svid", value: 0)
!9 = !DIEnumerator(name: "fdlibm_xopen", value: 1)
!10 = !DIEnumerator(name: "fdlibm_posix", value: 2)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!17 = distinct !DISubprogram(name: "hypot", scope: !18, file: !18, line: 22, type: !19, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!18 = !DIFile(filename: "./w_hypot.c", directory: "/home/klee/logic_bombs/fdlibm")
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !21, !21}
!21 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!22 = !{}
!23 = !DILocalVariable(name: "x", arg: 1, scope: !17, file: !18, line: 22, type: !21)
!24 = !DILocation(line: 22, column: 22, scope: !17)
!25 = !DILocalVariable(name: "y", arg: 2, scope: !17, file: !18, line: 22, type: !21)
!26 = !DILocation(line: 22, column: 32, scope: !17)
!27 = !DILocalVariable(name: "z", scope: !17, file: !18, line: 31, type: !21)
!28 = !DILocation(line: 31, column: 9, scope: !17)
!29 = !DILocation(line: 32, column: 22, scope: !17)
!30 = !DILocation(line: 32, column: 24, scope: !17)
!31 = !DILocation(line: 32, column: 6, scope: !17)
!32 = !DILocation(line: 32, column: 4, scope: !17)
!33 = !DILocation(line: 33, column: 5, scope: !34)
!34 = distinct !DILexicalBlock(scope: !17, file: !18, line: 33, column: 5)
!35 = !DILocation(line: 33, column: 18, scope: !34)
!36 = !DILocation(line: 33, column: 5, scope: !17)
!37 = !DILocation(line: 33, column: 36, scope: !34)
!38 = !DILocation(line: 33, column: 29, scope: !34)
!39 = !DILocation(line: 34, column: 14, scope: !40)
!40 = distinct !DILexicalBlock(scope: !17, file: !18, line: 34, column: 5)
!41 = !DILocation(line: 34, column: 7, scope: !40)
!42 = !DILocation(line: 34, column: 17, scope: !40)
!43 = !DILocation(line: 34, column: 26, scope: !40)
!44 = !DILocation(line: 34, column: 19, scope: !40)
!45 = !DILocation(line: 34, column: 28, scope: !40)
!46 = !DILocation(line: 34, column: 37, scope: !40)
!47 = !DILocation(line: 34, column: 30, scope: !40)
!48 = !DILocation(line: 34, column: 5, scope: !17)
!49 = !DILocation(line: 35, column: 31, scope: !40)
!50 = !DILocation(line: 35, column: 33, scope: !40)
!51 = !DILocation(line: 35, column: 13, scope: !40)
!52 = !DILocation(line: 35, column: 6, scope: !40)
!53 = !DILocation(line: 37, column: 13, scope: !40)
!54 = !DILocation(line: 37, column: 6, scope: !40)
!55 = !DILocation(line: 39, column: 1, scope: !17)
!56 = distinct !DISubprogram(name: "main", scope: !18, file: !18, line: 43, type: !57, scopeLine: 43, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!57 = !DISubroutineType(types: !58)
!58 = !{!5}
!59 = !DILocalVariable(name: "a0", scope: !56, file: !18, line: 44, type: !21)
!60 = !DILocation(line: 44, column: 12, scope: !56)
!61 = !DILocation(line: 45, column: 24, scope: !56)
!62 = !DILocation(line: 45, column: 5, scope: !56)
!63 = !DILocalVariable(name: "a1", scope: !56, file: !18, line: 46, type: !21)
!64 = !DILocation(line: 46, column: 12, scope: !56)
!65 = !DILocation(line: 47, column: 24, scope: !56)
!66 = !DILocation(line: 47, column: 5, scope: !56)
!67 = !DILocalVariable(name: "r", scope: !56, file: !18, line: 49, type: !21)
!68 = !DILocation(line: 49, column: 12, scope: !56)
!69 = !DILocation(line: 49, column: 22, scope: !56)
!70 = !DILocation(line: 49, column: 26, scope: !56)
!71 = !DILocation(line: 49, column: 16, scope: !56)
!72 = !DILocation(line: 50, column: 5, scope: !56)
