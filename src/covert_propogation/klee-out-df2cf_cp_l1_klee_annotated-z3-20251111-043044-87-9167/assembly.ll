; ModuleID = 'df2cf_cp_l1_klee_annotated.bc'
source_filename = "df2cf_cp_l1_klee_annotated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"0 && \22Logic bomb triggered\22\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"df2cf_cp_l1_klee_annotated.c\00", align 1
@__PRETTY_FUNCTION__.logic_bomb = private unnamed_addr constant [23 x i8] c"int logic_bomb(char *)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @df2cf(i8 signext %a) #0 !dbg !9 {
entry:
  %a.addr = alloca i8, align 1
  %b = alloca i32, align 4
  store i8 %a, i8* %a.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %a.addr, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %b, metadata !16, metadata !DIExpression()), !dbg !17
  %0 = load i8, i8* %a.addr, align 1, !dbg !18
  %conv = sext i8 %0 to i32, !dbg !18
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
  ], !dbg !19

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %b, align 4, !dbg !20
  br label %sw.epilog, !dbg !22

sw.bb1:                                           ; preds = %entry
  store i32 1, i32* %b, align 4, !dbg !23
  br label %sw.epilog, !dbg !24

sw.bb2:                                           ; preds = %entry
  store i32 2, i32* %b, align 4, !dbg !25
  br label %sw.epilog, !dbg !26

sw.bb3:                                           ; preds = %entry
  store i32 3, i32* %b, align 4, !dbg !27
  br label %sw.epilog, !dbg !28

sw.bb4:                                           ; preds = %entry
  store i32 4, i32* %b, align 4, !dbg !29
  br label %sw.epilog, !dbg !30

sw.bb5:                                           ; preds = %entry
  store i32 5, i32* %b, align 4, !dbg !31
  br label %sw.epilog, !dbg !32

sw.bb6:                                           ; preds = %entry
  store i32 6, i32* %b, align 4, !dbg !33
  br label %sw.epilog, !dbg !34

sw.bb7:                                           ; preds = %entry
  store i32 7, i32* %b, align 4, !dbg !35
  br label %sw.epilog, !dbg !36

sw.bb8:                                           ; preds = %entry
  store i32 8, i32* %b, align 4, !dbg !37
  br label %sw.epilog, !dbg !38

sw.bb9:                                           ; preds = %entry
  store i32 9, i32* %b, align 4, !dbg !39
  br label %sw.epilog, !dbg !40

sw.default:                                       ; preds = %entry
  store i32 0, i32* %b, align 4, !dbg !41
  br label %sw.epilog, !dbg !42

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, i32* %b, align 4, !dbg !43
  ret i32 %1, !dbg !44
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @logic_bomb(i8* %s) #0 !dbg !45 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %symvar = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i32* %symvar, metadata !51, metadata !DIExpression()), !dbg !52
  %0 = load i8*, i8** %s.addr, align 8, !dbg !53
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0, !dbg !53
  %1 = load i8, i8* %arrayidx, align 1, !dbg !53
  %conv = sext i8 %1 to i32, !dbg !53
  %sub = sub nsw i32 %conv, 48, !dbg !54
  store i32 %sub, i32* %symvar, align 4, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %a, metadata !55, metadata !DIExpression()), !dbg !56
  %2 = load i32, i32* %symvar, align 4, !dbg !57
  %rem = srem i32 %2, 10, !dbg !58
  %conv1 = trunc i32 %rem to i8, !dbg !57
  %call = call i32 @df2cf(i8 signext %conv1), !dbg !59
  store i32 %call, i32* %a, align 4, !dbg !56
  %3 = load i32, i32* %a, align 4, !dbg !60
  %inc = add nsw i32 %3, 1, !dbg !60
  store i32 %inc, i32* %a, align 4, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %b, metadata !61, metadata !DIExpression()), !dbg !62
  %4 = load i32, i32* %symvar, align 4, !dbg !63
  %5 = load i32, i32* %a, align 4, !dbg !64
  %add = add nsw i32 %4, %5, !dbg !65
  store i32 %add, i32* %b, align 4, !dbg !62
  %6 = load i32, i32* %b, align 4, !dbg !66
  %cmp = icmp eq i32 %6, 15, !dbg !68
  br i1 %cmp, label %if.then, label %if.else, !dbg !69

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i64 0, i64 0)), !dbg !70
  br label %if.end, !dbg !70

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !71
  ret i32 %7, !dbg !71
}

