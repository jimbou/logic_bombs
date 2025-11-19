; ModuleID = 'tmp4.bc'
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
  store i32 13, i32* %symvar, align 4, !dbg !35
  br label %if.end, !dbg !36

if.end:                                           ; preds = %if.then, %lor.lhs.false7
  call void @llvm.dbg.declare(metadata i64* %addr, metadata !37, metadata !DIExpression()), !dbg !39
  %6 = load i32, i32* %symvar, align 4, !dbg !40
  %idx.ext = sext i32 %6 to i64, !dbg !41
  %add.ptr = getelementptr i8, i8* blockaddress(@logic_bomb, %flag_0), i64 %idx.ext, !dbg !41
  %7 = ptrtoint i8* %add.ptr to i64, !dbg !42
  store i64 %7, i64* %addr, align 8, !dbg !39
  %8 = load i64, i64* %addr, align 8, !dbg !43
  call void asm sideeffect "jmp *$0", "r,~{dirflag},~{fpsr},~{flags}"(i64 %8) #4, !dbg !43, !srcloc !44
  br label %flag_0, !dbg !43

flag_0:                                           ; preds = %if.end, %indirectgoto
  call void @llvm.dbg.label(metadata !45), !dbg !46
  %9 = load i32, i32* %symvar, align 4, !dbg !47
  %cmp10 = icmp sgt i32 %9, 0, !dbg !49
  br i1 %cmp10, label %if.then12, label %if.end17, !dbg !50

if.then12:                                        ; preds = %flag_0
  %10 = load i32, i32* %symvar, align 4, !dbg !51
  %inc = add nsw i32 %10, 1, !dbg !51
  store i32 %inc, i32* %symvar, align 4, !dbg !51
  %11 = load i32, i32* %symvar, align 4, !dbg !53
  %cmp13 = icmp eq i32 %11, 0, !dbg !55
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !56

if.then15:                                        ; preds = %if.then12
  %call = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i64 0, i64 0)), !dbg !57
  store i32 0, i32* %retval, align 4, !dbg !59
  br label %return, !dbg !59

if.end16:                                         ; preds = %if.then12
  br label %if.end17, !dbg !60

if.end17:                                         ; preds = %if.end16, %flag_0
  %call18 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i64 0, i64 0)), !dbg !61
  store i32 0, i32* %retval, align 4, !dbg !62
  br label %return, !dbg !62

return:                                           ; preds = %if.end17, %if.then15
  %12 = load i32, i32* %retval, align 4, !dbg !63
  ret i32 %12, !dbg !63

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
define dso_local i32 @main() #0 !dbg !64 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [5 x i8], align 1
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata [5 x i8]* %s, metadata !67, metadata !DIExpression()), !dbg !71
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !72
  call void @klee_make_symbolic(i8* %arraydecay, i64 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !73
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 4, !dbg !74
  %0 = load i8, i8* %arrayidx, align 1, !dbg !74
  %conv = sext i8 %0 to i32, !dbg !74
  %cmp = icmp eq i32 %conv, 0, !dbg !75
  %conv1 = zext i1 %cmp to i32, !dbg !75
  %conv2 = sext i32 %conv1 to i64, !dbg !74
  call void @klee_assume(i64 %conv2), !dbg !76
  %arrayidx3 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !77
  %1 = load i8, i8* %arrayidx3, align 1, !dbg !77
  %conv4 = sext i8 %1 to i32, !dbg !77
  %cmp5 = icmp sge i32 %conv4, 0, !dbg !78
  %conv6 = zext i1 %cmp5 to i32, !dbg !78
  %conv7 = sext i32 %conv6 to i64, !dbg !77
  call void @klee_assume(i64 %conv7), !dbg !79
  %arrayidx8 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !80
  %2 = load i8, i8* %arrayidx8, align 1, !dbg !80
  %conv9 = sext i8 %2 to i32, !dbg !80
  %cmp10 = icmp sle i32 %conv9, 255, !dbg !81
  %conv11 = zext i1 %cmp10 to i32, !dbg !81
  %conv12 = sext i32 %conv11 to i64, !dbg !80
  call void @klee_assume(i64 %conv12), !dbg !82
  %arrayidx13 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 1, !dbg !83
  store i8 65, i8* %arrayidx13, align 1, !dbg !84
  %arrayidx14 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 2, !dbg !85
  store i8 66, i8* %arrayidx14, align 1, !dbg !86
  %arrayidx15 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 3, !dbg !87
  store i8 67, i8* %arrayidx15, align 1, !dbg !88
  %arrayidx16 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 4, !dbg !89
  store i8 0, i8* %arrayidx16, align 1, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %i, metadata !91, metadata !DIExpression()), !dbg !93
  store i32 0, i32* %i, align 4, !dbg !93
  br label %for.cond, !dbg !94

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !95
  %cmp17 = icmp slt i32 %3, 256, !dbg !97
  br i1 %cmp17, label %for.body, label %for.end, !dbg !98

for.body:                                         ; preds = %for.cond
  %arrayidx19 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !99
  %4 = load i8, i8* %arrayidx19, align 1, !dbg !99
  %conv20 = sext i8 %4 to i32, !dbg !99
  %5 = load i32, i32* %i, align 4, !dbg !102
  %cmp21 = icmp eq i32 %conv20, %5, !dbg !103
  br i1 %cmp21, label %if.then, label %if.end, !dbg !104

