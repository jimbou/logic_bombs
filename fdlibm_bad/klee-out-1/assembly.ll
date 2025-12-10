; ModuleID = 'e_acos_simple.bc'
source_filename = "e_acos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"0 && \22acos > 1\22\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"e_acos.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_acos(double %x) #0 !dbg !43 {
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
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata double* %z, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata double* %p, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata double* %q, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata double* %r, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata double* %w, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata double* %s, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata double* %c, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata double* %df, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !66, metadata !DIExpression()), !dbg !67
  %0 = bitcast double* %x.addr to i32*, !dbg !68
  %1 = load i32, i32* %0, align 8, !dbg !68
  store i32 %1, i32* %hx, align 4, !dbg !69
  %2 = load i32, i32* %hx, align 4, !dbg !70
  %and = and i32 %2, 2147483647, !dbg !71
  store i32 %and, i32* %ix, align 4, !dbg !72
  %3 = load i32, i32* %ix, align 4, !dbg !73
  %cmp = icmp sge i32 %3, 1072693248, !dbg !75
  br i1 %cmp, label %if.then, label %if.end7, !dbg !76

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ix, align 4, !dbg !77
  %sub = sub nsw i32 %4, 1072693248, !dbg !80
  %5 = bitcast double* %x.addr to i32*, !dbg !81
  %add.ptr = getelementptr inbounds i32, i32* %5, i64 1, !dbg !81
  %6 = load i32, i32* %add.ptr, align 4, !dbg !81
  %or = or i32 %sub, %6, !dbg !82
  %cmp1 = icmp eq i32 %or, 0, !dbg !83
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !84

if.then2:                                         ; preds = %if.then
  %7 = load i32, i32* %hx, align 4, !dbg !85
  %cmp3 = icmp sgt i32 %7, 0, !dbg !88
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !89

if.then4:                                         ; preds = %if.then2
  store double 0.000000e+00, double* %retval, align 8, !dbg !90
  br label %return, !dbg !90

if.else:                                          ; preds = %if.then2
  store double 0x400921FB54442D18, double* %retval, align 8, !dbg !91
  br label %return, !dbg !91

if.end:                                           ; preds = %if.then
  %8 = load double, double* %x.addr, align 8, !dbg !92
  %9 = load double, double* %x.addr, align 8, !dbg !93
  %sub5 = fsub double %8, %9, !dbg !94
  %10 = load double, double* %x.addr, align 8, !dbg !95
  %11 = load double, double* %x.addr, align 8, !dbg !96
  %sub6 = fsub double %10, %11, !dbg !97
  %div = fdiv double %sub5, %sub6, !dbg !98
  store double %div, double* %retval, align 8, !dbg !99
  br label %return, !dbg !99

if.end7:                                          ; preds = %entry
  %12 = load i32, i32* %ix, align 4, !dbg !100
  %cmp8 = icmp slt i32 %12, 1071644672, !dbg !102
  br i1 %cmp8, label %if.then9, label %if.else36, !dbg !103

if.then9:                                         ; preds = %if.end7
  %13 = load i32, i32* %ix, align 4, !dbg !104
  %cmp10 = icmp sle i32 %13, 1012924416, !dbg !107
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !108

if.then11:                                        ; preds = %if.then9
  store double 0x3FF921FB54442D18, double* %retval, align 8, !dbg !109
  br label %return, !dbg !109

