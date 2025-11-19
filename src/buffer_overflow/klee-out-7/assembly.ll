; ModuleID = 'tmp1.bc'
source_filename = "stacknocrash_bo_l1_klee_annotated_correct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"0 && \22Path without the bomb\22\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"stacknocrash_bo_l1_klee_annotated_correct.c\00", align 1
@__PRETTY_FUNCTION__.logic_bomb = private unnamed_addr constant [23 x i8] c"int logic_bomb(char *)\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"0 && \22Logic bomb triggered\22\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"symvar\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @logic_bomb(i8* %symvar) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %symvar.addr = alloca i8*, align 8
  %flag = alloca i32, align 4
  %buf = alloca [8 x i8], align 1
  store i8* %symvar, i8** %symvar.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %symvar.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %flag, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %flag, align 4, !dbg !18
  call void @llvm.dbg.declare(metadata [8 x i8]* %buf, metadata !19, metadata !DIExpression()), !dbg !23
  %0 = load i8*, i8** %symvar.addr, align 8, !dbg !24
  %call = call i64 @strlen(i8* %0) #6, !dbg !26
  %cmp = icmp ugt i64 %call, 9, !dbg !27
  br i1 %cmp, label %if.then, label %if.end, !dbg !28

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i64 0, i64 0)), !dbg !29
  store i32 0, i32* %retval, align 4, !dbg !31
  br label %return, !dbg !31

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0, !dbg !32
  %1 = load i8*, i8** %symvar.addr, align 8, !dbg !33
  %call2 = call i8* @strcpy(i8* %arraydecay, i8* %1) #7, !dbg !34
  %2 = load i32, i32* %flag, align 4, !dbg !35
  %cmp3 = icmp eq i32 %2, 1, !dbg !37
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !38

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i64 0, i64 0)), !dbg !39
  store i32 0, i32* %retval, align 4, !dbg !41
  br label %return, !dbg !41

if.end6:                                          ; preds = %if.end
  %call7 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i64 0, i64 0)), !dbg !42
  store i32 0, i32* %retval, align 4, !dbg !43
  br label %return, !dbg !43

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !44
  ret i32 %3, !dbg !44
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @__assert_fail(...) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !45 {
entry:
  %retval = alloca i32, align 4
  %N = alloca i32, align 4
  %i = alloca i32, align 4
  %symvar = alloca [65 x i8], align 16
  %k = alloca i32, align 4
  %k18 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %N, metadata !48, metadata !DIExpression()), !dbg !50
  store i32 10, i32* %N, align 4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %i, metadata !51, metadata !DIExpression()), !dbg !53
  store i32 0, i32* %i, align 4, !dbg !53
  br label %for.cond, !dbg !54

for.cond:                                         ; preds = %for.inc39, %entry
  %0 = load i32, i32* %i, align 4, !dbg !55
  %cmp = icmp slt i32 %0, 10, !dbg !57
  br i1 %cmp, label %for.body, label %for.end41, !dbg !58

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata [65 x i8]* %symvar, metadata !59, metadata !DIExpression()), !dbg !64
  %arraydecay = getelementptr inbounds [65 x i8], [65 x i8]* %symvar, i64 0, i64 0, !dbg !65
  call void @klee_make_symbolic(i8* %arraydecay, i64 65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !66
  %arrayidx = getelementptr inbounds [65 x i8], [65 x i8]* %symvar, i64 0, i64 64, !dbg !67
  %1 = load i8, i8* %arrayidx, align 16, !dbg !67
  %conv = sext i8 %1 to i32, !dbg !67
  %cmp1 = icmp eq i32 %conv, 0, !dbg !68
  %conv2 = zext i1 %cmp1 to i32, !dbg !68
  %conv3 = sext i32 %conv2 to i64, !dbg !67
  call void @klee_assume(i64 %conv3), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %k, metadata !70, metadata !DIExpression()), !dbg !72
  store i32 0, i32* %k, align 4, !dbg !72
  br label %for.cond4, !dbg !73

