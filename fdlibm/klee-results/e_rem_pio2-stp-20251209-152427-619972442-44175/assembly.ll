; ModuleID = 'e_rem_pio2.bc'
source_filename = "./e_rem_pio2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@npio2_hw = internal constant [32 x i32] [i32 1073291771, i32 1074340347, i32 1074977148, i32 1075388923, i32 1075800698, i32 1076025724, i32 1076231611, i32 1076437499, i32 1076643386, i32 1076849274, i32 1076971356, i32 1077074300, i32 1077177244, i32 1077280187, i32 1077383131, i32 1077486075, i32 1077589019, i32 1077691962, i32 1077794906, i32 1077897850, i32 1077968460, i32 1078019932, i32 1078071404, i32 1078122876, i32 1078174348, i32 1078225820, i32 1078277292, i32 1078328763, i32 1078380235, i32 1078431707, i32 1078483179, i32 1078534651], align 16, !dbg !0
@two_over_pi = internal constant [66 x i32] [i32 10680707, i32 7228996, i32 1387004, i32 2578385, i32 16069853, i32 12639074, i32 9804092, i32 4427841, i32 16666979, i32 11263675, i32 12935607, i32 2387514, i32 4345298, i32 14681673, i32 3074569, i32 13734428, i32 16653803, i32 1880361, i32 10960616, i32 8533493, i32 3062596, i32 8710556, i32 7349940, i32 6258241, i32 3772886, i32 3769171, i32 3798172, i32 8675211, i32 12450088, i32 3874808, i32 9961438, i32 366607, i32 15675153, i32 9132554, i32 7151469, i32 3571407, i32 2607881, i32 12013382, i32 4155038, i32 6285869, i32 7677882, i32 13102053, i32 15825725, i32 473591, i32 9065106, i32 15363067, i32 6271263, i32 9264392, i32 5636912, i32 4652155, i32 7056368, i32 13614112, i32 10155062, i32 1944035, i32 9527646, i32 15080200, i32 6658437, i32 6231200, i32 6832269, i32 16767104, i32 5075751, i32 3212806, i32 1398474, i32 7579849, i32 6349435, i32 12618859], align 16, !dbg !32
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ieee754_rem_pio2(double %x, double* %y) #0 !dbg !47 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double*, align 8
  %z = alloca double, align 8
  %w = alloca double, align 8
  %t = alloca double, align 8
  %r = alloca double, align 8
  %fn = alloca double, align 8
  %tx = alloca [3 x double], align 16
  %e0 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nx = alloca i32, align 4
  %n = alloca i32, align 4
  %ix = alloca i32, align 4
  %hx = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !51, metadata !DIExpression()), !dbg !52
  store double* %y, double** %y.addr, align 8
  call void @llvm.dbg.declare(metadata double** %y.addr, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata double* %z, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata double* %w, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata double* %t, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata double* %r, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata double* %fn, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata [3 x double]* %tx, metadata !65, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %e0, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i32* %i, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i32* %j, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %nx, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata i32* %n, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !80, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !82, metadata !DIExpression()), !dbg !83
  %0 = bitcast double* %x.addr to i32*, !dbg !84
  %1 = load i32, i32* %0, align 8, !dbg !84
  store i32 %1, i32* %hx, align 4, !dbg !85
  %2 = load i32, i32* %hx, align 4, !dbg !86
  %and = and i32 %2, 2147483647, !dbg !87
  store i32 %and, i32* %ix, align 4, !dbg !88
  %3 = load i32, i32* %ix, align 4, !dbg !89
  %cmp = icmp sle i32 %3, 1072243195, !dbg !91
  br i1 %cmp, label %if.then, label %if.end, !dbg !92

if.then:                                          ; preds = %entry
  %4 = load double, double* %x.addr, align 8, !dbg !93
  %5 = load double*, double** %y.addr, align 8, !dbg !95
  %arrayidx = getelementptr inbounds double, double* %5, i64 0, !dbg !95
  store double %4, double* %arrayidx, align 8, !dbg !96
  %6 = load double*, double** %y.addr, align 8, !dbg !97
  %arrayidx1 = getelementptr inbounds double, double* %6, i64 1, !dbg !97
  store double 0.000000e+00, double* %arrayidx1, align 8, !dbg !98
  store i32 0, i32* %retval, align 4, !dbg !99
  br label %return, !dbg !99

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %ix, align 4, !dbg !100
  %cmp2 = icmp slt i32 %7, 1073928572, !dbg !102
  br i1 %cmp2, label %if.then3, label %if.end40, !dbg !103

if.then3:                                         ; preds = %if.end
  %8 = load i32, i32* %hx, align 4, !dbg !104
  %cmp4 = icmp sgt i32 %8, 0, !dbg !107
  br i1 %cmp4, label %if.then5, label %if.else22, !dbg !108

if.then5:                                         ; preds = %if.then3
  %9 = load double, double* %x.addr, align 8, !dbg !109
  %sub = fsub double %9, 0x3FF921FB54400000, !dbg !111
  store double %sub, double* %z, align 8, !dbg !112
  %10 = load i32, i32* %ix, align 4, !dbg !113
  %cmp6 = icmp ne i32 %10, 1073291771, !dbg !115
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !116

if.then7:                                         ; preds = %if.then5
  %11 = load double, double* %z, align 8, !dbg !117
  %sub8 = fsub double %11, 0x3DD0B4611A626331, !dbg !119
  %12 = load double*, double** %y.addr, align 8, !dbg !120
  %arrayidx9 = getelementptr inbounds double, double* %12, i64 0, !dbg !120
  store double %sub8, double* %arrayidx9, align 8, !dbg !121
  %13 = load double, double* %z, align 8, !dbg !122
  %14 = load double*, double** %y.addr, align 8, !dbg !123
  %arrayidx10 = getelementptr inbounds double, double* %14, i64 0, !dbg !123
  %15 = load double, double* %arrayidx10, align 8, !dbg !123
  %sub11 = fsub double %13, %15, !dbg !124
  %sub12 = fsub double %sub11, 0x3DD0B4611A626331, !dbg !125
  %16 = load double*, double** %y.addr, align 8, !dbg !126
  %arrayidx13 = getelementptr inbounds double, double* %16, i64 1, !dbg !126
  store double %sub12, double* %arrayidx13, align 8, !dbg !127
  br label %if.end21, !dbg !128

if.else:                                          ; preds = %if.then5
  %17 = load double, double* %z, align 8, !dbg !129
  %sub14 = fsub double %17, 0x3DD0B4611A600000, !dbg !129
  store double %sub14, double* %z, align 8, !dbg !129
  %18 = load double, double* %z, align 8, !dbg !131
  %sub15 = fsub double %18, 0x3BA3198A2E037073, !dbg !132
  %19 = load double*, double** %y.addr, align 8, !dbg !133
  %arrayidx16 = getelementptr inbounds double, double* %19, i64 0, !dbg !133
  store double %sub15, double* %arrayidx16, align 8, !dbg !134
  %20 = load double, double* %z, align 8, !dbg !135
  %21 = load double*, double** %y.addr, align 8, !dbg !136
  %arrayidx17 = getelementptr inbounds double, double* %21, i64 0, !dbg !136
  %22 = load double, double* %arrayidx17, align 8, !dbg !136
  %sub18 = fsub double %20, %22, !dbg !137
  %sub19 = fsub double %sub18, 0x3BA3198A2E037073, !dbg !138
  %23 = load double*, double** %y.addr, align 8, !dbg !139
  %arrayidx20 = getelementptr inbounds double, double* %23, i64 1, !dbg !139
  store double %sub19, double* %arrayidx20, align 8, !dbg !140
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then7
  store i32 1, i32* %retval, align 4, !dbg !141
  br label %return, !dbg !141

