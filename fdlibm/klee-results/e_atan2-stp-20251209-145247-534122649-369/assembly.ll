; ModuleID = 'e_atan2.bc'
source_filename = "./e_atan2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_atan2(double %y, double %x) #0 !dbg !28 {
entry:
  %retval = alloca double, align 8
  %y.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  %z = alloca double, align 8
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %hx = alloca i32, align 4
  %hy = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %lx = alloca i32, align 4
  %ly = alloca i32, align 4
  store double %y, double* %y.addr, align 8
  call void @llvm.dbg.declare(metadata double* %y.addr, metadata !31, metadata !DIExpression()), !dbg !32
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata double* %z, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %k, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %m, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %hy, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %iy, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i32* %lx, metadata !49, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i32* %ly, metadata !52, metadata !DIExpression()), !dbg !53
  %0 = bitcast double* %x.addr to i32*, !dbg !54
  %1 = load i32, i32* %0, align 8, !dbg !54
  store i32 %1, i32* %hx, align 4, !dbg !55
  %2 = load i32, i32* %hx, align 4, !dbg !56
  %and = and i32 %2, 2147483647, !dbg !57
  store i32 %and, i32* %ix, align 4, !dbg !58
  %3 = bitcast double* %x.addr to i32*, !dbg !59
  %add.ptr = getelementptr inbounds i32, i32* %3, i64 1, !dbg !59
  %4 = load i32, i32* %add.ptr, align 4, !dbg !59
  store i32 %4, i32* %lx, align 4, !dbg !60
  %5 = bitcast double* %y.addr to i32*, !dbg !61
  %6 = load i32, i32* %5, align 8, !dbg !61
  store i32 %6, i32* %hy, align 4, !dbg !62
  %7 = load i32, i32* %hy, align 4, !dbg !63
  %and1 = and i32 %7, 2147483647, !dbg !64
  store i32 %and1, i32* %iy, align 4, !dbg !65
  %8 = bitcast double* %y.addr to i32*, !dbg !66
  %add.ptr2 = getelementptr inbounds i32, i32* %8, i64 1, !dbg !66
  %9 = load i32, i32* %add.ptr2, align 4, !dbg !66
  store i32 %9, i32* %ly, align 4, !dbg !67
  %10 = load i32, i32* %ix, align 4, !dbg !68
  %11 = load i32, i32* %lx, align 4, !dbg !70
  %12 = load i32, i32* %lx, align 4, !dbg !71
  %sub = sub i32 0, %12, !dbg !72
  %or = or i32 %11, %sub, !dbg !73
  %shr = lshr i32 %or, 31, !dbg !74
  %or3 = or i32 %10, %shr, !dbg !75
  %cmp = icmp ugt i32 %or3, 2146435072, !dbg !76
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !77

lor.lhs.false:                                    ; preds = %entry
  %13 = load i32, i32* %iy, align 4, !dbg !78
  %14 = load i32, i32* %ly, align 4, !dbg !79
  %15 = load i32, i32* %ly, align 4, !dbg !80
  %sub4 = sub i32 0, %15, !dbg !81
  %or5 = or i32 %14, %sub4, !dbg !82
  %shr6 = lshr i32 %or5, 31, !dbg !83
  %or7 = or i32 %13, %shr6, !dbg !84
  %cmp8 = icmp ugt i32 %or7, 2146435072, !dbg !85
  br i1 %cmp8, label %if.then, label %if.end, !dbg !86

if.then:                                          ; preds = %lor.lhs.false, %entry
  %16 = load double, double* %x.addr, align 8, !dbg !87
  %17 = load double, double* %y.addr, align 8, !dbg !88
  %add = fadd double %16, %17, !dbg !89
  store double %add, double* %retval, align 8, !dbg !90
  br label %return, !dbg !90

