; ModuleID = 'tmp2.bc'
source_filename = "tmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.logic_bomb.array = private unnamed_addr constant [256 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127, i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135, i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143, i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151, i32 152, i32 153, i32 154, i32 155, i32 156, i32 157, i32 158, i32 159, i32 160, i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167, i32 168, i32 169, i32 170, i32 171, i32 172, i32 173, i32 174, i32 175, i32 176, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183, i32 184, i32 185, i32 186, i32 187, i32 188, i32 189, i32 190, i32 191, i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199, i32 200, i32 201, i32 202, i32 203, i32 204, i32 205, i32 206, i32 207, i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215, i32 216, i32 217, i32 218, i32 219, i32 220, i32 221, i32 222, i32 223, i32 224, i32 225, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231, i32 232, i32 233, i32 234, i32 235, i32 236, i32 237, i32 238, i32 239, i32 240, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247, i32 248, i32 249, i32 250, i32 251, i32 252, i32 253, i32 254, i32 255], align 16
@.str = private unnamed_addr constant [7 x i8] c"Hello\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Logic bomb triggered\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Path without the bomb\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Starting KLEE symbolic execution with array jump example\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Widened s[0] to range 0..255\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @logic_bomb(i8* %s) #0 !dbg !11 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %symvar = alloca i32, align 4
  %array = alloca [256 x i32], align 16
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
  call void @llvm.dbg.declare(metadata [256 x i32]* %array, metadata !23, metadata !DIExpression()), !dbg !27
  %2 = bitcast [256 x i32]* %array to i8*, !dbg !27
  %3 = call i8* @memcpy(i8* %2, i8* bitcast ([256 x i32]* @__const.logic_bomb.array to i8*), i64 1024), !dbg !27
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %addr, metadata !29, metadata !DIExpression()), !dbg !31
  %4 = load i32, i32* %symvar, align 4, !dbg !32
  %rem = srem i32 %4, 256, !dbg !33
  %idxprom = sext i32 %rem to i64, !dbg !34
  %arrayidx1 = getelementptr inbounds [256 x i32], [256 x i32]* %array, i64 0, i64 %idxprom, !dbg !34
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
  %cmp4 = icmp slt i32 %1, 256, !dbg !78
  br i1 %cmp4, label %for.body, label %for.end, !dbg !79

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !80
  %arrayidx6 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !83
  %3 = load i8, i8* %arrayidx6, align 1, !dbg !83
  %conv7 = sext i8 %3 to i32, !dbg !83
  %sub = sub nsw i32 %conv7, 48, !dbg !84
  %rem = srem i32 %sub, 256, !dbg !85
  %cmp8 = icmp eq i32 %2, %rem, !dbg !86
  br i1 %cmp8, label %if.then, label %if.end, !dbg !87

if.then:                                          ; preds = %for.body
  %arrayidx10 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !88
  %4 = load i8, i8* %arrayidx10, align 1, !dbg !88
  %conv11 = sext i8 %4 to i32, !dbg !88
  %sub12 = sub nsw i32 %conv11, 48, !dbg !90
  %rem13 = srem i32 %sub12, 256, !dbg !91
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
  %arraydecay28 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !102
  %call29 = call i32 @logic_bomb(i8* %arraydecay28), !dbg !103
  br label %if.end, !dbg !104

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !105

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !106
  %inc = add nsw i32 %8, 1, !dbg !106
  store i32 %inc, i32* %i, align 4, !dbg !106
  br label %for.cond, !dbg !107, !llvm.loop !108

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !111
}

declare dso_local i32 @klee_make_symbolic(...) #3

