; ModuleID = 'tmp.bc'
source_filename = "tmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.logic_bomb.array = private unnamed_addr constant [10 x i32] [i32 7, i32 13, i32 14, i32 15, i32 16, i32 21, i32 22, i32 37, i32 23, i32 24], align 16
@.str = private unnamed_addr constant [7 x i8] c"Hello\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Jumping to address offset: %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Logic bomb triggered\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Path without the bomb\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"Starting KLEE symbolic execution with array jump example\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Widened s[0] to range 0..255\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Forked path for s[0] = %d\0A\00", align 1

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
  %7 = load i32, i32* %symvar, align 4, !dbg !37
  %rem2 = srem i32 %7, 10, !dbg !38
  %idxprom3 = sext i32 %rem2 to i64, !dbg !39
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %array, i64 0, i64 %idxprom3, !dbg !39
  %8 = load i32, i32* %arrayidx4, align 4, !dbg !39
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %8), !dbg !40
  %9 = load i64, i64* %addr, align 8, !dbg !41
  call void asm sideeffect "jmp *$0", "r,~{dirflag},~{fpsr},~{flags}"(i64 %9) #5, !dbg !41, !srcloc !42
  br label %flag_0, !dbg !41

flag_0:                                           ; preds = %entry, %indirectgoto
  call void @llvm.dbg.label(metadata !43), !dbg !44
  %10 = load i32, i32* %symvar, align 4, !dbg !45
  %cmp = icmp sgt i32 %10, 0, !dbg !47
  br i1 %cmp, label %if.then, label %if.end11, !dbg !48

if.then:                                          ; preds = %flag_0
  %11 = load i32, i32* %symvar, align 4, !dbg !49
  %inc = add nsw i32 %11, 1, !dbg !49
  store i32 %inc, i32* %symvar, align 4, !dbg !49
  %12 = load i32, i32* %symvar, align 4, !dbg !51
  %cmp7 = icmp eq i32 %12, 0, !dbg !53
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !54

if.then9:                                         ; preds = %if.then
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0)), !dbg !55
  store i32 3, i32* %retval, align 4, !dbg !57
  br label %return, !dbg !57

if.end:                                           ; preds = %if.then
  br label %if.end11, !dbg !58

if.end11:                                         ; preds = %if.end, %flag_0
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)), !dbg !59
  store i32 0, i32* %retval, align 4, !dbg !60
  br label %return, !dbg !60

return:                                           ; preds = %if.end11, %if.then9
  %13 = load i32, i32* %retval, align 4, !dbg !61
  ret i32 %13, !dbg !61

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
define dso_local i32 @main() #0 !dbg !62 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [5 x i8], align 1
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0)), !dbg !65
  call void @llvm.dbg.declare(metadata [5 x i8]* %s, metadata !66, metadata !DIExpression()), !dbg !70
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !71
  %call1 = call i32 (i8*, i64, i8*, ...) bitcast (i32 (...)* @klee_make_symbolic to i32 (i8*, i64, i8*, ...)*)(i8* %arraydecay, i64 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)), !dbg !72
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 4, !dbg !73
  %0 = load i8, i8* %arrayidx, align 1, !dbg !73
  %conv = sext i8 %0 to i32, !dbg !73
  %cmp = icmp eq i32 %conv, 0, !dbg !74
  %conv2 = zext i1 %cmp to i32, !dbg !74
  %call3 = call i32 (i32, ...) bitcast (i32 (...)* @klee_assume to i32 (i32, ...)*)(i32 %conv2), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %i, metadata !76, metadata !DIExpression()), !dbg !78
  store i32 0, i32* %i, align 4, !dbg !78
  br label %for.cond, !dbg !79

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !80
  %cmp4 = icmp slt i32 %1, 10, !dbg !82
  br i1 %cmp4, label %for.body, label %for.end, !dbg !83

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !84
  %arrayidx6 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !87
  %3 = load i8, i8* %arrayidx6, align 1, !dbg !87
  %conv7 = sext i8 %3 to i32, !dbg !87
  %sub = sub nsw i32 %conv7, 48, !dbg !88
  %rem = srem i32 %sub, 10, !dbg !89
  %cmp8 = icmp eq i32 %2, %rem, !dbg !90
  br i1 %cmp8, label %if.then, label %if.end, !dbg !91

