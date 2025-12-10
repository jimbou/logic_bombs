; ModuleID = 'e_acos.bc'
source_filename = "./e_acos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_acos(double %x) #0 !dbg !44 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %z = alloca double, align 8
  %p = alloca double, align 8
  %q = alloca double, align 8
  %r = alloca double, align 8
  %w = alloca double, align 8
  %s = alloca double, align 8
  %c = alloca double, align 8
  %df = alloca double, align 8
  %hx = alloca i32, align 4
  %ix = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata double* %z, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata double* %p, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata double* %q, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata double* %r, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata double* %w, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata double* %s, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata double* %c, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata double* %df, metadata !63, metadata !DIExpression()), !dbg !64
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
  br i1 %cmp, label %if.then, label %if.end7, !dbg !77

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
  %7 = load i32, i32* %hx, align 4, !dbg !86
  %cmp3 = icmp sgt i32 %7, 0, !dbg !89
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !90

if.then4:                                         ; preds = %if.then2
  store double 0.000000e+00, double* %retval, align 8, !dbg !91
  br label %return, !dbg !91

if.else:                                          ; preds = %if.then2
  store double 0x400921FB54442D18, double* %retval, align 8, !dbg !92
  br label %return, !dbg !92

if.end:                                           ; preds = %if.then
  %8 = load double, double* %x.addr, align 8, !dbg !93
  %9 = load double, double* %x.addr, align 8, !dbg !94
  %sub5 = fsub double %8, %9, !dbg !95
  %10 = load double, double* %x.addr, align 8, !dbg !96
  %11 = load double, double* %x.addr, align 8, !dbg !97
  %sub6 = fsub double %10, %11, !dbg !98
  %div = fdiv double %sub5, %sub6, !dbg !99
  store double %div, double* %retval, align 8, !dbg !100
  br label %return, !dbg !100

if.end7:                                          ; preds = %entry
  %12 = load i32, i32* %ix, align 4, !dbg !101
  %cmp8 = icmp slt i32 %12, 1071644672, !dbg !103
  br i1 %cmp8, label %if.then9, label %if.else36, !dbg !104

if.then9:                                         ; preds = %if.end7
  %13 = load i32, i32* %ix, align 4, !dbg !105
  %cmp10 = icmp sle i32 %13, 1012924416, !dbg !108
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !109

if.then11:                                        ; preds = %if.then9
  store double 0x3FF921FB54442D18, double* %retval, align 8, !dbg !110
  br label %return, !dbg !110

if.end12:                                         ; preds = %if.then9
  %14 = load double, double* %x.addr, align 8, !dbg !111
  %15 = load double, double* %x.addr, align 8, !dbg !112
  %mul = fmul double %14, %15, !dbg !113
  store double %mul, double* %z, align 8, !dbg !114
  %16 = load double, double* %z, align 8, !dbg !115
  %17 = load double, double* %z, align 8, !dbg !116
  %18 = load double, double* %z, align 8, !dbg !117
  %19 = load double, double* %z, align 8, !dbg !118
  %20 = load double, double* %z, align 8, !dbg !119
  %21 = load double, double* %z, align 8, !dbg !120
  %mul13 = fmul double %21, 0x3F023DE10DFDF709, !dbg !121
  %add = fadd double 0x3F49EFE07501B288, %mul13, !dbg !122
  %mul14 = fmul double %20, %add, !dbg !123
  %add15 = fadd double 0xBFA48228B5688F3B, %mul14, !dbg !124
  %mul16 = fmul double %19, %add15, !dbg !125
  %add17 = fadd double 0x3FC9C1550E884455, %mul16, !dbg !126
  %mul18 = fmul double %18, %add17, !dbg !127
  %add19 = fadd double 0xBFD4D61203EB6F7D, %mul18, !dbg !128
  %mul20 = fmul double %17, %add19, !dbg !129
  %add21 = fadd double 0x3FC5555555555555, %mul20, !dbg !130
  %mul22 = fmul double %16, %add21, !dbg !131
  store double %mul22, double* %p, align 8, !dbg !132
  %22 = load double, double* %z, align 8, !dbg !133
  %23 = load double, double* %z, align 8, !dbg !134
  %24 = load double, double* %z, align 8, !dbg !135
  %25 = load double, double* %z, align 8, !dbg !136
  %mul23 = fmul double %25, 0x3FB3B8C5B12E9282, !dbg !137
  %add24 = fadd double 0xBFE6066C1B8D0159, %mul23, !dbg !138
  %mul25 = fmul double %24, %add24, !dbg !139
  %add26 = fadd double 0x40002AE59C598AC8, %mul25, !dbg !140
  %mul27 = fmul double %23, %add26, !dbg !141
  %add28 = fadd double 0xC0033A271C8A2D4B, %mul27, !dbg !142
  %mul29 = fmul double %22, %add28, !dbg !143
  %add30 = fadd double 1.000000e+00, %mul29, !dbg !144
  store double %add30, double* %q, align 8, !dbg !145
  %26 = load double, double* %p, align 8, !dbg !146
  %27 = load double, double* %q, align 8, !dbg !147
  %div31 = fdiv double %26, %27, !dbg !148
  store double %div31, double* %r, align 8, !dbg !149
  %28 = load double, double* %x.addr, align 8, !dbg !150
  %29 = load double, double* %x.addr, align 8, !dbg !151
  %30 = load double, double* %r, align 8, !dbg !152
  %mul32 = fmul double %29, %30, !dbg !153
  %sub33 = fsub double 0x3C91A62633145C07, %mul32, !dbg !154
  %sub34 = fsub double %28, %sub33, !dbg !155
  %sub35 = fsub double 0x3FF921FB54442D18, %sub34, !dbg !156
  store double %sub35, double* %retval, align 8, !dbg !157
  br label %return, !dbg !157

