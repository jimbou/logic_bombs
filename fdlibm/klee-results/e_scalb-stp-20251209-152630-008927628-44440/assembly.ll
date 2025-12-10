; ModuleID = 'e_scalb.bc'
source_filename = "./e_scalb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_scalb(double %x, double %fn) #0 !dbg !11 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %fn.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store double %fn, double* %fn.addr, align 8
  call void @llvm.dbg.declare(metadata double* %fn.addr, metadata !18, metadata !DIExpression()), !dbg !19
  %0 = load double, double* %x.addr, align 8, !dbg !20
  %call = call i32 @isnan(double %0), !dbg !22
  %tobool = icmp ne i32 %call, 0, !dbg !22
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !23

lor.lhs.false:                                    ; preds = %entry
  %1 = load double, double* %fn.addr, align 8, !dbg !24
  %call1 = call i32 @isnan(double %1), !dbg !25
  %tobool2 = icmp ne i32 %call1, 0, !dbg !25
  br i1 %tobool2, label %if.then, label %if.end, !dbg !26

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load double, double* %x.addr, align 8, !dbg !27
  %3 = load double, double* %fn.addr, align 8, !dbg !28
  %mul = fmul double %2, %3, !dbg !29
  store double %mul, double* %retval, align 8, !dbg !30
  br label %return, !dbg !30

if.end:                                           ; preds = %lor.lhs.false
  %4 = load double, double* %fn.addr, align 8, !dbg !31
  %5 = call double @llvm.fabs.f64(double %4) #4, !dbg !33
  %cmpinf = fcmp one double %5, 0x7FF0000000000000, !dbg !33
  br i1 %cmpinf, label %if.end6, label %if.then3, !dbg !34

if.then3:                                         ; preds = %if.end
  %6 = load double, double* %fn.addr, align 8, !dbg !35
  %cmp = fcmp ogt double %6, 0.000000e+00, !dbg !38
  br i1 %cmp, label %if.then4, label %if.else, !dbg !39

if.then4:                                         ; preds = %if.then3
  %7 = load double, double* %x.addr, align 8, !dbg !40
  %8 = load double, double* %fn.addr, align 8, !dbg !41
  %mul5 = fmul double %7, %8, !dbg !42
  store double %mul5, double* %retval, align 8, !dbg !43
  br label %return, !dbg !43

if.else:                                          ; preds = %if.then3
  %9 = load double, double* %x.addr, align 8, !dbg !44
  %10 = load double, double* %fn.addr, align 8, !dbg !45
  %fneg = fneg double %10, !dbg !46
  %div = fdiv double %9, %fneg, !dbg !47
  store double %div, double* %retval, align 8, !dbg !48
  br label %return, !dbg !48

if.end6:                                          ; preds = %if.end
  %11 = load double, double* %fn.addr, align 8, !dbg !49
  %12 = call double @llvm.rint.f64(double %11), !dbg !51
  %13 = load double, double* %fn.addr, align 8, !dbg !52
  %cmp7 = fcmp une double %12, %13, !dbg !53
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !54

if.then8:                                         ; preds = %if.end6
  %14 = load double, double* %fn.addr, align 8, !dbg !55
  %15 = load double, double* %fn.addr, align 8, !dbg !56
  %sub = fsub double %14, %15, !dbg !57
  %16 = load double, double* %fn.addr, align 8, !dbg !58
  %17 = load double, double* %fn.addr, align 8, !dbg !59
  %sub9 = fsub double %16, %17, !dbg !60
  %div10 = fdiv double %sub, %sub9, !dbg !61
  store double %div10, double* %retval, align 8, !dbg !62
  br label %return, !dbg !62

if.end11:                                         ; preds = %if.end6
  %18 = load double, double* %fn.addr, align 8, !dbg !63
  %cmp12 = fcmp ogt double %18, 6.500000e+04, !dbg !65
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !66

if.then13:                                        ; preds = %if.end11
  %19 = load double, double* %x.addr, align 8, !dbg !67
  %call14 = call double @scalbn(double %19, i32 65000) #5, !dbg !68
  store double %call14, double* %retval, align 8, !dbg !69
  br label %return, !dbg !69

