; ModuleID = 's_nextafter.bc'
source_filename = "./s_nextafter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @nextafter(double %x, double %y) #0 !dbg !12 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %hx = alloca i32, align 4
  %hy = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %lx = alloca i32, align 4
  %ly = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store double %y, double* %y.addr, align 8
  call void @llvm.dbg.declare(metadata double* %y.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %hy, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %iy, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %lx, metadata !29, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %ly, metadata !32, metadata !DIExpression()), !dbg !33
  %0 = bitcast double* %x.addr to i32*, !dbg !34
  %1 = load i32, i32* %0, align 8, !dbg !34
  store i32 %1, i32* %hx, align 4, !dbg !35
  %2 = bitcast double* %x.addr to i32*, !dbg !36
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 1, !dbg !36
  %3 = load i32, i32* %add.ptr, align 4, !dbg !36
  store i32 %3, i32* %lx, align 4, !dbg !37
  %4 = bitcast double* %y.addr to i32*, !dbg !38
  %5 = load i32, i32* %4, align 8, !dbg !38
  store i32 %5, i32* %hy, align 4, !dbg !39
  %6 = bitcast double* %y.addr to i32*, !dbg !40
  %add.ptr1 = getelementptr inbounds i32, i32* %6, i64 1, !dbg !40
  %7 = load i32, i32* %add.ptr1, align 4, !dbg !40
  store i32 %7, i32* %ly, align 4, !dbg !41
  %8 = load i32, i32* %hx, align 4, !dbg !42
  %and = and i32 %8, 2147483647, !dbg !43
  store i32 %and, i32* %ix, align 4, !dbg !44
  %9 = load i32, i32* %hy, align 4, !dbg !45
  %and2 = and i32 %9, 2147483647, !dbg !46
  store i32 %and2, i32* %iy, align 4, !dbg !47
  %10 = load i32, i32* %ix, align 4, !dbg !48
  %cmp = icmp sge i32 %10, 2146435072, !dbg !50
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !51

land.lhs.true:                                    ; preds = %entry
  %11 = load i32, i32* %ix, align 4, !dbg !52
  %sub = sub nsw i32 %11, 2146435072, !dbg !53
  %12 = load i32, i32* %lx, align 4, !dbg !54
  %or = or i32 %sub, %12, !dbg !55
  %cmp3 = icmp ne i32 %or, 0, !dbg !56
  br i1 %cmp3, label %if.then, label %lor.lhs.false, !dbg !57

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %13 = load i32, i32* %iy, align 4, !dbg !58
  %cmp4 = icmp sge i32 %13, 2146435072, !dbg !59
  br i1 %cmp4, label %land.lhs.true5, label %if.end, !dbg !60

land.lhs.true5:                                   ; preds = %lor.lhs.false
  %14 = load i32, i32* %iy, align 4, !dbg !61
  %sub6 = sub nsw i32 %14, 2146435072, !dbg !62
  %15 = load i32, i32* %ly, align 4, !dbg !63
  %or7 = or i32 %sub6, %15, !dbg !64
  %cmp8 = icmp ne i32 %or7, 0, !dbg !65
  br i1 %cmp8, label %if.then, label %if.end, !dbg !66

if.then:                                          ; preds = %land.lhs.true5, %land.lhs.true
  %16 = load double, double* %x.addr, align 8, !dbg !67
  %17 = load double, double* %y.addr, align 8, !dbg !68
  %add = fadd double %16, %17, !dbg !69
  store double %add, double* %retval, align 8, !dbg !70
  br label %return, !dbg !70

if.end:                                           ; preds = %land.lhs.true5, %lor.lhs.false
  %18 = load double, double* %x.addr, align 8, !dbg !71
  %19 = load double, double* %y.addr, align 8, !dbg !73
  %cmp9 = fcmp oeq double %18, %19, !dbg !74
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !75

if.then10:                                        ; preds = %if.end
  %20 = load double, double* %x.addr, align 8, !dbg !76
  store double %20, double* %retval, align 8, !dbg !77
  br label %return, !dbg !77

