; ModuleID = '5n+1_lo_l1_klee_annotated.bc'
source_filename = "5n+1_lo_l1_klee_annotated.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"0 && \22Logic bomb triggered\22\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"5n+1_lo_l1_klee_annotated.c\00", align 1
@__PRETTY_FUNCTION__.logic_bomb = private unnamed_addr constant [23 x i8] c"int logic_bomb(char *)\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"0 && \22Path without the bomb\22\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @f(i32 %x) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr, metadata !13, metadata !DIExpression()), !dbg !14
  %0 = load i32, i32* %x.addr, align 4, !dbg !15
  %rem = srem i32 %0, 2, !dbg !17
  %cmp = icmp eq i32 %rem, 0, !dbg !18
  br i1 %cmp, label %if.then, label %if.else, !dbg !19

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4, !dbg !20
  %div = sdiv i32 %1, 2, !dbg !21
  store i32 %div, i32* %retval, align 4, !dbg !22
  br label %return, !dbg !22

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4, !dbg !23
  %rem1 = srem i32 %2, 3, !dbg !25
  %cmp2 = icmp eq i32 %rem1, 0, !dbg !26
  br i1 %cmp2, label %if.then3, label %if.else5, !dbg !27

if.then3:                                         ; preds = %if.else
  %3 = load i32, i32* %x.addr, align 4, !dbg !28
  %div4 = sdiv i32 %3, 3, !dbg !29
  store i32 %div4, i32* %retval, align 4, !dbg !30
  br label %return, !dbg !30

if.else5:                                         ; preds = %if.else
  %4 = load i32, i32* %x.addr, align 4, !dbg !31
  %mul = mul nsw i32 3, %4, !dbg !32
  %add = add nsw i32 %mul, 1, !dbg !33
  store i32 %add, i32* %retval, align 4, !dbg !34
  br label %return, !dbg !34

return:                                           ; preds = %if.else5, %if.then3, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !35
  ret i32 %5, !dbg !35
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @logic_bomb(i8* %s) #0 !dbg !36 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %symvar = alloca i32, align 4
  %j = alloca i32, align 4
  %loopcount = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %symvar, metadata !44, metadata !DIExpression()), !dbg !45
  %0 = load i8*, i8** %s.addr, align 4, !dbg !46
  %arrayidx = getelementptr inbounds i8, i8* %0, i32 0, !dbg !46
  %1 = load i8, i8* %arrayidx, align 1, !dbg !46
  %conv = sext i8 %1 to i32, !dbg !46
  %sub = sub nsw i32 %conv, 48, !dbg !47
  store i32 %sub, i32* %symvar, align 4, !dbg !45
  %2 = load i32, i32* %symvar, align 4, !dbg !48
  %add = add nsw i32 %2, 94, !dbg !49
  store i32 %add, i32* %symvar, align 4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %j, metadata !51, metadata !DIExpression()), !dbg !52
  %3 = load i32, i32* %symvar, align 4, !dbg !53
  %call = call i32 @f(i32 %3), !dbg !54
  store i32 %call, i32* %j, align 4, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %loopcount, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 1, i32* %loopcount, align 4, !dbg !56
  br label %while.cond, !dbg !57

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i32, i32* %j, align 4, !dbg !58
  %cmp = icmp ne i32 %4, 1, !dbg !59
  br i1 %cmp, label %while.body, label %while.end, !dbg !57

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %j, align 4, !dbg !60
  %call2 = call i32 @f(i32 %5), !dbg !62
  store i32 %call2, i32* %j, align 4, !dbg !63
  %6 = load i32, i32* %loopcount, align 4, !dbg !64
  %inc = add nsw i32 %6, 1, !dbg !64
  store i32 %inc, i32* %loopcount, align 4, !dbg !64
  br label %while.cond, !dbg !57, !llvm.loop !65

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %loopcount, align 4, !dbg !68
  %cmp3 = icmp eq i32 %7, 25, !dbg !70
  br i1 %cmp3, label %if.then, label %if.else, !dbg !71

if.then:                                          ; preds = %while.end
  %call5 = call i32 bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i32 0, i32 0)), !dbg !72
  br label %if.end, !dbg !72

if.else:                                          ; preds = %while.end
  %call6 = call i32 bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i32 0, i32 0)), !dbg !73
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !74
  ret i32 %8, !dbg !74
}

declare dso_local i32 @__assert_fail(...) #2

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !75 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 4
  %s = alloca [5 x i8], align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !79, metadata !DIExpression()), !dbg !80
  store i8** %argv, i8*** %argv.addr, align 4
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata [5 x i8]* %s, metadata !83, metadata !DIExpression()), !dbg !87
  %0 = bitcast [5 x i8]* %s to i8*, !dbg !88
  call void @klee_make_symbolic(i8* %0, i32 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)), !dbg !89
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %s, i32 0, i32 4, !dbg !90
  %1 = load i8, i8* %arrayidx, align 1, !dbg !90
  %conv = sext i8 %1 to i32, !dbg !90
  %cmp = icmp eq i32 %conv, 0, !dbg !91
  %conv1 = zext i1 %cmp to i32, !dbg !91
  call void @klee_assume(i32 %conv1), !dbg !92
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %s, i32 0, i32 0, !dbg !93
  %call = call i32 @logic_bomb(i8* %arraydecay), !dbg !94
  ret i32 %call, !dbg !95
}

declare dso_local void @klee_make_symbolic(i8*, i32, i8*) #2