if.then:                                          ; preds = %for.body
  %arraydecay23 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !105
  %call = call i32 @logic_bomb(i8* %arraydecay23), !dbg !107
  br label %if.end, !dbg !108

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !109

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4, !dbg !110
  %inc = add nsw i32 %6, 1, !dbg !110
  store i32 %inc, i32* %i, align 4, !dbg !110
  br label %for.cond, !dbg !111, !llvm.loop !112

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !115
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
!35 = !DILocation(line: 13, column: 9, scope: !22)
!36 = !DILocation(line: 13, column: 2, scope: !22)
!37 = !DILocalVariable(name: "addr", scope: !9, file: !1, line: 14, type: !38)
!38 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!39 = !DILocation(line: 14, column: 15, scope: !9)
!40 = !DILocation(line: 14, column: 33, scope: !9)
!41 = !DILocation(line: 14, column: 31, scope: !9)
!42 = !DILocation(line: 14, column: 22, scope: !9)
!43 = !DILocation(line: 15, column: 5, scope: !9)
!44 = !{i64 2148171816}
!45 = !DILabel(scope: !9, name: "flag_0", file: !1, line: 16)
!46 = !DILocation(line: 16, column: 3, scope: !9)
!47 = !DILocation(line: 17, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !9, file: !1, line: 17, column: 9)
!49 = !DILocation(line: 17, column: 16, scope: !48)
!50 = !DILocation(line: 17, column: 9, scope: !9)
!51 = !DILocation(line: 18, column: 15, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !1, line: 17, column: 20)
!53 = !DILocation(line: 19, column: 12, scope: !54)
!54 = distinct !DILexicalBlock(scope: !52, file: !1, line: 19, column: 12)
!55 = !DILocation(line: 19, column: 19, scope: !54)
!56 = !DILocation(line: 19, column: 12, scope: !52)
!57 = !DILocation(line: 20, column: 13, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !1, line: 19, column: 24)
!59 = !DILocation(line: 21, column: 13, scope: !58)
!60 = !DILocation(line: 23, column: 5, scope: !52)
!61 = !DILocation(line: 24, column: 5, scope: !9)
!62 = !DILocation(line: 25, column: 5, scope: !9)
!63 = !DILocation(line: 26, column: 1, scope: !9)
!64 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 29, type: !65, scopeLine: 29, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!65 = !DISubroutineType(types: !66)
!66 = !{!12}
!67 = !DILocalVariable(name: "s", scope: !64, file: !1, line: 30, type: !68)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 40, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 5)
!71 = !DILocation(line: 30, column: 10, scope: !64)
!72 = !DILocation(line: 34, column: 24, scope: !64)
!73 = !DILocation(line: 34, column: 5, scope: !64)
!74 = !DILocation(line: 35, column: 17, scope: !64)
!75 = !DILocation(line: 35, column: 21, scope: !64)
!76 = !DILocation(line: 35, column: 5, scope: !64)
!77 = !DILocation(line: 38, column: 17, scope: !64)
!78 = !DILocation(line: 38, column: 22, scope: !64)
!79 = !DILocation(line: 38, column: 5, scope: !64)
!80 = !DILocation(line: 39, column: 17, scope: !64)
!81 = !DILocation(line: 39, column: 22, scope: !64)
!82 = !DILocation(line: 39, column: 5, scope: !64)
!83 = !DILocation(line: 42, column: 5, scope: !64)
!84 = !DILocation(line: 42, column: 10, scope: !64)
!85 = !DILocation(line: 43, column: 5, scope: !64)
!86 = !DILocation(line: 43, column: 10, scope: !64)
!87 = !DILocation(line: 44, column: 5, scope: !64)
!88 = !DILocation(line: 44, column: 10, scope: !64)
!89 = !DILocation(line: 45, column: 5, scope: !64)
!90 = !DILocation(line: 45, column: 10, scope: !64)
!91 = !DILocalVariable(name: "i", scope: !92, file: !1, line: 48, type: !12)
!92 = distinct !DILexicalBlock(scope: !64, file: !1, line: 48, column: 5)
!93 = !DILocation(line: 48, column: 14, scope: !92)
!94 = !DILocation(line: 48, column: 10, scope: !92)
!95 = !DILocation(line: 48, column: 21, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !1, line: 48, column: 5)
!97 = !DILocation(line: 48, column: 23, scope: !96)
!98 = !DILocation(line: 48, column: 5, scope: !92)
!99 = !DILocation(line: 49, column: 13, scope: !100)
!100 = distinct !DILexicalBlock(scope: !101, file: !1, line: 49, column: 13)
!101 = distinct !DILexicalBlock(scope: !96, file: !1, line: 48, column: 35)
!102 = !DILocation(line: 49, column: 21, scope: !100)
!103 = !DILocation(line: 49, column: 18, scope: !100)
!104 = !DILocation(line: 49, column: 13, scope: !101)
!105 = !DILocation(line: 51, column: 24, scope: !106)
!106 = distinct !DILexicalBlock(scope: !100, file: !1, line: 49, column: 24)
!107 = !DILocation(line: 51, column: 13, scope: !106)
!108 = !DILocation(line: 52, column: 9, scope: !106)
!109 = !DILocation(line: 53, column: 5, scope: !101)
!110 = !DILocation(line: 48, column: 31, scope: !96)
!111 = !DILocation(line: 48, column: 5, scope: !96)
!112 = distinct !{!112, !98, !113, !114}
!113 = !DILocation(line: 53, column: 5, scope: !92)
!114 = !{!"llvm.loop.mustprogress"}
!115 = !DILocation(line: 55, column: 5, scope: !64)
