; ModuleID = 'e_asin.bc'
source_filename = "./e_asin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_asin(double %x) #0 !dbg !46 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %t = alloca double, align 8
  %w = alloca double, align 8
  %p = alloca double, align 8
  %q = alloca double, align 8
  %c = alloca double, align 8
  %r = alloca double, align 8
  %s = alloca double, align 8
  %hx = alloca i32, align 4
  %ix = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata double* %t, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata double* %w, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata double* %p, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata double* %q, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata double* %c, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata double* %r, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata double* %s, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !67, metadata !DIExpression()), !dbg !68
  %0 = bitcast double* %x.addr to i32*, !dbg !69
  %1 = load i32, i32* %0, align 8, !dbg !69
  store i32 %1, i32* %hx, align 4, !dbg !70
  %2 = load i32, i32* %hx, align 4, !dbg !71
  %and = and i32 %2, 2147483647, !dbg !72
  store i32 %and, i32* %ix, align 4, !dbg !73
  %3 = load i32, i32* %ix, align 4, !dbg !74
  %cmp = icmp sge i32 %3, 1072693248, !dbg !76
  br i1 %cmp, label %if.then, label %if.else, !dbg !77

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ix, align 4, !dbg !78
  %sub = sub nsw i32 %4, 1072693248, !dbg !81
  %5 = bitcast double* %x.addr to i32*, !dbg !82
  %add.ptr = getelementptr inbounds i32, i32* %5, i64 1, !dbg !82
  %6 = load i32, i32* %add.ptr, align 4, !dbg !82
  %or = or i32 %sub, %6, !dbg !83
  %cmp1 = icmp eq i32 %or, 0, !dbg !84
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !85

if.then2:                                         ; preds = %if.then
  %7 = load double, double* %x.addr, align 8, !dbg !86
  %mul = fmul double %7, 0x3FF921FB54442D18, !dbg !87
  %8 = load double, double* %x.addr, align 8, !dbg !88
  %mul3 = fmul double %8, 0x3C91A62633145C07, !dbg !89
  %add = fadd double %mul, %mul3, !dbg !90
  store double %add, double* %retval, align 8, !dbg !91
  br label %return, !dbg !91

if.end:                                           ; preds = %if.then
  %9 = load double, double* %x.addr, align 8, !dbg !92
  %10 = load double, double* %x.addr, align 8, !dbg !93
  %sub4 = fsub double %9, %10, !dbg !94
  %11 = load double, double* %x.addr, align 8, !dbg !95
  %12 = load double, double* %x.addr, align 8, !dbg !96
  %sub5 = fsub double %11, %12, !dbg !97
  %div = fdiv double %sub4, %sub5, !dbg !98
  store double %div, double* %retval, align 8, !dbg !99
  br label %return, !dbg !99

if.else:                                          ; preds = %entry
  %13 = load i32, i32* %ix, align 4, !dbg !100
  %cmp6 = icmp slt i32 %13, 1071644672, !dbg !102
  br i1 %cmp6, label %if.then7, label %if.end39, !dbg !103

if.then7:                                         ; preds = %if.else
  %14 = load i32, i32* %ix, align 4, !dbg !104
  %cmp8 = icmp slt i32 %14, 1044381696, !dbg !107
  br i1 %cmp8, label %if.then9, label %if.else14, !dbg !108

if.then9:                                         ; preds = %if.then7
  %15 = load double, double* %x.addr, align 8, !dbg !109
  %add10 = fadd double 1.000000e+300, %15, !dbg !112
  %cmp11 = fcmp ogt double %add10, 1.000000e+00, !dbg !113
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !114

if.then12:                                        ; preds = %if.then9
  %16 = load double, double* %x.addr, align 8, !dbg !115
  store double %16, double* %retval, align 8, !dbg !116
  br label %return, !dbg !116

if.end13:                                         ; preds = %if.then9
  br label %if.end16, !dbg !117

