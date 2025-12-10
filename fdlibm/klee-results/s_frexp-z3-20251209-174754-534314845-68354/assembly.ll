; ModuleID = 's_frexp.bc'
source_filename = "./s_frexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @frexp(double %x, i32* %eptr) #0 !dbg !18 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %eptr.addr = alloca i32*, align 8
  %hx = alloca i32, align 4
  %ix = alloca i32, align 4
  %lx = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !21, metadata !DIExpression()), !dbg !22
  store i32* %eptr, i32** %eptr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %eptr.addr, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %lx, metadata !29, metadata !DIExpression()), !dbg !30
  %0 = bitcast double* %x.addr to i32*, !dbg !31
  %1 = load i32, i32* %0, align 8, !dbg !31
  store i32 %1, i32* %hx, align 4, !dbg !32
  %2 = load i32, i32* %hx, align 4, !dbg !33
  %and = and i32 2147483647, %2, !dbg !34
  store i32 %and, i32* %ix, align 4, !dbg !35
  %3 = bitcast double* %x.addr to i32*, !dbg !36
  %add.ptr = getelementptr inbounds i32, i32* %3, i64 1, !dbg !36
  %4 = load i32, i32* %add.ptr, align 4, !dbg !36
  store i32 %4, i32* %lx, align 4, !dbg !37
  %5 = load i32*, i32** %eptr.addr, align 8, !dbg !38
  store i32 0, i32* %5, align 4, !dbg !39
  %6 = load i32, i32* %ix, align 4, !dbg !40
  %cmp = icmp sge i32 %6, 2146435072, !dbg !42
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !43

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %ix, align 4, !dbg !44
  %8 = load i32, i32* %lx, align 4, !dbg !45
  %or = or i32 %7, %8, !dbg !46
  %cmp1 = icmp eq i32 %or, 0, !dbg !47
  br i1 %cmp1, label %if.then, label %if.end, !dbg !48

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load double, double* %x.addr, align 8, !dbg !49
  store double %9, double* %retval, align 8, !dbg !50
  br label %return, !dbg !50

if.end:                                           ; preds = %lor.lhs.false
  %10 = load i32, i32* %ix, align 4, !dbg !51
  %cmp2 = icmp slt i32 %10, 1048576, !dbg !53
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !54

if.then3:                                         ; preds = %if.end
  %11 = load double, double* %x.addr, align 8, !dbg !55
  %mul = fmul double %11, 0x4350000000000000, !dbg !55
  store double %mul, double* %x.addr, align 8, !dbg !55
  %12 = bitcast double* %x.addr to i32*, !dbg !57
  %13 = load i32, i32* %12, align 8, !dbg !57
  store i32 %13, i32* %hx, align 4, !dbg !58
  %14 = load i32, i32* %hx, align 4, !dbg !59
  %and4 = and i32 %14, 2147483647, !dbg !60
  store i32 %and4, i32* %ix, align 4, !dbg !61
  %15 = load i32*, i32** %eptr.addr, align 8, !dbg !62
  store i32 -54, i32* %15, align 4, !dbg !63
  br label %if.end5, !dbg !64

if.end5:                                          ; preds = %if.then3, %if.end
  %16 = load i32, i32* %ix, align 4, !dbg !65
  %shr = ashr i32 %16, 20, !dbg !66
  %sub = sub nsw i32 %shr, 1022, !dbg !67
  %17 = load i32*, i32** %eptr.addr, align 8, !dbg !68
  %18 = load i32, i32* %17, align 4, !dbg !69
  %add = add nsw i32 %18, %sub, !dbg !69
  store i32 %add, i32* %17, align 4, !dbg !69
  %19 = load i32, i32* %hx, align 4, !dbg !70
  %and6 = and i32 %19, -2146435073, !dbg !71
  %or7 = or i32 %and6, 1071644672, !dbg !72
  store i32 %or7, i32* %hx, align 4, !dbg !73
  %20 = load i32, i32* %hx, align 4, !dbg !74
  %21 = bitcast double* %x.addr to i32*, !dbg !75
  store i32 %20, i32* %21, align 8, !dbg !76
  %22 = load double, double* %x.addr, align 8, !dbg !77
  store double %22, double* %retval, align 8, !dbg !78
  br label %return, !dbg !78

