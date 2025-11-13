; ModuleID = 'file_cp_l1_klee_annotated.bc'
source_filename = "file_cp_l1_klee_annotated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@__const.logic_bomb.file = private unnamed_addr constant [11 x i8] c"tmp.covpro\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"ab+\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"tmp.covpro\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"0 && \22Logic bomb triggered\22\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"file_cp_l1_klee_annotated.c\00", align 1
@__PRETTY_FUNCTION__.logic_bomb = private unnamed_addr constant [23 x i8] c"int logic_bomb(char *)\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @logic_bomb(i8* %s) #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %symvar = alloca i32, align 4
  %j = alloca i32, align 4
  %file = alloca [11 x i8], align 1
  %fp = alloca %struct._IO_FILE*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %symvar, metadata !21, metadata !DIExpression()), !dbg !22
  %0 = load i8*, i8** %s.addr, align 8, !dbg !23
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0, !dbg !23
  %1 = load i8, i8* %arrayidx, align 1, !dbg !23
  %conv = sext i8 %1 to i32, !dbg !23
  %sub = sub nsw i32 %conv, 48, !dbg !24
  store i32 %sub, i32* %symvar, align 4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %j, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata [11 x i8]* %file, metadata !27, metadata !DIExpression()), !dbg !31
  %2 = bitcast [11 x i8]* %file to i8*, !dbg !31
  %3 = call i8* @memcpy(i8* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__const.logic_bomb.file, i32 0, i32 0), i64 11), !dbg !31
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp, metadata !32, metadata !DIExpression()), !dbg !92
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %file, i64 0, i64 0, !dbg !93
  %call = call noalias %struct._IO_FILE* @fopen(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !94
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8, !dbg !92
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !95
  %cmp = icmp eq %struct._IO_FILE* %4, null, !dbg !97
  br i1 %cmp, label %if.then, label %if.end, !dbg !98

if.then:                                          ; preds = %entry
  call void @exit(i32 1) #8, !dbg !99
  unreachable, !dbg !99

if.end:                                           ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !101
  %6 = load i32, i32* %symvar, align 4, !dbg !102
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %6), !dbg !103
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !104
  %call3 = call i32 @fclose(%struct._IO_FILE* %7), !dbg !105
  %call4 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !106
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %fp, align 8, !dbg !107
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !108
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %j), !dbg !109
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !110
  %call6 = call i32 @fclose(%struct._IO_FILE* %9), !dbg !111
  %arraydecay7 = getelementptr inbounds [11 x i8], [11 x i8]* %file, i64 0, i64 0, !dbg !112
  %call8 = call i32 @remove(i8* %arraydecay7) #9, !dbg !113
  %10 = load i32, i32* %j, align 4, !dbg !114
  %cmp9 = icmp eq i32 %10, 7, !dbg !116
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !117

if.then11:                                        ; preds = %if.end
  %call12 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i64 0, i64 0)), !dbg !118
  br label %if.end13, !dbg !120

if.else:                                          ; preds = %if.end
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  %11 = load i32, i32* %retval, align 4, !dbg !121
  ret i32 %11, !dbg !121
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8*, i8*) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare dso_local i32 @remove(i8*) #5

; Function Attrs: noreturn
declare dso_local i32 @__assert_fail(...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !122 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %s = alloca [5 x i8], align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !126, metadata !DIExpression()), !dbg !127
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata [5 x i8]* %s, metadata !130, metadata !DIExpression()), !dbg !134
  %0 = bitcast [5 x i8]* %s to i8*, !dbg !135
  call void @klee_make_symbolic(i8* %0, i64 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)), !dbg !136
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 4, !dbg !137
  %1 = load i8, i8* %arrayidx, align 1, !dbg !137
  %conv = sext i8 %1 to i32, !dbg !137
  %cmp = icmp eq i32 %conv, 0, !dbg !138
  %conv1 = zext i1 %cmp to i32, !dbg !138
  %conv2 = sext i32 %conv1 to i64, !dbg !137
  call void @klee_assume(i64 %conv2), !dbg !139
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %s, i64 0, i64 0, !dbg !140
  %call = call i32 @logic_bomb(i8* %arraydecay), !dbg !141
  ret i32 %call, !dbg !142
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #3