if.else22:                                        ; preds = %if.then3
  %24 = load double, double* %x.addr, align 8, !dbg !142
  %add = fadd double %24, 0x3FF921FB54400000, !dbg !144
  store double %add, double* %z, align 8, !dbg !145
  %25 = load i32, i32* %ix, align 4, !dbg !146
  %cmp23 = icmp ne i32 %25, 1073291771, !dbg !148
  br i1 %cmp23, label %if.then24, label %if.else31, !dbg !149

if.then24:                                        ; preds = %if.else22
  %26 = load double, double* %z, align 8, !dbg !150
  %add25 = fadd double %26, 0x3DD0B4611A626331, !dbg !152
  %27 = load double*, double** %y.addr, align 8, !dbg !153
  %arrayidx26 = getelementptr inbounds double, double* %27, i64 0, !dbg !153
  store double %add25, double* %arrayidx26, align 8, !dbg !154
  %28 = load double, double* %z, align 8, !dbg !155
  %29 = load double*, double** %y.addr, align 8, !dbg !156
  %arrayidx27 = getelementptr inbounds double, double* %29, i64 0, !dbg !156
  %30 = load double, double* %arrayidx27, align 8, !dbg !156
  %sub28 = fsub double %28, %30, !dbg !157
  %add29 = fadd double %sub28, 0x3DD0B4611A626331, !dbg !158
  %31 = load double*, double** %y.addr, align 8, !dbg !159
  %arrayidx30 = getelementptr inbounds double, double* %31, i64 1, !dbg !159
  store double %add29, double* %arrayidx30, align 8, !dbg !160
  br label %if.end39, !dbg !161

if.else31:                                        ; preds = %if.else22
  %32 = load double, double* %z, align 8, !dbg !162
  %add32 = fadd double %32, 0x3DD0B4611A600000, !dbg !162
  store double %add32, double* %z, align 8, !dbg !162
  %33 = load double, double* %z, align 8, !dbg !164
  %add33 = fadd double %33, 0x3BA3198A2E037073, !dbg !165
  %34 = load double*, double** %y.addr, align 8, !dbg !166
  %arrayidx34 = getelementptr inbounds double, double* %34, i64 0, !dbg !166
  store double %add33, double* %arrayidx34, align 8, !dbg !167
  %35 = load double, double* %z, align 8, !dbg !168
  %36 = load double*, double** %y.addr, align 8, !dbg !169
  %arrayidx35 = getelementptr inbounds double, double* %36, i64 0, !dbg !169
  %37 = load double, double* %arrayidx35, align 8, !dbg !169
  %sub36 = fsub double %35, %37, !dbg !170
  %add37 = fadd double %sub36, 0x3BA3198A2E037073, !dbg !171
  %38 = load double*, double** %y.addr, align 8, !dbg !172
  %arrayidx38 = getelementptr inbounds double, double* %38, i64 1, !dbg !172
  store double %add37, double* %arrayidx38, align 8, !dbg !173
  br label %if.end39

if.end39:                                         ; preds = %if.else31, %if.then24
  store i32 -1, i32* %retval, align 4, !dbg !174
  br label %return, !dbg !174

if.end40:                                         ; preds = %if.end
  %39 = load i32, i32* %ix, align 4, !dbg !175
  %cmp41 = icmp sle i32 %39, 1094263291, !dbg !177
  br i1 %cmp41, label %if.then42, label %if.end107, !dbg !178

if.then42:                                        ; preds = %if.end40
  %40 = load double, double* %x.addr, align 8, !dbg !179
  %41 = call double @llvm.fabs.f64(double %40), !dbg !181
  store double %41, double* %t, align 8, !dbg !182
  %42 = load double, double* %t, align 8, !dbg !183
  %mul = fmul double %42, 0x3FE45F306DC9C883, !dbg !184
  %add43 = fadd double %mul, 5.000000e-01, !dbg !185
  %conv = fptosi double %add43 to i32, !dbg !186
  store i32 %conv, i32* %n, align 4, !dbg !187
  %43 = load i32, i32* %n, align 4, !dbg !188
  %conv44 = sitofp i32 %43 to double, !dbg !189
  store double %conv44, double* %fn, align 8, !dbg !190
  %44 = load double, double* %t, align 8, !dbg !191
  %45 = load double, double* %fn, align 8, !dbg !192
  %mul45 = fmul double %45, 0x3FF921FB54400000, !dbg !193
  %sub46 = fsub double %44, %mul45, !dbg !194
  store double %sub46, double* %r, align 8, !dbg !195
  %46 = load double, double* %fn, align 8, !dbg !196
  %mul47 = fmul double %46, 0x3DD0B4611A626331, !dbg !197
  store double %mul47, double* %w, align 8, !dbg !198
  %47 = load i32, i32* %n, align 4, !dbg !199
  %cmp48 = icmp slt i32 %47, 32, !dbg !201
  br i1 %cmp48, label %land.lhs.true, label %if.else57, !dbg !202

land.lhs.true:                                    ; preds = %if.then42
  %48 = load i32, i32* %ix, align 4, !dbg !203
  %49 = load i32, i32* %n, align 4, !dbg !204
  %sub50 = sub nsw i32 %49, 1, !dbg !205
  %idxprom = sext i32 %sub50 to i64, !dbg !206
  %arrayidx51 = getelementptr inbounds [32 x i32], [32 x i32]* @npio2_hw, i64 0, i64 %idxprom, !dbg !206
  %50 = load i32, i32* %arrayidx51, align 4, !dbg !206
  %cmp52 = icmp ne i32 %48, %50, !dbg !207
  br i1 %cmp52, label %if.then54, label %if.else57, !dbg !208

if.then54:                                        ; preds = %land.lhs.true
  %51 = load double, double* %r, align 8, !dbg !209
  %52 = load double, double* %w, align 8, !dbg !211
  %sub55 = fsub double %51, %52, !dbg !212
  %53 = load double*, double** %y.addr, align 8, !dbg !213
  %arrayidx56 = getelementptr inbounds double, double* %53, i64 0, !dbg !213
  store double %sub55, double* %arrayidx56, align 8, !dbg !214
  br label %if.end92, !dbg !215

if.else57:                                        ; preds = %land.lhs.true, %if.then42
  %54 = load i32, i32* %ix, align 4, !dbg !216
  %shr = ashr i32 %54, 20, !dbg !218
  store i32 %shr, i32* %j, align 4, !dbg !219
  %55 = load double, double* %r, align 8, !dbg !220
  %56 = load double, double* %w, align 8, !dbg !221
  %sub58 = fsub double %55, %56, !dbg !222
  %57 = load double*, double** %y.addr, align 8, !dbg !223
  %arrayidx59 = getelementptr inbounds double, double* %57, i64 0, !dbg !223
  store double %sub58, double* %arrayidx59, align 8, !dbg !224
  %58 = load i32, i32* %j, align 4, !dbg !225
  %59 = load double*, double** %y.addr, align 8, !dbg !226
  %arrayidx60 = getelementptr inbounds double, double* %59, i64 0, !dbg !226
  %60 = bitcast double* %arrayidx60 to i32*, !dbg !226
  %61 = load i32, i32* %60, align 4, !dbg !226
  %shr61 = ashr i32 %61, 20, !dbg !227
  %and62 = and i32 %shr61, 2047, !dbg !228
  %sub63 = sub nsw i32 %58, %and62, !dbg !229
  store i32 %sub63, i32* %i, align 4, !dbg !230
  %62 = load i32, i32* %i, align 4, !dbg !231
  %cmp64 = icmp sgt i32 %62, 16, !dbg !233
  br i1 %cmp64, label %if.then66, label %if.end91, !dbg !234

