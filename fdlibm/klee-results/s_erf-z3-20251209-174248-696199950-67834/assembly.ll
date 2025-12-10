; ModuleID = 's_erf.bc'
source_filename = "./s_erf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @erf(double %x) #0 !dbg !137 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %hx = alloca i32, align 4
  %ix = alloca i32, align 4
  %i = alloca i32, align 4
  %R = alloca double, align 8
  %S = alloca double, align 8
  %P = alloca double, align 8
  %Q = alloca double, align 8
  %s = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  %r = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %i, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata double* %R, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata double* %S, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata double* %P, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata double* %Q, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata double* %s, metadata !156, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.declare(metadata double* %y, metadata !158, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata double* %z, metadata !160, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata double* %r, metadata !162, metadata !DIExpression()), !dbg !163
  %0 = bitcast double* %x.addr to i32*, !dbg !164
  %1 = load i32, i32* %0, align 8, !dbg !164
  store i32 %1, i32* %hx, align 4, !dbg !165
  %2 = load i32, i32* %hx, align 4, !dbg !166
  %and = and i32 %2, 2147483647, !dbg !167
  store i32 %and, i32* %ix, align 4, !dbg !168
  %3 = load i32, i32* %ix, align 4, !dbg !169
  %cmp = icmp sge i32 %3, 2146435072, !dbg !171
  br i1 %cmp, label %if.then, label %if.end, !dbg !172

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %hx, align 4, !dbg !173
  %shr = lshr i32 %4, 31, !dbg !175
  %shl = shl i32 %shr, 1, !dbg !176
  store i32 %shl, i32* %i, align 4, !dbg !177
  %5 = load i32, i32* %i, align 4, !dbg !178
  %sub = sub nsw i32 1, %5, !dbg !179
  %conv = sitofp i32 %sub to double, !dbg !180
  %6 = load double, double* %x.addr, align 8, !dbg !181
  %div = fdiv double 1.000000e+00, %6, !dbg !182
  %add = fadd double %conv, %div, !dbg !183
  store double %add, double* %retval, align 8, !dbg !184
  br label %return, !dbg !184

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %ix, align 4, !dbg !185
  %cmp1 = icmp slt i32 %7, 1072365568, !dbg !187
  br i1 %cmp1, label %if.then3, label %if.end39, !dbg !188

if.then3:                                         ; preds = %if.end
  %8 = load i32, i32* %ix, align 4, !dbg !189
  %cmp4 = icmp slt i32 %8, 1043333120, !dbg !192
  br i1 %cmp4, label %if.then6, label %if.end16, !dbg !193

if.then6:                                         ; preds = %if.then3
  %9 = load i32, i32* %ix, align 4, !dbg !194
  %cmp7 = icmp slt i32 %9, 8388608, !dbg !197
  br i1 %cmp7, label %if.then9, label %if.end13, !dbg !198

if.then9:                                         ; preds = %if.then6
  %10 = load double, double* %x.addr, align 8, !dbg !199
  %mul = fmul double 8.000000e+00, %10, !dbg !200
  %11 = load double, double* %x.addr, align 8, !dbg !201
  %mul10 = fmul double 0x3FF06EBA8214DB69, %11, !dbg !202
  %add11 = fadd double %mul, %mul10, !dbg !203
  %mul12 = fmul double 1.250000e-01, %add11, !dbg !204
  store double %mul12, double* %retval, align 8, !dbg !205
  br label %return, !dbg !205

if.end13:                                         ; preds = %if.then6
  %12 = load double, double* %x.addr, align 8, !dbg !206
  %13 = load double, double* %x.addr, align 8, !dbg !207
  %mul14 = fmul double 0x3FC06EBA8214DB69, %13, !dbg !208
  %add15 = fadd double %12, %mul14, !dbg !209
  store double %add15, double* %retval, align 8, !dbg !210
  br label %return, !dbg !210

if.end16:                                         ; preds = %if.then3
  %14 = load double, double* %x.addr, align 8, !dbg !211
  %15 = load double, double* %x.addr, align 8, !dbg !212
  %mul17 = fmul double %14, %15, !dbg !213
  store double %mul17, double* %z, align 8, !dbg !214
  %16 = load double, double* %z, align 8, !dbg !215
  %17 = load double, double* %z, align 8, !dbg !216
  %18 = load double, double* %z, align 8, !dbg !217
  %19 = load double, double* %z, align 8, !dbg !218
  %mul18 = fmul double %19, 0xBEF8EAD6120016AC, !dbg !219
  %add19 = fadd double 0xBF77A291236668E4, %mul18, !dbg !220
  %mul20 = fmul double %18, %add19, !dbg !221
  %add21 = fadd double 0xBF9D2A51DBD7194F, %mul20, !dbg !222
  %mul22 = fmul double %17, %add21, !dbg !223
  %add23 = fadd double 0xBFD4CD7D691CB913, %mul22, !dbg !224
  %mul24 = fmul double %16, %add23, !dbg !225
  %add25 = fadd double 0x3FC06EBA8214DB68, %mul24, !dbg !226
  store double %add25, double* %r, align 8, !dbg !227
  %20 = load double, double* %z, align 8, !dbg !228
  %21 = load double, double* %z, align 8, !dbg !229
  %22 = load double, double* %z, align 8, !dbg !230
  %23 = load double, double* %z, align 8, !dbg !231
  %24 = load double, double* %z, align 8, !dbg !232
  %mul26 = fmul double %24, 0xBED09C4342A26120, !dbg !233
  %add27 = fadd double 0x3F215DC9221C1A10, %mul26, !dbg !234
  %mul28 = fmul double %23, %add27, !dbg !235
  %add29 = fadd double 0x3F74D022C4D36B0F, %mul28, !dbg !236
  %mul30 = fmul double %22, %add29, !dbg !237
  %add31 = fadd double 0x3FB0A54C5536CEBA, %mul30, !dbg !238
  %mul32 = fmul double %21, %add31, !dbg !239
  %add33 = fadd double 0x3FD97779CDDADC09, %mul32, !dbg !240
  %mul34 = fmul double %20, %add33, !dbg !241
  %add35 = fadd double 1.000000e+00, %mul34, !dbg !242
  store double %add35, double* %s, align 8, !dbg !243
  %25 = load double, double* %r, align 8, !dbg !244
  %26 = load double, double* %s, align 8, !dbg !245
  %div36 = fdiv double %25, %26, !dbg !246
  store double %div36, double* %y, align 8, !dbg !247
  %27 = load double, double* %x.addr, align 8, !dbg !248
  %28 = load double, double* %x.addr, align 8, !dbg !249
  %29 = load double, double* %y, align 8, !dbg !250
  %mul37 = fmul double %28, %29, !dbg !251
  %add38 = fadd double %27, %mul37, !dbg !252
  store double %add38, double* %retval, align 8, !dbg !253
  br label %return, !dbg !253

if.end39:                                         ; preds = %if.end
  %30 = load i32, i32* %ix, align 4, !dbg !254
  %cmp40 = icmp slt i32 %30, 1072955392, !dbg !256
  br i1 %cmp40, label %if.then42, label %if.end75, !dbg !257

if.then42:                                        ; preds = %if.end39
  %31 = load double, double* %x.addr, align 8, !dbg !258
  %32 = call double @llvm.fabs.f64(double %31), !dbg !260
  %sub43 = fsub double %32, 1.000000e+00, !dbg !261
  store double %sub43, double* %s, align 8, !dbg !262
  %33 = load double, double* %s, align 8, !dbg !263
  %34 = load double, double* %s, align 8, !dbg !264
  %35 = load double, double* %s, align 8, !dbg !265
  %36 = load double, double* %s, align 8, !dbg !266
  %37 = load double, double* %s, align 8, !dbg !267
  %38 = load double, double* %s, align 8, !dbg !268
  %mul44 = fmul double %38, 0xBF61BF380A96073F, !dbg !269
  %add45 = fadd double 0x3FA22A36599795EB, %mul44, !dbg !270
  %mul46 = fmul double %37, %add45, !dbg !271
  %add47 = fadd double 0xBFBC63983D3E28EC, %mul46, !dbg !272
  %mul48 = fmul double %36, %add47, !dbg !273
  %add49 = fadd double 0x3FD45FCA805120E4, %mul48, !dbg !274
  %mul50 = fmul double %35, %add49, !dbg !275
  %add51 = fadd double 0xBFD7D240FBB8C3F1, %mul50, !dbg !276
  %mul52 = fmul double %34, %add51, !dbg !277
  %add53 = fadd double 0x3FDA8D00AD92B34D, %mul52, !dbg !278
  %mul54 = fmul double %33, %add53, !dbg !279
  %add55 = fadd double 0xBF6359B8BEF77538, %mul54, !dbg !280
  store double %add55, double* %P, align 8, !dbg !281
  %39 = load double, double* %s, align 8, !dbg !282
  %40 = load double, double* %s, align 8, !dbg !283
  %41 = load double, double* %s, align 8, !dbg !284
  %42 = load double, double* %s, align 8, !dbg !285
  %43 = load double, double* %s, align 8, !dbg !286
  %44 = load double, double* %s, align 8, !dbg !287
  %mul56 = fmul double %44, 0x3F888B545735151D, !dbg !288
  %add57 = fadd double 0x3F8BEDC26B51DD1C, %mul56, !dbg !289
  %mul58 = fmul double %43, %add57, !dbg !290
  %add59 = fadd double 0x3FC02660E763351F, %mul58, !dbg !291
  %mul60 = fmul double %42, %add59, !dbg !292
  %add61 = fadd double 0x3FB2635CD99FE9A7, %mul60, !dbg !293
  %mul62 = fmul double %41, %add61, !dbg !294
  %add63 = fadd double 0x3FE14AF092EB6F33, %mul62, !dbg !295
  %mul64 = fmul double %40, %add63, !dbg !296
  %add65 = fadd double 0x3FBB3E6618EEE323, %mul64, !dbg !297
  %mul66 = fmul double %39, %add65, !dbg !298
  %add67 = fadd double 1.000000e+00, %mul66, !dbg !299
  store double %add67, double* %Q, align 8, !dbg !300
  %45 = load i32, i32* %hx, align 4, !dbg !301
  %cmp68 = icmp sge i32 %45, 0, !dbg !303
  br i1 %cmp68, label %if.then70, label %if.else, !dbg !304

if.then70:                                        ; preds = %if.then42
  %46 = load double, double* %P, align 8, !dbg !305
  %47 = load double, double* %Q, align 8, !dbg !306
  %div71 = fdiv double %46, %47, !dbg !307
  %add72 = fadd double 0x3FEB0AC160000000, %div71, !dbg !308
  store double %add72, double* %retval, align 8, !dbg !309
  br label %return, !dbg !309

if.else:                                          ; preds = %if.then42
  %48 = load double, double* %P, align 8, !dbg !310
  %49 = load double, double* %Q, align 8, !dbg !311
  %div73 = fdiv double %48, %49, !dbg !312
  %sub74 = fsub double 0xBFEB0AC160000000, %div73, !dbg !313
  store double %sub74, double* %retval, align 8, !dbg !314
  br label %return, !dbg !314

if.end75:                                         ; preds = %if.end39
  %50 = load i32, i32* %ix, align 4, !dbg !315
  %cmp76 = icmp sge i32 %50, 1075314688, !dbg !317
  br i1 %cmp76, label %if.then78, label %if.end83, !dbg !318

if.then78:                                        ; preds = %if.end75
  %51 = load i32, i32* %hx, align 4, !dbg !319
  %cmp79 = icmp sge i32 %51, 0, !dbg !322
  br i1 %cmp79, label %if.then81, label %if.else82, !dbg !323

if.then81:                                        ; preds = %if.then78
  store double 1.000000e+00, double* %retval, align 8, !dbg !324
  br label %return, !dbg !324

if.else82:                                        ; preds = %if.then78
  store double -1.000000e+00, double* %retval, align 8, !dbg !325
  br label %return, !dbg !325

if.end83:                                         ; preds = %if.end75
  %52 = load double, double* %x.addr, align 8, !dbg !326
  %53 = call double @llvm.fabs.f64(double %52), !dbg !327
  store double %53, double* %x.addr, align 8, !dbg !328
  %54 = load double, double* %x.addr, align 8, !dbg !329
  %55 = load double, double* %x.addr, align 8, !dbg !330
  %mul84 = fmul double %54, %55, !dbg !331
  %div85 = fdiv double 1.000000e+00, %mul84, !dbg !332
  store double %div85, double* %s, align 8, !dbg !333
  %56 = load i32, i32* %ix, align 4, !dbg !334
  %cmp86 = icmp slt i32 %56, 1074191214, !dbg !336
  br i1 %cmp86, label %if.then88, label %if.else119, !dbg !337