if.end11:                                         ; preds = %if.end
  %21 = load i32, i32* %ix, align 4, !dbg !78
  %22 = load i32, i32* %lx, align 4, !dbg !80
  %or12 = or i32 %21, %22, !dbg !81
  %cmp13 = icmp eq i32 %or12, 0, !dbg !82
  br i1 %cmp13, label %if.then14, label %if.end19, !dbg !83

if.then14:                                        ; preds = %if.end11
  %23 = load i32, i32* %hy, align 4, !dbg !84
  %and15 = and i32 %23, -2147483648, !dbg !86
  %24 = bitcast double* %x.addr to i32*, !dbg !87
  store i32 %and15, i32* %24, align 8, !dbg !88
  %25 = bitcast double* %x.addr to i32*, !dbg !89
  %add.ptr16 = getelementptr inbounds i32, i32* %25, i64 1, !dbg !89
  store i32 1, i32* %add.ptr16, align 4, !dbg !90
  %26 = load double, double* %x.addr, align 8, !dbg !91
  %27 = load double, double* %x.addr, align 8, !dbg !92
  %mul = fmul double %26, %27, !dbg !93
  store double %mul, double* %y.addr, align 8, !dbg !94
  %28 = load double, double* %y.addr, align 8, !dbg !95
  %29 = load double, double* %x.addr, align 8, !dbg !97
  %cmp17 = fcmp oeq double %28, %29, !dbg !98
  br i1 %cmp17, label %if.then18, label %if.else, !dbg !99

if.then18:                                        ; preds = %if.then14
  %30 = load double, double* %y.addr, align 8, !dbg !100
  store double %30, double* %retval, align 8, !dbg !101
  br label %return, !dbg !101

if.else:                                          ; preds = %if.then14
  %31 = load double, double* %x.addr, align 8, !dbg !102
  store double %31, double* %retval, align 8, !dbg !103
  br label %return, !dbg !103

if.end19:                                         ; preds = %if.end11
  %32 = load i32, i32* %hx, align 4, !dbg !104
  %cmp20 = icmp sge i32 %32, 0, !dbg !106
  br i1 %cmp20, label %if.then21, label %if.else40, !dbg !107

if.then21:                                        ; preds = %if.end19
  %33 = load i32, i32* %hx, align 4, !dbg !108
  %34 = load i32, i32* %hy, align 4, !dbg !111
  %cmp22 = icmp sgt i32 %33, %34, !dbg !112
  br i1 %cmp22, label %if.then27, label %lor.lhs.false23, !dbg !113

lor.lhs.false23:                                  ; preds = %if.then21
  %35 = load i32, i32* %hx, align 4, !dbg !114
  %36 = load i32, i32* %hy, align 4, !dbg !115
  %cmp24 = icmp eq i32 %35, %36, !dbg !116
  br i1 %cmp24, label %land.lhs.true25, label %if.else33, !dbg !117

land.lhs.true25:                                  ; preds = %lor.lhs.false23
  %37 = load i32, i32* %lx, align 4, !dbg !118
  %38 = load i32, i32* %ly, align 4, !dbg !119
  %cmp26 = icmp ugt i32 %37, %38, !dbg !120
  br i1 %cmp26, label %if.then27, label %if.else33, !dbg !121

if.then27:                                        ; preds = %land.lhs.true25, %if.then21
  %39 = load i32, i32* %lx, align 4, !dbg !122
  %cmp28 = icmp eq i32 %39, 0, !dbg !125
  br i1 %cmp28, label %if.then29, label %if.end31, !dbg !126

if.then29:                                        ; preds = %if.then27
  %40 = load i32, i32* %hx, align 4, !dbg !127
  %sub30 = sub nsw i32 %40, 1, !dbg !127
  store i32 %sub30, i32* %hx, align 4, !dbg !127
  br label %if.end31, !dbg !128

if.end31:                                         ; preds = %if.then29, %if.then27
  %41 = load i32, i32* %lx, align 4, !dbg !129
  %sub32 = sub i32 %41, 1, !dbg !129
  store i32 %sub32, i32* %lx, align 4, !dbg !129
  br label %if.end39, !dbg !130