if.then:                                          ; preds = %for.body
  %arrayidx10 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !92
  %4 = load i8, i8* %arrayidx10, align 1, !dbg !92
  %conv11 = sext i8 %4 to i32, !dbg !92
  %sub12 = sub nsw i32 %conv11, 48, !dbg !94
  %rem13 = srem i32 %sub12, 10, !dbg !95
  %5 = load i32, i32* %i, align 4, !dbg !96
  %cmp14 = icmp eq i32 %rem13, %5, !dbg !97
  %conv15 = zext i1 %cmp14 to i32, !dbg !97
  %call16 = call i32 (i32, ...) bitcast (i32 (...)* @klee_assume to i32 (i32, ...)*)(i32 %conv15), !dbg !98
  %arrayidx17 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !99
  %6 = load i8, i8* %arrayidx17, align 1, !dbg !99
  %conv18 = sext i8 %6 to i32, !dbg !99
  %cmp19 = icmp sge i32 %conv18, 0, !dbg !100
  %conv20 = zext i1 %cmp19 to i32, !dbg !100
  %call21 = call i32 (i32, ...) bitcast (i32 (...)* @klee_assume to i32 (i32, ...)*)(i32 %conv20), !dbg !101
  %arrayidx22 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !102
  %7 = load i8, i8* %arrayidx22, align 1, !dbg !102
  %conv23 = sext i8 %7 to i32, !dbg !102
  %cmp24 = icmp sle i32 %conv23, 255, !dbg !103
  %conv25 = zext i1 %cmp24 to i32, !dbg !103
  %call26 = call i32 (i32, ...) bitcast (i32 (...)* @klee_assume to i32 (i32, ...)*)(i32 %conv25), !dbg !104
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0)), !dbg !105
  %arrayidx28 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !106
  %8 = load i8, i8* %arrayidx28, align 1, !dbg !106
  %conv29 = sext i8 %8 to i32, !dbg !106
  %sub30 = sub nsw i32 %conv29, 48, !dbg !107
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %sub30), !dbg !108
  %arraydecay32 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !109
  %call33 = call i32 @logic_bomb(i8* %arraydecay32), !dbg !110
  br label %if.end, !dbg !111

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !112

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4, !dbg !113
  %inc = add nsw i32 %9, 1, !dbg !113
  store i32 %inc, i32* %i, align 4, !dbg !113
  br label %for.cond, !dbg !114, !llvm.loop !115

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !118
}

declare dso_local i32 @klee_make_symbolic(...) #3

