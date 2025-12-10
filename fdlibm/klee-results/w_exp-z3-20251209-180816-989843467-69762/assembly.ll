; ModuleID = 'w_exp.bc'
source_filename = "./w_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_fdlib_version = external dso_local global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @exp(double %x) #0 !dbg !25 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %z = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata double* %z, metadata !31, metadata !DIExpression()), !dbg !32
  %0 = load double, double* %x.addr, align 8, !dbg !33
  %call = call double @__ieee754_exp(double %0), !dbg !34
  store double %call, double* %z, align 8, !dbg !35
  %1 = load i32, i32* @_fdlib_version, align 4, !dbg !36
  %cmp = icmp eq i32 %1, -1, !dbg !38
  br i1 %cmp, label %if.then, label %if.end, !dbg !39

if.then:                                          ; preds = %entry
  %2 = load double, double* %z, align 8, !dbg !40
  store double %2, double* %retval, align 8, !dbg !41
  br label %return, !dbg !41

if.end:                                           ; preds = %entry
  %3 = load double, double* %x.addr, align 8, !dbg !42
  %4 = call double @llvm.fabs.f64(double %3) #3, !dbg !44
  %cmpinf = fcmp one double %4, 0x7FF0000000000000, !dbg !44
  br i1 %cmpinf, label %if.then1, label %if.end10, !dbg !45

if.then1:                                         ; preds = %if.end
  %5 = load double, double* %x.addr, align 8, !dbg !46
  %cmp2 = fcmp ogt double %5, 0x40862E42FEFA39EF, !dbg !49
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !50

if.then3:                                         ; preds = %if.then1
  %6 = load double, double* %x.addr, align 8, !dbg !51
  %7 = load double, double* %x.addr, align 8, !dbg !52
  %call4 = call double @__kernel_standard(double %6, double %7, i32 6), !dbg !53
  store double %call4, double* %retval, align 8, !dbg !54
  br label %return, !dbg !54

if.else:                                          ; preds = %if.then1
  %8 = load double, double* %x.addr, align 8, !dbg !55
  %cmp5 = fcmp olt double %8, 0xC0874910D52D3051, !dbg !57
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !58

if.then6:                                         ; preds = %if.else
  %9 = load double, double* %x.addr, align 8, !dbg !59
  %10 = load double, double* %x.addr, align 8, !dbg !60
  %call7 = call double @__kernel_standard(double %9, double %10, i32 7), !dbg !61
  store double %call7, double* %retval, align 8, !dbg !62
  br label %return, !dbg !62

if.end8:                                          ; preds = %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8
  br label %if.end10, !dbg !63

if.end10:                                         ; preds = %if.end9, %if.end
  %11 = load double, double* %z, align 8, !dbg !64
  store double %11, double* %retval, align 8, !dbg !65
  br label %return, !dbg !65

