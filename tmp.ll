; ModuleID = 'src/symbolic_jump/klee/jmp_sj_l1_klee_annotated.bc'
source_filename = "jmp_sj_l1_klee_annotated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"0 && \22Logic bomb triggered\22\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"jmp_sj_l1_klee_annotated.c\00", align 1
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
  call void asm sideeffect "jmp *$0", "r,~{dirflag},~{fpsr},~{flags}"(i64 %8) #3, !dbg !43, !srcloc !44
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
  %call = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i64 0, i64 0)), !dbg !57
  br label %if.end16, !dbg !57

if.end16:                                         ; preds = %if.then15, %if.then12
  br label %if.end17, !dbg !58

if.end17:                                         ; preds = %if.end16, %flag_0
  %call18 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i64 0, i64 0)), !dbg !59
  %12 = load i32, i32* %retval, align 4, !dbg !60
  ret i32 %12, !dbg !60

indirectgoto:                                     ; No predecessors!
  indirectbr i8* undef, [label %flag_0]
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local i32 @__assert_fail(...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !61 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %s = alloca [5 x i8], align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !65, metadata !DIExpression()), !dbg !66
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata [5 x i8]* %s, metadata !69, metadata !DIExpression()), !dbg !73
  %0 = bitcast [5 x i8]* %s to i8*, !dbg !74
  call void @klee_make_symbolic(i8* %0, i64 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !75
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 4, !dbg !76
  %1 = load i8, i8* %arrayidx, align 1, !dbg !76
  %conv = sext i8 %1 to i32, !dbg !76
  %cmp = icmp eq i32 %conv, 0, !dbg !77
  %conv1 = zext i1 %cmp to i32, !dbg !77
  %conv2 = sext i32 %conv1 to i64, !dbg !76
  call void @klee_assume(i64 %conv2), !dbg !78
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !79
  %call = call i32 @logic_bomb(i8* %arraydecay), !dbg !80
  ret i32 %call, !dbg !81
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

declare dso_local void @klee_assume(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "jmp_sj_l1_klee_annotated.c", directory: "/home/klee/logic_bombs/src/symbolic_jump")
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
!44 = !{i64 2148171349}
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
!57 = !DILocation(line: 20, column: 13, scope: !54)
!58 = !DILocation(line: 21, column: 5, scope: !52)
!59 = !DILocation(line: 22, column: 5, scope: !9)
!60 = !DILocation(line: 23, column: 1, scope: !9)
!61 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 25, type: !62, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!62 = !DISubroutineType(types: !63)
!63 = !{!12, !12, !64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!65 = !DILocalVariable(name: "argc", arg: 1, scope: !61, file: !1, line: 25, type: !12)
!66 = !DILocation(line: 25, column: 14, scope: !61)
!67 = !DILocalVariable(name: "argv", arg: 2, scope: !61, file: !1, line: 25, type: !64)
!68 = !DILocation(line: 25, column: 27, scope: !61)
!69 = !DILocalVariable(name: "s", scope: !61, file: !1, line: 26, type: !70)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 40, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 5)
!73 = !DILocation(line: 26, column: 6, scope: !61)
!74 = !DILocation(line: 27, column: 20, scope: !61)
!75 = !DILocation(line: 27, column: 1, scope: !61)
!76 = !DILocation(line: 28, column: 13, scope: !61)
!77 = !DILocation(line: 28, column: 17, scope: !61)
!78 = !DILocation(line: 28, column: 1, scope: !61)
!79 = !DILocation(line: 29, column: 19, scope: !61)
!80 = !DILocation(line: 29, column: 8, scope: !61)
!81 = !DILocation(line: 29, column: 1, scope: !61)
