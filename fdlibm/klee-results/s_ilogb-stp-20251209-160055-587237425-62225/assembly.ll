; ModuleID = 's_ilogb.bc'
source_filename = "./s_ilogb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ilogb(double %x) #0 !dbg !12 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca double, align 8
  %hx = alloca i32, align 4
  %lx = alloca i32, align 4
  %ix = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %lx, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !23, metadata !DIExpression()), !dbg !24
  %0 = bitcast double* %x.addr to i32*, !dbg !25
  %1 = load i32, i32* %0, align 8, !dbg !25
  %and = and i32 %1, 2147483647, !dbg !26
  store i32 %and, i32* %hx, align 4, !dbg !27
  %2 = load i32, i32* %hx, align 4, !dbg !28
  %cmp = icmp slt i32 %2, 1048576, !dbg !30
  br i1 %cmp, label %if.then, label %if.else16, !dbg !31

if.then:                                          ; preds = %entry
  %3 = bitcast double* %x.addr to i32*, !dbg !32
  %add.ptr = getelementptr inbounds i32, i32* %3, i64 1, !dbg !32
  %4 = load i32, i32* %add.ptr, align 4, !dbg !32
  store i32 %4, i32* %lx, align 4, !dbg !34
  %5 = load i32, i32* %hx, align 4, !dbg !35
  %6 = load i32, i32* %lx, align 4, !dbg !37
  %or = or i32 %5, %6, !dbg !38
  %cmp1 = icmp eq i32 %or, 0, !dbg !39
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !40

if.then2:                                         ; preds = %if.then
  store i32 -2147483647, i32* %retval, align 4, !dbg !41
  br label %return, !dbg !41

if.else:                                          ; preds = %if.then
  %7 = load i32, i32* %hx, align 4, !dbg !42
  %cmp3 = icmp eq i32 %7, 0, !dbg !44
  br i1 %cmp3, label %if.then4, label %if.else6, !dbg !45

if.then4:                                         ; preds = %if.else
  store i32 -1043, i32* %ix, align 4, !dbg !46
  br label %for.cond, !dbg !49

for.cond:                                         ; preds = %for.inc, %if.then4
  %8 = load i32, i32* %lx, align 4, !dbg !50
  %cmp5 = icmp sgt i32 %8, 0, !dbg !52
  br i1 %cmp5, label %for.body, label %for.end, !dbg !53

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %ix, align 4, !dbg !54
  %sub = sub nsw i32 %9, 1, !dbg !54
  store i32 %sub, i32* %ix, align 4, !dbg !54
  br label %for.inc, !dbg !55

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %lx, align 4, !dbg !56
  %shl = shl i32 %10, 1, !dbg !56
  store i32 %shl, i32* %lx, align 4, !dbg !56
  br label %for.cond, !dbg !57, !llvm.loop !58

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !61

if.else6:                                         ; preds = %if.else
  store i32 -1022, i32* %ix, align 4, !dbg !62
  %11 = load i32, i32* %hx, align 4, !dbg !65
  %shl7 = shl i32 %11, 11, !dbg !65
  store i32 %shl7, i32* %hx, align 4, !dbg !65
  br label %for.cond8, !dbg !66

for.cond8:                                        ; preds = %for.inc12, %if.else6
  %12 = load i32, i32* %hx, align 4, !dbg !67
  %cmp9 = icmp sgt i32 %12, 0, !dbg !69
  br i1 %cmp9, label %for.body10, label %for.end14, !dbg !70

for.body10:                                       ; preds = %for.cond8
  %13 = load i32, i32* %ix, align 4, !dbg !71
  %sub11 = sub nsw i32 %13, 1, !dbg !71
  store i32 %sub11, i32* %ix, align 4, !dbg !71
  br label %for.inc12, !dbg !72

for.inc12:                                        ; preds = %for.body10
  %14 = load i32, i32* %hx, align 4, !dbg !73
  %shl13 = shl i32 %14, 1, !dbg !73
  store i32 %shl13, i32* %hx, align 4, !dbg !73
  br label %for.cond8, !dbg !74, !llvm.loop !75