if.else33:                                        ; preds = %land.lhs.true25, %lor.lhs.false23
  %42 = load i32, i32* %lx, align 4, !dbg !131
  %add34 = add i32 %42, 1, !dbg !131
  store i32 %add34, i32* %lx, align 4, !dbg !131
  %43 = load i32, i32* %lx, align 4, !dbg !133
  %cmp35 = icmp eq i32 %43, 0, !dbg !135
  br i1 %cmp35, label %if.then36, label %if.end38, !dbg !136

if.then36:                                        ; preds = %if.else33
  %44 = load i32, i32* %hx, align 4, !dbg !137
  %add37 = add nsw i32 %44, 1, !dbg !137
  store i32 %add37, i32* %hx, align 4, !dbg !137
  br label %if.end38, !dbg !138

if.end38:                                         ; preds = %if.then36, %if.else33
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end31
  br label %if.end61, !dbg !139

if.else40:                                        ; preds = %if.end19
  %45 = load i32, i32* %hy, align 4, !dbg !140
  %cmp41 = icmp sge i32 %45, 0, !dbg !143
  br i1 %cmp41, label %if.then48, label %lor.lhs.false42, !dbg !144

lor.lhs.false42:                                  ; preds = %if.else40
  %46 = load i32, i32* %hx, align 4, !dbg !145
  %47 = load i32, i32* %hy, align 4, !dbg !146
  %cmp43 = icmp sgt i32 %46, %47, !dbg !147
  br i1 %cmp43, label %if.then48, label %lor.lhs.false44, !dbg !148

lor.lhs.false44:                                  ; preds = %lor.lhs.false42
  %48 = load i32, i32* %hx, align 4, !dbg !149
  %49 = load i32, i32* %hy, align 4, !dbg !150
  %cmp45 = icmp eq i32 %48, %49, !dbg !151
  br i1 %cmp45, label %land.lhs.true46, label %if.else54, !dbg !152

land.lhs.true46:                                  ; preds = %lor.lhs.false44
  %50 = load i32, i32* %lx, align 4, !dbg !153
  %51 = load i32, i32* %ly, align 4, !dbg !154
  %cmp47 = icmp ugt i32 %50, %51, !dbg !155
  br i1 %cmp47, label %if.then48, label %if.else54, !dbg !156

if.then48:                                        ; preds = %land.lhs.true46, %lor.lhs.false42, %if.else40
  %52 = load i32, i32* %lx, align 4, !dbg !157
  %cmp49 = icmp eq i32 %52, 0, !dbg !160
  br i1 %cmp49, label %if.then50, label %if.end52, !dbg !161

if.then50:                                        ; preds = %if.then48
  %53 = load i32, i32* %hx, align 4, !dbg !162
  %sub51 = sub nsw i32 %53, 1, !dbg !162
  store i32 %sub51, i32* %hx, align 4, !dbg !162
  br label %if.end52, !dbg !163

if.end52:                                         ; preds = %if.then50, %if.then48
  %54 = load i32, i32* %lx, align 4, !dbg !164
  %sub53 = sub i32 %54, 1, !dbg !164
  store i32 %sub53, i32* %lx, align 4, !dbg !164
  br label %if.end60, !dbg !165

if.else54:                                        ; preds = %land.lhs.true46, %lor.lhs.false44
  %55 = load i32, i32* %lx, align 4, !dbg !166
  %add55 = add i32 %55, 1, !dbg !166
  store i32 %add55, i32* %lx, align 4, !dbg !166
  %56 = load i32, i32* %lx, align 4, !dbg !168
  %cmp56 = icmp eq i32 %56, 0, !dbg !170
  br i1 %cmp56, label %if.then57, label %if.end59, !dbg !171

if.then57:                                        ; preds = %if.else54
  %57 = load i32, i32* %hx, align 4, !dbg !172
  %add58 = add nsw i32 %57, 1, !dbg !172
  store i32 %add58, i32* %hx, align 4, !dbg !172
  br label %if.end59, !dbg !173

