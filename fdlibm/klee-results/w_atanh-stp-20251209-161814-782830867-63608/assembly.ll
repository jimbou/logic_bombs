; ModuleID = 'w_atanh.bc'
source_filename = "./w_atanh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_fdlib_version = external dso_local global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @atanh(double %x) #0 !dbg !17 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %z = alloca double, align 8
  %y = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata double* %z, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata double* %y, metadata !27, metadata !DIExpression()), !dbg !28
  %0 = load double, double* %x.addr, align 8, !dbg !29
  %call = call double @__ieee754_atanh(double %0), !dbg !30
  store double %call, double* %z, align 8, !dbg !31
  %1 = load i32, i32* @_fdlib_version, align 4, !dbg !32
  %cmp = icmp eq i32 %1, -1, !dbg !34
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !35

lor.lhs.false:                                    ; preds = %entry
  %2 = load double, double* %x.addr, align 8, !dbg !36
  %call1 = call i32 @isnan(double %2), !dbg !37
  %tobool = icmp ne i32 %call1, 0, !dbg !37
  br i1 %tobool, label %if.then, label %if.end, !dbg !38

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load double, double* %z, align 8, !dbg !39
  store double %3, double* %retval, align 8, !dbg !40
  br label %return, !dbg !40

if.end:                                           ; preds = %lor.lhs.false
  %4 = load double, double* %x.addr, align 8, !dbg !41
  %5 = call double @llvm.fabs.f64(double %4), !dbg !42
  store double %5, double* %y, align 8, !dbg !43
  %6 = load double, double* %y, align 8, !dbg !44
  %cmp2 = fcmp oge double %6, 1.000000e+00, !dbg !46
  br i1 %cmp2, label %if.then3, label %if.else8, !dbg !47

if.then3:                                         ; preds = %if.end
  %7 = load double, double* %y, align 8, !dbg !48
  %cmp4 = fcmp ogt double %7, 1.000000e+00, !dbg !51
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !52

if.then5:                                         ; preds = %if.then3
  %8 = load double, double* %x.addr, align 8, !dbg !53
  %9 = load double, double* %x.addr, align 8, !dbg !54
  %call6 = call double @__kernel_standard(double %8, double %9, i32 30), !dbg !55
  store double %call6, double* %retval, align 8, !dbg !56
  br label %return, !dbg !56

if.else:                                          ; preds = %if.then3
  %10 = load double, double* %x.addr, align 8, !dbg !57
  %11 = load double, double* %x.addr, align 8, !dbg !58
  %call7 = call double @__kernel_standard(double %10, double %11, i32 31), !dbg !59
  store double %call7, double* %retval, align 8, !dbg !60
  br label %return, !dbg !60

if.else8:                                         ; preds = %if.end
  %12 = load double, double* %z, align 8, !dbg !61
  store double %12, double* %retval, align 8, !dbg !62
  br label %return, !dbg !62

return:                                           ; preds = %if.else8, %if.else, %if.then5, %if.then
  %13 = load double, double* %retval, align 8, !dbg !63
  ret double %13, !dbg !63
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local double @__ieee754_atanh(double) #2

