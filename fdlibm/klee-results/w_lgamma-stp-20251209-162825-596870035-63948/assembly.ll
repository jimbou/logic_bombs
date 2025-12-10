; ModuleID = 'w_lgamma.bc'
source_filename = "./w_lgamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@signgam = external dso_local global i32, align 4
@_fdlib_version = external dso_local global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @lgamma(double %x) #0 !dbg !17 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %y = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata double* %y, metadata !25, metadata !DIExpression()), !dbg !26
  %0 = load double, double* %x.addr, align 8, !dbg !27
  %call = call double @__ieee754_lgamma_r(double %0, i32* @signgam), !dbg !28
  store double %call, double* %y, align 8, !dbg !29
  %1 = load i32, i32* @_fdlib_version, align 4, !dbg !30
  %cmp = icmp eq i32 %1, -1, !dbg !32
  br i1 %cmp, label %if.then, label %if.end, !dbg !33

if.then:                                          ; preds = %entry
  %2 = load double, double* %y, align 8, !dbg !34
  store double %2, double* %retval, align 8, !dbg !35
  br label %return, !dbg !35

if.end:                                           ; preds = %entry
  %3 = load double, double* %y, align 8, !dbg !36
  %4 = call double @llvm.fabs.f64(double %3) #3, !dbg !38
  %cmpinf = fcmp one double %4, 0x7FF0000000000000, !dbg !38
  br i1 %cmpinf, label %if.else9, label %land.lhs.true, !dbg !39

land.lhs.true:                                    ; preds = %if.end
  %5 = load double, double* %x.addr, align 8, !dbg !40
  %6 = call double @llvm.fabs.f64(double %5) #3, !dbg !41
  %cmpinf1 = fcmp one double %6, 0x7FF0000000000000, !dbg !41
  br i1 %cmpinf1, label %if.then2, label %if.else9, !dbg !42

if.then2:                                         ; preds = %land.lhs.true
  %7 = load double, double* %x.addr, align 8, !dbg !43
  %8 = call double @floor(double %7), !dbg !46
  %9 = load double, double* %x.addr, align 8, !dbg !47
  %cmp3 = fcmp oeq double %8, %9, !dbg !48
  br i1 %cmp3, label %land.lhs.true4, label %if.else, !dbg !49

land.lhs.true4:                                   ; preds = %if.then2
  %10 = load double, double* %x.addr, align 8, !dbg !50
  %cmp5 = fcmp ole double %10, 0.000000e+00, !dbg !51
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !52

if.then6:                                         ; preds = %land.lhs.true4
  %11 = load double, double* %x.addr, align 8, !dbg !53
  %12 = load double, double* %x.addr, align 8, !dbg !54
  %call7 = call double @__kernel_standard(double %11, double %12, i32 15), !dbg !55
  store double %call7, double* %retval, align 8, !dbg !56
  br label %return, !dbg !56

if.else:                                          ; preds = %land.lhs.true4, %if.then2
  %13 = load double, double* %x.addr, align 8, !dbg !57
  %14 = load double, double* %x.addr, align 8, !dbg !58
  %call8 = call double @__kernel_standard(double %13, double %14, i32 14), !dbg !59
  store double %call8, double* %retval, align 8, !dbg !60
  br label %return, !dbg !60

if.else9:                                         ; preds = %land.lhs.true, %if.end
  %15 = load double, double* %y, align 8, !dbg !61
  store double %15, double* %retval, align 8, !dbg !62
  br label %return, !dbg !62

return:                                           ; preds = %if.else9, %if.else, %if.then6, %if.then
  %16 = load double, double* %retval, align 8, !dbg !63
  ret double %16, !dbg !63
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local double @__ieee754_lgamma_r(double, i32*) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

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
  %call = call double @lgamma(double %1) #4, !dbg !74
  store double %call, double* %r, align 8, !dbg !72
  ret i32 0, !dbg !75
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