for.cond4:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %k, align 4, !dbg !74
  %cmp5 = icmp slt i32 %2, 9, !dbg !76
  br i1 %cmp5, label %for.body7, label %for.end, !dbg !77

for.body7:                                        ; preds = %for.cond4
  %3 = load i32, i32* %k, align 4, !dbg !78
  %idxprom = sext i32 %3 to i64, !dbg !79
  %arrayidx8 = getelementptr inbounds [65 x i8], [65 x i8]* %symvar, i64 0, i64 %idxprom, !dbg !79
  %4 = load i8, i8* %arrayidx8, align 1, !dbg !79
  %conv9 = sext i8 %4 to i32, !dbg !79
  %cmp10 = icmp ne i32 %conv9, 0, !dbg !80
  %conv11 = zext i1 %cmp10 to i32, !dbg !80
  %conv12 = sext i32 %conv11 to i64, !dbg !79
  call void @klee_assume(i64 %conv12), !dbg !81
  br label %for.inc, !dbg !81

for.inc:                                          ; preds = %for.body7
  %5 = load i32, i32* %k, align 4, !dbg !82
  %inc = add nsw i32 %5, 1, !dbg !82
  store i32 %inc, i32* %k, align 4, !dbg !82
  br label %for.cond4, !dbg !83, !llvm.loop !84

for.end:                                          ; preds = %for.cond4
  %arrayidx13 = getelementptr inbounds [65 x i8], [65 x i8]* %symvar, i64 0, i64 9, !dbg !87
  %6 = load i8, i8* %arrayidx13, align 1, !dbg !87
  %conv14 = sext i8 %6 to i32, !dbg !87
  %cmp15 = icmp eq i32 %conv14, 0, !dbg !88
  %conv16 = zext i1 %cmp15 to i32, !dbg !88
  %conv17 = sext i32 %conv16 to i64, !dbg !87
  call void @klee_assume(i64 %conv17), !dbg !89
  call void @llvm.dbg.declare(metadata i32* %k18, metadata !90, metadata !DIExpression()), !dbg !92
  store i32 10, i32* %k18, align 4, !dbg !92
  br label %for.cond19, !dbg !93

for.cond19:                                       ; preds = %for.inc35, %for.end
  %7 = load i32, i32* %k18, align 4, !dbg !94
  %cmp20 = icmp slt i32 %7, 20, !dbg !96
  br i1 %cmp20, label %for.body22, label %for.end37, !dbg !97

for.body22:                                       ; preds = %for.cond19
  %8 = load i32, i32* %k18, align 4, !dbg !98
  %idxprom23 = sext i32 %8 to i64, !dbg !100
  %arrayidx24 = getelementptr inbounds [65 x i8], [65 x i8]* %symvar, i64 0, i64 %idxprom23, !dbg !100
  %9 = load i8, i8* %arrayidx24, align 1, !dbg !100
  %conv25 = sext i8 %9 to i32, !dbg !100
  %cmp26 = icmp sge i32 %conv25, 0, !dbg !101
  %conv27 = zext i1 %cmp26 to i32, !dbg !101
  %conv28 = sext i32 %conv27 to i64, !dbg !100
  call void @klee_assume(i64 %conv28), !dbg !102
  %10 = load i32, i32* %k18, align 4, !dbg !103
  %idxprom29 = sext i32 %10 to i64, !dbg !104
  %arrayidx30 = getelementptr inbounds [65 x i8], [65 x i8]* %symvar, i64 0, i64 %idxprom29, !dbg !104
  %11 = load i8, i8* %arrayidx30, align 1, !dbg !104
  %conv31 = sext i8 %11 to i32, !dbg !104
  %cmp32 = icmp sle i32 %conv31, 3, !dbg !105
  %conv33 = zext i1 %cmp32 to i32, !dbg !105
  %conv34 = sext i32 %conv33 to i64, !dbg !104
  call void @klee_assume(i64 %conv34), !dbg !106
  br label %for.inc35, !dbg !107

