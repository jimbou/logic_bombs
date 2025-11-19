; ModuleID = 'tmp6.bc'
source_filename = "tmp_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"0 && \22Logic bomb triggered\22\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"tmp_new.c\00", align 1
@__PRETTY_FUNCTION__.logic_bomb = private unnamed_addr constant [23 x i8] c"int logic_bomb(char *)\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"0 && \22Path without the bomb\22\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @logic_bomb(i8* %s) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %symvar = alloca i32, align 4
  %addr = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %symvar, metadata !17, metadata !DIExpression()), !dbg !18
  %0 = load i8*, i8** %s.addr, align 8, !dbg !19
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0, !dbg !19
  %1 = load i8, i8* %arrayidx, align 1, !dbg !19
  %conv = sext i8 %1 to i32, !dbg !19
  %sub = sub nsw i32 %conv, 48, !dbg !20
  store i32 %sub, i32* %symvar, align 4, !dbg !18
  %2 = load i32, i32* %symvar, align 4, !dbg !21
  %rem = srem i32 %2, 6, !dbg !23
  %cmp = icmp ne i32 %rem, 1, !dbg !24
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !25

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %symvar, align 4, !dbg !26
  %cmp2 = icmp slt i32 %3, 10, !dbg !27
  br i1 %cmp2, label %if.then, label %lor.lhs.false4, !dbg !28

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = load i32, i32* %symvar, align 4, !dbg !29
  %cmp5 = icmp sgt i32 %4, 40, !dbg !30
  br i1 %cmp5, label %if.then, label %lor.lhs.false7, !dbg !31

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %5 = load i32, i32* %symvar, align 4, !dbg !32
  %cmp8 = icmp eq i32 %5, 19, !dbg !33
  br i1 %cmp8, label %if.then, label %if.end, !dbg !34

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false4, %lor.lhs.false, %entry
  %6 = load i32, i32* %symvar, align 4, !dbg !35
  store i32 %6, i32* %symvar, align 4, !dbg !37
  br label %if.end, !dbg !38

if.end:                                           ; preds = %if.then, %lor.lhs.false7
  call void @llvm.dbg.declare(metadata i64* %addr, metadata !39, metadata !DIExpression()), !dbg !41
  %7 = load i32, i32* %symvar, align 4, !dbg !42
  %idx.ext = sext i32 %7 to i64, !dbg !43
  %add.ptr = getelementptr i8, i8* blockaddress(@logic_bomb, %flag_0), i64 %idx.ext, !dbg !43
  %8 = ptrtoint i8* %add.ptr to i64, !dbg !44
  store i64 %8, i64* %addr, align 8, !dbg !41
  %9 = load i64, i64* %addr, align 8, !dbg !45
  call void asm sideeffect "jmp *$0", "r,~{dirflag},~{fpsr},~{flags}"(i64 %9) #4, !dbg !45, !srcloc !46
  br label %flag_0, !dbg !45

flag_0:                                           ; preds = %if.end, %indirectgoto
  call void @llvm.dbg.label(metadata !47), !dbg !48
  %10 = load i32, i32* %symvar, align 4, !dbg !49
  %cmp10 = icmp sgt i32 %10, 0, !dbg !51
  br i1 %cmp10, label %if.then12, label %if.end17, !dbg !52

if.then12:                                        ; preds = %flag_0
  %11 = load i32, i32* %symvar, align 4, !dbg !53
  %inc = add nsw i32 %11, 1, !dbg !53
  store i32 %inc, i32* %symvar, align 4, !dbg !53
  %12 = load i32, i32* %symvar, align 4, !dbg !55
  %cmp13 = icmp eq i32 %12, 0, !dbg !57
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !58

if.then15:                                        ; preds = %if.then12
  %call = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i64 0, i64 0)), !dbg !59
  store i32 0, i32* %retval, align 4, !dbg !61
  br label %return, !dbg !61

if.end16:                                         ; preds = %if.then12
  br label %if.end17, !dbg !62

if.end17:                                         ; preds = %if.end16, %flag_0
  %call18 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i64 0, i64 0)), !dbg !63
  store i32 0, i32* %retval, align 4, !dbg !64
  br label %return, !dbg !64

return:                                           ; preds = %if.end17, %if.then15
  %13 = load i32, i32* %retval, align 4, !dbg !65
  ret i32 %13, !dbg !65