if.end:                                           ; preds = %lor.lhs.false
  %18 = load i32, i32* %hx, align 4, !dbg !91
  %sub9 = sub nsw i32 %18, 1072693248, !dbg !93
  %19 = load i32, i32* %lx, align 4, !dbg !94
  %or10 = or i32 %sub9, %19, !dbg !95
  %cmp11 = icmp eq i32 %or10, 0, !dbg !96
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !97

if.then12:                                        ; preds = %if.end
  %20 = load double, double* %y.addr, align 8, !dbg !98
  %call = call double @atan(double %20) #4, !dbg !99
  store double %call, double* %retval, align 8, !dbg !100
  br label %return, !dbg !100

if.end13:                                         ; preds = %if.end
  %21 = load i32, i32* %hy, align 4, !dbg !101
  %shr14 = ashr i32 %21, 31, !dbg !102
  %and15 = and i32 %shr14, 1, !dbg !103
  %22 = load i32, i32* %hx, align 4, !dbg !104
  %shr16 = ashr i32 %22, 30, !dbg !105
  %and17 = and i32 %shr16, 2, !dbg !106
  %or18 = or i32 %and15, %and17, !dbg !107
  store i32 %or18, i32* %m, align 4, !dbg !108
  %23 = load i32, i32* %iy, align 4, !dbg !109
  %24 = load i32, i32* %ly, align 4, !dbg !111
  %or19 = or i32 %23, %24, !dbg !112
  %cmp20 = icmp eq i32 %or19, 0, !dbg !113
  br i1 %cmp20, label %if.then21, label %if.end24, !dbg !114

if.then21:                                        ; preds = %if.end13
  %25 = load i32, i32* %m, align 4, !dbg !115
  switch i32 %25, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb22
    i32 3, label %sw.bb23
  ], !dbg !117

sw.bb:                                            ; preds = %if.then21, %if.then21
  %26 = load double, double* %y.addr, align 8, !dbg !118
  store double %26, double* %retval, align 8, !dbg !120
  br label %return, !dbg !120

sw.bb22:                                          ; preds = %if.then21
  store double 0x400921FB54442D18, double* %retval, align 8, !dbg !121
  br label %return, !dbg !121

sw.bb23:                                          ; preds = %if.then21
  store double 0xC00921FB54442D18, double* %retval, align 8, !dbg !122
  br label %return, !dbg !122

sw.epilog:                                        ; preds = %if.then21
  br label %if.end24, !dbg !123

if.end24:                                         ; preds = %sw.epilog, %if.end13
  %27 = load i32, i32* %ix, align 4, !dbg !124
  %28 = load i32, i32* %lx, align 4, !dbg !126
  %or25 = or i32 %27, %28, !dbg !127
  %cmp26 = icmp eq i32 %or25, 0, !dbg !128
  br i1 %cmp26, label %if.then27, label %if.end29, !dbg !129

if.then27:                                        ; preds = %if.end24
  %29 = load i32, i32* %hy, align 4, !dbg !130
  %cmp28 = icmp slt i32 %29, 0, !dbg !131
  %30 = zext i1 %cmp28 to i64, !dbg !132
  %cond = select i1 %cmp28, double 0xBFF921FB54442D18, double 0x3FF921FB54442D18, !dbg !132
  store double %cond, double* %retval, align 8, !dbg !133
  br label %return, !dbg !133

if.end29:                                         ; preds = %if.end24
  %31 = load i32, i32* %ix, align 4, !dbg !134
  %cmp30 = icmp eq i32 %31, 2146435072, !dbg !136
  br i1 %cmp30, label %if.then31, label %if.end45, !dbg !137

if.then31:                                        ; preds = %if.end29
  %32 = load i32, i32* %iy, align 4, !dbg !138
  %cmp32 = icmp eq i32 %32, 2146435072, !dbg !141
  br i1 %cmp32, label %if.then33, label %if.else, !dbg !142