if.else14:                                        ; preds = %if.then7
  %17 = load double, double* %x.addr, align 8, !dbg !118
  %18 = load double, double* %x.addr, align 8, !dbg !119
  %mul15 = fmul double %17, %18, !dbg !120
  store double %mul15, double* %t, align 8, !dbg !121
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.end13
  %19 = load double, double* %t, align 8, !dbg !122
  %20 = load double, double* %t, align 8, !dbg !123
  %21 = load double, double* %t, align 8, !dbg !124
  %22 = load double, double* %t, align 8, !dbg !125
  %23 = load double, double* %t, align 8, !dbg !126
  %24 = load double, double* %t, align 8, !dbg !127
  %mul17 = fmul double %24, 0x3F023DE10DFDF709, !dbg !128
  %add18 = fadd double 0x3F49EFE07501B288, %mul17, !dbg !129
  %mul19 = fmul double %23, %add18, !dbg !130
  %add20 = fadd double 0xBFA48228B5688F3B, %mul19, !dbg !131
  %mul21 = fmul double %22, %add20, !dbg !132
  %add22 = fadd double 0x3FC9C1550E884455, %mul21, !dbg !133
  %mul23 = fmul double %21, %add22, !dbg !134
  %add24 = fadd double 0xBFD4D61203EB6F7D, %mul23, !dbg !135
  %mul25 = fmul double %20, %add24, !dbg !136
  %add26 = fadd double 0x3FC5555555555555, %mul25, !dbg !137
  %mul27 = fmul double %19, %add26, !dbg !138
  store double %mul27, double* %p, align 8, !dbg !139
  %25 = load double, double* %t, align 8, !dbg !140
  %26 = load double, double* %t, align 8, !dbg !141
  %27 = load double, double* %t, align 8, !dbg !142
  %28 = load double, double* %t, align 8, !dbg !143
  %mul28 = fmul double %28, 0x3FB3B8C5B12E9282, !dbg !144
  %add29 = fadd double 0xBFE6066C1B8D0159, %mul28, !dbg !145
  %mul30 = fmul double %27, %add29, !dbg !146
  %add31 = fadd double 0x40002AE59C598AC8, %mul30, !dbg !147
  %mul32 = fmul double %26, %add31, !dbg !148
  %add33 = fadd double 0xC0033A271C8A2D4B, %mul32, !dbg !149
  %mul34 = fmul double %25, %add33, !dbg !150
  %add35 = fadd double 1.000000e+00, %mul34, !dbg !151
  store double %add35, double* %q, align 8, !dbg !152
  %29 = load double, double* %p, align 8, !dbg !153
  %30 = load double, double* %q, align 8, !dbg !154
  %div36 = fdiv double %29, %30, !dbg !155
  store double %div36, double* %w, align 8, !dbg !156
  %31 = load double, double* %x.addr, align 8, !dbg !157
  %32 = load double, double* %x.addr, align 8, !dbg !158
  %33 = load double, double* %w, align 8, !dbg !159
  %mul37 = fmul double %32, %33, !dbg !160
  %add38 = fadd double %31, %mul37, !dbg !161
  store double %add38, double* %retval, align 8, !dbg !162
  br label %return, !dbg !162

if.end39:                                         ; preds = %if.else
  br label %if.end40