if.then66:                                        ; preds = %if.else57
  %63 = load double, double* %r, align 8, !dbg !235
  store double %63, double* %t, align 8, !dbg !237
  %64 = load double, double* %fn, align 8, !dbg !238
  %mul67 = fmul double %64, 0x3DD0B4611A600000, !dbg !239
  store double %mul67, double* %w, align 8, !dbg !240
  %65 = load double, double* %t, align 8, !dbg !241
  %66 = load double, double* %w, align 8, !dbg !242
  %sub68 = fsub double %65, %66, !dbg !243
  store double %sub68, double* %r, align 8, !dbg !244
  %67 = load double, double* %fn, align 8, !dbg !245
  %mul69 = fmul double %67, 0x3BA3198A2E037073, !dbg !246
  %68 = load double, double* %t, align 8, !dbg !247
  %69 = load double, double* %r, align 8, !dbg !248
  %sub70 = fsub double %68, %69, !dbg !249
  %70 = load double, double* %w, align 8, !dbg !250
  %sub71 = fsub double %sub70, %70, !dbg !251
  %sub72 = fsub double %mul69, %sub71, !dbg !252
  store double %sub72, double* %w, align 8, !dbg !253
  %71 = load double, double* %r, align 8, !dbg !254
  %72 = load double, double* %w, align 8, !dbg !255
  %sub73 = fsub double %71, %72, !dbg !256
  %73 = load double*, double** %y.addr, align 8, !dbg !257
  %arrayidx74 = getelementptr inbounds double, double* %73, i64 0, !dbg !257
  store double %sub73, double* %arrayidx74, align 8, !dbg !258
  %74 = load i32, i32* %j, align 4, !dbg !259
  %75 = load double*, double** %y.addr, align 8, !dbg !260
  %arrayidx75 = getelementptr inbounds double, double* %75, i64 0, !dbg !260
  %76 = bitcast double* %arrayidx75 to i32*, !dbg !260
  %77 = load i32, i32* %76, align 4, !dbg !260
  %shr76 = ashr i32 %77, 20, !dbg !261
  %and77 = and i32 %shr76, 2047, !dbg !262
  %sub78 = sub nsw i32 %74, %and77, !dbg !263
  store i32 %sub78, i32* %i, align 4, !dbg !264
  %78 = load i32, i32* %i, align 4, !dbg !265
  %cmp79 = icmp sgt i32 %78, 49, !dbg !267
  br i1 %cmp79, label %if.then81, label %if.end90, !dbg !268

if.then81:                                        ; preds = %if.then66
  %79 = load double, double* %r, align 8, !dbg !269
  store double %79, double* %t, align 8, !dbg !271
  %80 = load double, double* %fn, align 8, !dbg !272
  %mul82 = fmul double %80, 0x3BA3198A2E000000, !dbg !273
  store double %mul82, double* %w, align 8, !dbg !274
  %81 = load double, double* %t, align 8, !dbg !275
  %82 = load double, double* %w, align 8, !dbg !276
  %sub83 = fsub double %81, %82, !dbg !277
  store double %sub83, double* %r, align 8, !dbg !278
  %83 = load double, double* %fn, align 8, !dbg !279
  %mul84 = fmul double %83, 0x397B839A252049C1, !dbg !280
  %84 = load double, double* %t, align 8, !dbg !281
  %85 = load double, double* %r, align 8, !dbg !282
  %sub85 = fsub double %84, %85, !dbg !283
  %86 = load double, double* %w, align 8, !dbg !284
  %sub86 = fsub double %sub85, %86, !dbg !285
  %sub87 = fsub double %mul84, %sub86, !dbg !286
  store double %sub87, double* %w, align 8, !dbg !287
  %87 = load double, double* %r, align 8, !dbg !288
  %88 = load double, double* %w, align 8, !dbg !289
  %sub88 = fsub double %87, %88, !dbg !290
  %89 = load double*, double** %y.addr, align 8, !dbg !291
  %arrayidx89 = getelementptr inbounds double, double* %89, i64 0, !dbg !291
  store double %sub88, double* %arrayidx89, align 8, !dbg !292
  br label %if.end90, !dbg !293

if.end90:                                         ; preds = %if.then81, %if.then66
  br label %if.end91, !dbg !294

if.end91:                                         ; preds = %if.end90, %if.else57
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.then54
  %90 = load double, double* %r, align 8, !dbg !295
  %91 = load double*, double** %y.addr, align 8, !dbg !296
  %arrayidx93 = getelementptr inbounds double, double* %91, i64 0, !dbg !296
  %92 = load double, double* %arrayidx93, align 8, !dbg !296
  %sub94 = fsub double %90, %92, !dbg !297
  %93 = load double, double* %w, align 8, !dbg !298
  %sub95 = fsub double %sub94, %93, !dbg !299
  %94 = load double*, double** %y.addr, align 8, !dbg !300
  %arrayidx96 = getelementptr inbounds double, double* %94, i64 1, !dbg !300
  store double %sub95, double* %arrayidx96, align 8, !dbg !301
  %95 = load i32, i32* %hx, align 4, !dbg !302
  %cmp97 = icmp slt i32 %95, 0, !dbg !304
  br i1 %cmp97, label %if.then99, label %if.else106, !dbg !305

if.then99:                                        ; preds = %if.end92
  %96 = load double*, double** %y.addr, align 8, !dbg !306
  %arrayidx100 = getelementptr inbounds double, double* %96, i64 0, !dbg !306
  %97 = load double, double* %arrayidx100, align 8, !dbg !306
  %fneg = fneg double %97, !dbg !308
  %98 = load double*, double** %y.addr, align 8, !dbg !309
  %arrayidx101 = getelementptr inbounds double, double* %98, i64 0, !dbg !309
  store double %fneg, double* %arrayidx101, align 8, !dbg !310
  %99 = load double*, double** %y.addr, align 8, !dbg !311
  %arrayidx102 = getelementptr inbounds double, double* %99, i64 1, !dbg !311
  %100 = load double, double* %arrayidx102, align 8, !dbg !311
  %fneg103 = fneg double %100, !dbg !312
  %101 = load double*, double** %y.addr, align 8, !dbg !313
  %arrayidx104 = getelementptr inbounds double, double* %101, i64 1, !dbg !313
  store double %fneg103, double* %arrayidx104, align 8, !dbg !314
  %102 = load i32, i32* %n, align 4, !dbg !315
  %sub105 = sub nsw i32 0, %102, !dbg !316
  store i32 %sub105, i32* %retval, align 4, !dbg !317
  br label %return, !dbg !317

if.else106:                                       ; preds = %if.end92
  %103 = load i32, i32* %n, align 4, !dbg !318
  store i32 %103, i32* %retval, align 4, !dbg !319
  br label %return, !dbg !319