indirectgoto:                                     ; No predecessors!
  indirectbr i8* undef, [label %flag_0]
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noreturn
declare dso_local i32 @__assert_fail(...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !66 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [5 x i8], align 1
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata [5 x i8]* %s, metadata !69, metadata !DIExpression()), !dbg !73
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !74
  call void @klee_make_symbolic(i8* %arraydecay, i64 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !75
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 4, !dbg !76
  %0 = load i8, i8* %arrayidx, align 1, !dbg !76
  %conv = sext i8 %0 to i32, !dbg !76
  %cmp = icmp eq i32 %conv, 0, !dbg !77
  %conv1 = zext i1 %cmp to i32, !dbg !77
  %conv2 = sext i32 %conv1 to i64, !dbg !76
  call void @klee_assume(i64 %conv2), !dbg !78
  %arrayidx3 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !79
  %1 = load i8, i8* %arrayidx3, align 1, !dbg !79
  %conv4 = sext i8 %1 to i32, !dbg !79
  %cmp5 = icmp sge i32 %conv4, 48, !dbg !80
  %conv6 = zext i1 %cmp5 to i32, !dbg !80
  %conv7 = sext i32 %conv6 to i64, !dbg !79
  call void @klee_assume(i64 %conv7), !dbg !81
  %arrayidx8 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !82
  %2 = load i8, i8* %arrayidx8, align 1, !dbg !82
  %conv9 = sext i8 %2 to i32, !dbg !82
  %cmp10 = icmp sle i32 %conv9, 255, !dbg !83
  %conv11 = zext i1 %cmp10 to i32, !dbg !83
  %conv12 = sext i32 %conv11 to i64, !dbg !82
  call void @klee_assume(i64 %conv12), !dbg !84
  %arrayidx13 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 1, !dbg !85
  store i8 65, i8* %arrayidx13, align 1, !dbg !86
  %arrayidx14 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 2, !dbg !87
  store i8 66, i8* %arrayidx14, align 1, !dbg !88
  %arrayidx15 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 3, !dbg !89
  store i8 67, i8* %arrayidx15, align 1, !dbg !90
  %arrayidx16 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 4, !dbg !91
  store i8 0, i8* %arrayidx16, align 1, !dbg !92
  call void @llvm.dbg.declare(metadata i32* %i, metadata !93, metadata !DIExpression()), !dbg !95
  store i32 48, i32* %i, align 4, !dbg !95
  br label %for.cond, !dbg !96

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !97
  %cmp17 = icmp slt i32 %3, 256, !dbg !99
  br i1 %cmp17, label %for.body, label %for.end, !dbg !100

for.body:                                         ; preds = %for.cond
  %arrayidx19 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !101
  %4 = load i8, i8* %arrayidx19, align 1, !dbg !101
  %conv20 = sext i8 %4 to i32, !dbg !101
  %5 = load i32, i32* %i, align 4, !dbg !104
  %cmp21 = icmp eq i32 %conv20, %5, !dbg !105
  br i1 %cmp21, label %if.then, label %if.end, !dbg !106

if.then:                                          ; preds = %for.body
  %arraydecay23 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !107
  %call = call i32 @logic_bomb(i8* %arraydecay23), !dbg !109
  br label %if.end, !dbg !110

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !111

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4, !dbg !112
  %inc = add nsw i32 %6, 1, !dbg !112
  store i32 %inc, i32* %i, align 4, !dbg !112
  br label %for.cond, !dbg !113, !llvm.loop !114

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !117
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #3

declare dso_local void @klee_assume(i64) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "tmp_new.c", directory: "/home/klee/logic_bombs/src/symbolic_jump")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!9 = distinct !DISubprogram(name: "logic_bomb", scope: !1, file: !1, line: 10, type: !10, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "s", arg: 1, scope: !9, file: !1, line: 10, type: !13)
!16 = !DILocation(line: 10, column: 22, scope: !9)
!17 = !DILocalVariable(name: "symvar", scope: !9, file: !1, line: 11, type: !12)
!18 = !DILocation(line: 11, column: 9, scope: !9)
!19 = !DILocation(line: 11, column: 18, scope: !9)
!20 = !DILocation(line: 11, column: 23, scope: !9)
!21 = !DILocation(line: 12, column: 9, scope: !22)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 12, column: 9)
!23 = !DILocation(line: 12, column: 15, scope: !22)
!24 = !DILocation(line: 12, column: 18, scope: !22)
!25 = !DILocation(line: 12, column: 23, scope: !22)
!26 = !DILocation(line: 12, column: 26, scope: !22)
!27 = !DILocation(line: 12, column: 33, scope: !22)
!28 = !DILocation(line: 12, column: 37, scope: !22)
!29 = !DILocation(line: 12, column: 40, scope: !22)
!30 = !DILocation(line: 12, column: 47, scope: !22)
!31 = !DILocation(line: 12, column: 52, scope: !22)
!32 = !DILocation(line: 12, column: 55, scope: !22)
!33 = !DILocation(line: 12, column: 62, scope: !22)
!34 = !DILocation(line: 12, column: 9, scope: !9)
!35 = !DILocation(line: 14, column: 11, scope: !36)
!36 = distinct !DILexicalBlock(scope: !22, file: !1, line: 12, column: 68)
!37 = !DILocation(line: 14, column: 9, scope: !36)
!38 = !DILocation(line: 14, column: 18, scope: !36)
!39 = !DILocalVariable(name: "addr", scope: !9, file: !1, line: 15, type: !40)
!40 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!41 = !DILocation(line: 15, column: 15, scope: !9)
!42 = !DILocation(line: 15, column: 33, scope: !9)
!43 = !DILocation(line: 15, column: 31, scope: !9)
!44 = !DILocation(line: 15, column: 22, scope: !9)
!45 = !DILocation(line: 16, column: 5, scope: !9)
!46 = !{i64 2148171887}
!47 = !DILabel(scope: !9, name: "flag_0", file: !1, line: 17)
!48 = !DILocation(line: 17, column: 3, scope: !9)
!49 = !DILocation(line: 18, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !9, file: !1, line: 18, column: 9)
!51 = !DILocation(line: 18, column: 16, scope: !50)
!52 = !DILocation(line: 18, column: 9, scope: !9)
!53 = !DILocation(line: 19, column: 15, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 18, column: 20)
!55 = !DILocation(line: 20, column: 12, scope: !56)
!56 = distinct !DILexicalBlock(scope: !54, file: !1, line: 20, column: 12)
!57 = !DILocation(line: 20, column: 19, scope: !56)
!58 = !DILocation(line: 20, column: 12, scope: !54)
!59 = !DILocation(line: 21, column: 13, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 20, column: 24)
!61 = !DILocation(line: 22, column: 13, scope: !60)
!62 = !DILocation(line: 24, column: 5, scope: !54)
!63 = !DILocation(line: 25, column: 5, scope: !9)
!64 = !DILocation(line: 26, column: 5, scope: !9)
!65 = !DILocation(line: 27, column: 1, scope: !9)
!66 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 30, type: !67, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!67 = !DISubroutineType(types: !68)
!68 = !{!12}
!69 = !DILocalVariable(name: "s", scope: !66, file: !1, line: 31, type: !70)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 40, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 5)
!73 = !DILocation(line: 31, column: 10, scope: !66)
!74 = !DILocation(line: 35, column: 24, scope: !66)
!75 = !DILocation(line: 35, column: 5, scope: !66)
!76 = !DILocation(line: 36, column: 17, scope: !66)
!77 = !DILocation(line: 36, column: 21, scope: !66)
!78 = !DILocation(line: 36, column: 5, scope: !66)
!79 = !DILocation(line: 39, column: 17, scope: !66)
!80 = !DILocation(line: 39, column: 22, scope: !66)
!81 = !DILocation(line: 39, column: 5, scope: !66)
!82 = !DILocation(line: 40, column: 17, scope: !66)
!83 = !DILocation(line: 40, column: 22, scope: !66)
!84 = !DILocation(line: 40, column: 5, scope: !66)
!85 = !DILocation(line: 43, column: 5, scope: !66)
!86 = !DILocation(line: 43, column: 10, scope: !66)
!87 = !DILocation(line: 44, column: 5, scope: !66)
!88 = !DILocation(line: 44, column: 10, scope: !66)
!89 = !DILocation(line: 45, column: 5, scope: !66)
!90 = !DILocation(line: 45, column: 10, scope: !66)
!91 = !DILocation(line: 46, column: 5, scope: !66)
!92 = !DILocation(line: 46, column: 10, scope: !66)
!93 = !DILocalVariable(name: "i", scope: !94, file: !1, line: 49, type: !12)
!94 = distinct !DILexicalBlock(scope: !66, file: !1, line: 49, column: 5)
!95 = !DILocation(line: 49, column: 14, scope: !94)
!96 = !DILocation(line: 49, column: 10, scope: !94)
!97 = !DILocation(line: 49, column: 22, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 49, column: 5)
!99 = !DILocation(line: 49, column: 24, scope: !98)
!100 = !DILocation(line: 49, column: 5, scope: !94)
!101 = !DILocation(line: 50, column: 13, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 50, column: 13)
!103 = distinct !DILexicalBlock(scope: !98, file: !1, line: 49, column: 36)
!104 = !DILocation(line: 50, column: 21, scope: !102)
!105 = !DILocation(line: 50, column: 18, scope: !102)
!106 = !DILocation(line: 50, column: 13, scope: !103)
!107 = !DILocation(line: 52, column: 24, scope: !108)
!108 = distinct !DILexicalBlock(scope: !102, file: !1, line: 50, column: 24)
!109 = !DILocation(line: 52, column: 13, scope: !108)
!110 = !DILocation(line: 53, column: 9, scope: !108)
!111 = !DILocation(line: 54, column: 5, scope: !103)
!112 = !DILocation(line: 49, column: 32, scope: !98)
!113 = !DILocation(line: 49, column: 5, scope: !98)
!114 = distinct !{!114, !100, !115, !116}
!115 = !DILocation(line: 54, column: 5, scope: !94)
!116 = !{!"llvm.loop.mustprogress"}
!117 = !DILocation(line: 56, column: 5, scope: !66)