declare dso_local i32 @klee_assume(...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 !dbg !119 {
entry:
  %destaddr.addr = alloca i8*, align 8
  %srcaddr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  store i8* %destaddr, i8** %destaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %destaddr.addr, metadata !129, metadata !DIExpression()), !dbg !130
  store i8* %srcaddr, i8** %srcaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %srcaddr.addr, metadata !131, metadata !DIExpression()), !dbg !132
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i8** %dest, metadata !135, metadata !DIExpression()), !dbg !136
  %0 = load i8*, i8** %destaddr.addr, align 8, !dbg !137
  store i8* %0, i8** %dest, align 8, !dbg !136
  call void @llvm.dbg.declare(metadata i8** %src, metadata !138, metadata !DIExpression()), !dbg !141
  %1 = load i8*, i8** %srcaddr.addr, align 8, !dbg !142
  store i8* %1, i8** %src, align 8, !dbg !141
  br label %while.cond, !dbg !143

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, i64* %len.addr, align 8, !dbg !144
  %dec = add i64 %2, -1, !dbg !144
  store i64 %dec, i64* %len.addr, align 8, !dbg !144
  %cmp = icmp ugt i64 %2, 0, !dbg !145
  br i1 %cmp, label %while.body, label %while.end, !dbg !143

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %src, align 8, !dbg !146
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !146
  store i8* %incdec.ptr, i8** %src, align 8, !dbg !146
  %4 = load i8, i8* %3, align 1, !dbg !147
  %5 = load i8*, i8** %dest, align 8, !dbg !148
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1, !dbg !148
  store i8* %incdec.ptr1, i8** %dest, align 8, !dbg !148
  store i8 %4, i8* %5, align 1, !dbg !149
  br label %while.cond, !dbg !143, !llvm.loop !150

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %destaddr.addr, align 8, !dbg !151
  ret i8* %6, !dbg !152
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
!37 = !DILocation(line: 14, column: 55, scope: !11)
!38 = !DILocation(line: 14, column: 61, scope: !11)
!39 = !DILocation(line: 14, column: 49, scope: !11)
!40 = !DILocation(line: 14, column: 5, scope: !11)
!41 = !DILocation(line: 15, column: 5, scope: !11)
!42 = !{i64 2148123299}
!43 = !DILabel(scope: !11, name: "flag_0", file: !1, line: 16)
!44 = !DILocation(line: 16, column: 3, scope: !11)
!45 = !DILocation(line: 17, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !11, file: !1, line: 17, column: 9)
!47 = !DILocation(line: 17, column: 16, scope: !46)
!48 = !DILocation(line: 17, column: 9, scope: !11)
!49 = !DILocation(line: 18, column: 15, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !1, line: 17, column: 20)
!51 = !DILocation(line: 19, column: 12, scope: !52)
!52 = distinct !DILexicalBlock(scope: !50, file: !1, line: 19, column: 12)
!53 = !DILocation(line: 19, column: 19, scope: !52)
!54 = !DILocation(line: 19, column: 12, scope: !50)
!55 = !DILocation(line: 20, column: 13, scope: !56)
!56 = distinct !DILexicalBlock(scope: !52, file: !1, line: 19, column: 24)
!57 = !DILocation(line: 21, column: 13, scope: !56)
!58 = !DILocation(line: 23, column: 5, scope: !50)
!59 = !DILocation(line: 24, column: 5, scope: !11)
!60 = !DILocation(line: 25, column: 5, scope: !11)
!61 = !DILocation(line: 26, column: 1, scope: !11)
!62 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 28, type: !63, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!63 = !DISubroutineType(types: !64)
!64 = !{!14}
!65 = !DILocation(line: 29, column: 5, scope: !62)
!66 = !DILocalVariable(name: "s", scope: !62, file: !1, line: 31, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 40, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 5)
!70 = !DILocation(line: 31, column: 10, scope: !62)
!71 = !DILocation(line: 32, column: 24, scope: !62)
!72 = !DILocation(line: 32, column: 5, scope: !62)
!73 = !DILocation(line: 33, column: 17, scope: !62)
!74 = !DILocation(line: 33, column: 21, scope: !62)
!75 = !DILocation(line: 33, column: 5, scope: !62)
!76 = !DILocalVariable(name: "i", scope: !77, file: !1, line: 35, type: !14)
!77 = distinct !DILexicalBlock(scope: !62, file: !1, line: 35, column: 5)
!78 = !DILocation(line: 35, column: 14, scope: !77)
!79 = !DILocation(line: 35, column: 10, scope: !77)
!80 = !DILocation(line: 35, column: 21, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 35, column: 5)
!82 = !DILocation(line: 35, column: 23, scope: !81)
!83 = !DILocation(line: 35, column: 5, scope: !77)
!84 = !DILocation(line: 37, column: 13, scope: !85)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 37, column: 13)
!86 = distinct !DILexicalBlock(scope: !81, file: !1, line: 35, column: 34)
!87 = !DILocation(line: 37, column: 19, scope: !85)
!88 = !DILocation(line: 37, column: 24, scope: !85)
!89 = !DILocation(line: 37, column: 30, scope: !85)
!90 = !DILocation(line: 37, column: 15, scope: !85)
!91 = !DILocation(line: 37, column: 13, scope: !86)
!92 = !DILocation(line: 38, column: 26, scope: !93)
!93 = distinct !DILexicalBlock(scope: !85, file: !1, line: 37, column: 36)
!94 = !DILocation(line: 38, column: 31, scope: !93)
!95 = !DILocation(line: 38, column: 37, scope: !93)
!96 = !DILocation(line: 38, column: 45, scope: !93)
!97 = !DILocation(line: 38, column: 42, scope: !93)
!98 = !DILocation(line: 38, column: 13, scope: !93)
!99 = !DILocation(line: 42, column: 25, scope: !93)
!100 = !DILocation(line: 42, column: 30, scope: !93)
!101 = !DILocation(line: 42, column: 13, scope: !93)
!102 = !DILocation(line: 43, column: 25, scope: !93)
!103 = !DILocation(line: 43, column: 30, scope: !93)
!104 = !DILocation(line: 43, column: 13, scope: !93)
!105 = !DILocation(line: 44, column: 13, scope: !93)
!106 = !DILocation(line: 45, column: 51, scope: !93)
!107 = !DILocation(line: 45, column: 56, scope: !93)
!108 = !DILocation(line: 45, column: 13, scope: !93)
!109 = !DILocation(line: 46, column: 24, scope: !93)
!110 = !DILocation(line: 46, column: 13, scope: !93)
!111 = !DILocation(line: 47, column: 9, scope: !93)
!112 = !DILocation(line: 48, column: 5, scope: !86)
!113 = !DILocation(line: 35, column: 30, scope: !81)
!114 = !DILocation(line: 35, column: 5, scope: !81)
!115 = distinct !{!115, !83, !116, !117}
!116 = !DILocation(line: 48, column: 5, scope: !77)
!117 = !{!"llvm.loop.mustprogress"}
!118 = !DILocation(line: 50, column: 5, scope: !62)
!119 = distinct !DISubprogram(name: "memcpy", scope: !120, file: !120, line: 12, type: !121, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!120 = !DIFile(filename: "klee_src/runtime/Freestanding/memcpy.c", directory: "/tmp")
!121 = !DISubroutineType(types: !122)
!122 = !{!123, !123, !124, !126}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !127, line: 46, baseType: !128)
!127 = !DIFile(filename: "llvm-130-install_O_D_A/lib/clang/13.0.1/include/stddef.h", directory: "/tmp")
!128 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!129 = !DILocalVariable(name: "destaddr", arg: 1, scope: !119, file: !120, line: 12, type: !123)
!130 = !DILocation(line: 12, column: 20, scope: !119)
!131 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !119, file: !120, line: 12, type: !124)
!132 = !DILocation(line: 12, column: 42, scope: !119)
!133 = !DILocalVariable(name: "len", arg: 3, scope: !119, file: !120, line: 12, type: !126)
!134 = !DILocation(line: 12, column: 58, scope: !119)
!135 = !DILocalVariable(name: "dest", scope: !119, file: !120, line: 13, type: !15)
!136 = !DILocation(line: 13, column: 9, scope: !119)
!137 = !DILocation(line: 13, column: 16, scope: !119)
!138 = !DILocalVariable(name: "src", scope: !119, file: !120, line: 14, type: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!141 = !DILocation(line: 14, column: 15, scope: !119)
!142 = !DILocation(line: 14, column: 21, scope: !119)
!143 = !DILocation(line: 16, column: 3, scope: !119)
!144 = !DILocation(line: 16, column: 13, scope: !119)
!145 = !DILocation(line: 16, column: 16, scope: !119)
!146 = !DILocation(line: 17, column: 19, scope: !119)
!147 = !DILocation(line: 17, column: 15, scope: !119)
!148 = !DILocation(line: 17, column: 10, scope: !119)
!149 = !DILocation(line: 17, column: 13, scope: !119)
!150 = distinct !{!150, !143, !146, !117}
!151 = !DILocation(line: 18, column: 10, scope: !119)
!152 = !DILocation(line: 18, column: 3, scope: !119)