if.else36:                                        ; preds = %if.end7
  %31 = load i32, i32* %hx, align 4, !dbg !158
  %cmp37 = icmp slt i32 %31, 0, !dbg !160
  br i1 %cmp37, label %if.then38, label %if.else66, !dbg !161

if.then38:                                        ; preds = %if.else36
  %32 = load double, double* %x.addr, align 8, !dbg !162
  %add39 = fadd double 1.000000e+00, %32, !dbg !164
  %mul40 = fmul double %add39, 5.000000e-01, !dbg !165
  store double %mul40, double* %z, align 8, !dbg !166
  %33 = load double, double* %z, align 8, !dbg !167
  %34 = load double, double* %z, align 8, !dbg !168
  %35 = load double, double* %z, align 8, !dbg !169
  %36 = load double, double* %z, align 8, !dbg !170
  %37 = load double, double* %z, align 8, !dbg !171
  %38 = load double, double* %z, align 8, !dbg !172
  %mul41 = fmul double %38, 0x3F023DE10DFDF709, !dbg !173
  %add42 = fadd double 0x3F49EFE07501B288, %mul41, !dbg !174
  %mul43 = fmul double %37, %add42, !dbg !175
  %add44 = fadd double 0xBFA48228B5688F3B, %mul43, !dbg !176
  %mul45 = fmul double %36, %add44, !dbg !177
  %add46 = fadd double 0x3FC9C1550E884455, %mul45, !dbg !178
  %mul47 = fmul double %35, %add46, !dbg !179
  %add48 = fadd double 0xBFD4D61203EB6F7D, %mul47, !dbg !180
  %mul49 = fmul double %34, %add48, !dbg !181
  %add50 = fadd double 0x3FC5555555555555, %mul49, !dbg !182
  %mul51 = fmul double %33, %add50, !dbg !183
  store double %mul51, double* %p, align 8, !dbg !184
  %39 = load double, double* %z, align 8, !dbg !185
  %40 = load double, double* %z, align 8, !dbg !186
  %41 = load double, double* %z, align 8, !dbg !187
  %42 = load double, double* %z, align 8, !dbg !188
  %mul52 = fmul double %42, 0x3FB3B8C5B12E9282, !dbg !189
  %add53 = fadd double 0xBFE6066C1B8D0159, %mul52, !dbg !190
  %mul54 = fmul double %41, %add53, !dbg !191
  %add55 = fadd double 0x40002AE59C598AC8, %mul54, !dbg !192
  %mul56 = fmul double %40, %add55, !dbg !193
  %add57 = fadd double 0xC0033A271C8A2D4B, %mul56, !dbg !194
  %mul58 = fmul double %39, %add57, !dbg !195
  %add59 = fadd double 1.000000e+00, %mul58, !dbg !196
  store double %add59, double* %q, align 8, !dbg !197
  %43 = load double, double* %z, align 8, !dbg !198
  %call = call double @sqrt(double %43) #4, !dbg !199
  store double %call, double* %s, align 8, !dbg !200
  %44 = load double, double* %p, align 8, !dbg !201
  %45 = load double, double* %q, align 8, !dbg !202
  %div60 = fdiv double %44, %45, !dbg !203
  store double %div60, double* %r, align 8, !dbg !204
  %46 = load double, double* %r, align 8, !dbg !205
  %47 = load double, double* %s, align 8, !dbg !206
  %mul61 = fmul double %46, %47, !dbg !207
  %sub62 = fsub double %mul61, 0x3C91A62633145C07, !dbg !208
  store double %sub62, double* %w, align 8, !dbg !209
  %48 = load double, double* %s, align 8, !dbg !210
  %49 = load double, double* %w, align 8, !dbg !211
  %add63 = fadd double %48, %49, !dbg !212
  %mul64 = fmul double 2.000000e+00, %add63, !dbg !213
  %sub65 = fsub double 0x400921FB54442D18, %mul64, !dbg !214
  store double %sub65, double* %retval, align 8, !dbg !215
  br label %return, !dbg !215