if.end107:                                        ; preds = %if.end40
  %104 = load i32, i32* %ix, align 4, !dbg !320
  %cmp108 = icmp sge i32 %104, 2146435072, !dbg !322
  br i1 %cmp108, label %if.then110, label %if.end114, !dbg !323

if.then110:                                       ; preds = %if.end107
  %105 = load double, double* %x.addr, align 8, !dbg !324
  %106 = load double, double* %x.addr, align 8, !dbg !326
  %sub111 = fsub double %105, %106, !dbg !327
  %107 = load double*, double** %y.addr, align 8, !dbg !328
  %arrayidx112 = getelementptr inbounds double, double* %107, i64 1, !dbg !328
  store double %sub111, double* %arrayidx112, align 8, !dbg !329
  %108 = load double*, double** %y.addr, align 8, !dbg !330
  %arrayidx113 = getelementptr inbounds double, double* %108, i64 0, !dbg !330
  store double %sub111, double* %arrayidx113, align 8, !dbg !331
  store i32 0, i32* %retval, align 4, !dbg !332
  br label %return, !dbg !332

if.end114:                                        ; preds = %if.end107
  %109 = bitcast double* %x.addr to i32*, !dbg !333
  %add.ptr = getelementptr inbounds i32, i32* %109, i64 1, !dbg !333
  %110 = load i32, i32* %add.ptr, align 4, !dbg !333
  %111 = bitcast double* %z to i32*, !dbg !334
  %add.ptr115 = getelementptr inbounds i32, i32* %111, i64 1, !dbg !334
  store i32 %110, i32* %add.ptr115, align 4, !dbg !335
  %112 = load i32, i32* %ix, align 4, !dbg !336
  %shr116 = ashr i32 %112, 20, !dbg !337
  %sub117 = sub nsw i32 %shr116, 1046, !dbg !338
  store i32 %sub117, i32* %e0, align 4, !dbg !339
  %113 = load i32, i32* %ix, align 4, !dbg !340
  %114 = load i32, i32* %e0, align 4, !dbg !341
  %shl = shl i32 %114, 20, !dbg !342
  %sub118 = sub nsw i32 %113, %shl, !dbg !343
  %115 = bitcast double* %z to i32*, !dbg !344
  store i32 %sub118, i32* %115, align 8, !dbg !345
  store i32 0, i32* %i, align 4, !dbg !346
  br label %for.cond, !dbg !348

for.cond:                                         ; preds = %for.inc, %if.end114
  %116 = load i32, i32* %i, align 4, !dbg !349
  %cmp119 = icmp slt i32 %116, 2, !dbg !351
  br i1 %cmp119, label %for.body, label %for.end, !dbg !352

for.body:                                         ; preds = %for.cond
  %117 = load double, double* %z, align 8, !dbg !353
  %conv121 = fptosi double %117 to i32, !dbg !355
  %conv122 = sitofp i32 %conv121 to double, !dbg !356
  %118 = load i32, i32* %i, align 4, !dbg !357
  %idxprom123 = sext i32 %118 to i64, !dbg !358
  %arrayidx124 = getelementptr inbounds [3 x double], [3 x double]* %tx, i64 0, i64 %idxprom123, !dbg !358
  store double %conv122, double* %arrayidx124, align 8, !dbg !359
  %119 = load double, double* %z, align 8, !dbg !360
  %120 = load i32, i32* %i, align 4, !dbg !361
  %idxprom125 = sext i32 %120 to i64, !dbg !362
  %arrayidx126 = getelementptr inbounds [3 x double], [3 x double]* %tx, i64 0, i64 %idxprom125, !dbg !362
  %121 = load double, double* %arrayidx126, align 8, !dbg !362
  %sub127 = fsub double %119, %121, !dbg !363
  %mul128 = fmul double %sub127, 0x4170000000000000, !dbg !364
  store double %mul128, double* %z, align 8, !dbg !365
  br label %for.inc, !dbg !366

for.inc:                                          ; preds = %for.body
  %122 = load i32, i32* %i, align 4, !dbg !367
  %inc = add nsw i32 %122, 1, !dbg !367
  store i32 %inc, i32* %i, align 4, !dbg !367
  br label %for.cond, !dbg !368, !llvm.loop !369

for.end:                                          ; preds = %for.cond
  %123 = load double, double* %z, align 8, !dbg !372
  %arrayidx129 = getelementptr inbounds [3 x double], [3 x double]* %tx, i64 0, i64 2, !dbg !373
  store double %123, double* %arrayidx129, align 16, !dbg !374
  store i32 3, i32* %nx, align 4, !dbg !375
  br label %while.cond, !dbg !376

while.cond:                                       ; preds = %while.body, %for.end
  %124 = load i32, i32* %nx, align 4, !dbg !377
  %sub130 = sub nsw i32 %124, 1, !dbg !378
  %idxprom131 = sext i32 %sub130 to i64, !dbg !379
  %arrayidx132 = getelementptr inbounds [3 x double], [3 x double]* %tx, i64 0, i64 %idxprom131, !dbg !379
  %125 = load double, double* %arrayidx132, align 8, !dbg !379
  %cmp133 = fcmp oeq double %125, 0.000000e+00, !dbg !380
  br i1 %cmp133, label %while.body, label %while.end, !dbg !376

while.body:                                       ; preds = %while.cond
  %126 = load i32, i32* %nx, align 4, !dbg !381
  %dec = add nsw i32 %126, -1, !dbg !381
  store i32 %dec, i32* %nx, align 4, !dbg !381
  br label %while.cond, !dbg !376, !llvm.loop !382

while.end:                                        ; preds = %while.cond
  %arraydecay = getelementptr inbounds [3 x double], [3 x double]* %tx, i64 0, i64 0, !dbg !383
  %127 = load double*, double** %y.addr, align 8, !dbg !384
  %128 = load i32, i32* %e0, align 4, !dbg !385
  %129 = load i32, i32* %nx, align 4, !dbg !386
  %call = call i32 @__kernel_rem_pio2(double* %arraydecay, double* %127, i32 %128, i32 %129, i32 2, i32* getelementptr inbounds ([66 x i32], [66 x i32]* @two_over_pi, i64 0, i64 0)), !dbg !387
  store i32 %call, i32* %n, align 4, !dbg !388
  %130 = load i32, i32* %hx, align 4, !dbg !389
  %cmp135 = icmp slt i32 %130, 0, !dbg !391
  br i1 %cmp135, label %if.then137, label %if.end145, !dbg !392

if.then137:                                       ; preds = %while.end
  %131 = load double*, double** %y.addr, align 8, !dbg !393
  %arrayidx138 = getelementptr inbounds double, double* %131, i64 0, !dbg !393
  %132 = load double, double* %arrayidx138, align 8, !dbg !393
  %fneg139 = fneg double %132, !dbg !395
  %133 = load double*, double** %y.addr, align 8, !dbg !396
  %arrayidx140 = getelementptr inbounds double, double* %133, i64 0, !dbg !396
  store double %fneg139, double* %arrayidx140, align 8, !dbg !397
  %134 = load double*, double** %y.addr, align 8, !dbg !398
  %arrayidx141 = getelementptr inbounds double, double* %134, i64 1, !dbg !398
  %135 = load double, double* %arrayidx141, align 8, !dbg !398
  %fneg142 = fneg double %135, !dbg !399
  %136 = load double*, double** %y.addr, align 8, !dbg !400
  %arrayidx143 = getelementptr inbounds double, double* %136, i64 1, !dbg !400
  store double %fneg142, double* %arrayidx143, align 8, !dbg !401
  %137 = load i32, i32* %n, align 4, !dbg !402
  %sub144 = sub nsw i32 0, %137, !dbg !403
  store i32 %sub144, i32* %retval, align 4, !dbg !404
  br label %return, !dbg !404

