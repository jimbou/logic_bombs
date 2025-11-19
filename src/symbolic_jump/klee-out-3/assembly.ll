; ModuleID = 'tmp.bc'
source_filename = "tmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.logic_bomb.array = private unnamed_addr constant [10 x i32] [i32 7, i32 13, i32 14, i32 15, i32 16, i32 21, i32 22, i32 37, i32 23, i32 24], align 16
@.str = private unnamed_addr constant [7 x i8] c"Hello\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Logic bomb triggered\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Path without the bomb\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Starting KLEE symbolic execution with array jump example\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Widened s[0] to range 0..255\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Forked path for s[0] = %d\0A\00", align 1

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
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %addr, metadata !29, metadata !DIExpression()), !dbg !31
  %4 = load i32, i32* %symvar, align 4, !dbg !32
  %rem = srem i32 %4, 10, !dbg !33
  %idxprom = sext i32 %rem to i64, !dbg !34
  %arrayidx1 = getelementptr inbounds [10 x i32], [10 x i32]* %array, i64 0, i64 %idxprom, !dbg !34
  %5 = load i32, i32* %arrayidx1, align 4, !dbg !34
  %idx.ext = sext i32 %5 to i64, !dbg !35
  %add.ptr = getelementptr i8, i8* blockaddress(@logic_bomb, %flag_0), i64 %idx.ext, !dbg !35
  %6 = ptrtoint i8* %add.ptr to i64, !dbg !36
  store i64 %6, i64* %addr, align 8, !dbg !31
  %7 = load i64, i64* %addr, align 8, !dbg !37
  call void asm sideeffect "jmp *$0", "r,~{dirflag},~{fpsr},~{flags}"(i64 %7) #5, !dbg !37, !srcloc !38
  br label %flag_0, !dbg !37

flag_0:                                           ; preds = %entry, %indirectgoto
  call void @llvm.dbg.label(metadata !39), !dbg !40
  %8 = load i32, i32* %symvar, align 4, !dbg !41
  %cmp = icmp sgt i32 %8, 0, !dbg !43
  br i1 %cmp, label %if.then, label %if.end7, !dbg !44

if.then:                                          ; preds = %flag_0
  %9 = load i32, i32* %symvar, align 4, !dbg !45
  %inc = add nsw i32 %9, 1, !dbg !45
  store i32 %inc, i32* %symvar, align 4, !dbg !45
  %10 = load i32, i32* %symvar, align 4, !dbg !47
  %cmp3 = icmp eq i32 %10, 0, !dbg !49
  br i1 %cmp3, label %if.then5, label %if.end, !dbg !50

if.then5:                                         ; preds = %if.then
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)), !dbg !51
  store i32 3, i32* %retval, align 4, !dbg !53
  br label %return, !dbg !53

if.end:                                           ; preds = %if.then
  br label %if.end7, !dbg !54

if.end7:                                          ; preds = %if.end, %flag_0
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0)), !dbg !55
  store i32 0, i32* %retval, align 4, !dbg !56
  br label %return, !dbg !56

return:                                           ; preds = %if.end7, %if.then5
  %11 = load i32, i32* %retval, align 4, !dbg !57
  ret i32 %11, !dbg !57

indirectgoto:                                     ; No predecessors!
  indirectbr i8* undef, [label %flag_0]
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !58 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [5 x i8], align 1
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0)), !dbg !61
  call void @llvm.dbg.declare(metadata [5 x i8]* %s, metadata !62, metadata !DIExpression()), !dbg !66
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !67
  %call1 = call i32 (i8*, i64, i8*, ...) bitcast (i32 (...)* @klee_make_symbolic to i32 (i8*, i64, i8*, ...)*)(i8* %arraydecay, i64 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)), !dbg !68
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 4, !dbg !69
  %0 = load i8, i8* %arrayidx, align 1, !dbg !69
  %conv = sext i8 %0 to i32, !dbg !69
  %cmp = icmp eq i32 %conv, 0, !dbg !70
  %conv2 = zext i1 %cmp to i32, !dbg !70
  %call3 = call i32 (i32, ...) bitcast (i32 (...)* @klee_assume to i32 (i32, ...)*)(i32 %conv2), !dbg !71
  call void @llvm.dbg.declare(metadata i32* %i, metadata !72, metadata !DIExpression()), !dbg !74
  store i32 0, i32* %i, align 4, !dbg !74
  br label %for.cond, !dbg !75

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !76
  %cmp4 = icmp slt i32 %1, 10, !dbg !78
  br i1 %cmp4, label %for.body, label %for.end, !dbg !79

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !80
  %arrayidx6 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !83
  %3 = load i8, i8* %arrayidx6, align 1, !dbg !83
  %conv7 = sext i8 %3 to i32, !dbg !83
  %sub = sub nsw i32 %conv7, 48, !dbg !84
  %rem = srem i32 %sub, 10, !dbg !85
  %cmp8 = icmp eq i32 %2, %rem, !dbg !86
  br i1 %cmp8, label %if.then, label %if.end, !dbg !87