if.else66:                                        ; preds = %if.else36
  %50 = load double, double* %x.addr, align 8, !dbg !216
  %sub67 = fsub double 1.000000e+00, %50, !dbg !218
  %mul68 = fmul double %sub67, 5.000000e-01, !dbg !219
  store double %mul68, double* %z, align 8, !dbg !220
  %51 = load double, double* %z, align 8, !dbg !221
  %call69 = call double @sqrt(double %51) #4, !dbg !222
  store double %call69, double* %s, align 8, !dbg !223
  %52 = load double, double* %s, align 8, !dbg !224
  store double %52, double* %df, align 8, !dbg !225
  %53 = bitcast double* %df to i32*, !dbg !226
  %add.ptr70 = getelementptr inbounds i32, i32* %53, i64 1, !dbg !226
  store i32 0, i32* %add.ptr70, align 4, !dbg !227
  %54 = load double, double* %z, align 8, !dbg !228
  %55 = load double, double* %df, align 8, !dbg !229
  %56 = load double, double* %df, align 8, !dbg !230
  %mul71 = fmul double %55, %56, !dbg !231
  %sub72 = fsub double %54, %mul71, !dbg !232
  %57 = load double, double* %s, align 8, !dbg !233
  %58 = load double, double* %df, align 8, !dbg !234
  %add73 = fadd double %57, %58, !dbg !235
  %div74 = fdiv double %sub72, %add73, !dbg !236
  store double %div74, double* %c, align 8, !dbg !237
  %59 = load double, double* %z, align 8, !dbg !238
  %60 = load double, double* %z, align 8, !dbg !239
  %61 = load double, double* %z, align 8, !dbg !240
  %62 = load double, double* %z, align 8, !dbg !241
  %63 = load double, double* %z, align 8, !dbg !242
  %64 = load double, double* %z, align 8, !dbg !243
  %mul75 = fmul double %64, 0x3F023DE10DFDF709, !dbg !244
  %add76 = fadd double 0x3F49EFE07501B288, %mul75, !dbg !245
  %mul77 = fmul double %63, %add76, !dbg !246
  %add78 = fadd double 0xBFA48228B5688F3B, %mul77, !dbg !247
  %mul79 = fmul double %62, %add78, !dbg !248
  %add80 = fadd double 0x3FC9C1550E884455, %mul79, !dbg !249
  %mul81 = fmul double %61, %add80, !dbg !250
  %add82 = fadd double 0xBFD4D61203EB6F7D, %mul81, !dbg !251
  %mul83 = fmul double %60, %add82, !dbg !252
  %add84 = fadd double 0x3FC5555555555555, %mul83, !dbg !253
  %mul85 = fmul double %59, %add84, !dbg !254
  store double %mul85, double* %p, align 8, !dbg !255
  %65 = load double, double* %z, align 8, !dbg !256
  %66 = load double, double* %z, align 8, !dbg !257
  %67 = load double, double* %z, align 8, !dbg !258
  %68 = load double, double* %z, align 8, !dbg !259
  %mul86 = fmul double %68, 0x3FB3B8C5B12E9282, !dbg !260
  %add87 = fadd double 0xBFE6066C1B8D0159, %mul86, !dbg !261
  %mul88 = fmul double %67, %add87, !dbg !262
  %add89 = fadd double 0x40002AE59C598AC8, %mul88, !dbg !263
  %mul90 = fmul double %66, %add89, !dbg !264
  %add91 = fadd double 0xC0033A271C8A2D4B, %mul90, !dbg !265
  %mul92 = fmul double %65, %add91, !dbg !266
  %add93 = fadd double 1.000000e+00, %mul92, !dbg !267
  store double %add93, double* %q, align 8, !dbg !268
  %69 = load double, double* %p, align 8, !dbg !269
  %70 = load double, double* %q, align 8, !dbg !270
  %div94 = fdiv double %69, %70, !dbg !271
  store double %div94, double* %r, align 8, !dbg !272
  %71 = load double, double* %r, align 8, !dbg !273
  %72 = load double, double* %s, align 8, !dbg !274
  %mul95 = fmul double %71, %72, !dbg !275
  %73 = load double, double* %c, align 8, !dbg !276
  %add96 = fadd double %mul95, %73, !dbg !277
  store double %add96, double* %w, align 8, !dbg !278
  %74 = load double, double* %df, align 8, !dbg !279
  %75 = load double, double* %w, align 8, !dbg !280
  %add97 = fadd double %74, %75, !dbg !281
  %mul98 = fmul double 2.000000e+00, %add97, !dbg !282
  store double %mul98, double* %retval, align 8, !dbg !283
  br label %return, !dbg !283

