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
  %i = alloca i32, align 4
  store i8* %symvar, i8** %symvar.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %symvar.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %flag, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %flag, align 4, !dbg !18
  call void @llvm.dbg.declare(metadata [8 x i8]* %buf, metadata !19, metadata !DIExpression()), !dbg !23
  %0 = load i8*, i8** %symvar.addr, align 8, !dbg !24
  %call = call i64 @strlen(i8* %0) #5, !dbg !26
  %cmp = icmp ugt i64 %call, 9, !dbg !27
  br i1 %cmp, label %if.then, label %if.end, !dbg !28

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i64 0, i64 0)), !dbg !29
  store i32 0, i32* %retval, align 4, !dbg !31
  br label %return, !dbg !31

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !32, metadata !DIExpression()), !dbg !34
  store i32 0, i32* %i, align 4, !dbg !34
  br label %for.cond, !dbg !35

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i8*, i8** %symvar.addr, align 8, !dbg !36
  %2 = load i32, i32* %i, align 4, !dbg !39
  %idxprom = sext i32 %2 to i64, !dbg !36
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom, !dbg !36
  %3 = load i8, i8* %arrayidx, align 1, !dbg !36
  %4 = load i32, i32* %i, align 4, !dbg !40
  %idxprom2 = sext i32 %4 to i64, !dbg !41
  %arrayidx3 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 %idxprom2, !dbg !41
  store i8 %3, i8* %arrayidx3, align 1, !dbg !42
  %5 = load i8*, i8** %symvar.addr, align 8, !dbg !43
  %6 = load i32, i32* %i, align 4, !dbg !45
  %idxprom4 = sext i32 %6 to i64, !dbg !43
  %arrayidx5 = getelementptr inbounds i8, i8* %5, i64 %idxprom4, !dbg !43
  %7 = load i8, i8* %arrayidx5, align 1, !dbg !43
  %conv = sext i8 %7 to i32, !dbg !43
  %cmp6 = icmp eq i32 %conv, 0, !dbg !46
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !47

if.then8:                                         ; preds = %for.cond
  br label %for.end, !dbg !48

if.end9:                                          ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !49
  %cmp10 = icmp sgt i32 %8, 30, !dbg !51
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !52

if.then12:                                        ; preds = %if.end9
  br label %for.end, !dbg !53

if.end13:                                         ; preds = %if.end9
  br label %for.inc, !dbg !54

for.inc:                                          ; preds = %if.end13
  %9 = load i32, i32* %i, align 4, !dbg !55
  %inc = add nsw i32 %9, 1, !dbg !55
  store i32 %inc, i32* %i, align 4, !dbg !55
  br label %for.cond, !dbg !56, !llvm.loop !57

for.end:                                          ; preds = %if.then12, %if.then8
  %10 = load i32, i32* %flag, align 4, !dbg !60
  %cmp14 = icmp eq i32 %10, 1, !dbg !62
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !63

if.then16:                                        ; preds = %for.end
  %call17 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i64 0, i64 0)), !dbg !64
  store i32 0, i32* %retval, align 4, !dbg !66
  br label %return, !dbg !66

if.end18:                                         ; preds = %for.end
  %call19 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i64 0, i64 0)), !dbg !67
  store i32 0, i32* %retval, align 4, !dbg !68
  br label %return, !dbg !68