if.then88:                                        ; preds = %if.end83
  %57 = load double, double* %s, align 8, !dbg !338
  %58 = load double, double* %s, align 8, !dbg !340
  %59 = load double, double* %s, align 8, !dbg !341
  %60 = load double, double* %s, align 8, !dbg !342
  %61 = load double, double* %s, align 8, !dbg !343
  %62 = load double, double* %s, align 8, !dbg !344
  %63 = load double, double* %s, align 8, !dbg !345
  %mul89 = fmul double %63, 0xC023A0EFC69AC25C, !dbg !346
  %add90 = fadd double 0xC054526557E4D2F2, %mul89, !dbg !347
  %mul91 = fmul double %62, %add90, !dbg !348
  %add92 = fadd double 0xC067135CEBCCABB2, %mul91, !dbg !349
  %mul93 = fmul double %61, %add92, !dbg !350
  %add94 = fadd double 0xC0644CB184282266, %mul93, !dbg !351
  %mul95 = fmul double %60, %add94, !dbg !352
  %add96 = fadd double 0xC04F300AE4CBA38D, %mul95, !dbg !353
  %mul97 = fmul double %59, %add96, !dbg !354
  %add98 = fadd double 0xC0251E0441B0E726, %mul97, !dbg !355
  %mul99 = fmul double %58, %add98, !dbg !356
  %add100 = fadd double 0xBFE63416E4BA7360, %mul99, !dbg !357
  %mul101 = fmul double %57, %add100, !dbg !358
  %add102 = fadd double 0xBF843412600D6435, %mul101, !dbg !359
  store double %add102, double* %R, align 8, !dbg !360
  %64 = load double, double* %s, align 8, !dbg !361
  %65 = load double, double* %s, align 8, !dbg !362
  %66 = load double, double* %s, align 8, !dbg !363
  %67 = load double, double* %s, align 8, !dbg !364
  %68 = load double, double* %s, align 8, !dbg !365
  %69 = load double, double* %s, align 8, !dbg !366
  %70 = load double, double* %s, align 8, !dbg !367
  %71 = load double, double* %s, align 8, !dbg !368
  %mul103 = fmul double %71, 0xBFAEEFF2EE749A62, !dbg !369
  %add104 = fadd double 0x401A47EF8E484A93, %mul103, !dbg !370
  %mul105 = fmul double %70, %add104, !dbg !371
  %add106 = fadd double 0x405B28A3EE48AE2C, %mul105, !dbg !372
  %mul107 = fmul double %69, %add106, !dbg !373
  %add108 = fadd double 0x407AD02157700314, %mul107, !dbg !374
  %mul109 = fmul double %68, %add108, !dbg !375
  %add110 = fadd double 0x40842B1921EC2868, %mul109, !dbg !376
  %mul111 = fmul double %67, %add110, !dbg !377
  %add112 = fadd double 0x407B290DD58A1A71, %mul111, !dbg !378
  %mul113 = fmul double %66, %add112, !dbg !379
  %add114 = fadd double 0x4061350C526AE721, %mul113, !dbg !380
  %mul115 = fmul double %65, %add114, !dbg !381
  %add116 = fadd double 0x4033A6B9BD707687, %mul115, !dbg !382
  %mul117 = fmul double %64, %add116, !dbg !383
  %add118 = fadd double 1.000000e+00, %mul117, !dbg !384
  store double %add118, double* %S, align 8, !dbg !385
  br label %if.end146, !dbg !386

if.else119:                                       ; preds = %if.end83
  %72 = load double, double* %s, align 8, !dbg !387
  %73 = load double, double* %s, align 8, !dbg !389
  %74 = load double, double* %s, align 8, !dbg !390
  %75 = load double, double* %s, align 8, !dbg !391
  %76 = load double, double* %s, align 8, !dbg !392
  %77 = load double, double* %s, align 8, !dbg !393
  %mul120 = fmul double %77, 0xC07E384E9BDC383F, !dbg !394
  %add121 = fadd double 0xC09004616A2E5992, %mul120, !dbg !395
  %mul122 = fmul double %76, %add121, !dbg !396
  %add123 = fadd double 0xC083EC881375F228, %mul122, !dbg !397
  %mul124 = fmul double %75, %add123, !dbg !398
  %add125 = fadd double 0xC064145D43C5ED98, %mul124, !dbg !399
  %mul126 = fmul double %74, %add125, !dbg !400
  %add127 = fadd double 0xC031C209555F995A, %mul126, !dbg !401
  %mul128 = fmul double %73, %add127, !dbg !402
  %add129 = fadd double 0xBFE993BA70C285DE, %mul128, !dbg !403
  %mul130 = fmul double %72, %add129, !dbg !404
  %add131 = fadd double 0xBF84341239E86F4A, %mul130, !dbg !405
  store double %add131, double* %R, align 8, !dbg !406
  %78 = load double, double* %s, align 8, !dbg !407
  %79 = load double, double* %s, align 8, !dbg !408
  %80 = load double, double* %s, align 8, !dbg !409
  %81 = load double, double* %s, align 8, !dbg !410
  %82 = load double, double* %s, align 8, !dbg !411
  %83 = load double, double* %s, align 8, !dbg !412
  %84 = load double, double* %s, align 8, !dbg !413
  %mul132 = fmul double %84, 0xC03670E242712D62, !dbg !414
  %add133 = fadd double 0x407DA874E79FE763, %mul132, !dbg !415
  %mul134 = fmul double %83, %add133, !dbg !416
  %add135 = fadd double 0x40A3F219CEDF3BE6, %mul134, !dbg !417
  %mul136 = fmul double %82, %add135, !dbg !418
  %add137 = fadd double 0x40A8FFB7688C246A, %mul136, !dbg !419
  %mul138 = fmul double %81, %add137, !dbg !420
  %add139 = fadd double 0x409802EB189D5118, %mul138, !dbg !421
  %mul140 = fmul double %80, %add139, !dbg !422
  %add141 = fadd double 0x40745CAE221B9F0A, %mul140, !dbg !423
  %mul142 = fmul double %79, %add141, !dbg !424
  %add143 = fadd double 0x403E568B261D5190, %mul142, !dbg !425
  %mul144 = fmul double %78, %add143, !dbg !426
  %add145 = fadd double 1.000000e+00, %mul144, !dbg !427
  store double %add145, double* %S, align 8, !dbg !428
  br label %if.end146

if.end146:                                        ; preds = %if.else119, %if.then88
  %85 = load double, double* %x.addr, align 8, !dbg !429
  store double %85, double* %z, align 8, !dbg !430
  %86 = bitcast double* %z to i32*, !dbg !431
  %add.ptr = getelementptr inbounds i32, i32* %86, i64 1, !dbg !431
  store i32 0, i32* %add.ptr, align 4, !dbg !432
  %87 = load double, double* %z, align 8, !dbg !433
  %fneg = fneg double %87, !dbg !434
  %88 = load double, double* %z, align 8, !dbg !435
  %mul147 = fmul double %fneg, %88, !dbg !436
  %sub148 = fsub double %mul147, 5.625000e-01, !dbg !437
  %call = call double @__ieee754_exp(double %sub148), !dbg !438
  %89 = load double, double* %z, align 8, !dbg !439
  %90 = load double, double* %x.addr, align 8, !dbg !440
  %sub149 = fsub double %89, %90, !dbg !441
  %91 = load double, double* %z, align 8, !dbg !442
  %92 = load double, double* %x.addr, align 8, !dbg !443
  %add150 = fadd double %91, %92, !dbg !444
  %mul151 = fmul double %sub149, %add150, !dbg !445
  %93 = load double, double* %R, align 8, !dbg !446
  %94 = load double, double* %S, align 8, !dbg !447
  %div152 = fdiv double %93, %94, !dbg !448
  %add153 = fadd double %mul151, %div152, !dbg !449
  %call154 = call double @__ieee754_exp(double %add153), !dbg !450
  %mul155 = fmul double %call, %call154, !dbg !451
  store double %mul155, double* %r, align 8, !dbg !452
  %95 = load i32, i32* %hx, align 4, !dbg !453
  %cmp156 = icmp sge i32 %95, 0, !dbg !455
  br i1 %cmp156, label %if.then158, label %if.else161, !dbg !456

if.then158:                                       ; preds = %if.end146
  %96 = load double, double* %r, align 8, !dbg !457
  %97 = load double, double* %x.addr, align 8, !dbg !458
  %div159 = fdiv double %96, %97, !dbg !459
  %sub160 = fsub double 1.000000e+00, %div159, !dbg !460
  store double %sub160, double* %retval, align 8, !dbg !461
  br label %return, !dbg !461

if.else161:                                       ; preds = %if.end146
  %98 = load double, double* %r, align 8, !dbg !462
  %99 = load double, double* %x.addr, align 8, !dbg !463
  %div162 = fdiv double %98, %99, !dbg !464
  %sub163 = fsub double %div162, 1.000000e+00, !dbg !465
  store double %sub163, double* %retval, align 8, !dbg !466
  br label %return, !dbg !466

return:                                           ; preds = %if.else161, %if.then158, %if.else82, %if.then81, %if.else, %if.then70, %if.end16, %if.end13, %if.then9, %if.then
  %100 = load double, double* %retval, align 8, !dbg !467
  ret double %100, !dbg !467
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