if.end12:                                         ; preds = %if.then9
  %14 = load double, double* %x.addr, align 8, !dbg !110
  %15 = load double, double* %x.addr, align 8, !dbg !111
  %mul = fmul double %14, %15, !dbg !112
  store double %mul, double* %z, align 8, !dbg !113
  %16 = load double, double* %z, align 8, !dbg !114
  %17 = load double, double* %z, align 8, !dbg !115
  %18 = load double, double* %z, align 8, !dbg !116
  %19 = load double, double* %z, align 8, !dbg !117
  %20 = load double, double* %z, align 8, !dbg !118
  %21 = load double, double* %z, align 8, !dbg !119
  %mul13 = fmul double %21, 0x3F023DE10DFDF709, !dbg !120
  %add = fadd double 0x3F49EFE07501B288, %mul13, !dbg !121
  %mul14 = fmul double %20, %add, !dbg !122
  %add15 = fadd double 0xBFA48228B5688F3B, %mul14, !dbg !123
  %mul16 = fmul double %19, %add15, !dbg !124
  %add17 = fadd double 0x3FC9C1550E884455, %mul16, !dbg !125
  %mul18 = fmul double %18, %add17, !dbg !126
  %add19 = fadd double 0xBFD4D61203EB6F7D, %mul18, !dbg !127
  %mul20 = fmul double %17, %add19, !dbg !128
  %add21 = fadd double 0x3FC5555555555555, %mul20, !dbg !129
  %mul22 = fmul double %16, %add21, !dbg !130
  store double %mul22, double* %p, align 8, !dbg !131
  %22 = load double, double* %z, align 8, !dbg !132
  %23 = load double, double* %z, align 8, !dbg !133
  %24 = load double, double* %z, align 8, !dbg !134
  %25 = load double, double* %z, align 8, !dbg !135
  %mul23 = fmul double %25, 0x3FB3B8C5B12E9282, !dbg !136
  %add24 = fadd double 0xBFE6066C1B8D0159, %mul23, !dbg !137
  %mul25 = fmul double %24, %add24, !dbg !138
  %add26 = fadd double 0x40002AE59C598AC8, %mul25, !dbg !139
  %mul27 = fmul double %23, %add26, !dbg !140
  %add28 = fadd double 0xC0033A271C8A2D4B, %mul27, !dbg !141
  %mul29 = fmul double %22, %add28, !dbg !142
  %add30 = fadd double 1.000000e+00, %mul29, !dbg !143
  store double %add30, double* %q, align 8, !dbg !144
  %26 = load double, double* %p, align 8, !dbg !145
  %27 = load double, double* %q, align 8, !dbg !146
  %div31 = fdiv double %26, %27, !dbg !147
  store double %div31, double* %r, align 8, !dbg !148
  %28 = load double, double* %x.addr, align 8, !dbg !149
  %29 = load double, double* %x.addr, align 8, !dbg !150
  %30 = load double, double* %r, align 8, !dbg !151
  %mul32 = fmul double %29, %30, !dbg !152
  %sub33 = fsub double 0x3C91A62633145C07, %mul32, !dbg !153
  %sub34 = fsub double %28, %sub33, !dbg !154
  %sub35 = fsub double 0x3FF921FB54442D18, %sub34, !dbg !155
  store double %sub35, double* %retval, align 8, !dbg !156
  br label %return, !dbg !156

if.else36:                                        ; preds = %if.end7
  %31 = load i32, i32* %hx, align 4, !dbg !157
  %cmp37 = icmp slt i32 %31, 0, !dbg !159
  br i1 %cmp37, label %if.then38, label %if.else66, !dbg !160

if.then38:                                        ; preds = %if.else36
  %32 = load double, double* %x.addr, align 8, !dbg !161
  %add39 = fadd double 1.000000e+00, %32, !dbg !163
  %mul40 = fmul double %add39, 5.000000e-01, !dbg !164
  store double %mul40, double* %z, align 8, !dbg !165
  %33 = load double, double* %z, align 8, !dbg !166
  %34 = load double, double* %z, align 8, !dbg !167
  %35 = load double, double* %z, align 8, !dbg !168
  %36 = load double, double* %z, align 8, !dbg !169
  %37 = load double, double* %z, align 8, !dbg !170
  %38 = load double, double* %z, align 8, !dbg !171
  %mul41 = fmul double %38, 0x3F023DE10DFDF709, !dbg !172
  %add42 = fadd double 0x3F49EFE07501B288, %mul41, !dbg !173
  %mul43 = fmul double %37, %add42, !dbg !174
  %add44 = fadd double 0xBFA48228B5688F3B, %mul43, !dbg !175
  %mul45 = fmul double %36, %add44, !dbg !176
  %add46 = fadd double 0x3FC9C1550E884455, %mul45, !dbg !177
  %mul47 = fmul double %35, %add46, !dbg !178
  %add48 = fadd double 0xBFD4D61203EB6F7D, %mul47, !dbg !179
  %mul49 = fmul double %34, %add48, !dbg !180
  %add50 = fadd double 0x3FC5555555555555, %mul49, !dbg !181
  %mul51 = fmul double %33, %add50, !dbg !182
  store double %mul51, double* %p, align 8, !dbg !183
  %39 = load double, double* %z, align 8, !dbg !184
  %40 = load double, double* %z, align 8, !dbg !185
  %41 = load double, double* %z, align 8, !dbg !186
  %42 = load double, double* %z, align 8, !dbg !187
  %mul52 = fmul double %42, 0x3FB3B8C5B12E9282, !dbg !188
  %add53 = fadd double 0xBFE6066C1B8D0159, %mul52, !dbg !189
  %mul54 = fmul double %41, %add53, !dbg !190
  %add55 = fadd double 0x40002AE59C598AC8, %mul54, !dbg !191
  %mul56 = fmul double %40, %add55, !dbg !192
  %add57 = fadd double 0xC0033A271C8A2D4B, %mul56, !dbg !193
  %mul58 = fmul double %39, %add57, !dbg !194
  %add59 = fadd double 1.000000e+00, %mul58, !dbg !195
  store double %add59, double* %q, align 8, !dbg !196
  %43 = load double, double* %z, align 8, !dbg !197
  %call = call double @sqrt(double %43) #5, !dbg !198
  store double %call, double* %s, align 8, !dbg !199
  %44 = load double, double* %p, align 8, !dbg !200
  %45 = load double, double* %q, align 8, !dbg !201
  %div60 = fdiv double %44, %45, !dbg !202
  store double %div60, double* %r, align 8, !dbg !203
  %46 = load double, double* %r, align 8, !dbg !204
  %47 = load double, double* %s, align 8, !dbg !205
  %mul61 = fmul double %46, %47, !dbg !206
  %sub62 = fsub double %mul61, 0x3C91A62633145C07, !dbg !207
  store double %sub62, double* %w, align 8, !dbg !208
  %48 = load double, double* %s, align 8, !dbg !209
  %49 = load double, double* %w, align 8, !dbg !210
  %add63 = fadd double %48, %49, !dbg !211
  %mul64 = fmul double 2.000000e+00, %add63, !dbg !212
  %sub65 = fsub double 0x400921FB54442D18, %mul64, !dbg !213
  store double %sub65, double* %retval, align 8, !dbg !214
  br label %return, !dbg !214

