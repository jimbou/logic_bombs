; ModuleID = 'w_scalb.bc'
source_filename = "./w_scalb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_fdlib_version = external dso_local global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @scalb(double %x, double %fn) #0 !dbg !19 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %fn.addr = alloca double, align 8
  %z = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !24, metadata !DIExpression()), !dbg !25
  store double %fn, double* %fn.addr, align 8
  call void @llvm.dbg.declare(metadata double* %fn.addr, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata double* %z, metadata !28, metadata !DIExpression()), !dbg !29
  %0 = load double, double* %x.addr, align 8, !dbg !30
  %1 = load double, double* %fn.addr, align 8, !dbg !31
  %call = call double @__ieee754_scalb(double %0, double %1), !dbg !32
  store double %call, double* %z, align 8, !dbg !33
  %2 = load i32, i32* @_fdlib_version, align 4, !dbg !34
  %cmp = icmp eq i32 %2, -1, !dbg !36
  br i1 %cmp, label %if.then, label %if.end, !dbg !37

if.then:                                          ; preds = %entry
  %3 = load double, double* %z, align 8, !dbg !38
  store double %3, double* %retval, align 8, !dbg !39
  br label %return, !dbg !39

if.end:                                           ; preds = %entry
  %4 = load double, double* %z, align 8, !dbg !40
  %5 = call double @llvm.fabs.f64(double %4) #4, !dbg !42
  %cmpinf = fcmp one double %5, 0x7FF0000000000000, !dbg !42
  br i1 %cmpinf, label %if.end5, label %lor.lhs.false, !dbg !43

lor.lhs.false:                                    ; preds = %if.end
  %6 = load double, double* %z, align 8, !dbg !44
  %call1 = call i32 @isnan(double %6), !dbg !45
  %tobool = icmp ne i32 %call1, 0, !dbg !45
  br i1 %tobool, label %if.end5, label %land.lhs.true, !dbg !46

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = load double, double* %x.addr, align 8, !dbg !47
  %8 = call double @llvm.fabs.f64(double %7) #4, !dbg !48
  %cmpinf2 = fcmp one double %8, 0x7FF0000000000000, !dbg !48
  br i1 %cmpinf2, label %if.then3, label %if.end5, !dbg !49

if.then3:                                         ; preds = %land.lhs.true
  %9 = load double, double* %x.addr, align 8, !dbg !50
  %10 = load double, double* %fn.addr, align 8, !dbg !52
  %call4 = call double @__kernel_standard(double %9, double %10, i32 32), !dbg !53
  store double %call4, double* %retval, align 8, !dbg !54
  br label %return, !dbg !54

if.end5:                                          ; preds = %land.lhs.true, %lor.lhs.false, %if.end
  %11 = load double, double* %z, align 8, !dbg !55
  %cmp6 = fcmp oeq double %11, 0.000000e+00, !dbg !57
  br i1 %cmp6, label %land.lhs.true7, label %if.end11, !dbg !58

land.lhs.true7:                                   ; preds = %if.end5
  %12 = load double, double* %z, align 8, !dbg !59
  %13 = load double, double* %x.addr, align 8, !dbg !60
  %cmp8 = fcmp une double %12, %13, !dbg !61
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !62

if.then9:                                         ; preds = %land.lhs.true7
  %14 = load double, double* %x.addr, align 8, !dbg !63
  %15 = load double, double* %fn.addr, align 8, !dbg !65
  %call10 = call double @__kernel_standard(double %14, double %15, i32 33), !dbg !66
  store double %call10, double* %retval, align 8, !dbg !67
  br label %return, !dbg !67

if.end11:                                         ; preds = %land.lhs.true7, %if.end5
  %16 = load double, double* %fn.addr, align 8, !dbg !68
  %17 = call double @llvm.fabs.f64(double %16) #4, !dbg !70
  %cmpinf12 = fcmp one double %17, 0x7FF0000000000000, !dbg !70
  br i1 %cmpinf12, label %if.end15, label %if.then13, !dbg !71