declare dso_local i32 @isnan(double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

declare dso_local double @__kernel_standard(double, double, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !64 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !67, metadata !DIExpression()), !dbg !68
  %0 = bitcast double* %a0 to i8*, !dbg !69
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !70
  call void @llvm.dbg.declare(metadata double* %r, metadata !71, metadata !DIExpression()), !dbg !72
  %1 = load double, double* %a0, align 8, !dbg !73
  %call = call double @atanh(double %1) #3, !dbg !74
  store double %call, double* %r, align 8, !dbg !72
  ret i32 0, !dbg !75
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "w_atanh.c", directory: "/home/klee/logic_bombs/fdlibm")
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
!17 = distinct !DISubprogram(name: "atanh", scope: !18, file: !18, line: 21, type: !19, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!18 = !DIFile(filename: "./w_atanh.c", directory: "/home/klee/logic_bombs/fdlibm")
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !21}
!21 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!22 = !{}
!23 = !DILocalVariable(name: "x", arg: 1, scope: !17, file: !18, line: 21, type: !21)
!24 = !DILocation(line: 21, column: 22, scope: !17)
!25 = !DILocalVariable(name: "z", scope: !17, file: !18, line: 30, type: !21)
!26 = !DILocation(line: 30, column: 9, scope: !17)
!27 = !DILocalVariable(name: "y", scope: !17, file: !18, line: 30, type: !21)
!28 = !DILocation(line: 30, column: 11, scope: !17)
!29 = !DILocation(line: 31, column: 22, scope: !17)
!30 = !DILocation(line: 31, column: 6, scope: !17)
!31 = !DILocation(line: 31, column: 4, scope: !17)
!32 = !DILocation(line: 32, column: 5, scope: !33)
!33 = distinct !DILexicalBlock(scope: !17, file: !18, line: 32, column: 5)
!34 = !DILocation(line: 32, column: 18, scope: !33)
!35 = !DILocation(line: 32, column: 28, scope: !33)
!36 = !DILocation(line: 32, column: 37, scope: !33)
!37 = !DILocation(line: 32, column: 31, scope: !33)
!38 = !DILocation(line: 32, column: 5, scope: !17)
!39 = !DILocation(line: 32, column: 48, scope: !33)
!40 = !DILocation(line: 32, column: 41, scope: !33)
!41 = !DILocation(line: 33, column: 11, scope: !17)
!42 = !DILocation(line: 33, column: 6, scope: !17)
!43 = !DILocation(line: 33, column: 4, scope: !17)
!44 = !DILocation(line: 34, column: 5, scope: !45)
!45 = distinct !DILexicalBlock(scope: !17, file: !18, line: 34, column: 5)
!46 = !DILocation(line: 34, column: 6, scope: !45)
!47 = !DILocation(line: 34, column: 5, scope: !17)
!48 = !DILocation(line: 35, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !18, line: 35, column: 9)
!50 = distinct !DILexicalBlock(scope: !45, file: !18, line: 34, column: 13)
!51 = !DILocation(line: 35, column: 10, scope: !49)
!52 = !DILocation(line: 35, column: 9, scope: !50)
!53 = !DILocation(line: 36, column: 35, scope: !49)
!54 = !DILocation(line: 36, column: 37, scope: !49)
!55 = !DILocation(line: 36, column: 17, scope: !49)
!56 = !DILocation(line: 36, column: 10, scope: !49)
!57 = !DILocation(line: 38, column: 35, scope: !49)
!58 = !DILocation(line: 38, column: 37, scope: !49)
!59 = !DILocation(line: 38, column: 17, scope: !49)
!60 = !DILocation(line: 38, column: 10, scope: !49)
!61 = !DILocation(line: 40, column: 13, scope: !45)
!62 = !DILocation(line: 40, column: 6, scope: !45)
!63 = !DILocation(line: 42, column: 1, scope: !17)
!64 = distinct !DISubprogram(name: "main", scope: !18, file: !18, line: 46, type: !65, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!65 = !DISubroutineType(types: !66)
!66 = !{!5}
!67 = !DILocalVariable(name: "a0", scope: !64, file: !18, line: 47, type: !21)
!68 = !DILocation(line: 47, column: 12, scope: !64)
!69 = !DILocation(line: 48, column: 24, scope: !64)
!70 = !DILocation(line: 48, column: 5, scope: !64)
!71 = !DILocalVariable(name: "r", scope: !64, file: !18, line: 50, type: !21)
!72 = !DILocation(line: 50, column: 12, scope: !64)
!73 = !DILocation(line: 50, column: 22, scope: !64)
!74 = !DILocation(line: 50, column: 16, scope: !64)
!75 = !DILocation(line: 51, column: 5, scope: !64)
