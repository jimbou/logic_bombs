; ModuleID = 's_ldexp.bc'
source_filename = "./s_ldexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @ldexp(double %value, i32 %exp) #0 !dbg !9 {
entry:
  %retval = alloca double, align 8
  %value.addr = alloca double, align 8
  %exp.addr = alloca i32, align 4
  store double %value, double* %value.addr, align 8
  call void @llvm.dbg.declare(metadata double* %value.addr, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 %exp, i32* %exp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %exp.addr, metadata !17, metadata !DIExpression()), !dbg !18
  %0 = load double, double* %value.addr, align 8, !dbg !19
  %1 = call double @llvm.fabs.f64(double %0) #5, !dbg !21
  %cmpinf = fcmp one double %1, 0x7FF0000000000000, !dbg !21
  br i1 %cmpinf, label %lor.lhs.false, label %if.then, !dbg !22

lor.lhs.false:                                    ; preds = %entry
  %2 = load double, double* %value.addr, align 8, !dbg !23
  %cmp = fcmp oeq double %2, 0.000000e+00, !dbg !24
  br i1 %cmp, label %if.then, label %if.end, !dbg !25

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load double, double* %value.addr, align 8, !dbg !26
  store double %3, double* %retval, align 8, !dbg !27
  br label %return, !dbg !27

if.end:                                           ; preds = %lor.lhs.false
  %4 = load double, double* %value.addr, align 8, !dbg !28
  %5 = load i32, i32* %exp.addr, align 4, !dbg !29
  %call = call double @scalbn(double %4, i32 %5) #6, !dbg !30
  store double %call, double* %value.addr, align 8, !dbg !31
  %6 = load double, double* %value.addr, align 8, !dbg !32
  %7 = call double @llvm.fabs.f64(double %6) #5, !dbg !34
  %cmpinf1 = fcmp one double %7, 0x7FF0000000000000, !dbg !34
  br i1 %cmpinf1, label %lor.lhs.false2, label %if.then4, !dbg !35

lor.lhs.false2:                                   ; preds = %if.end
  %8 = load double, double* %value.addr, align 8, !dbg !36
  %cmp3 = fcmp oeq double %8, 0.000000e+00, !dbg !37
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !38

if.then4:                                         ; preds = %lor.lhs.false2, %if.end
  %call5 = call i32* @__errno_location() #7, !dbg !39
  store i32 34, i32* %call5, align 4, !dbg !40
  br label %if.end6, !dbg !39

if.end6:                                          ; preds = %if.then4, %lor.lhs.false2
  %9 = load double, double* %value.addr, align 8, !dbg !41
  store double %9, double* %retval, align 8, !dbg !42
  br label %return, !dbg !42

return:                                           ; preds = %if.end6, %if.then
  %10 = load double, double* %retval, align 8, !dbg !43
  ret double %10, !dbg !43
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nounwind
declare dso_local double @scalbn(double, i32) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !44 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca i32, align 4
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !47, metadata !DIExpression()), !dbg !48
  %0 = bitcast double* %a0 to i8*, !dbg !49
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !50
  call void @llvm.dbg.declare(metadata i32* %a1, metadata !51, metadata !DIExpression()), !dbg !52
  %1 = bitcast i32* %a1 to i8*, !dbg !53
  call void @klee_make_symbolic(i8* %1, i64 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !54
  call void @llvm.dbg.declare(metadata double* %r, metadata !55, metadata !DIExpression()), !dbg !56
  %2 = load double, double* %a0, align 8, !dbg !57
  %3 = load i32, i32* %a1, align 4, !dbg !58
  %call = call double @ldexp(double %2, i32 %3) #6, !dbg !59
  store double %call, double* %r, align 8, !dbg !56
  ret i32 0, !dbg !60
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "s_ldexp.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!9 = distinct !DISubprogram(name: "ldexp", scope: !10, file: !10, line: 18, type: !11, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DIFile(filename: "./s_ldexp.c", directory: "/home/klee/logic_bombs/fdlibm")
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !14}
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DILocalVariable(name: "value", arg: 1, scope: !9, file: !10, line: 18, type: !13)
!16 = !DILocation(line: 18, column: 22, scope: !9)
!17 = !DILocalVariable(name: "exp", arg: 2, scope: !9, file: !10, line: 18, type: !14)
!18 = !DILocation(line: 18, column: 33, scope: !9)
!19 = !DILocation(line: 24, column: 13, scope: !20)
!20 = distinct !DILexicalBlock(scope: !9, file: !10, line: 24, column: 5)
!21 = !DILocation(line: 24, column: 6, scope: !20)
!22 = !DILocation(line: 24, column: 19, scope: !20)
!23 = !DILocation(line: 24, column: 21, scope: !20)
!24 = !DILocation(line: 24, column: 26, scope: !20)
!25 = !DILocation(line: 24, column: 5, scope: !9)
!26 = !DILocation(line: 24, column: 40, scope: !20)
!27 = !DILocation(line: 24, column: 33, scope: !20)
!28 = !DILocation(line: 25, column: 17, scope: !9)
!29 = !DILocation(line: 25, column: 23, scope: !9)
!30 = !DILocation(line: 25, column: 10, scope: !9)
!31 = !DILocation(line: 25, column: 8, scope: !9)
!32 = !DILocation(line: 26, column: 13, scope: !33)
!33 = distinct !DILexicalBlock(scope: !9, file: !10, line: 26, column: 5)
!34 = !DILocation(line: 26, column: 6, scope: !33)
!35 = !DILocation(line: 26, column: 19, scope: !33)
!36 = !DILocation(line: 26, column: 21, scope: !33)
!37 = !DILocation(line: 26, column: 26, scope: !33)
!38 = !DILocation(line: 26, column: 5, scope: !9)
!39 = !DILocation(line: 26, column: 33, scope: !33)
!40 = !DILocation(line: 26, column: 39, scope: !33)
!41 = !DILocation(line: 27, column: 9, scope: !9)
!42 = !DILocation(line: 27, column: 2, scope: !9)
!43 = !DILocation(line: 28, column: 1, scope: !9)
!44 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 32, type: !45, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!45 = !DISubroutineType(types: !46)
!46 = !{!14}
!47 = !DILocalVariable(name: "a0", scope: !44, file: !10, line: 33, type: !13)
!48 = !DILocation(line: 33, column: 12, scope: !44)
!49 = !DILocation(line: 34, column: 24, scope: !44)
!50 = !DILocation(line: 34, column: 5, scope: !44)
!51 = !DILocalVariable(name: "a1", scope: !44, file: !10, line: 35, type: !14)
!52 = !DILocation(line: 35, column: 9, scope: !44)
!53 = !DILocation(line: 36, column: 24, scope: !44)
!54 = !DILocation(line: 36, column: 5, scope: !44)
!55 = !DILocalVariable(name: "r", scope: !44, file: !10, line: 38, type: !13)
!56 = !DILocation(line: 38, column: 12, scope: !44)
!57 = !DILocation(line: 38, column: 22, scope: !44)
!58 = !DILocation(line: 38, column: 26, scope: !44)
!59 = !DILocation(line: 38, column: 16, scope: !44)
!60 = !DILocation(line: 39, column: 5, scope: !44)
