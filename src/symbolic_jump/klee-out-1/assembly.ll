; ModuleID = 'tmp.bc'
source_filename = "tmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.logic_bomb.array = private unnamed_addr constant [10 x i32] [i32 7, i32 13, i32 14, i32 15, i32 16, i32 21, i32 22, i32 37, i32 23, i32 24], align 16
@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @logic_bomb(i8* %s) #0 !dbg !11 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %symvar = alloca i32, align 4
  %array = alloca [10 x i32], align 16
  %addr = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %symvar, metadata !19, metadata !DIExpression()), !dbg !20
  %0 = load i8*, i8** %s.addr, align 8, !dbg !21
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0, !dbg !21
  %1 = load i8, i8* %arrayidx, align 1, !dbg !21
  %conv = sext i8 %1 to i32, !dbg !21
  %sub = sub nsw i32 %conv, 48, !dbg !22
  store i32 %sub, i32* %symvar, align 4, !dbg !20
  call void @llvm.dbg.declare(metadata [10 x i32]* %array, metadata !23, metadata !DIExpression()), !dbg !27
  %2 = bitcast [10 x i32]* %array to i8*, !dbg !27
  %3 = call i8* @memcpy(i8* %2, i8* bitcast ([10 x i32]* @__const.logic_bomb.array to i8*), i64 40), !dbg !27
  call void @llvm.dbg.declare(metadata i64* %addr, metadata !28, metadata !DIExpression()), !dbg !30
  %4 = load i32, i32* %symvar, align 4, !dbg !31
  %rem = srem i32 %4, 10, !dbg !32
  %idxprom = sext i32 %rem to i64, !dbg !33
  %arrayidx1 = getelementptr inbounds [10 x i32], [10 x i32]* %array, i64 0, i64 %idxprom, !dbg !33
  %5 = load i32, i32* %arrayidx1, align 4, !dbg !33
  %idx.ext = sext i32 %5 to i64, !dbg !34
  %add.ptr = getelementptr i8, i8* blockaddress(@logic_bomb, %flag_0), i64 %idx.ext, !dbg !34
  %6 = ptrtoint i8* %add.ptr to i64, !dbg !35
  store i64 %6, i64* %addr, align 8, !dbg !30
  %7 = load i64, i64* %addr, align 8, !dbg !36
  call void asm sideeffect "jmp *$0", "r,~{dirflag},~{fpsr},~{flags}"(i64 %7) #5, !dbg !36, !srcloc !37
  br label %flag_0, !dbg !36

flag_0:                                           ; preds = %entry, %indirectgoto
  call void @llvm.dbg.label(metadata !38), !dbg !39
  %8 = load i32, i32* %symvar, align 4, !dbg !40
  %cmp = icmp sgt i32 %8, 0, !dbg !42
  br i1 %cmp, label %if.then, label %if.end6, !dbg !43

if.then:                                          ; preds = %flag_0
  %9 = load i32, i32* %symvar, align 4, !dbg !44
  %inc = add nsw i32 %9, 1, !dbg !44
  store i32 %inc, i32* %symvar, align 4, !dbg !44
  %10 = load i32, i32* %symvar, align 4, !dbg !46
  %cmp3 = icmp eq i32 %10, 0, !dbg !48
  br i1 %cmp3, label %if.then5, label %if.end, !dbg !49

if.then5:                                         ; preds = %if.then
  store i32 3, i32* %retval, align 4, !dbg !50
  br label %return, !dbg !50

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !51

if.end6:                                          ; preds = %if.end, %flag_0
  store i32 0, i32* %retval, align 4, !dbg !52
  br label %return, !dbg !52

return:                                           ; preds = %if.end6, %if.then5
  %11 = load i32, i32* %retval, align 4, !dbg !53
  ret i32 %11, !dbg !53