if.then13:                                        ; preds = %if.end11
  %call14 = call i32* @__errno_location() #5, !dbg !72
  store i32 34, i32* %call14, align 4, !dbg !73
  br label %if.end15, !dbg !72

if.end15:                                         ; preds = %if.then13, %if.end11
  %18 = load double, double* %z, align 8, !dbg !74
  store double %18, double* %retval, align 8, !dbg !75
  br label %return, !dbg !75

return:                                           ; preds = %if.end15, %if.then9, %if.then3, %if.then
  %19 = load double, double* %retval, align 8, !dbg !76
  ret double %19, !dbg !76
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local double @__ieee754_scalb(double, double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

declare dso_local i32 @isnan(double) #2

declare dso_local double @__kernel_standard(double, double, i32) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !77 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !80, metadata !DIExpression()), !dbg !81
  %0 = bitcast double* %a0 to i8*, !dbg !82
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !83
  call void @llvm.dbg.declare(metadata double* %a1, metadata !84, metadata !DIExpression()), !dbg !85
  %1 = bitcast double* %a1 to i8*, !dbg !86
  call void @klee_make_symbolic(i8* %1, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !87
  call void @llvm.dbg.declare(metadata double* %r, metadata !88, metadata !DIExpression()), !dbg !89
  %2 = load double, double* %a0, align 8, !dbg !90
  %3 = load double, double* %a1, align 8, !dbg !91
  %call = call double @scalb(double %2, double %3), !dbg !92
  store double %call, double* %r, align 8, !dbg !89
  ret i32 0, !dbg !93
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { readnone }
attributes #5 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "w_scalb.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fdversion", file: !4, line: 48, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./fdlibm.h", directory: "/home/klee/logic_bombs/fdlibm")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "fdlibm_ieee", value: -1)
!8 = !DIEnumerator(name: "fdlibm_svid", value: 0)
!9 = !DIEnumerator(name: "fdlibm_xopen", value: 1)
!10 = !DIEnumerator(name: "fdlibm_posix", value: 2)
!11 = !{!12}
!12 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!13 = !{i32 7, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!19 = distinct !DISubprogram(name: "scalb", scope: !20, file: !20, line: 28, type: !21, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!20 = !DIFile(filename: "./w_scalb.c", directory: "/home/klee/logic_bombs/fdlibm")
!21 = !DISubroutineType(types: !22)
!22 = !{!12, !12, !12}
!23 = !{}
!24 = !DILocalVariable(name: "x", arg: 1, scope: !19, file: !20, line: 28, type: !12)
!25 = !DILocation(line: 28, column: 22, scope: !19)
!26 = !DILocalVariable(name: "fn", arg: 2, scope: !19, file: !20, line: 28, type: !12)
!27 = !DILocation(line: 28, column: 32, scope: !19)
!28 = !DILocalVariable(name: "z", scope: !19, file: !20, line: 42, type: !12)
!29 = !DILocation(line: 42, column: 9, scope: !19)
!30 = !DILocation(line: 43, column: 22, scope: !19)
!31 = !DILocation(line: 43, column: 24, scope: !19)
!32 = !DILocation(line: 43, column: 6, scope: !19)
!33 = !DILocation(line: 43, column: 4, scope: !19)
!34 = !DILocation(line: 44, column: 5, scope: !35)
!35 = distinct !DILexicalBlock(scope: !19, file: !20, line: 44, column: 5)
!36 = !DILocation(line: 44, column: 18, scope: !35)
!37 = !DILocation(line: 44, column: 5, scope: !19)
!38 = !DILocation(line: 44, column: 36, scope: !35)
!39 = !DILocation(line: 44, column: 29, scope: !35)
!40 = !DILocation(line: 45, column: 14, scope: !41)
!41 = distinct !DILexicalBlock(scope: !19, file: !20, line: 45, column: 5)
!42 = !DILocation(line: 45, column: 7, scope: !41)
!43 = !DILocation(line: 45, column: 16, scope: !41)
!44 = !DILocation(line: 45, column: 24, scope: !41)
!45 = !DILocation(line: 45, column: 18, scope: !41)
!46 = !DILocation(line: 45, column: 27, scope: !41)
!47 = !DILocation(line: 45, column: 36, scope: !41)
!48 = !DILocation(line: 45, column: 29, scope: !41)
!49 = !DILocation(line: 45, column: 5, scope: !19)
!50 = !DILocation(line: 46, column: 31, scope: !51)
!51 = distinct !DILexicalBlock(scope: !41, file: !20, line: 45, column: 40)
!52 = !DILocation(line: 46, column: 41, scope: !51)
!53 = !DILocation(line: 46, column: 13, scope: !51)
!54 = !DILocation(line: 46, column: 6, scope: !51)
!55 = !DILocation(line: 48, column: 5, scope: !56)
!56 = distinct !DILexicalBlock(scope: !19, file: !20, line: 48, column: 5)
!57 = !DILocation(line: 48, column: 6, scope: !56)
!58 = !DILocation(line: 48, column: 11, scope: !56)
!59 = !DILocation(line: 48, column: 13, scope: !56)
!60 = !DILocation(line: 48, column: 16, scope: !56)
!61 = !DILocation(line: 48, column: 14, scope: !56)
!62 = !DILocation(line: 48, column: 5, scope: !19)
!63 = !DILocation(line: 49, column: 31, scope: !64)
!64 = distinct !DILexicalBlock(scope: !56, file: !20, line: 48, column: 19)
!65 = !DILocation(line: 49, column: 41, scope: !64)
!66 = !DILocation(line: 49, column: 13, scope: !64)
!67 = !DILocation(line: 49, column: 6, scope: !64)
!68 = !DILocation(line: 52, column: 13, scope: !69)
!69 = distinct !DILexicalBlock(scope: !19, file: !20, line: 52, column: 5)
!70 = !DILocation(line: 52, column: 6, scope: !69)
!71 = !DILocation(line: 52, column: 5, scope: !19)
!72 = !DILocation(line: 52, column: 18, scope: !69)
!73 = !DILocation(line: 52, column: 24, scope: !69)
!74 = !DILocation(line: 54, column: 9, scope: !19)
!75 = !DILocation(line: 54, column: 2, scope: !19)
!76 = !DILocation(line: 56, column: 1, scope: !19)
!77 = distinct !DISubprogram(name: "main", scope: !20, file: !20, line: 60, type: !78, scopeLine: 60, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!78 = !DISubroutineType(types: !79)
!79 = !{!5}
!80 = !DILocalVariable(name: "a0", scope: !77, file: !20, line: 61, type: !12)
!81 = !DILocation(line: 61, column: 12, scope: !77)
!82 = !DILocation(line: 62, column: 24, scope: !77)
!83 = !DILocation(line: 62, column: 5, scope: !77)
!84 = !DILocalVariable(name: "a1", scope: !77, file: !20, line: 63, type: !12)
!85 = !DILocation(line: 63, column: 12, scope: !77)
!86 = !DILocation(line: 64, column: 24, scope: !77)
!87 = !DILocation(line: 64, column: 5, scope: !77)
!88 = !DILocalVariable(name: "r", scope: !77, file: !20, line: 66, type: !12)
!89 = !DILocation(line: 66, column: 12, scope: !77)
!90 = !DILocation(line: 66, column: 22, scope: !77)
!91 = !DILocation(line: 66, column: 26, scope: !77)
!92 = !DILocation(line: 66, column: 16, scope: !77)
!93 = !DILocation(line: 67, column: 5, scope: !77)