if.then33:                                        ; preds = %if.then31
  %33 = load i32, i32* %m, align 4, !dbg !143
  switch i32 %33, label %sw.epilog38 [
    i32 0, label %sw.bb34
    i32 1, label %sw.bb35
    i32 2, label %sw.bb36
    i32 3, label %sw.bb37
  ], !dbg !145

sw.bb34:                                          ; preds = %if.then33
  store double 0x3FE921FB54442D18, double* %retval, align 8, !dbg !146
  br label %return, !dbg !146

sw.bb35:                                          ; preds = %if.then33
  store double 0xBFE921FB54442D18, double* %retval, align 8, !dbg !148
  br label %return, !dbg !148

sw.bb36:                                          ; preds = %if.then33
  store double 0x4002D97C7F3321D2, double* %retval, align 8, !dbg !149
  br label %return, !dbg !149

sw.bb37:                                          ; preds = %if.then33
  store double 0xC002D97C7F3321D2, double* %retval, align 8, !dbg !150
  br label %return, !dbg !150

sw.epilog38:                                      ; preds = %if.then33
  br label %if.end44, !dbg !151

if.else:                                          ; preds = %if.then31
  %34 = load i32, i32* %m, align 4, !dbg !152
  switch i32 %34, label %sw.epilog43 [
    i32 0, label %sw.bb39
    i32 1, label %sw.bb40
    i32 2, label %sw.bb41
    i32 3, label %sw.bb42
  ], !dbg !154

sw.bb39:                                          ; preds = %if.else
  store double 0.000000e+00, double* %retval, align 8, !dbg !155
  br label %return, !dbg !155

sw.bb40:                                          ; preds = %if.else
  store double -0.000000e+00, double* %retval, align 8, !dbg !157
  br label %return, !dbg !157

sw.bb41:                                          ; preds = %if.else
  store double 0x400921FB54442D18, double* %retval, align 8, !dbg !158
  br label %return, !dbg !158

sw.bb42:                                          ; preds = %if.else
  store double 0xC00921FB54442D18, double* %retval, align 8, !dbg !159
  br label %return, !dbg !159

sw.epilog43:                                      ; preds = %if.else
  br label %if.end44

if.end44:                                         ; preds = %sw.epilog43, %sw.epilog38
  br label %if.end45, !dbg !160

if.end45:                                         ; preds = %if.end44, %if.end29
  %35 = load i32, i32* %iy, align 4, !dbg !161
  %cmp46 = icmp eq i32 %35, 2146435072, !dbg !163
  br i1 %cmp46, label %if.then47, label %if.end50, !dbg !164

if.then47:                                        ; preds = %if.end45
  %36 = load i32, i32* %hy, align 4, !dbg !165
  %cmp48 = icmp slt i32 %36, 0, !dbg !166
  %37 = zext i1 %cmp48 to i64, !dbg !167
  %cond49 = select i1 %cmp48, double 0xBFF921FB54442D18, double 0x3FF921FB54442D18, !dbg !167
  store double %cond49, double* %retval, align 8, !dbg !168
  br label %return, !dbg !168

if.end50:                                         ; preds = %if.end45
  %38 = load i32, i32* %iy, align 4, !dbg !169
  %39 = load i32, i32* %ix, align 4, !dbg !170
  %sub51 = sub nsw i32 %38, %39, !dbg !171
  %shr52 = ashr i32 %sub51, 20, !dbg !172
  store i32 %shr52, i32* %k, align 4, !dbg !173
  %40 = load i32, i32* %k, align 4, !dbg !174
  %cmp53 = icmp sgt i32 %40, 60, !dbg !176
  br i1 %cmp53, label %if.then54, label %if.else55, !dbg !177

if.then54:                                        ; preds = %if.end50
  store double 0x3FF921FB54442D18, double* %z, align 8, !dbg !178
  br label %if.end62, !dbg !179

