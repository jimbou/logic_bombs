; ModuleID = 'df2cf_cp_l1_klee_annotated.bc'
source_filename = "/home/klee/logic_bombs/src/covert_propogation/df2cf_cp_l1_klee_annotated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"0 && \22Logic bomb triggered\22\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"/home/klee/logic_bombs/src/covert_propogation/df2cf_cp_l1_klee_annotated.c\00", align 1
@__PRETTY_FUNCTION__.logic_bomb = private unnamed_addr constant [23 x i8] c"int logic_bomb(char *)\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"0 && \22Path without the bomb\22\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @df2cf(i8 signext %a) #0 !dbg !9 {
entry:
  %a.addr = alloca i8, align 1
  %b = alloca i32, align 4
  store i8 %a, i8* %a.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %a.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %b, metadata !17, metadata !DIExpression()), !dbg !18
  %0 = load i8, i8* %a.addr, align 1, !dbg !19
  %conv = sext i8 %0 to i32, !dbg !19
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
    i32 8, label %sw.bb8
    i32 9, label %sw.bb9
  ], !dbg !20

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %b, align 4, !dbg !21
  br label %sw.epilog, !dbg !23

sw.bb1:                                           ; preds = %entry
  store i32 1, i32* %b, align 4, !dbg !24
  br label %sw.epilog, !dbg !25

sw.bb2:                                           ; preds = %entry
  store i32 2, i32* %b, align 4, !dbg !26
  br label %sw.epilog, !dbg !27

sw.bb3:                                           ; preds = %entry
  store i32 3, i32* %b, align 4, !dbg !28
  br label %sw.epilog, !dbg !29

sw.bb4:                                           ; preds = %entry
  store i32 4, i32* %b, align 4, !dbg !30
  br label %sw.epilog, !dbg !31

sw.bb5:                                           ; preds = %entry
  store i32 5, i32* %b, align 4, !dbg !32
  br label %sw.epilog, !dbg !33

sw.bb6:                                           ; preds = %entry
  store i32 6, i32* %b, align 4, !dbg !34
  br label %sw.epilog, !dbg !35

sw.bb7:                                           ; preds = %entry
  store i32 7, i32* %b, align 4, !dbg !36
  br label %sw.epilog, !dbg !37

sw.bb8:                                           ; preds = %entry
  store i32 8, i32* %b, align 4, !dbg !38
  br label %sw.epilog, !dbg !39

sw.bb9:                                           ; preds = %entry
  store i32 9, i32* %b, align 4, !dbg !40
  br label %sw.epilog, !dbg !41

sw.default:                                       ; preds = %entry
  store i32 0, i32* %b, align 4, !dbg !42
  br label %sw.epilog, !dbg !43

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, i32* %b, align 4, !dbg !44
  ret i32 %1, !dbg !45
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @logic_bomb(i8* %s) #0 !dbg !46 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %symvar = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i32* %symvar, metadata !52, metadata !DIExpression()), !dbg !53
  %0 = load i8*, i8** %s.addr, align 8, !dbg !54
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0, !dbg !54
  %1 = load i8, i8* %arrayidx, align 1, !dbg !54
  %conv = sext i8 %1 to i32, !dbg !54
  %sub = sub nsw i32 %conv, 48, !dbg !55
  store i32 %sub, i32* %symvar, align 4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %a, metadata !56, metadata !DIExpression()), !dbg !57
  %2 = load i32, i32* %symvar, align 4, !dbg !58
  %rem = srem i32 %2, 10, !dbg !59
  %conv1 = trunc i32 %rem to i8, !dbg !58
  %call = call i32 @df2cf(i8 signext %conv1), !dbg !60
  store i32 %call, i32* %a, align 4, !dbg !57
  %3 = load i32, i32* %a, align 4, !dbg !61
  %inc = add nsw i32 %3, 1, !dbg !61
  store i32 %inc, i32* %a, align 4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %b, metadata !62, metadata !DIExpression()), !dbg !63
  %4 = load i32, i32* %symvar, align 4, !dbg !64
  %5 = load i32, i32* %a, align 4, !dbg !65
  %add = add nsw i32 %4, %5, !dbg !66
  store i32 %add, i32* %b, align 4, !dbg !63
  %6 = load i32, i32* %b, align 4, !dbg !67
  %cmp = icmp eq i32 %6, 15, !dbg !69
  br i1 %cmp, label %if.then, label %if.else, !dbg !70

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i64 0, i64 0)), !dbg !71
  br label %if.end, !dbg !71

if.else:                                          ; preds = %entry
  %call4 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i64 0, i64 0)), !dbg !72
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !73
  ret i32 %7, !dbg !73
}