if.else66:                                        ; preds = %if.else36
  %50 = load double, double* %x.addr, align 8, !dbg !215
  %sub67 = fsub double 1.000000e+00, %50, !dbg !217
  %mul68 = fmul double %sub67, 5.000000e-01, !dbg !218
  store double %mul68, double* %z, align 8, !dbg !219
  %51 = load double, double* %z, align 8, !dbg !220
  %call69 = call double @sqrt(double %51) #5, !dbg !221
  store double %call69, double* %s, align 8, !dbg !222
  %52 = load double, double* %s, align 8, !dbg !223
  store double %52, double* %df, align 8, !dbg !224
  %53 = bitcast double* %df to i32*, !dbg !225
  %add.ptr70 = getelementptr inbounds i32, i32* %53, i64 1, !dbg !225
  store i32 0, i32* %add.ptr70, align 4, !dbg !226
  %54 = load double, double* %z, align 8, !dbg !227
  %55 = load double, double* %df, align 8, !dbg !228
  %56 = load double, double* %df, align 8, !dbg !229
  %mul71 = fmul double %55, %56, !dbg !230
  %sub72 = fsub double %54, %mul71, !dbg !231
  %57 = load double, double* %s, align 8, !dbg !232
  %58 = load double, double* %df, align 8, !dbg !233
  %add73 = fadd double %57, %58, !dbg !234
  %div74 = fdiv double %sub72, %add73, !dbg !235
  store double %div74, double* %c, align 8, !dbg !236
  %59 = load double, double* %z, align 8, !dbg !237
  %60 = load double, double* %z, align 8, !dbg !238
  %61 = load double, double* %z, align 8, !dbg !239
  %62 = load double, double* %z, align 8, !dbg !240
  %63 = load double, double* %z, align 8, !dbg !241
  %64 = load double, double* %z, align 8, !dbg !242
  %mul75 = fmul double %64, 0x3F023DE10DFDF709, !dbg !243
  %add76 = fadd double 0x3F49EFE07501B288, %mul75, !dbg !244
  %mul77 = fmul double %63, %add76, !dbg !245
  %add78 = fadd double 0xBFA48228B5688F3B, %mul77, !dbg !246
  %mul79 = fmul double %62, %add78, !dbg !247
  %add80 = fadd double 0x3FC9C1550E884455, %mul79, !dbg !248
  %mul81 = fmul double %61, %add80, !dbg !249
  %add82 = fadd double 0xBFD4D61203EB6F7D, %mul81, !dbg !250
  %mul83 = fmul double %60, %add82, !dbg !251
  %add84 = fadd double 0x3FC5555555555555, %mul83, !dbg !252
  %mul85 = fmul double %59, %add84, !dbg !253
  store double %mul85, double* %p, align 8, !dbg !254
  %65 = load double, double* %z, align 8, !dbg !255
  %66 = load double, double* %z, align 8, !dbg !256
  %67 = load double, double* %z, align 8, !dbg !257
  %68 = load double, double* %z, align 8, !dbg !258
  %mul86 = fmul double %68, 0x3FB3B8C5B12E9282, !dbg !259
  %add87 = fadd double 0xBFE6066C1B8D0159, %mul86, !dbg !260
  %mul88 = fmul double %67, %add87, !dbg !261
  %add89 = fadd double 0x40002AE59C598AC8, %mul88, !dbg !262
  %mul90 = fmul double %66, %add89, !dbg !263
  %add91 = fadd double 0xC0033A271C8A2D4B, %mul90, !dbg !264
  %mul92 = fmul double %65, %add91, !dbg !265
  %add93 = fadd double 1.000000e+00, %mul92, !dbg !266
  store double %add93, double* %q, align 8, !dbg !267
  %69 = load double, double* %p, align 8, !dbg !268
  %70 = load double, double* %q, align 8, !dbg !269
  %div94 = fdiv double %69, %70, !dbg !270
  store double %div94, double* %r, align 8, !dbg !271
  %71 = load double, double* %r, align 8, !dbg !272
  %72 = load double, double* %s, align 8, !dbg !273
  %mul95 = fmul double %71, %72, !dbg !274
  %73 = load double, double* %c, align 8, !dbg !275
  %add96 = fadd double %mul95, %73, !dbg !276
  store double %add96, double* %w, align 8, !dbg !277
  %74 = load double, double* %df, align 8, !dbg !278
  %75 = load double, double* %w, align 8, !dbg !279
  %add97 = fadd double %74, %75, !dbg !280
  %mul98 = fmul double 2.000000e+00, %add97, !dbg !281
  store double %mul98, double* %retval, align 8, !dbg !282
  br label %return, !dbg !282

