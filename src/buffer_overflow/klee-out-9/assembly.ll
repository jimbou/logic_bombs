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
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i8, align 1
  store i8* %symvar, i8** %symvar.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %symvar.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %flag, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %flag, align 4, !dbg !18
  call void @llvm.dbg.declare(metadata [8 x i8]* %buf, metadata !19, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %len, metadata !24, metadata !DIExpression()), !dbg !25
  store i32 0, i32* %len, align 4, !dbg !25
  br label %while.body, !dbg !26

while.body:                                       ; preds = %entry, %if.end5
  %0 = load i8*, i8** %symvar.addr, align 8, !dbg !27
  %1 = load i32, i32* %len, align 4, !dbg !30
  %idxprom = sext i32 %1 to i64, !dbg !27
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !27
  %2 = load i8, i8* %arrayidx, align 1, !dbg !27
  %conv = sext i8 %2 to i32, !dbg !27
  %cmp = icmp eq i32 %conv, 0, !dbg !31
  br i1 %cmp, label %if.then, label %if.end, !dbg !32

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !33

if.end:                                           ; preds = %while.body
  %3 = load i32, i32* %len, align 4, !dbg !34
  %inc = add nsw i32 %3, 1, !dbg !34
  store i32 %inc, i32* %len, align 4, !dbg !34
  %4 = load i32, i32* %len, align 4, !dbg !35
  %cmp2 = icmp sgt i32 %4, 9, !dbg !37
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !38

if.then4:                                         ; preds = %if.end
  %call = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i64 0, i64 0)), !dbg !39
  store i32 0, i32* %retval, align 4, !dbg !41
  br label %return, !dbg !41

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !26, !llvm.loop !42

while.end:                                        ; preds = %if.then
  call void @llvm.dbg.declare(metadata i32* %i, metadata !44, metadata !DIExpression()), !dbg !46
  store i32 0, i32* %i, align 4, !dbg !46
  br label %for.cond, !dbg !47

for.cond:                                         ; preds = %for.inc, %while.end
  call void @llvm.dbg.declare(metadata i8* %c, metadata !48, metadata !DIExpression()), !dbg !51
  %5 = load i8*, i8** %symvar.addr, align 8, !dbg !52
  %6 = load i32, i32* %i, align 4, !dbg !53
  %idxprom6 = sext i32 %6 to i64, !dbg !52
  %arrayidx7 = getelementptr inbounds i8, i8* %5, i64 %idxprom6, !dbg !52
  %7 = load i8, i8* %arrayidx7, align 1, !dbg !52
  store i8 %7, i8* %c, align 1, !dbg !51
  %8 = load i8, i8* %c, align 1, !dbg !54
  %9 = load i32, i32* %i, align 4, !dbg !55
  %idxprom8 = sext i32 %9 to i64, !dbg !56
  %arrayidx9 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 %idxprom8, !dbg !56
  store i8 %8, i8* %arrayidx9, align 1, !dbg !57
  %10 = load i8, i8* %c, align 1, !dbg !58
  %conv10 = sext i8 %10 to i32, !dbg !58
  %cmp11 = icmp eq i32 %conv10, 0, !dbg !60
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !61

if.then13:                                        ; preds = %for.cond
  br label %for.end, !dbg !62

if.end14:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !dbg !63
  %cmp15 = icmp sgt i32 %11, 30, !dbg !65
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !66

if.then17:                                        ; preds = %if.end14
  br label %for.end, !dbg !67

if.end18:                                         ; preds = %if.end14
  br label %for.inc, !dbg !68

for.inc:                                          ; preds = %if.end18
  %12 = load i32, i32* %i, align 4, !dbg !69
  %inc19 = add nsw i32 %12, 1, !dbg !69
  store i32 %inc19, i32* %i, align 4, !dbg !69
  br label %for.cond, !dbg !70, !llvm.loop !71

