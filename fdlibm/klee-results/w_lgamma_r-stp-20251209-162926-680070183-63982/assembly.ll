; ModuleID = 'w_lgamma_r.bc'
source_filename = "./w_lgamma_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_fdlib_version = external dso_local global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @lgamma_r(double %x, i32* %signgamp) #0 !dbg !17 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %signgamp.addr = alloca i32*, align 8
  %y = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !24, metadata !DIExpression()), !dbg !25
  store i32* %signgamp, i32** %signgamp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %signgamp.addr, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata double* %y, metadata !28, metadata !DIExpression()), !dbg !29
  %0 = load double, double* %x.addr, align 8, !dbg !30
  %1 = load i32*, i32** %signgamp.addr, align 8, !dbg !31
  %call = call double @__ieee754_lgamma_r(double %0, i32* %1), !dbg !32
  store double %call, double* %y, align 8, !dbg !33
  %2 = load i32, i32* @_fdlib_version, align 4, !dbg !34
  %cmp = icmp eq i32 %2, -1, !dbg !36
  br i1 %cmp, label %if.then, label %if.end, !dbg !37

if.then:                                          ; preds = %entry
  %3 = load double, double* %y, align 8, !dbg !38
  store double %3, double* %retval, align 8, !dbg !39
  br label %return, !dbg !39

if.end:                                           ; preds = %entry
  %4 = load double, double* %y, align 8, !dbg !40
  %5 = call double @llvm.fabs.f64(double %4) #3, !dbg !42
  %cmpinf = fcmp one double %5, 0x7FF0000000000000, !dbg !42
  br i1 %cmpinf, label %if.else9, label %land.lhs.true, !dbg !43

land.lhs.true:                                    ; preds = %if.end
  %6 = load double, double* %x.addr, align 8, !dbg !44
  %7 = call double @llvm.fabs.f64(double %6) #3, !dbg !45
  %cmpinf1 = fcmp one double %7, 0x7FF0000000000000, !dbg !45
  br i1 %cmpinf1, label %if.then2, label %if.else9, !dbg !46

if.then2:                                         ; preds = %land.lhs.true
  %8 = load double, double* %x.addr, align 8, !dbg !47
  %9 = call double @floor(double %8), !dbg !50
  %10 = load double, double* %x.addr, align 8, !dbg !51
  %cmp3 = fcmp oeq double %9, %10, !dbg !52
  br i1 %cmp3, label %land.lhs.true4, label %if.else, !dbg !53

land.lhs.true4:                                   ; preds = %if.then2
  %11 = load double, double* %x.addr, align 8, !dbg !54
  %cmp5 = fcmp ole double %11, 0.000000e+00, !dbg !55
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !56

if.then6:                                         ; preds = %land.lhs.true4
  %12 = load double, double* %x.addr, align 8, !dbg !57
  %13 = load double, double* %x.addr, align 8, !dbg !58
  %call7 = call double @__kernel_standard(double %12, double %13, i32 15), !dbg !59
  store double %call7, double* %retval, align 8, !dbg !60
  br label %return, !dbg !60

if.else:                                          ; preds = %land.lhs.true4, %if.then2
  %14 = load double, double* %x.addr, align 8, !dbg !61
  %15 = load double, double* %x.addr, align 8, !dbg !62
  %call8 = call double @__kernel_standard(double %14, double %15, i32 14), !dbg !63
  store double %call8, double* %retval, align 8, !dbg !64
  br label %return, !dbg !64

if.else9:                                         ; preds = %land.lhs.true, %if.end
  %16 = load double, double* %y, align 8, !dbg !65
  store double %16, double* %retval, align 8, !dbg !66
  br label %return, !dbg !66