declare dso_local i32 @klee_assume(...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 !dbg !112 {
entry:
  %destaddr.addr = alloca i8*, align 8
  %srcaddr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  store i8* %destaddr, i8** %destaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %destaddr.addr, metadata !122, metadata !DIExpression()), !dbg !123
  store i8* %srcaddr, i8** %srcaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %srcaddr.addr, metadata !124, metadata !DIExpression()), !dbg !125
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata i8** %dest, metadata !128, metadata !DIExpression()), !dbg !129
  %0 = load i8*, i8** %destaddr.addr, align 8, !dbg !130
  store i8* %0, i8** %dest, align 8, !dbg !129
  call void @llvm.dbg.declare(metadata i8** %src, metadata !131, metadata !DIExpression()), !dbg !134
  %1 = load i8*, i8** %srcaddr.addr, align 8, !dbg !135
  store i8* %1, i8** %src, align 8, !dbg !134
  br label %while.cond, !dbg !136

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, i64* %len.addr, align 8, !dbg !137
  %dec = add i64 %2, -1, !dbg !137
  store i64 %dec, i64* %len.addr, align 8, !dbg !137
  %cmp = icmp ugt i64 %2, 0, !dbg !138
  br i1 %cmp, label %while.body, label %while.end, !dbg !136

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %src, align 8, !dbg !139
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !139
  store i8* %incdec.ptr, i8** %src, align 8, !dbg !139
  %4 = load i8, i8* %3, align 1, !dbg !140
  %5 = load i8*, i8** %dest, align 8, !dbg !141
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1, !dbg !141
  store i8* %incdec.ptr1, i8** %dest, align 8, !dbg !141
  store i8 %4, i8* %5, align 1, !dbg !142
  br label %while.cond, !dbg !136, !llvm.loop !143

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %destaddr.addr, align 8, !dbg !144
  ret i8* %6, !dbg !145
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
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8192, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 256)
!27 = !DILocation(line: 11, column: 9, scope: !11)
!28 = !DILocation(line: 39, column: 5, scope: !11)
!29 = !DILocalVariable(name: "addr", scope: !11, file: !1, line: 40, type: !30)
!30 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!31 = !DILocation(line: 40, column: 15, scope: !11)
!32 = !DILocation(line: 40, column: 39, scope: !11)
!33 = !DILocation(line: 40, column: 45, scope: !11)
!34 = !DILocation(line: 40, column: 33, scope: !11)
!35 = !DILocation(line: 40, column: 31, scope: !11)
!36 = !DILocation(line: 40, column: 22, scope: !11)
!37 = !DILocation(line: 42, column: 5, scope: !11)
!38 = !{i64 2148124559}
!39 = !DILabel(scope: !11, name: "flag_0", file: !1, line: 43)
!40 = !DILocation(line: 43, column: 3, scope: !11)
!41 = !DILocation(line: 44, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !11, file: !1, line: 44, column: 9)
!43 = !DILocation(line: 44, column: 16, scope: !42)
!44 = !DILocation(line: 44, column: 9, scope: !11)
!45 = !DILocation(line: 45, column: 15, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !1, line: 44, column: 20)
!47 = !DILocation(line: 46, column: 12, scope: !48)
!48 = distinct !DILexicalBlock(scope: !46, file: !1, line: 46, column: 12)
!49 = !DILocation(line: 46, column: 19, scope: !48)
!50 = !DILocation(line: 46, column: 12, scope: !46)
!51 = !DILocation(line: 47, column: 13, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !1, line: 46, column: 24)
!53 = !DILocation(line: 48, column: 13, scope: !52)
!54 = !DILocation(line: 50, column: 5, scope: !46)
!55 = !DILocation(line: 51, column: 5, scope: !11)
!56 = !DILocation(line: 52, column: 5, scope: !11)
!57 = !DILocation(line: 53, column: 1, scope: !11)
!58 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 55, type: !59, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!59 = !DISubroutineType(types: !60)
!60 = !{!14}
!61 = !DILocation(line: 56, column: 5, scope: !58)
!62 = !DILocalVariable(name: "s", scope: !58, file: !1, line: 58, type: !63)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 40, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 5)
!66 = !DILocation(line: 58, column: 10, scope: !58)
!67 = !DILocation(line: 59, column: 24, scope: !58)
!68 = !DILocation(line: 59, column: 5, scope: !58)
!69 = !DILocation(line: 60, column: 17, scope: !58)
!70 = !DILocation(line: 60, column: 21, scope: !58)
!71 = !DILocation(line: 60, column: 5, scope: !58)
!72 = !DILocalVariable(name: "i", scope: !73, file: !1, line: 62, type: !14)
!73 = distinct !DILexicalBlock(scope: !58, file: !1, line: 62, column: 5)
!74 = !DILocation(line: 62, column: 14, scope: !73)
!75 = !DILocation(line: 62, column: 10, scope: !73)
!76 = !DILocation(line: 62, column: 21, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 62, column: 5)
!78 = !DILocation(line: 62, column: 23, scope: !77)
!79 = !DILocation(line: 62, column: 5, scope: !73)
!80 = !DILocation(line: 64, column: 13, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 64, column: 13)
!82 = distinct !DILexicalBlock(scope: !77, file: !1, line: 62, column: 35)
!83 = !DILocation(line: 64, column: 19, scope: !81)
!84 = !DILocation(line: 64, column: 24, scope: !81)
!85 = !DILocation(line: 64, column: 30, scope: !81)
!86 = !DILocation(line: 64, column: 15, scope: !81)
!87 = !DILocation(line: 64, column: 13, scope: !82)
!88 = !DILocation(line: 65, column: 26, scope: !89)
!89 = distinct !DILexicalBlock(scope: !81, file: !1, line: 64, column: 37)
!90 = !DILocation(line: 65, column: 31, scope: !89)
!91 = !DILocation(line: 65, column: 37, scope: !89)
!92 = !DILocation(line: 65, column: 46, scope: !89)
!93 = !DILocation(line: 65, column: 43, scope: !89)
!94 = !DILocation(line: 65, column: 13, scope: !89)
!95 = !DILocation(line: 69, column: 25, scope: !89)
!96 = !DILocation(line: 69, column: 30, scope: !89)
!97 = !DILocation(line: 69, column: 13, scope: !89)
!98 = !DILocation(line: 70, column: 25, scope: !89)
!99 = !DILocation(line: 70, column: 30, scope: !89)
!100 = !DILocation(line: 70, column: 13, scope: !89)
!101 = !DILocation(line: 71, column: 13, scope: !89)
!102 = !DILocation(line: 73, column: 24, scope: !89)
!103 = !DILocation(line: 73, column: 13, scope: !89)
!104 = !DILocation(line: 74, column: 9, scope: !89)
!105 = !DILocation(line: 75, column: 5, scope: !82)
!106 = !DILocation(line: 62, column: 31, scope: !77)
!107 = !DILocation(line: 62, column: 5, scope: !77)
!108 = distinct !{!108, !79, !109, !110}
!109 = !DILocation(line: 75, column: 5, scope: !73)
!110 = !{!"llvm.loop.mustprogress"}
!111 = !DILocation(line: 77, column: 5, scope: !58)
!112 = distinct !DISubprogram(name: "memcpy", scope: !113, file: !113, line: 12, type: !114, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!113 = !DIFile(filename: "klee_src/runtime/Freestanding/memcpy.c", directory: "/tmp")
!114 = !DISubroutineType(types: !115)
!115 = !{!116, !116, !117, !119}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 46, baseType: !121)
!120 = !DIFile(filename: "llvm-130-install_O_D_A/lib/clang/13.0.1/include/stddef.h", directory: "/tmp")
!121 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!122 = !DILocalVariable(name: "destaddr", arg: 1, scope: !112, file: !113, line: 12, type: !116)
!123 = !DILocation(line: 12, column: 20, scope: !112)
!124 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !112, file: !113, line: 12, type: !117)
!125 = !DILocation(line: 12, column: 42, scope: !112)
!126 = !DILocalVariable(name: "len", arg: 3, scope: !112, file: !113, line: 12, type: !119)
!127 = !DILocation(line: 12, column: 58, scope: !112)
!128 = !DILocalVariable(name: "dest", scope: !112, file: !113, line: 13, type: !15)
!129 = !DILocation(line: 13, column: 9, scope: !112)
!130 = !DILocation(line: 13, column: 16, scope: !112)
!131 = !DILocalVariable(name: "src", scope: !112, file: !113, line: 14, type: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!134 = !DILocation(line: 14, column: 15, scope: !112)
!135 = !DILocation(line: 14, column: 21, scope: !112)
!136 = !DILocation(line: 16, column: 3, scope: !112)
!137 = !DILocation(line: 16, column: 13, scope: !112)
!138 = !DILocation(line: 16, column: 16, scope: !112)
!139 = !DILocation(line: 17, column: 19, scope: !112)
!140 = !DILocation(line: 17, column: 15, scope: !112)
!141 = !DILocation(line: 17, column: 10, scope: !112)
!142 = !DILocation(line: 17, column: 13, scope: !112)
!143 = distinct !{!143, !136, !139, !110}
!144 = !DILocation(line: 18, column: 10, scope: !112)
!145 = !DILocation(line: 18, column: 3, scope: !112)