if.end59:                                         ; preds = %if.then57, %if.else54
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end52
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end39
  %58 = load i32, i32* %hx, align 4, !dbg !174
  %and62 = and i32 %58, 2146435072, !dbg !175
  store i32 %and62, i32* %hy, align 4, !dbg !176
  %59 = load i32, i32* %hy, align 4, !dbg !177
  %cmp63 = icmp sge i32 %59, 2146435072, !dbg !179
  br i1 %cmp63, label %if.then64, label %if.end66, !dbg !180

if.then64:                                        ; preds = %if.end61
  %60 = load double, double* %x.addr, align 8, !dbg !181
  %61 = load double, double* %x.addr, align 8, !dbg !182
  %add65 = fadd double %60, %61, !dbg !183
  store double %add65, double* %retval, align 8, !dbg !184
  br label %return, !dbg !184

if.end66:                                         ; preds = %if.end61
  %62 = load i32, i32* %hy, align 4, !dbg !185
  %cmp67 = icmp slt i32 %62, 1048576, !dbg !187
  br i1 %cmp67, label %if.then68, label %if.end74, !dbg !188

if.then68:                                        ; preds = %if.end66
  %63 = load double, double* %x.addr, align 8, !dbg !189
  %64 = load double, double* %x.addr, align 8, !dbg !191
  %mul69 = fmul double %63, %64, !dbg !192
  store double %mul69, double* %y.addr, align 8, !dbg !193
  %65 = load double, double* %y.addr, align 8, !dbg !194
  %66 = load double, double* %x.addr, align 8, !dbg !196
  %cmp70 = fcmp une double %65, %66, !dbg !197
  br i1 %cmp70, label %if.then71, label %if.end73, !dbg !198

if.then71:                                        ; preds = %if.then68
  %67 = load i32, i32* %hx, align 4, !dbg !199
  %68 = bitcast double* %y.addr to i32*, !dbg !201
  store i32 %67, i32* %68, align 8, !dbg !202
  %69 = load i32, i32* %lx, align 4, !dbg !203
  %70 = bitcast double* %y.addr to i32*, !dbg !204
  %add.ptr72 = getelementptr inbounds i32, i32* %70, i64 1, !dbg !204
  store i32 %69, i32* %add.ptr72, align 4, !dbg !205
  %71 = load double, double* %y.addr, align 8, !dbg !206
  store double %71, double* %retval, align 8, !dbg !207
  br label %return, !dbg !207

if.end73:                                         ; preds = %if.then68
  br label %if.end74, !dbg !208

if.end74:                                         ; preds = %if.end73, %if.end66
  %72 = load i32, i32* %hx, align 4, !dbg !209
  %73 = bitcast double* %x.addr to i32*, !dbg !210
  store i32 %72, i32* %73, align 8, !dbg !211
  %74 = load i32, i32* %lx, align 4, !dbg !212
  %75 = bitcast double* %x.addr to i32*, !dbg !213
  %add.ptr75 = getelementptr inbounds i32, i32* %75, i64 1, !dbg !213
  store i32 %74, i32* %add.ptr75, align 4, !dbg !214
  %76 = load double, double* %x.addr, align 8, !dbg !215
  store double %76, double* %retval, align 8, !dbg !216
  br label %return, !dbg !216