return:                                           ; preds = %if.else66, %if.then38, %if.end12, %if.then11, %if.end, %if.else, %if.then4
  %76 = load double, double* %retval, align 8, !dbg !283
  ret double %76, !dbg !283
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !284 {
entry:
  %retval = alloca i32, align 4
  %x = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %x, metadata !287, metadata !DIExpression()), !dbg !288
  %0 = bitcast double* %x to i8*, !dbg !289
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !290
  %1 = load double, double* %x, align 8, !dbg !291
  %cmp = fcmp oge double %1, -2.000000e+00, !dbg !292
  %conv = zext i1 %cmp to i32, !dbg !292
  %conv1 = sext i32 %conv to i64, !dbg !291
  call void @klee_assume(i64 %conv1), !dbg !293
  %2 = load double, double* %x, align 8, !dbg !294
  %cmp2 = fcmp ole double %2, 2.000000e+00, !dbg !295
  %conv3 = zext i1 %cmp2 to i32, !dbg !295
  %conv4 = sext i32 %conv3 to i64, !dbg !294
  call void @klee_assume(i64 %conv4), !dbg !296
  call void @llvm.dbg.declare(metadata double* %r, metadata !297, metadata !DIExpression()), !dbg !298
  %3 = load double, double* %x, align 8, !dbg !299
  %call = call double @__ieee754_acos(double %3), !dbg !300
  store double %call, double* %r, align 8, !dbg !298
  %4 = load double, double* %r, align 8, !dbg !301
  %cmp5 = fcmp ogt double %4, 1.000000e+00, !dbg !303
  br i1 %cmp5, label %if.then, label %if.end, !dbg !304

if.then:                                          ; preds = %entry
  %call7 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !305
  br label %if.end, !dbg !307

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !308
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #3

declare dso_local void @klee_assume(i64) #3