if.end40:                                         ; preds = %if.end39
  %34 = load double, double* %x.addr, align 8, !dbg !163
  %35 = call double @llvm.fabs.f64(double %34), !dbg !164
  %sub41 = fsub double 1.000000e+00, %35, !dbg !165
  store double %sub41, double* %w, align 8, !dbg !166
  %36 = load double, double* %w, align 8, !dbg !167
  %mul42 = fmul double %36, 5.000000e-01, !dbg !168
  store double %mul42, double* %t, align 8, !dbg !169
  %37 = load double, double* %t, align 8, !dbg !170
  %38 = load double, double* %t, align 8, !dbg !171
  %39 = load double, double* %t, align 8, !dbg !172
  %40 = load double, double* %t, align 8, !dbg !173
  %41 = load double, double* %t, align 8, !dbg !174
  %42 = load double, double* %t, align 8, !dbg !175
  %mul43 = fmul double %42, 0x3F023DE10DFDF709, !dbg !176
  %add44 = fadd double 0x3F49EFE07501B288, %mul43, !dbg !177
  %mul45 = fmul double %41, %add44, !dbg !178
  %add46 = fadd double 0xBFA48228B5688F3B, %mul45, !dbg !179
  %mul47 = fmul double %40, %add46, !dbg !180
  %add48 = fadd double 0x3FC9C1550E884455, %mul47, !dbg !181
  %mul49 = fmul double %39, %add48, !dbg !182
  %add50 = fadd double 0xBFD4D61203EB6F7D, %mul49, !dbg !183
  %mul51 = fmul double %38, %add50, !dbg !184
  %add52 = fadd double 0x3FC5555555555555, %mul51, !dbg !185
  %mul53 = fmul double %37, %add52, !dbg !186
  store double %mul53, double* %p, align 8, !dbg !187
  %43 = load double, double* %t, align 8, !dbg !188
  %44 = load double, double* %t, align 8, !dbg !189
  %45 = load double, double* %t, align 8, !dbg !190
  %46 = load double, double* %t, align 8, !dbg !191
  %mul54 = fmul double %46, 0x3FB3B8C5B12E9282, !dbg !192
  %add55 = fadd double 0xBFE6066C1B8D0159, %mul54, !dbg !193
  %mul56 = fmul double %45, %add55, !dbg !194
  %add57 = fadd double 0x40002AE59C598AC8, %mul56, !dbg !195
  %mul58 = fmul double %44, %add57, !dbg !196
  %add59 = fadd double 0xC0033A271C8A2D4B, %mul58, !dbg !197
  %mul60 = fmul double %43, %add59, !dbg !198
  %add61 = fadd double 1.000000e+00, %mul60, !dbg !199
  store double %add61, double* %q, align 8, !dbg !200
  %47 = load double, double* %t, align 8, !dbg !201
  %call = call double @sqrt(double %47) #4, !dbg !202
  store double %call, double* %s, align 8, !dbg !203
  %48 = load i32, i32* %ix, align 4, !dbg !204
  %cmp62 = icmp sge i32 %48, 1072640819, !dbg !206
  br i1 %cmp62, label %if.then63, label %if.else70, !dbg !207

if.then63:                                        ; preds = %if.end40
  %49 = load double, double* %p, align 8, !dbg !208
  %50 = load double, double* %q, align 8, !dbg !210
  %div64 = fdiv double %49, %50, !dbg !211
  store double %div64, double* %w, align 8, !dbg !212
  %51 = load double, double* %s, align 8, !dbg !213
  %52 = load double, double* %s, align 8, !dbg !214
  %53 = load double, double* %w, align 8, !dbg !215
  %mul65 = fmul double %52, %53, !dbg !216
  %add66 = fadd double %51, %mul65, !dbg !217
  %mul67 = fmul double 2.000000e+00, %add66, !dbg !218
  %sub68 = fsub double %mul67, 0x3C91A62633145C07, !dbg !219
  %sub69 = fsub double 0x3FF921FB54442D18, %sub68, !dbg !220
  store double %sub69, double* %t, align 8, !dbg !221
  br label %if.end86, !dbg !222

if.else70:                                        ; preds = %if.end40
  %54 = load double, double* %s, align 8, !dbg !223
  store double %54, double* %w, align 8, !dbg !225
  %55 = bitcast double* %w to i32*, !dbg !226
  %add.ptr71 = getelementptr inbounds i32, i32* %55, i64 1, !dbg !226
  store i32 0, i32* %add.ptr71, align 4, !dbg !227
  %56 = load double, double* %t, align 8, !dbg !228
  %57 = load double, double* %w, align 8, !dbg !229
  %58 = load double, double* %w, align 8, !dbg !230
  %mul72 = fmul double %57, %58, !dbg !231
  %sub73 = fsub double %56, %mul72, !dbg !232
  %59 = load double, double* %s, align 8, !dbg !233
  %60 = load double, double* %w, align 8, !dbg !234
  %add74 = fadd double %59, %60, !dbg !235
  %div75 = fdiv double %sub73, %add74, !dbg !236
  store double %div75, double* %c, align 8, !dbg !237
  %61 = load double, double* %p, align 8, !dbg !238
  %62 = load double, double* %q, align 8, !dbg !239
  %div76 = fdiv double %61, %62, !dbg !240
  store double %div76, double* %r, align 8, !dbg !241
  %63 = load double, double* %s, align 8, !dbg !242
  %mul77 = fmul double 2.000000e+00, %63, !dbg !243
  %64 = load double, double* %r, align 8, !dbg !244
  %mul78 = fmul double %mul77, %64, !dbg !245
  %65 = load double, double* %c, align 8, !dbg !246
  %mul79 = fmul double 2.000000e+00, %65, !dbg !247
  %sub80 = fsub double 0x3C91A62633145C07, %mul79, !dbg !248
  %sub81 = fsub double %mul78, %sub80, !dbg !249
  store double %sub81, double* %p, align 8, !dbg !250
  %66 = load double, double* %w, align 8, !dbg !251
  %mul82 = fmul double 2.000000e+00, %66, !dbg !252
  %sub83 = fsub double 0x3FE921FB54442D18, %mul82, !dbg !253
  store double %sub83, double* %q, align 8, !dbg !254
  %67 = load double, double* %p, align 8, !dbg !255
  %68 = load double, double* %q, align 8, !dbg !256
  %sub84 = fsub double %67, %68, !dbg !257
  %sub85 = fsub double 0x3FE921FB54442D18, %sub84, !dbg !258
  store double %sub85, double* %t, align 8, !dbg !259
  br label %if.end86