if.end15:                                         ; preds = %if.end11
  %20 = load double, double* %fn.addr, align 8, !dbg !70
  %fneg16 = fneg double %20, !dbg !72
  %cmp17 = fcmp ogt double %fneg16, 6.500000e+04, !dbg !73
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !74

if.then18:                                        ; preds = %if.end15
  %21 = load double, double* %x.addr, align 8, !dbg !75
  %call19 = call double @scalbn(double %21, i32 -65000) #5, !dbg !76
  store double %call19, double* %retval, align 8, !dbg !77
  br label %return, !dbg !77

if.end20:                                         ; preds = %if.end15
  %22 = load double, double* %x.addr, align 8, !dbg !78
  %23 = load double, double* %fn.addr, align 8, !dbg !79
  %conv = fptosi double %23 to i32, !dbg !80
  %call21 = call double @scalbn(double %22, i32 %conv) #5, !dbg !81
  store double %call21, double* %retval, align 8, !dbg !82
  br label %return, !dbg !82

return:                                           ; preds = %if.end20, %if.then18, %if.then13, %if.then8, %if.else, %if.then4, %if.then
  %24 = load double, double* %retval, align 8, !dbg !83
  ret double %24, !dbg !83
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @isnan(double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.rint.f64(double) #1

; Function Attrs: nounwind
declare dso_local double @scalbn(double, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !84 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !86, metadata !DIExpression()), !dbg !87
  %0 = bitcast double* %a0 to i8*, !dbg !88
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !89
  call void @llvm.dbg.declare(metadata double* %a1, metadata !90, metadata !DIExpression()), !dbg !91
  %1 = bitcast double* %a1 to i8*, !dbg !92
  call void @klee_make_symbolic(i8* %1, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !93
  call void @llvm.dbg.declare(metadata double* %r, metadata !94, metadata !DIExpression()), !dbg !95
  %2 = load double, double* %a0, align 8, !dbg !96
  %3 = load double, double* %a1, align 8, !dbg !97
  %call = call double @__ieee754_scalb(double %2, double %3), !dbg !98
  store double %call, double* %r, align 8, !dbg !95
  ret i32 0, !dbg !99
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { readnone }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "e_scalb.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!11 = distinct !DISubprogram(name: "__ieee754_scalb", scope: !12, file: !12, line: 31, type: !13, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!12 = !DIFile(filename: "./e_scalb.c", directory: "/home/klee/logic_bombs/fdlibm")
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !15, !15}
!15 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!16 = !DILocalVariable(name: "x", arg: 1, scope: !11, file: !12, line: 31, type: !15)
!17 = !DILocation(line: 31, column: 32, scope: !11)
!18 = !DILocalVariable(name: "fn", arg: 2, scope: !11, file: !12, line: 31, type: !15)
!19 = !DILocation(line: 31, column: 42, scope: !11)
!20 = !DILocation(line: 41, column: 12, scope: !21)
!21 = distinct !DILexicalBlock(scope: !11, file: !12, line: 41, column: 6)
!22 = !DILocation(line: 41, column: 6, scope: !21)
!23 = !DILocation(line: 41, column: 14, scope: !21)
!24 = !DILocation(line: 41, column: 22, scope: !21)
!25 = !DILocation(line: 41, column: 16, scope: !21)
!26 = !DILocation(line: 41, column: 6, scope: !11)
!27 = !DILocation(line: 41, column: 34, scope: !21)
!28 = !DILocation(line: 41, column: 36, scope: !21)
!29 = !DILocation(line: 41, column: 35, scope: !21)
!30 = !DILocation(line: 41, column: 27, scope: !21)
!31 = !DILocation(line: 42, column: 14, scope: !32)
!32 = distinct !DILexicalBlock(scope: !11, file: !12, line: 42, column: 6)
!33 = !DILocation(line: 42, column: 7, scope: !32)
!34 = !DILocation(line: 42, column: 6, scope: !11)
!35 = !DILocation(line: 43, column: 9, scope: !36)
!36 = distinct !DILexicalBlock(scope: !37, file: !12, line: 43, column: 9)
!37 = distinct !DILexicalBlock(scope: !32, file: !12, line: 42, column: 19)
!38 = !DILocation(line: 43, column: 11, scope: !36)
!39 = !DILocation(line: 43, column: 9, scope: !37)
!40 = !DILocation(line: 43, column: 24, scope: !36)
!41 = !DILocation(line: 43, column: 26, scope: !36)
!42 = !DILocation(line: 43, column: 25, scope: !36)
!43 = !DILocation(line: 43, column: 17, scope: !36)
!44 = !DILocation(line: 44, column: 24, scope: !36)
!45 = !DILocation(line: 44, column: 28, scope: !36)
!46 = !DILocation(line: 44, column: 27, scope: !36)
!47 = !DILocation(line: 44, column: 25, scope: !36)
!48 = !DILocation(line: 44, column: 17, scope: !36)
!49 = !DILocation(line: 46, column: 11, scope: !50)
!50 = distinct !DILexicalBlock(scope: !11, file: !12, line: 46, column: 6)
!51 = !DILocation(line: 46, column: 6, scope: !50)
!52 = !DILocation(line: 46, column: 16, scope: !50)
!53 = !DILocation(line: 46, column: 14, scope: !50)
!54 = !DILocation(line: 46, column: 6, scope: !11)
!55 = !DILocation(line: 46, column: 28, scope: !50)
!56 = !DILocation(line: 46, column: 31, scope: !50)
!57 = !DILocation(line: 46, column: 30, scope: !50)
!58 = !DILocation(line: 46, column: 36, scope: !50)
!59 = !DILocation(line: 46, column: 39, scope: !50)
!60 = !DILocation(line: 46, column: 38, scope: !50)
!61 = !DILocation(line: 46, column: 34, scope: !50)
!62 = !DILocation(line: 46, column: 20, scope: !50)
!63 = !DILocation(line: 47, column: 7, scope: !64)
!64 = distinct !DILexicalBlock(scope: !11, file: !12, line: 47, column: 7)
!65 = !DILocation(line: 47, column: 10, scope: !64)
!66 = !DILocation(line: 47, column: 7, scope: !11)
!67 = !DILocation(line: 47, column: 35, scope: !64)
!68 = !DILocation(line: 47, column: 28, scope: !64)
!69 = !DILocation(line: 47, column: 21, scope: !64)
!70 = !DILocation(line: 48, column: 7, scope: !71)
!71 = distinct !DILexicalBlock(scope: !11, file: !12, line: 48, column: 6)
!72 = !DILocation(line: 48, column: 6, scope: !71)
!73 = !DILocation(line: 48, column: 10, scope: !71)
!74 = !DILocation(line: 48, column: 6, scope: !11)
!75 = !DILocation(line: 48, column: 35, scope: !71)
!76 = !DILocation(line: 48, column: 28, scope: !71)
!77 = !DILocation(line: 48, column: 21, scope: !71)
!78 = !DILocation(line: 49, column: 16, scope: !11)
!79 = !DILocation(line: 49, column: 23, scope: !11)
!80 = !DILocation(line: 49, column: 18, scope: !11)
!81 = !DILocation(line: 49, column: 9, scope: !11)
!82 = !DILocation(line: 49, column: 2, scope: !11)
!83 = !DILocation(line: 51, column: 1, scope: !11)
!84 = distinct !DISubprogram(name: "main", scope: !12, file: !12, line: 55, type: !85, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!85 = !DISubroutineType(types: !3)
!86 = !DILocalVariable(name: "a0", scope: !84, file: !12, line: 56, type: !15)
!87 = !DILocation(line: 56, column: 12, scope: !84)
!88 = !DILocation(line: 57, column: 24, scope: !84)
!89 = !DILocation(line: 57, column: 5, scope: !84)
!90 = !DILocalVariable(name: "a1", scope: !84, file: !12, line: 58, type: !15)
!91 = !DILocation(line: 58, column: 12, scope: !84)
!92 = !DILocation(line: 59, column: 24, scope: !84)
!93 = !DILocation(line: 59, column: 5, scope: !84)
!94 = !DILocalVariable(name: "r", scope: !84, file: !12, line: 61, type: !15)
!95 = !DILocation(line: 61, column: 12, scope: !84)
!96 = !DILocation(line: 61, column: 32, scope: !84)
!97 = !DILocation(line: 61, column: 36, scope: !84)
!98 = !DILocation(line: 61, column: 16, scope: !84)
!99 = !DILocation(line: 62, column: 5, scope: !84)