return:                                           ; preds = %if.else66, %if.then38, %if.end12, %if.then11, %if.end, %if.else, %if.then4
  %76 = load double, double* %retval, align 8, !dbg !284
  ret double %76, !dbg !284
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !285 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !288, metadata !DIExpression()), !dbg !289
  %0 = bitcast double* %a0 to i8*, !dbg !290
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !291
  call void @llvm.dbg.declare(metadata double* %r, metadata !292, metadata !DIExpression()), !dbg !293
  %1 = load double, double* %a0, align 8, !dbg !294
  %call = call double @__ieee754_acos(double %1), !dbg !295
  store double %call, double* %r, align 8, !dbg !293
  ret i32 0, !dbg !296
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !6, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "e_acos.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression(DW_OP_constu, 4614256656552045848, DW_OP_stack_value))
!8 = distinct !DIGlobalVariable(name: "pi", scope: !0, file: !9, line: 46, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./e_acos.c", directory: "/home/klee/logic_bombs/fdlibm")
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 4364452196894661639, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "pio2_lo", scope: !0, file: !9, line: 48, type: !10, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4609753056924675352, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "pio2_hi", scope: !0, file: !9, line: 47, type: !10, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4595172819793696085, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "pS0", scope: !0, file: !9, line: 49, type: !10, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 13822908529170411389, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "pS1", scope: !0, file: !9, line: 50, type: !10, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 4596417465768494165, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "pS2", scope: !0, file: !9, line: 51, type: !10, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 13809305468778614587, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "pS3", scope: !0, file: !9, line: 52, type: !10, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression(DW_OP_constu, 4560439845004096136, DW_OP_stack_value))
!25 = distinct !DIGlobalVariable(name: "pS4", scope: !0, file: !9, line: 53, type: !10, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression(DW_OP_constu, 4540259411154564873, DW_OP_stack_value))
!27 = distinct !DIGlobalVariable(name: "pS5", scope: !0, file: !9, line: 54, type: !10, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!29 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !9, line: 45, type: !10, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression(DW_OP_constu, 13835966419869248843, DW_OP_stack_value))
!31 = distinct !DIGlobalVariable(name: "qS1", scope: !0, file: !9, line: 55, type: !10, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression(DW_OP_constu, 4611733184086379208, DW_OP_stack_value))
!33 = distinct !DIGlobalVariable(name: "qS2", scope: !0, file: !9, line: 56, type: !10, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression(DW_OP_constu, 13827746767276147033, DW_OP_stack_value))
!35 = distinct !DIGlobalVariable(name: "qS3", scope: !0, file: !9, line: 57, type: !10, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression(DW_OP_constu, 4590215604441354882, DW_OP_stack_value))
!37 = distinct !DIGlobalVariable(name: "qS4", scope: !0, file: !9, line: 58, type: !10, isLocal: true, isDefinition: true)
!38 = !{i32 7, !"Dwarf Version", i32 4}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 4}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!44 = distinct !DISubprogram(name: "__ieee754_acos", scope: !9, file: !9, line: 61, type: !45, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!45 = !DISubroutineType(types: !46)
!46 = !{!11, !11}
!47 = !DILocalVariable(name: "x", arg: 1, scope: !44, file: !9, line: 61, type: !11)
!48 = !DILocation(line: 61, column: 31, scope: !44)
!49 = !DILocalVariable(name: "z", scope: !44, file: !9, line: 67, type: !11)
!50 = !DILocation(line: 67, column: 9, scope: !44)
!51 = !DILocalVariable(name: "p", scope: !44, file: !9, line: 67, type: !11)
!52 = !DILocation(line: 67, column: 11, scope: !44)
!53 = !DILocalVariable(name: "q", scope: !44, file: !9, line: 67, type: !11)
!54 = !DILocation(line: 67, column: 13, scope: !44)
!55 = !DILocalVariable(name: "r", scope: !44, file: !9, line: 67, type: !11)
!56 = !DILocation(line: 67, column: 15, scope: !44)
!57 = !DILocalVariable(name: "w", scope: !44, file: !9, line: 67, type: !11)
!58 = !DILocation(line: 67, column: 17, scope: !44)
!59 = !DILocalVariable(name: "s", scope: !44, file: !9, line: 67, type: !11)
!60 = !DILocation(line: 67, column: 19, scope: !44)
!61 = !DILocalVariable(name: "c", scope: !44, file: !9, line: 67, type: !11)
!62 = !DILocation(line: 67, column: 21, scope: !44)
!63 = !DILocalVariable(name: "df", scope: !44, file: !9, line: 67, type: !11)
!64 = !DILocation(line: 67, column: 23, scope: !44)
!65 = !DILocalVariable(name: "hx", scope: !44, file: !9, line: 68, type: !5)
!66 = !DILocation(line: 68, column: 6, scope: !44)
!67 = !DILocalVariable(name: "ix", scope: !44, file: !9, line: 68, type: !5)
!68 = !DILocation(line: 68, column: 9, scope: !44)
!69 = !DILocation(line: 69, column: 7, scope: !44)
!70 = !DILocation(line: 69, column: 5, scope: !44)
!71 = !DILocation(line: 70, column: 7, scope: !44)
!72 = !DILocation(line: 70, column: 9, scope: !44)
!73 = !DILocation(line: 70, column: 5, scope: !44)
!74 = !DILocation(line: 71, column: 5, scope: !75)
!75 = distinct !DILexicalBlock(scope: !44, file: !9, line: 71, column: 5)
!76 = !DILocation(line: 71, column: 7, scope: !75)
!77 = !DILocation(line: 71, column: 5, scope: !44)
!78 = !DILocation(line: 72, column: 11, scope: !79)
!79 = distinct !DILexicalBlock(scope: !80, file: !9, line: 72, column: 9)
!80 = distinct !DILexicalBlock(scope: !75, file: !9, line: 71, column: 21)
!81 = !DILocation(line: 72, column: 13, scope: !79)
!82 = !DILocation(line: 72, column: 26, scope: !79)
!83 = !DILocation(line: 72, column: 25, scope: !79)
!84 = !DILocation(line: 72, column: 34, scope: !79)
!85 = !DILocation(line: 72, column: 9, scope: !80)
!86 = !DILocation(line: 73, column: 6, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !9, line: 73, column: 6)
!88 = distinct !DILexicalBlock(scope: !79, file: !9, line: 72, column: 39)
!89 = !DILocation(line: 73, column: 8, scope: !87)
!90 = !DILocation(line: 73, column: 6, scope: !88)
!91 = !DILocation(line: 73, column: 12, scope: !87)
!92 = !DILocation(line: 74, column: 8, scope: !87)
!93 = !DILocation(line: 76, column: 14, scope: !80)
!94 = !DILocation(line: 76, column: 16, scope: !80)
!95 = !DILocation(line: 76, column: 15, scope: !80)
!96 = !DILocation(line: 76, column: 20, scope: !80)
!97 = !DILocation(line: 76, column: 22, scope: !80)
!98 = !DILocation(line: 76, column: 21, scope: !80)
!99 = !DILocation(line: 76, column: 18, scope: !80)
!100 = !DILocation(line: 76, column: 6, scope: !80)
!101 = !DILocation(line: 78, column: 5, scope: !102)
!102 = distinct !DILexicalBlock(scope: !44, file: !9, line: 78, column: 5)
!103 = !DILocation(line: 78, column: 7, scope: !102)
!104 = !DILocation(line: 78, column: 5, scope: !44)
!105 = !DILocation(line: 79, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !9, line: 79, column: 9)
!107 = distinct !DILexicalBlock(scope: !102, file: !9, line: 78, column: 20)
!108 = !DILocation(line: 79, column: 11, scope: !106)
!109 = !DILocation(line: 79, column: 9, scope: !107)
!110 = !DILocation(line: 79, column: 25, scope: !106)
!111 = !DILocation(line: 80, column: 10, scope: !107)
!112 = !DILocation(line: 80, column: 12, scope: !107)
!113 = !DILocation(line: 80, column: 11, scope: !107)
!114 = !DILocation(line: 80, column: 8, scope: !107)
!115 = !DILocation(line: 81, column: 10, scope: !107)
!116 = !DILocation(line: 81, column: 17, scope: !107)
!117 = !DILocation(line: 81, column: 24, scope: !107)
!118 = !DILocation(line: 81, column: 31, scope: !107)
!119 = !DILocation(line: 81, column: 38, scope: !107)
!120 = !DILocation(line: 81, column: 45, scope: !107)
!121 = !DILocation(line: 81, column: 46, scope: !107)
!122 = !DILocation(line: 81, column: 44, scope: !107)
!123 = !DILocation(line: 81, column: 39, scope: !107)
!124 = !DILocation(line: 81, column: 37, scope: !107)
!125 = !DILocation(line: 81, column: 32, scope: !107)
!126 = !DILocation(line: 81, column: 30, scope: !107)
!127 = !DILocation(line: 81, column: 25, scope: !107)
!128 = !DILocation(line: 81, column: 23, scope: !107)
!129 = !DILocation(line: 81, column: 18, scope: !107)
!130 = !DILocation(line: 81, column: 16, scope: !107)
!131 = !DILocation(line: 81, column: 11, scope: !107)
!132 = !DILocation(line: 81, column: 8, scope: !107)
!133 = !DILocation(line: 82, column: 14, scope: !107)
!134 = !DILocation(line: 82, column: 21, scope: !107)
!135 = !DILocation(line: 82, column: 28, scope: !107)
!136 = !DILocation(line: 82, column: 35, scope: !107)
!137 = !DILocation(line: 82, column: 36, scope: !107)
!138 = !DILocation(line: 82, column: 34, scope: !107)
!139 = !DILocation(line: 82, column: 29, scope: !107)
!140 = !DILocation(line: 82, column: 27, scope: !107)
!141 = !DILocation(line: 82, column: 22, scope: !107)
!142 = !DILocation(line: 82, column: 20, scope: !107)
!143 = !DILocation(line: 82, column: 15, scope: !107)
!144 = !DILocation(line: 82, column: 13, scope: !107)
!145 = !DILocation(line: 82, column: 8, scope: !107)
!146 = !DILocation(line: 83, column: 10, scope: !107)
!147 = !DILocation(line: 83, column: 12, scope: !107)
!148 = !DILocation(line: 83, column: 11, scope: !107)
!149 = !DILocation(line: 83, column: 8, scope: !107)
!150 = !DILocation(line: 84, column: 24, scope: !107)
!151 = !DILocation(line: 84, column: 37, scope: !107)
!152 = !DILocation(line: 84, column: 39, scope: !107)
!153 = !DILocation(line: 84, column: 38, scope: !107)
!154 = !DILocation(line: 84, column: 36, scope: !107)
!155 = !DILocation(line: 84, column: 26, scope: !107)
!156 = !DILocation(line: 84, column: 21, scope: !107)
!157 = !DILocation(line: 84, column: 6, scope: !107)
!158 = !DILocation(line: 85, column: 14, scope: !159)
!159 = distinct !DILexicalBlock(scope: !102, file: !9, line: 85, column: 14)
!160 = !DILocation(line: 85, column: 16, scope: !159)
!161 = !DILocation(line: 85, column: 14, scope: !102)
!162 = !DILocation(line: 86, column: 15, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !9, line: 85, column: 20)
!164 = !DILocation(line: 86, column: 14, scope: !163)
!165 = !DILocation(line: 86, column: 17, scope: !163)
!166 = !DILocation(line: 86, column: 8, scope: !163)
!167 = !DILocation(line: 87, column: 10, scope: !163)
!168 = !DILocation(line: 87, column: 17, scope: !163)
!169 = !DILocation(line: 87, column: 24, scope: !163)
!170 = !DILocation(line: 87, column: 31, scope: !163)
!171 = !DILocation(line: 87, column: 38, scope: !163)
!172 = !DILocation(line: 87, column: 45, scope: !163)
!173 = !DILocation(line: 87, column: 46, scope: !163)
!174 = !DILocation(line: 87, column: 44, scope: !163)
!175 = !DILocation(line: 87, column: 39, scope: !163)
!176 = !DILocation(line: 87, column: 37, scope: !163)
!177 = !DILocation(line: 87, column: 32, scope: !163)
!178 = !DILocation(line: 87, column: 30, scope: !163)
!179 = !DILocation(line: 87, column: 25, scope: !163)
!180 = !DILocation(line: 87, column: 23, scope: !163)
!181 = !DILocation(line: 87, column: 18, scope: !163)
!182 = !DILocation(line: 87, column: 16, scope: !163)
!183 = !DILocation(line: 87, column: 11, scope: !163)
!184 = !DILocation(line: 87, column: 8, scope: !163)
!185 = !DILocation(line: 88, column: 14, scope: !163)
!186 = !DILocation(line: 88, column: 21, scope: !163)
!187 = !DILocation(line: 88, column: 28, scope: !163)
!188 = !DILocation(line: 88, column: 35, scope: !163)
!189 = !DILocation(line: 88, column: 36, scope: !163)
!190 = !DILocation(line: 88, column: 34, scope: !163)
!191 = !DILocation(line: 88, column: 29, scope: !163)
!192 = !DILocation(line: 88, column: 27, scope: !163)
!193 = !DILocation(line: 88, column: 22, scope: !163)
!194 = !DILocation(line: 88, column: 20, scope: !163)
!195 = !DILocation(line: 88, column: 15, scope: !163)
!196 = !DILocation(line: 88, column: 13, scope: !163)
!197 = !DILocation(line: 88, column: 8, scope: !163)
!198 = !DILocation(line: 89, column: 15, scope: !163)
!199 = !DILocation(line: 89, column: 10, scope: !163)
!200 = !DILocation(line: 89, column: 8, scope: !163)
!201 = !DILocation(line: 90, column: 10, scope: !163)
!202 = !DILocation(line: 90, column: 12, scope: !163)
!203 = !DILocation(line: 90, column: 11, scope: !163)
!204 = !DILocation(line: 90, column: 8, scope: !163)
!205 = !DILocation(line: 91, column: 10, scope: !163)
!206 = !DILocation(line: 91, column: 12, scope: !163)
!207 = !DILocation(line: 91, column: 11, scope: !163)
!208 = !DILocation(line: 91, column: 13, scope: !163)
!209 = !DILocation(line: 91, column: 8, scope: !163)
!210 = !DILocation(line: 92, column: 23, scope: !163)
!211 = !DILocation(line: 92, column: 25, scope: !163)
!212 = !DILocation(line: 92, column: 24, scope: !163)
!213 = !DILocation(line: 92, column: 21, scope: !163)
!214 = !DILocation(line: 92, column: 16, scope: !163)
!215 = !DILocation(line: 92, column: 6, scope: !163)
!216 = !DILocation(line: 94, column: 15, scope: !217)
!217 = distinct !DILexicalBlock(scope: !159, file: !9, line: 93, column: 9)
!218 = !DILocation(line: 94, column: 14, scope: !217)
!219 = !DILocation(line: 94, column: 17, scope: !217)
!220 = !DILocation(line: 94, column: 8, scope: !217)
!221 = !DILocation(line: 95, column: 15, scope: !217)
!222 = !DILocation(line: 95, column: 10, scope: !217)
!223 = !DILocation(line: 95, column: 8, scope: !217)
!224 = !DILocation(line: 96, column: 11, scope: !217)
!225 = !DILocation(line: 96, column: 9, scope: !217)
!226 = !DILocation(line: 97, column: 6, scope: !217)
!227 = !DILocation(line: 97, column: 15, scope: !217)
!228 = !DILocation(line: 98, column: 12, scope: !217)
!229 = !DILocation(line: 98, column: 14, scope: !217)
!230 = !DILocation(line: 98, column: 17, scope: !217)
!231 = !DILocation(line: 98, column: 16, scope: !217)
!232 = !DILocation(line: 98, column: 13, scope: !217)
!233 = !DILocation(line: 98, column: 22, scope: !217)
!234 = !DILocation(line: 98, column: 24, scope: !217)
!235 = !DILocation(line: 98, column: 23, scope: !217)
!236 = !DILocation(line: 98, column: 20, scope: !217)
!237 = !DILocation(line: 98, column: 9, scope: !217)
!238 = !DILocation(line: 99, column: 10, scope: !217)
!239 = !DILocation(line: 99, column: 17, scope: !217)
!240 = !DILocation(line: 99, column: 24, scope: !217)
!241 = !DILocation(line: 99, column: 31, scope: !217)
!242 = !DILocation(line: 99, column: 38, scope: !217)
!243 = !DILocation(line: 99, column: 45, scope: !217)
!244 = !DILocation(line: 99, column: 46, scope: !217)
!245 = !DILocation(line: 99, column: 44, scope: !217)
!246 = !DILocation(line: 99, column: 39, scope: !217)
!247 = !DILocation(line: 99, column: 37, scope: !217)
!248 = !DILocation(line: 99, column: 32, scope: !217)
!249 = !DILocation(line: 99, column: 30, scope: !217)
!250 = !DILocation(line: 99, column: 25, scope: !217)
!251 = !DILocation(line: 99, column: 23, scope: !217)
!252 = !DILocation(line: 99, column: 18, scope: !217)
!253 = !DILocation(line: 99, column: 16, scope: !217)
!254 = !DILocation(line: 99, column: 11, scope: !217)
!255 = !DILocation(line: 99, column: 8, scope: !217)
!256 = !DILocation(line: 100, column: 14, scope: !217)
!257 = !DILocation(line: 100, column: 21, scope: !217)
!258 = !DILocation(line: 100, column: 28, scope: !217)
!259 = !DILocation(line: 100, column: 35, scope: !217)
!260 = !DILocation(line: 100, column: 36, scope: !217)
!261 = !DILocation(line: 100, column: 34, scope: !217)
!262 = !DILocation(line: 100, column: 29, scope: !217)
!263 = !DILocation(line: 100, column: 27, scope: !217)
!264 = !DILocation(line: 100, column: 22, scope: !217)
!265 = !DILocation(line: 100, column: 20, scope: !217)
!266 = !DILocation(line: 100, column: 15, scope: !217)
!267 = !DILocation(line: 100, column: 13, scope: !217)
!268 = !DILocation(line: 100, column: 8, scope: !217)
!269 = !DILocation(line: 101, column: 10, scope: !217)
!270 = !DILocation(line: 101, column: 12, scope: !217)
!271 = !DILocation(line: 101, column: 11, scope: !217)
!272 = !DILocation(line: 101, column: 8, scope: !217)
!273 = !DILocation(line: 102, column: 10, scope: !217)
!274 = !DILocation(line: 102, column: 12, scope: !217)
!275 = !DILocation(line: 102, column: 11, scope: !217)
!276 = !DILocation(line: 102, column: 14, scope: !217)
!277 = !DILocation(line: 102, column: 13, scope: !217)
!278 = !DILocation(line: 102, column: 8, scope: !217)
!279 = !DILocation(line: 103, column: 18, scope: !217)
!280 = !DILocation(line: 103, column: 21, scope: !217)
!281 = !DILocation(line: 103, column: 20, scope: !217)
!282 = !DILocation(line: 103, column: 16, scope: !217)
!283 = !DILocation(line: 103, column: 6, scope: !217)
!284 = !DILocation(line: 105, column: 1, scope: !44)
!285 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 109, type: !286, scopeLine: 109, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!286 = !DISubroutineType(types: !287)
!287 = !{!5}
!288 = !DILocalVariable(name: "a0", scope: !285, file: !9, line: 110, type: !11)
!289 = !DILocation(line: 110, column: 12, scope: !285)
!290 = !DILocation(line: 111, column: 24, scope: !285)
!291 = !DILocation(line: 111, column: 5, scope: !285)
!292 = !DILocalVariable(name: "r", scope: !285, file: !9, line: 113, type: !11)
!293 = !DILocation(line: 113, column: 12, scope: !285)
!294 = !DILocation(line: 113, column: 31, scope: !285)
!295 = !DILocation(line: 113, column: 16, scope: !285)
!296 = !DILocation(line: 114, column: 5, scope: !285)