; Function Attrs: noreturn
declare dso_local i32 @__assert_fail(...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !72 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %s = alloca [5 x i8], align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !76, metadata !DIExpression()), !dbg !77
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata [5 x i8]* %s, metadata !80, metadata !DIExpression()), !dbg !84
  %0 = bitcast [5 x i8]* %s to i8*, !dbg !85
  call void @klee_make_symbolic(i8* %0, i64 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !86
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 4, !dbg !87
  %1 = load i8, i8* %arrayidx, align 1, !dbg !87
  %conv = sext i8 %1 to i32, !dbg !87
  %cmp = icmp eq i32 %conv, 0, !dbg !88
  %conv1 = zext i1 %cmp to i32, !dbg !88
  %conv2 = sext i32 %conv1 to i64, !dbg !87
  call void @klee_assume(i64 %conv2), !dbg !89
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !90
  %call = call i32 @logic_bomb(i8* %arraydecay), !dbg !91
  ret i32 %call, !dbg !92
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
!1 = !DIFile(filename: "df2cf_cp_l1_klee_annotated.c", directory: "/home/klee/logic_bombs/src/covert_propogation")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!9 = distinct !DISubprogram(name: "df2cf", scope: !1, file: !1, line: 10, type: !10, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "a", arg: 1, scope: !9, file: !1, line: 10, type: !13)
!15 = !DILocation(line: 10, column: 16, scope: !9)
!16 = !DILocalVariable(name: "b", scope: !9, file: !1, line: 12, type: !12)
!17 = !DILocation(line: 12, column: 9, scope: !9)
!18 = !DILocation(line: 13, column: 12, scope: !9)
!19 = !DILocation(line: 13, column: 5, scope: !9)
!20 = !DILocation(line: 15, column: 11, scope: !21)
!21 = distinct !DILexicalBlock(scope: !9, file: !1, line: 13, column: 14)
!22 = !DILocation(line: 16, column: 2, scope: !21)
!23 = !DILocation(line: 18, column: 11, scope: !21)
!24 = !DILocation(line: 19, column: 2, scope: !21)
!25 = !DILocation(line: 21, column: 11, scope: !21)
!26 = !DILocation(line: 22, column: 2, scope: !21)
!27 = !DILocation(line: 24, column: 11, scope: !21)
!28 = !DILocation(line: 25, column: 2, scope: !21)
!29 = !DILocation(line: 27, column: 11, scope: !21)
!30 = !DILocation(line: 28, column: 2, scope: !21)
!31 = !DILocation(line: 30, column: 11, scope: !21)
!32 = !DILocation(line: 31, column: 2, scope: !21)
!33 = !DILocation(line: 33, column: 11, scope: !21)
!34 = !DILocation(line: 34, column: 2, scope: !21)
!35 = !DILocation(line: 36, column: 11, scope: !21)
!36 = !DILocation(line: 37, column: 2, scope: !21)
!37 = !DILocation(line: 39, column: 11, scope: !21)
!38 = !DILocation(line: 40, column: 2, scope: !21)
!39 = !DILocation(line: 42, column: 11, scope: !21)
!40 = !DILocation(line: 43, column: 2, scope: !21)
!41 = !DILocation(line: 45, column: 11, scope: !21)
!42 = !DILocation(line: 46, column: 9, scope: !21)
!43 = !DILocation(line: 48, column: 12, scope: !9)
!44 = !DILocation(line: 48, column: 5, scope: !9)
!45 = distinct !DISubprogram(name: "logic_bomb", scope: !1, file: !1, line: 52, type: !46, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!46 = !DISubroutineType(types: !47)
!47 = !{!12, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!49 = !DILocalVariable(name: "s", arg: 1, scope: !45, file: !1, line: 52, type: !48)
!50 = !DILocation(line: 52, column: 22, scope: !45)
!51 = !DILocalVariable(name: "symvar", scope: !45, file: !1, line: 53, type: !12)
!52 = !DILocation(line: 53, column: 9, scope: !45)
!53 = !DILocation(line: 53, column: 18, scope: !45)
!54 = !DILocation(line: 53, column: 23, scope: !45)
!55 = !DILocalVariable(name: "a", scope: !45, file: !1, line: 54, type: !12)
!56 = !DILocation(line: 54, column: 9, scope: !45)
!57 = !DILocation(line: 54, column: 19, scope: !45)
!58 = !DILocation(line: 54, column: 25, scope: !45)
!59 = !DILocation(line: 54, column: 13, scope: !45)
!60 = !DILocation(line: 55, column: 6, scope: !45)
!61 = !DILocalVariable(name: "b", scope: !45, file: !1, line: 56, type: !12)
!62 = !DILocation(line: 56, column: 9, scope: !45)
!63 = !DILocation(line: 56, column: 13, scope: !45)
!64 = !DILocation(line: 56, column: 22, scope: !45)
!65 = !DILocation(line: 56, column: 20, scope: !45)
!66 = !DILocation(line: 57, column: 8, scope: !67)
!67 = distinct !DILexicalBlock(scope: !45, file: !1, line: 57, column: 8)
!68 = !DILocation(line: 57, column: 10, scope: !67)
!69 = !DILocation(line: 57, column: 8, scope: !45)
!70 = !DILocation(line: 58, column: 9, scope: !67)
!71 = !DILocation(line: 61, column: 1, scope: !45)
!72 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 63, type: !73, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!73 = !DISubroutineType(types: !74)
!74 = !{!12, !12, !75}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!76 = !DILocalVariable(name: "argc", arg: 1, scope: !72, file: !1, line: 63, type: !12)
!77 = !DILocation(line: 63, column: 14, scope: !72)
!78 = !DILocalVariable(name: "argv", arg: 2, scope: !72, file: !1, line: 63, type: !75)
!79 = !DILocation(line: 63, column: 27, scope: !72)
!80 = !DILocalVariable(name: "s", scope: !72, file: !1, line: 64, type: !81)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 40, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 5)
!84 = !DILocation(line: 64, column: 6, scope: !72)
!85 = !DILocation(line: 65, column: 20, scope: !72)
!86 = !DILocation(line: 65, column: 1, scope: !72)
!87 = !DILocation(line: 66, column: 13, scope: !72)
!88 = !DILocation(line: 66, column: 17, scope: !72)
!89 = !DILocation(line: 66, column: 1, scope: !72)
!90 = !DILocation(line: 67, column: 19, scope: !72)
!91 = !DILocation(line: 67, column: 8, scope: !72)
!92 = !DILocation(line: 67, column: 1, scope: !72)