for.end14:                                        ; preds = %for.cond8
  br label %if.end

if.end:                                           ; preds = %for.end14, %for.end
  br label %if.end15

if.end15:                                         ; preds = %if.end
  %15 = load i32, i32* %ix, align 4, !dbg !77
  store i32 %15, i32* %retval, align 4, !dbg !78
  br label %return, !dbg !78

if.else16:                                        ; preds = %entry
  %16 = load i32, i32* %hx, align 4, !dbg !79
  %cmp17 = icmp slt i32 %16, 2146435072, !dbg !81
  br i1 %cmp17, label %if.then18, label %if.else20, !dbg !82

if.then18:                                        ; preds = %if.else16
  %17 = load i32, i32* %hx, align 4, !dbg !83
  %shr = ashr i32 %17, 20, !dbg !84
  %sub19 = sub nsw i32 %shr, 1023, !dbg !85
  store i32 %sub19, i32* %retval, align 4, !dbg !86
  br label %return, !dbg !86

if.else20:                                        ; preds = %if.else16
  store i32 2147483647, i32* %retval, align 4, !dbg !87
  br label %return, !dbg !87

return:                                           ; preds = %if.else20, %if.then18, %if.end15, %if.then2
  %18 = load i32, i32* %retval, align 4, !dbg !88
  ret i32 %18, !dbg !88
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !89 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !92, metadata !DIExpression()), !dbg !93
  %0 = bitcast double* %a0 to i8*, !dbg !94
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %r, metadata !96, metadata !DIExpression()), !dbg !97
  %1 = load double, double* %a0, align 8, !dbg !98
  %call = call i32 @ilogb(double %1) #3, !dbg !99
  store i32 %call, i32* %r, align 4, !dbg !97
  ret i32 0, !dbg !100
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "s_ilogb.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!12 = distinct !DISubprogram(name: "ilogb", scope: !13, file: !13, line: 23, type: !14, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!13 = !DIFile(filename: "./s_ilogb.c", directory: "/home/klee/logic_bombs/fdlibm")
!14 = !DISubroutineType(types: !15)
!15 = !{!5, !16}
!16 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!17 = !DILocalVariable(name: "x", arg: 1, scope: !12, file: !13, line: 23, type: !16)
!18 = !DILocation(line: 23, column: 19, scope: !12)
!19 = !DILocalVariable(name: "hx", scope: !12, file: !13, line: 29, type: !5)
!20 = !DILocation(line: 29, column: 6, scope: !12)
!21 = !DILocalVariable(name: "lx", scope: !12, file: !13, line: 29, type: !5)
!22 = !DILocation(line: 29, column: 9, scope: !12)
!23 = !DILocalVariable(name: "ix", scope: !12, file: !13, line: 29, type: !5)
!24 = !DILocation(line: 29, column: 12, scope: !12)
!25 = !DILocation(line: 31, column: 9, scope: !12)
!26 = !DILocation(line: 31, column: 17, scope: !12)
!27 = !DILocation(line: 31, column: 6, scope: !12)
!28 = !DILocation(line: 32, column: 5, scope: !29)
!29 = distinct !DILexicalBlock(scope: !12, file: !13, line: 32, column: 5)
!30 = !DILocation(line: 32, column: 7, scope: !29)
!31 = !DILocation(line: 32, column: 5, scope: !12)
!32 = !DILocation(line: 33, column: 11, scope: !33)
!33 = distinct !DILexicalBlock(scope: !29, file: !13, line: 32, column: 20)
!34 = !DILocation(line: 33, column: 9, scope: !33)
!35 = !DILocation(line: 34, column: 10, scope: !36)
!36 = distinct !DILexicalBlock(scope: !33, file: !13, line: 34, column: 9)
!37 = !DILocation(line: 34, column: 13, scope: !36)
!38 = !DILocation(line: 34, column: 12, scope: !36)
!39 = !DILocation(line: 34, column: 16, scope: !36)
!40 = !DILocation(line: 34, column: 9, scope: !33)
!41 = !DILocation(line: 35, column: 3, scope: !36)
!42 = !DILocation(line: 37, column: 6, scope: !43)
!43 = distinct !DILexicalBlock(scope: !36, file: !13, line: 37, column: 6)
!44 = !DILocation(line: 37, column: 8, scope: !43)
!45 = !DILocation(line: 37, column: 6, scope: !36)
!46 = !DILocation(line: 38, column: 15, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !13, line: 38, column: 7)
!48 = distinct !DILexicalBlock(scope: !43, file: !13, line: 37, column: 13)
!49 = !DILocation(line: 38, column: 12, scope: !47)
!50 = !DILocation(line: 38, column: 24, scope: !51)
!51 = distinct !DILexicalBlock(scope: !47, file: !13, line: 38, column: 7)
!52 = !DILocation(line: 38, column: 26, scope: !51)
!53 = !DILocation(line: 38, column: 7, scope: !47)
!54 = !DILocation(line: 38, column: 41, scope: !51)
!55 = !DILocation(line: 38, column: 38, scope: !51)
!56 = !DILocation(line: 38, column: 32, scope: !51)
!57 = !DILocation(line: 38, column: 7, scope: !51)
!58 = distinct !{!58, !53, !59, !60}
!59 = !DILocation(line: 38, column: 43, scope: !47)
!60 = !{!"llvm.loop.mustprogress"}
!61 = !DILocation(line: 39, column: 3, scope: !48)
!62 = !DILocation(line: 40, column: 15, scope: !63)
!63 = distinct !DILexicalBlock(scope: !64, file: !13, line: 40, column: 7)
!64 = distinct !DILexicalBlock(scope: !43, file: !13, line: 39, column: 10)
!65 = !DILocation(line: 40, column: 25, scope: !63)
!66 = !DILocation(line: 40, column: 12, scope: !63)
!67 = !DILocation(line: 40, column: 32, scope: !68)
!68 = distinct !DILexicalBlock(scope: !63, file: !13, line: 40, column: 7)
!69 = !DILocation(line: 40, column: 34, scope: !68)
!70 = !DILocation(line: 40, column: 7, scope: !63)
!71 = !DILocation(line: 40, column: 49, scope: !68)
!72 = !DILocation(line: 40, column: 46, scope: !68)
!73 = !DILocation(line: 40, column: 40, scope: !68)
!74 = !DILocation(line: 40, column: 7, scope: !68)
!75 = distinct !{!75, !70, !76, !60}
!76 = !DILocation(line: 40, column: 51, scope: !63)
!77 = !DILocation(line: 42, column: 13, scope: !33)
!78 = !DILocation(line: 42, column: 6, scope: !33)
!79 = !DILocation(line: 44, column: 11, scope: !80)
!80 = distinct !DILexicalBlock(scope: !29, file: !13, line: 44, column: 11)
!81 = !DILocation(line: 44, column: 13, scope: !80)
!82 = !DILocation(line: 44, column: 11, scope: !29)
!83 = !DILocation(line: 44, column: 34, scope: !80)
!84 = !DILocation(line: 44, column: 36, scope: !80)
!85 = !DILocation(line: 44, column: 41, scope: !80)
!86 = !DILocation(line: 44, column: 26, scope: !80)
!87 = !DILocation(line: 45, column: 7, scope: !80)
!88 = !DILocation(line: 46, column: 1, scope: !12)
!89 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 50, type: !90, scopeLine: 50, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!90 = !DISubroutineType(types: !91)
!91 = !{!5}
!92 = !DILocalVariable(name: "a0", scope: !89, file: !13, line: 51, type: !16)
!93 = !DILocation(line: 51, column: 12, scope: !89)
!94 = !DILocation(line: 52, column: 24, scope: !89)
!95 = !DILocation(line: 52, column: 5, scope: !89)
!96 = !DILocalVariable(name: "r", scope: !89, file: !13, line: 54, type: !5)
!97 = !DILocation(line: 54, column: 9, scope: !89)
!98 = !DILocation(line: 54, column: 19, scope: !89)
!99 = !DILocation(line: 54, column: 13, scope: !89)
!100 = !DILocation(line: 55, column: 5, scope: !89)