indirectgoto:                                     ; No predecessors!
  indirectbr i8* undef, [label %flag_0]
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !54 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [5 x i8], align 1
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata [5 x i8]* %s, metadata !57, metadata !DIExpression()), !dbg !61
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !62
  %call = call i32 (i8*, i64, i8*, ...) bitcast (i32 (...)* @klee_make_symbolic to i32 (i8*, i64, i8*, ...)*)(i8* %arraydecay, i64 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !63
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 4, !dbg !64
  %0 = load i8, i8* %arrayidx, align 1, !dbg !64
  %conv = sext i8 %0 to i32, !dbg !64
  %cmp = icmp eq i32 %conv, 0, !dbg !65
  %conv1 = zext i1 %cmp to i32, !dbg !65
  %call2 = call i32 (i32, ...) bitcast (i32 (...)* @klee_assume to i32 (i32, ...)*)(i32 %conv1), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %i, metadata !67, metadata !DIExpression()), !dbg !69
  store i32 0, i32* %i, align 4, !dbg !69
  br label %for.cond, !dbg !70

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !71
  %cmp3 = icmp slt i32 %1, 10, !dbg !73
  br i1 %cmp3, label %for.body, label %for.end, !dbg !74

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !75
  %arrayidx5 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !78
  %3 = load i8, i8* %arrayidx5, align 1, !dbg !78
  %conv6 = sext i8 %3 to i32, !dbg !78
  %sub = sub nsw i32 %conv6, 48, !dbg !79
  %rem = srem i32 %sub, 10, !dbg !80
  %cmp7 = icmp eq i32 %2, %rem, !dbg !81
  br i1 %cmp7, label %if.then, label %if.end, !dbg !82

if.then:                                          ; preds = %for.body
  %arrayidx9 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !83
  %4 = load i8, i8* %arrayidx9, align 1, !dbg !83
  %conv10 = sext i8 %4 to i32, !dbg !83
  %sub11 = sub nsw i32 %conv10, 48, !dbg !85
  %rem12 = srem i32 %sub11, 10, !dbg !86
  %5 = load i32, i32* %i, align 4, !dbg !87
  %cmp13 = icmp eq i32 %rem12, %5, !dbg !88
  %conv14 = zext i1 %cmp13 to i32, !dbg !88
  %call15 = call i32 (i32, ...) bitcast (i32 (...)* @klee_assume to i32 (i32, ...)*)(i32 %conv14), !dbg !89
  %arrayidx16 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !90
  %6 = load i8, i8* %arrayidx16, align 1, !dbg !90
  %conv17 = sext i8 %6 to i32, !dbg !90
  %cmp18 = icmp sge i32 %conv17, 0, !dbg !91
  %conv19 = zext i1 %cmp18 to i32, !dbg !91
  %call20 = call i32 (i32, ...) bitcast (i32 (...)* @klee_assume to i32 (i32, ...)*)(i32 %conv19), !dbg !92
  %arrayidx21 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !93
  %7 = load i8, i8* %arrayidx21, align 1, !dbg !93
  %conv22 = sext i8 %7 to i32, !dbg !93
  %cmp23 = icmp sle i32 %conv22, 255, !dbg !94
  %conv24 = zext i1 %cmp23 to i32, !dbg !94
  %call25 = call i32 (i32, ...) bitcast (i32 (...)* @klee_assume to i32 (i32, ...)*)(i32 %conv24), !dbg !95
  %arraydecay26 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !96
  %call27 = call i32 @logic_bomb(i8* %arraydecay26), !dbg !97
  br label %if.end, !dbg !98

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !99

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !100
  %inc = add nsw i32 %8, 1, !dbg !100
  store i32 %inc, i32* %i, align 4, !dbg !100
  br label %for.cond, !dbg !101, !llvm.loop !102

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !105
}

declare dso_local i32 @klee_make_symbolic(...) #3