declare dso_local void @klee_assume(i32) #2

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "5n+1_lo_l1_klee_annotated.c", directory: "/home/klee/logic_bombs/src/loop")
!2 = !{}
!3 = !{i32 1, !"NumRegisterParameters", i32 0}
!4 = !{i32 7, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!9 = distinct !DISubprogram(name: "f", scope: !1, file: !1, line: 6, type: !10, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocalVariable(name: "x", arg: 1, scope: !9, file: !1, line: 6, type: !12)
!14 = !DILocation(line: 6, column: 13, scope: !9)
!15 = !DILocation(line: 7, column: 9, scope: !16)
!16 = distinct !DILexicalBlock(scope: !9, file: !1, line: 7, column: 9)
!17 = !DILocation(line: 7, column: 10, scope: !16)
!18 = !DILocation(line: 7, column: 13, scope: !16)
!19 = !DILocation(line: 7, column: 9, scope: !9)
!20 = !DILocation(line: 8, column: 9, scope: !16)
!21 = !DILocation(line: 8, column: 10, scope: !16)
!22 = !DILocation(line: 8, column: 2, scope: !16)
!23 = !DILocation(line: 9, column: 14, scope: !24)
!24 = distinct !DILexicalBlock(scope: !16, file: !1, line: 9, column: 14)
!25 = !DILocation(line: 9, column: 15, scope: !24)
!26 = !DILocation(line: 9, column: 18, scope: !24)
!27 = !DILocation(line: 9, column: 14, scope: !16)
!28 = !DILocation(line: 10, column: 9, scope: !24)
!29 = !DILocation(line: 10, column: 10, scope: !24)
!30 = !DILocation(line: 10, column: 2, scope: !24)
!31 = !DILocation(line: 12, column: 18, scope: !24)
!32 = !DILocation(line: 12, column: 17, scope: !24)
!33 = !DILocation(line: 12, column: 20, scope: !24)
!34 = !DILocation(line: 12, column: 9, scope: !24)
!35 = !DILocation(line: 13, column: 1, scope: !9)
!36 = distinct !DISubprogram(name: "logic_bomb", scope: !1, file: !1, line: 16, type: !37, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !40}
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 32)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DILocalVariable(name: "s", arg: 1, scope: !36, file: !1, line: 16, type: !40)
!43 = !DILocation(line: 16, column: 22, scope: !36)
!44 = !DILocalVariable(name: "symvar", scope: !36, file: !1, line: 17, type: !39)
!45 = !DILocation(line: 17, column: 9, scope: !36)
!46 = !DILocation(line: 17, column: 18, scope: !36)
!47 = !DILocation(line: 17, column: 23, scope: !36)
!48 = !DILocation(line: 18, column: 14, scope: !36)
!49 = !DILocation(line: 18, column: 21, scope: !36)
!50 = !DILocation(line: 18, column: 12, scope: !36)
!51 = !DILocalVariable(name: "j", scope: !36, file: !1, line: 19, type: !12)
!52 = !DILocation(line: 19, column: 10, scope: !36)
!53 = !DILocation(line: 19, column: 16, scope: !36)
!54 = !DILocation(line: 19, column: 14, scope: !36)
!55 = !DILocalVariable(name: "loopcount", scope: !36, file: !1, line: 20, type: !39)
!56 = !DILocation(line: 20, column: 9, scope: !36)
!57 = !DILocation(line: 21, column: 5, scope: !36)
!58 = !DILocation(line: 21, column: 11, scope: !36)
!59 = !DILocation(line: 21, column: 13, scope: !36)
!60 = !DILocation(line: 22, column: 8, scope: !61)
!61 = distinct !DILexicalBlock(scope: !36, file: !1, line: 21, column: 18)
!62 = !DILocation(line: 22, column: 6, scope: !61)
!63 = !DILocation(line: 22, column: 4, scope: !61)
!64 = !DILocation(line: 23, column: 19, scope: !61)
!65 = distinct !{!65, !57, !66, !67}
!66 = !DILocation(line: 24, column: 5, scope: !36)
!67 = !{!"llvm.loop.mustprogress"}
!68 = !DILocation(line: 25, column: 8, scope: !69)
!69 = distinct !DILexicalBlock(scope: !36, file: !1, line: 25, column: 8)
!70 = !DILocation(line: 25, column: 18, scope: !69)
!71 = !DILocation(line: 25, column: 8, scope: !36)
!72 = !DILocation(line: 26, column: 9, scope: !69)
!73 = !DILocation(line: 28, column: 9, scope: !69)
!74 = !DILocation(line: 29, column: 1, scope: !36)
!75 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 31, type: !76, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!76 = !DISubroutineType(types: !77)
!77 = !{!39, !39, !78}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 32)
!79 = !DILocalVariable(name: "argc", arg: 1, scope: !75, file: !1, line: 31, type: !39)
!80 = !DILocation(line: 31, column: 14, scope: !75)
!81 = !DILocalVariable(name: "argv", arg: 2, scope: !75, file: !1, line: 31, type: !78)
!82 = !DILocation(line: 31, column: 27, scope: !75)
!83 = !DILocalVariable(name: "s", scope: !75, file: !1, line: 32, type: !84)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 40, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 5)
!87 = !DILocation(line: 32, column: 6, scope: !75)
!88 = !DILocation(line: 33, column: 20, scope: !75)
!89 = !DILocation(line: 33, column: 1, scope: !75)
!90 = !DILocation(line: 34, column: 13, scope: !75)
!91 = !DILocation(line: 34, column: 17, scope: !75)
!92 = !DILocation(line: 34, column: 1, scope: !75)
!93 = !DILocation(line: 35, column: 19, scope: !75)
!94 = !DILocation(line: 35, column: 8, scope: !75)
!95 = !DILocation(line: 35, column: 1, scope: !75)