return:                                           ; preds = %if.end10, %if.then6, %if.then3, %if.then
  %12 = load double, double* %retval, align 8, !dbg !66
  ret double %12, !dbg !66
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local double @__ieee754_exp(double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

declare dso_local double @__kernel_standard(double, double, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !67 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !70, metadata !DIExpression()), !dbg !71
  %0 = bitcast double* %a0 to i8*, !dbg !72
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !73
  call void @llvm.dbg.declare(metadata double* %r, metadata !74, metadata !DIExpression()), !dbg !75
  %1 = load double, double* %a0, align 8, !dbg !76
  %call = call double @exp(double %1) #4, !dbg !77
  store double %call, double* %r, align 8, !dbg !75
  ret i32 0, !dbg !78
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { readnone }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !11, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "w_exp.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fdversion", file: !4, line: 48, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./fdlibm.h", directory: "/home/klee/logic_bombs/fdlibm")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "fdlibm_ieee", value: -1)
!8 = !DIEnumerator(name: "fdlibm_svid", value: 0)
!9 = !DIEnumerator(name: "fdlibm_xopen", value: 1)
!10 = !DIEnumerator(name: "fdlibm_posix", value: 2)
!11 = !{!12, !17}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 4649454530587146735, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "o_threshold", scope: !0, file: !14, line: 24, type: !15, isLocal: true, isDefinition: true)
!14 = !DIFile(filename: "./w_exp.c", directory: "/home/klee/logic_bombs/fdlibm")
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression(DW_OP_constu, 13873137513782915153, DW_OP_stack_value))
!18 = distinct !DIGlobalVariable(name: "u_threshold", scope: !0, file: !14, line: 25, type: !15, isLocal: true, isDefinition: true)
!19 = !{i32 7, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!25 = distinct !DISubprogram(name: "exp", scope: !14, file: !14, line: 28, type: !26, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{!16, !16}
!28 = !{}
!29 = !DILocalVariable(name: "x", arg: 1, scope: !25, file: !14, line: 28, type: !16)
!30 = !DILocation(line: 28, column: 20, scope: !25)
!31 = !DILocalVariable(name: "z", scope: !25, file: !14, line: 37, type: !16)
!32 = !DILocation(line: 37, column: 9, scope: !25)
!33 = !DILocation(line: 38, column: 20, scope: !25)
!34 = !DILocation(line: 38, column: 6, scope: !25)
!35 = !DILocation(line: 38, column: 4, scope: !25)
!36 = !DILocation(line: 39, column: 5, scope: !37)
!37 = distinct !DILexicalBlock(scope: !25, file: !14, line: 39, column: 5)
!38 = !DILocation(line: 39, column: 18, scope: !37)
!39 = !DILocation(line: 39, column: 5, scope: !25)
!40 = !DILocation(line: 39, column: 36, scope: !37)
!41 = !DILocation(line: 39, column: 29, scope: !37)
!42 = !DILocation(line: 40, column: 12, scope: !43)
!43 = distinct !DILexicalBlock(scope: !25, file: !14, line: 40, column: 5)
!44 = !DILocation(line: 40, column: 5, scope: !43)
!45 = !DILocation(line: 40, column: 5, scope: !25)
!46 = !DILocation(line: 41, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !14, line: 41, column: 9)
!48 = distinct !DILexicalBlock(scope: !43, file: !14, line: 40, column: 16)
!49 = !DILocation(line: 41, column: 10, scope: !47)
!50 = !DILocation(line: 41, column: 9, scope: !48)
!51 = !DILocation(line: 42, column: 35, scope: !47)
!52 = !DILocation(line: 42, column: 37, scope: !47)
!53 = !DILocation(line: 42, column: 17, scope: !47)
!54 = !DILocation(line: 42, column: 10, scope: !47)
!55 = !DILocation(line: 43, column: 14, scope: !56)
!56 = distinct !DILexicalBlock(scope: !47, file: !14, line: 43, column: 14)
!57 = !DILocation(line: 43, column: 15, scope: !56)
!58 = !DILocation(line: 43, column: 14, scope: !47)
!59 = !DILocation(line: 44, column: 35, scope: !56)
!60 = !DILocation(line: 44, column: 37, scope: !56)
!61 = !DILocation(line: 44, column: 17, scope: !56)
!62 = !DILocation(line: 44, column: 10, scope: !56)
!63 = !DILocation(line: 45, column: 2, scope: !48)
!64 = !DILocation(line: 46, column: 9, scope: !25)
!65 = !DILocation(line: 46, column: 2, scope: !25)
!66 = !DILocation(line: 48, column: 1, scope: !25)
!67 = distinct !DISubprogram(name: "main", scope: !14, file: !14, line: 52, type: !68, scopeLine: 52, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!68 = !DISubroutineType(types: !69)
!69 = !{!5}
!70 = !DILocalVariable(name: "a0", scope: !67, file: !14, line: 53, type: !16)
!71 = !DILocation(line: 53, column: 12, scope: !67)
!72 = !DILocation(line: 54, column: 24, scope: !67)
!73 = !DILocation(line: 54, column: 5, scope: !67)
!74 = !DILocalVariable(name: "r", scope: !67, file: !14, line: 56, type: !16)
!75 = !DILocation(line: 56, column: 12, scope: !67)
!76 = !DILocation(line: 56, column: 20, scope: !67)
!77 = !DILocation(line: 56, column: 16, scope: !67)
!78 = !DILocation(line: 57, column: 5, scope: !67)