for.end:                                          ; preds = %if.then17, %if.then13
  %13 = load i32, i32* %flag, align 4, !dbg !74
  %cmp20 = icmp eq i32 %13, 1, !dbg !76
  br i1 %cmp20, label %if.then22, label %if.end24, !dbg !77

if.then22:                                        ; preds = %for.end
  %call23 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i64 0, i64 0)), !dbg !78
  store i32 0, i32* %retval, align 4, !dbg !80
  br label %return, !dbg !80

if.end24:                                         ; preds = %for.end
  %call25 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i64 0, i64 0)), !dbg !81
  store i32 0, i32* %retval, align 4, !dbg !82
  br label %return, !dbg !82

return:                                           ; preds = %if.end24, %if.then22, %if.then4
  %14 = load i32, i32* %retval, align 4, !dbg !83
  ret i32 %14, !dbg !83
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare dso_local i32 @__assert_fail(...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !84 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %symvar = alloca [65 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !88, metadata !DIExpression()), !dbg !89
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata [65 x i8]* %symvar, metadata !92, metadata !DIExpression()), !dbg !96
  %0 = bitcast [65 x i8]* %symvar to i8*, !dbg !97
  call void @klee_make_symbolic(i8* %0, i64 65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !98
  %arrayidx = getelementptr inbounds [65 x i8], [65 x i8]* %symvar, i64 0, i64 64, !dbg !99
  %1 = load i8, i8* %arrayidx, align 16, !dbg !99
  %conv = sext i8 %1 to i32, !dbg !99
  %cmp = icmp eq i32 %conv, 0, !dbg !100
  %conv1 = zext i1 %cmp to i32, !dbg !100
  %conv2 = sext i32 %conv1 to i64, !dbg !99
  call void @klee_assume(i64 %conv2), !dbg !101
  %arraydecay = getelementptr inbounds [65 x i8], [65 x i8]* %symvar, i64 0, i64 0, !dbg !102
  %call = call i32 @logic_bomb(i8* %arraydecay), !dbg !103
  ret i32 %call, !dbg !104
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #3

declare dso_local void @klee_assume(i64) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = distinct !DISubprogram(name: "logic_bomb", scope: !1, file: !1, line: 7, type: !10, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "symvar", arg: 1, scope: !9, file: !1, line: 7, type: !13)
!16 = !DILocation(line: 7, column: 22, scope: !9)
!17 = !DILocalVariable(name: "flag", scope: !9, file: !1, line: 8, type: !12)
!18 = !DILocation(line: 8, column: 9, scope: !9)
!19 = !DILocalVariable(name: "buf", scope: !9, file: !1, line: 9, type: !20)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 8)
!23 = !DILocation(line: 9, column: 10, scope: !9)
!24 = !DILocalVariable(name: "len", scope: !9, file: !1, line: 14, type: !12)
!25 = !DILocation(line: 14, column: 9, scope: !9)
!26 = !DILocation(line: 15, column: 5, scope: !9)
!27 = !DILocation(line: 16, column: 13, scope: !28)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 16, column: 13)
!29 = distinct !DILexicalBlock(scope: !9, file: !1, line: 15, column: 15)
!30 = !DILocation(line: 16, column: 20, scope: !28)
!31 = !DILocation(line: 16, column: 25, scope: !28)
!32 = !DILocation(line: 16, column: 13, scope: !29)
!33 = !DILocation(line: 17, column: 13, scope: !28)
!34 = !DILocation(line: 18, column: 12, scope: !29)
!35 = !DILocation(line: 21, column: 13, scope: !36)
!36 = distinct !DILexicalBlock(scope: !29, file: !1, line: 21, column: 13)
!37 = !DILocation(line: 21, column: 17, scope: !36)
!38 = !DILocation(line: 21, column: 13, scope: !29)
!39 = !DILocation(line: 22, column: 13, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !1, line: 21, column: 22)
!41 = !DILocation(line: 23, column: 13, scope: !40)
!42 = distinct !{!42, !26, !43}
!43 = !DILocation(line: 25, column: 5, scope: !9)
!44 = !DILocalVariable(name: "i", scope: !45, file: !1, line: 30, type: !12)
!45 = distinct !DILexicalBlock(scope: !9, file: !1, line: 30, column: 5)
!46 = !DILocation(line: 30, column: 14, scope: !45)
!47 = !DILocation(line: 30, column: 10, scope: !45)
!48 = !DILocalVariable(name: "c", scope: !49, file: !1, line: 31, type: !14)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 30, column: 28)
!50 = distinct !DILexicalBlock(scope: !45, file: !1, line: 30, column: 5)
!51 = !DILocation(line: 31, column: 14, scope: !49)
!52 = !DILocation(line: 31, column: 18, scope: !49)
!53 = !DILocation(line: 31, column: 25, scope: !49)
!54 = !DILocation(line: 32, column: 18, scope: !49)
!55 = !DILocation(line: 32, column: 13, scope: !49)
!56 = !DILocation(line: 32, column: 9, scope: !49)
!57 = !DILocation(line: 32, column: 16, scope: !49)
!58 = !DILocation(line: 34, column: 13, scope: !59)
!59 = distinct !DILexicalBlock(scope: !49, file: !1, line: 34, column: 13)
!60 = !DILocation(line: 34, column: 15, scope: !59)
!61 = !DILocation(line: 34, column: 13, scope: !49)
!62 = !DILocation(line: 35, column: 13, scope: !59)
!63 = !DILocation(line: 38, column: 13, scope: !64)
!64 = distinct !DILexicalBlock(scope: !49, file: !1, line: 38, column: 13)
!65 = !DILocation(line: 38, column: 15, scope: !64)
!66 = !DILocation(line: 38, column: 13, scope: !49)
!67 = !DILocation(line: 39, column: 13, scope: !64)
!68 = !DILocation(line: 40, column: 5, scope: !49)
!69 = !DILocation(line: 30, column: 24, scope: !50)
!70 = !DILocation(line: 30, column: 5, scope: !50)
!71 = distinct !{!71, !72, !73}
!72 = !DILocation(line: 30, column: 5, scope: !45)
!73 = !DILocation(line: 40, column: 5, scope: !45)
!74 = !DILocation(line: 45, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !9, file: !1, line: 45, column: 9)
!76 = !DILocation(line: 45, column: 14, scope: !75)
!77 = !DILocation(line: 45, column: 9, scope: !9)
!78 = !DILocation(line: 46, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !1, line: 45, column: 20)
!80 = !DILocation(line: 47, column: 9, scope: !79)
!81 = !DILocation(line: 50, column: 5, scope: !9)
!82 = !DILocation(line: 51, column: 5, scope: !9)
!83 = !DILocation(line: 52, column: 1, scope: !9)
!84 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !85, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!85 = !DISubroutineType(types: !86)
!86 = !{!12, !12, !87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!88 = !DILocalVariable(name: "argc", arg: 1, scope: !84, file: !1, line: 54, type: !12)
!89 = !DILocation(line: 54, column: 14, scope: !84)
!90 = !DILocalVariable(name: "argv", arg: 2, scope: !84, file: !1, line: 54, type: !87)
!91 = !DILocation(line: 54, column: 27, scope: !84)
!92 = !DILocalVariable(name: "symvar", scope: !84, file: !1, line: 55, type: !93)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 520, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 65)
!96 = !DILocation(line: 55, column: 6, scope: !84)
!97 = !DILocation(line: 56, column: 20, scope: !84)
!98 = !DILocation(line: 56, column: 1, scope: !84)
!99 = !DILocation(line: 57, column: 13, scope: !84)
!100 = !DILocation(line: 57, column: 23, scope: !84)
!101 = !DILocation(line: 57, column: 1, scope: !84)
!102 = !DILocation(line: 58, column: 19, scope: !84)
!103 = !DILocation(line: 58, column: 8, scope: !84)
!104 = !DILocation(line: 58, column: 1, scope: !84)