return:                                           ; preds = %if.else9, %if.else, %if.then6, %if.then
  %17 = load double, double* %retval, align 8, !dbg !67
  ret double %17, !dbg !67
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
define dso_local i32 @main() #0 !dbg !68 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca i32, align 4
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !71, metadata !DIExpression()), !dbg !72
  %0 = bitcast double* %a0 to i8*, !dbg !73
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !74
  call void @llvm.dbg.declare(metadata i32* %a1, metadata !75, metadata !DIExpression()), !dbg !76
  %1 = bitcast i32* %a1 to i8*, !dbg !77
  call void @klee_make_symbolic(i8* %1, i64 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !78
  call void @llvm.dbg.declare(metadata double* %r, metadata !79, metadata !DIExpression()), !dbg !80
  %2 = load double, double* %a0, align 8, !dbg !81
  %call = call double @lgamma_r(double %2, i32* %a1), !dbg !82
  store double %call, double* %r, align 8, !dbg !80
  ret i32 0, !dbg !83
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

declare double @floor(double)

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "w_lgamma_r.c", directory: "/home/klee/logic_bombs/fdlibm")
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
!17 = distinct !DISubprogram(name: "lgamma_r", scope: !18, file: !18, line: 22, type: !19, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!18 = !DIFile(filename: "./w_lgamma_r.c", directory: "/home/klee/logic_bombs/fdlibm")
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !21, !22}
!21 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!23 = !{}
!24 = !DILocalVariable(name: "x", arg: 1, scope: !17, file: !18, line: 22, type: !21)
!25 = !DILocation(line: 22, column: 25, scope: !17)
!26 = !DILocalVariable(name: "signgamp", arg: 2, scope: !17, file: !18, line: 22, type: !22)
!27 = !DILocation(line: 22, column: 33, scope: !17)
!28 = !DILocalVariable(name: "y", scope: !17, file: !18, line: 31, type: !21)
!29 = !DILocation(line: 31, column: 16, scope: !17)
!30 = !DILocation(line: 32, column: 32, scope: !17)
!31 = !DILocation(line: 32, column: 34, scope: !17)
!32 = !DILocation(line: 32, column: 13, scope: !17)
!33 = !DILocation(line: 32, column: 11, scope: !17)
!34 = !DILocation(line: 33, column: 12, scope: !35)
!35 = distinct !DILexicalBlock(scope: !17, file: !18, line: 33, column: 12)
!36 = !DILocation(line: 33, column: 25, scope: !35)
!37 = !DILocation(line: 33, column: 12, scope: !17)
!38 = !DILocation(line: 33, column: 43, scope: !35)
!39 = !DILocation(line: 33, column: 36, scope: !35)
!40 = !DILocation(line: 34, column: 20, scope: !41)
!41 = distinct !DILexicalBlock(scope: !17, file: !18, line: 34, column: 12)
!42 = !DILocation(line: 34, column: 13, scope: !41)
!43 = !DILocation(line: 34, column: 22, scope: !41)
!44 = !DILocation(line: 34, column: 31, scope: !41)
!45 = !DILocation(line: 34, column: 24, scope: !41)
!46 = !DILocation(line: 34, column: 12, scope: !17)
!47 = !DILocation(line: 35, column: 22, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !18, line: 35, column: 16)
!49 = distinct !DILexicalBlock(scope: !41, file: !18, line: 34, column: 35)
!50 = !DILocation(line: 35, column: 16, scope: !48)
!51 = !DILocation(line: 35, column: 26, scope: !48)
!52 = !DILocation(line: 35, column: 24, scope: !48)
!53 = !DILocation(line: 35, column: 27, scope: !48)
!54 = !DILocation(line: 35, column: 29, scope: !48)
!55 = !DILocation(line: 35, column: 30, scope: !48)
!56 = !DILocation(line: 35, column: 16, scope: !49)
!57 = !DILocation(line: 36, column: 42, scope: !48)
!58 = !DILocation(line: 36, column: 44, scope: !48)
!59 = !DILocation(line: 36, column: 24, scope: !48)
!60 = !DILocation(line: 36, column: 17, scope: !48)
!61 = !DILocation(line: 38, column: 42, scope: !48)
!62 = !DILocation(line: 38, column: 44, scope: !48)
!63 = !DILocation(line: 38, column: 24, scope: !48)
!64 = !DILocation(line: 38, column: 17, scope: !48)
!65 = !DILocation(line: 40, column: 20, scope: !41)
!66 = !DILocation(line: 40, column: 13, scope: !41)
!67 = !DILocation(line: 42, column: 1, scope: !17)
!68 = distinct !DISubprogram(name: "main", scope: !18, file: !18, line: 46, type: !69, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!69 = !DISubroutineType(types: !70)
!70 = !{!5}
!71 = !DILocalVariable(name: "a0", scope: !68, file: !18, line: 47, type: !21)
!72 = !DILocation(line: 47, column: 12, scope: !68)
!73 = !DILocation(line: 48, column: 24, scope: !68)
!74 = !DILocation(line: 48, column: 5, scope: !68)
!75 = !DILocalVariable(name: "a1", scope: !68, file: !18, line: 49, type: !5)
!76 = !DILocation(line: 49, column: 9, scope: !68)
!77 = !DILocation(line: 50, column: 24, scope: !68)
!78 = !DILocation(line: 50, column: 5, scope: !68)
!79 = !DILocalVariable(name: "r", scope: !68, file: !18, line: 51, type: !21)
!80 = !DILocation(line: 51, column: 12, scope: !68)
!81 = !DILocation(line: 51, column: 25, scope: !68)
!82 = !DILocation(line: 51, column: 16, scope: !68)
!83 = !DILocation(line: 53, column: 5, scope: !68)
