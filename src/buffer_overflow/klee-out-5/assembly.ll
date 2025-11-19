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
  %symvar = alloca [65 x i8], align 16
  %i = alloca i32, align 4
  %i15 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata [65 x i8]* %symvar, metadata !48, metadata !DIExpression()), !dbg !52
  %arraydecay = getelementptr inbounds [65 x i8], [65 x i8]* %symvar, i64 0, i64 0, !dbg !53
  call void @klee_make_symbolic(i8* %arraydecay, i64 65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !54
  %arrayidx = getelementptr inbounds [65 x i8], [65 x i8]* %symvar, i64 0, i64 64, !dbg !55
  %0 = load i8, i8* %arrayidx, align 16, !dbg !55
  %conv = sext i8 %0 to i32, !dbg !55
  %cmp = icmp eq i32 %conv, 0, !dbg !56
  %conv1 = zext i1 %cmp to i32, !dbg !56
  %conv2 = sext i32 %conv1 to i64, !dbg !55
  call void @klee_assume(i64 %conv2), !dbg !57
  %arrayidx3 = getelementptr inbounds [65 x i8], [65 x i8]* %symvar, i64 0, i64 9, !dbg !58
  %1 = load i8, i8* %arrayidx3, align 1, !dbg !58
  %conv4 = sext i8 %1 to i32, !dbg !58
  %cmp5 = icmp eq i32 %conv4, 0, !dbg !59
  %conv6 = zext i1 %cmp5 to i32, !dbg !59
  %conv7 = sext i32 %conv6 to i64, !dbg !58
  call void @klee_assume(i64 %conv7), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %i, metadata !61, metadata !DIExpression()), !dbg !63
  store i32 0, i32* %i, align 4, !dbg !63
  br label %for.cond, !dbg !64

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !65
  %cmp8 = icmp slt i32 %2, 9, !dbg !67
  br i1 %cmp8, label %for.body, label %for.end, !dbg !68

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !69
  %idxprom = sext i32 %3 to i64, !dbg !71
  %arrayidx10 = getelementptr inbounds [65 x i8], [65 x i8]* %symvar, i64 0, i64 %idxprom, !dbg !71
  %4 = load i8, i8* %arrayidx10, align 1, !dbg !71
  %conv11 = sext i8 %4 to i32, !dbg !71
  %cmp12 = icmp ne i32 %conv11, 0, !dbg !72
  %conv13 = zext i1 %cmp12 to i32, !dbg !72
  %conv14 = sext i32 %conv13 to i64, !dbg !71
  call void @klee_assume(i64 %conv14), !dbg !73
  br label %for.inc, !dbg !74

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !75
  %inc = add nsw i32 %5, 1, !dbg !75
  store i32 %inc, i32* %i, align 4, !dbg !75
  br label %for.cond, !dbg !76, !llvm.loop !77

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %i15, metadata !80, metadata !DIExpression()), !dbg !82
  store i32 10, i32* %i15, align 4, !dbg !82
  br label %for.cond16, !dbg !83

for.cond16:                                       ; preds = %for.inc32, %for.end
  %6 = load i32, i32* %i15, align 4, !dbg !84
  %cmp17 = icmp slt i32 %6, 20, !dbg !86
  br i1 %cmp17, label %for.body19, label %for.end34, !dbg !87

for.body19:                                       ; preds = %for.cond16
  %7 = load i32, i32* %i15, align 4, !dbg !88
  %idxprom20 = sext i32 %7 to i64, !dbg !90
  %arrayidx21 = getelementptr inbounds [65 x i8], [65 x i8]* %symvar, i64 0, i64 %idxprom20, !dbg !90
  %8 = load i8, i8* %arrayidx21, align 1, !dbg !90
  %conv22 = sext i8 %8 to i32, !dbg !90
  %cmp23 = icmp sge i32 %conv22, 0, !dbg !91
  %conv24 = zext i1 %cmp23 to i32, !dbg !91
  %conv25 = sext i32 %conv24 to i64, !dbg !90
  call void @klee_assume(i64 %conv25), !dbg !92
  %9 = load i32, i32* %i15, align 4, !dbg !93
  %idxprom26 = sext i32 %9 to i64, !dbg !94
  %arrayidx27 = getelementptr inbounds [65 x i8], [65 x i8]* %symvar, i64 0, i64 %idxprom26, !dbg !94
  %10 = load i8, i8* %arrayidx27, align 1, !dbg !94
  %conv28 = sext i8 %10 to i32, !dbg !94
  %cmp29 = icmp sle i32 %conv28, 3, !dbg !95
  %conv30 = zext i1 %cmp29 to i32, !dbg !95
  %conv31 = sext i32 %conv30 to i64, !dbg !94
  call void @klee_assume(i64 %conv31), !dbg !96
  br label %for.inc32, !dbg !97