if.end145:                                        ; preds = %while.end
  %138 = load i32, i32* %n, align 4, !dbg !405
  store i32 %138, i32* %retval, align 4, !dbg !406
  br label %return, !dbg !406

return:                                           ; preds = %if.end145, %if.then137, %if.then110, %if.else106, %if.then99, %if.end39, %if.end21, %if.then
  %139 = load i32, i32* %retval, align 4, !dbg !407
  ret i32 %139, !dbg !407
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

declare dso_local i32 @__kernel_rem_pio2(double*, double*, i32, i32, i32, i32*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !408 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca double, align 8
  %r = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !411, metadata !DIExpression()), !dbg !412
  %0 = bitcast double* %a0 to i8*, !dbg !413
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !414
  call void @llvm.dbg.declare(metadata double* %a1, metadata !415, metadata !DIExpression()), !dbg !416
  %1 = bitcast double* %a1 to i8*, !dbg !417
  call void @klee_make_symbolic(i8* %1, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !418
  call void @llvm.dbg.declare(metadata i32* %r, metadata !419, metadata !DIExpression()), !dbg !420
  %2 = load double, double* %a0, align 8, !dbg !421
  %call = call i32 @__ieee754_rem_pio2(double %2, double* %a1), !dbg !422
  store i32 %call, i32* %r, align 4, !dbg !420
  ret i32 0, !dbg !423
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "npio2_hw", scope: !2, file: !12, line: 45, type: !38, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "e_rem_pio2.c", directory: "/home/klee/logic_bombs/fdlibm")
!4 = !{}
!5 = !{!6, !7, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!9 = !{!10, !14, !16, !18, !20, !22, !24, !26, !28, !30, !0, !32}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 4609753056924401664, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "pio2_1", scope: !2, file: !12, line: 76, type: !13, isLocal: true, isDefinition: true)
!12 = !DIFile(filename: "./e_rem_pio2.c", directory: "/home/klee/logic_bombs/fdlibm")
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4454258360616903473, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "pio2_1t", scope: !2, file: !12, line: 77, type: !13, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4454258360616747008, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "pio2_2", scope: !2, file: !12, line: 78, type: !13, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 4297306550709743731, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "pio2_2t", scope: !2, file: !12, line: 79, type: !13, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 4603909380684499075, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "invpio2", scope: !2, file: !12, line: 75, type: !13, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 4602678819172646912, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "half", scope: !2, file: !12, line: 73, type: !13, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression(DW_OP_constu, 4297306550709518336, DW_OP_stack_value))
!25 = distinct !DIGlobalVariable(name: "pio2_3", scope: !2, file: !12, line: 80, type: !13, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression(DW_OP_constu, 4142048980368378305, DW_OP_stack_value))
!27 = distinct !DIGlobalVariable(name: "pio2_3t", scope: !2, file: !12, line: 81, type: !13, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression(DW_OP_constu, 4715268809856909312, DW_OP_stack_value))
!29 = distinct !DIGlobalVariable(name: "two24", scope: !2, file: !12, line: 74, type: !13, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!31 = distinct !DIGlobalVariable(name: "zero", scope: !2, file: !12, line: 72, type: !13, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "two_over_pi", scope: !2, file: !12, line: 27, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2112, elements: !36)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!36 = !{!37}
!37 = !DISubrange(count: 66)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1024, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 32)
!41 = !{i32 7, !"Dwarf Version", i32 4}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 4}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!47 = distinct !DISubprogram(name: "__ieee754_rem_pio2", scope: !12, file: !12, line: 84, type: !48, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!48 = !DISubroutineType(types: !49)
!49 = !{!7, !8, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!51 = !DILocalVariable(name: "x", arg: 1, scope: !47, file: !12, line: 84, type: !8)
!52 = !DILocation(line: 84, column: 32, scope: !47)
!53 = !DILocalVariable(name: "y", arg: 2, scope: !47, file: !12, line: 84, type: !50)
!54 = !DILocation(line: 84, column: 43, scope: !47)
!55 = !DILocalVariable(name: "z", scope: !47, file: !12, line: 90, type: !8)
!56 = !DILocation(line: 90, column: 9, scope: !47)
!57 = !DILocalVariable(name: "w", scope: !47, file: !12, line: 90, type: !8)
!58 = !DILocation(line: 90, column: 11, scope: !47)
!59 = !DILocalVariable(name: "t", scope: !47, file: !12, line: 90, type: !8)
!60 = !DILocation(line: 90, column: 13, scope: !47)
!61 = !DILocalVariable(name: "r", scope: !47, file: !12, line: 90, type: !8)
!62 = !DILocation(line: 90, column: 15, scope: !47)
!63 = !DILocalVariable(name: "fn", scope: !47, file: !12, line: 90, type: !8)
!64 = !DILocation(line: 90, column: 17, scope: !47)
!65 = !DILocalVariable(name: "tx", scope: !47, file: !12, line: 91, type: !66)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 192, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 3)
!69 = !DILocation(line: 91, column: 9, scope: !47)
!70 = !DILocalVariable(name: "e0", scope: !47, file: !12, line: 92, type: !7)
!71 = !DILocation(line: 92, column: 6, scope: !47)
!72 = !DILocalVariable(name: "i", scope: !47, file: !12, line: 92, type: !7)
!73 = !DILocation(line: 92, column: 9, scope: !47)
!74 = !DILocalVariable(name: "j", scope: !47, file: !12, line: 92, type: !7)
!75 = !DILocation(line: 92, column: 11, scope: !47)
!76 = !DILocalVariable(name: "nx", scope: !47, file: !12, line: 92, type: !7)
!77 = !DILocation(line: 92, column: 13, scope: !47)
!78 = !DILocalVariable(name: "n", scope: !47, file: !12, line: 92, type: !7)
!79 = !DILocation(line: 92, column: 16, scope: !47)
!80 = !DILocalVariable(name: "ix", scope: !47, file: !12, line: 92, type: !7)
!81 = !DILocation(line: 92, column: 18, scope: !47)
!82 = !DILocalVariable(name: "hx", scope: !47, file: !12, line: 92, type: !7)
!83 = !DILocation(line: 92, column: 21, scope: !47)
!84 = !DILocation(line: 94, column: 7, scope: !47)
!85 = !DILocation(line: 94, column: 5, scope: !47)
!86 = !DILocation(line: 95, column: 7, scope: !47)
!87 = !DILocation(line: 95, column: 9, scope: !47)
!88 = !DILocation(line: 95, column: 5, scope: !47)
!89 = !DILocation(line: 96, column: 5, scope: !90)
!90 = distinct !DILexicalBlock(scope: !47, file: !12, line: 96, column: 5)
!91 = !DILocation(line: 96, column: 7, scope: !90)
!92 = !DILocation(line: 96, column: 5, scope: !47)
!93 = !DILocation(line: 97, column: 14, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !12, line: 97, column: 6)
!95 = !DILocation(line: 97, column: 7, scope: !94)
!96 = !DILocation(line: 97, column: 12, scope: !94)
!97 = !DILocation(line: 97, column: 17, scope: !94)
!98 = !DILocation(line: 97, column: 22, scope: !94)
!99 = !DILocation(line: 97, column: 27, scope: !94)
!100 = !DILocation(line: 98, column: 5, scope: !101)
!101 = distinct !DILexicalBlock(scope: !47, file: !12, line: 98, column: 5)
!102 = !DILocation(line: 98, column: 7, scope: !101)
!103 = !DILocation(line: 98, column: 5, scope: !47)
!104 = !DILocation(line: 99, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !12, line: 99, column: 9)
!106 = distinct !DILexicalBlock(scope: !101, file: !12, line: 98, column: 20)
!107 = !DILocation(line: 99, column: 11, scope: !105)
!108 = !DILocation(line: 99, column: 9, scope: !106)
!109 = !DILocation(line: 100, column: 7, scope: !110)
!110 = distinct !DILexicalBlock(scope: !105, file: !12, line: 99, column: 15)
!111 = !DILocation(line: 100, column: 9, scope: !110)
!112 = !DILocation(line: 100, column: 5, scope: !110)
!113 = !DILocation(line: 101, column: 6, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !12, line: 101, column: 6)
!115 = !DILocation(line: 101, column: 8, scope: !114)
!116 = !DILocation(line: 101, column: 6, scope: !110)
!117 = !DILocation(line: 102, column: 14, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !12, line: 101, column: 22)
!119 = !DILocation(line: 102, column: 16, scope: !118)
!120 = !DILocation(line: 102, column: 7, scope: !118)
!121 = !DILocation(line: 102, column: 12, scope: !118)
!122 = !DILocation(line: 103, column: 15, scope: !118)
!123 = !DILocation(line: 103, column: 17, scope: !118)
!124 = !DILocation(line: 103, column: 16, scope: !118)
!125 = !DILocation(line: 103, column: 22, scope: !118)
!126 = !DILocation(line: 103, column: 7, scope: !118)
!127 = !DILocation(line: 103, column: 12, scope: !118)
!128 = !DILocation(line: 104, column: 3, scope: !118)
!129 = !DILocation(line: 105, column: 9, scope: !130)
!130 = distinct !DILexicalBlock(scope: !114, file: !12, line: 104, column: 10)
!131 = !DILocation(line: 106, column: 14, scope: !130)
!132 = !DILocation(line: 106, column: 16, scope: !130)
!133 = !DILocation(line: 106, column: 7, scope: !130)
!134 = !DILocation(line: 106, column: 12, scope: !130)
!135 = !DILocation(line: 107, column: 15, scope: !130)
!136 = !DILocation(line: 107, column: 17, scope: !130)
!137 = !DILocation(line: 107, column: 16, scope: !130)
!138 = !DILocation(line: 107, column: 22, scope: !130)
!139 = !DILocation(line: 107, column: 7, scope: !130)
!140 = !DILocation(line: 107, column: 12, scope: !130)
!141 = !DILocation(line: 109, column: 3, scope: !110)
!142 = !DILocation(line: 111, column: 7, scope: !143)
!143 = distinct !DILexicalBlock(scope: !105, file: !12, line: 110, column: 13)
!144 = !DILocation(line: 111, column: 9, scope: !143)
!145 = !DILocation(line: 111, column: 5, scope: !143)
!146 = !DILocation(line: 112, column: 6, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !12, line: 112, column: 6)
!148 = !DILocation(line: 112, column: 8, scope: !147)
!149 = !DILocation(line: 112, column: 6, scope: !143)
!150 = !DILocation(line: 113, column: 14, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !12, line: 112, column: 22)
!152 = !DILocation(line: 113, column: 16, scope: !151)
!153 = !DILocation(line: 113, column: 7, scope: !151)
!154 = !DILocation(line: 113, column: 12, scope: !151)
!155 = !DILocation(line: 114, column: 15, scope: !151)
!156 = !DILocation(line: 114, column: 17, scope: !151)
!157 = !DILocation(line: 114, column: 16, scope: !151)
!158 = !DILocation(line: 114, column: 22, scope: !151)
!159 = !DILocation(line: 114, column: 7, scope: !151)
!160 = !DILocation(line: 114, column: 12, scope: !151)
!161 = !DILocation(line: 115, column: 3, scope: !151)
!162 = !DILocation(line: 116, column: 9, scope: !163)
!163 = distinct !DILexicalBlock(scope: !147, file: !12, line: 115, column: 10)
!164 = !DILocation(line: 117, column: 14, scope: !163)
!165 = !DILocation(line: 117, column: 16, scope: !163)
!166 = !DILocation(line: 117, column: 7, scope: !163)
!167 = !DILocation(line: 117, column: 12, scope: !163)
!168 = !DILocation(line: 118, column: 15, scope: !163)
!169 = !DILocation(line: 118, column: 17, scope: !163)
!170 = !DILocation(line: 118, column: 16, scope: !163)
!171 = !DILocation(line: 118, column: 22, scope: !163)
!172 = !DILocation(line: 118, column: 7, scope: !163)
!173 = !DILocation(line: 118, column: 12, scope: !163)
!174 = !DILocation(line: 120, column: 3, scope: !143)
!175 = !DILocation(line: 123, column: 5, scope: !176)
!176 = distinct !DILexicalBlock(scope: !47, file: !12, line: 123, column: 5)
!177 = !DILocation(line: 123, column: 7, scope: !176)
!178 = !DILocation(line: 123, column: 5, scope: !47)
!179 = !DILocation(line: 124, column: 16, scope: !180)
!180 = distinct !DILexicalBlock(scope: !176, file: !12, line: 123, column: 21)
!181 = !DILocation(line: 124, column: 11, scope: !180)
!182 = !DILocation(line: 124, column: 9, scope: !180)
!183 = !DILocation(line: 125, column: 18, scope: !180)
!184 = !DILocation(line: 125, column: 19, scope: !180)
!185 = !DILocation(line: 125, column: 27, scope: !180)
!186 = !DILocation(line: 125, column: 11, scope: !180)
!187 = !DILocation(line: 125, column: 9, scope: !180)
!188 = !DILocation(line: 126, column: 19, scope: !180)
!189 = !DILocation(line: 126, column: 11, scope: !180)
!190 = !DILocation(line: 126, column: 9, scope: !180)
!191 = !DILocation(line: 127, column: 11, scope: !180)
!192 = !DILocation(line: 127, column: 13, scope: !180)
!193 = !DILocation(line: 127, column: 15, scope: !180)
!194 = !DILocation(line: 127, column: 12, scope: !180)
!195 = !DILocation(line: 127, column: 9, scope: !180)
!196 = !DILocation(line: 128, column: 11, scope: !180)
!197 = !DILocation(line: 128, column: 13, scope: !180)
!198 = !DILocation(line: 128, column: 9, scope: !180)
!199 = !DILocation(line: 129, column: 9, scope: !200)
!200 = distinct !DILexicalBlock(scope: !180, file: !12, line: 129, column: 9)
!201 = !DILocation(line: 129, column: 10, scope: !200)
!202 = !DILocation(line: 129, column: 13, scope: !200)
!203 = !DILocation(line: 129, column: 15, scope: !200)
!204 = !DILocation(line: 129, column: 28, scope: !200)
!205 = !DILocation(line: 129, column: 29, scope: !200)
!206 = !DILocation(line: 129, column: 19, scope: !200)
!207 = !DILocation(line: 129, column: 17, scope: !200)
!208 = !DILocation(line: 129, column: 9, scope: !180)
!209 = !DILocation(line: 130, column: 10, scope: !210)
!210 = distinct !DILexicalBlock(scope: !200, file: !12, line: 129, column: 34)
!211 = !DILocation(line: 130, column: 12, scope: !210)
!212 = !DILocation(line: 130, column: 11, scope: !210)
!213 = !DILocation(line: 130, column: 3, scope: !210)
!214 = !DILocation(line: 130, column: 8, scope: !210)
!215 = !DILocation(line: 131, column: 6, scope: !210)
!216 = !DILocation(line: 132, column: 15, scope: !217)
!217 = distinct !DILexicalBlock(scope: !200, file: !12, line: 131, column: 13)
!218 = !DILocation(line: 132, column: 17, scope: !217)
!219 = !DILocation(line: 132, column: 13, scope: !217)
!220 = !DILocation(line: 133, column: 17, scope: !217)
!221 = !DILocation(line: 133, column: 19, scope: !217)
!222 = !DILocation(line: 133, column: 18, scope: !217)
!223 = !DILocation(line: 133, column: 10, scope: !217)
!224 = !DILocation(line: 133, column: 15, scope: !217)
!225 = !DILocation(line: 134, column: 14, scope: !217)
!226 = !DILocation(line: 134, column: 19, scope: !217)
!227 = !DILocation(line: 134, column: 30, scope: !217)
!228 = !DILocation(line: 134, column: 35, scope: !217)
!229 = !DILocation(line: 134, column: 15, scope: !217)
!230 = !DILocation(line: 134, column: 12, scope: !217)
!231 = !DILocation(line: 135, column: 13, scope: !232)
!232 = distinct !DILexicalBlock(scope: !217, file: !12, line: 135, column: 13)
!233 = !DILocation(line: 135, column: 14, scope: !232)
!234 = !DILocation(line: 135, column: 13, scope: !217)
!235 = !DILocation(line: 136, column: 12, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !12, line: 135, column: 19)
!237 = !DILocation(line: 136, column: 10, scope: !236)
!238 = !DILocation(line: 137, column: 12, scope: !236)
!239 = !DILocation(line: 137, column: 14, scope: !236)
!240 = !DILocation(line: 137, column: 10, scope: !236)
!241 = !DILocation(line: 138, column: 12, scope: !236)
!242 = !DILocation(line: 138, column: 14, scope: !236)
!243 = !DILocation(line: 138, column: 13, scope: !236)
!244 = !DILocation(line: 138, column: 10, scope: !236)
!245 = !DILocation(line: 139, column: 12, scope: !236)
!246 = !DILocation(line: 139, column: 14, scope: !236)
!247 = !DILocation(line: 139, column: 25, scope: !236)
!248 = !DILocation(line: 139, column: 27, scope: !236)
!249 = !DILocation(line: 139, column: 26, scope: !236)
!250 = !DILocation(line: 139, column: 30, scope: !236)
!251 = !DILocation(line: 139, column: 29, scope: !236)
!252 = !DILocation(line: 139, column: 22, scope: !236)
!253 = !DILocation(line: 139, column: 10, scope: !236)
!254 = !DILocation(line: 140, column: 14, scope: !236)
!255 = !DILocation(line: 140, column: 16, scope: !236)
!256 = !DILocation(line: 140, column: 15, scope: !236)
!257 = !DILocation(line: 140, column: 7, scope: !236)
!258 = !DILocation(line: 140, column: 12, scope: !236)
!259 = !DILocation(line: 141, column: 11, scope: !236)
!260 = !DILocation(line: 141, column: 16, scope: !236)
!261 = !DILocation(line: 141, column: 27, scope: !236)
!262 = !DILocation(line: 141, column: 32, scope: !236)
!263 = !DILocation(line: 141, column: 12, scope: !236)
!264 = !DILocation(line: 141, column: 9, scope: !236)
!265 = !DILocation(line: 142, column: 10, scope: !266)
!266 = distinct !DILexicalBlock(scope: !236, file: !12, line: 142, column: 10)
!267 = !DILocation(line: 142, column: 11, scope: !266)
!268 = !DILocation(line: 142, column: 10, scope: !236)
!269 = !DILocation(line: 143, column: 13, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !12, line: 142, column: 17)
!271 = !DILocation(line: 143, column: 11, scope: !270)
!272 = !DILocation(line: 144, column: 13, scope: !270)
!273 = !DILocation(line: 144, column: 15, scope: !270)
!274 = !DILocation(line: 144, column: 11, scope: !270)
!275 = !DILocation(line: 145, column: 13, scope: !270)
!276 = !DILocation(line: 145, column: 15, scope: !270)
!277 = !DILocation(line: 145, column: 14, scope: !270)
!278 = !DILocation(line: 145, column: 11, scope: !270)
!279 = !DILocation(line: 146, column: 13, scope: !270)
!280 = !DILocation(line: 146, column: 15, scope: !270)
!281 = !DILocation(line: 146, column: 26, scope: !270)
!282 = !DILocation(line: 146, column: 28, scope: !270)
!283 = !DILocation(line: 146, column: 27, scope: !270)
!284 = !DILocation(line: 146, column: 31, scope: !270)
!285 = !DILocation(line: 146, column: 30, scope: !270)
!286 = !DILocation(line: 146, column: 23, scope: !270)
!287 = !DILocation(line: 146, column: 11, scope: !270)
!288 = !DILocation(line: 147, column: 15, scope: !270)
!289 = !DILocation(line: 147, column: 17, scope: !270)
!290 = !DILocation(line: 147, column: 16, scope: !270)
!291 = !DILocation(line: 147, column: 8, scope: !270)
!292 = !DILocation(line: 147, column: 13, scope: !270)
!293 = !DILocation(line: 148, column: 7, scope: !270)
!294 = !DILocation(line: 149, column: 3, scope: !236)
!295 = !DILocation(line: 151, column: 14, scope: !180)
!296 = !DILocation(line: 151, column: 16, scope: !180)
!297 = !DILocation(line: 151, column: 15, scope: !180)
!298 = !DILocation(line: 151, column: 22, scope: !180)
!299 = !DILocation(line: 151, column: 21, scope: !180)
!300 = !DILocation(line: 151, column: 6, scope: !180)
!301 = !DILocation(line: 151, column: 11, scope: !180)
!302 = !DILocation(line: 152, column: 9, scope: !303)
!303 = distinct !DILexicalBlock(scope: !180, file: !12, line: 152, column: 9)
!304 = !DILocation(line: 152, column: 11, scope: !303)
!305 = !DILocation(line: 152, column: 9, scope: !180)
!306 = !DILocation(line: 152, column: 25, scope: !307)
!307 = distinct !DILexicalBlock(scope: !303, file: !12, line: 152, column: 16)
!308 = !DILocation(line: 152, column: 24, scope: !307)
!309 = !DILocation(line: 152, column: 17, scope: !307)
!310 = !DILocation(line: 152, column: 22, scope: !307)
!311 = !DILocation(line: 152, column: 39, scope: !307)
!312 = !DILocation(line: 152, column: 38, scope: !307)
!313 = !DILocation(line: 152, column: 31, scope: !307)
!314 = !DILocation(line: 152, column: 36, scope: !307)
!315 = !DILocation(line: 152, column: 53, scope: !307)
!316 = !DILocation(line: 152, column: 52, scope: !307)
!317 = !DILocation(line: 152, column: 45, scope: !307)
!318 = !DILocation(line: 153, column: 19, scope: !303)
!319 = !DILocation(line: 153, column: 12, scope: !303)
!320 = !DILocation(line: 158, column: 5, scope: !321)
!321 = distinct !DILexicalBlock(scope: !47, file: !12, line: 158, column: 5)
!322 = !DILocation(line: 158, column: 7, scope: !321)
!323 = !DILocation(line: 158, column: 5, scope: !47)
!324 = !DILocation(line: 159, column: 16, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !12, line: 158, column: 21)
!326 = !DILocation(line: 159, column: 18, scope: !325)
!327 = !DILocation(line: 159, column: 17, scope: !325)
!328 = !DILocation(line: 159, column: 11, scope: !325)
!329 = !DILocation(line: 159, column: 15, scope: !325)
!330 = !DILocation(line: 159, column: 6, scope: !325)
!331 = !DILocation(line: 159, column: 10, scope: !325)
!332 = !DILocation(line: 159, column: 21, scope: !325)
!333 = !DILocation(line: 162, column: 12, scope: !47)
!334 = !DILocation(line: 162, column: 2, scope: !47)
!335 = !DILocation(line: 162, column: 10, scope: !47)
!336 = !DILocation(line: 163, column: 9, scope: !47)
!337 = !DILocation(line: 163, column: 11, scope: !47)
!338 = !DILocation(line: 163, column: 16, scope: !47)
!339 = !DILocation(line: 163, column: 6, scope: !47)
!340 = !DILocation(line: 164, column: 12, scope: !47)
!341 = !DILocation(line: 164, column: 18, scope: !47)
!342 = !DILocation(line: 164, column: 20, scope: !47)
!343 = !DILocation(line: 164, column: 15, scope: !47)
!344 = !DILocation(line: 164, column: 2, scope: !47)
!345 = !DILocation(line: 164, column: 10, scope: !47)
!346 = !DILocation(line: 165, column: 7, scope: !347)
!347 = distinct !DILexicalBlock(scope: !47, file: !12, line: 165, column: 2)
!348 = !DILocation(line: 165, column: 6, scope: !347)
!349 = !DILocation(line: 165, column: 10, scope: !350)
!350 = distinct !DILexicalBlock(scope: !347, file: !12, line: 165, column: 2)
!351 = !DILocation(line: 165, column: 11, scope: !350)
!352 = !DILocation(line: 165, column: 2, scope: !347)
!353 = !DILocation(line: 166, column: 26, scope: !354)
!354 = distinct !DILexicalBlock(scope: !350, file: !12, line: 165, column: 19)
!355 = !DILocation(line: 166, column: 20, scope: !354)
!356 = !DILocation(line: 166, column: 11, scope: !354)
!357 = !DILocation(line: 166, column: 6, scope: !354)
!358 = !DILocation(line: 166, column: 3, scope: !354)
!359 = !DILocation(line: 166, column: 9, scope: !354)
!360 = !DILocation(line: 167, column: 12, scope: !354)
!361 = !DILocation(line: 167, column: 17, scope: !354)
!362 = !DILocation(line: 167, column: 14, scope: !354)
!363 = !DILocation(line: 167, column: 13, scope: !354)
!364 = !DILocation(line: 167, column: 20, scope: !354)
!365 = !DILocation(line: 167, column: 9, scope: !354)
!366 = !DILocation(line: 168, column: 2, scope: !354)
!367 = !DILocation(line: 165, column: 15, scope: !350)
!368 = !DILocation(line: 165, column: 2, scope: !350)
!369 = distinct !{!369, !352, !370, !371}
!370 = !DILocation(line: 168, column: 2, scope: !347)
!371 = !{!"llvm.loop.mustprogress"}
!372 = !DILocation(line: 169, column: 10, scope: !47)
!373 = !DILocation(line: 169, column: 2, scope: !47)
!374 = !DILocation(line: 169, column: 8, scope: !47)
!375 = !DILocation(line: 170, column: 5, scope: !47)
!376 = !DILocation(line: 171, column: 2, scope: !47)
!377 = !DILocation(line: 171, column: 11, scope: !47)
!378 = !DILocation(line: 171, column: 13, scope: !47)
!379 = !DILocation(line: 171, column: 8, scope: !47)
!380 = !DILocation(line: 171, column: 16, scope: !47)
!381 = !DILocation(line: 171, column: 26, scope: !47)
!382 = distinct !{!382, !376, !381, !371}
!383 = !DILocation(line: 172, column: 26, scope: !47)
!384 = !DILocation(line: 172, column: 29, scope: !47)
!385 = !DILocation(line: 172, column: 31, scope: !47)
!386 = !DILocation(line: 172, column: 34, scope: !47)
!387 = !DILocation(line: 172, column: 8, scope: !47)
!388 = !DILocation(line: 172, column: 5, scope: !47)
!389 = !DILocation(line: 173, column: 5, scope: !390)
!390 = distinct !DILexicalBlock(scope: !47, file: !12, line: 173, column: 5)
!391 = !DILocation(line: 173, column: 7, scope: !390)
!392 = !DILocation(line: 173, column: 5, scope: !47)
!393 = !DILocation(line: 173, column: 20, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !12, line: 173, column: 11)
!395 = !DILocation(line: 173, column: 19, scope: !394)
!396 = !DILocation(line: 173, column: 12, scope: !394)
!397 = !DILocation(line: 173, column: 17, scope: !394)
!398 = !DILocation(line: 173, column: 34, scope: !394)
!399 = !DILocation(line: 173, column: 33, scope: !394)
!400 = !DILocation(line: 173, column: 26, scope: !394)
!401 = !DILocation(line: 173, column: 31, scope: !394)
!402 = !DILocation(line: 173, column: 48, scope: !394)
!403 = !DILocation(line: 173, column: 47, scope: !394)
!404 = !DILocation(line: 173, column: 40, scope: !394)
!405 = !DILocation(line: 174, column: 9, scope: !47)
!406 = !DILocation(line: 174, column: 2, scope: !47)
!407 = !DILocation(line: 175, column: 1, scope: !47)
!408 = distinct !DISubprogram(name: "main", scope: !12, file: !12, line: 179, type: !409, scopeLine: 179, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!409 = !DISubroutineType(types: !410)
!410 = !{!7}
!411 = !DILocalVariable(name: "a0", scope: !408, file: !12, line: 180, type: !8)
!412 = !DILocation(line: 180, column: 12, scope: !408)
!413 = !DILocation(line: 181, column: 24, scope: !408)
!414 = !DILocation(line: 181, column: 5, scope: !408)
!415 = !DILocalVariable(name: "a1", scope: !408, file: !12, line: 182, type: !8)
!416 = !DILocation(line: 182, column: 12, scope: !408)
!417 = !DILocation(line: 183, column: 24, scope: !408)
!418 = !DILocation(line: 183, column: 5, scope: !408)
!419 = !DILocalVariable(name: "r", scope: !408, file: !12, line: 185, type: !7)
!420 = !DILocation(line: 185, column: 9, scope: !408)
!421 = !DILocation(line: 185, column: 32, scope: !408)
!422 = !DILocation(line: 185, column: 13, scope: !408)
!423 = !DILocation(line: 186, column: 5, scope: !408)