declare dso_local void @klee_assume(i64) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #7 !dbg !143 {
entry:
  %destaddr.addr = alloca i8*, align 8
  %srcaddr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  store i8* %destaddr, i8** %destaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %destaddr.addr, metadata !151, metadata !DIExpression()), !dbg !152
  store i8* %srcaddr, i8** %srcaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %srcaddr.addr, metadata !153, metadata !DIExpression()), !dbg !154
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !155, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata i8** %dest, metadata !157, metadata !DIExpression()), !dbg !158
  %0 = load i8*, i8** %destaddr.addr, align 8, !dbg !159
  store i8* %0, i8** %dest, align 8, !dbg !158
  call void @llvm.dbg.declare(metadata i8** %src, metadata !160, metadata !DIExpression()), !dbg !163
  %1 = load i8*, i8** %srcaddr.addr, align 8, !dbg !164
  store i8* %1, i8** %src, align 8, !dbg !163
  br label %while.cond, !dbg !165

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, i64* %len.addr, align 8, !dbg !166
  %dec = add i64 %2, -1, !dbg !166
  store i64 %dec, i64* %len.addr, align 8, !dbg !166
  %cmp = icmp ugt i64 %2, 0, !dbg !167
  br i1 %cmp, label %while.body, label %while.end, !dbg !165

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %src, align 8, !dbg !168
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !168
  store i8* %incdec.ptr, i8** %src, align 8, !dbg !168
  %4 = load i8, i8* %3, align 1, !dbg !169
  %5 = load i8*, i8** %dest, align 8, !dbg !170
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1, !dbg !170
  store i8* %incdec.ptr1, i8** %dest, align 8, !dbg !170
  store i8 %4, i8* %5, align 1, !dbg !171
  br label %while.cond, !dbg !165, !llvm.loop !172

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %destaddr.addr, align 8, !dbg !174
  ret i8* %6, !dbg !175
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12, !12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "file_cp_l1_klee_annotated.c", directory: "/home/klee/logic_bombs/src/covert_propogation")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "/tmp/klee_src/runtime/Freestanding/memcpy.c", directory: "/tmp/klee_build130stp_z3/runtime/Freestanding")
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!13 = distinct !DISubprogram(name: "logic_bomb", scope: !1, file: !1, line: 13, type: !14, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !17}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DILocalVariable(name: "s", arg: 1, scope: !13, file: !1, line: 13, type: !17)
!20 = !DILocation(line: 13, column: 22, scope: !13)
!21 = !DILocalVariable(name: "symvar", scope: !13, file: !1, line: 14, type: !16)
!22 = !DILocation(line: 14, column: 9, scope: !13)
!23 = !DILocation(line: 14, column: 18, scope: !13)
!24 = !DILocation(line: 14, column: 23, scope: !13)
!25 = !DILocalVariable(name: "j", scope: !13, file: !1, line: 15, type: !16)
!26 = !DILocation(line: 15, column: 9, scope: !13)
!27 = !DILocalVariable(name: "file", scope: !13, file: !1, line: 16, type: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 88, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 11)
!31 = !DILocation(line: 16, column: 10, scope: !13)
!32 = !DILocalVariable(name: "fp", scope: !13, file: !1, line: 17, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !35, line: 7, baseType: !36)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !37, line: 49, size: 1728, elements: !38)
!37 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !54, !56, !57, !58, !62, !64, !66, !70, !73, !75, !78, !81, !82, !83, !87, !88}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !36, file: !37, line: 51, baseType: !16, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !36, file: !37, line: 54, baseType: !17, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !36, file: !37, line: 55, baseType: !17, size: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !36, file: !37, line: 56, baseType: !17, size: 64, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !36, file: !37, line: 57, baseType: !17, size: 64, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !36, file: !37, line: 58, baseType: !17, size: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !36, file: !37, line: 59, baseType: !17, size: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !36, file: !37, line: 60, baseType: !17, size: 64, offset: 448)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !36, file: !37, line: 61, baseType: !17, size: 64, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !36, file: !37, line: 64, baseType: !17, size: 64, offset: 576)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !36, file: !37, line: 65, baseType: !17, size: 64, offset: 640)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !36, file: !37, line: 66, baseType: !17, size: 64, offset: 704)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !36, file: !37, line: 68, baseType: !52, size: 64, offset: 768)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !37, line: 36, flags: DIFlagFwdDecl)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !36, file: !37, line: 70, baseType: !55, size: 64, offset: 832)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !36, file: !37, line: 72, baseType: !16, size: 32, offset: 896)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !36, file: !37, line: 73, baseType: !16, size: 32, offset: 928)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !36, file: !37, line: 74, baseType: !59, size: 64, offset: 960)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !60, line: 152, baseType: !61)
!60 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!61 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !36, file: !37, line: 77, baseType: !63, size: 16, offset: 1024)
!63 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !36, file: !37, line: 78, baseType: !65, size: 8, offset: 1040)
!65 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !36, file: !37, line: 79, baseType: !67, size: 8, offset: 1048)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 1)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !36, file: !37, line: 81, baseType: !71, size: 64, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !37, line: 43, baseType: null)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !36, file: !37, line: 89, baseType: !74, size: 64, offset: 1152)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !60, line: 153, baseType: !61)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !36, file: !37, line: 91, baseType: !76, size: 64, offset: 1216)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !37, line: 37, flags: DIFlagFwdDecl)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !36, file: !37, line: 92, baseType: !79, size: 64, offset: 1280)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !37, line: 38, flags: DIFlagFwdDecl)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !36, file: !37, line: 93, baseType: !55, size: 64, offset: 1344)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !36, file: !37, line: 94, baseType: !4, size: 64, offset: 1408)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !36, file: !37, line: 95, baseType: !84, size: 64, offset: 1472)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !85, line: 46, baseType: !86)
!85 = !DIFile(filename: "/tmp/llvm-130-install_O_D_A/lib/clang/13.0.1/include/stddef.h", directory: "")
!86 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !36, file: !37, line: 96, baseType: !16, size: 32, offset: 1536)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !36, file: !37, line: 98, baseType: !89, size: 160, offset: 1568)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 20)
!92 = !DILocation(line: 17, column: 11, scope: !13)
!93 = !DILocation(line: 17, column: 22, scope: !13)
!94 = !DILocation(line: 17, column: 16, scope: !13)
!95 = !DILocation(line: 18, column: 8, scope: !96)
!96 = distinct !DILexicalBlock(scope: !13, file: !1, line: 18, column: 8)
!97 = !DILocation(line: 18, column: 11, scope: !96)
!98 = !DILocation(line: 18, column: 8, scope: !13)
!99 = !DILocation(line: 21, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !1, line: 19, column: 5)
!101 = !DILocation(line: 23, column: 13, scope: !13)
!102 = !DILocation(line: 23, column: 21, scope: !13)
!103 = !DILocation(line: 23, column: 5, scope: !13)
!104 = !DILocation(line: 24, column: 12, scope: !13)
!105 = !DILocation(line: 24, column: 5, scope: !13)
!106 = !DILocation(line: 26, column: 10, scope: !13)
!107 = !DILocation(line: 26, column: 8, scope: !13)
!108 = !DILocation(line: 27, column: 12, scope: !13)
!109 = !DILocation(line: 27, column: 5, scope: !13)
!110 = !DILocation(line: 28, column: 12, scope: !13)
!111 = !DILocation(line: 28, column: 5, scope: !13)
!112 = !DILocation(line: 29, column: 12, scope: !13)
!113 = !DILocation(line: 29, column: 5, scope: !13)
!114 = !DILocation(line: 30, column: 8, scope: !115)
!115 = distinct !DILexicalBlock(scope: !13, file: !1, line: 30, column: 8)
!116 = !DILocation(line: 30, column: 10, scope: !115)
!117 = !DILocation(line: 30, column: 8, scope: !13)
!118 = !DILocation(line: 31, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 30, column: 15)
!120 = !DILocation(line: 32, column: 5, scope: !119)
!121 = !DILocation(line: 35, column: 1, scope: !13)
!122 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 37, type: !123, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!123 = !DISubroutineType(types: !124)
!124 = !{!16, !16, !125}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!126 = !DILocalVariable(name: "argc", arg: 1, scope: !122, file: !1, line: 37, type: !16)
!127 = !DILocation(line: 37, column: 14, scope: !122)
!128 = !DILocalVariable(name: "argv", arg: 2, scope: !122, file: !1, line: 37, type: !125)
!129 = !DILocation(line: 37, column: 27, scope: !122)
!130 = !DILocalVariable(name: "s", scope: !122, file: !1, line: 38, type: !131)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 40, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 5)
!134 = !DILocation(line: 38, column: 6, scope: !122)
!135 = !DILocation(line: 39, column: 20, scope: !122)
!136 = !DILocation(line: 39, column: 1, scope: !122)
!137 = !DILocation(line: 40, column: 13, scope: !122)
!138 = !DILocation(line: 40, column: 17, scope: !122)
!139 = !DILocation(line: 40, column: 1, scope: !122)
!140 = !DILocation(line: 41, column: 19, scope: !122)
!141 = !DILocation(line: 41, column: 8, scope: !122)
!142 = !DILocation(line: 41, column: 1, scope: !122)
!143 = distinct !DISubprogram(name: "memcpy", scope: !144, file: !144, line: 12, type: !145, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !2)
!144 = !DIFile(filename: "klee_src/runtime/Freestanding/memcpy.c", directory: "/tmp")
!145 = !DISubroutineType(types: !146)
!146 = !{!4, !4, !147, !149}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !150, line: 46, baseType: !86)
!150 = !DIFile(filename: "llvm-130-install_O_D_A/lib/clang/13.0.1/include/stddef.h", directory: "/tmp")
!151 = !DILocalVariable(name: "destaddr", arg: 1, scope: !143, file: !144, line: 12, type: !4)
!152 = !DILocation(line: 12, column: 20, scope: !143)
!153 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !143, file: !144, line: 12, type: !147)
!154 = !DILocation(line: 12, column: 42, scope: !143)
!155 = !DILocalVariable(name: "len", arg: 3, scope: !143, file: !144, line: 12, type: !149)
!156 = !DILocation(line: 12, column: 58, scope: !143)
!157 = !DILocalVariable(name: "dest", scope: !143, file: !144, line: 13, type: !17)
!158 = !DILocation(line: 13, column: 9, scope: !143)
!159 = !DILocation(line: 13, column: 16, scope: !143)
!160 = !DILocalVariable(name: "src", scope: !143, file: !144, line: 14, type: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!163 = !DILocation(line: 14, column: 15, scope: !143)
!164 = !DILocation(line: 14, column: 21, scope: !143)
!165 = !DILocation(line: 16, column: 3, scope: !143)
!166 = !DILocation(line: 16, column: 13, scope: !143)
!167 = !DILocation(line: 16, column: 16, scope: !143)
!168 = !DILocation(line: 17, column: 19, scope: !143)
!169 = !DILocation(line: 17, column: 15, scope: !143)
!170 = !DILocation(line: 17, column: 10, scope: !143)
!171 = !DILocation(line: 17, column: 13, scope: !143)
!172 = distinct !{!172, !165, !168, !173}
!173 = !{!"llvm.loop.mustprogress"}
!174 = !DILocation(line: 18, column: 10, scope: !143)
!175 = !DILocation(line: 18, column: 3, scope: !143)