return:                                           ; preds = %if.end18, %if.then16, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !69
  ret i32 %11, !dbg !69
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !70 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %symvar = alloca [65 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !74, metadata !DIExpression()), !dbg !75
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata [65 x i8]* %symvar, metadata !78, metadata !DIExpression()), !dbg !82
  %0 = bitcast [65 x i8]* %symvar to i8*, !dbg !83
  call void @klee_make_symbolic(i8* %0, i64 65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !84
  %arrayidx = getelementptr inbounds [65 x i8], [65 x i8]* %symvar, i64 0, i64 64, !dbg !85
  %1 = load i8, i8* %arrayidx, align 16, !dbg !85
  %conv = sext i8 %1 to i32, !dbg !85
  %cmp = icmp eq i32 %conv, 0, !dbg !86
  %conv1 = zext i1 %cmp to i32, !dbg !86
  %conv2 = sext i32 %conv1 to i64, !dbg !85
  call void @klee_assume(i64 %conv2), !dbg !87
  %arraydecay = getelementptr inbounds [65 x i8], [65 x i8]* %symvar, i64 0, i64 0, !dbg !88
  %call = call i32 @logic_bomb(i8* %arraydecay), !dbg !89
  ret i32 %call, !dbg !90
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #4

declare dso_local void @klee_assume(i64) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

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
!24 = !DILocation(line: 13, column: 15, scope: !25)
!25 = distinct !DILexicalBlock(scope: !9, file: !1, line: 13, column: 8)
!26 = !DILocation(line: 13, column: 8, scope: !25)
!27 = !DILocation(line: 13, column: 23, scope: !25)
!28 = !DILocation(line: 13, column: 8, scope: !9)
!29 = !DILocation(line: 14, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !25, file: !1, line: 13, column: 27)
!31 = !DILocation(line: 15, column: 9, scope: !30)
!32 = !DILocalVariable(name: "i", scope: !33, file: !1, line: 19, type: !12)
!33 = distinct !DILexicalBlock(scope: !9, file: !1, line: 19, column: 5)
!34 = !DILocation(line: 19, column: 14, scope: !33)
!35 = !DILocation(line: 19, column: 10, scope: !33)
!36 = !DILocation(line: 20, column: 18, scope: !37)
!37 = distinct !DILexicalBlock(scope: !38, file: !1, line: 19, column: 28)
!38 = distinct !DILexicalBlock(scope: !33, file: !1, line: 19, column: 5)
!39 = !DILocation(line: 20, column: 25, scope: !37)
!40 = !DILocation(line: 20, column: 13, scope: !37)
!41 = !DILocation(line: 20, column: 9, scope: !37)
!42 = !DILocation(line: 20, column: 16, scope: !37)
!43 = !DILocation(line: 23, column: 13, scope: !44)
!44 = distinct !DILexicalBlock(scope: !37, file: !1, line: 23, column: 13)
!45 = !DILocation(line: 23, column: 20, scope: !44)
!46 = !DILocation(line: 23, column: 23, scope: !44)
!47 = !DILocation(line: 23, column: 13, scope: !37)
!48 = !DILocation(line: 24, column: 13, scope: !44)
!49 = !DILocation(line: 27, column: 13, scope: !50)
!50 = distinct !DILexicalBlock(scope: !37, file: !1, line: 27, column: 13)
!51 = !DILocation(line: 27, column: 15, scope: !50)
!52 = !DILocation(line: 27, column: 13, scope: !37)
!53 = !DILocation(line: 28, column: 13, scope: !50)
!54 = !DILocation(line: 29, column: 5, scope: !37)
!55 = !DILocation(line: 19, column: 24, scope: !38)
!56 = !DILocation(line: 19, column: 5, scope: !38)
!57 = distinct !{!57, !58, !59}
!58 = !DILocation(line: 19, column: 5, scope: !33)
!59 = !DILocation(line: 29, column: 5, scope: !33)
!60 = !DILocation(line: 31, column: 8, scope: !61)
!61 = distinct !DILexicalBlock(scope: !9, file: !1, line: 31, column: 8)
!62 = !DILocation(line: 31, column: 13, scope: !61)
!63 = !DILocation(line: 31, column: 8, scope: !9)
!64 = !DILocation(line: 32, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !61, file: !1, line: 31, column: 18)
!66 = !DILocation(line: 33, column: 9, scope: !65)
!67 = !DILocation(line: 36, column: 5, scope: !9)
!68 = !DILocation(line: 37, column: 5, scope: !9)
!69 = !DILocation(line: 38, column: 1, scope: !9)
!70 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 39, type: !71, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!71 = !DISubroutineType(types: !72)
!72 = !{!12, !12, !73}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!74 = !DILocalVariable(name: "argc", arg: 1, scope: !70, file: !1, line: 39, type: !12)
!75 = !DILocation(line: 39, column: 14, scope: !70)
!76 = !DILocalVariable(name: "argv", arg: 2, scope: !70, file: !1, line: 39, type: !73)
!77 = !DILocation(line: 39, column: 27, scope: !70)
!78 = !DILocalVariable(name: "symvar", scope: !70, file: !1, line: 40, type: !79)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 520, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 65)
!82 = !DILocation(line: 40, column: 6, scope: !70)
!83 = !DILocation(line: 41, column: 20, scope: !70)
!84 = !DILocation(line: 41, column: 1, scope: !70)
!85 = !DILocation(line: 42, column: 13, scope: !70)
!86 = !DILocation(line: 42, column: 23, scope: !70)
!87 = !DILocation(line: 42, column: 1, scope: !70)
!88 = !DILocation(line: 43, column: 19, scope: !70)
!89 = !DILocation(line: 43, column: 8, scope: !70)
!90 = !DILocation(line: 43, column: 1, scope: !70)