; Function Attrs: noreturn
declare dso_local i32 @__assert_fail(...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !74 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %s = alloca [5 x i8], align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !78, metadata !DIExpression()), !dbg !79
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !80, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata [5 x i8]* %s, metadata !82, metadata !DIExpression()), !dbg !86
  %0 = bitcast [5 x i8]* %s to i8*, !dbg !87
  call void @klee_make_symbolic(i8* %0, i64 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !88
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 4, !dbg !89
  %1 = load i8, i8* %arrayidx, align 1, !dbg !89
  %conv = sext i8 %1 to i32, !dbg !89
  %cmp = icmp eq i32 %conv, 0, !dbg !90
  %conv1 = zext i1 %cmp to i32, !dbg !90
  %conv2 = sext i32 %conv1 to i64, !dbg !89
  call void @klee_assume(i64 %conv2), !dbg !91
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !92
  %call = call i32 @logic_bomb(i8* %arraydecay), !dbg !93
  ret i32 %call, !dbg !94
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
!1 = !DIFile(filename: "/home/klee/logic_bombs/src/covert_propogation/df2cf_cp_l1_klee_annotated.c", directory: "/home/klee/logic_bombs")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!9 = distinct !DISubprogram(name: "df2cf", scope: !10, file: !10, line: 10, type: !11, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DIFile(filename: "src/covert_propogation/df2cf_cp_l1_klee_annotated.c", directory: "/home/klee/logic_bombs")
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "a", arg: 1, scope: !9, file: !10, line: 10, type: !14)
!16 = !DILocation(line: 10, column: 16, scope: !9)
!17 = !DILocalVariable(name: "b", scope: !9, file: !10, line: 12, type: !13)
!18 = !DILocation(line: 12, column: 9, scope: !9)
!19 = !DILocation(line: 13, column: 12, scope: !9)
!20 = !DILocation(line: 13, column: 5, scope: !9)
!21 = !DILocation(line: 15, column: 11, scope: !22)
!22 = distinct !DILexicalBlock(scope: !9, file: !10, line: 13, column: 14)
!23 = !DILocation(line: 16, column: 2, scope: !22)
!24 = !DILocation(line: 18, column: 11, scope: !22)
!25 = !DILocation(line: 19, column: 2, scope: !22)
!26 = !DILocation(line: 21, column: 11, scope: !22)
!27 = !DILocation(line: 22, column: 2, scope: !22)
!28 = !DILocation(line: 24, column: 11, scope: !22)
!29 = !DILocation(line: 25, column: 2, scope: !22)
!30 = !DILocation(line: 27, column: 11, scope: !22)
!31 = !DILocation(line: 28, column: 2, scope: !22)
!32 = !DILocation(line: 30, column: 11, scope: !22)
!33 = !DILocation(line: 31, column: 2, scope: !22)
!34 = !DILocation(line: 33, column: 11, scope: !22)
!35 = !DILocation(line: 34, column: 2, scope: !22)
!36 = !DILocation(line: 36, column: 11, scope: !22)
!37 = !DILocation(line: 37, column: 2, scope: !22)
!38 = !DILocation(line: 39, column: 11, scope: !22)
!39 = !DILocation(line: 40, column: 2, scope: !22)
!40 = !DILocation(line: 42, column: 11, scope: !22)
!41 = !DILocation(line: 43, column: 2, scope: !22)
!42 = !DILocation(line: 45, column: 11, scope: !22)
!43 = !DILocation(line: 46, column: 9, scope: !22)
!44 = !DILocation(line: 48, column: 12, scope: !9)
!45 = !DILocation(line: 48, column: 5, scope: !9)
!46 = distinct !DISubprogram(name: "logic_bomb", scope: !10, file: !10, line: 52, type: !47, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!47 = !DISubroutineType(types: !48)
!48 = !{!13, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!50 = !DILocalVariable(name: "s", arg: 1, scope: !46, file: !10, line: 52, type: !49)
!51 = !DILocation(line: 52, column: 22, scope: !46)
!52 = !DILocalVariable(name: "symvar", scope: !46, file: !10, line: 53, type: !13)
!53 = !DILocation(line: 53, column: 9, scope: !46)
!54 = !DILocation(line: 53, column: 18, scope: !46)
!55 = !DILocation(line: 53, column: 23, scope: !46)
!56 = !DILocalVariable(name: "a", scope: !46, file: !10, line: 54, type: !13)
!57 = !DILocation(line: 54, column: 9, scope: !46)
!58 = !DILocation(line: 54, column: 19, scope: !46)
!59 = !DILocation(line: 54, column: 25, scope: !46)
!60 = !DILocation(line: 54, column: 13, scope: !46)
!61 = !DILocation(line: 55, column: 6, scope: !46)
!62 = !DILocalVariable(name: "b", scope: !46, file: !10, line: 56, type: !13)
!63 = !DILocation(line: 56, column: 9, scope: !46)
!64 = !DILocation(line: 56, column: 13, scope: !46)
!65 = !DILocation(line: 56, column: 22, scope: !46)
!66 = !DILocation(line: 56, column: 20, scope: !46)
!67 = !DILocation(line: 57, column: 8, scope: !68)
!68 = distinct !DILexicalBlock(scope: !46, file: !10, line: 57, column: 8)
!69 = !DILocation(line: 57, column: 10, scope: !68)
!70 = !DILocation(line: 57, column: 8, scope: !46)
!71 = !DILocation(line: 58, column: 9, scope: !68)
!72 = !DILocation(line: 60, column: 9, scope: !68)
!73 = !DILocation(line: 61, column: 1, scope: !46)
!74 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 63, type: !75, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!75 = !DISubroutineType(types: !76)
!76 = !{!13, !13, !77}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!78 = !DILocalVariable(name: "argc", arg: 1, scope: !74, file: !10, line: 63, type: !13)
!79 = !DILocation(line: 63, column: 14, scope: !74)
!80 = !DILocalVariable(name: "argv", arg: 2, scope: !74, file: !10, line: 63, type: !77)
!81 = !DILocation(line: 63, column: 27, scope: !74)
!82 = !DILocalVariable(name: "s", scope: !74, file: !10, line: 64, type: !83)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 40, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 5)
!86 = !DILocation(line: 64, column: 6, scope: !74)
!87 = !DILocation(line: 65, column: 20, scope: !74)
!88 = !DILocation(line: 65, column: 1, scope: !74)
!89 = !DILocation(line: 66, column: 13, scope: !74)
!90 = !DILocation(line: 66, column: 17, scope: !74)
!91 = !DILocation(line: 66, column: 1, scope: !74)
!92 = !DILocation(line: 67, column: 19, scope: !74)
!93 = !DILocation(line: 67, column: 8, scope: !74)
!94 = !DILocation(line: 67, column: 1, scope: !74)