declare double @floor(double)

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { readnone }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "w_lgamma.c", directory: "/home/klee/logic_bombs/fdlibm")
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
!17 = distinct !DISubprogram(name: "lgamma", scope: !18, file: !18, line: 26, type: !19, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!18 = !DIFile(filename: "./w_lgamma.c", directory: "/home/klee/logic_bombs/fdlibm")
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !21}
!21 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!22 = !{}
!23 = !DILocalVariable(name: "x", arg: 1, scope: !17, file: !18, line: 26, type: !21)
!24 = !DILocation(line: 26, column: 23, scope: !17)
!25 = !DILocalVariable(name: "y", scope: !17, file: !18, line: 35, type: !21)
!26 = !DILocation(line: 35, column: 16, scope: !17)
!27 = !DILocation(line: 36, column: 32, scope: !17)
!28 = !DILocation(line: 36, column: 13, scope: !17)
!29 = !DILocation(line: 36, column: 11, scope: !17)
!30 = !DILocation(line: 37, column: 12, scope: !31)
!31 = distinct !DILexicalBlock(scope: !17, file: !18, line: 37, column: 12)
!32 = !DILocation(line: 37, column: 25, scope: !31)
!33 = !DILocation(line: 37, column: 12, scope: !17)
!34 = !DILocation(line: 37, column: 43, scope: !31)
!35 = !DILocation(line: 37, column: 36, scope: !31)
!36 = !DILocation(line: 38, column: 20, scope: !37)
!37 = distinct !DILexicalBlock(scope: !17, file: !18, line: 38, column: 12)
!38 = !DILocation(line: 38, column: 13, scope: !37)
!39 = !DILocation(line: 38, column: 22, scope: !37)
!40 = !DILocation(line: 38, column: 31, scope: !37)
!41 = !DILocation(line: 38, column: 24, scope: !37)
!42 = !DILocation(line: 38, column: 12, scope: !17)
!43 = !DILocation(line: 39, column: 22, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !18, line: 39, column: 16)
!45 = distinct !DILexicalBlock(scope: !37, file: !18, line: 38, column: 35)
!46 = !DILocation(line: 39, column: 16, scope: !44)
!47 = !DILocation(line: 39, column: 26, scope: !44)
!48 = !DILocation(line: 39, column: 24, scope: !44)
!49 = !DILocation(line: 39, column: 27, scope: !44)
!50 = !DILocation(line: 39, column: 29, scope: !44)
!51 = !DILocation(line: 39, column: 30, scope: !44)
!52 = !DILocation(line: 39, column: 16, scope: !45)
!53 = !DILocation(line: 40, column: 42, scope: !44)
!54 = !DILocation(line: 40, column: 44, scope: !44)
!55 = !DILocation(line: 40, column: 24, scope: !44)
!56 = !DILocation(line: 40, column: 17, scope: !44)
!57 = !DILocation(line: 42, column: 42, scope: !44)
!58 = !DILocation(line: 42, column: 44, scope: !44)
!59 = !DILocation(line: 42, column: 24, scope: !44)
!60 = !DILocation(line: 42, column: 17, scope: !44)
!61 = !DILocation(line: 44, column: 20, scope: !37)
!62 = !DILocation(line: 44, column: 13, scope: !37)
!63 = !DILocation(line: 46, column: 1, scope: !17)
!64 = distinct !DISubprogram(name: "main", scope: !18, file: !18, line: 50, type: !65, scopeLine: 50, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!65 = !DISubroutineType(types: !66)
!66 = !{!5}
!67 = !DILocalVariable(name: "a0", scope: !64, file: !18, line: 51, type: !21)
!68 = !DILocation(line: 51, column: 12, scope: !64)
!69 = !DILocation(line: 52, column: 24, scope: !64)
!70 = !DILocation(line: 52, column: 5, scope: !64)
!71 = !DILocalVariable(name: "r", scope: !64, file: !18, line: 54, type: !21)
!72 = !DILocation(line: 54, column: 12, scope: !64)
!73 = !DILocation(line: 54, column: 23, scope: !64)
!74 = !DILocation(line: 54, column: 16, scope: !64)
!75 = !DILocation(line: 55, column: 5, scope: !64)