if.else55:                                        ; preds = %if.end50
  %41 = load i32, i32* %hx, align 4, !dbg !180
  %cmp56 = icmp slt i32 %41, 0, !dbg !182
  br i1 %cmp56, label %land.lhs.true, label %if.else59, !dbg !183

land.lhs.true:                                    ; preds = %if.else55
  %42 = load i32, i32* %k, align 4, !dbg !184
  %cmp57 = icmp slt i32 %42, -60, !dbg !185
  br i1 %cmp57, label %if.then58, label %if.else59, !dbg !186

if.then58:                                        ; preds = %land.lhs.true
  store double 0.000000e+00, double* %z, align 8, !dbg !187
  br label %if.end61, !dbg !188

if.else59:                                        ; preds = %land.lhs.true, %if.else55
  %43 = load double, double* %y.addr, align 8, !dbg !189
  %44 = load double, double* %x.addr, align 8, !dbg !190
  %div = fdiv double %43, %44, !dbg !191
  %45 = call double @llvm.fabs.f64(double %div), !dbg !192
  %call60 = call double @atan(double %45) #4, !dbg !193
  store double %call60, double* %z, align 8, !dbg !194
  br label %if.end61

if.end61:                                         ; preds = %if.else59, %if.then58
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then54
  %46 = load i32, i32* %m, align 4, !dbg !195
  switch i32 %46, label %sw.default [
    i32 0, label %sw.bb63
    i32 1, label %sw.bb64
    i32 2, label %sw.bb65
  ], !dbg !196

sw.bb63:                                          ; preds = %if.end62
  %47 = load double, double* %z, align 8, !dbg !197
  store double %47, double* %retval, align 8, !dbg !199
  br label %return, !dbg !199

sw.bb64:                                          ; preds = %if.end62
  %48 = bitcast double* %z to i32*, !dbg !200
  %49 = load i32, i32* %48, align 8, !dbg !201
  %xor = xor i32 %49, -2147483648, !dbg !201
  store i32 %xor, i32* %48, align 8, !dbg !201
  %50 = load double, double* %z, align 8, !dbg !202
  store double %50, double* %retval, align 8, !dbg !203
  br label %return, !dbg !203

sw.bb65:                                          ; preds = %if.end62
  %51 = load double, double* %z, align 8, !dbg !204
  %sub66 = fsub double %51, 0x3CA1A62633145C07, !dbg !205
  %sub67 = fsub double 0x400921FB54442D18, %sub66, !dbg !206
  store double %sub67, double* %retval, align 8, !dbg !207
  br label %return, !dbg !207

sw.default:                                       ; preds = %if.end62
  %52 = load double, double* %z, align 8, !dbg !208
  %sub68 = fsub double %52, 0x3CA1A62633145C07, !dbg !209
  %sub69 = fsub double %sub68, 0x400921FB54442D18, !dbg !210
  store double %sub69, double* %retval, align 8, !dbg !211
  br label %return, !dbg !211