declare dso_local i32 @klee_assume(...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 !dbg !106 {
entry:
  %destaddr.addr = alloca i8*, align 8
  %srcaddr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  store i8* %destaddr, i8** %destaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %destaddr.addr, metadata !116, metadata !DIExpression()), !dbg !117
  store i8* %srcaddr, i8** %srcaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %srcaddr.addr, metadata !118, metadata !DIExpression()), !dbg !119
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata i8** %dest, metadata !122, metadata !DIExpression()), !dbg !123
  %0 = load i8*, i8** %destaddr.addr, align 8, !dbg !124
  store i8* %0, i8** %dest, align 8, !dbg !123
  call void @llvm.dbg.declare(metadata i8** %src, metadata !125, metadata !DIExpression()), !dbg !128
  %1 = load i8*, i8** %srcaddr.addr, align 8, !dbg !129
  store i8* %1, i8** %src, align 8, !dbg !128
  br label %while.cond, !dbg !130

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, i64* %len.addr, align 8, !dbg !131
  %dec = add i64 %2, -1, !dbg !131
  store i64 %dec, i64* %len.addr, align 8, !dbg !131
  %cmp = icmp ugt i64 %2, 0, !dbg !132
  br i1 %cmp, label %while.body, label %while.end, !dbg !130

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %src, align 8, !dbg !133
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !133
  store i8* %incdec.ptr, i8** %src, align 8, !dbg !133
  %4 = load i8, i8* %3, align 1, !dbg !134
  %5 = load i8*, i8** %dest, align 8, !dbg !135
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1, !dbg !135
  store i8* %incdec.ptr1, i8** %dest, align 8, !dbg !135
  store i8 %4, i8* %5, align 1, !dbg !136
  br label %while.cond, !dbg !130, !llvm.loop !137

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %destaddr.addr, align 8, !dbg !138
  ret i8* %6, !dbg !139
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10, !10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "tmp.c", directory: "/home/klee/logic_bombs/src/symbolic_jump")
!2 = !{}
!3 = distinct !DICompileUnit(language: DW_LANG_C99, file: !4, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!4 = !DIFile(filename: "/tmp/klee_src/runtime/Freestanding/memcpy.c", directory: "/tmp/klee_build130stp_z3/runtime/Freestanding")
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!11 = distinct !DISubprogram(name: "logic_bomb", scope: !1, file: !1, line: 9, type: !12, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DILocalVariable(name: "s", arg: 1, scope: !11, file: !1, line: 9, type: !15)
!18 = !DILocation(line: 9, column: 22, scope: !11)
!19 = !DILocalVariable(name: "symvar", scope: !11, file: !1, line: 10, type: !14)
!20 = !DILocation(line: 10, column: 9, scope: !11)
!21 = !DILocation(line: 10, column: 18, scope: !11)
!22 = !DILocation(line: 10, column: 23, scope: !11)
!23 = !DILocalVariable(name: "array", scope: !11, file: !1, line: 11, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 320, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 10)
!27 = !DILocation(line: 11, column: 9, scope: !11)
!28 = !DILocalVariable(name: "addr", scope: !11, file: !1, line: 12, type: !29)
!29 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!30 = !DILocation(line: 12, column: 15, scope: !11)
!31 = !DILocation(line: 12, column: 39, scope: !11)
!32 = !DILocation(line: 12, column: 45, scope: !11)
!33 = !DILocation(line: 12, column: 33, scope: !11)
!34 = !DILocation(line: 12, column: 31, scope: !11)
!35 = !DILocation(line: 12, column: 22, scope: !11)
!36 = !DILocation(line: 13, column: 5, scope: !11)
!37 = !{i64 2148122925}
!38 = !DILabel(scope: !11, name: "flag_0", file: !1, line: 14)
!39 = !DILocation(line: 14, column: 3, scope: !11)
!40 = !DILocation(line: 15, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !11, file: !1, line: 15, column: 9)
!42 = !DILocation(line: 15, column: 16, scope: !41)
!43 = !DILocation(line: 15, column: 9, scope: !11)
!44 = !DILocation(line: 16, column: 15, scope: !45)
!45 = distinct !DILexicalBlock(scope: !41, file: !1, line: 15, column: 20)
!46 = !DILocation(line: 17, column: 12, scope: !47)
!47 = distinct !DILexicalBlock(scope: !45, file: !1, line: 17, column: 12)
!48 = !DILocation(line: 17, column: 19, scope: !47)
!49 = !DILocation(line: 17, column: 12, scope: !45)
!50 = !DILocation(line: 18, column: 13, scope: !47)
!51 = !DILocation(line: 19, column: 5, scope: !45)
!52 = !DILocation(line: 20, column: 5, scope: !11)
!53 = !DILocation(line: 21, column: 1, scope: !11)
!54 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 23, type: !55, scopeLine: 23, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!55 = !DISubroutineType(types: !56)
!56 = !{!14}
!57 = !DILocalVariable(name: "s", scope: !54, file: !1, line: 26, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 40, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 5)
!61 = !DILocation(line: 26, column: 10, scope: !54)
!62 = !DILocation(line: 27, column: 24, scope: !54)
!63 = !DILocation(line: 27, column: 5, scope: !54)
!64 = !DILocation(line: 28, column: 17, scope: !54)
!65 = !DILocation(line: 28, column: 21, scope: !54)
!66 = !DILocation(line: 28, column: 5, scope: !54)
!67 = !DILocalVariable(name: "i", scope: !68, file: !1, line: 30, type: !14)
!68 = distinct !DILexicalBlock(scope: !54, file: !1, line: 30, column: 5)
!69 = !DILocation(line: 30, column: 14, scope: !68)
!70 = !DILocation(line: 30, column: 10, scope: !68)
!71 = !DILocation(line: 30, column: 21, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !1, line: 30, column: 5)
!73 = !DILocation(line: 30, column: 23, scope: !72)
!74 = !DILocation(line: 30, column: 5, scope: !68)
!75 = !DILocation(line: 32, column: 13, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !1, line: 32, column: 13)
!77 = distinct !DILexicalBlock(scope: !72, file: !1, line: 30, column: 34)
!78 = !DILocation(line: 32, column: 19, scope: !76)
!79 = !DILocation(line: 32, column: 24, scope: !76)
!80 = !DILocation(line: 32, column: 30, scope: !76)
!81 = !DILocation(line: 32, column: 15, scope: !76)
!82 = !DILocation(line: 32, column: 13, scope: !77)
!83 = !DILocation(line: 33, column: 26, scope: !84)
!84 = distinct !DILexicalBlock(scope: !76, file: !1, line: 32, column: 36)
!85 = !DILocation(line: 33, column: 31, scope: !84)
!86 = !DILocation(line: 33, column: 37, scope: !84)
!87 = !DILocation(line: 33, column: 45, scope: !84)
!88 = !DILocation(line: 33, column: 42, scope: !84)
!89 = !DILocation(line: 33, column: 13, scope: !84)
!90 = !DILocation(line: 37, column: 25, scope: !84)
!91 = !DILocation(line: 37, column: 30, scope: !84)
!92 = !DILocation(line: 37, column: 13, scope: !84)
!93 = !DILocation(line: 38, column: 25, scope: !84)
!94 = !DILocation(line: 38, column: 30, scope: !84)
!95 = !DILocation(line: 38, column: 13, scope: !84)
!96 = !DILocation(line: 40, column: 24, scope: !84)
!97 = !DILocation(line: 40, column: 13, scope: !84)
!98 = !DILocation(line: 41, column: 9, scope: !84)
!99 = !DILocation(line: 42, column: 5, scope: !77)
!100 = !DILocation(line: 30, column: 30, scope: !72)
!101 = !DILocation(line: 30, column: 5, scope: !72)
!102 = distinct !{!102, !74, !103, !104}
!103 = !DILocation(line: 42, column: 5, scope: !68)
!104 = !{!"llvm.loop.mustprogress"}
!105 = !DILocation(line: 44, column: 5, scope: !54)
!106 = distinct !DISubprogram(name: "memcpy", scope: !107, file: !107, line: 12, type: !108, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!107 = !DIFile(filename: "klee_src/runtime/Freestanding/memcpy.c", directory: "/tmp")
!108 = !DISubroutineType(types: !109)
!109 = !{!110, !110, !111, !113}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !114, line: 46, baseType: !115)
!114 = !DIFile(filename: "llvm-130-install_O_D_A/lib/clang/13.0.1/include/stddef.h", directory: "/tmp")
!115 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!116 = !DILocalVariable(name: "destaddr", arg: 1, scope: !106, file: !107, line: 12, type: !110)
!117 = !DILocation(line: 12, column: 20, scope: !106)
!118 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !106, file: !107, line: 12, type: !111)
!119 = !DILocation(line: 12, column: 42, scope: !106)
!120 = !DILocalVariable(name: "len", arg: 3, scope: !106, file: !107, line: 12, type: !113)
!121 = !DILocation(line: 12, column: 58, scope: !106)
!122 = !DILocalVariable(name: "dest", scope: !106, file: !107, line: 13, type: !15)
!123 = !DILocation(line: 13, column: 9, scope: !106)
!124 = !DILocation(line: 13, column: 16, scope: !106)
!125 = !DILocalVariable(name: "src", scope: !106, file: !107, line: 14, type: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!128 = !DILocation(line: 14, column: 15, scope: !106)
!129 = !DILocation(line: 14, column: 21, scope: !106)
!130 = !DILocation(line: 16, column: 3, scope: !106)
!131 = !DILocation(line: 16, column: 13, scope: !106)
!132 = !DILocation(line: 16, column: 16, scope: !106)
!133 = !DILocation(line: 17, column: 19, scope: !106)
!134 = !DILocation(line: 17, column: 15, scope: !106)
!135 = !DILocation(line: 17, column: 10, scope: !106)
!136 = !DILocation(line: 17, column: 13, scope: !106)
!137 = distinct !{!137, !130, !133, !104}
!138 = !DILocation(line: 18, column: 10, scope: !106)
!139 = !DILocation(line: 18, column: 3, scope: !106)
