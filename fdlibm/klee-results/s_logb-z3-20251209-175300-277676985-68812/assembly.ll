; ModuleID = 's_logb.bc'
source_filename = "./s_logb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @logb(double %x) #0 !dbg !13 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %lx = alloca i32, align 4
  %ix = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %lx, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !21, metadata !DIExpression()), !dbg !22
  %0 = bitcast double* %x.addr to i32*, !dbg !23
  %1 = load i32, i32* %0, align 8, !dbg !23
  %and = and i32 %1, 2147483647, !dbg !24
  store i32 %and, i32* %ix, align 4, !dbg !25
  %2 = bitcast double* %x.addr to i32*, !dbg !26
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 1, !dbg !26
  %3 = load i32, i32* %add.ptr, align 4, !dbg !26
  store i32 %3, i32* %lx, align 4, !dbg !27
  %4 = load i32, i32* %ix, align 4, !dbg !28
  %5 = load i32, i32* %lx, align 4, !dbg !30
  %or = or i32 %4, %5, !dbg !31
  %cmp = icmp eq i32 %or, 0, !dbg !32
  br i1 %cmp, label %if.then, label %if.end, !dbg !33

if.then:                                          ; preds = %entry
  %6 = load double, double* %x.addr, align 8, !dbg !34
  %7 = call double @llvm.fabs.f64(double %6), !dbg !35
  %div = fdiv double -1.000000e+00, %7, !dbg !36
  store double %div, double* %retval, align 8, !dbg !37
  br label %return, !dbg !37

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %ix, align 4, !dbg !38
  %cmp1 = icmp sge i32 %8, 2146435072, !dbg !40
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !41

if.then2:                                         ; preds = %if.end
  %9 = load double, double* %x.addr, align 8, !dbg !42
  %10 = load double, double* %x.addr, align 8, !dbg !43
  %mul = fmul double %9, %10, !dbg !44
  store double %mul, double* %retval, align 8, !dbg !45
  br label %return, !dbg !45

if.end3:                                          ; preds = %if.end
  %11 = load i32, i32* %ix, align 4, !dbg !46
  %shr = ashr i32 %11, 20, !dbg !46
  store i32 %shr, i32* %ix, align 4, !dbg !46
  %cmp4 = icmp eq i32 %shr, 0, !dbg !48
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !49

if.then5:                                         ; preds = %if.end3
  store double -1.022000e+03, double* %retval, align 8, !dbg !50
  br label %return, !dbg !50

if.else:                                          ; preds = %if.end3
  %12 = load i32, i32* %ix, align 4, !dbg !51
  %sub = sub nsw i32 %12, 1023, !dbg !52
  %conv = sitofp i32 %sub to double, !dbg !53
  store double %conv, double* %retval, align 8, !dbg !54
  br label %return, !dbg !54

return:                                           ; preds = %if.else, %if.then5, %if.then2, %if.then
  %13 = load double, double* %retval, align 8, !dbg !55
  ret double %13, !dbg !55
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !56 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !59, metadata !DIExpression()), !dbg !60
  %0 = bitcast double* %a0 to i8*, !dbg !61
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !62
  call void @llvm.dbg.declare(metadata double* %r, metadata !63, metadata !DIExpression()), !dbg !64
  %1 = load double, double* %a0, align 8, !dbg !65
  %call = call double @logb(double %1) #3, !dbg !66
  store double %call, double* %r, align 8, !dbg !64
  ret i32 0, !dbg !67
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "s_logb.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!13 = distinct !DISubprogram(name: "logb", scope: !14, file: !14, line: 23, type: !15, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!14 = !DIFile(filename: "./s_logb.c", directory: "/home/klee/logic_bombs/fdlibm")
!15 = !DISubroutineType(types: !16)
!16 = !{!6, !6}
!17 = !DILocalVariable(name: "x", arg: 1, scope: !13, file: !14, line: 23, type: !6)
!18 = !DILocation(line: 23, column: 21, scope: !13)
!19 = !DILocalVariable(name: "lx", scope: !13, file: !14, line: 29, type: !5)
!20 = !DILocation(line: 29, column: 6, scope: !13)
!21 = !DILocalVariable(name: "ix", scope: !13, file: !14, line: 29, type: !5)
!22 = !DILocation(line: 29, column: 9, scope: !13)
!23 = !DILocation(line: 30, column: 8, scope: !13)
!24 = !DILocation(line: 30, column: 16, scope: !13)
!25 = !DILocation(line: 30, column: 5, scope: !13)
!26 = !DILocation(line: 31, column: 7, scope: !13)
!27 = !DILocation(line: 31, column: 5, scope: !13)
!28 = !DILocation(line: 32, column: 6, scope: !29)
!29 = distinct !DILexicalBlock(scope: !13, file: !14, line: 32, column: 5)
!30 = !DILocation(line: 32, column: 9, scope: !29)
!31 = !DILocation(line: 32, column: 8, scope: !29)
!32 = !DILocation(line: 32, column: 12, scope: !29)
!33 = !DILocation(line: 32, column: 5, scope: !13)
!34 = !DILocation(line: 32, column: 34, scope: !29)
!35 = !DILocation(line: 32, column: 29, scope: !29)
!36 = !DILocation(line: 32, column: 28, scope: !29)
!37 = !DILocation(line: 32, column: 17, scope: !29)
!38 = !DILocation(line: 33, column: 5, scope: !39)
!39 = distinct !DILexicalBlock(scope: !13, file: !14, line: 33, column: 5)
!40 = !DILocation(line: 33, column: 7, scope: !39)
!41 = !DILocation(line: 33, column: 5, scope: !13)
!42 = !DILocation(line: 33, column: 28, scope: !39)
!43 = !DILocation(line: 33, column: 30, scope: !39)
!44 = !DILocation(line: 33, column: 29, scope: !39)
!45 = !DILocation(line: 33, column: 21, scope: !39)
!46 = !DILocation(line: 34, column: 8, scope: !47)
!47 = distinct !DILexicalBlock(scope: !13, file: !14, line: 34, column: 5)
!48 = !DILocation(line: 34, column: 14, scope: !47)
!49 = !DILocation(line: 34, column: 5, scope: !13)
!50 = !DILocation(line: 35, column: 3, scope: !47)
!51 = !DILocation(line: 37, column: 20, scope: !47)
!52 = !DILocation(line: 37, column: 22, scope: !47)
!53 = !DILocation(line: 37, column: 10, scope: !47)
!54 = !DILocation(line: 37, column: 3, scope: !47)
!55 = !DILocation(line: 38, column: 1, scope: !13)
!56 = distinct !DISubprogram(name: "main", scope: !14, file: !14, line: 42, type: !57, scopeLine: 42, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!57 = !DISubroutineType(types: !58)
!58 = !{!5}
!59 = !DILocalVariable(name: "a0", scope: !56, file: !14, line: 43, type: !6)
!60 = !DILocation(line: 43, column: 12, scope: !56)
!61 = !DILocation(line: 44, column: 24, scope: !56)
!62 = !DILocation(line: 44, column: 5, scope: !56)
!63 = !DILocalVariable(name: "r", scope: !56, file: !14, line: 46, type: !6)
!64 = !DILocation(line: 46, column: 12, scope: !56)
!65 = !DILocation(line: 46, column: 21, scope: !56)
!66 = !DILocation(line: 46, column: 16, scope: !56)
!67 = !DILocation(line: 47, column: 5, scope: !56)