; Function Attrs: noreturn
declare dso_local i32 @__assert_fail(...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !6, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "e_acos.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression(DW_OP_constu, 4614256656552045848, DW_OP_stack_value))
!8 = distinct !DIGlobalVariable(name: "pi", scope: !0, file: !1, line: 49, type: !9, isLocal: true, isDefinition: true)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression(DW_OP_constu, 4364452196894661639, DW_OP_stack_value))
!12 = distinct !DIGlobalVariable(name: "pio2_lo", scope: !0, file: !1, line: 51, type: !9, isLocal: true, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression(DW_OP_constu, 4609753056924675352, DW_OP_stack_value))
!14 = distinct !DIGlobalVariable(name: "pio2_hi", scope: !0, file: !1, line: 50, type: !9, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression(DW_OP_constu, 4595172819793696085, DW_OP_stack_value))
!16 = distinct !DIGlobalVariable(name: "pS0", scope: !0, file: !1, line: 52, type: !9, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression(DW_OP_constu, 13822908529170411389, DW_OP_stack_value))
!18 = distinct !DIGlobalVariable(name: "pS1", scope: !0, file: !1, line: 53, type: !9, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression(DW_OP_constu, 4596417465768494165, DW_OP_stack_value))
!20 = distinct !DIGlobalVariable(name: "pS2", scope: !0, file: !1, line: 54, type: !9, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression(DW_OP_constu, 13809305468778614587, DW_OP_stack_value))
!22 = distinct !DIGlobalVariable(name: "pS3", scope: !0, file: !1, line: 55, type: !9, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression(DW_OP_constu, 4560439845004096136, DW_OP_stack_value))
!24 = distinct !DIGlobalVariable(name: "pS4", scope: !0, file: !1, line: 56, type: !9, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression(DW_OP_constu, 4540259411154564873, DW_OP_stack_value))
!26 = distinct !DIGlobalVariable(name: "pS5", scope: !0, file: !1, line: 57, type: !9, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!28 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 48, type: !9, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression(DW_OP_constu, 13835966419869248843, DW_OP_stack_value))
!30 = distinct !DIGlobalVariable(name: "qS1", scope: !0, file: !1, line: 58, type: !9, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression(DW_OP_constu, 4611733184086379208, DW_OP_stack_value))
!32 = distinct !DIGlobalVariable(name: "qS2", scope: !0, file: !1, line: 59, type: !9, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression(DW_OP_constu, 13827746767276147033, DW_OP_stack_value))
!34 = distinct !DIGlobalVariable(name: "qS3", scope: !0, file: !1, line: 60, type: !9, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression(DW_OP_constu, 4590215604441354882, DW_OP_stack_value))
!36 = distinct !DIGlobalVariable(name: "qS4", scope: !0, file: !1, line: 61, type: !9, isLocal: true, isDefinition: true)
!37 = !{i32 7, !"Dwarf Version", i32 4}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 4}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!43 = distinct !DISubprogram(name: "__ieee754_acos", scope: !1, file: !1, line: 64, type: !44, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!44 = !DISubroutineType(types: !45)
!45 = !{!10, !10}
!46 = !DILocalVariable(name: "x", arg: 1, scope: !43, file: !1, line: 64, type: !10)
!47 = !DILocation(line: 64, column: 31, scope: !43)
!48 = !DILocalVariable(name: "z", scope: !43, file: !1, line: 70, type: !10)
!49 = !DILocation(line: 70, column: 9, scope: !43)
!50 = !DILocalVariable(name: "p", scope: !43, file: !1, line: 70, type: !10)
!51 = !DILocation(line: 70, column: 11, scope: !43)
!52 = !DILocalVariable(name: "q", scope: !43, file: !1, line: 70, type: !10)
!53 = !DILocation(line: 70, column: 13, scope: !43)
!54 = !DILocalVariable(name: "r", scope: !43, file: !1, line: 70, type: !10)
!55 = !DILocation(line: 70, column: 15, scope: !43)
!56 = !DILocalVariable(name: "w", scope: !43, file: !1, line: 70, type: !10)
!57 = !DILocation(line: 70, column: 17, scope: !43)
!58 = !DILocalVariable(name: "s", scope: !43, file: !1, line: 70, type: !10)
!59 = !DILocation(line: 70, column: 19, scope: !43)
!60 = !DILocalVariable(name: "c", scope: !43, file: !1, line: 70, type: !10)
!61 = !DILocation(line: 70, column: 21, scope: !43)
!62 = !DILocalVariable(name: "df", scope: !43, file: !1, line: 70, type: !10)
!63 = !DILocation(line: 70, column: 23, scope: !43)
!64 = !DILocalVariable(name: "hx", scope: !43, file: !1, line: 71, type: !5)
!65 = !DILocation(line: 71, column: 6, scope: !43)
!66 = !DILocalVariable(name: "ix", scope: !43, file: !1, line: 71, type: !5)
!67 = !DILocation(line: 71, column: 9, scope: !43)
!68 = !DILocation(line: 72, column: 7, scope: !43)
!69 = !DILocation(line: 72, column: 5, scope: !43)
!70 = !DILocation(line: 73, column: 7, scope: !43)
!71 = !DILocation(line: 73, column: 9, scope: !43)
!72 = !DILocation(line: 73, column: 5, scope: !43)
!73 = !DILocation(line: 74, column: 5, scope: !74)
!74 = distinct !DILexicalBlock(scope: !43, file: !1, line: 74, column: 5)
!75 = !DILocation(line: 74, column: 7, scope: !74)
!76 = !DILocation(line: 74, column: 5, scope: !43)
!77 = !DILocation(line: 75, column: 11, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 75, column: 9)
!79 = distinct !DILexicalBlock(scope: !74, file: !1, line: 74, column: 21)
!80 = !DILocation(line: 75, column: 13, scope: !78)
!81 = !DILocation(line: 75, column: 26, scope: !78)
!82 = !DILocation(line: 75, column: 25, scope: !78)
!83 = !DILocation(line: 75, column: 34, scope: !78)
!84 = !DILocation(line: 75, column: 9, scope: !79)
!85 = !DILocation(line: 76, column: 6, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !1, line: 76, column: 6)
!87 = distinct !DILexicalBlock(scope: !78, file: !1, line: 75, column: 39)
!88 = !DILocation(line: 76, column: 8, scope: !86)
!89 = !DILocation(line: 76, column: 6, scope: !87)
!90 = !DILocation(line: 76, column: 12, scope: !86)
!91 = !DILocation(line: 77, column: 8, scope: !86)
!92 = !DILocation(line: 79, column: 14, scope: !79)
!93 = !DILocation(line: 79, column: 16, scope: !79)
!94 = !DILocation(line: 79, column: 15, scope: !79)
!95 = !DILocation(line: 79, column: 20, scope: !79)
!96 = !DILocation(line: 79, column: 22, scope: !79)
!97 = !DILocation(line: 79, column: 21, scope: !79)
!98 = !DILocation(line: 79, column: 18, scope: !79)
!99 = !DILocation(line: 79, column: 6, scope: !79)
!100 = !DILocation(line: 81, column: 5, scope: !101)
!101 = distinct !DILexicalBlock(scope: !43, file: !1, line: 81, column: 5)
!102 = !DILocation(line: 81, column: 7, scope: !101)
!103 = !DILocation(line: 81, column: 5, scope: !43)
!104 = !DILocation(line: 82, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 82, column: 9)
!106 = distinct !DILexicalBlock(scope: !101, file: !1, line: 81, column: 20)
!107 = !DILocation(line: 82, column: 11, scope: !105)
!108 = !DILocation(line: 82, column: 9, scope: !106)
!109 = !DILocation(line: 82, column: 25, scope: !105)
!110 = !DILocation(line: 83, column: 10, scope: !106)
!111 = !DILocation(line: 83, column: 12, scope: !106)
!112 = !DILocation(line: 83, column: 11, scope: !106)
!113 = !DILocation(line: 83, column: 8, scope: !106)
!114 = !DILocation(line: 84, column: 10, scope: !106)
!115 = !DILocation(line: 84, column: 17, scope: !106)
!116 = !DILocation(line: 84, column: 24, scope: !106)
!117 = !DILocation(line: 84, column: 31, scope: !106)
!118 = !DILocation(line: 84, column: 38, scope: !106)
!119 = !DILocation(line: 84, column: 45, scope: !106)
!120 = !DILocation(line: 84, column: 46, scope: !106)
!121 = !DILocation(line: 84, column: 44, scope: !106)
!122 = !DILocation(line: 84, column: 39, scope: !106)
!123 = !DILocation(line: 84, column: 37, scope: !106)
!124 = !DILocation(line: 84, column: 32, scope: !106)
!125 = !DILocation(line: 84, column: 30, scope: !106)
!126 = !DILocation(line: 84, column: 25, scope: !106)
!127 = !DILocation(line: 84, column: 23, scope: !106)
!128 = !DILocation(line: 84, column: 18, scope: !106)
!129 = !DILocation(line: 84, column: 16, scope: !106)
!130 = !DILocation(line: 84, column: 11, scope: !106)
!131 = !DILocation(line: 84, column: 8, scope: !106)
!132 = !DILocation(line: 85, column: 14, scope: !106)
!133 = !DILocation(line: 85, column: 21, scope: !106)
!134 = !DILocation(line: 85, column: 28, scope: !106)
!135 = !DILocation(line: 85, column: 35, scope: !106)
!136 = !DILocation(line: 85, column: 36, scope: !106)
!137 = !DILocation(line: 85, column: 34, scope: !106)
!138 = !DILocation(line: 85, column: 29, scope: !106)
!139 = !DILocation(line: 85, column: 27, scope: !106)
!140 = !DILocation(line: 85, column: 22, scope: !106)
!141 = !DILocation(line: 85, column: 20, scope: !106)
!142 = !DILocation(line: 85, column: 15, scope: !106)
!143 = !DILocation(line: 85, column: 13, scope: !106)
!144 = !DILocation(line: 85, column: 8, scope: !106)
!145 = !DILocation(line: 86, column: 10, scope: !106)
!146 = !DILocation(line: 86, column: 12, scope: !106)
!147 = !DILocation(line: 86, column: 11, scope: !106)
!148 = !DILocation(line: 86, column: 8, scope: !106)
!149 = !DILocation(line: 87, column: 24, scope: !106)
!150 = !DILocation(line: 87, column: 37, scope: !106)
!151 = !DILocation(line: 87, column: 39, scope: !106)
!152 = !DILocation(line: 87, column: 38, scope: !106)
!153 = !DILocation(line: 87, column: 36, scope: !106)
!154 = !DILocation(line: 87, column: 26, scope: !106)
!155 = !DILocation(line: 87, column: 21, scope: !106)
!156 = !DILocation(line: 87, column: 6, scope: !106)
!157 = !DILocation(line: 88, column: 14, scope: !158)
!158 = distinct !DILexicalBlock(scope: !101, file: !1, line: 88, column: 14)
!159 = !DILocation(line: 88, column: 16, scope: !158)
!160 = !DILocation(line: 88, column: 14, scope: !101)
!161 = !DILocation(line: 89, column: 15, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !1, line: 88, column: 20)
!163 = !DILocation(line: 89, column: 14, scope: !162)
!164 = !DILocation(line: 89, column: 17, scope: !162)
!165 = !DILocation(line: 89, column: 8, scope: !162)
!166 = !DILocation(line: 90, column: 10, scope: !162)
!167 = !DILocation(line: 90, column: 17, scope: !162)
!168 = !DILocation(line: 90, column: 24, scope: !162)
!169 = !DILocation(line: 90, column: 31, scope: !162)
!170 = !DILocation(line: 90, column: 38, scope: !162)
!171 = !DILocation(line: 90, column: 45, scope: !162)
!172 = !DILocation(line: 90, column: 46, scope: !162)
!173 = !DILocation(line: 90, column: 44, scope: !162)
!174 = !DILocation(line: 90, column: 39, scope: !162)
!175 = !DILocation(line: 90, column: 37, scope: !162)
!176 = !DILocation(line: 90, column: 32, scope: !162)
!177 = !DILocation(line: 90, column: 30, scope: !162)
!178 = !DILocation(line: 90, column: 25, scope: !162)
!179 = !DILocation(line: 90, column: 23, scope: !162)
!180 = !DILocation(line: 90, column: 18, scope: !162)
!181 = !DILocation(line: 90, column: 16, scope: !162)
!182 = !DILocation(line: 90, column: 11, scope: !162)
!183 = !DILocation(line: 90, column: 8, scope: !162)
!184 = !DILocation(line: 91, column: 14, scope: !162)
!185 = !DILocation(line: 91, column: 21, scope: !162)
!186 = !DILocation(line: 91, column: 28, scope: !162)
!187 = !DILocation(line: 91, column: 35, scope: !162)
!188 = !DILocation(line: 91, column: 36, scope: !162)
!189 = !DILocation(line: 91, column: 34, scope: !162)
!190 = !DILocation(line: 91, column: 29, scope: !162)
!191 = !DILocation(line: 91, column: 27, scope: !162)
!192 = !DILocation(line: 91, column: 22, scope: !162)
!193 = !DILocation(line: 91, column: 20, scope: !162)
!194 = !DILocation(line: 91, column: 15, scope: !162)
!195 = !DILocation(line: 91, column: 13, scope: !162)
!196 = !DILocation(line: 91, column: 8, scope: !162)
!197 = !DILocation(line: 92, column: 15, scope: !162)
!198 = !DILocation(line: 92, column: 10, scope: !162)
!199 = !DILocation(line: 92, column: 8, scope: !162)
!200 = !DILocation(line: 93, column: 10, scope: !162)
!201 = !DILocation(line: 93, column: 12, scope: !162)
!202 = !DILocation(line: 93, column: 11, scope: !162)
!203 = !DILocation(line: 93, column: 8, scope: !162)
!204 = !DILocation(line: 94, column: 10, scope: !162)
!205 = !DILocation(line: 94, column: 12, scope: !162)
!206 = !DILocation(line: 94, column: 11, scope: !162)
!207 = !DILocation(line: 94, column: 13, scope: !162)
!208 = !DILocation(line: 94, column: 8, scope: !162)
!209 = !DILocation(line: 95, column: 23, scope: !162)
!210 = !DILocation(line: 95, column: 25, scope: !162)
!211 = !DILocation(line: 95, column: 24, scope: !162)
!212 = !DILocation(line: 95, column: 21, scope: !162)
!213 = !DILocation(line: 95, column: 16, scope: !162)
!214 = !DILocation(line: 95, column: 6, scope: !162)
!215 = !DILocation(line: 97, column: 15, scope: !216)
!216 = distinct !DILexicalBlock(scope: !158, file: !1, line: 96, column: 9)
!217 = !DILocation(line: 97, column: 14, scope: !216)
!218 = !DILocation(line: 97, column: 17, scope: !216)
!219 = !DILocation(line: 97, column: 8, scope: !216)
!220 = !DILocation(line: 98, column: 15, scope: !216)
!221 = !DILocation(line: 98, column: 10, scope: !216)
!222 = !DILocation(line: 98, column: 8, scope: !216)
!223 = !DILocation(line: 99, column: 11, scope: !216)
!224 = !DILocation(line: 99, column: 9, scope: !216)
!225 = !DILocation(line: 100, column: 6, scope: !216)
!226 = !DILocation(line: 100, column: 15, scope: !216)
!227 = !DILocation(line: 101, column: 12, scope: !216)
!228 = !DILocation(line: 101, column: 14, scope: !216)
!229 = !DILocation(line: 101, column: 17, scope: !216)
!230 = !DILocation(line: 101, column: 16, scope: !216)
!231 = !DILocation(line: 101, column: 13, scope: !216)
!232 = !DILocation(line: 101, column: 22, scope: !216)
!233 = !DILocation(line: 101, column: 24, scope: !216)
!234 = !DILocation(line: 101, column: 23, scope: !216)
!235 = !DILocation(line: 101, column: 20, scope: !216)
!236 = !DILocation(line: 101, column: 9, scope: !216)
!237 = !DILocation(line: 102, column: 10, scope: !216)
!238 = !DILocation(line: 102, column: 17, scope: !216)
!239 = !DILocation(line: 102, column: 24, scope: !216)
!240 = !DILocation(line: 102, column: 31, scope: !216)
!241 = !DILocation(line: 102, column: 38, scope: !216)
!242 = !DILocation(line: 102, column: 45, scope: !216)
!243 = !DILocation(line: 102, column: 46, scope: !216)
!244 = !DILocation(line: 102, column: 44, scope: !216)
!245 = !DILocation(line: 102, column: 39, scope: !216)
!246 = !DILocation(line: 102, column: 37, scope: !216)
!247 = !DILocation(line: 102, column: 32, scope: !216)
!248 = !DILocation(line: 102, column: 30, scope: !216)
!249 = !DILocation(line: 102, column: 25, scope: !216)
!250 = !DILocation(line: 102, column: 23, scope: !216)
!251 = !DILocation(line: 102, column: 18, scope: !216)
!252 = !DILocation(line: 102, column: 16, scope: !216)
!253 = !DILocation(line: 102, column: 11, scope: !216)
!254 = !DILocation(line: 102, column: 8, scope: !216)
!255 = !DILocation(line: 103, column: 14, scope: !216)
!256 = !DILocation(line: 103, column: 21, scope: !216)
!257 = !DILocation(line: 103, column: 28, scope: !216)
!258 = !DILocation(line: 103, column: 35, scope: !216)
!259 = !DILocation(line: 103, column: 36, scope: !216)
!260 = !DILocation(line: 103, column: 34, scope: !216)
!261 = !DILocation(line: 103, column: 29, scope: !216)
!262 = !DILocation(line: 103, column: 27, scope: !216)
!263 = !DILocation(line: 103, column: 22, scope: !216)
!264 = !DILocation(line: 103, column: 20, scope: !216)
!265 = !DILocation(line: 103, column: 15, scope: !216)
!266 = !DILocation(line: 103, column: 13, scope: !216)
!267 = !DILocation(line: 103, column: 8, scope: !216)
!268 = !DILocation(line: 104, column: 10, scope: !216)
!269 = !DILocation(line: 104, column: 12, scope: !216)
!270 = !DILocation(line: 104, column: 11, scope: !216)
!271 = !DILocation(line: 104, column: 8, scope: !216)
!272 = !DILocation(line: 105, column: 10, scope: !216)
!273 = !DILocation(line: 105, column: 12, scope: !216)
!274 = !DILocation(line: 105, column: 11, scope: !216)
!275 = !DILocation(line: 105, column: 14, scope: !216)
!276 = !DILocation(line: 105, column: 13, scope: !216)
!277 = !DILocation(line: 105, column: 8, scope: !216)
!278 = !DILocation(line: 106, column: 18, scope: !216)
!279 = !DILocation(line: 106, column: 21, scope: !216)
!280 = !DILocation(line: 106, column: 20, scope: !216)
!281 = !DILocation(line: 106, column: 16, scope: !216)
!282 = !DILocation(line: 106, column: 6, scope: !216)
!283 = !DILocation(line: 108, column: 1, scope: !43)
!284 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 110, type: !285, scopeLine: 110, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!285 = !DISubroutineType(types: !286)
!286 = !{!5}
!287 = !DILocalVariable(name: "x", scope: !284, file: !1, line: 111, type: !10)
!288 = !DILocation(line: 111, column: 12, scope: !284)
!289 = !DILocation(line: 112, column: 24, scope: !284)
!290 = !DILocation(line: 112, column: 5, scope: !284)
!291 = !DILocation(line: 115, column: 17, scope: !284)
!292 = !DILocation(line: 115, column: 19, scope: !284)
!293 = !DILocation(line: 115, column: 5, scope: !284)
!294 = !DILocation(line: 116, column: 17, scope: !284)
!295 = !DILocation(line: 116, column: 19, scope: !284)
!296 = !DILocation(line: 116, column: 5, scope: !284)
!297 = !DILocalVariable(name: "r", scope: !284, file: !1, line: 118, type: !10)
!298 = !DILocation(line: 118, column: 12, scope: !284)
!299 = !DILocation(line: 118, column: 31, scope: !284)
!300 = !DILocation(line: 118, column: 16, scope: !284)
!301 = !DILocation(line: 121, column: 9, scope: !302)
!302 = distinct !DILexicalBlock(scope: !284, file: !1, line: 121, column: 9)
!303 = !DILocation(line: 121, column: 11, scope: !302)
!304 = !DILocation(line: 121, column: 9, scope: !284)
!305 = !DILocation(line: 122, column: 9, scope: !306)
!306 = distinct !DILexicalBlock(scope: !302, file: !1, line: 121, column: 18)
!307 = !DILocation(line: 123, column: 5, scope: !306)
!308 = !DILocation(line: 125, column: 5, scope: !284)