for.inc32:                                        ; preds = %for.body19
  %11 = load i32, i32* %i15, align 4, !dbg !98
  %inc33 = add nsw i32 %11, 1, !dbg !98
  store i32 %inc33, i32* %i15, align 4, !dbg !98
  br label %for.cond16, !dbg !99, !llvm.loop !100

for.end34:                                        ; preds = %for.cond16
  %arraydecay35 = getelementptr inbounds [65 x i8], [65 x i8]* %symvar, i64 0, i64 0, !dbg !102
  %call = call i32 @logic_bomb(i8* %arraydecay35), !dbg !103
  ret i32 %call, !dbg !104
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
!48 = !DILocalVariable(name: "symvar", scope: !45, file: !1, line: 26, type: !49)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 520, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 65)
!52 = !DILocation(line: 26, column: 10, scope: !45)
!53 = !DILocation(line: 27, column: 24, scope: !45)
!54 = !DILocation(line: 27, column: 5, scope: !45)
!55 = !DILocation(line: 30, column: 17, scope: !45)
!56 = !DILocation(line: 30, column: 28, scope: !45)
!57 = !DILocation(line: 30, column: 5, scope: !45)
!58 = !DILocation(line: 35, column: 17, scope: !45)
!59 = !DILocation(line: 35, column: 27, scope: !45)
!60 = !DILocation(line: 35, column: 5, scope: !45)
!61 = !DILocalVariable(name: "i", scope: !62, file: !1, line: 39, type: !12)
!62 = distinct !DILexicalBlock(scope: !45, file: !1, line: 39, column: 5)
!63 = !DILocation(line: 39, column: 14, scope: !62)
!64 = !DILocation(line: 39, column: 10, scope: !62)
!65 = !DILocation(line: 39, column: 21, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !1, line: 39, column: 5)
!67 = !DILocation(line: 39, column: 23, scope: !66)
!68 = !DILocation(line: 39, column: 5, scope: !62)
!69 = !DILocation(line: 40, column: 28, scope: !70)
!70 = distinct !DILexicalBlock(scope: !66, file: !1, line: 39, column: 33)
!71 = !DILocation(line: 40, column: 21, scope: !70)
!72 = !DILocation(line: 40, column: 31, scope: !70)
!73 = !DILocation(line: 40, column: 9, scope: !70)
!74 = !DILocation(line: 41, column: 5, scope: !70)
!75 = !DILocation(line: 39, column: 29, scope: !66)
!76 = !DILocation(line: 39, column: 5, scope: !66)
!77 = distinct !{!77, !68, !78, !79}
!78 = !DILocation(line: 41, column: 5, scope: !62)
!79 = !{!"llvm.loop.mustprogress"}
!80 = !DILocalVariable(name: "i", scope: !81, file: !1, line: 45, type: !12)
!81 = distinct !DILexicalBlock(scope: !45, file: !1, line: 45, column: 5)
!82 = !DILocation(line: 45, column: 14, scope: !81)
!83 = !DILocation(line: 45, column: 10, scope: !81)
!84 = !DILocation(line: 45, column: 22, scope: !85)
!85 = distinct !DILexicalBlock(scope: !81, file: !1, line: 45, column: 5)
!86 = !DILocation(line: 45, column: 24, scope: !85)
!87 = !DILocation(line: 45, column: 5, scope: !81)
!88 = !DILocation(line: 46, column: 28, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 45, column: 35)
!90 = !DILocation(line: 46, column: 21, scope: !89)
!91 = !DILocation(line: 46, column: 31, scope: !89)
!92 = !DILocation(line: 46, column: 9, scope: !89)
!93 = !DILocation(line: 47, column: 28, scope: !89)
!94 = !DILocation(line: 47, column: 21, scope: !89)
!95 = !DILocation(line: 47, column: 31, scope: !89)
!96 = !DILocation(line: 47, column: 9, scope: !89)
!97 = !DILocation(line: 48, column: 5, scope: !89)
!98 = !DILocation(line: 45, column: 31, scope: !85)
!99 = !DILocation(line: 45, column: 5, scope: !85)
!100 = distinct !{!100, !87, !101, !79}
!101 = !DILocation(line: 48, column: 5, scope: !81)
!102 = !DILocation(line: 50, column: 23, scope: !45)
!103 = !DILocation(line: 50, column: 12, scope: !45)
!104 = !DILocation(line: 50, column: 5, scope: !45)