return:                                           ; preds = %if.end5, %if.then
  %23 = load double, double* %retval, align 8, !dbg !79
  ret double %23, !dbg !79
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !80 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca i32, align 4
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !83, metadata !DIExpression()), !dbg !84
  %0 = bitcast double* %a0 to i8*, !dbg !85
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !86
  call void @llvm.dbg.declare(metadata i32* %a1, metadata !87, metadata !DIExpression()), !dbg !88
  %1 = bitcast i32* %a1 to i8*, !dbg !89
  call void @klee_make_symbolic(i8* %1, i64 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !90
  call void @llvm.dbg.declare(metadata double* %r, metadata !91, metadata !DIExpression()), !dbg !92
  %2 = load double, double* %a0, align 8, !dbg !93
  %call = call double @frexp(double %2, i32* %a1) #3, !dbg !94
  store double %call, double* %r, align 8, !dbg !92
  ret i32 0, !dbg !95
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !6, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "s_frexp.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression(DW_OP_constu, 4850376798678024192, DW_OP_stack_value))
!8 = distinct !DIGlobalVariable(name: "two54", scope: !0, file: !9, line: 31, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./s_frexp.c", directory: "/home/klee/logic_bombs/fdlibm")
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!18 = distinct !DISubprogram(name: "frexp", scope: !9, file: !9, line: 34, type: !19, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!19 = !DISubroutineType(types: !20)
!20 = !{!11, !11, !4}
!21 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !9, line: 34, type: !11)
!22 = !DILocation(line: 34, column: 22, scope: !18)
!23 = !DILocalVariable(name: "eptr", arg: 2, scope: !18, file: !9, line: 34, type: !4)
!24 = !DILocation(line: 34, column: 30, scope: !18)
!25 = !DILocalVariable(name: "hx", scope: !18, file: !9, line: 40, type: !5)
!26 = !DILocation(line: 40, column: 7, scope: !18)
!27 = !DILocalVariable(name: "ix", scope: !18, file: !9, line: 40, type: !5)
!28 = !DILocation(line: 40, column: 11, scope: !18)
!29 = !DILocalVariable(name: "lx", scope: !18, file: !9, line: 40, type: !5)
!30 = !DILocation(line: 40, column: 15, scope: !18)
!31 = !DILocation(line: 41, column: 7, scope: !18)
!32 = !DILocation(line: 41, column: 5, scope: !18)
!33 = !DILocation(line: 42, column: 18, scope: !18)
!34 = !DILocation(line: 42, column: 17, scope: !18)
!35 = !DILocation(line: 42, column: 5, scope: !18)
!36 = !DILocation(line: 43, column: 7, scope: !18)
!37 = !DILocation(line: 43, column: 5, scope: !18)
!38 = !DILocation(line: 44, column: 3, scope: !18)
!39 = !DILocation(line: 44, column: 8, scope: !18)
!40 = !DILocation(line: 45, column: 5, scope: !41)
!41 = distinct !DILexicalBlock(scope: !18, file: !9, line: 45, column: 5)
!42 = !DILocation(line: 45, column: 7, scope: !41)
!43 = !DILocation(line: 45, column: 19, scope: !41)
!44 = !DILocation(line: 45, column: 23, scope: !41)
!45 = !DILocation(line: 45, column: 26, scope: !41)
!46 = !DILocation(line: 45, column: 25, scope: !41)
!47 = !DILocation(line: 45, column: 29, scope: !41)
!48 = !DILocation(line: 45, column: 5, scope: !18)
!49 = !DILocation(line: 45, column: 42, scope: !41)
!50 = !DILocation(line: 45, column: 35, scope: !41)
!51 = !DILocation(line: 46, column: 6, scope: !52)
!52 = distinct !DILexicalBlock(scope: !18, file: !9, line: 46, column: 6)
!53 = !DILocation(line: 46, column: 8, scope: !52)
!54 = !DILocation(line: 46, column: 6, scope: !18)
!55 = !DILocation(line: 47, column: 8, scope: !56)
!56 = distinct !DILexicalBlock(scope: !52, file: !9, line: 46, column: 21)
!57 = !DILocation(line: 48, column: 11, scope: !56)
!58 = !DILocation(line: 48, column: 9, scope: !56)
!59 = !DILocation(line: 49, column: 11, scope: !56)
!60 = !DILocation(line: 49, column: 13, scope: !56)
!61 = !DILocation(line: 49, column: 9, scope: !56)
!62 = !DILocation(line: 50, column: 7, scope: !56)
!63 = !DILocation(line: 50, column: 12, scope: !56)
!64 = !DILocation(line: 51, column: 2, scope: !56)
!65 = !DILocation(line: 52, column: 12, scope: !18)
!66 = !DILocation(line: 52, column: 14, scope: !18)
!67 = !DILocation(line: 52, column: 19, scope: !18)
!68 = !DILocation(line: 52, column: 3, scope: !18)
!69 = !DILocation(line: 52, column: 8, scope: !18)
!70 = !DILocation(line: 53, column: 8, scope: !18)
!71 = !DILocation(line: 53, column: 10, scope: !18)
!72 = !DILocation(line: 53, column: 22, scope: !18)
!73 = !DILocation(line: 53, column: 5, scope: !18)
!74 = !DILocation(line: 54, column: 12, scope: !18)
!75 = !DILocation(line: 54, column: 2, scope: !18)
!76 = !DILocation(line: 54, column: 10, scope: !18)
!77 = !DILocation(line: 55, column: 9, scope: !18)
!78 = !DILocation(line: 55, column: 2, scope: !18)
!79 = !DILocation(line: 56, column: 1, scope: !18)
!80 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 60, type: !81, scopeLine: 60, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!81 = !DISubroutineType(types: !82)
!82 = !{!5}
!83 = !DILocalVariable(name: "a0", scope: !80, file: !9, line: 61, type: !11)
!84 = !DILocation(line: 61, column: 12, scope: !80)
!85 = !DILocation(line: 62, column: 24, scope: !80)
!86 = !DILocation(line: 62, column: 5, scope: !80)
!87 = !DILocalVariable(name: "a1", scope: !80, file: !9, line: 64, type: !5)
!88 = !DILocation(line: 64, column: 9, scope: !80)
!89 = !DILocation(line: 65, column: 21, scope: !80)
!90 = !DILocation(line: 65, column: 2, scope: !80)
!91 = !DILocalVariable(name: "r", scope: !80, file: !9, line: 66, type: !11)
!92 = !DILocation(line: 66, column: 9, scope: !80)
!93 = !DILocation(line: 66, column: 19, scope: !80)
!94 = !DILocation(line: 66, column: 13, scope: !80)
!95 = !DILocation(line: 68, column: 5, scope: !80)