return:                                           ; preds = %if.end74, %if.then71, %if.then64, %if.else, %if.then18, %if.then10, %if.then
  %77 = load double, double* %retval, align 8, !dbg !217
  ret double %77, !dbg !217
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !218 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !221, metadata !DIExpression()), !dbg !222
  %0 = bitcast double* %a0 to i8*, !dbg !223
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !224
  call void @llvm.dbg.declare(metadata double* %a1, metadata !225, metadata !DIExpression()), !dbg !226
  %1 = bitcast double* %a1 to i8*, !dbg !227
  call void @klee_make_symbolic(i8* %1, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !228
  call void @llvm.dbg.declare(metadata double* %r, metadata !229, metadata !DIExpression()), !dbg !230
  %2 = load double, double* %a0, align 8, !dbg !231
  %3 = load double, double* %a1, align 8, !dbg !232
  %call = call double @nextafter(double %2, double %3) #3, !dbg !233
  store double %call, double* %r, align 8, !dbg !230
  ret i32 0, !dbg !234
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
!1 = !DIFile(filename: "s_nextafter.c", directory: "/home/klee/logic_bombs/fdlibm")
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
!12 = distinct !DISubprogram(name: "nextafter", scope: !13, file: !13, line: 24, type: !14, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!13 = !DIFile(filename: "./s_nextafter.c", directory: "/home/klee/logic_bombs/fdlibm")
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !16, !16}
!16 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!17 = !DILocalVariable(name: "x", arg: 1, scope: !12, file: !13, line: 24, type: !16)
!18 = !DILocation(line: 24, column: 26, scope: !12)
!19 = !DILocalVariable(name: "y", arg: 2, scope: !12, file: !13, line: 24, type: !16)
!20 = !DILocation(line: 24, column: 36, scope: !12)
!21 = !DILocalVariable(name: "hx", scope: !12, file: !13, line: 30, type: !5)
!22 = !DILocation(line: 30, column: 6, scope: !12)
!23 = !DILocalVariable(name: "hy", scope: !12, file: !13, line: 30, type: !5)
!24 = !DILocation(line: 30, column: 9, scope: !12)
!25 = !DILocalVariable(name: "ix", scope: !12, file: !13, line: 30, type: !5)
!26 = !DILocation(line: 30, column: 12, scope: !12)
!27 = !DILocalVariable(name: "iy", scope: !12, file: !13, line: 30, type: !5)
!28 = !DILocation(line: 30, column: 15, scope: !12)
!29 = !DILocalVariable(name: "lx", scope: !12, file: !13, line: 31, type: !30)
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !DILocation(line: 31, column: 11, scope: !12)
!32 = !DILocalVariable(name: "ly", scope: !12, file: !13, line: 31, type: !30)
!33 = !DILocation(line: 31, column: 14, scope: !12)
!34 = !DILocation(line: 33, column: 7, scope: !12)
!35 = !DILocation(line: 33, column: 5, scope: !12)
!36 = !DILocation(line: 34, column: 7, scope: !12)
!37 = !DILocation(line: 34, column: 5, scope: !12)
!38 = !DILocation(line: 35, column: 7, scope: !12)
!39 = !DILocation(line: 35, column: 5, scope: !12)
!40 = !DILocation(line: 36, column: 7, scope: !12)
!41 = !DILocation(line: 36, column: 5, scope: !12)
!42 = !DILocation(line: 37, column: 7, scope: !12)
!43 = !DILocation(line: 37, column: 9, scope: !12)
!44 = !DILocation(line: 37, column: 5, scope: !12)
!45 = !DILocation(line: 38, column: 7, scope: !12)
!46 = !DILocation(line: 38, column: 9, scope: !12)
!47 = !DILocation(line: 38, column: 5, scope: !12)
!48 = !DILocation(line: 40, column: 7, scope: !49)
!49 = distinct !DILexicalBlock(scope: !12, file: !13, line: 40, column: 5)
!50 = !DILocation(line: 40, column: 9, scope: !49)
!51 = !DILocation(line: 40, column: 22, scope: !49)
!52 = !DILocation(line: 40, column: 26, scope: !49)
!53 = !DILocation(line: 40, column: 28, scope: !49)
!54 = !DILocation(line: 40, column: 41, scope: !49)
!55 = !DILocation(line: 40, column: 40, scope: !49)
!56 = !DILocation(line: 40, column: 44, scope: !49)
!57 = !DILocation(line: 40, column: 49, scope: !49)
!58 = !DILocation(line: 41, column: 7, scope: !49)
!59 = !DILocation(line: 41, column: 9, scope: !49)
!60 = !DILocation(line: 41, column: 22, scope: !49)
!61 = !DILocation(line: 41, column: 26, scope: !49)
!62 = !DILocation(line: 41, column: 28, scope: !49)
!63 = !DILocation(line: 41, column: 41, scope: !49)
!64 = !DILocation(line: 41, column: 40, scope: !49)
!65 = !DILocation(line: 41, column: 44, scope: !49)
!66 = !DILocation(line: 40, column: 5, scope: !12)
!67 = !DILocation(line: 42, column: 12, scope: !49)
!68 = !DILocation(line: 42, column: 14, scope: !49)
!69 = !DILocation(line: 42, column: 13, scope: !49)
!70 = !DILocation(line: 42, column: 5, scope: !49)
!71 = !DILocation(line: 43, column: 5, scope: !72)
!72 = distinct !DILexicalBlock(scope: !12, file: !13, line: 43, column: 5)
!73 = !DILocation(line: 43, column: 8, scope: !72)
!74 = !DILocation(line: 43, column: 6, scope: !72)
!75 = !DILocation(line: 43, column: 5, scope: !12)
!76 = !DILocation(line: 43, column: 18, scope: !72)
!77 = !DILocation(line: 43, column: 11, scope: !72)
!78 = !DILocation(line: 44, column: 6, scope: !79)
!79 = distinct !DILexicalBlock(scope: !12, file: !13, line: 44, column: 5)
!80 = !DILocation(line: 44, column: 9, scope: !79)
!81 = !DILocation(line: 44, column: 8, scope: !79)
!82 = !DILocation(line: 44, column: 12, scope: !79)
!83 = !DILocation(line: 44, column: 5, scope: !12)
!84 = !DILocation(line: 45, column: 16, scope: !85)
!85 = distinct !DILexicalBlock(scope: !79, file: !13, line: 44, column: 17)
!86 = !DILocation(line: 45, column: 18, scope: !85)
!87 = !DILocation(line: 45, column: 6, scope: !85)
!88 = !DILocation(line: 45, column: 14, scope: !85)
!89 = !DILocation(line: 46, column: 6, scope: !85)
!90 = !DILocation(line: 46, column: 14, scope: !85)
!91 = !DILocation(line: 47, column: 10, scope: !85)
!92 = !DILocation(line: 47, column: 12, scope: !85)
!93 = !DILocation(line: 47, column: 11, scope: !85)
!94 = !DILocation(line: 47, column: 8, scope: !85)
!95 = !DILocation(line: 48, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !85, file: !13, line: 48, column: 9)
!97 = !DILocation(line: 48, column: 12, scope: !96)
!98 = !DILocation(line: 48, column: 10, scope: !96)
!99 = !DILocation(line: 48, column: 9, scope: !85)
!100 = !DILocation(line: 48, column: 22, scope: !96)
!101 = !DILocation(line: 48, column: 15, scope: !96)
!102 = !DILocation(line: 48, column: 37, scope: !96)
!103 = !DILocation(line: 48, column: 30, scope: !96)
!104 = !DILocation(line: 50, column: 5, scope: !105)
!105 = distinct !DILexicalBlock(scope: !12, file: !13, line: 50, column: 5)
!106 = !DILocation(line: 50, column: 7, scope: !105)
!107 = !DILocation(line: 50, column: 5, scope: !12)
!108 = !DILocation(line: 51, column: 9, scope: !109)
!109 = distinct !DILexicalBlock(scope: !110, file: !13, line: 51, column: 9)
!110 = distinct !DILexicalBlock(scope: !105, file: !13, line: 50, column: 12)
!111 = !DILocation(line: 51, column: 12, scope: !109)
!112 = !DILocation(line: 51, column: 11, scope: !109)
!113 = !DILocation(line: 51, column: 14, scope: !109)
!114 = !DILocation(line: 51, column: 18, scope: !109)
!115 = !DILocation(line: 51, column: 22, scope: !109)
!116 = !DILocation(line: 51, column: 20, scope: !109)
!117 = !DILocation(line: 51, column: 25, scope: !109)
!118 = !DILocation(line: 51, column: 28, scope: !109)
!119 = !DILocation(line: 51, column: 31, scope: !109)
!120 = !DILocation(line: 51, column: 30, scope: !109)
!121 = !DILocation(line: 51, column: 9, scope: !110)
!122 = !DILocation(line: 52, column: 6, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !13, line: 52, column: 6)
!124 = distinct !DILexicalBlock(scope: !109, file: !13, line: 51, column: 37)
!125 = !DILocation(line: 52, column: 8, scope: !123)
!126 = !DILocation(line: 52, column: 6, scope: !124)
!127 = !DILocation(line: 52, column: 16, scope: !123)
!128 = !DILocation(line: 52, column: 13, scope: !123)
!129 = !DILocation(line: 53, column: 6, scope: !124)
!130 = !DILocation(line: 54, column: 6, scope: !124)
!131 = !DILocation(line: 55, column: 6, scope: !132)
!132 = distinct !DILexicalBlock(scope: !109, file: !13, line: 54, column: 13)
!133 = !DILocation(line: 56, column: 6, scope: !134)
!134 = distinct !DILexicalBlock(scope: !132, file: !13, line: 56, column: 6)
!135 = !DILocation(line: 56, column: 8, scope: !134)
!136 = !DILocation(line: 56, column: 6, scope: !132)
!137 = !DILocation(line: 56, column: 16, scope: !134)
!138 = !DILocation(line: 56, column: 13, scope: !134)
!139 = !DILocation(line: 58, column: 2, scope: !110)
!140 = !DILocation(line: 59, column: 9, scope: !141)
!141 = distinct !DILexicalBlock(scope: !142, file: !13, line: 59, column: 9)
!142 = distinct !DILexicalBlock(scope: !105, file: !13, line: 58, column: 9)
!143 = !DILocation(line: 59, column: 11, scope: !141)
!144 = !DILocation(line: 59, column: 14, scope: !141)
!145 = !DILocation(line: 59, column: 16, scope: !141)
!146 = !DILocation(line: 59, column: 19, scope: !141)
!147 = !DILocation(line: 59, column: 18, scope: !141)
!148 = !DILocation(line: 59, column: 21, scope: !141)
!149 = !DILocation(line: 59, column: 25, scope: !141)
!150 = !DILocation(line: 59, column: 29, scope: !141)
!151 = !DILocation(line: 59, column: 27, scope: !141)
!152 = !DILocation(line: 59, column: 32, scope: !141)
!153 = !DILocation(line: 59, column: 35, scope: !141)
!154 = !DILocation(line: 59, column: 38, scope: !141)
!155 = !DILocation(line: 59, column: 37, scope: !141)
!156 = !DILocation(line: 59, column: 9, scope: !142)
!157 = !DILocation(line: 60, column: 6, scope: !158)
!158 = distinct !DILexicalBlock(scope: !159, file: !13, line: 60, column: 6)
!159 = distinct !DILexicalBlock(scope: !141, file: !13, line: 59, column: 43)
!160 = !DILocation(line: 60, column: 8, scope: !158)
!161 = !DILocation(line: 60, column: 6, scope: !159)
!162 = !DILocation(line: 60, column: 16, scope: !158)
!163 = !DILocation(line: 60, column: 13, scope: !158)
!164 = !DILocation(line: 61, column: 6, scope: !159)
!165 = !DILocation(line: 62, column: 6, scope: !159)
!166 = !DILocation(line: 63, column: 6, scope: !167)
!167 = distinct !DILexicalBlock(scope: !141, file: !13, line: 62, column: 13)
!168 = !DILocation(line: 64, column: 6, scope: !169)
!169 = distinct !DILexicalBlock(scope: !167, file: !13, line: 64, column: 6)
!170 = !DILocation(line: 64, column: 8, scope: !169)
!171 = !DILocation(line: 64, column: 6, scope: !167)
!172 = !DILocation(line: 64, column: 16, scope: !169)
!173 = !DILocation(line: 64, column: 13, scope: !169)
!174 = !DILocation(line: 67, column: 7, scope: !12)
!175 = !DILocation(line: 67, column: 9, scope: !12)
!176 = !DILocation(line: 67, column: 5, scope: !12)
!177 = !DILocation(line: 68, column: 5, scope: !178)
!178 = distinct !DILexicalBlock(scope: !12, file: !13, line: 68, column: 5)
!179 = !DILocation(line: 68, column: 7, scope: !178)
!180 = !DILocation(line: 68, column: 5, scope: !12)
!181 = !DILocation(line: 68, column: 28, scope: !178)
!182 = !DILocation(line: 68, column: 30, scope: !178)
!183 = !DILocation(line: 68, column: 29, scope: !178)
!184 = !DILocation(line: 68, column: 21, scope: !178)
!185 = !DILocation(line: 69, column: 5, scope: !186)
!186 = distinct !DILexicalBlock(scope: !12, file: !13, line: 69, column: 5)
!187 = !DILocation(line: 69, column: 7, scope: !186)
!188 = !DILocation(line: 69, column: 5, scope: !12)
!189 = !DILocation(line: 70, column: 10, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !13, line: 69, column: 20)
!191 = !DILocation(line: 70, column: 12, scope: !190)
!192 = !DILocation(line: 70, column: 11, scope: !190)
!193 = !DILocation(line: 70, column: 8, scope: !190)
!194 = !DILocation(line: 71, column: 9, scope: !195)
!195 = distinct !DILexicalBlock(scope: !190, file: !13, line: 71, column: 9)
!196 = !DILocation(line: 71, column: 12, scope: !195)
!197 = !DILocation(line: 71, column: 10, scope: !195)
!198 = !DILocation(line: 71, column: 9, scope: !190)
!199 = !DILocation(line: 72, column: 13, scope: !200)
!200 = distinct !DILexicalBlock(scope: !195, file: !13, line: 71, column: 15)
!201 = !DILocation(line: 72, column: 3, scope: !200)
!202 = !DILocation(line: 72, column: 11, scope: !200)
!203 = !DILocation(line: 72, column: 27, scope: !200)
!204 = !DILocation(line: 72, column: 17, scope: !200)
!205 = !DILocation(line: 72, column: 25, scope: !200)
!206 = !DILocation(line: 73, column: 10, scope: !200)
!207 = !DILocation(line: 73, column: 3, scope: !200)
!208 = !DILocation(line: 75, column: 2, scope: !190)
!209 = !DILocation(line: 76, column: 12, scope: !12)
!210 = !DILocation(line: 76, column: 2, scope: !12)
!211 = !DILocation(line: 76, column: 10, scope: !12)
!212 = !DILocation(line: 76, column: 26, scope: !12)
!213 = !DILocation(line: 76, column: 16, scope: !12)
!214 = !DILocation(line: 76, column: 24, scope: !12)
!215 = !DILocation(line: 77, column: 9, scope: !12)
!216 = !DILocation(line: 77, column: 2, scope: !12)
!217 = !DILocation(line: 78, column: 1, scope: !12)
!218 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 82, type: !219, scopeLine: 82, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!219 = !DISubroutineType(types: !220)
!220 = !{!5}
!221 = !DILocalVariable(name: "a0", scope: !218, file: !13, line: 83, type: !16)
!222 = !DILocation(line: 83, column: 12, scope: !218)
!223 = !DILocation(line: 84, column: 24, scope: !218)
!224 = !DILocation(line: 84, column: 5, scope: !218)
!225 = !DILocalVariable(name: "a1", scope: !218, file: !13, line: 85, type: !16)
!226 = !DILocation(line: 85, column: 12, scope: !218)
!227 = !DILocation(line: 86, column: 24, scope: !218)
!228 = !DILocation(line: 86, column: 5, scope: !218)
!229 = !DILocalVariable(name: "r", scope: !218, file: !13, line: 88, type: !16)
!230 = !DILocation(line: 88, column: 12, scope: !218)
!231 = !DILocation(line: 88, column: 26, scope: !218)
!232 = !DILocation(line: 88, column: 30, scope: !218)
!233 = !DILocation(line: 88, column: 16, scope: !218)
!234 = !DILocation(line: 89, column: 5, scope: !218)