declare dso_local double @__ieee754_exp(double) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @erfc(double %x) #0 !dbg !468 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %hx = alloca i32, align 4
  %ix = alloca i32, align 4
  %R = alloca double, align 8
  %S = alloca double, align 8
  %P = alloca double, align 8
  %Q = alloca double, align 8
  %s = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  %r = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !469, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !471, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !473, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.declare(metadata double* %R, metadata !475, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.declare(metadata double* %S, metadata !477, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.declare(metadata double* %P, metadata !479, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.declare(metadata double* %Q, metadata !481, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.declare(metadata double* %s, metadata !483, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.declare(metadata double* %y, metadata !485, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.declare(metadata double* %z, metadata !487, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.declare(metadata double* %r, metadata !489, metadata !DIExpression()), !dbg !490
  %0 = bitcast double* %x.addr to i32*, !dbg !491
  %1 = load i32, i32* %0, align 8, !dbg !491
  store i32 %1, i32* %hx, align 4, !dbg !492
  %2 = load i32, i32* %hx, align 4, !dbg !493
  %and = and i32 %2, 2147483647, !dbg !494
  store i32 %and, i32* %ix, align 4, !dbg !495
  %3 = load i32, i32* %ix, align 4, !dbg !496
  %cmp = icmp sge i32 %3, 2146435072, !dbg !498
  br i1 %cmp, label %if.then, label %if.end, !dbg !499

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %hx, align 4, !dbg !500
  %shr = lshr i32 %4, 31, !dbg !502
  %shl = shl i32 %shr, 1, !dbg !503
  %conv = uitofp i32 %shl to double, !dbg !504
  %5 = load double, double* %x.addr, align 8, !dbg !505
  %div = fdiv double 1.000000e+00, %5, !dbg !506
  %add = fadd double %conv, %div, !dbg !507
  store double %add, double* %retval, align 8, !dbg !508
  br label %return, !dbg !508

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %ix, align 4, !dbg !509
  %cmp1 = icmp slt i32 %6, 1072365568, !dbg !511
  br i1 %cmp1, label %if.then3, label %if.end37, !dbg !512

if.then3:                                         ; preds = %if.end
  %7 = load i32, i32* %ix, align 4, !dbg !513
  %cmp4 = icmp slt i32 %7, 1013972992, !dbg !516
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !517

if.then6:                                         ; preds = %if.then3
  %8 = load double, double* %x.addr, align 8, !dbg !518
  %sub = fsub double 1.000000e+00, %8, !dbg !519
  store double %sub, double* %retval, align 8, !dbg !520
  br label %return, !dbg !520

if.end7:                                          ; preds = %if.then3
  %9 = load double, double* %x.addr, align 8, !dbg !521
  %10 = load double, double* %x.addr, align 8, !dbg !522
  %mul = fmul double %9, %10, !dbg !523
  store double %mul, double* %z, align 8, !dbg !524
  %11 = load double, double* %z, align 8, !dbg !525
  %12 = load double, double* %z, align 8, !dbg !526
  %13 = load double, double* %z, align 8, !dbg !527
  %14 = load double, double* %z, align 8, !dbg !528
  %mul8 = fmul double %14, 0xBEF8EAD6120016AC, !dbg !529
  %add9 = fadd double 0xBF77A291236668E4, %mul8, !dbg !530
  %mul10 = fmul double %13, %add9, !dbg !531
  %add11 = fadd double 0xBF9D2A51DBD7194F, %mul10, !dbg !532
  %mul12 = fmul double %12, %add11, !dbg !533
  %add13 = fadd double 0xBFD4CD7D691CB913, %mul12, !dbg !534
  %mul14 = fmul double %11, %add13, !dbg !535
  %add15 = fadd double 0x3FC06EBA8214DB68, %mul14, !dbg !536
  store double %add15, double* %r, align 8, !dbg !537
  %15 = load double, double* %z, align 8, !dbg !538
  %16 = load double, double* %z, align 8, !dbg !539
  %17 = load double, double* %z, align 8, !dbg !540
  %18 = load double, double* %z, align 8, !dbg !541
  %19 = load double, double* %z, align 8, !dbg !542
  %mul16 = fmul double %19, 0xBED09C4342A26120, !dbg !543
  %add17 = fadd double 0x3F215DC9221C1A10, %mul16, !dbg !544
  %mul18 = fmul double %18, %add17, !dbg !545
  %add19 = fadd double 0x3F74D022C4D36B0F, %mul18, !dbg !546
  %mul20 = fmul double %17, %add19, !dbg !547
  %add21 = fadd double 0x3FB0A54C5536CEBA, %mul20, !dbg !548
  %mul22 = fmul double %16, %add21, !dbg !549
  %add23 = fadd double 0x3FD97779CDDADC09, %mul22, !dbg !550
  %mul24 = fmul double %15, %add23, !dbg !551
  %add25 = fadd double 1.000000e+00, %mul24, !dbg !552
  store double %add25, double* %s, align 8, !dbg !553
  %20 = load double, double* %r, align 8, !dbg !554
  %21 = load double, double* %s, align 8, !dbg !555
  %div26 = fdiv double %20, %21, !dbg !556
  store double %div26, double* %y, align 8, !dbg !557
  %22 = load i32, i32* %hx, align 4, !dbg !558
  %cmp27 = icmp slt i32 %22, 1070596096, !dbg !560
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !561

if.then29:                                        ; preds = %if.end7
  %23 = load double, double* %x.addr, align 8, !dbg !562
  %24 = load double, double* %x.addr, align 8, !dbg !564
  %25 = load double, double* %y, align 8, !dbg !565
  %mul30 = fmul double %24, %25, !dbg !566
  %add31 = fadd double %23, %mul30, !dbg !567
  %sub32 = fsub double 1.000000e+00, %add31, !dbg !568
  store double %sub32, double* %retval, align 8, !dbg !569
  br label %return, !dbg !569

if.else:                                          ; preds = %if.end7
  %26 = load double, double* %x.addr, align 8, !dbg !570
  %27 = load double, double* %y, align 8, !dbg !572
  %mul33 = fmul double %26, %27, !dbg !573
  store double %mul33, double* %r, align 8, !dbg !574
  %28 = load double, double* %x.addr, align 8, !dbg !575
  %sub34 = fsub double %28, 5.000000e-01, !dbg !576
  %29 = load double, double* %r, align 8, !dbg !577
  %add35 = fadd double %29, %sub34, !dbg !577
  store double %add35, double* %r, align 8, !dbg !577
  %30 = load double, double* %r, align 8, !dbg !578
  %sub36 = fsub double 5.000000e-01, %30, !dbg !579
  store double %sub36, double* %retval, align 8, !dbg !580
  br label %return, !dbg !580

if.end37:                                         ; preds = %if.end
  %31 = load i32, i32* %ix, align 4, !dbg !581
  %cmp38 = icmp slt i32 %31, 1072955392, !dbg !583
  br i1 %cmp38, label %if.then40, label %if.end75, !dbg !584

if.then40:                                        ; preds = %if.end37
  %32 = load double, double* %x.addr, align 8, !dbg !585
  %33 = call double @llvm.fabs.f64(double %32), !dbg !587
  %sub41 = fsub double %33, 1.000000e+00, !dbg !588
  store double %sub41, double* %s, align 8, !dbg !589
  %34 = load double, double* %s, align 8, !dbg !590
  %35 = load double, double* %s, align 8, !dbg !591
  %36 = load double, double* %s, align 8, !dbg !592
  %37 = load double, double* %s, align 8, !dbg !593
  %38 = load double, double* %s, align 8, !dbg !594
  %39 = load double, double* %s, align 8, !dbg !595
  %mul42 = fmul double %39, 0xBF61BF380A96073F, !dbg !596
  %add43 = fadd double 0x3FA22A36599795EB, %mul42, !dbg !597
  %mul44 = fmul double %38, %add43, !dbg !598
  %add45 = fadd double 0xBFBC63983D3E28EC, %mul44, !dbg !599
  %mul46 = fmul double %37, %add45, !dbg !600
  %add47 = fadd double 0x3FD45FCA805120E4, %mul46, !dbg !601
  %mul48 = fmul double %36, %add47, !dbg !602
  %add49 = fadd double 0xBFD7D240FBB8C3F1, %mul48, !dbg !603
  %mul50 = fmul double %35, %add49, !dbg !604
  %add51 = fadd double 0x3FDA8D00AD92B34D, %mul50, !dbg !605
  %mul52 = fmul double %34, %add51, !dbg !606
  %add53 = fadd double 0xBF6359B8BEF77538, %mul52, !dbg !607
  store double %add53, double* %P, align 8, !dbg !608
  %40 = load double, double* %s, align 8, !dbg !609
  %41 = load double, double* %s, align 8, !dbg !610
  %42 = load double, double* %s, align 8, !dbg !611
  %43 = load double, double* %s, align 8, !dbg !612
  %44 = load double, double* %s, align 8, !dbg !613
  %45 = load double, double* %s, align 8, !dbg !614
  %mul54 = fmul double %45, 0x3F888B545735151D, !dbg !615
  %add55 = fadd double 0x3F8BEDC26B51DD1C, %mul54, !dbg !616
  %mul56 = fmul double %44, %add55, !dbg !617
  %add57 = fadd double 0x3FC02660E763351F, %mul56, !dbg !618
  %mul58 = fmul double %43, %add57, !dbg !619
  %add59 = fadd double 0x3FB2635CD99FE9A7, %mul58, !dbg !620
  %mul60 = fmul double %42, %add59, !dbg !621
  %add61 = fadd double 0x3FE14AF092EB6F33, %mul60, !dbg !622
  %mul62 = fmul double %41, %add61, !dbg !623
  %add63 = fadd double 0x3FBB3E6618EEE323, %mul62, !dbg !624
  %mul64 = fmul double %40, %add63, !dbg !625
  %add65 = fadd double 1.000000e+00, %mul64, !dbg !626
  store double %add65, double* %Q, align 8, !dbg !627
  %46 = load i32, i32* %hx, align 4, !dbg !628
  %cmp66 = icmp sge i32 %46, 0, !dbg !630
  br i1 %cmp66, label %if.then68, label %if.else71, !dbg !631

if.then68:                                        ; preds = %if.then40
  store double 0x3FC3D4FA80000000, double* %z, align 8, !dbg !632
  %47 = load double, double* %z, align 8, !dbg !634
  %48 = load double, double* %P, align 8, !dbg !635
  %49 = load double, double* %Q, align 8, !dbg !636
  %div69 = fdiv double %48, %49, !dbg !637
  %sub70 = fsub double %47, %div69, !dbg !638
  store double %sub70, double* %retval, align 8, !dbg !639
  br label %return, !dbg !639

if.else71:                                        ; preds = %if.then40
  %50 = load double, double* %P, align 8, !dbg !640
  %51 = load double, double* %Q, align 8, !dbg !642
  %div72 = fdiv double %50, %51, !dbg !643
  %add73 = fadd double 0x3FEB0AC160000000, %div72, !dbg !644
  store double %add73, double* %z, align 8, !dbg !645
  %52 = load double, double* %z, align 8, !dbg !646
  %add74 = fadd double 1.000000e+00, %52, !dbg !647
  store double %add74, double* %retval, align 8, !dbg !648
  br label %return, !dbg !648

if.end75:                                         ; preds = %if.end37
  %53 = load i32, i32* %ix, align 4, !dbg !649
  %cmp76 = icmp slt i32 %53, 1077673984, !dbg !651
  br i1 %cmp76, label %if.then78, label %if.else164, !dbg !652

if.then78:                                        ; preds = %if.end75
  %54 = load double, double* %x.addr, align 8, !dbg !653
  %55 = call double @llvm.fabs.f64(double %54), !dbg !655
  store double %55, double* %x.addr, align 8, !dbg !656
  %56 = load double, double* %x.addr, align 8, !dbg !657
  %57 = load double, double* %x.addr, align 8, !dbg !658
  %mul79 = fmul double %56, %57, !dbg !659
  %div80 = fdiv double 1.000000e+00, %mul79, !dbg !660
  store double %div80, double* %s, align 8, !dbg !661
  %58 = load i32, i32* %ix, align 4, !dbg !662
  %cmp81 = icmp slt i32 %58, 1074191213, !dbg !664
  br i1 %cmp81, label %if.then83, label %if.else114, !dbg !665

if.then83:                                        ; preds = %if.then78
  %59 = load double, double* %s, align 8, !dbg !666
  %60 = load double, double* %s, align 8, !dbg !668
  %61 = load double, double* %s, align 8, !dbg !669
  %62 = load double, double* %s, align 8, !dbg !670
  %63 = load double, double* %s, align 8, !dbg !671
  %64 = load double, double* %s, align 8, !dbg !672
  %65 = load double, double* %s, align 8, !dbg !673
  %mul84 = fmul double %65, 0xC023A0EFC69AC25C, !dbg !674
  %add85 = fadd double 0xC054526557E4D2F2, %mul84, !dbg !675
  %mul86 = fmul double %64, %add85, !dbg !676
  %add87 = fadd double 0xC067135CEBCCABB2, %mul86, !dbg !677
  %mul88 = fmul double %63, %add87, !dbg !678
  %add89 = fadd double 0xC0644CB184282266, %mul88, !dbg !679
  %mul90 = fmul double %62, %add89, !dbg !680
  %add91 = fadd double 0xC04F300AE4CBA38D, %mul90, !dbg !681
  %mul92 = fmul double %61, %add91, !dbg !682
  %add93 = fadd double 0xC0251E0441B0E726, %mul92, !dbg !683
  %mul94 = fmul double %60, %add93, !dbg !684
  %add95 = fadd double 0xBFE63416E4BA7360, %mul94, !dbg !685
  %mul96 = fmul double %59, %add95, !dbg !686
  %add97 = fadd double 0xBF843412600D6435, %mul96, !dbg !687
  store double %add97, double* %R, align 8, !dbg !688
  %66 = load double, double* %s, align 8, !dbg !689
  %67 = load double, double* %s, align 8, !dbg !690
  %68 = load double, double* %s, align 8, !dbg !691
  %69 = load double, double* %s, align 8, !dbg !692
  %70 = load double, double* %s, align 8, !dbg !693
  %71 = load double, double* %s, align 8, !dbg !694
  %72 = load double, double* %s, align 8, !dbg !695
  %73 = load double, double* %s, align 8, !dbg !696
  %mul98 = fmul double %73, 0xBFAEEFF2EE749A62, !dbg !697
  %add99 = fadd double 0x401A47EF8E484A93, %mul98, !dbg !698
  %mul100 = fmul double %72, %add99, !dbg !699
  %add101 = fadd double 0x405B28A3EE48AE2C, %mul100, !dbg !700
  %mul102 = fmul double %71, %add101, !dbg !701
  %add103 = fadd double 0x407AD02157700314, %mul102, !dbg !702
  %mul104 = fmul double %70, %add103, !dbg !703
  %add105 = fadd double 0x40842B1921EC2868, %mul104, !dbg !704
  %mul106 = fmul double %69, %add105, !dbg !705
  %add107 = fadd double 0x407B290DD58A1A71, %mul106, !dbg !706
  %mul108 = fmul double %68, %add107, !dbg !707
  %add109 = fadd double 0x4061350C526AE721, %mul108, !dbg !708
  %mul110 = fmul double %67, %add109, !dbg !709
  %add111 = fadd double 0x4033A6B9BD707687, %mul110, !dbg !710
  %mul112 = fmul double %66, %add111, !dbg !711
  %add113 = fadd double 1.000000e+00, %mul112, !dbg !712
  store double %add113, double* %S, align 8, !dbg !713
  br label %if.end147, !dbg !714

if.else114:                                       ; preds = %if.then78
  %74 = load i32, i32* %hx, align 4, !dbg !715
  %cmp115 = icmp slt i32 %74, 0, !dbg !718
  br i1 %cmp115, label %land.lhs.true, label %if.end120, !dbg !719

land.lhs.true:                                    ; preds = %if.else114
  %75 = load i32, i32* %ix, align 4, !dbg !720
  %cmp117 = icmp sge i32 %75, 1075314688, !dbg !721
  br i1 %cmp117, label %if.then119, label %if.end120, !dbg !722

if.then119:                                       ; preds = %land.lhs.true
  store double 2.000000e+00, double* %retval, align 8, !dbg !723
  br label %return, !dbg !723

if.end120:                                        ; preds = %land.lhs.true, %if.else114
  %76 = load double, double* %s, align 8, !dbg !724
  %77 = load double, double* %s, align 8, !dbg !725
  %78 = load double, double* %s, align 8, !dbg !726
  %79 = load double, double* %s, align 8, !dbg !727
  %80 = load double, double* %s, align 8, !dbg !728
  %81 = load double, double* %s, align 8, !dbg !729
  %mul121 = fmul double %81, 0xC07E384E9BDC383F, !dbg !730
  %add122 = fadd double 0xC09004616A2E5992, %mul121, !dbg !731
  %mul123 = fmul double %80, %add122, !dbg !732
  %add124 = fadd double 0xC083EC881375F228, %mul123, !dbg !733
  %mul125 = fmul double %79, %add124, !dbg !734
  %add126 = fadd double 0xC064145D43C5ED98, %mul125, !dbg !735
  %mul127 = fmul double %78, %add126, !dbg !736
  %add128 = fadd double 0xC031C209555F995A, %mul127, !dbg !737
  %mul129 = fmul double %77, %add128, !dbg !738
  %add130 = fadd double 0xBFE993BA70C285DE, %mul129, !dbg !739
  %mul131 = fmul double %76, %add130, !dbg !740
  %add132 = fadd double 0xBF84341239E86F4A, %mul131, !dbg !741
  store double %add132, double* %R, align 8, !dbg !742
  %82 = load double, double* %s, align 8, !dbg !743
  %83 = load double, double* %s, align 8, !dbg !744
  %84 = load double, double* %s, align 8, !dbg !745
  %85 = load double, double* %s, align 8, !dbg !746
  %86 = load double, double* %s, align 8, !dbg !747
  %87 = load double, double* %s, align 8, !dbg !748
  %88 = load double, double* %s, align 8, !dbg !749
  %mul133 = fmul double %88, 0xC03670E242712D62, !dbg !750
  %add134 = fadd double 0x407DA874E79FE763, %mul133, !dbg !751
  %mul135 = fmul double %87, %add134, !dbg !752
  %add136 = fadd double 0x40A3F219CEDF3BE6, %mul135, !dbg !753
  %mul137 = fmul double %86, %add136, !dbg !754
  %add138 = fadd double 0x40A8FFB7688C246A, %mul137, !dbg !755
  %mul139 = fmul double %85, %add138, !dbg !756
  %add140 = fadd double 0x409802EB189D5118, %mul139, !dbg !757
  %mul141 = fmul double %84, %add140, !dbg !758
  %add142 = fadd double 0x40745CAE221B9F0A, %mul141, !dbg !759
  %mul143 = fmul double %83, %add142, !dbg !760
  %add144 = fadd double 0x403E568B261D5190, %mul143, !dbg !761
  %mul145 = fmul double %82, %add144, !dbg !762
  %add146 = fadd double 1.000000e+00, %mul145, !dbg !763
  store double %add146, double* %S, align 8, !dbg !764
  br label %if.end147

if.end147:                                        ; preds = %if.end120, %if.then83
  %89 = load double, double* %x.addr, align 8, !dbg !765
  store double %89, double* %z, align 8, !dbg !766
  %90 = bitcast double* %z to i32*, !dbg !767
  %add.ptr = getelementptr inbounds i32, i32* %90, i64 1, !dbg !767
  store i32 0, i32* %add.ptr, align 4, !dbg !768
  %91 = load double, double* %z, align 8, !dbg !769
  %fneg = fneg double %91, !dbg !770
  %92 = load double, double* %z, align 8, !dbg !771
  %mul148 = fmul double %fneg, %92, !dbg !772
  %sub149 = fsub double %mul148, 5.625000e-01, !dbg !773
  %call = call double @__ieee754_exp(double %sub149), !dbg !774
  %93 = load double, double* %z, align 8, !dbg !775
  %94 = load double, double* %x.addr, align 8, !dbg !776
  %sub150 = fsub double %93, %94, !dbg !777
  %95 = load double, double* %z, align 8, !dbg !778
  %96 = load double, double* %x.addr, align 8, !dbg !779
  %add151 = fadd double %95, %96, !dbg !780
  %mul152 = fmul double %sub150, %add151, !dbg !781
  %97 = load double, double* %R, align 8, !dbg !782
  %98 = load double, double* %S, align 8, !dbg !783
  %div153 = fdiv double %97, %98, !dbg !784
  %add154 = fadd double %mul152, %div153, !dbg !785
  %call155 = call double @__ieee754_exp(double %add154), !dbg !786
  %mul156 = fmul double %call, %call155, !dbg !787
  store double %mul156, double* %r, align 8, !dbg !788
  %99 = load i32, i32* %hx, align 4, !dbg !789
  %cmp157 = icmp sgt i32 %99, 0, !dbg !791
  br i1 %cmp157, label %if.then159, label %if.else161, !dbg !792

if.then159:                                       ; preds = %if.end147
  %100 = load double, double* %r, align 8, !dbg !793
  %101 = load double, double* %x.addr, align 8, !dbg !794
  %div160 = fdiv double %100, %101, !dbg !795
  store double %div160, double* %retval, align 8, !dbg !796
  br label %return, !dbg !796

if.else161:                                       ; preds = %if.end147
  %102 = load double, double* %r, align 8, !dbg !797
  %103 = load double, double* %x.addr, align 8, !dbg !798
  %div162 = fdiv double %102, %103, !dbg !799
  %sub163 = fsub double 2.000000e+00, %div162, !dbg !800
  store double %sub163, double* %retval, align 8, !dbg !801
  br label %return, !dbg !801

if.else164:                                       ; preds = %if.end75
  %104 = load i32, i32* %hx, align 4, !dbg !802
  %cmp165 = icmp sgt i32 %104, 0, !dbg !805
  br i1 %cmp165, label %if.then167, label %if.else168, !dbg !806

if.then167:                                       ; preds = %if.else164
  store double 0.000000e+00, double* %retval, align 8, !dbg !807
  br label %return, !dbg !807

if.else168:                                       ; preds = %if.else164
  store double 2.000000e+00, double* %retval, align 8, !dbg !808
  br label %return, !dbg !808

return:                                           ; preds = %if.else168, %if.then167, %if.else161, %if.then159, %if.then119, %if.else71, %if.then68, %if.else, %if.then29, %if.then6, %if.then
  %105 = load double, double* %retval, align 8, !dbg !809
  ret double %105, !dbg !809
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !810 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !813, metadata !DIExpression()), !dbg !814
  %0 = bitcast double* %a0 to i8*, !dbg !815
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !816
  call void @llvm.dbg.declare(metadata double* %r, metadata !817, metadata !DIExpression()), !dbg !818
  %1 = load double, double* %a0, align 8, !dbg !819
  %call = call double @erf(double %1) #3, !dbg !820
  store double %call, double* %r, align 8, !dbg !818
  ret i32 0, !dbg !821
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !8, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "s_erf.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4, !6, !7}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !{!9, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!10 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !11, line: 118, type: !12, isLocal: true, isDefinition: true)
!11 = !DIFile(filename: "./s_erf.c", directory: "/home/klee/logic_bombs/fdlibm")
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression(DW_OP_constu, 4607304166125394793, DW_OP_stack_value))
!14 = distinct !DIGlobalVariable(name: "efx8", scope: !0, file: !11, line: 126, type: !12, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression(DW_OP_constu, 4593793367243283305, DW_OP_stack_value))
!16 = distinct !DIGlobalVariable(name: "efx", scope: !0, file: !11, line: 125, type: !12, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression(DW_OP_constu, 4593793367243283304, DW_OP_stack_value))
!18 = distinct !DIGlobalVariable(name: "pp0", scope: !0, file: !11, line: 127, type: !12, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression(DW_OP_constu, 13822899094824990995, DW_OP_stack_value))
!20 = distinct !DIGlobalVariable(name: "pp1", scope: !0, file: !11, line: 128, type: !12, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression(DW_OP_constu, 13807238563656833359, DW_OP_stack_value))
!22 = distinct !DIGlobalVariable(name: "pp2", scope: !0, file: !11, line: 129, type: !12, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression(DW_OP_constu, 13796674727720675556, DW_OP_stack_value))
!24 = distinct !DIGlobalVariable(name: "pp3", scope: !0, file: !11, line: 130, type: !12, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression(DW_OP_constu, 13761006866576447148, DW_OP_stack_value))
!26 = distinct !DIGlobalVariable(name: "pp4", scope: !0, file: !11, line: 131, type: !12, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression(DW_OP_constu, 4600839859364092937, DW_OP_stack_value))
!28 = distinct !DIGlobalVariable(name: "qq1", scope: !0, file: !11, line: 132, type: !12, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression(DW_OP_constu, 4589349767556288186, DW_OP_stack_value))
!30 = distinct !DIGlobalVariable(name: "qq2", scope: !0, file: !11, line: 133, type: !12, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression(DW_OP_constu, 4572508369437551375, DW_OP_stack_value))
!32 = distinct !DIGlobalVariable(name: "qq3", scope: !0, file: !11, line: 134, type: !12, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression(DW_OP_constu, 4549020217062988304, DW_OP_stack_value))
!34 = distinct !DIGlobalVariable(name: "qq4", scope: !0, file: !11, line: 135, type: !12, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression(DW_OP_constu, 13749661475056804128, DW_OP_stack_value))
!36 = distinct !DIGlobalVariable(name: "qq5", scope: !0, file: !11, line: 136, type: !12, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression(DW_OP_constu, 13790965133951333688, DW_OP_stack_value))
!38 = distinct !DIGlobalVariable(name: "pa0", scope: !0, file: !11, line: 140, type: !12, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression(DW_OP_constu, 4601145003363971917, DW_OP_stack_value))
!40 = distinct !DIGlobalVariable(name: "pa1", scope: !0, file: !11, line: 141, type: !12, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression(DW_OP_constu, 13823748757779956721, DW_OP_stack_value))
!42 = distinct !DIGlobalVariable(name: "pa2", scope: !0, file: !11, line: 142, type: !12, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression(DW_OP_constu, 4599406442792952036, DW_OP_stack_value))
!44 = distinct !DIGlobalVariable(name: "pa3", scope: !0, file: !11, line: 143, type: !12, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression(DW_OP_constu, 13816027262379501804, DW_OP_stack_value))
!46 = distinct !DIGlobalVariable(name: "pa4", scope: !0, file: !11, line: 144, type: !12, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression(DW_OP_constu, 4585273783536293355, DW_OP_stack_value))
!48 = distinct !DIGlobalVariable(name: "pa5", scope: !0, file: !11, line: 145, type: !12, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression(DW_OP_constu, 13790513781401847615, DW_OP_stack_value))
!50 = distinct !DIGlobalVariable(name: "pa6", scope: !0, file: !11, line: 146, type: !12, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression(DW_OP_constu, 4592332853260247843, DW_OP_stack_value))
!52 = distinct !DIGlobalVariable(name: "qa1", scope: !0, file: !11, line: 147, type: !12, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression(DW_OP_constu, 4603042691266866995, DW_OP_stack_value))
!54 = distinct !DIGlobalVariable(name: "qa2", scope: !0, file: !11, line: 148, type: !12, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression(DW_OP_constu, 4589840220683233703, DW_OP_stack_value))
!56 = distinct !DIGlobalVariable(name: "qa3", scope: !0, file: !11, line: 149, type: !12, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression(DW_OP_constu, 4593713817558660383, DW_OP_stack_value))
!58 = distinct !DIGlobalVariable(name: "qa4", scope: !0, file: !11, line: 150, type: !12, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression(DW_OP_constu, 4579014865432206620, DW_OP_stack_value))
!60 = distinct !DIGlobalVariable(name: "qa5", scope: !0, file: !11, line: 151, type: !12, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression(DW_OP_constu, 4578062215578719517, DW_OP_stack_value))
!62 = distinct !DIGlobalVariable(name: "qa6", scope: !0, file: !11, line: 152, type: !12, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression(DW_OP_constu, 4605786869572042752, DW_OP_stack_value))
!64 = distinct !DIGlobalVariable(name: "erx", scope: !0, file: !11, line: 121, type: !12, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression(DW_OP_constu, 118622047889322841, DW_OP_stack_value))
!66 = distinct !DIGlobalVariable(name: "tiny", scope: !0, file: !11, line: 116, type: !12, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression(DW_OP_constu, 13800212411695588405, DW_OP_stack_value))
!68 = distinct !DIGlobalVariable(name: "ra0", scope: !0, file: !11, line: 156, type: !12, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression(DW_OP_constu, 13827796978819036000, DW_OP_stack_value))
!70 = distinct !DIGlobalVariable(name: "ra1", scope: !0, file: !11, line: 157, type: !12, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression(DW_OP_constu, 13845505633051272998, DW_OP_stack_value))
!72 = distinct !DIGlobalVariable(name: "ra2", scope: !0, file: !11, line: 158, type: !12, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression(DW_OP_constu, 13857347401788662669, DW_OP_stack_value))
!74 = distinct !DIGlobalVariable(name: "ra3", scope: !0, file: !11, line: 159, type: !12, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression(DW_OP_constu, 13863289878263374438, DW_OP_stack_value))
!76 = distinct !DIGlobalVariable(name: "ra4", scope: !0, file: !11, line: 160, type: !12, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression(DW_OP_constu, 13864071267697339314, DW_OP_stack_value))
!78 = distinct !DIGlobalVariable(name: "ra5", scope: !0, file: !11, line: 161, type: !12, isLocal: true, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression(DW_OP_constu, 13858792548545647346, DW_OP_stack_value))
!80 = distinct !DIGlobalVariable(name: "ra6", scope: !0, file: !11, line: 162, type: !12, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression(DW_OP_constu, 13845086631156695644, DW_OP_stack_value))
!82 = distinct !DIGlobalVariable(name: "ra7", scope: !0, file: !11, line: 163, type: !12, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression(DW_OP_constu, 4626224558917056135, DW_OP_stack_value))
!84 = distinct !DIGlobalVariable(name: "sa1", scope: !0, file: !11, line: 164, type: !12, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression(DW_OP_constu, 4639047418206938913, DW_OP_stack_value))
!86 = distinct !DIGlobalVariable(name: "sa2", scope: !0, file: !11, line: 165, type: !12, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression(DW_OP_constu, 4646352579956710001, DW_OP_stack_value))
!88 = distinct !DIGlobalVariable(name: "sa3", scope: !0, file: !11, line: 166, type: !12, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression(DW_OP_constu, 4648888102296496232, DW_OP_stack_value))
!90 = distinct !DIGlobalVariable(name: "sa4", scope: !0, file: !11, line: 167, type: !12, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression(DW_OP_constu, 4646254807205544724, DW_OP_stack_value))
!92 = distinct !DIGlobalVariable(name: "sa5", scope: !0, file: !11, line: 168, type: !12, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression(DW_OP_constu, 4637344925850578476, DW_OP_stack_value))
!94 = distinct !DIGlobalVariable(name: "sa6", scope: !0, file: !11, line: 169, type: !12, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression(DW_OP_constu, 4619083462031723155, DW_OP_stack_value))
!96 = distinct !DIGlobalVariable(name: "sa7", scope: !0, file: !11, line: 170, type: !12, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression(DW_OP_constu, 13812240933853633122, DW_OP_stack_value))
!98 = distinct !DIGlobalVariable(name: "sa8", scope: !0, file: !11, line: 171, type: !12, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression(DW_OP_constu, 13800212411055632202, DW_OP_stack_value))
!100 = distinct !DIGlobalVariable(name: "rb0", scope: !0, file: !11, line: 175, type: !12, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression(DW_OP_constu, 13828746559782815198, DW_OP_stack_value))
!102 = distinct !DIGlobalVariable(name: "rb1", scope: !0, file: !11, line: 176, type: !12, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression(DW_OP_constu, 13849063674483808602, DW_OP_stack_value))
!104 = distinct !DIGlobalVariable(name: "rb2", scope: !0, file: !11, line: 177, type: !12, isLocal: true, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression(DW_OP_constu, 13863227943754788248, DW_OP_stack_value))
!106 = distinct !DIGlobalVariable(name: "rb3", scope: !0, file: !11, line: 178, type: !12, isLocal: true, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression(DW_OP_constu, 13872191346417463848, DW_OP_stack_value))
!108 = distinct !DIGlobalVariable(name: "rb4", scope: !0, file: !11, line: 179, type: !12, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression(DW_OP_constu, 13875595268368259474, DW_OP_stack_value))
!110 = distinct !DIGlobalVariable(name: "rb5", scope: !0, file: !11, line: 180, type: !12, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression(DW_OP_constu, 13870585812621211711, DW_OP_stack_value))
!112 = distinct !DIGlobalVariable(name: "rb6", scope: !0, file: !11, line: 181, type: !12, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression(DW_OP_constu, 4629232622623347088, DW_OP_stack_value))
!114 = distinct !DIGlobalVariable(name: "sb1", scope: !0, file: !11, line: 182, type: !12, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression(DW_OP_constu, 4644439018692124426, DW_OP_stack_value))
!116 = distinct !DIGlobalVariable(name: "sb2", scope: !0, file: !11, line: 183, type: !12, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression(DW_OP_constu, 4654473423640940824, DW_OP_stack_value))
!118 = distinct !DIGlobalVariable(name: "sb3", scope: !0, file: !11, line: 184, type: !12, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression(DW_OP_constu, 4659254977712890986, DW_OP_stack_value))
!120 = distinct !DIGlobalVariable(name: "sb4", scope: !0, file: !11, line: 185, type: !12, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression(DW_OP_constu, 4657832632290065382, DW_OP_stack_value))
!122 = distinct !DIGlobalVariable(name: "sb5", scope: !0, file: !11, line: 186, type: !12, isLocal: true, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression(DW_OP_constu, 4647055610571908963, DW_OP_stack_value))
!124 = distinct !DIGlobalVariable(name: "sb6", scope: !0, file: !11, line: 187, type: !12, isLocal: true, isDefinition: true)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression(DW_OP_constu, 13850381821104172386, DW_OP_stack_value))
!126 = distinct !DIGlobalVariable(name: "sb7", scope: !0, file: !11, line: 188, type: !12, isLocal: true, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression(DW_OP_constu, 4602678819172646912, DW_OP_stack_value))
!128 = distinct !DIGlobalVariable(name: "half", scope: !0, file: !11, line: 117, type: !12, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression(DW_OP_constu, 4611686018427387904, DW_OP_stack_value))
!130 = distinct !DIGlobalVariable(name: "two", scope: !0, file: !11, line: 119, type: !12, isLocal: true, isDefinition: true)
!131 = !{i32 7, !"Dwarf Version", i32 4}
!132 = !{i32 2, !"Debug Info Version", i32 3}
!133 = !{i32 1, !"wchar_size", i32 4}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!137 = distinct !DISubprogram(name: "erf", scope: !11, file: !11, line: 191, type: !138, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!138 = !DISubroutineType(types: !139)
!139 = !{!7, !7}
!140 = !DILocalVariable(name: "x", arg: 1, scope: !137, file: !11, line: 191, type: !7)
!141 = !DILocation(line: 191, column: 20, scope: !137)
!142 = !DILocalVariable(name: "hx", scope: !137, file: !11, line: 197, type: !5)
!143 = !DILocation(line: 197, column: 6, scope: !137)
!144 = !DILocalVariable(name: "ix", scope: !137, file: !11, line: 197, type: !5)
!145 = !DILocation(line: 197, column: 9, scope: !137)
!146 = !DILocalVariable(name: "i", scope: !137, file: !11, line: 197, type: !5)
!147 = !DILocation(line: 197, column: 12, scope: !137)
!148 = !DILocalVariable(name: "R", scope: !137, file: !11, line: 198, type: !7)
!149 = !DILocation(line: 198, column: 9, scope: !137)
!150 = !DILocalVariable(name: "S", scope: !137, file: !11, line: 198, type: !7)
!151 = !DILocation(line: 198, column: 11, scope: !137)
!152 = !DILocalVariable(name: "P", scope: !137, file: !11, line: 198, type: !7)
!153 = !DILocation(line: 198, column: 13, scope: !137)
!154 = !DILocalVariable(name: "Q", scope: !137, file: !11, line: 198, type: !7)
!155 = !DILocation(line: 198, column: 15, scope: !137)
!156 = !DILocalVariable(name: "s", scope: !137, file: !11, line: 198, type: !7)
!157 = !DILocation(line: 198, column: 17, scope: !137)
!158 = !DILocalVariable(name: "y", scope: !137, file: !11, line: 198, type: !7)
!159 = !DILocation(line: 198, column: 19, scope: !137)
!160 = !DILocalVariable(name: "z", scope: !137, file: !11, line: 198, type: !7)
!161 = !DILocation(line: 198, column: 21, scope: !137)
!162 = !DILocalVariable(name: "r", scope: !137, file: !11, line: 198, type: !7)
!163 = !DILocation(line: 198, column: 23, scope: !137)
!164 = !DILocation(line: 199, column: 7, scope: !137)
!165 = !DILocation(line: 199, column: 5, scope: !137)
!166 = !DILocation(line: 200, column: 7, scope: !137)
!167 = !DILocation(line: 200, column: 9, scope: !137)
!168 = !DILocation(line: 200, column: 5, scope: !137)
!169 = !DILocation(line: 201, column: 5, scope: !170)
!170 = distinct !DILexicalBlock(scope: !137, file: !11, line: 201, column: 5)
!171 = !DILocation(line: 201, column: 7, scope: !170)
!172 = !DILocation(line: 201, column: 5, scope: !137)
!173 = !DILocation(line: 202, column: 21, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !11, line: 201, column: 21)
!175 = !DILocation(line: 202, column: 23, scope: !174)
!176 = !DILocation(line: 202, column: 28, scope: !174)
!177 = !DILocation(line: 202, column: 8, scope: !174)
!178 = !DILocation(line: 203, column: 24, scope: !174)
!179 = !DILocation(line: 203, column: 23, scope: !174)
!180 = !DILocation(line: 203, column: 13, scope: !174)
!181 = !DILocation(line: 203, column: 31, scope: !174)
!182 = !DILocation(line: 203, column: 30, scope: !174)
!183 = !DILocation(line: 203, column: 26, scope: !174)
!184 = !DILocation(line: 203, column: 6, scope: !174)
!185 = !DILocation(line: 206, column: 5, scope: !186)
!186 = distinct !DILexicalBlock(scope: !137, file: !11, line: 206, column: 5)
!187 = !DILocation(line: 206, column: 8, scope: !186)
!188 = !DILocation(line: 206, column: 5, scope: !137)
!189 = !DILocation(line: 207, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !191, file: !11, line: 207, column: 9)
!191 = distinct !DILexicalBlock(scope: !186, file: !11, line: 206, column: 22)
!192 = !DILocation(line: 207, column: 12, scope: !190)
!193 = !DILocation(line: 207, column: 9, scope: !191)
!194 = !DILocation(line: 208, column: 14, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !11, line: 208, column: 14)
!196 = distinct !DILexicalBlock(scope: !190, file: !11, line: 207, column: 26)
!197 = !DILocation(line: 208, column: 17, scope: !195)
!198 = !DILocation(line: 208, column: 14, scope: !196)
!199 = !DILocation(line: 209, column: 25, scope: !195)
!200 = !DILocation(line: 209, column: 24, scope: !195)
!201 = !DILocation(line: 209, column: 32, scope: !195)
!202 = !DILocation(line: 209, column: 31, scope: !195)
!203 = !DILocation(line: 209, column: 26, scope: !195)
!204 = !DILocation(line: 209, column: 19, scope: !195)
!205 = !DILocation(line: 209, column: 7, scope: !195)
!206 = !DILocation(line: 210, column: 10, scope: !196)
!207 = !DILocation(line: 210, column: 18, scope: !196)
!208 = !DILocation(line: 210, column: 17, scope: !196)
!209 = !DILocation(line: 210, column: 12, scope: !196)
!210 = !DILocation(line: 210, column: 3, scope: !196)
!211 = !DILocation(line: 212, column: 10, scope: !191)
!212 = !DILocation(line: 212, column: 12, scope: !191)
!213 = !DILocation(line: 212, column: 11, scope: !191)
!214 = !DILocation(line: 212, column: 8, scope: !191)
!215 = !DILocation(line: 213, column: 14, scope: !191)
!216 = !DILocation(line: 213, column: 21, scope: !191)
!217 = !DILocation(line: 213, column: 28, scope: !191)
!218 = !DILocation(line: 213, column: 35, scope: !191)
!219 = !DILocation(line: 213, column: 36, scope: !191)
!220 = !DILocation(line: 213, column: 34, scope: !191)
!221 = !DILocation(line: 213, column: 29, scope: !191)
!222 = !DILocation(line: 213, column: 27, scope: !191)
!223 = !DILocation(line: 213, column: 22, scope: !191)
!224 = !DILocation(line: 213, column: 20, scope: !191)
!225 = !DILocation(line: 213, column: 15, scope: !191)
!226 = !DILocation(line: 213, column: 13, scope: !191)
!227 = !DILocation(line: 213, column: 8, scope: !191)
!228 = !DILocation(line: 214, column: 14, scope: !191)
!229 = !DILocation(line: 214, column: 21, scope: !191)
!230 = !DILocation(line: 214, column: 28, scope: !191)
!231 = !DILocation(line: 214, column: 35, scope: !191)
!232 = !DILocation(line: 214, column: 42, scope: !191)
!233 = !DILocation(line: 214, column: 43, scope: !191)
!234 = !DILocation(line: 214, column: 41, scope: !191)
!235 = !DILocation(line: 214, column: 36, scope: !191)
!236 = !DILocation(line: 214, column: 34, scope: !191)
!237 = !DILocation(line: 214, column: 29, scope: !191)
!238 = !DILocation(line: 214, column: 27, scope: !191)
!239 = !DILocation(line: 214, column: 22, scope: !191)
!240 = !DILocation(line: 214, column: 20, scope: !191)
!241 = !DILocation(line: 214, column: 15, scope: !191)
!242 = !DILocation(line: 214, column: 13, scope: !191)
!243 = !DILocation(line: 214, column: 8, scope: !191)
!244 = !DILocation(line: 215, column: 10, scope: !191)
!245 = !DILocation(line: 215, column: 12, scope: !191)
!246 = !DILocation(line: 215, column: 11, scope: !191)
!247 = !DILocation(line: 215, column: 8, scope: !191)
!248 = !DILocation(line: 216, column: 13, scope: !191)
!249 = !DILocation(line: 216, column: 17, scope: !191)
!250 = !DILocation(line: 216, column: 19, scope: !191)
!251 = !DILocation(line: 216, column: 18, scope: !191)
!252 = !DILocation(line: 216, column: 15, scope: !191)
!253 = !DILocation(line: 216, column: 6, scope: !191)
!254 = !DILocation(line: 218, column: 5, scope: !255)
!255 = distinct !DILexicalBlock(scope: !137, file: !11, line: 218, column: 5)
!256 = !DILocation(line: 218, column: 8, scope: !255)
!257 = !DILocation(line: 218, column: 5, scope: !137)
!258 = !DILocation(line: 219, column: 15, scope: !259)
!259 = distinct !DILexicalBlock(scope: !255, file: !11, line: 218, column: 22)
!260 = !DILocation(line: 219, column: 10, scope: !259)
!261 = !DILocation(line: 219, column: 17, scope: !259)
!262 = !DILocation(line: 219, column: 8, scope: !259)
!263 = !DILocation(line: 220, column: 14, scope: !259)
!264 = !DILocation(line: 220, column: 21, scope: !259)
!265 = !DILocation(line: 220, column: 28, scope: !259)
!266 = !DILocation(line: 220, column: 35, scope: !259)
!267 = !DILocation(line: 220, column: 42, scope: !259)
!268 = !DILocation(line: 220, column: 49, scope: !259)
!269 = !DILocation(line: 220, column: 50, scope: !259)
!270 = !DILocation(line: 220, column: 48, scope: !259)
!271 = !DILocation(line: 220, column: 43, scope: !259)
!272 = !DILocation(line: 220, column: 41, scope: !259)
!273 = !DILocation(line: 220, column: 36, scope: !259)
!274 = !DILocation(line: 220, column: 34, scope: !259)
!275 = !DILocation(line: 220, column: 29, scope: !259)
!276 = !DILocation(line: 220, column: 27, scope: !259)
!277 = !DILocation(line: 220, column: 22, scope: !259)
!278 = !DILocation(line: 220, column: 20, scope: !259)
!279 = !DILocation(line: 220, column: 15, scope: !259)
!280 = !DILocation(line: 220, column: 13, scope: !259)
!281 = !DILocation(line: 220, column: 8, scope: !259)
!282 = !DILocation(line: 221, column: 14, scope: !259)
!283 = !DILocation(line: 221, column: 21, scope: !259)
!284 = !DILocation(line: 221, column: 28, scope: !259)
!285 = !DILocation(line: 221, column: 35, scope: !259)
!286 = !DILocation(line: 221, column: 42, scope: !259)
!287 = !DILocation(line: 221, column: 49, scope: !259)
!288 = !DILocation(line: 221, column: 50, scope: !259)
!289 = !DILocation(line: 221, column: 48, scope: !259)
!290 = !DILocation(line: 221, column: 43, scope: !259)
!291 = !DILocation(line: 221, column: 41, scope: !259)
!292 = !DILocation(line: 221, column: 36, scope: !259)
!293 = !DILocation(line: 221, column: 34, scope: !259)
!294 = !DILocation(line: 221, column: 29, scope: !259)
!295 = !DILocation(line: 221, column: 27, scope: !259)
!296 = !DILocation(line: 221, column: 22, scope: !259)
!297 = !DILocation(line: 221, column: 20, scope: !259)
!298 = !DILocation(line: 221, column: 15, scope: !259)
!299 = !DILocation(line: 221, column: 13, scope: !259)
!300 = !DILocation(line: 221, column: 8, scope: !259)
!301 = !DILocation(line: 222, column: 9, scope: !302)
!302 = distinct !DILexicalBlock(scope: !259, file: !11, line: 222, column: 9)
!303 = !DILocation(line: 222, column: 11, scope: !302)
!304 = !DILocation(line: 222, column: 9, scope: !259)
!305 = !DILocation(line: 222, column: 29, scope: !302)
!306 = !DILocation(line: 222, column: 31, scope: !302)
!307 = !DILocation(line: 222, column: 30, scope: !302)
!308 = !DILocation(line: 222, column: 27, scope: !302)
!309 = !DILocation(line: 222, column: 16, scope: !302)
!310 = !DILocation(line: 222, column: 53, scope: !302)
!311 = !DILocation(line: 222, column: 55, scope: !302)
!312 = !DILocation(line: 222, column: 54, scope: !302)
!313 = !DILocation(line: 222, column: 51, scope: !302)
!314 = !DILocation(line: 222, column: 39, scope: !302)
!315 = !DILocation(line: 224, column: 6, scope: !316)
!316 = distinct !DILexicalBlock(scope: !137, file: !11, line: 224, column: 6)
!317 = !DILocation(line: 224, column: 9, scope: !316)
!318 = !DILocation(line: 224, column: 6, scope: !137)
!319 = !DILocation(line: 225, column: 9, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !11, line: 225, column: 9)
!321 = distinct !DILexicalBlock(scope: !316, file: !11, line: 224, column: 24)
!322 = !DILocation(line: 225, column: 11, scope: !320)
!323 = !DILocation(line: 225, column: 9, scope: !321)
!324 = !DILocation(line: 225, column: 16, scope: !320)
!325 = !DILocation(line: 225, column: 38, scope: !320)
!326 = !DILocation(line: 227, column: 11, scope: !137)
!327 = !DILocation(line: 227, column: 6, scope: !137)
!328 = !DILocation(line: 227, column: 4, scope: !137)
!329 = !DILocation(line: 228, column: 12, scope: !137)
!330 = !DILocation(line: 228, column: 14, scope: !137)
!331 = !DILocation(line: 228, column: 13, scope: !137)
!332 = !DILocation(line: 228, column: 10, scope: !137)
!333 = !DILocation(line: 228, column: 5, scope: !137)
!334 = !DILocation(line: 229, column: 5, scope: !335)
!335 = distinct !DILexicalBlock(scope: !137, file: !11, line: 229, column: 5)
!336 = !DILocation(line: 229, column: 7, scope: !335)
!337 = !DILocation(line: 229, column: 5, scope: !137)
!338 = !DILocation(line: 230, column: 12, scope: !339)
!339 = distinct !DILexicalBlock(scope: !335, file: !11, line: 229, column: 21)
!340 = !DILocation(line: 230, column: 19, scope: !339)
!341 = !DILocation(line: 230, column: 26, scope: !339)
!342 = !DILocation(line: 230, column: 33, scope: !339)
!343 = !DILocation(line: 230, column: 40, scope: !339)
!344 = !DILocation(line: 231, column: 9, scope: !339)
!345 = !DILocation(line: 231, column: 16, scope: !339)
!346 = !DILocation(line: 231, column: 17, scope: !339)
!347 = !DILocation(line: 231, column: 15, scope: !339)
!348 = !DILocation(line: 231, column: 10, scope: !339)
!349 = !DILocation(line: 231, column: 8, scope: !339)
!350 = !DILocation(line: 230, column: 41, scope: !339)
!351 = !DILocation(line: 230, column: 39, scope: !339)
!352 = !DILocation(line: 230, column: 34, scope: !339)
!353 = !DILocation(line: 230, column: 32, scope: !339)
!354 = !DILocation(line: 230, column: 27, scope: !339)
!355 = !DILocation(line: 230, column: 25, scope: !339)
!356 = !DILocation(line: 230, column: 20, scope: !339)
!357 = !DILocation(line: 230, column: 18, scope: !339)
!358 = !DILocation(line: 230, column: 13, scope: !339)
!359 = !DILocation(line: 230, column: 11, scope: !339)
!360 = !DILocation(line: 230, column: 7, scope: !339)
!361 = !DILocation(line: 232, column: 12, scope: !339)
!362 = !DILocation(line: 232, column: 19, scope: !339)
!363 = !DILocation(line: 232, column: 26, scope: !339)
!364 = !DILocation(line: 232, column: 33, scope: !339)
!365 = !DILocation(line: 232, column: 40, scope: !339)
!366 = !DILocation(line: 233, column: 9, scope: !339)
!367 = !DILocation(line: 233, column: 16, scope: !339)
!368 = !DILocation(line: 233, column: 23, scope: !339)
!369 = !DILocation(line: 233, column: 24, scope: !339)
!370 = !DILocation(line: 233, column: 22, scope: !339)
!371 = !DILocation(line: 233, column: 17, scope: !339)
!372 = !DILocation(line: 233, column: 15, scope: !339)
!373 = !DILocation(line: 233, column: 10, scope: !339)
!374 = !DILocation(line: 233, column: 8, scope: !339)
!375 = !DILocation(line: 232, column: 41, scope: !339)
!376 = !DILocation(line: 232, column: 39, scope: !339)
!377 = !DILocation(line: 232, column: 34, scope: !339)
!378 = !DILocation(line: 232, column: 32, scope: !339)
!379 = !DILocation(line: 232, column: 27, scope: !339)
!380 = !DILocation(line: 232, column: 25, scope: !339)
!381 = !DILocation(line: 232, column: 20, scope: !339)
!382 = !DILocation(line: 232, column: 18, scope: !339)
!383 = !DILocation(line: 232, column: 13, scope: !339)
!384 = !DILocation(line: 232, column: 11, scope: !339)
!385 = !DILocation(line: 232, column: 7, scope: !339)
!386 = !DILocation(line: 234, column: 2, scope: !339)
!387 = !DILocation(line: 235, column: 12, scope: !388)
!388 = distinct !DILexicalBlock(scope: !335, file: !11, line: 234, column: 9)
!389 = !DILocation(line: 235, column: 19, scope: !388)
!390 = !DILocation(line: 235, column: 26, scope: !388)
!391 = !DILocation(line: 235, column: 33, scope: !388)
!392 = !DILocation(line: 235, column: 40, scope: !388)
!393 = !DILocation(line: 236, column: 9, scope: !388)
!394 = !DILocation(line: 236, column: 10, scope: !388)
!395 = !DILocation(line: 236, column: 8, scope: !388)
!396 = !DILocation(line: 235, column: 41, scope: !388)
!397 = !DILocation(line: 235, column: 39, scope: !388)
!398 = !DILocation(line: 235, column: 34, scope: !388)
!399 = !DILocation(line: 235, column: 32, scope: !388)
!400 = !DILocation(line: 235, column: 27, scope: !388)
!401 = !DILocation(line: 235, column: 25, scope: !388)
!402 = !DILocation(line: 235, column: 20, scope: !388)
!403 = !DILocation(line: 235, column: 18, scope: !388)
!404 = !DILocation(line: 235, column: 13, scope: !388)
!405 = !DILocation(line: 235, column: 11, scope: !388)
!406 = !DILocation(line: 235, column: 7, scope: !388)
!407 = !DILocation(line: 237, column: 12, scope: !388)
!408 = !DILocation(line: 237, column: 19, scope: !388)
!409 = !DILocation(line: 237, column: 26, scope: !388)
!410 = !DILocation(line: 237, column: 33, scope: !388)
!411 = !DILocation(line: 237, column: 40, scope: !388)
!412 = !DILocation(line: 238, column: 9, scope: !388)
!413 = !DILocation(line: 238, column: 16, scope: !388)
!414 = !DILocation(line: 238, column: 17, scope: !388)
!415 = !DILocation(line: 238, column: 15, scope: !388)
!416 = !DILocation(line: 238, column: 10, scope: !388)
!417 = !DILocation(line: 238, column: 8, scope: !388)
!418 = !DILocation(line: 237, column: 41, scope: !388)
!419 = !DILocation(line: 237, column: 39, scope: !388)
!420 = !DILocation(line: 237, column: 34, scope: !388)
!421 = !DILocation(line: 237, column: 32, scope: !388)
!422 = !DILocation(line: 237, column: 27, scope: !388)
!423 = !DILocation(line: 237, column: 25, scope: !388)
!424 = !DILocation(line: 237, column: 20, scope: !388)
!425 = !DILocation(line: 237, column: 18, scope: !388)
!426 = !DILocation(line: 237, column: 13, scope: !388)
!427 = !DILocation(line: 237, column: 11, scope: !388)
!428 = !DILocation(line: 237, column: 7, scope: !388)
!429 = !DILocation(line: 240, column: 7, scope: !137)
!430 = !DILocation(line: 240, column: 5, scope: !137)
!431 = !DILocation(line: 241, column: 2, scope: !137)
!432 = !DILocation(line: 241, column: 10, scope: !137)
!433 = !DILocation(line: 242, column: 23, scope: !137)
!434 = !DILocation(line: 242, column: 22, scope: !137)
!435 = !DILocation(line: 242, column: 25, scope: !137)
!436 = !DILocation(line: 242, column: 24, scope: !137)
!437 = !DILocation(line: 242, column: 26, scope: !137)
!438 = !DILocation(line: 242, column: 8, scope: !137)
!439 = !DILocation(line: 242, column: 50, scope: !137)
!440 = !DILocation(line: 242, column: 52, scope: !137)
!441 = !DILocation(line: 242, column: 51, scope: !137)
!442 = !DILocation(line: 242, column: 56, scope: !137)
!443 = !DILocation(line: 242, column: 58, scope: !137)
!444 = !DILocation(line: 242, column: 57, scope: !137)
!445 = !DILocation(line: 242, column: 54, scope: !137)
!446 = !DILocation(line: 242, column: 61, scope: !137)
!447 = !DILocation(line: 242, column: 63, scope: !137)
!448 = !DILocation(line: 242, column: 62, scope: !137)
!449 = !DILocation(line: 242, column: 60, scope: !137)
!450 = !DILocation(line: 242, column: 35, scope: !137)
!451 = !DILocation(line: 242, column: 34, scope: !137)
!452 = !DILocation(line: 242, column: 5, scope: !137)
!453 = !DILocation(line: 243, column: 5, scope: !454)
!454 = distinct !DILexicalBlock(scope: !137, file: !11, line: 243, column: 5)
!455 = !DILocation(line: 243, column: 7, scope: !454)
!456 = !DILocation(line: 243, column: 5, scope: !137)
!457 = !DILocation(line: 243, column: 23, scope: !454)
!458 = !DILocation(line: 243, column: 25, scope: !454)
!459 = !DILocation(line: 243, column: 24, scope: !454)
!460 = !DILocation(line: 243, column: 22, scope: !454)
!461 = !DILocation(line: 243, column: 12, scope: !454)
!462 = !DILocation(line: 243, column: 41, scope: !454)
!463 = !DILocation(line: 243, column: 43, scope: !454)
!464 = !DILocation(line: 243, column: 42, scope: !454)
!465 = !DILocation(line: 243, column: 44, scope: !454)
!466 = !DILocation(line: 243, column: 33, scope: !454)
!467 = !DILocation(line: 244, column: 1, scope: !137)
!468 = distinct !DISubprogram(name: "erfc", scope: !11, file: !11, line: 247, type: !138, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!469 = !DILocalVariable(name: "x", arg: 1, scope: !468, file: !11, line: 247, type: !7)
!470 = !DILocation(line: 247, column: 21, scope: !468)
!471 = !DILocalVariable(name: "hx", scope: !468, file: !11, line: 253, type: !5)
!472 = !DILocation(line: 253, column: 6, scope: !468)
!473 = !DILocalVariable(name: "ix", scope: !468, file: !11, line: 253, type: !5)
!474 = !DILocation(line: 253, column: 9, scope: !468)
!475 = !DILocalVariable(name: "R", scope: !468, file: !11, line: 254, type: !7)
!476 = !DILocation(line: 254, column: 9, scope: !468)
!477 = !DILocalVariable(name: "S", scope: !468, file: !11, line: 254, type: !7)
!478 = !DILocation(line: 254, column: 11, scope: !468)
!479 = !DILocalVariable(name: "P", scope: !468, file: !11, line: 254, type: !7)
!480 = !DILocation(line: 254, column: 13, scope: !468)
!481 = !DILocalVariable(name: "Q", scope: !468, file: !11, line: 254, type: !7)
!482 = !DILocation(line: 254, column: 15, scope: !468)
!483 = !DILocalVariable(name: "s", scope: !468, file: !11, line: 254, type: !7)
!484 = !DILocation(line: 254, column: 17, scope: !468)
!485 = !DILocalVariable(name: "y", scope: !468, file: !11, line: 254, type: !7)
!486 = !DILocation(line: 254, column: 19, scope: !468)
!487 = !DILocalVariable(name: "z", scope: !468, file: !11, line: 254, type: !7)
!488 = !DILocation(line: 254, column: 21, scope: !468)
!489 = !DILocalVariable(name: "r", scope: !468, file: !11, line: 254, type: !7)
!490 = !DILocation(line: 254, column: 23, scope: !468)
!491 = !DILocation(line: 255, column: 7, scope: !468)
!492 = !DILocation(line: 255, column: 5, scope: !468)
!493 = !DILocation(line: 256, column: 7, scope: !468)
!494 = !DILocation(line: 256, column: 9, scope: !468)
!495 = !DILocation(line: 256, column: 5, scope: !468)
!496 = !DILocation(line: 257, column: 5, scope: !497)
!497 = distinct !DILexicalBlock(scope: !468, file: !11, line: 257, column: 5)
!498 = !DILocation(line: 257, column: 7, scope: !497)
!499 = !DILocation(line: 257, column: 5, scope: !468)
!500 = !DILocation(line: 259, column: 33, scope: !501)
!501 = distinct !DILexicalBlock(scope: !497, file: !11, line: 257, column: 21)
!502 = !DILocation(line: 259, column: 35, scope: !501)
!503 = !DILocation(line: 259, column: 40, scope: !501)
!504 = !DILocation(line: 259, column: 13, scope: !501)
!505 = !DILocation(line: 259, column: 49, scope: !501)
!506 = !DILocation(line: 259, column: 48, scope: !501)
!507 = !DILocation(line: 259, column: 44, scope: !501)
!508 = !DILocation(line: 259, column: 6, scope: !501)
!509 = !DILocation(line: 262, column: 5, scope: !510)
!510 = distinct !DILexicalBlock(scope: !468, file: !11, line: 262, column: 5)
!511 = !DILocation(line: 262, column: 8, scope: !510)
!512 = !DILocation(line: 262, column: 5, scope: !468)
!513 = !DILocation(line: 263, column: 9, scope: !514)
!514 = distinct !DILexicalBlock(scope: !515, file: !11, line: 263, column: 9)
!515 = distinct !DILexicalBlock(scope: !510, file: !11, line: 262, column: 22)
!516 = !DILocation(line: 263, column: 12, scope: !514)
!517 = !DILocation(line: 263, column: 9, scope: !515)
!518 = !DILocation(line: 264, column: 14, scope: !514)
!519 = !DILocation(line: 264, column: 13, scope: !514)
!520 = !DILocation(line: 264, column: 3, scope: !514)
!521 = !DILocation(line: 265, column: 10, scope: !515)
!522 = !DILocation(line: 265, column: 12, scope: !515)
!523 = !DILocation(line: 265, column: 11, scope: !515)
!524 = !DILocation(line: 265, column: 8, scope: !515)
!525 = !DILocation(line: 266, column: 14, scope: !515)
!526 = !DILocation(line: 266, column: 21, scope: !515)
!527 = !DILocation(line: 266, column: 28, scope: !515)
!528 = !DILocation(line: 266, column: 35, scope: !515)
!529 = !DILocation(line: 266, column: 36, scope: !515)
!530 = !DILocation(line: 266, column: 34, scope: !515)
!531 = !DILocation(line: 266, column: 29, scope: !515)
!532 = !DILocation(line: 266, column: 27, scope: !515)
!533 = !DILocation(line: 266, column: 22, scope: !515)
!534 = !DILocation(line: 266, column: 20, scope: !515)
!535 = !DILocation(line: 266, column: 15, scope: !515)
!536 = !DILocation(line: 266, column: 13, scope: !515)
!537 = !DILocation(line: 266, column: 8, scope: !515)
!538 = !DILocation(line: 267, column: 14, scope: !515)
!539 = !DILocation(line: 267, column: 21, scope: !515)
!540 = !DILocation(line: 267, column: 28, scope: !515)
!541 = !DILocation(line: 267, column: 35, scope: !515)
!542 = !DILocation(line: 267, column: 42, scope: !515)
!543 = !DILocation(line: 267, column: 43, scope: !515)
!544 = !DILocation(line: 267, column: 41, scope: !515)
!545 = !DILocation(line: 267, column: 36, scope: !515)
!546 = !DILocation(line: 267, column: 34, scope: !515)
!547 = !DILocation(line: 267, column: 29, scope: !515)
!548 = !DILocation(line: 267, column: 27, scope: !515)
!549 = !DILocation(line: 267, column: 22, scope: !515)
!550 = !DILocation(line: 267, column: 20, scope: !515)
!551 = !DILocation(line: 267, column: 15, scope: !515)
!552 = !DILocation(line: 267, column: 13, scope: !515)
!553 = !DILocation(line: 267, column: 8, scope: !515)
!554 = !DILocation(line: 268, column: 10, scope: !515)
!555 = !DILocation(line: 268, column: 12, scope: !515)
!556 = !DILocation(line: 268, column: 11, scope: !515)
!557 = !DILocation(line: 268, column: 8, scope: !515)
!558 = !DILocation(line: 269, column: 9, scope: !559)
!559 = distinct !DILexicalBlock(scope: !515, file: !11, line: 269, column: 9)
!560 = !DILocation(line: 269, column: 12, scope: !559)
!561 = !DILocation(line: 269, column: 9, scope: !515)
!562 = !DILocation(line: 270, column: 15, scope: !563)
!563 = distinct !DILexicalBlock(scope: !559, file: !11, line: 269, column: 26)
!564 = !DILocation(line: 270, column: 17, scope: !563)
!565 = !DILocation(line: 270, column: 19, scope: !563)
!566 = !DILocation(line: 270, column: 18, scope: !563)
!567 = !DILocation(line: 270, column: 16, scope: !563)
!568 = !DILocation(line: 270, column: 13, scope: !563)
!569 = !DILocation(line: 270, column: 3, scope: !563)
!570 = !DILocation(line: 272, column: 7, scope: !571)
!571 = distinct !DILexicalBlock(scope: !559, file: !11, line: 271, column: 13)
!572 = !DILocation(line: 272, column: 9, scope: !571)
!573 = !DILocation(line: 272, column: 8, scope: !571)
!574 = !DILocation(line: 272, column: 5, scope: !571)
!575 = !DILocation(line: 273, column: 9, scope: !571)
!576 = !DILocation(line: 273, column: 10, scope: !571)
!577 = !DILocation(line: 273, column: 5, scope: !571)
!578 = !DILocation(line: 274, column: 24, scope: !571)
!579 = !DILocation(line: 274, column: 22, scope: !571)
!580 = !DILocation(line: 274, column: 10, scope: !571)
!581 = !DILocation(line: 277, column: 5, scope: !582)
!582 = distinct !DILexicalBlock(scope: !468, file: !11, line: 277, column: 5)
!583 = !DILocation(line: 277, column: 8, scope: !582)
!584 = !DILocation(line: 277, column: 5, scope: !468)
!585 = !DILocation(line: 278, column: 15, scope: !586)
!586 = distinct !DILexicalBlock(scope: !582, file: !11, line: 277, column: 22)
!587 = !DILocation(line: 278, column: 10, scope: !586)
!588 = !DILocation(line: 278, column: 17, scope: !586)
!589 = !DILocation(line: 278, column: 8, scope: !586)
!590 = !DILocation(line: 279, column: 14, scope: !586)
!591 = !DILocation(line: 279, column: 21, scope: !586)
!592 = !DILocation(line: 279, column: 28, scope: !586)
!593 = !DILocation(line: 279, column: 35, scope: !586)
!594 = !DILocation(line: 279, column: 42, scope: !586)
!595 = !DILocation(line: 279, column: 49, scope: !586)
!596 = !DILocation(line: 279, column: 50, scope: !586)
!597 = !DILocation(line: 279, column: 48, scope: !586)
!598 = !DILocation(line: 279, column: 43, scope: !586)
!599 = !DILocation(line: 279, column: 41, scope: !586)
!600 = !DILocation(line: 279, column: 36, scope: !586)
!601 = !DILocation(line: 279, column: 34, scope: !586)
!602 = !DILocation(line: 279, column: 29, scope: !586)
!603 = !DILocation(line: 279, column: 27, scope: !586)
!604 = !DILocation(line: 279, column: 22, scope: !586)
!605 = !DILocation(line: 279, column: 20, scope: !586)
!606 = !DILocation(line: 279, column: 15, scope: !586)
!607 = !DILocation(line: 279, column: 13, scope: !586)
!608 = !DILocation(line: 279, column: 8, scope: !586)
!609 = !DILocation(line: 280, column: 14, scope: !586)
!610 = !DILocation(line: 280, column: 21, scope: !586)
!611 = !DILocation(line: 280, column: 28, scope: !586)
!612 = !DILocation(line: 280, column: 35, scope: !586)
!613 = !DILocation(line: 280, column: 42, scope: !586)
!614 = !DILocation(line: 280, column: 49, scope: !586)
!615 = !DILocation(line: 280, column: 50, scope: !586)
!616 = !DILocation(line: 280, column: 48, scope: !586)
!617 = !DILocation(line: 280, column: 43, scope: !586)
!618 = !DILocation(line: 280, column: 41, scope: !586)
!619 = !DILocation(line: 280, column: 36, scope: !586)
!620 = !DILocation(line: 280, column: 34, scope: !586)
!621 = !DILocation(line: 280, column: 29, scope: !586)
!622 = !DILocation(line: 280, column: 27, scope: !586)
!623 = !DILocation(line: 280, column: 22, scope: !586)
!624 = !DILocation(line: 280, column: 20, scope: !586)
!625 = !DILocation(line: 280, column: 15, scope: !586)
!626 = !DILocation(line: 280, column: 13, scope: !586)
!627 = !DILocation(line: 280, column: 8, scope: !586)
!628 = !DILocation(line: 281, column: 9, scope: !629)
!629 = distinct !DILexicalBlock(scope: !586, file: !11, line: 281, column: 9)
!630 = !DILocation(line: 281, column: 11, scope: !629)
!631 = !DILocation(line: 281, column: 9, scope: !586)
!632 = !DILocation(line: 282, column: 13, scope: !633)
!633 = distinct !DILexicalBlock(scope: !629, file: !11, line: 281, column: 16)
!634 = !DILocation(line: 282, column: 31, scope: !633)
!635 = !DILocation(line: 282, column: 35, scope: !633)
!636 = !DILocation(line: 282, column: 37, scope: !633)
!637 = !DILocation(line: 282, column: 36, scope: !633)
!638 = !DILocation(line: 282, column: 33, scope: !633)
!639 = !DILocation(line: 282, column: 24, scope: !633)
!640 = !DILocation(line: 284, column: 11, scope: !641)
!641 = distinct !DILexicalBlock(scope: !629, file: !11, line: 283, column: 13)
!642 = !DILocation(line: 284, column: 13, scope: !641)
!643 = !DILocation(line: 284, column: 12, scope: !641)
!644 = !DILocation(line: 284, column: 10, scope: !641)
!645 = !DILocation(line: 284, column: 5, scope: !641)
!646 = !DILocation(line: 284, column: 27, scope: !641)
!647 = !DILocation(line: 284, column: 26, scope: !641)
!648 = !DILocation(line: 284, column: 16, scope: !641)
!649 = !DILocation(line: 287, column: 6, scope: !650)
!650 = distinct !DILexicalBlock(scope: !468, file: !11, line: 287, column: 6)
!651 = !DILocation(line: 287, column: 9, scope: !650)
!652 = !DILocation(line: 287, column: 6, scope: !468)
!653 = !DILocation(line: 288, column: 15, scope: !654)
!654 = distinct !DILexicalBlock(scope: !650, file: !11, line: 287, column: 23)
!655 = !DILocation(line: 288, column: 10, scope: !654)
!656 = !DILocation(line: 288, column: 8, scope: !654)
!657 = !DILocation(line: 289, column: 16, scope: !654)
!658 = !DILocation(line: 289, column: 18, scope: !654)
!659 = !DILocation(line: 289, column: 17, scope: !654)
!660 = !DILocation(line: 289, column: 14, scope: !654)
!661 = !DILocation(line: 289, column: 9, scope: !654)
!662 = !DILocation(line: 290, column: 9, scope: !663)
!663 = distinct !DILexicalBlock(scope: !654, file: !11, line: 290, column: 9)
!664 = !DILocation(line: 290, column: 11, scope: !663)
!665 = !DILocation(line: 290, column: 9, scope: !654)
!666 = !DILocation(line: 291, column: 16, scope: !667)
!667 = distinct !DILexicalBlock(scope: !663, file: !11, line: 290, column: 25)
!668 = !DILocation(line: 291, column: 23, scope: !667)
!669 = !DILocation(line: 291, column: 30, scope: !667)
!670 = !DILocation(line: 291, column: 37, scope: !667)
!671 = !DILocation(line: 291, column: 44, scope: !667)
!672 = !DILocation(line: 292, column: 9, scope: !667)
!673 = !DILocation(line: 292, column: 16, scope: !667)
!674 = !DILocation(line: 292, column: 17, scope: !667)
!675 = !DILocation(line: 292, column: 15, scope: !667)
!676 = !DILocation(line: 292, column: 10, scope: !667)
!677 = !DILocation(line: 292, column: 8, scope: !667)
!678 = !DILocation(line: 291, column: 45, scope: !667)
!679 = !DILocation(line: 291, column: 43, scope: !667)
!680 = !DILocation(line: 291, column: 38, scope: !667)
!681 = !DILocation(line: 291, column: 36, scope: !667)
!682 = !DILocation(line: 291, column: 31, scope: !667)
!683 = !DILocation(line: 291, column: 29, scope: !667)
!684 = !DILocation(line: 291, column: 24, scope: !667)
!685 = !DILocation(line: 291, column: 22, scope: !667)
!686 = !DILocation(line: 291, column: 17, scope: !667)
!687 = !DILocation(line: 291, column: 15, scope: !667)
!688 = !DILocation(line: 291, column: 11, scope: !667)
!689 = !DILocation(line: 293, column: 16, scope: !667)
!690 = !DILocation(line: 293, column: 23, scope: !667)
!691 = !DILocation(line: 293, column: 30, scope: !667)
!692 = !DILocation(line: 293, column: 37, scope: !667)
!693 = !DILocation(line: 293, column: 44, scope: !667)
!694 = !DILocation(line: 294, column: 9, scope: !667)
!695 = !DILocation(line: 294, column: 16, scope: !667)
!696 = !DILocation(line: 294, column: 23, scope: !667)
!697 = !DILocation(line: 294, column: 24, scope: !667)
!698 = !DILocation(line: 294, column: 22, scope: !667)
!699 = !DILocation(line: 294, column: 17, scope: !667)
!700 = !DILocation(line: 294, column: 15, scope: !667)
!701 = !DILocation(line: 294, column: 10, scope: !667)
!702 = !DILocation(line: 294, column: 8, scope: !667)
!703 = !DILocation(line: 293, column: 45, scope: !667)
!704 = !DILocation(line: 293, column: 43, scope: !667)
!705 = !DILocation(line: 293, column: 38, scope: !667)
!706 = !DILocation(line: 293, column: 36, scope: !667)
!707 = !DILocation(line: 293, column: 31, scope: !667)
!708 = !DILocation(line: 293, column: 29, scope: !667)
!709 = !DILocation(line: 293, column: 24, scope: !667)
!710 = !DILocation(line: 293, column: 22, scope: !667)
!711 = !DILocation(line: 293, column: 17, scope: !667)
!712 = !DILocation(line: 293, column: 15, scope: !667)
!713 = !DILocation(line: 293, column: 11, scope: !667)
!714 = !DILocation(line: 295, column: 6, scope: !667)
!715 = !DILocation(line: 296, column: 6, scope: !716)
!716 = distinct !DILexicalBlock(scope: !717, file: !11, line: 296, column: 6)
!717 = distinct !DILexicalBlock(scope: !663, file: !11, line: 295, column: 13)
!718 = !DILocation(line: 296, column: 8, scope: !716)
!719 = !DILocation(line: 296, column: 10, scope: !716)
!720 = !DILocation(line: 296, column: 12, scope: !716)
!721 = !DILocation(line: 296, column: 14, scope: !716)
!722 = !DILocation(line: 296, column: 6, scope: !717)
!723 = !DILocation(line: 296, column: 28, scope: !716)
!724 = !DILocation(line: 297, column: 16, scope: !717)
!725 = !DILocation(line: 297, column: 23, scope: !717)
!726 = !DILocation(line: 297, column: 30, scope: !717)
!727 = !DILocation(line: 297, column: 37, scope: !717)
!728 = !DILocation(line: 297, column: 44, scope: !717)
!729 = !DILocation(line: 298, column: 9, scope: !717)
!730 = !DILocation(line: 298, column: 10, scope: !717)
!731 = !DILocation(line: 298, column: 8, scope: !717)
!732 = !DILocation(line: 297, column: 45, scope: !717)
!733 = !DILocation(line: 297, column: 43, scope: !717)
!734 = !DILocation(line: 297, column: 38, scope: !717)
!735 = !DILocation(line: 297, column: 36, scope: !717)
!736 = !DILocation(line: 297, column: 31, scope: !717)
!737 = !DILocation(line: 297, column: 29, scope: !717)
!738 = !DILocation(line: 297, column: 24, scope: !717)
!739 = !DILocation(line: 297, column: 22, scope: !717)
!740 = !DILocation(line: 297, column: 17, scope: !717)
!741 = !DILocation(line: 297, column: 15, scope: !717)
!742 = !DILocation(line: 297, column: 11, scope: !717)
!743 = !DILocation(line: 299, column: 16, scope: !717)
!744 = !DILocation(line: 299, column: 23, scope: !717)
!745 = !DILocation(line: 299, column: 30, scope: !717)
!746 = !DILocation(line: 299, column: 37, scope: !717)
!747 = !DILocation(line: 299, column: 44, scope: !717)
!748 = !DILocation(line: 300, column: 9, scope: !717)
!749 = !DILocation(line: 300, column: 16, scope: !717)
!750 = !DILocation(line: 300, column: 17, scope: !717)
!751 = !DILocation(line: 300, column: 15, scope: !717)
!752 = !DILocation(line: 300, column: 10, scope: !717)
!753 = !DILocation(line: 300, column: 8, scope: !717)
!754 = !DILocation(line: 299, column: 45, scope: !717)
!755 = !DILocation(line: 299, column: 43, scope: !717)
!756 = !DILocation(line: 299, column: 38, scope: !717)
!757 = !DILocation(line: 299, column: 36, scope: !717)
!758 = !DILocation(line: 299, column: 31, scope: !717)
!759 = !DILocation(line: 299, column: 29, scope: !717)
!760 = !DILocation(line: 299, column: 24, scope: !717)
!761 = !DILocation(line: 299, column: 22, scope: !717)
!762 = !DILocation(line: 299, column: 17, scope: !717)
!763 = !DILocation(line: 299, column: 15, scope: !717)
!764 = !DILocation(line: 299, column: 11, scope: !717)
!765 = !DILocation(line: 302, column: 11, scope: !654)
!766 = !DILocation(line: 302, column: 9, scope: !654)
!767 = !DILocation(line: 303, column: 6, scope: !654)
!768 = !DILocation(line: 303, column: 15, scope: !654)
!769 = !DILocation(line: 304, column: 27, scope: !654)
!770 = !DILocation(line: 304, column: 26, scope: !654)
!771 = !DILocation(line: 304, column: 29, scope: !654)
!772 = !DILocation(line: 304, column: 28, scope: !654)
!773 = !DILocation(line: 304, column: 30, scope: !654)
!774 = !DILocation(line: 304, column: 12, scope: !654)
!775 = !DILocation(line: 305, column: 19, scope: !654)
!776 = !DILocation(line: 305, column: 21, scope: !654)
!777 = !DILocation(line: 305, column: 20, scope: !654)
!778 = !DILocation(line: 305, column: 25, scope: !654)
!779 = !DILocation(line: 305, column: 27, scope: !654)
!780 = !DILocation(line: 305, column: 26, scope: !654)
!781 = !DILocation(line: 305, column: 23, scope: !654)
!782 = !DILocation(line: 305, column: 30, scope: !654)
!783 = !DILocation(line: 305, column: 32, scope: !654)
!784 = !DILocation(line: 305, column: 31, scope: !654)
!785 = !DILocation(line: 305, column: 29, scope: !654)
!786 = !DILocation(line: 305, column: 4, scope: !654)
!787 = !DILocation(line: 304, column: 38, scope: !654)
!788 = !DILocation(line: 304, column: 9, scope: !654)
!789 = !DILocation(line: 306, column: 9, scope: !790)
!790 = distinct !DILexicalBlock(scope: !654, file: !11, line: 306, column: 9)
!791 = !DILocation(line: 306, column: 11, scope: !790)
!792 = !DILocation(line: 306, column: 9, scope: !654)
!793 = !DILocation(line: 306, column: 22, scope: !790)
!794 = !DILocation(line: 306, column: 24, scope: !790)
!795 = !DILocation(line: 306, column: 23, scope: !790)
!796 = !DILocation(line: 306, column: 15, scope: !790)
!797 = !DILocation(line: 306, column: 43, scope: !790)
!798 = !DILocation(line: 306, column: 45, scope: !790)
!799 = !DILocation(line: 306, column: 44, scope: !790)
!800 = !DILocation(line: 306, column: 42, scope: !790)
!801 = !DILocation(line: 306, column: 32, scope: !790)
!802 = !DILocation(line: 308, column: 9, scope: !803)
!803 = distinct !DILexicalBlock(scope: !804, file: !11, line: 308, column: 9)
!804 = distinct !DILexicalBlock(scope: !650, file: !11, line: 307, column: 9)
!805 = !DILocation(line: 308, column: 11, scope: !803)
!806 = !DILocation(line: 308, column: 9, scope: !804)
!807 = !DILocation(line: 308, column: 15, scope: !803)
!808 = !DILocation(line: 308, column: 38, scope: !803)
!809 = !DILocation(line: 310, column: 1, scope: !468)
!810 = distinct !DISubprogram(name: "main", scope: !11, file: !11, line: 314, type: !811, scopeLine: 314, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!811 = !DISubroutineType(types: !812)
!812 = !{!5}
!813 = !DILocalVariable(name: "a0", scope: !810, file: !11, line: 315, type: !7)
!814 = !DILocation(line: 315, column: 12, scope: !810)
!815 = !DILocation(line: 316, column: 24, scope: !810)
!816 = !DILocation(line: 316, column: 5, scope: !810)
!817 = !DILocalVariable(name: "r", scope: !810, file: !11, line: 318, type: !7)
!818 = !DILocation(line: 318, column: 12, scope: !810)
!819 = !DILocation(line: 318, column: 20, scope: !810)
!820 = !DILocation(line: 318, column: 16, scope: !810)
!821 = !DILocation(line: 319, column: 5, scope: !810)