if.end86:                                         ; preds = %if.else70, %if.then63
  %69 = load i32, i32* %hx, align 4, !dbg !260
  %cmp87 = icmp sgt i32 %69, 0, !dbg !262
  br i1 %cmp87, label %if.then88, label %if.else89, !dbg !263

if.then88:                                        ; preds = %if.end86
  %70 = load double, double* %t, align 8, !dbg !264
  store double %70, double* %retval, align 8, !dbg !265
  br label %return, !dbg !265

if.else89:                                        ; preds = %if.end86
  %71 = load double, double* %t, align 8, !dbg !266
  %fneg = fneg double %71, !dbg !267
  store double %fneg, double* %retval, align 8, !dbg !268
  br label %return, !dbg !268

return:                                           ; preds = %if.else89, %if.then88, %if.end16, %if.then12, %if.end, %if.then2
  %72 = load double, double* %retval, align 8, !dbg !269
  ret double %72, !dbg !269
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !270 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !273, metadata !DIExpression()), !dbg !274
  %0 = bitcast double* %a0 to i8*, !dbg !275
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !276
  call void @llvm.dbg.declare(metadata double* %r, metadata !277, metadata !DIExpression()), !dbg !278
  %1 = load double, double* %a0, align 8, !dbg !279
  %call = call double @__ieee754_asin(double %1), !dbg !280
  store double %call, double* %r, align 8, !dbg !278
  ret i32 0, !dbg !281
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !6, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "e_asin.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression(DW_OP_constu, 4609753056924675352, DW_OP_stack_value))
!8 = distinct !DIGlobalVariable(name: "pio2_hi", scope: !0, file: !9, line: 54, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./e_asin.c", directory: "/home/klee/logic_bombs/fdlibm")
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 4364452196894661639, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "pio2_lo", scope: !0, file: !9, line: 55, type: !10, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "huge", scope: !0, file: !9, line: 53, type: !10, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !9, line: 52, type: !10, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 4595172819793696085, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "pS0", scope: !0, file: !9, line: 58, type: !10, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 13822908529170411389, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "pS1", scope: !0, file: !9, line: 59, type: !10, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 4596417465768494165, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "pS2", scope: !0, file: !9, line: 60, type: !10, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression(DW_OP_constu, 13809305468778614587, DW_OP_stack_value))
!25 = distinct !DIGlobalVariable(name: "pS3", scope: !0, file: !9, line: 61, type: !10, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression(DW_OP_constu, 4560439845004096136, DW_OP_stack_value))
!27 = distinct !DIGlobalVariable(name: "pS4", scope: !0, file: !9, line: 62, type: !10, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression(DW_OP_constu, 4540259411154564873, DW_OP_stack_value))
!29 = distinct !DIGlobalVariable(name: "pS5", scope: !0, file: !9, line: 63, type: !10, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression(DW_OP_constu, 13835966419869248843, DW_OP_stack_value))
!31 = distinct !DIGlobalVariable(name: "qS1", scope: !0, file: !9, line: 64, type: !10, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression(DW_OP_constu, 4611733184086379208, DW_OP_stack_value))
!33 = distinct !DIGlobalVariable(name: "qS2", scope: !0, file: !9, line: 65, type: !10, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression(DW_OP_constu, 13827746767276147033, DW_OP_stack_value))
!35 = distinct !DIGlobalVariable(name: "qS3", scope: !0, file: !9, line: 66, type: !10, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression(DW_OP_constu, 4590215604441354882, DW_OP_stack_value))
!37 = distinct !DIGlobalVariable(name: "qS4", scope: !0, file: !9, line: 67, type: !10, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression(DW_OP_constu, 4605249457297304856, DW_OP_stack_value))
!39 = distinct !DIGlobalVariable(name: "pio4_hi", scope: !0, file: !9, line: 56, type: !10, isLocal: true, isDefinition: true)
!40 = !{i32 7, !"Dwarf Version", i32 4}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{i32 1, !"wchar_size", i32 4}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!46 = distinct !DISubprogram(name: "__ieee754_asin", scope: !9, file: !9, line: 70, type: !47, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!47 = !DISubroutineType(types: !48)
!48 = !{!11, !11}
!49 = !DILocalVariable(name: "x", arg: 1, scope: !46, file: !9, line: 70, type: !11)
!50 = !DILocation(line: 70, column: 31, scope: !46)
!51 = !DILocalVariable(name: "t", scope: !46, file: !9, line: 76, type: !11)
!52 = !DILocation(line: 76, column: 9, scope: !46)
!53 = !DILocalVariable(name: "w", scope: !46, file: !9, line: 76, type: !11)
!54 = !DILocation(line: 76, column: 11, scope: !46)
!55 = !DILocalVariable(name: "p", scope: !46, file: !9, line: 76, type: !11)
!56 = !DILocation(line: 76, column: 13, scope: !46)
!57 = !DILocalVariable(name: "q", scope: !46, file: !9, line: 76, type: !11)
!58 = !DILocation(line: 76, column: 15, scope: !46)
!59 = !DILocalVariable(name: "c", scope: !46, file: !9, line: 76, type: !11)
!60 = !DILocation(line: 76, column: 17, scope: !46)
!61 = !DILocalVariable(name: "r", scope: !46, file: !9, line: 76, type: !11)
!62 = !DILocation(line: 76, column: 19, scope: !46)
!63 = !DILocalVariable(name: "s", scope: !46, file: !9, line: 76, type: !11)
!64 = !DILocation(line: 76, column: 21, scope: !46)
!65 = !DILocalVariable(name: "hx", scope: !46, file: !9, line: 77, type: !5)
!66 = !DILocation(line: 77, column: 6, scope: !46)
!67 = !DILocalVariable(name: "ix", scope: !46, file: !9, line: 77, type: !5)
!68 = !DILocation(line: 77, column: 9, scope: !46)
!69 = !DILocation(line: 78, column: 7, scope: !46)
!70 = !DILocation(line: 78, column: 5, scope: !46)
!71 = !DILocation(line: 79, column: 7, scope: !46)
!72 = !DILocation(line: 79, column: 9, scope: !46)
!73 = !DILocation(line: 79, column: 5, scope: !46)
!74 = !DILocation(line: 80, column: 5, scope: !75)
!75 = distinct !DILexicalBlock(scope: !46, file: !9, line: 80, column: 5)
!76 = !DILocation(line: 80, column: 7, scope: !75)
!77 = !DILocation(line: 80, column: 5, scope: !46)
!78 = !DILocation(line: 81, column: 11, scope: !79)
!79 = distinct !DILexicalBlock(scope: !80, file: !9, line: 81, column: 9)
!80 = distinct !DILexicalBlock(scope: !75, file: !9, line: 80, column: 22)
!81 = !DILocation(line: 81, column: 13, scope: !79)
!82 = !DILocation(line: 81, column: 26, scope: !79)
!83 = !DILocation(line: 81, column: 25, scope: !79)
!84 = !DILocation(line: 81, column: 34, scope: !79)
!85 = !DILocation(line: 81, column: 9, scope: !80)
!86 = !DILocation(line: 83, column: 10, scope: !79)
!87 = !DILocation(line: 83, column: 11, scope: !79)
!88 = !DILocation(line: 83, column: 20, scope: !79)
!89 = !DILocation(line: 83, column: 21, scope: !79)
!90 = !DILocation(line: 83, column: 19, scope: !79)
!91 = !DILocation(line: 83, column: 3, scope: !79)
!92 = !DILocation(line: 84, column: 14, scope: !80)
!93 = !DILocation(line: 84, column: 16, scope: !80)
!94 = !DILocation(line: 84, column: 15, scope: !80)
!95 = !DILocation(line: 84, column: 20, scope: !80)
!96 = !DILocation(line: 84, column: 22, scope: !80)
!97 = !DILocation(line: 84, column: 21, scope: !80)
!98 = !DILocation(line: 84, column: 18, scope: !80)
!99 = !DILocation(line: 84, column: 6, scope: !80)
!100 = !DILocation(line: 85, column: 13, scope: !101)
!101 = distinct !DILexicalBlock(scope: !75, file: !9, line: 85, column: 13)
!102 = !DILocation(line: 85, column: 15, scope: !101)
!103 = !DILocation(line: 85, column: 13, scope: !75)
!104 = !DILocation(line: 86, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !9, line: 86, column: 9)
!106 = distinct !DILexicalBlock(scope: !101, file: !9, line: 85, column: 28)
!107 = !DILocation(line: 86, column: 11, scope: !105)
!108 = !DILocation(line: 86, column: 9, scope: !106)
!109 = !DILocation(line: 87, column: 11, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !9, line: 87, column: 6)
!111 = distinct !DILexicalBlock(scope: !105, file: !9, line: 86, column: 24)
!112 = !DILocation(line: 87, column: 10, scope: !110)
!113 = !DILocation(line: 87, column: 12, scope: !110)
!114 = !DILocation(line: 87, column: 6, scope: !111)
!115 = !DILocation(line: 87, column: 25, scope: !110)
!116 = !DILocation(line: 87, column: 18, scope: !110)
!117 = !DILocation(line: 88, column: 6, scope: !111)
!118 = !DILocation(line: 89, column: 7, scope: !105)
!119 = !DILocation(line: 89, column: 9, scope: !105)
!120 = !DILocation(line: 89, column: 8, scope: !105)
!121 = !DILocation(line: 89, column: 5, scope: !105)
!122 = !DILocation(line: 90, column: 7, scope: !106)
!123 = !DILocation(line: 90, column: 14, scope: !106)
!124 = !DILocation(line: 90, column: 21, scope: !106)
!125 = !DILocation(line: 90, column: 28, scope: !106)
!126 = !DILocation(line: 90, column: 35, scope: !106)
!127 = !DILocation(line: 90, column: 42, scope: !106)
!128 = !DILocation(line: 90, column: 43, scope: !106)
!129 = !DILocation(line: 90, column: 41, scope: !106)
!130 = !DILocation(line: 90, column: 36, scope: !106)
!131 = !DILocation(line: 90, column: 34, scope: !106)
!132 = !DILocation(line: 90, column: 29, scope: !106)
!133 = !DILocation(line: 90, column: 27, scope: !106)
!134 = !DILocation(line: 90, column: 22, scope: !106)
!135 = !DILocation(line: 90, column: 20, scope: !106)
!136 = !DILocation(line: 90, column: 15, scope: !106)
!137 = !DILocation(line: 90, column: 13, scope: !106)
!138 = !DILocation(line: 90, column: 8, scope: !106)
!139 = !DILocation(line: 90, column: 5, scope: !106)
!140 = !DILocation(line: 91, column: 11, scope: !106)
!141 = !DILocation(line: 91, column: 18, scope: !106)
!142 = !DILocation(line: 91, column: 25, scope: !106)
!143 = !DILocation(line: 91, column: 32, scope: !106)
!144 = !DILocation(line: 91, column: 33, scope: !106)
!145 = !DILocation(line: 91, column: 31, scope: !106)
!146 = !DILocation(line: 91, column: 26, scope: !106)
!147 = !DILocation(line: 91, column: 24, scope: !106)
!148 = !DILocation(line: 91, column: 19, scope: !106)
!149 = !DILocation(line: 91, column: 17, scope: !106)
!150 = !DILocation(line: 91, column: 12, scope: !106)
!151 = !DILocation(line: 91, column: 10, scope: !106)
!152 = !DILocation(line: 91, column: 5, scope: !106)
!153 = !DILocation(line: 92, column: 7, scope: !106)
!154 = !DILocation(line: 92, column: 9, scope: !106)
!155 = !DILocation(line: 92, column: 8, scope: !106)
!156 = !DILocation(line: 92, column: 5, scope: !106)
!157 = !DILocation(line: 93, column: 10, scope: !106)
!158 = !DILocation(line: 93, column: 12, scope: !106)
!159 = !DILocation(line: 93, column: 14, scope: !106)
!160 = !DILocation(line: 93, column: 13, scope: !106)
!161 = !DILocation(line: 93, column: 11, scope: !106)
!162 = !DILocation(line: 93, column: 3, scope: !106)
!163 = !DILocation(line: 96, column: 15, scope: !46)
!164 = !DILocation(line: 96, column: 10, scope: !46)
!165 = !DILocation(line: 96, column: 9, scope: !46)
!166 = !DILocation(line: 96, column: 4, scope: !46)
!167 = !DILocation(line: 97, column: 6, scope: !46)
!168 = !DILocation(line: 97, column: 7, scope: !46)
!169 = !DILocation(line: 97, column: 4, scope: !46)
!170 = !DILocation(line: 98, column: 6, scope: !46)
!171 = !DILocation(line: 98, column: 13, scope: !46)
!172 = !DILocation(line: 98, column: 20, scope: !46)
!173 = !DILocation(line: 98, column: 27, scope: !46)
!174 = !DILocation(line: 98, column: 34, scope: !46)
!175 = !DILocation(line: 98, column: 41, scope: !46)
!176 = !DILocation(line: 98, column: 42, scope: !46)
!177 = !DILocation(line: 98, column: 40, scope: !46)
!178 = !DILocation(line: 98, column: 35, scope: !46)
!179 = !DILocation(line: 98, column: 33, scope: !46)
!180 = !DILocation(line: 98, column: 28, scope: !46)
!181 = !DILocation(line: 98, column: 26, scope: !46)
!182 = !DILocation(line: 98, column: 21, scope: !46)
!183 = !DILocation(line: 98, column: 19, scope: !46)
!184 = !DILocation(line: 98, column: 14, scope: !46)
!185 = !DILocation(line: 98, column: 12, scope: !46)
!186 = !DILocation(line: 98, column: 7, scope: !46)
!187 = !DILocation(line: 98, column: 4, scope: !46)
!188 = !DILocation(line: 99, column: 10, scope: !46)
!189 = !DILocation(line: 99, column: 17, scope: !46)
!190 = !DILocation(line: 99, column: 24, scope: !46)
!191 = !DILocation(line: 99, column: 31, scope: !46)
!192 = !DILocation(line: 99, column: 32, scope: !46)
!193 = !DILocation(line: 99, column: 30, scope: !46)
!194 = !DILocation(line: 99, column: 25, scope: !46)
!195 = !DILocation(line: 99, column: 23, scope: !46)
!196 = !DILocation(line: 99, column: 18, scope: !46)
!197 = !DILocation(line: 99, column: 16, scope: !46)
!198 = !DILocation(line: 99, column: 11, scope: !46)
!199 = !DILocation(line: 99, column: 9, scope: !46)
!200 = !DILocation(line: 99, column: 4, scope: !46)
!201 = !DILocation(line: 100, column: 11, scope: !46)
!202 = !DILocation(line: 100, column: 6, scope: !46)
!203 = !DILocation(line: 100, column: 4, scope: !46)
!204 = !DILocation(line: 101, column: 5, scope: !205)
!205 = distinct !DILexicalBlock(scope: !46, file: !9, line: 101, column: 5)
!206 = !DILocation(line: 101, column: 7, scope: !205)
!207 = !DILocation(line: 101, column: 5, scope: !46)
!208 = !DILocation(line: 102, column: 10, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !9, line: 101, column: 21)
!210 = !DILocation(line: 102, column: 12, scope: !209)
!211 = !DILocation(line: 102, column: 11, scope: !209)
!212 = !DILocation(line: 102, column: 8, scope: !209)
!213 = !DILocation(line: 103, column: 24, scope: !209)
!214 = !DILocation(line: 103, column: 26, scope: !209)
!215 = !DILocation(line: 103, column: 28, scope: !209)
!216 = !DILocation(line: 103, column: 27, scope: !209)
!217 = !DILocation(line: 103, column: 25, scope: !209)
!218 = !DILocation(line: 103, column: 22, scope: !209)
!219 = !DILocation(line: 103, column: 30, scope: !209)
!220 = !DILocation(line: 103, column: 17, scope: !209)
!221 = !DILocation(line: 103, column: 8, scope: !209)
!222 = !DILocation(line: 104, column: 2, scope: !209)
!223 = !DILocation(line: 105, column: 11, scope: !224)
!224 = distinct !DILexicalBlock(scope: !205, file: !9, line: 104, column: 9)
!225 = !DILocation(line: 105, column: 9, scope: !224)
!226 = !DILocation(line: 106, column: 6, scope: !224)
!227 = !DILocation(line: 106, column: 14, scope: !224)
!228 = !DILocation(line: 107, column: 12, scope: !224)
!229 = !DILocation(line: 107, column: 14, scope: !224)
!230 = !DILocation(line: 107, column: 16, scope: !224)
!231 = !DILocation(line: 107, column: 15, scope: !224)
!232 = !DILocation(line: 107, column: 13, scope: !224)
!233 = !DILocation(line: 107, column: 20, scope: !224)
!234 = !DILocation(line: 107, column: 22, scope: !224)
!235 = !DILocation(line: 107, column: 21, scope: !224)
!236 = !DILocation(line: 107, column: 18, scope: !224)
!237 = !DILocation(line: 107, column: 9, scope: !224)
!238 = !DILocation(line: 108, column: 11, scope: !224)
!239 = !DILocation(line: 108, column: 13, scope: !224)
!240 = !DILocation(line: 108, column: 12, scope: !224)
!241 = !DILocation(line: 108, column: 9, scope: !224)
!242 = !DILocation(line: 109, column: 15, scope: !224)
!243 = !DILocation(line: 109, column: 14, scope: !224)
!244 = !DILocation(line: 109, column: 17, scope: !224)
!245 = !DILocation(line: 109, column: 16, scope: !224)
!246 = !DILocation(line: 109, column: 32, scope: !224)
!247 = !DILocation(line: 109, column: 31, scope: !224)
!248 = !DILocation(line: 109, column: 27, scope: !224)
!249 = !DILocation(line: 109, column: 18, scope: !224)
!250 = !DILocation(line: 109, column: 9, scope: !224)
!251 = !DILocation(line: 110, column: 23, scope: !224)
!252 = !DILocation(line: 110, column: 22, scope: !224)
!253 = !DILocation(line: 110, column: 18, scope: !224)
!254 = !DILocation(line: 110, column: 9, scope: !224)
!255 = !DILocation(line: 111, column: 20, scope: !224)
!256 = !DILocation(line: 111, column: 22, scope: !224)
!257 = !DILocation(line: 111, column: 21, scope: !224)
!258 = !DILocation(line: 111, column: 18, scope: !224)
!259 = !DILocation(line: 111, column: 9, scope: !224)
!260 = !DILocation(line: 113, column: 5, scope: !261)
!261 = distinct !DILexicalBlock(scope: !46, file: !9, line: 113, column: 5)
!262 = !DILocation(line: 113, column: 7, scope: !261)
!263 = !DILocation(line: 113, column: 5, scope: !46)
!264 = !DILocation(line: 113, column: 18, scope: !261)
!265 = !DILocation(line: 113, column: 11, scope: !261)
!266 = !DILocation(line: 113, column: 34, scope: !261)
!267 = !DILocation(line: 113, column: 33, scope: !261)
!268 = !DILocation(line: 113, column: 26, scope: !261)
!269 = !DILocation(line: 114, column: 1, scope: !46)
!270 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 118, type: !271, scopeLine: 118, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!271 = !DISubroutineType(types: !272)
!272 = !{!5}
!273 = !DILocalVariable(name: "a0", scope: !270, file: !9, line: 119, type: !11)
!274 = !DILocation(line: 119, column: 12, scope: !270)
!275 = !DILocation(line: 120, column: 24, scope: !270)
!276 = !DILocation(line: 120, column: 5, scope: !270)
!277 = !DILocalVariable(name: "r", scope: !270, file: !9, line: 122, type: !11)
!278 = !DILocation(line: 122, column: 12, scope: !270)
!279 = !DILocation(line: 122, column: 31, scope: !270)
!280 = !DILocation(line: 122, column: 16, scope: !270)
!281 = !DILocation(line: 123, column: 5, scope: !270)