if.then:                                          ; preds = %for.body
  %arrayidx10 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !88
  %4 = load i8, i8* %arrayidx10, align 1, !dbg !88
  %conv11 = sext i8 %4 to i32, !dbg !88
  %sub12 = sub nsw i32 %conv11, 48, !dbg !90
  %rem13 = srem i32 %sub12, 10, !dbg !91
  %5 = load i32, i32* %i, align 4, !dbg !92
  %cmp14 = icmp eq i32 %rem13, %5, !dbg !93
  %conv15 = zext i1 %cmp14 to i32, !dbg !93
  %call16 = call i32 (i32, ...) bitcast (i32 (...)* @klee_assume to i32 (i32, ...)*)(i32 %conv15), !dbg !94
  %arrayidx17 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !95
  %6 = load i8, i8* %arrayidx17, align 1, !dbg !95
  %conv18 = sext i8 %6 to i32, !dbg !95
  %cmp19 = icmp sge i32 %conv18, 0, !dbg !96
  %conv20 = zext i1 %cmp19 to i32, !dbg !96
  %call21 = call i32 (i32, ...) bitcast (i32 (...)* @klee_assume to i32 (i32, ...)*)(i32 %conv20), !dbg !97
  %arrayidx22 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !98
  %7 = load i8, i8* %arrayidx22, align 1, !dbg !98
  %conv23 = sext i8 %7 to i32, !dbg !98
  %cmp24 = icmp sle i32 %conv23, 255, !dbg !99
  %conv25 = zext i1 %cmp24 to i32, !dbg !99
  %call26 = call i32 (i32, ...) bitcast (i32 (...)* @klee_assume to i32 (i32, ...)*)(i32 %conv25), !dbg !100
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0)), !dbg !101
  %arrayidx28 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !102
  %8 = load i8, i8* %arrayidx28, align 1, !dbg !102
  %conv29 = sext i8 %8 to i32, !dbg !102
  %sub30 = sub nsw i32 %conv29, 48, !dbg !103
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %sub30), !dbg !104
  %arraydecay32 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !105
  %call33 = call i32 @logic_bomb(i8* %arraydecay32), !dbg !106
  br label %if.end, !dbg !107

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !108

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4, !dbg !109
  %inc = add nsw i32 %9, 1, !dbg !109
  store i32 %inc, i32* %i, align 4, !dbg !109
  br label %for.cond, !dbg !110, !llvm.loop !111

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !114
}

declare dso_local i32 @klee_make_symbolic(...) #3