for.inc35:                                        ; preds = %for.body22
  %12 = load i32, i32* %k18, align 4, !dbg !108
  %inc36 = add nsw i32 %12, 1, !dbg !108
  store i32 %inc36, i32* %k18, align 4, !dbg !108
  br label %for.cond19, !dbg !109, !llvm.loop !110

for.end37:                                        ; preds = %for.cond19
  %arraydecay38 = getelementptr inbounds [65 x i8], [65 x i8]* %symvar, i64 0, i64 0, !dbg !112
  %call = call i32 @logic_bomb(i8* %arraydecay38), !dbg !113
  br label %for.inc39, !dbg !114

for.inc39:                                        ; preds = %for.end37
  %13 = load i32, i32* %i, align 4, !dbg !115
  %inc40 = add nsw i32 %13, 1, !dbg !115
  store i32 %inc40, i32* %i, align 4, !dbg !115
  br label %for.cond, !dbg !116, !llvm.loop !117

for.end41:                                        ; preds = %for.cond
  ret i32 0, !dbg !119
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #5

declare dso_local void @klee_assume(i64) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "stacknocrash_bo_l1_klee_annotated_correct.c", directory: "/home/klee/logic_bombs/src/buffer_overflow")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!9 = distinct !DISubprogram(name: "logic_bomb", scope: !1, file: !1, line: 8, type: !10, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "symvar", arg: 1, scope: !9, file: !1, line: 8, type: !13)
!16 = !DILocation(line: 8, column: 22, scope: !9)
!17 = !DILocalVariable(name: "flag", scope: !9, file: !1, line: 9, type: !12)
!18 = !DILocation(line: 9, column: 9, scope: !9)
!19 = !DILocalVariable(name: "buf", scope: !9, file: !1, line: 10, type: !20)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 8)
!23 = !DILocation(line: 10, column: 10, scope: !9)
!24 = !DILocation(line: 11, column: 15, scope: !25)
!25 = distinct !DILexicalBlock(scope: !9, file: !1, line: 11, column: 8)
!26 = !DILocation(line: 11, column: 8, scope: !25)
!27 = !DILocation(line: 11, column: 23, scope: !25)
!28 = !DILocation(line: 11, column: 8, scope: !9)
!29 = !DILocation(line: 12, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !25, file: !1, line: 11, column: 27)
!31 = !DILocation(line: 13, column: 9, scope: !30)
!32 = !DILocation(line: 15, column: 12, scope: !9)
!33 = !DILocation(line: 15, column: 17, scope: !9)
!34 = !DILocation(line: 15, column: 5, scope: !9)
!35 = !DILocation(line: 16, column: 8, scope: !36)
!36 = distinct !DILexicalBlock(scope: !9, file: !1, line: 16, column: 8)
!37 = !DILocation(line: 16, column: 13, scope: !36)
!38 = !DILocation(line: 16, column: 8, scope: !9)
!39 = !DILocation(line: 17, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !1, line: 16, column: 18)
!41 = !DILocation(line: 18, column: 9, scope: !40)
!42 = !DILocation(line: 20, column: 5, scope: !9)
!43 = !DILocation(line: 21, column: 5, scope: !9)
!44 = !DILocation(line: 22, column: 1, scope: !9)
!45 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 25, type: !46, scopeLine: 25, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!46 = !DISubroutineType(types: !47)
!47 = !{!12}
!48 = !DILocalVariable(name: "N", scope: !45, file: !1, line: 28, type: !49)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!50 = !DILocation(line: 28, column: 15, scope: !45)
!51 = !DILocalVariable(name: "i", scope: !52, file: !1, line: 30, type: !12)
!52 = distinct !DILexicalBlock(scope: !45, file: !1, line: 30, column: 5)
!53 = !DILocation(line: 30, column: 14, scope: !52)
!54 = !DILocation(line: 30, column: 10, scope: !52)
!55 = !DILocation(line: 30, column: 21, scope: !56)
!56 = distinct !DILexicalBlock(scope: !52, file: !1, line: 30, column: 5)
!57 = !DILocation(line: 30, column: 23, scope: !56)
!58 = !DILocation(line: 30, column: 5, scope: !52)
!59 = !DILocalVariable(name: "symvar", scope: !60, file: !1, line: 32, type: !61)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 30, column: 33)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 520, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 65)
!64 = !DILocation(line: 32, column: 14, scope: !60)
!65 = !DILocation(line: 33, column: 28, scope: !60)
!66 = !DILocation(line: 33, column: 9, scope: !60)
!67 = !DILocation(line: 36, column: 21, scope: !60)
!68 = !DILocation(line: 36, column: 32, scope: !60)
!69 = !DILocation(line: 36, column: 9, scope: !60)
!70 = !DILocalVariable(name: "k", scope: !71, file: !1, line: 48, type: !12)
!71 = distinct !DILexicalBlock(scope: !60, file: !1, line: 48, column: 9)
!72 = !DILocation(line: 48, column: 18, scope: !71)
!73 = !DILocation(line: 48, column: 14, scope: !71)
!74 = !DILocation(line: 48, column: 25, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 48, column: 9)
!76 = !DILocation(line: 48, column: 27, scope: !75)
!77 = !DILocation(line: 48, column: 9, scope: !71)
!78 = !DILocation(line: 49, column: 32, scope: !75)
!79 = !DILocation(line: 49, column: 25, scope: !75)
!80 = !DILocation(line: 49, column: 35, scope: !75)
!81 = !DILocation(line: 49, column: 13, scope: !75)
!82 = !DILocation(line: 48, column: 33, scope: !75)
!83 = !DILocation(line: 48, column: 9, scope: !75)
!84 = distinct !{!84, !77, !85, !86}
!85 = !DILocation(line: 49, column: 42, scope: !71)
!86 = !{!"llvm.loop.mustprogress"}
!87 = !DILocation(line: 51, column: 21, scope: !60)
!88 = !DILocation(line: 51, column: 31, scope: !60)
!89 = !DILocation(line: 51, column: 9, scope: !60)
!90 = !DILocalVariable(name: "k", scope: !91, file: !1, line: 60, type: !12)
!91 = distinct !DILexicalBlock(scope: !60, file: !1, line: 60, column: 9)
!92 = !DILocation(line: 60, column: 18, scope: !91)
!93 = !DILocation(line: 60, column: 14, scope: !91)
!94 = !DILocation(line: 60, column: 26, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !1, line: 60, column: 9)
!96 = !DILocation(line: 60, column: 28, scope: !95)
!97 = !DILocation(line: 60, column: 9, scope: !91)
!98 = !DILocation(line: 61, column: 32, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !1, line: 60, column: 39)
!100 = !DILocation(line: 61, column: 25, scope: !99)
!101 = !DILocation(line: 61, column: 35, scope: !99)
!102 = !DILocation(line: 61, column: 13, scope: !99)
!103 = !DILocation(line: 62, column: 32, scope: !99)
!104 = !DILocation(line: 62, column: 25, scope: !99)
!105 = !DILocation(line: 62, column: 35, scope: !99)
!106 = !DILocation(line: 62, column: 13, scope: !99)
!107 = !DILocation(line: 63, column: 9, scope: !99)
!108 = !DILocation(line: 60, column: 35, scope: !95)
!109 = !DILocation(line: 60, column: 9, scope: !95)
!110 = distinct !{!110, !97, !111, !86}
!111 = !DILocation(line: 63, column: 9, scope: !91)
!112 = !DILocation(line: 65, column: 20, scope: !60)
!113 = !DILocation(line: 65, column: 9, scope: !60)
!114 = !DILocation(line: 66, column: 5, scope: !60)
!115 = !DILocation(line: 30, column: 29, scope: !56)
!116 = !DILocation(line: 30, column: 5, scope: !56)
!117 = distinct !{!117, !58, !118, !86}
!118 = !DILocation(line: 66, column: 5, scope: !52)
!119 = !DILocation(line: 68, column: 5, scope: !45)