return:                                           ; preds = %sw.default, %sw.bb65, %sw.bb64, %sw.bb63, %if.then47, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %if.then27, %sw.bb23, %sw.bb22, %sw.bb, %if.then12, %if.then
  %53 = load double, double* %retval, align 8, !dbg !212
  ret double %53, !dbg !212
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local double @atan(double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !213 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !216, metadata !DIExpression()), !dbg !217
  %0 = bitcast double* %a0 to i8*, !dbg !218
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !219
  call void @llvm.dbg.declare(metadata double* %a1, metadata !220, metadata !DIExpression()), !dbg !221
  %1 = bitcast double* %a1 to i8*, !dbg !222
  call void @klee_make_symbolic(i8* %1, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !223
  call void @llvm.dbg.declare(metadata double* %r, metadata !224, metadata !DIExpression()), !dbg !225
  %2 = load double, double* %a0, align 8, !dbg !226
  %3 = load double, double* %a1, align 8, !dbg !227
  %call = call double @__ieee754_atan2(double %2, double %3), !dbg !228
  store double %call, double* %r, align 8, !dbg !225
  ret i32 0, !dbg !229
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !6, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "e_atan2.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !12, !14, !16, !18, !20}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression(DW_OP_constu, 4614256656552045848, DW_OP_stack_value))
!8 = distinct !DIGlobalVariable(name: "pi", scope: !0, file: !9, line: 53, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./e_atan2.c", directory: "/home/klee/logic_bombs/fdlibm")
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 118622047889322841, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "tiny", scope: !0, file: !9, line: 49, type: !10, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4609753056924675352, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "pi_o_2", scope: !0, file: !9, line: 52, type: !10, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4605249457297304856, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "pi_o_4", scope: !0, file: !9, line: 51, type: !10, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "zero", scope: !0, file: !9, line: 50, type: !10, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 4368955796522032135, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "pi_lo", scope: !0, file: !9, line: 54, type: !10, isLocal: true, isDefinition: true)
!22 = !{i32 7, !"Dwarf Version", i32 4}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!28 = distinct !DISubprogram(name: "__ieee754_atan2", scope: !9, file: !9, line: 57, type: !29, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!29 = !DISubroutineType(types: !30)
!30 = !{!11, !11, !11}
!31 = !DILocalVariable(name: "y", arg: 1, scope: !28, file: !9, line: 57, type: !11)
!32 = !DILocation(line: 57, column: 32, scope: !28)
!33 = !DILocalVariable(name: "x", arg: 2, scope: !28, file: !9, line: 57, type: !11)
!34 = !DILocation(line: 57, column: 42, scope: !28)
!35 = !DILocalVariable(name: "z", scope: !28, file: !9, line: 63, type: !11)
!36 = !DILocation(line: 63, column: 9, scope: !28)
!37 = !DILocalVariable(name: "k", scope: !28, file: !9, line: 64, type: !5)
!38 = !DILocation(line: 64, column: 6, scope: !28)
!39 = !DILocalVariable(name: "m", scope: !28, file: !9, line: 64, type: !5)
!40 = !DILocation(line: 64, column: 8, scope: !28)
!41 = !DILocalVariable(name: "hx", scope: !28, file: !9, line: 64, type: !5)
!42 = !DILocation(line: 64, column: 10, scope: !28)
!43 = !DILocalVariable(name: "hy", scope: !28, file: !9, line: 64, type: !5)
!44 = !DILocation(line: 64, column: 13, scope: !28)
!45 = !DILocalVariable(name: "ix", scope: !28, file: !9, line: 64, type: !5)
!46 = !DILocation(line: 64, column: 16, scope: !28)
!47 = !DILocalVariable(name: "iy", scope: !28, file: !9, line: 64, type: !5)
!48 = !DILocation(line: 64, column: 19, scope: !28)
!49 = !DILocalVariable(name: "lx", scope: !28, file: !9, line: 65, type: !50)
!50 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!51 = !DILocation(line: 65, column: 11, scope: !28)
!52 = !DILocalVariable(name: "ly", scope: !28, file: !9, line: 65, type: !50)
!53 = !DILocation(line: 65, column: 14, scope: !28)
!54 = !DILocation(line: 67, column: 7, scope: !28)
!55 = !DILocation(line: 67, column: 5, scope: !28)
!56 = !DILocation(line: 67, column: 21, scope: !28)
!57 = !DILocation(line: 67, column: 23, scope: !28)
!58 = !DILocation(line: 67, column: 19, scope: !28)
!59 = !DILocation(line: 68, column: 7, scope: !28)
!60 = !DILocation(line: 68, column: 5, scope: !28)
!61 = !DILocation(line: 69, column: 7, scope: !28)
!62 = !DILocation(line: 69, column: 5, scope: !28)
!63 = !DILocation(line: 69, column: 21, scope: !28)
!64 = !DILocation(line: 69, column: 23, scope: !28)
!65 = !DILocation(line: 69, column: 19, scope: !28)
!66 = !DILocation(line: 70, column: 7, scope: !28)
!67 = !DILocation(line: 70, column: 5, scope: !28)
!68 = !DILocation(line: 71, column: 7, scope: !69)
!69 = distinct !DILexicalBlock(scope: !28, file: !9, line: 71, column: 5)
!70 = !DILocation(line: 71, column: 12, scope: !69)
!71 = !DILocation(line: 71, column: 16, scope: !69)
!72 = !DILocation(line: 71, column: 15, scope: !69)
!73 = !DILocation(line: 71, column: 14, scope: !69)
!74 = !DILocation(line: 71, column: 19, scope: !69)
!75 = !DILocation(line: 71, column: 9, scope: !69)
!76 = !DILocation(line: 71, column: 25, scope: !69)
!77 = !DILocation(line: 71, column: 37, scope: !69)
!78 = !DILocation(line: 72, column: 7, scope: !69)
!79 = !DILocation(line: 72, column: 12, scope: !69)
!80 = !DILocation(line: 72, column: 16, scope: !69)
!81 = !DILocation(line: 72, column: 15, scope: !69)
!82 = !DILocation(line: 72, column: 14, scope: !69)
!83 = !DILocation(line: 72, column: 19, scope: !69)
!84 = !DILocation(line: 72, column: 9, scope: !69)
!85 = !DILocation(line: 72, column: 25, scope: !69)
!86 = !DILocation(line: 71, column: 5, scope: !28)
!87 = !DILocation(line: 73, column: 12, scope: !69)
!88 = !DILocation(line: 73, column: 14, scope: !69)
!89 = !DILocation(line: 73, column: 13, scope: !69)
!90 = !DILocation(line: 73, column: 5, scope: !69)
!91 = !DILocation(line: 74, column: 6, scope: !92)
!92 = distinct !DILexicalBlock(scope: !28, file: !9, line: 74, column: 5)
!93 = !DILocation(line: 74, column: 8, scope: !92)
!94 = !DILocation(line: 74, column: 20, scope: !92)
!95 = !DILocation(line: 74, column: 19, scope: !92)
!96 = !DILocation(line: 74, column: 23, scope: !92)
!97 = !DILocation(line: 74, column: 5, scope: !28)
!98 = !DILocation(line: 74, column: 40, scope: !92)
!99 = !DILocation(line: 74, column: 35, scope: !92)
!100 = !DILocation(line: 74, column: 28, scope: !92)
!101 = !DILocation(line: 75, column: 8, scope: !28)
!102 = !DILocation(line: 75, column: 10, scope: !28)
!103 = !DILocation(line: 75, column: 15, scope: !28)
!104 = !DILocation(line: 75, column: 21, scope: !28)
!105 = !DILocation(line: 75, column: 23, scope: !28)
!106 = !DILocation(line: 75, column: 28, scope: !28)
!107 = !DILocation(line: 75, column: 18, scope: !28)
!108 = !DILocation(line: 75, column: 4, scope: !28)
!109 = !DILocation(line: 78, column: 6, scope: !110)
!110 = distinct !DILexicalBlock(scope: !28, file: !9, line: 78, column: 5)
!111 = !DILocation(line: 78, column: 9, scope: !110)
!112 = !DILocation(line: 78, column: 8, scope: !110)
!113 = !DILocation(line: 78, column: 12, scope: !110)
!114 = !DILocation(line: 78, column: 5, scope: !28)
!115 = !DILocation(line: 79, column: 13, scope: !116)
!116 = distinct !DILexicalBlock(scope: !110, file: !9, line: 78, column: 17)
!117 = !DILocation(line: 79, column: 6, scope: !116)
!118 = !DILocation(line: 81, column: 18, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !9, line: 79, column: 16)
!120 = !DILocation(line: 81, column: 11, scope: !119)
!121 = !DILocation(line: 82, column: 11, scope: !119)
!122 = !DILocation(line: 83, column: 11, scope: !119)
!123 = !DILocation(line: 85, column: 2, scope: !116)
!124 = !DILocation(line: 87, column: 6, scope: !125)
!125 = distinct !DILexicalBlock(scope: !28, file: !9, line: 87, column: 5)
!126 = !DILocation(line: 87, column: 9, scope: !125)
!127 = !DILocation(line: 87, column: 8, scope: !125)
!128 = !DILocation(line: 87, column: 12, scope: !125)
!129 = !DILocation(line: 87, column: 5, scope: !28)
!130 = !DILocation(line: 87, column: 25, scope: !125)
!131 = !DILocation(line: 87, column: 27, scope: !125)
!132 = !DILocation(line: 87, column: 24, scope: !125)
!133 = !DILocation(line: 87, column: 17, scope: !125)
!134 = !DILocation(line: 90, column: 5, scope: !135)
!135 = distinct !DILexicalBlock(scope: !28, file: !9, line: 90, column: 5)
!136 = !DILocation(line: 90, column: 7, scope: !135)
!137 = !DILocation(line: 90, column: 5, scope: !28)
!138 = !DILocation(line: 91, column: 9, scope: !139)
!139 = distinct !DILexicalBlock(scope: !140, file: !9, line: 91, column: 9)
!140 = distinct !DILexicalBlock(scope: !135, file: !9, line: 90, column: 21)
!141 = !DILocation(line: 91, column: 11, scope: !139)
!142 = !DILocation(line: 91, column: 9, scope: !140)
!143 = !DILocation(line: 92, column: 10, scope: !144)
!144 = distinct !DILexicalBlock(scope: !139, file: !9, line: 91, column: 25)
!145 = !DILocation(line: 92, column: 3, scope: !144)
!146 = !DILocation(line: 93, column: 15, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !9, line: 92, column: 13)
!148 = !DILocation(line: 94, column: 15, scope: !147)
!149 = !DILocation(line: 95, column: 15, scope: !147)
!150 = !DILocation(line: 96, column: 15, scope: !147)
!151 = !DILocation(line: 98, column: 6, scope: !144)
!152 = !DILocation(line: 99, column: 10, scope: !153)
!153 = distinct !DILexicalBlock(scope: !139, file: !9, line: 98, column: 13)
!154 = !DILocation(line: 99, column: 3, scope: !153)
!155 = !DILocation(line: 100, column: 15, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !9, line: 99, column: 13)
!157 = !DILocation(line: 101, column: 15, scope: !156)
!158 = !DILocation(line: 102, column: 15, scope: !156)
!159 = !DILocation(line: 103, column: 15, scope: !156)
!160 = !DILocation(line: 106, column: 2, scope: !140)
!161 = !DILocation(line: 108, column: 5, scope: !162)
!162 = distinct !DILexicalBlock(scope: !28, file: !9, line: 108, column: 5)
!163 = !DILocation(line: 108, column: 7, scope: !162)
!164 = !DILocation(line: 108, column: 5, scope: !28)
!165 = !DILocation(line: 108, column: 29, scope: !162)
!166 = !DILocation(line: 108, column: 31, scope: !162)
!167 = !DILocation(line: 108, column: 28, scope: !162)
!168 = !DILocation(line: 108, column: 21, scope: !162)
!169 = !DILocation(line: 111, column: 7, scope: !28)
!170 = !DILocation(line: 111, column: 10, scope: !28)
!171 = !DILocation(line: 111, column: 9, scope: !28)
!172 = !DILocation(line: 111, column: 13, scope: !28)
!173 = !DILocation(line: 111, column: 4, scope: !28)
!174 = !DILocation(line: 112, column: 5, scope: !175)
!175 = distinct !DILexicalBlock(scope: !28, file: !9, line: 112, column: 5)
!176 = !DILocation(line: 112, column: 7, scope: !175)
!177 = !DILocation(line: 112, column: 5, scope: !28)
!178 = !DILocation(line: 112, column: 14, scope: !175)
!179 = !DILocation(line: 112, column: 13, scope: !175)
!180 = !DILocation(line: 113, column: 10, scope: !181)
!181 = distinct !DILexicalBlock(scope: !175, file: !9, line: 113, column: 10)
!182 = !DILocation(line: 113, column: 12, scope: !181)
!183 = !DILocation(line: 113, column: 14, scope: !181)
!184 = !DILocation(line: 113, column: 16, scope: !181)
!185 = !DILocation(line: 113, column: 17, scope: !181)
!186 = !DILocation(line: 113, column: 10, scope: !175)
!187 = !DILocation(line: 113, column: 24, scope: !181)
!188 = !DILocation(line: 113, column: 23, scope: !181)
!189 = !DILocation(line: 114, column: 19, scope: !181)
!190 = !DILocation(line: 114, column: 21, scope: !181)
!191 = !DILocation(line: 114, column: 20, scope: !181)
!192 = !DILocation(line: 114, column: 14, scope: !181)
!193 = !DILocation(line: 114, column: 9, scope: !181)
!194 = !DILocation(line: 114, column: 8, scope: !181)
!195 = !DILocation(line: 115, column: 10, scope: !28)
!196 = !DILocation(line: 115, column: 2, scope: !28)
!197 = !DILocation(line: 116, column: 27, scope: !198)
!198 = distinct !DILexicalBlock(scope: !28, file: !9, line: 115, column: 13)
!199 = !DILocation(line: 116, column: 14, scope: !198)
!200 = !DILocation(line: 117, column: 14, scope: !198)
!201 = !DILocation(line: 117, column: 22, scope: !198)
!202 = !DILocation(line: 118, column: 20, scope: !198)
!203 = !DILocation(line: 118, column: 7, scope: !198)
!204 = !DILocation(line: 119, column: 26, scope: !198)
!205 = !DILocation(line: 119, column: 27, scope: !198)
!206 = !DILocation(line: 119, column: 24, scope: !198)
!207 = !DILocation(line: 119, column: 14, scope: !198)
!208 = !DILocation(line: 121, column: 20, scope: !198)
!209 = !DILocation(line: 121, column: 21, scope: !198)
!210 = !DILocation(line: 121, column: 28, scope: !198)
!211 = !DILocation(line: 121, column: 11, scope: !198)
!212 = !DILocation(line: 123, column: 1, scope: !28)
!213 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 127, type: !214, scopeLine: 127, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!214 = !DISubroutineType(types: !215)
!215 = !{!5}
!216 = !DILocalVariable(name: "a0", scope: !213, file: !9, line: 128, type: !11)
!217 = !DILocation(line: 128, column: 12, scope: !213)
!218 = !DILocation(line: 129, column: 24, scope: !213)
!219 = !DILocation(line: 129, column: 5, scope: !213)
!220 = !DILocalVariable(name: "a1", scope: !213, file: !9, line: 130, type: !11)
!221 = !DILocation(line: 130, column: 12, scope: !213)
!222 = !DILocation(line: 131, column: 24, scope: !213)
!223 = !DILocation(line: 131, column: 5, scope: !213)
!224 = !DILocalVariable(name: "r", scope: !213, file: !9, line: 133, type: !11)
!225 = !DILocation(line: 133, column: 12, scope: !213)
!226 = !DILocation(line: 133, column: 32, scope: !213)
!227 = !DILocation(line: 133, column: 36, scope: !213)
!228 = !DILocation(line: 133, column: 16, scope: !213)
!229 = !DILocation(line: 134, column: 5, scope: !213)