declare dso_local i32 @klee_assume(...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 !dbg !115 {
entry:
  %destaddr.addr = alloca i8*, align 8
  %srcaddr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  store i8* %destaddr, i8** %destaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %destaddr.addr, metadata !125, metadata !DIExpression()), !dbg !126
  store i8* %srcaddr, i8** %srcaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %srcaddr.addr, metadata !127, metadata !DIExpression()), !dbg !128
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata i8** %dest, metadata !131, metadata !DIExpression()), !dbg !132
  %0 = load i8*, i8** %destaddr.addr, align 8, !dbg !133
  store i8* %0, i8** %dest, align 8, !dbg !132
  call void @llvm.dbg.declare(metadata i8** %src, metadata !134, metadata !DIExpression()), !dbg !137
  %1 = load i8*, i8** %srcaddr.addr, align 8, !dbg !138
  store i8* %1, i8** %src, align 8, !dbg !137
  br label %while.cond, !dbg !139

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, i64* %len.addr, align 8, !dbg !140
  %dec = add i64 %2, -1, !dbg !140
  store i64 %dec, i64* %len.addr, align 8, !dbg !140
  %cmp = icmp ugt i64 %2, 0, !dbg !141
  br i1 %cmp, label %while.body, label %while.end, !dbg !139

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %src, align 8, !dbg !142
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !142
  store i8* %incdec.ptr, i8** %src, align 8, !dbg !142
  %4 = load i8, i8* %3, align 1, !dbg !143
  %5 = load i8*, i8** %dest, align 8, !dbg !144
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1, !dbg !144
  store i8* %incdec.ptr1, i8** %dest, align 8, !dbg !144
  store i8 %4, i8* %5, align 1, !dbg !145
  br label %while.cond, !dbg !139, !llvm.loop !146

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %destaddr.addr, align 8, !dbg !147
  ret i8* %6, !dbg !148
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
!28 = !DILocation(line: 12, column: 5, scope: !11)
!29 = !DILocalVariable(name: "addr", scope: !11, file: !1, line: 13, type: !30)
!30 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!31 = !DILocation(line: 13, column: 15, scope: !11)
!32 = !DILocation(line: 13, column: 39, scope: !11)
!33 = !DILocation(line: 13, column: 45, scope: !11)
!34 = !DILocation(line: 13, column: 33, scope: !11)
!35 = !DILocation(line: 13, column: 31, scope: !11)
!36 = !DILocation(line: 13, column: 22, scope: !11)
!37 = !DILocation(line: 15, column: 5, scope: !11)
!38 = !{i64 2148123302}
!39 = !DILabel(scope: !11, name: "flag_0", file: !1, line: 16)
!40 = !DILocation(line: 16, column: 3, scope: !11)
!41 = !DILocation(line: 17, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !11, file: !1, line: 17, column: 9)
!43 = !DILocation(line: 17, column: 16, scope: !42)
!44 = !DILocation(line: 17, column: 9, scope: !11)
!45 = !DILocation(line: 18, column: 15, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !1, line: 17, column: 20)
!47 = !DILocation(line: 19, column: 12, scope: !48)
!48 = distinct !DILexicalBlock(scope: !46, file: !1, line: 19, column: 12)
!49 = !DILocation(line: 19, column: 19, scope: !48)
!50 = !DILocation(line: 19, column: 12, scope: !46)
!51 = !DILocation(line: 20, column: 13, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !1, line: 19, column: 24)
!53 = !DILocation(line: 21, column: 13, scope: !52)
!54 = !DILocation(line: 23, column: 5, scope: !46)
!55 = !DILocation(line: 24, column: 5, scope: !11)
!56 = !DILocation(line: 25, column: 5, scope: !11)
!57 = !DILocation(line: 26, column: 1, scope: !11)
!58 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 28, type: !59, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!59 = !DISubroutineType(types: !60)
!60 = !{!14}
!61 = !DILocation(line: 29, column: 5, scope: !58)
!62 = !DILocalVariable(name: "s", scope: !58, file: !1, line: 31, type: !63)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 40, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 5)
!66 = !DILocation(line: 31, column: 10, scope: !58)
!67 = !DILocation(line: 32, column: 24, scope: !58)
!68 = !DILocation(line: 32, column: 5, scope: !58)
!69 = !DILocation(line: 33, column: 17, scope: !58)
!70 = !DILocation(line: 33, column: 21, scope: !58)
!71 = !DILocation(line: 33, column: 5, scope: !58)
!72 = !DILocalVariable(name: "i", scope: !73, file: !1, line: 35, type: !14)
!73 = distinct !DILexicalBlock(scope: !58, file: !1, line: 35, column: 5)
!74 = !DILocation(line: 35, column: 14, scope: !73)
!75 = !DILocation(line: 35, column: 10, scope: !73)
!76 = !DILocation(line: 35, column: 21, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 35, column: 5)
!78 = !DILocation(line: 35, column: 23, scope: !77)
!79 = !DILocation(line: 35, column: 5, scope: !73)
!80 = !DILocation(line: 37, column: 13, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 37, column: 13)
!82 = distinct !DILexicalBlock(scope: !77, file: !1, line: 35, column: 34)
!83 = !DILocation(line: 37, column: 19, scope: !81)
!84 = !DILocation(line: 37, column: 24, scope: !81)
!85 = !DILocation(line: 37, column: 30, scope: !81)
!86 = !DILocation(line: 37, column: 15, scope: !81)
!87 = !DILocation(line: 37, column: 13, scope: !82)
!88 = !DILocation(line: 38, column: 26, scope: !89)
!89 = distinct !DILexicalBlock(scope: !81, file: !1, line: 37, column: 36)
!90 = !DILocation(line: 38, column: 31, scope: !89)
!91 = !DILocation(line: 38, column: 37, scope: !89)
!92 = !DILocation(line: 38, column: 45, scope: !89)
!93 = !DILocation(line: 38, column: 42, scope: !89)
!94 = !DILocation(line: 38, column: 13, scope: !89)
!95 = !DILocation(line: 42, column: 25, scope: !89)
!96 = !DILocation(line: 42, column: 30, scope: !89)
!97 = !DILocation(line: 42, column: 13, scope: !89)
!98 = !DILocation(line: 43, column: 25, scope: !89)
!99 = !DILocation(line: 43, column: 30, scope: !89)
!100 = !DILocation(line: 43, column: 13, scope: !89)
!101 = !DILocation(line: 44, column: 13, scope: !89)
!102 = !DILocation(line: 45, column: 51, scope: !89)
!103 = !DILocation(line: 45, column: 56, scope: !89)
!104 = !DILocation(line: 45, column: 13, scope: !89)
!105 = !DILocation(line: 46, column: 24, scope: !89)
!106 = !DILocation(line: 46, column: 13, scope: !89)
!107 = !DILocation(line: 47, column: 9, scope: !89)
!108 = !DILocation(line: 48, column: 5, scope: !82)
!109 = !DILocation(line: 35, column: 30, scope: !77)
!110 = !DILocation(line: 35, column: 5, scope: !77)
!111 = distinct !{!111, !79, !112, !113}
!112 = !DILocation(line: 48, column: 5, scope: !73)
!113 = !{!"llvm.loop.mustprogress"}
!114 = !DILocation(line: 50, column: 5, scope: !58)
!115 = distinct !DISubprogram(name: "memcpy", scope: !116, file: !116, line: 12, type: !117, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!116 = !DIFile(filename: "klee_src/runtime/Freestanding/memcpy.c", directory: "/tmp")
!117 = !DISubroutineType(types: !118)
!118 = !{!119, !119, !120, !122}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !123, line: 46, baseType: !124)
!123 = !DIFile(filename: "llvm-130-install_O_D_A/lib/clang/13.0.1/include/stddef.h", directory: "/tmp")
!124 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!125 = !DILocalVariable(name: "destaddr", arg: 1, scope: !115, file: !116, line: 12, type: !119)
!126 = !DILocation(line: 12, column: 20, scope: !115)
!127 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !115, file: !116, line: 12, type: !120)
!128 = !DILocation(line: 12, column: 42, scope: !115)
!129 = !DILocalVariable(name: "len", arg: 3, scope: !115, file: !116, line: 12, type: !122)
!130 = !DILocation(line: 12, column: 58, scope: !115)
!131 = !DILocalVariable(name: "dest", scope: !115, file: !116, line: 13, type: !15)
!132 = !DILocation(line: 13, column: 9, scope: !115)
!133 = !DILocation(line: 13, column: 16, scope: !115)
!134 = !DILocalVariable(name: "src", scope: !115, file: !116, line: 14, type: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!137 = !DILocation(line: 14, column: 15, scope: !115)
!138 = !DILocation(line: 14, column: 21, scope: !115)
!139 = !DILocation(line: 16, column: 3, scope: !115)
!140 = !DILocation(line: 16, column: 13, scope: !115)
!141 = !DILocation(line: 16, column: 16, scope: !115)
!142 = !DILocation(line: 17, column: 19, scope: !115)
!143 = !DILocation(line: 17, column: 15, scope: !115)
!144 = !DILocation(line: 17, column: 10, scope: !115)
!145 = !DILocation(line: 17, column: 13, scope: !115)
!146 = distinct !{!146, !139, !142, !113}
!147 = !DILocation(line: 18, column: 10, scope: !115)
!148 = !DILocation(line: 18, column: 3, scope: !115)
