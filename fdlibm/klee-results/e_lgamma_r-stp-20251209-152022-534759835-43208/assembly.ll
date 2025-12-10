; ModuleID = 'e_lgamma_r.bc'
source_filename = "./e_lgamma_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = internal global double 0.000000e+00, align 8, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_lgamma_r(double %x, i32* %signgamp) #0 !dbg !148 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %signgamp.addr = alloca i32*, align 8
  %t = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  %nadj = alloca double, align 8
  %p = alloca double, align 8
  %p1 = alloca double, align 8
  %p2 = alloca double, align 8
  %p3 = alloca double, align 8
  %q = alloca double, align 8
  %r = alloca double, align 8
  %w = alloca double, align 8
  %i = alloca i32, align 4
  %hx = alloca i32, align 4
  %lx = alloca i32, align 4
  %ix = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !151, metadata !DIExpression()), !dbg !152
  store i32* %signgamp, i32** %signgamp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %signgamp.addr, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata double* %t, metadata !155, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata double* %y, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata double* %z, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata double* %nadj, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata double* %p, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata double* %p1, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata double* %p2, metadata !167, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.declare(metadata double* %p3, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata double* %q, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata double* %r, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata double* %w, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata i32* %i, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !179, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata i32* %lx, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !183, metadata !DIExpression()), !dbg !184
  %0 = bitcast double* %x.addr to i32*, !dbg !185
  %1 = load i32, i32* %0, align 8, !dbg !185
  store i32 %1, i32* %hx, align 4, !dbg !186
  %2 = bitcast double* %x.addr to i32*, !dbg !187
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 1, !dbg !187
  %3 = load i32, i32* %add.ptr, align 4, !dbg !187
  store i32 %3, i32* %lx, align 4, !dbg !188
  %4 = load i32*, i32** %signgamp.addr, align 8, !dbg !189
  store i32 1, i32* %4, align 4, !dbg !190
  %5 = load i32, i32* %hx, align 4, !dbg !191
  %and = and i32 %5, 2147483647, !dbg !192
  store i32 %and, i32* %ix, align 4, !dbg !193
  %6 = load i32, i32* %ix, align 4, !dbg !194
  %cmp = icmp sge i32 %6, 2146435072, !dbg !196
  br i1 %cmp, label %if.then, label %if.end, !dbg !197

if.then:                                          ; preds = %entry
  %7 = load double, double* %x.addr, align 8, !dbg !198
  %8 = load double, double* %x.addr, align 8, !dbg !199
  %mul = fmul double %7, %8, !dbg !200
  store double %mul, double* %retval, align 8, !dbg !201
  br label %return, !dbg !201

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %ix, align 4, !dbg !202
  %10 = load i32, i32* %lx, align 4, !dbg !204
  %or = or i32 %9, %10, !dbg !205
  %cmp1 = icmp eq i32 %or, 0, !dbg !206
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !207

if.then2:                                         ; preds = %if.end
  %11 = load double, double* @zero, align 8, !dbg !208
  %div = fdiv double 1.000000e+00, %11, !dbg !209
  store double %div, double* %retval, align 8, !dbg !210
  br label %return, !dbg !210

if.end3:                                          ; preds = %if.end
  %12 = load i32, i32* %ix, align 4, !dbg !211
  %cmp4 = icmp slt i32 %12, 999292928, !dbg !213
  br i1 %cmp4, label %if.then5, label %if.end11, !dbg !214

if.then5:                                         ; preds = %if.end3
  %13 = load i32, i32* %hx, align 4, !dbg !215
  %cmp6 = icmp slt i32 %13, 0, !dbg !218
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !219

if.then7:                                         ; preds = %if.then5
  %14 = load i32*, i32** %signgamp.addr, align 8, !dbg !220
  store i32 -1, i32* %14, align 4, !dbg !222
  %15 = load double, double* %x.addr, align 8, !dbg !223
  %fneg = fneg double %15, !dbg !224
  %call = call double @__ieee754_log(double %fneg), !dbg !225
  %fneg8 = fneg double %call, !dbg !226
  store double %fneg8, double* %retval, align 8, !dbg !227
  br label %return, !dbg !227

if.else:                                          ; preds = %if.then5
  %16 = load double, double* %x.addr, align 8, !dbg !228
  %call9 = call double @__ieee754_log(double %16), !dbg !229
  %fneg10 = fneg double %call9, !dbg !230
  store double %fneg10, double* %retval, align 8, !dbg !231
  br label %return, !dbg !231

if.end11:                                         ; preds = %if.end3
  %17 = load i32, i32* %hx, align 4, !dbg !232
  %cmp12 = icmp slt i32 %17, 0, !dbg !234
  br i1 %cmp12, label %if.then13, label %if.end30, !dbg !235

if.then13:                                        ; preds = %if.end11
  %18 = load i32, i32* %ix, align 4, !dbg !236
  %cmp14 = icmp sge i32 %18, 1127219200, !dbg !239
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !240

if.then15:                                        ; preds = %if.then13
  %19 = load double, double* @zero, align 8, !dbg !241
  %div16 = fdiv double 1.000000e+00, %19, !dbg !242
  store double %div16, double* %retval, align 8, !dbg !243
  br label %return, !dbg !243

if.end17:                                         ; preds = %if.then13
  %20 = load double, double* %x.addr, align 8, !dbg !244
  %call18 = call double @sin_pi(double %20), !dbg !245
  store double %call18, double* %t, align 8, !dbg !246
  %21 = load double, double* %t, align 8, !dbg !247
  %22 = load double, double* @zero, align 8, !dbg !249
  %cmp19 = fcmp oeq double %21, %22, !dbg !250
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !251

if.then20:                                        ; preds = %if.end17
  %23 = load double, double* @zero, align 8, !dbg !252
  %div21 = fdiv double 1.000000e+00, %23, !dbg !253
  store double %div21, double* %retval, align 8, !dbg !254
  br label %return, !dbg !254

if.end22:                                         ; preds = %if.end17
  %24 = load double, double* %t, align 8, !dbg !255
  %25 = load double, double* %x.addr, align 8, !dbg !256
  %mul23 = fmul double %24, %25, !dbg !257
  %26 = call double @llvm.fabs.f64(double %mul23), !dbg !258
  %div24 = fdiv double 0x400921FB54442D18, %26, !dbg !259
  %call25 = call double @__ieee754_log(double %div24), !dbg !260
  store double %call25, double* %nadj, align 8, !dbg !261
  %27 = load double, double* %t, align 8, !dbg !262
  %28 = load double, double* @zero, align 8, !dbg !264
  %cmp26 = fcmp olt double %27, %28, !dbg !265
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !266

if.then27:                                        ; preds = %if.end22
  %29 = load i32*, i32** %signgamp.addr, align 8, !dbg !267
  store i32 -1, i32* %29, align 4, !dbg !268
  br label %if.end28, !dbg !269

if.end28:                                         ; preds = %if.then27, %if.end22
  %30 = load double, double* %x.addr, align 8, !dbg !270
  %fneg29 = fneg double %30, !dbg !271
  store double %fneg29, double* %x.addr, align 8, !dbg !272
  br label %if.end30, !dbg !273

if.end30:                                         ; preds = %if.end28, %if.end11
  %31 = load i32, i32* %ix, align 4, !dbg !274
  %sub = sub nsw i32 %31, 1072693248, !dbg !276
  %32 = load i32, i32* %lx, align 4, !dbg !277
  %or31 = or i32 %sub, %32, !dbg !278
  %cmp32 = icmp eq i32 %or31, 0, !dbg !279
  br i1 %cmp32, label %if.then36, label %lor.lhs.false, !dbg !280

lor.lhs.false:                                    ; preds = %if.end30
  %33 = load i32, i32* %ix, align 4, !dbg !281
  %sub33 = sub nsw i32 %33, 1073741824, !dbg !282
  %34 = load i32, i32* %lx, align 4, !dbg !283
  %or34 = or i32 %sub33, %34, !dbg !284
  %cmp35 = icmp eq i32 %or34, 0, !dbg !285
  br i1 %cmp35, label %if.then36, label %if.else37, !dbg !286

if.then36:                                        ; preds = %lor.lhs.false, %if.end30
  store double 0.000000e+00, double* %r, align 8, !dbg !287
  br label %if.end235, !dbg !288

if.else37:                                        ; preds = %lor.lhs.false
  %35 = load i32, i32* %ix, align 4, !dbg !289
  %cmp38 = icmp slt i32 %35, 1073741824, !dbg !291
  br i1 %cmp38, label %if.then39, label %if.else154, !dbg !292

if.then39:                                        ; preds = %if.else37
  %36 = load i32, i32* %ix, align 4, !dbg !293
  %cmp40 = icmp sle i32 %36, 1072483532, !dbg !296
  br i1 %cmp40, label %if.then41, label %if.else54, !dbg !297

if.then41:                                        ; preds = %if.then39
  %37 = load double, double* %x.addr, align 8, !dbg !298
  %call42 = call double @__ieee754_log(double %37), !dbg !300
  %fneg43 = fneg double %call42, !dbg !301
  store double %fneg43, double* %r, align 8, !dbg !302
  %38 = load i32, i32* %ix, align 4, !dbg !303
  %cmp44 = icmp sge i32 %38, 1072130372, !dbg !305
  br i1 %cmp44, label %if.then45, label %if.else47, !dbg !306

if.then45:                                        ; preds = %if.then41
  %39 = load double, double* %x.addr, align 8, !dbg !307
  %sub46 = fsub double 1.000000e+00, %39, !dbg !309
  store double %sub46, double* %y, align 8, !dbg !310
  store i32 0, i32* %i, align 4, !dbg !311
  br label %if.end53, !dbg !312

if.else47:                                        ; preds = %if.then41
  %40 = load i32, i32* %ix, align 4, !dbg !313
  %cmp48 = icmp sge i32 %40, 1070442081, !dbg !315
  br i1 %cmp48, label %if.then49, label %if.else51, !dbg !316

if.then49:                                        ; preds = %if.else47
  %41 = load double, double* %x.addr, align 8, !dbg !317
  %sub50 = fsub double %41, 0x3FDD8B618D5AF8FC, !dbg !319
  store double %sub50, double* %y, align 8, !dbg !320
  store i32 1, i32* %i, align 4, !dbg !321
  br label %if.end52, !dbg !322

if.else51:                                        ; preds = %if.else47
  %42 = load double, double* %x.addr, align 8, !dbg !323
  store double %42, double* %y, align 8, !dbg !325
  store i32 2, i32* %i, align 4, !dbg !326
  br label %if.end52

if.end52:                                         ; preds = %if.else51, %if.then49
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then45
  br label %if.end66, !dbg !327

if.else54:                                        ; preds = %if.then39
  %43 = load double, double* @zero, align 8, !dbg !328
  store double %43, double* %r, align 8, !dbg !330
  %44 = load i32, i32* %ix, align 4, !dbg !331
  %cmp55 = icmp sge i32 %44, 1073460419, !dbg !333
  br i1 %cmp55, label %if.then56, label %if.else58, !dbg !334

if.then56:                                        ; preds = %if.else54
  %45 = load double, double* %x.addr, align 8, !dbg !335
  %sub57 = fsub double 2.000000e+00, %45, !dbg !337
  store double %sub57, double* %y, align 8, !dbg !338
  store i32 0, i32* %i, align 4, !dbg !339
  br label %if.end65, !dbg !340

if.else58:                                        ; preds = %if.else54
  %46 = load i32, i32* %ix, align 4, !dbg !341
  %cmp59 = icmp sge i32 %46, 1072936132, !dbg !343
  br i1 %cmp59, label %if.then60, label %if.else62, !dbg !344

if.then60:                                        ; preds = %if.else58
  %47 = load double, double* %x.addr, align 8, !dbg !345
  %sub61 = fsub double %47, 0x3FF762D86356BE3F, !dbg !347
  store double %sub61, double* %y, align 8, !dbg !348
  store i32 1, i32* %i, align 4, !dbg !349
  br label %if.end64, !dbg !350

if.else62:                                        ; preds = %if.else58
  %48 = load double, double* %x.addr, align 8, !dbg !351
  %sub63 = fsub double %48, 1.000000e+00, !dbg !353
  store double %sub63, double* %y, align 8, !dbg !354
  store i32 2, i32* %i, align 4, !dbg !355
  br label %if.end64

if.end64:                                         ; preds = %if.else62, %if.then60
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then56
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end53
  %49 = load i32, i32* %i, align 4, !dbg !356
  switch i32 %49, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb93
    i32 2, label %sw.bb128
  ], !dbg !357

sw.bb:                                            ; preds = %if.end66
  %50 = load double, double* %y, align 8, !dbg !358
  %51 = load double, double* %y, align 8, !dbg !360
  %mul67 = fmul double %50, %51, !dbg !361
  store double %mul67, double* %z, align 8, !dbg !362
  %52 = load double, double* %z, align 8, !dbg !363
  %53 = load double, double* %z, align 8, !dbg !364
  %54 = load double, double* %z, align 8, !dbg !365
  %55 = load double, double* %z, align 8, !dbg !366
  %56 = load double, double* %z, align 8, !dbg !367
  %mul68 = fmul double %56, 0x3EFA7074428CFA52, !dbg !368
  %add = fadd double 0x3F2CF2ECED10E54D, %mul68, !dbg !369
  %mul69 = fmul double %55, %add, !dbg !370
  %add70 = fadd double 0x3F538A94116F3F5D, %mul69, !dbg !371
  %mul71 = fmul double %54, %add70, !dbg !372
  %add72 = fadd double 0x3F7E404FB68FEFE8, %mul71, !dbg !373
  %mul73 = fmul double %53, %add72, !dbg !374
  %add74 = fadd double 0x3FB13E001A5562A7, %mul73, !dbg !375
  %mul75 = fmul double %52, %add74, !dbg !376
  %add76 = fadd double 0x3FB3C467E37DB0C8, %mul75, !dbg !377
  store double %add76, double* %p1, align 8, !dbg !378
  %57 = load double, double* %z, align 8, !dbg !379
  %58 = load double, double* %z, align 8, !dbg !380
  %59 = load double, double* %z, align 8, !dbg !381
  %60 = load double, double* %z, align 8, !dbg !382
  %61 = load double, double* %z, align 8, !dbg !383
  %62 = load double, double* %z, align 8, !dbg !384
  %mul77 = fmul double %62, 0x3F07858E90A45837, !dbg !385
  %add78 = fadd double 0x3F1C5088987DFB07, %mul77, !dbg !386
  %mul79 = fmul double %61, %add78, !dbg !387
  %add80 = fadd double 0x3F40B6C689B99C00, %mul79, !dbg !388
  %mul81 = fmul double %60, %add80, !dbg !389
  %add82 = fadd double 0x3F67ADD8CCB7926B, %mul81, !dbg !390
  %mul83 = fmul double %59, %add82, !dbg !391
  %add84 = fadd double 0x3F951322AC92547B, %mul83, !dbg !392
  %mul85 = fmul double %58, %add84, !dbg !393
  %add86 = fadd double 0x3FD4A34CC4A60FAD, %mul85, !dbg !394
  %mul87 = fmul double %57, %add86, !dbg !395
  store double %mul87, double* %p2, align 8, !dbg !396
  %63 = load double, double* %y, align 8, !dbg !397
  %64 = load double, double* %p1, align 8, !dbg !398
  %mul88 = fmul double %63, %64, !dbg !399
  %65 = load double, double* %p2, align 8, !dbg !400
  %add89 = fadd double %mul88, %65, !dbg !401
  store double %add89, double* %p, align 8, !dbg !402
  %66 = load double, double* %p, align 8, !dbg !403
  %67 = load double, double* %y, align 8, !dbg !404
  %mul90 = fmul double 5.000000e-01, %67, !dbg !405
  %sub91 = fsub double %66, %mul90, !dbg !406
  %68 = load double, double* %r, align 8, !dbg !407
  %add92 = fadd double %68, %sub91, !dbg !407
  store double %add92, double* %r, align 8, !dbg !407
  br label %sw.epilog, !dbg !408

sw.bb93:                                          ; preds = %if.end66
  %69 = load double, double* %y, align 8, !dbg !409
  %70 = load double, double* %y, align 8, !dbg !410
  %mul94 = fmul double %69, %70, !dbg !411
  store double %mul94, double* %z, align 8, !dbg !412
  %71 = load double, double* %z, align 8, !dbg !413
  %72 = load double, double* %y, align 8, !dbg !414
  %mul95 = fmul double %71, %72, !dbg !415
  store double %mul95, double* %w, align 8, !dbg !416
  %73 = load double, double* %w, align 8, !dbg !417
  %74 = load double, double* %w, align 8, !dbg !418
  %75 = load double, double* %w, align 8, !dbg !419
  %76 = load double, double* %w, align 8, !dbg !420
  %mul96 = fmul double %76, 0x3F34AF6D6C0EBBF7, !dbg !421
  %add97 = fadd double 0xBF56FE8EBF2D1AF1, %mul96, !dbg !422
  %mul98 = fmul double %75, %add97, !dbg !423
  %add99 = fadd double 0x3F78FCE0E370E344, %mul98, !dbg !424
  %mul100 = fmul double %74, %add99, !dbg !425
  %add101 = fadd double 0xBFA0C9A8DF35B713, %mul100, !dbg !426
  %mul102 = fmul double %73, %add101, !dbg !427
  %add103 = fadd double 0x3FDEF72BC8EE38A2, %mul102, !dbg !428
  store double %add103, double* %p1, align 8, !dbg !429
  %77 = load double, double* %w, align 8, !dbg !430
  %78 = load double, double* %w, align 8, !dbg !431
  %79 = load double, double* %w, align 8, !dbg !432
  %80 = load double, double* %w, align 8, !dbg !433
  %mul104 = fmul double %80, 0xBF347F24ECC38C38, !dbg !434
  %add105 = fadd double 0x3F4CDF0CEF61A8E9, %mul104, !dbg !435
  %mul106 = fmul double %79, %add105, !dbg !436
  %add107 = fadd double 0xBF6E2EFFB3E914D7, %mul106, !dbg !437
  %mul108 = fmul double %78, %add107, !dbg !438
  %add109 = fadd double 0x3F9266E7970AF9EC, %mul108, !dbg !439
  %mul110 = fmul double %77, %add109, !dbg !440
  %add111 = fadd double 0xBFC2E4278DC6C509, %mul110, !dbg !441
  store double %add111, double* %p2, align 8, !dbg !442
  %81 = load double, double* %w, align 8, !dbg !443
  %82 = load double, double* %w, align 8, !dbg !444
  %83 = load double, double* %w, align 8, !dbg !445
  %84 = load double, double* %w, align 8, !dbg !446
  %mul112 = fmul double %84, 0x3F35FD3EE8C2D3F4, !dbg !447
  %add113 = fadd double 0xBF41A6109C73E0EC, %mul112, !dbg !448
  %mul114 = fmul double %83, %add113, !dbg !449
  %add115 = fadd double 0x3F6282D32E15C915, %mul114, !dbg !450
  %mul116 = fmul double %82, %add115, !dbg !451
  %add117 = fadd double 0xBF851F9FBA91EC6A, %mul116, !dbg !452
  %mul118 = fmul double %81, %add117, !dbg !453
  %add119 = fadd double 0x3FB08B4294D5419B, %mul118, !dbg !454
  store double %add119, double* %p3, align 8, !dbg !455
  %85 = load double, double* %z, align 8, !dbg !456
  %86 = load double, double* %p1, align 8, !dbg !457
  %mul120 = fmul double %85, %86, !dbg !458
  %87 = load double, double* %w, align 8, !dbg !459
  %88 = load double, double* %p2, align 8, !dbg !460
  %89 = load double, double* %y, align 8, !dbg !461
  %90 = load double, double* %p3, align 8, !dbg !462
  %mul121 = fmul double %89, %90, !dbg !463
  %add122 = fadd double %88, %mul121, !dbg !464
  %mul123 = fmul double %87, %add122, !dbg !465
  %sub124 = fsub double 0xBC50C7CAA48A971F, %mul123, !dbg !466
  %sub125 = fsub double %mul120, %sub124, !dbg !467
  store double %sub125, double* %p, align 8, !dbg !468
  %91 = load double, double* %p, align 8, !dbg !469
  %add126 = fadd double 0xBFBF19B9BCC38A42, %91, !dbg !470
  %92 = load double, double* %r, align 8, !dbg !471
  %add127 = fadd double %92, %add126, !dbg !471
  store double %add127, double* %r, align 8, !dbg !471
  br label %sw.epilog, !dbg !472

sw.bb128:                                         ; preds = %if.end66
  %93 = load double, double* %y, align 8, !dbg !473
  %94 = load double, double* %y, align 8, !dbg !474
  %95 = load double, double* %y, align 8, !dbg !475
  %96 = load double, double* %y, align 8, !dbg !476
  %97 = load double, double* %y, align 8, !dbg !477
  %98 = load double, double* %y, align 8, !dbg !478
  %mul129 = fmul double %98, 0x3F8B678BBF2BAB09, !dbg !479
  %add130 = fadd double 0x3FCD4EAEF6010924, %mul129, !dbg !480
  %mul131 = fmul double %97, %add130, !dbg !481
  %add132 = fadd double 0x3FEF497644EA8450, %mul131, !dbg !482
  %mul133 = fmul double %96, %add132, !dbg !483
  %add134 = fadd double 0x3FF7475CD119BD6F, %mul133, !dbg !484
  %mul135 = fmul double %95, %add134, !dbg !485
  %add136 = fadd double 0x3FE4401E8B005DFF, %mul135, !dbg !486
  %mul137 = fmul double %94, %add136, !dbg !487
  %add138 = fadd double 0xBFB3C467E37DB0C8, %mul137, !dbg !488
  %mul139 = fmul double %93, %add138, !dbg !489
  store double %mul139, double* %p1, align 8, !dbg !490
  %99 = load double, double* %y, align 8, !dbg !491
  %100 = load double, double* %y, align 8, !dbg !492
  %101 = load double, double* %y, align 8, !dbg !493
  %102 = load double, double* %y, align 8, !dbg !494
  %103 = load double, double* %y, align 8, !dbg !495
  %mul140 = fmul double %103, 0x3F6A5ABB57D0CF61, !dbg !496
  %add141 = fadd double 0x3FBAAE55D6537C88, %mul140, !dbg !497
  %mul142 = fmul double %102, %add141, !dbg !498
  %add143 = fadd double 0x3FE89DFBE45050AF, %mul142, !dbg !499
  %mul144 = fmul double %101, %add143, !dbg !500
  %add145 = fadd double 0x40010725A42B18F5, %mul144, !dbg !501
  %mul146 = fmul double %100, %add145, !dbg !502
  %add147 = fadd double 0x4003A5D7C2BD619C, %mul146, !dbg !503
  %mul148 = fmul double %99, %add147, !dbg !504
  %add149 = fadd double 1.000000e+00, %mul148, !dbg !505
  store double %add149, double* %p2, align 8, !dbg !506
  %104 = load double, double* %y, align 8, !dbg !507
  %mul150 = fmul double -5.000000e-01, %104, !dbg !508
  %105 = load double, double* %p1, align 8, !dbg !509
  %106 = load double, double* %p2, align 8, !dbg !510
  %div151 = fdiv double %105, %106, !dbg !511
  %add152 = fadd double %mul150, %div151, !dbg !512
  %107 = load double, double* %r, align 8, !dbg !513
  %add153 = fadd double %107, %add152, !dbg !513
  store double %add153, double* %r, align 8, !dbg !513
  br label %sw.epilog, !dbg !514

sw.epilog:                                        ; preds = %sw.bb128, %if.end66, %sw.bb93, %sw.bb
  br label %if.end234, !dbg !515

if.else154:                                       ; preds = %if.else37
  %108 = load i32, i32* %ix, align 4, !dbg !516
  %cmp155 = icmp slt i32 %108, 1075838976, !dbg !518
  br i1 %cmp155, label %if.then156, label %if.else205, !dbg !519

if.then156:                                       ; preds = %if.else154
  %109 = load double, double* %x.addr, align 8, !dbg !520
  %conv = fptosi double %109 to i32, !dbg !522
  store i32 %conv, i32* %i, align 4, !dbg !523
  %110 = load double, double* @zero, align 8, !dbg !524
  store double %110, double* %t, align 8, !dbg !525
  %111 = load double, double* %x.addr, align 8, !dbg !526
  %112 = load i32, i32* %i, align 4, !dbg !527
  %conv157 = sitofp i32 %112 to double, !dbg !528
  %sub158 = fsub double %111, %conv157, !dbg !529
  store double %sub158, double* %y, align 8, !dbg !530
  %113 = load double, double* %y, align 8, !dbg !531
  %114 = load double, double* %y, align 8, !dbg !532
  %115 = load double, double* %y, align 8, !dbg !533
  %116 = load double, double* %y, align 8, !dbg !534
  %117 = load double, double* %y, align 8, !dbg !535
  %118 = load double, double* %y, align 8, !dbg !536
  %119 = load double, double* %y, align 8, !dbg !537
  %mul159 = fmul double %119, 0x3F00BFECDD17E945, !dbg !538
  %add160 = fadd double 0x3F5E26B67368F239, %mul159, !dbg !539
  %mul161 = fmul double %118, %add160, !dbg !540
  %add162 = fadd double 0x3F9B481C7E939961, %mul161, !dbg !541
  %mul163 = fmul double %117, %add162, !dbg !542
  %add164 = fadd double 0x3FC2BB9CBEE5F2F7, %mul163, !dbg !543
  %mul165 = fmul double %116, %add164, !dbg !544
  %add166 = fadd double 0x3FD4D98F4F139F59, %mul165, !dbg !545
  %mul167 = fmul double %115, %add166, !dbg !546
  %add168 = fadd double 0x3FCB848B36E20878, %mul167, !dbg !547
  %mul169 = fmul double %114, %add168, !dbg !548
  %add170 = fadd double 0xBFB3C467E37DB0C8, %mul169, !dbg !549
  %mul171 = fmul double %113, %add170, !dbg !550
  store double %mul171, double* %p, align 8, !dbg !551
  %120 = load double, double* %y, align 8, !dbg !552
  %121 = load double, double* %y, align 8, !dbg !553
  %122 = load double, double* %y, align 8, !dbg !554
  %123 = load double, double* %y, align 8, !dbg !555
  %124 = load double, double* %y, align 8, !dbg !556
  %125 = load double, double* %y, align 8, !dbg !557
  %mul172 = fmul double %125, 0x3EDEBAF7A5B38140, !dbg !558
  %add173 = fadd double 0x3F497DDACA41A95B, %mul172, !dbg !559
  %mul174 = fmul double %124, %add173, !dbg !560
  %add175 = fadd double 0x3F9317EA742ED475, %mul174, !dbg !561
  %mul176 = fmul double %123, %add175, !dbg !562
  %add177 = fadd double 0x3FC601EDCCFBDF27, %mul176, !dbg !563
  %mul178 = fmul double %122, %add177, !dbg !564
  %add179 = fadd double 0x3FE71A1893D3DCDC, %mul178, !dbg !565
  %mul180 = fmul double %121, %add179, !dbg !566
  %add181 = fadd double 0x3FF645A762C4AB74, %mul180, !dbg !567
  %mul182 = fmul double %120, %add181, !dbg !568
  %add183 = fadd double 1.000000e+00, %mul182, !dbg !569
  store double %add183, double* %q, align 8, !dbg !570
  %126 = load double, double* %y, align 8, !dbg !571
  %mul184 = fmul double 5.000000e-01, %126, !dbg !572
  %127 = load double, double* %p, align 8, !dbg !573
  %128 = load double, double* %q, align 8, !dbg !574
  %div185 = fdiv double %127, %128, !dbg !575
  %add186 = fadd double %mul184, %div185, !dbg !576
  store double %add186, double* %r, align 8, !dbg !577
  store double 1.000000e+00, double* %z, align 8, !dbg !578
  %129 = load i32, i32* %i, align 4, !dbg !579
  switch i32 %129, label %sw.epilog204 [
    i32 7, label %sw.bb187
    i32 6, label %sw.bb190
    i32 5, label %sw.bb193
    i32 4, label %sw.bb196
    i32 3, label %sw.bb199
  ], !dbg !580

sw.bb187:                                         ; preds = %if.then156
  %130 = load double, double* %y, align 8, !dbg !581
  %add188 = fadd double %130, 6.000000e+00, !dbg !583
  %131 = load double, double* %z, align 8, !dbg !584
  %mul189 = fmul double %131, %add188, !dbg !584
  store double %mul189, double* %z, align 8, !dbg !584
  br label %sw.bb190, !dbg !585

sw.bb190:                                         ; preds = %if.then156, %sw.bb187
  %132 = load double, double* %y, align 8, !dbg !586
  %add191 = fadd double %132, 5.000000e+00, !dbg !587
  %133 = load double, double* %z, align 8, !dbg !588
  %mul192 = fmul double %133, %add191, !dbg !588
  store double %mul192, double* %z, align 8, !dbg !588
  br label %sw.bb193, !dbg !589

sw.bb193:                                         ; preds = %if.then156, %sw.bb190
  %134 = load double, double* %y, align 8, !dbg !590
  %add194 = fadd double %134, 4.000000e+00, !dbg !591
  %135 = load double, double* %z, align 8, !dbg !592
  %mul195 = fmul double %135, %add194, !dbg !592
  store double %mul195, double* %z, align 8, !dbg !592
  br label %sw.bb196, !dbg !593

sw.bb196:                                         ; preds = %if.then156, %sw.bb193
  %136 = load double, double* %y, align 8, !dbg !594
  %add197 = fadd double %136, 3.000000e+00, !dbg !595
  %137 = load double, double* %z, align 8, !dbg !596
  %mul198 = fmul double %137, %add197, !dbg !596
  store double %mul198, double* %z, align 8, !dbg !596
  br label %sw.bb199, !dbg !597

sw.bb199:                                         ; preds = %if.then156, %sw.bb196
  %138 = load double, double* %y, align 8, !dbg !598
  %add200 = fadd double %138, 2.000000e+00, !dbg !599
  %139 = load double, double* %z, align 8, !dbg !600
  %mul201 = fmul double %139, %add200, !dbg !600
  store double %mul201, double* %z, align 8, !dbg !600
  %140 = load double, double* %z, align 8, !dbg !601
  %call202 = call double @__ieee754_log(double %140), !dbg !602
  %141 = load double, double* %r, align 8, !dbg !603
  %add203 = fadd double %141, %call202, !dbg !603
  store double %add203, double* %r, align 8, !dbg !603
  br label %sw.epilog204, !dbg !604

sw.epilog204:                                     ; preds = %if.then156, %sw.bb199
  br label %if.end233, !dbg !605

if.else205:                                       ; preds = %if.else154
  %142 = load i32, i32* %ix, align 4, !dbg !606
  %cmp206 = icmp slt i32 %142, 1133510656, !dbg !608
  br i1 %cmp206, label %if.then208, label %if.else228, !dbg !609

if.then208:                                       ; preds = %if.else205
  %143 = load double, double* %x.addr, align 8, !dbg !610
  %call209 = call double @__ieee754_log(double %143), !dbg !612
  store double %call209, double* %t, align 8, !dbg !613
  %144 = load double, double* %x.addr, align 8, !dbg !614
  %div210 = fdiv double 1.000000e+00, %144, !dbg !615
  store double %div210, double* %z, align 8, !dbg !616
  %145 = load double, double* %z, align 8, !dbg !617
  %146 = load double, double* %z, align 8, !dbg !618
  %mul211 = fmul double %145, %146, !dbg !619
  store double %mul211, double* %y, align 8, !dbg !620
  %147 = load double, double* %z, align 8, !dbg !621
  %148 = load double, double* %y, align 8, !dbg !622
  %149 = load double, double* %y, align 8, !dbg !623
  %150 = load double, double* %y, align 8, !dbg !624
  %151 = load double, double* %y, align 8, !dbg !625
  %152 = load double, double* %y, align 8, !dbg !626
  %mul212 = fmul double %152, 0xBF5AB89D0B9E43E4, !dbg !627
  %add213 = fadd double 0x3F4B67BA4CDAD5D1, %mul212, !dbg !628
  %mul214 = fmul double %151, %add213, !dbg !629
  %add215 = fadd double 0xBF4380CB8C0FE741, %mul214, !dbg !630
  %mul216 = fmul double %150, %add215, !dbg !631
  %add217 = fadd double 0x3F4A019F98CF38B6, %mul216, !dbg !632
  %mul218 = fmul double %149, %add217, !dbg !633
  %add219 = fadd double 0xBF66C16C16B02E5C, %mul218, !dbg !634
  %mul220 = fmul double %148, %add219, !dbg !635
  %add221 = fadd double 0x3FB555555555553B, %mul220, !dbg !636
  %mul222 = fmul double %147, %add221, !dbg !637
  %add223 = fadd double 0x3FDACFE390C97D69, %mul222, !dbg !638
  store double %add223, double* %w, align 8, !dbg !639
  %153 = load double, double* %x.addr, align 8, !dbg !640
  %sub224 = fsub double %153, 5.000000e-01, !dbg !641
  %154 = load double, double* %t, align 8, !dbg !642
  %sub225 = fsub double %154, 1.000000e+00, !dbg !643
  %mul226 = fmul double %sub224, %sub225, !dbg !644
  %155 = load double, double* %w, align 8, !dbg !645
  %add227 = fadd double %mul226, %155, !dbg !646
  store double %add227, double* %r, align 8, !dbg !647
  br label %if.end232, !dbg !648

if.else228:                                       ; preds = %if.else205
  %156 = load double, double* %x.addr, align 8, !dbg !649
  %157 = load double, double* %x.addr, align 8, !dbg !650
  %call229 = call double @__ieee754_log(double %157), !dbg !651
  %sub230 = fsub double %call229, 1.000000e+00, !dbg !652
  %mul231 = fmul double %156, %sub230, !dbg !653
  store double %mul231, double* %r, align 8, !dbg !654
  br label %if.end232

if.end232:                                        ; preds = %if.else228, %if.then208
  br label %if.end233

if.end233:                                        ; preds = %if.end232, %sw.epilog204
  br label %if.end234

if.end234:                                        ; preds = %if.end233, %sw.epilog
  br label %if.end235

if.end235:                                        ; preds = %if.end234, %if.then36
  %158 = load i32, i32* %hx, align 4, !dbg !655
  %cmp236 = icmp slt i32 %158, 0, !dbg !657
  br i1 %cmp236, label %if.then238, label %if.end240, !dbg !658

if.then238:                                       ; preds = %if.end235
  %159 = load double, double* %nadj, align 8, !dbg !659
  %160 = load double, double* %r, align 8, !dbg !660
  %sub239 = fsub double %159, %160, !dbg !661
  store double %sub239, double* %r, align 8, !dbg !662
  br label %if.end240, !dbg !663

if.end240:                                        ; preds = %if.then238, %if.end235
  %161 = load double, double* %r, align 8, !dbg !664
  store double %161, double* %retval, align 8, !dbg !665
  br label %return, !dbg !665

return:                                           ; preds = %if.end240, %if.then20, %if.then15, %if.else, %if.then7, %if.then2, %if.then
  %162 = load double, double* %retval, align 8, !dbg !666
  ret double %162, !dbg !666
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local double @__ieee754_log(double) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal double @sin_pi(double %x) #0 !dbg !667 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  %n = alloca i32, align 4
  %ix = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !670, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.declare(metadata double* %y, metadata !672, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.declare(metadata double* %z, metadata !674, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.declare(metadata i32* %n, metadata !676, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !678, metadata !DIExpression()), !dbg !679
  %0 = bitcast double* %x.addr to i32*, !dbg !680
  %1 = load i32, i32* %0, align 8, !dbg !680
  %and = and i32 2147483647, %1, !dbg !681
  store i32 %and, i32* %ix, align 4, !dbg !682
  %2 = load i32, i32* %ix, align 4, !dbg !683
  %cmp = icmp slt i32 %2, 1070596096, !dbg !685
  br i1 %cmp, label %if.then, label %if.end, !dbg !686

if.then:                                          ; preds = %entry
  %3 = load double, double* %x.addr, align 8, !dbg !687
  %mul = fmul double 0x400921FB54442D18, %3, !dbg !688
  %4 = load double, double* @zero, align 8, !dbg !689
  %call = call double @__kernel_sin(double %mul, double %4, i32 0), !dbg !690
  store double %call, double* %retval, align 8, !dbg !691
  br label %return, !dbg !691

if.end:                                           ; preds = %entry
  %5 = load double, double* %x.addr, align 8, !dbg !692
  %fneg = fneg double %5, !dbg !693
  store double %fneg, double* %y, align 8, !dbg !694
  %6 = load double, double* %y, align 8, !dbg !695
  %7 = call double @floor(double %6), !dbg !696
  store double %7, double* %z, align 8, !dbg !697
  %8 = load double, double* %z, align 8, !dbg !698
  %9 = load double, double* %y, align 8, !dbg !700
  %cmp1 = fcmp une double %8, %9, !dbg !701
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !702

if.then2:                                         ; preds = %if.end
  %10 = load double, double* %y, align 8, !dbg !703
  %mul3 = fmul double %10, 5.000000e-01, !dbg !703
  store double %mul3, double* %y, align 8, !dbg !703
  %11 = load double, double* %y, align 8, !dbg !705
  %12 = load double, double* %y, align 8, !dbg !706
  %13 = call double @floor(double %12), !dbg !707
  %sub = fsub double %11, %13, !dbg !708
  %mul4 = fmul double 2.000000e+00, %sub, !dbg !709
  store double %mul4, double* %y, align 8, !dbg !710
  %14 = load double, double* %y, align 8, !dbg !711
  %mul5 = fmul double %14, 4.000000e+00, !dbg !712
  %conv = fptosi double %mul5 to i32, !dbg !713
  store i32 %conv, i32* %n, align 4, !dbg !714
  br label %if.end17, !dbg !715

if.else:                                          ; preds = %if.end
  %15 = load i32, i32* %ix, align 4, !dbg !716
  %cmp6 = icmp sge i32 %15, 1128267776, !dbg !719
  br i1 %cmp6, label %if.then8, label %if.else9, !dbg !720

if.then8:                                         ; preds = %if.else
  %16 = load double, double* @zero, align 8, !dbg !721
  store double %16, double* %y, align 8, !dbg !723
  store i32 0, i32* %n, align 4, !dbg !724
  br label %if.end16, !dbg !725

if.else9:                                         ; preds = %if.else
  %17 = load i32, i32* %ix, align 4, !dbg !726
  %cmp10 = icmp slt i32 %17, 1127219200, !dbg !729
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !730

if.then12:                                        ; preds = %if.else9
  %18 = load double, double* %y, align 8, !dbg !731
  %add = fadd double %18, 0x4330000000000000, !dbg !732
  store double %add, double* %z, align 8, !dbg !733
  br label %if.end13, !dbg !734

if.end13:                                         ; preds = %if.then12, %if.else9
  %19 = bitcast double* %z to i32*, !dbg !735
  %add.ptr = getelementptr inbounds i32, i32* %19, i64 1, !dbg !735
  %20 = load i32, i32* %add.ptr, align 4, !dbg !735
  %and14 = and i32 %20, 1, !dbg !736
  store i32 %and14, i32* %n, align 4, !dbg !737
  %21 = load i32, i32* %n, align 4, !dbg !738
  %conv15 = sitofp i32 %21 to double, !dbg !738
  store double %conv15, double* %y, align 8, !dbg !739
  %22 = load i32, i32* %n, align 4, !dbg !740
  %shl = shl i32 %22, 2, !dbg !740
  store i32 %shl, i32* %n, align 4, !dbg !740
  br label %if.end16

if.end16:                                         ; preds = %if.end13, %if.then8
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then2
  %23 = load i32, i32* %n, align 4, !dbg !741
  switch i32 %23, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb20
    i32 2, label %sw.bb20
    i32 3, label %sw.bb24
    i32 4, label %sw.bb24
    i32 5, label %sw.bb28
    i32 6, label %sw.bb28
  ], !dbg !742

sw.bb:                                            ; preds = %if.end17
  %24 = load double, double* %y, align 8, !dbg !743
  %mul18 = fmul double 0x400921FB54442D18, %24, !dbg !745
  %25 = load double, double* @zero, align 8, !dbg !746
  %call19 = call double @__kernel_sin(double %mul18, double %25, i32 0), !dbg !747
  store double %call19, double* %y, align 8, !dbg !748
  br label %sw.epilog, !dbg !749

sw.bb20:                                          ; preds = %if.end17, %if.end17
  %26 = load double, double* %y, align 8, !dbg !750
  %sub21 = fsub double 5.000000e-01, %26, !dbg !751
  %mul22 = fmul double 0x400921FB54442D18, %sub21, !dbg !752
  %27 = load double, double* @zero, align 8, !dbg !753
  %call23 = call double @__kernel_cos(double %mul22, double %27), !dbg !754
  store double %call23, double* %y, align 8, !dbg !755
  br label %sw.epilog, !dbg !756

sw.bb24:                                          ; preds = %if.end17, %if.end17
  %28 = load double, double* %y, align 8, !dbg !757
  %sub25 = fsub double 1.000000e+00, %28, !dbg !758
  %mul26 = fmul double 0x400921FB54442D18, %sub25, !dbg !759
  %29 = load double, double* @zero, align 8, !dbg !760
  %call27 = call double @__kernel_sin(double %mul26, double %29, i32 0), !dbg !761
  store double %call27, double* %y, align 8, !dbg !762
  br label %sw.epilog, !dbg !763

sw.bb28:                                          ; preds = %if.end17, %if.end17
  %30 = load double, double* %y, align 8, !dbg !764
  %sub29 = fsub double %30, 1.500000e+00, !dbg !765
  %mul30 = fmul double 0x400921FB54442D18, %sub29, !dbg !766
  %31 = load double, double* @zero, align 8, !dbg !767
  %call31 = call double @__kernel_cos(double %mul30, double %31), !dbg !768
  %fneg32 = fneg double %call31, !dbg !769
  store double %fneg32, double* %y, align 8, !dbg !770
  br label %sw.epilog, !dbg !771

sw.default:                                       ; preds = %if.end17
  %32 = load double, double* %y, align 8, !dbg !772
  %sub33 = fsub double %32, 2.000000e+00, !dbg !773
  %mul34 = fmul double 0x400921FB54442D18, %sub33, !dbg !774
  %33 = load double, double* @zero, align 8, !dbg !775
  %call35 = call double @__kernel_sin(double %mul34, double %33, i32 0), !dbg !776
  store double %call35, double* %y, align 8, !dbg !777
  br label %sw.epilog, !dbg !778

sw.epilog:                                        ; preds = %sw.default, %sw.bb28, %sw.bb24, %sw.bb20, %sw.bb
  %34 = load double, double* %y, align 8, !dbg !779
  %fneg36 = fneg double %34, !dbg !780
  store double %fneg36, double* %retval, align 8, !dbg !781
  br label %return, !dbg !781

return:                                           ; preds = %sw.epilog, %if.then
  %35 = load double, double* %retval, align 8, !dbg !782
  ret double %35, !dbg !782
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !783 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca i32, align 4
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !786, metadata !DIExpression()), !dbg !787
  %0 = bitcast double* %a0 to i8*, !dbg !788
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !789
  call void @llvm.dbg.declare(metadata i32* %a1, metadata !790, metadata !DIExpression()), !dbg !791
  %1 = bitcast i32* %a1 to i8*, !dbg !792
  call void @klee_make_symbolic(i8* %1, i64 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !793
  call void @llvm.dbg.declare(metadata double* %r, metadata !794, metadata !DIExpression()), !dbg !795
  %2 = load double, double* %a0, align 8, !dbg !796
  %call = call double @__ieee754_lgamma_r(double %2, i32* %a1), !dbg !797
  store double %call, double* %r, align 8, !dbg !795
  ret i32 0, !dbg !798
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

declare dso_local double @__kernel_sin(double, double, i32) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

declare dso_local double @__kernel_cos(double, double) #2

declare double @floor(double)

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "zero", scope: !2, file: !12, line: 156, type: !8, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "e_lgamma_r.c", directory: "/home/klee/logic_bombs/fdlibm")
!4 = !{}
!5 = !{!6, !7, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!9 = !{!10, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !0, !140}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "one", scope: !2, file: !12, line: 91, type: !13, isLocal: true, isDefinition: true)
!12 = !DIFile(filename: "./e_lgamma_r.c", directory: "/home/klee/logic_bombs/fdlibm")
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4614256656552045848, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "pi", scope: !2, file: !12, line: 92, type: !13, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4609261425156079167, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "tc", scope: !2, file: !12, line: 105, type: !13, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 4590228395698008264, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "a0", scope: !2, file: !12, line: 93, type: !13, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 4589517665429971623, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "a2", scope: !2, file: !12, line: 95, type: !13, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 4575164982564483048, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "a4", scope: !2, file: !12, line: 97, type: !13, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression(DW_OP_constu, 4563143216008740701, DW_OP_stack_value))
!25 = distinct !DIGlobalVariable(name: "a6", scope: !2, file: !12, line: 99, type: !13, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression(DW_OP_constu, 4552280422768239949, DW_OP_stack_value))
!27 = distinct !DIGlobalVariable(name: "a8", scope: !2, file: !12, line: 101, type: !13, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression(DW_OP_constu, 4538063219164248658, DW_OP_stack_value))
!29 = distinct !DIGlobalVariable(name: "a10", scope: !2, file: !12, line: 103, type: !13, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression(DW_OP_constu, 4599480669564178349, DW_OP_stack_value))
!31 = distinct !DIGlobalVariable(name: "a1", scope: !2, file: !12, line: 94, type: !13, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression(DW_OP_constu, 4581589235564434555, DW_OP_stack_value))
!33 = distinct !DIGlobalVariable(name: "a3", scope: !2, file: !12, line: 96, type: !13, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression(DW_OP_constu, 4568811493649781355, DW_OP_stack_value))
!35 = distinct !DIGlobalVariable(name: "a5", scope: !2, file: !12, line: 98, type: !13, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression(DW_OP_constu, 4557843786729364480, DW_OP_stack_value))
!37 = distinct !DIGlobalVariable(name: "a7", scope: !2, file: !12, line: 100, type: !13, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression(DW_OP_constu, 4547598271341525767, DW_OP_stack_value))
!39 = distinct !DIGlobalVariable(name: "a9", scope: !2, file: !12, line: 102, type: !13, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression(DW_OP_constu, 4541745596584974391, DW_OP_stack_value))
!41 = distinct !DIGlobalVariable(name: "a11", scope: !2, file: !12, line: 104, type: !13, isLocal: true, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression(DW_OP_constu, 4602387636645935266, DW_OP_stack_value))
!43 = distinct !DIGlobalVariable(name: "t0", scope: !2, file: !12, line: 109, type: !13, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression(DW_OP_constu, 13808258184654468883, DW_OP_stack_value))
!45 = distinct !DIGlobalVariable(name: "t3", scope: !2, file: !12, line: 112, type: !13, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression(DW_OP_constu, 4573683464413438788, DW_OP_stack_value))
!47 = distinct !DIGlobalVariable(name: "t6", scope: !2, file: !12, line: 115, type: !13, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression(DW_OP_constu, 13787487198287567601, DW_OP_stack_value))
!49 = distinct !DIGlobalVariable(name: "t9", scope: !2, file: !12, line: 118, type: !13, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression(DW_OP_constu, 4554458007677615095, DW_OP_stack_value))
!51 = distinct !DIGlobalVariable(name: "t12", scope: !2, file: !12, line: 121, type: !13, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression(DW_OP_constu, 13817857465259574537, DW_OP_stack_value))
!53 = distinct !DIGlobalVariable(name: "t1", scope: !2, file: !12, line: 110, type: !13, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression(DW_OP_constu, 4580836915846773228, DW_OP_stack_value))
!55 = distinct !DIGlobalVariable(name: "t4", scope: !2, file: !12, line: 113, type: !13, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression(DW_OP_constu, 13794014384452342999, DW_OP_stack_value))
!57 = distinct !DIGlobalVariable(name: "t7", scope: !2, file: !12, line: 116, type: !13, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression(DW_OP_constu, 4561265769268226281, DW_OP_stack_value))
!59 = distinct !DIGlobalVariable(name: "t10", scope: !2, file: !12, line: 119, type: !13, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression(DW_OP_constu, 13777776956600978488, DW_OP_stack_value))
!61 = distinct !DIGlobalVariable(name: "t13", scope: !2, file: !12, line: 122, type: !13, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression(DW_OP_constu, 4589321138371641755, DW_OP_stack_value))
!63 = distinct !DIGlobalVariable(name: "t2", scope: !2, file: !12, line: 111, type: !13, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression(DW_OP_constu, 13800471404037139562, DW_OP_stack_value))
!65 = distinct !DIGlobalVariable(name: "t5", scope: !2, file: !12, line: 114, type: !13, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression(DW_OP_constu, 4567356815629994261, DW_OP_stack_value))
!67 = distinct !DIGlobalVariable(name: "t8", scope: !2, file: !12, line: 117, type: !13, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression(DW_OP_constu, 13781478925004955884, DW_OP_stack_value))
!69 = distinct !DIGlobalVariable(name: "t11", scope: !2, file: !12, line: 120, type: !13, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression(DW_OP_constu, 4554825044790006772, DW_OP_stack_value))
!71 = distinct !DIGlobalVariable(name: "t14", scope: !2, file: !12, line: 123, type: !13, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression(DW_OP_constu, 13569565350425171743, DW_OP_stack_value))
!73 = distinct !DIGlobalVariable(name: "tt", scope: !2, file: !12, line: 108, type: !13, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression(DW_OP_constu, 13816790467322546754, DW_OP_stack_value))
!75 = distinct !DIGlobalVariable(name: "tf", scope: !2, file: !12, line: 106, type: !13, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression(DW_OP_constu, 13813600432552784072, DW_OP_stack_value))
!77 = distinct !DIGlobalVariable(name: "u0", scope: !2, file: !12, line: 124, type: !13, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression(DW_OP_constu, 4603875219004743167, DW_OP_stack_value))
!79 = distinct !DIGlobalVariable(name: "u1", scope: !2, file: !12, line: 125, type: !13, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression(DW_OP_constu, 4609231207607680367, DW_OP_stack_value))
!81 = distinct !DIGlobalVariable(name: "u2", scope: !2, file: !12, line: 126, type: !13, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression(DW_OP_constu, 4606981716134495312, DW_OP_stack_value))
!83 = distinct !DIGlobalVariable(name: "u3", scope: !2, file: !12, line: 127, type: !13, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression(DW_OP_constu, 4597417307973683492, DW_OP_stack_value))
!85 = distinct !DIGlobalVariable(name: "u4", scope: !2, file: !12, line: 128, type: !13, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression(DW_OP_constu, 4578867296057666313, DW_OP_stack_value))
!87 = distinct !DIGlobalVariable(name: "u5", scope: !2, file: !12, line: 129, type: !13, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression(DW_OP_constu, 4612712789461262748, DW_OP_stack_value))
!89 = distinct !DIGlobalVariable(name: "v1", scope: !2, file: !12, line: 130, type: !13, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression(DW_OP_constu, 4611975351653570805, DW_OP_stack_value))
!91 = distinct !DIGlobalVariable(name: "v2", scope: !2, file: !12, line: 131, type: !13, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression(DW_OP_constu, 4605104324179153071, DW_OP_stack_value))
!93 = distinct !DIGlobalVariable(name: "v3", scope: !2, file: !12, line: 132, type: !13, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression(DW_OP_constu, 4592174453748890760, DW_OP_stack_value))
!95 = distinct !DIGlobalVariable(name: "v4", scope: !2, file: !12, line: 133, type: !13, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression(DW_OP_constu, 4569564532599476065, DW_OP_stack_value))
!97 = distinct !DIGlobalVariable(name: "v5", scope: !2, file: !12, line: 134, type: !13, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression(DW_OP_constu, 13813600432552784072, DW_OP_stack_value))
!99 = distinct !DIGlobalVariable(name: "s0", scope: !2, file: !12, line: 135, type: !13, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression(DW_OP_constu, 4596913578117826680, DW_OP_stack_value))
!101 = distinct !DIGlobalVariable(name: "s1", scope: !2, file: !12, line: 136, type: !13, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression(DW_OP_constu, 4599540328982355801, DW_OP_stack_value))
!103 = distinct !DIGlobalVariable(name: "s2", scope: !2, file: !12, line: 137, type: !13, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression(DW_OP_constu, 4594440851763360503, DW_OP_stack_value))
!105 = distinct !DIGlobalVariable(name: "s3", scope: !2, file: !12, line: 138, type: !13, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression(DW_OP_constu, 4583336332999498081, DW_OP_stack_value))
!107 = distinct !DIGlobalVariable(name: "s4", scope: !2, file: !12, line: 139, type: !13, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression(DW_OP_constu, 4566129637262422585, DW_OP_stack_value))
!109 = distinct !DIGlobalVariable(name: "s5", scope: !2, file: !12, line: 140, type: !13, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression(DW_OP_constu, 4539839448431978821, DW_OP_stack_value))
!111 = distinct !DIGlobalVariable(name: "s6", scope: !2, file: !12, line: 141, type: !13, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression(DW_OP_constu, 4608947853879192436, DW_OP_stack_value))
!113 = distinct !DIGlobalVariable(name: "r1", scope: !2, file: !12, line: 142, type: !13, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression(DW_OP_constu, 4604677836871294172, DW_OP_stack_value))
!115 = distinct !DIGlobalVariable(name: "r2", scope: !2, file: !12, line: 143, type: !13, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression(DW_OP_constu, 4595362590636105511, DW_OP_stack_value))
!117 = distinct !DIGlobalVariable(name: "r3", scope: !2, file: !12, line: 144, type: !13, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression(DW_OP_constu, 4581031541704938613, DW_OP_stack_value))
!119 = distinct !DIGlobalVariable(name: "r4", scope: !2, file: !12, line: 145, type: !13, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression(DW_OP_constu, 4560314476338981211, DW_OP_stack_value))
!121 = distinct !DIGlobalVariable(name: "r5", scope: !2, file: !12, line: 146, type: !13, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression(DW_OP_constu, 4530263847980990784, DW_OP_stack_value))
!123 = distinct !DIGlobalVariable(name: "r6", scope: !2, file: !12, line: 147, type: !13, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression(DW_OP_constu, 4602678819172646912, DW_OP_stack_value))
!125 = distinct !DIGlobalVariable(name: "half", scope: !2, file: !12, line: 90, type: !13, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression(DW_OP_constu, 4601218545606032745, DW_OP_stack_value))
!127 = distinct !DIGlobalVariable(name: "w0", scope: !2, file: !12, line: 148, type: !13, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression(DW_OP_constu, 4590669220166325563, DW_OP_stack_value))
!129 = distinct !DIGlobalVariable(name: "w1", scope: !2, file: !12, line: 149, type: !13, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression(DW_OP_constu, 13791923578849996380, DW_OP_stack_value))
!131 = distinct !DIGlobalVariable(name: "w2", scope: !2, file: !12, line: 150, type: !13, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression(DW_OP_constu, 4560459357641193654, DW_OP_stack_value))
!133 = distinct !DIGlobalVariable(name: "w3", scope: !2, file: !12, line: 151, type: !13, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression(DW_OP_constu, 13782000896400418625, DW_OP_stack_value))
!135 = distinct !DIGlobalVariable(name: "w4", scope: !2, file: !12, line: 152, type: !13, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression(DW_OP_constu, 4560853097493747153, DW_OP_stack_value))
!137 = distinct !DIGlobalVariable(name: "w5", scope: !2, file: !12, line: 153, type: !13, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression(DW_OP_constu, 13788536193792492516, DW_OP_stack_value))
!139 = distinct !DIGlobalVariable(name: "w6", scope: !2, file: !12, line: 154, type: !13, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression(DW_OP_constu, 4841369599423283200, DW_OP_stack_value))
!141 = distinct !DIGlobalVariable(name: "two52", scope: !2, file: !12, line: 89, type: !13, isLocal: true, isDefinition: true)
!142 = !{i32 7, !"Dwarf Version", i32 4}
!143 = !{i32 2, !"Debug Info Version", i32 3}
!144 = !{i32 1, !"wchar_size", i32 4}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!148 = distinct !DISubprogram(name: "__ieee754_lgamma_r", scope: !12, file: !12, line: 207, type: !149, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!149 = !DISubroutineType(types: !150)
!150 = !{!8, !8, !6}
!151 = !DILocalVariable(name: "x", arg: 1, scope: !148, file: !12, line: 207, type: !8)
!152 = !DILocation(line: 207, column: 35, scope: !148)
!153 = !DILocalVariable(name: "signgamp", arg: 2, scope: !148, file: !12, line: 207, type: !6)
!154 = !DILocation(line: 207, column: 43, scope: !148)
!155 = !DILocalVariable(name: "t", scope: !148, file: !12, line: 213, type: !8)
!156 = !DILocation(line: 213, column: 9, scope: !148)
!157 = !DILocalVariable(name: "y", scope: !148, file: !12, line: 213, type: !8)
!158 = !DILocation(line: 213, column: 11, scope: !148)
!159 = !DILocalVariable(name: "z", scope: !148, file: !12, line: 213, type: !8)
!160 = !DILocation(line: 213, column: 13, scope: !148)
!161 = !DILocalVariable(name: "nadj", scope: !148, file: !12, line: 213, type: !8)
!162 = !DILocation(line: 213, column: 15, scope: !148)
!163 = !DILocalVariable(name: "p", scope: !148, file: !12, line: 213, type: !8)
!164 = !DILocation(line: 213, column: 20, scope: !148)
!165 = !DILocalVariable(name: "p1", scope: !148, file: !12, line: 213, type: !8)
!166 = !DILocation(line: 213, column: 22, scope: !148)
!167 = !DILocalVariable(name: "p2", scope: !148, file: !12, line: 213, type: !8)
!168 = !DILocation(line: 213, column: 25, scope: !148)
!169 = !DILocalVariable(name: "p3", scope: !148, file: !12, line: 213, type: !8)
!170 = !DILocation(line: 213, column: 28, scope: !148)
!171 = !DILocalVariable(name: "q", scope: !148, file: !12, line: 213, type: !8)
!172 = !DILocation(line: 213, column: 31, scope: !148)
!173 = !DILocalVariable(name: "r", scope: !148, file: !12, line: 213, type: !8)
!174 = !DILocation(line: 213, column: 33, scope: !148)
!175 = !DILocalVariable(name: "w", scope: !148, file: !12, line: 213, type: !8)
!176 = !DILocation(line: 213, column: 35, scope: !148)
!177 = !DILocalVariable(name: "i", scope: !148, file: !12, line: 214, type: !7)
!178 = !DILocation(line: 214, column: 6, scope: !148)
!179 = !DILocalVariable(name: "hx", scope: !148, file: !12, line: 214, type: !7)
!180 = !DILocation(line: 214, column: 8, scope: !148)
!181 = !DILocalVariable(name: "lx", scope: !148, file: !12, line: 214, type: !7)
!182 = !DILocation(line: 214, column: 11, scope: !148)
!183 = !DILocalVariable(name: "ix", scope: !148, file: !12, line: 214, type: !7)
!184 = !DILocation(line: 214, column: 14, scope: !148)
!185 = !DILocation(line: 216, column: 7, scope: !148)
!186 = !DILocation(line: 216, column: 5, scope: !148)
!187 = !DILocation(line: 217, column: 7, scope: !148)
!188 = !DILocation(line: 217, column: 5, scope: !148)
!189 = !DILocation(line: 220, column: 3, scope: !148)
!190 = !DILocation(line: 220, column: 12, scope: !148)
!191 = !DILocation(line: 221, column: 7, scope: !148)
!192 = !DILocation(line: 221, column: 9, scope: !148)
!193 = !DILocation(line: 221, column: 5, scope: !148)
!194 = !DILocation(line: 222, column: 5, scope: !195)
!195 = distinct !DILexicalBlock(scope: !148, file: !12, line: 222, column: 5)
!196 = !DILocation(line: 222, column: 7, scope: !195)
!197 = !DILocation(line: 222, column: 5, scope: !148)
!198 = !DILocation(line: 222, column: 28, scope: !195)
!199 = !DILocation(line: 222, column: 30, scope: !195)
!200 = !DILocation(line: 222, column: 29, scope: !195)
!201 = !DILocation(line: 222, column: 21, scope: !195)
!202 = !DILocation(line: 223, column: 6, scope: !203)
!203 = distinct !DILexicalBlock(scope: !148, file: !12, line: 223, column: 5)
!204 = !DILocation(line: 223, column: 9, scope: !203)
!205 = !DILocation(line: 223, column: 8, scope: !203)
!206 = !DILocation(line: 223, column: 12, scope: !203)
!207 = !DILocation(line: 223, column: 5, scope: !148)
!208 = !DILocation(line: 223, column: 28, scope: !203)
!209 = !DILocation(line: 223, column: 27, scope: !203)
!210 = !DILocation(line: 223, column: 17, scope: !203)
!211 = !DILocation(line: 224, column: 5, scope: !212)
!212 = distinct !DILexicalBlock(scope: !148, file: !12, line: 224, column: 5)
!213 = !DILocation(line: 224, column: 7, scope: !212)
!214 = !DILocation(line: 224, column: 5, scope: !148)
!215 = !DILocation(line: 225, column: 9, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !12, line: 225, column: 9)
!217 = distinct !DILexicalBlock(scope: !212, file: !12, line: 224, column: 20)
!218 = !DILocation(line: 225, column: 11, scope: !216)
!219 = !DILocation(line: 225, column: 9, scope: !217)
!220 = !DILocation(line: 226, column: 11, scope: !221)
!221 = distinct !DILexicalBlock(scope: !216, file: !12, line: 225, column: 15)
!222 = !DILocation(line: 226, column: 20, scope: !221)
!223 = !DILocation(line: 227, column: 33, scope: !221)
!224 = !DILocation(line: 227, column: 32, scope: !221)
!225 = !DILocation(line: 227, column: 18, scope: !221)
!226 = !DILocation(line: 227, column: 17, scope: !221)
!227 = !DILocation(line: 227, column: 10, scope: !221)
!228 = !DILocation(line: 228, column: 35, scope: !216)
!229 = !DILocation(line: 228, column: 21, scope: !216)
!230 = !DILocation(line: 228, column: 20, scope: !216)
!231 = !DILocation(line: 228, column: 13, scope: !216)
!232 = !DILocation(line: 230, column: 5, scope: !233)
!233 = distinct !DILexicalBlock(scope: !148, file: !12, line: 230, column: 5)
!234 = !DILocation(line: 230, column: 7, scope: !233)
!235 = !DILocation(line: 230, column: 5, scope: !148)
!236 = !DILocation(line: 231, column: 9, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !12, line: 231, column: 9)
!238 = distinct !DILexicalBlock(scope: !233, file: !12, line: 230, column: 11)
!239 = !DILocation(line: 231, column: 11, scope: !237)
!240 = !DILocation(line: 231, column: 9, scope: !238)
!241 = !DILocation(line: 232, column: 14, scope: !237)
!242 = !DILocation(line: 232, column: 13, scope: !237)
!243 = !DILocation(line: 232, column: 3, scope: !237)
!244 = !DILocation(line: 233, column: 17, scope: !238)
!245 = !DILocation(line: 233, column: 10, scope: !238)
!246 = !DILocation(line: 233, column: 8, scope: !238)
!247 = !DILocation(line: 234, column: 9, scope: !248)
!248 = distinct !DILexicalBlock(scope: !238, file: !12, line: 234, column: 9)
!249 = !DILocation(line: 234, column: 12, scope: !248)
!250 = !DILocation(line: 234, column: 10, scope: !248)
!251 = !DILocation(line: 234, column: 9, scope: !238)
!252 = !DILocation(line: 234, column: 29, scope: !248)
!253 = !DILocation(line: 234, column: 28, scope: !248)
!254 = !DILocation(line: 234, column: 18, scope: !248)
!255 = !DILocation(line: 235, column: 35, scope: !238)
!256 = !DILocation(line: 235, column: 37, scope: !238)
!257 = !DILocation(line: 235, column: 36, scope: !238)
!258 = !DILocation(line: 235, column: 30, scope: !238)
!259 = !DILocation(line: 235, column: 29, scope: !238)
!260 = !DILocation(line: 235, column: 13, scope: !238)
!261 = !DILocation(line: 235, column: 11, scope: !238)
!262 = !DILocation(line: 236, column: 9, scope: !263)
!263 = distinct !DILexicalBlock(scope: !238, file: !12, line: 236, column: 9)
!264 = !DILocation(line: 236, column: 11, scope: !263)
!265 = !DILocation(line: 236, column: 10, scope: !263)
!266 = !DILocation(line: 236, column: 9, scope: !238)
!267 = !DILocation(line: 236, column: 18, scope: !263)
!268 = !DILocation(line: 236, column: 27, scope: !263)
!269 = !DILocation(line: 236, column: 17, scope: !263)
!270 = !DILocation(line: 237, column: 11, scope: !238)
!271 = !DILocation(line: 237, column: 10, scope: !238)
!272 = !DILocation(line: 237, column: 8, scope: !238)
!273 = !DILocation(line: 238, column: 2, scope: !238)
!274 = !DILocation(line: 241, column: 8, scope: !275)
!275 = distinct !DILexicalBlock(scope: !148, file: !12, line: 241, column: 5)
!276 = !DILocation(line: 241, column: 10, scope: !275)
!277 = !DILocation(line: 241, column: 23, scope: !275)
!278 = !DILocation(line: 241, column: 22, scope: !275)
!279 = !DILocation(line: 241, column: 26, scope: !275)
!280 = !DILocation(line: 241, column: 30, scope: !275)
!281 = !DILocation(line: 241, column: 35, scope: !275)
!282 = !DILocation(line: 241, column: 37, scope: !275)
!283 = !DILocation(line: 241, column: 50, scope: !275)
!284 = !DILocation(line: 241, column: 49, scope: !275)
!285 = !DILocation(line: 241, column: 53, scope: !275)
!286 = !DILocation(line: 241, column: 5, scope: !148)
!287 = !DILocation(line: 241, column: 61, scope: !275)
!288 = !DILocation(line: 241, column: 59, scope: !275)
!289 = !DILocation(line: 243, column: 10, scope: !290)
!290 = distinct !DILexicalBlock(scope: !275, file: !12, line: 243, column: 10)
!291 = !DILocation(line: 243, column: 12, scope: !290)
!292 = !DILocation(line: 243, column: 10, scope: !275)
!293 = !DILocation(line: 244, column: 9, scope: !294)
!294 = distinct !DILexicalBlock(scope: !295, file: !12, line: 244, column: 9)
!295 = distinct !DILexicalBlock(scope: !290, file: !12, line: 243, column: 25)
!296 = !DILocation(line: 244, column: 11, scope: !294)
!297 = !DILocation(line: 244, column: 9, scope: !295)
!298 = !DILocation(line: 245, column: 22, scope: !299)
!299 = distinct !DILexicalBlock(scope: !294, file: !12, line: 244, column: 25)
!300 = !DILocation(line: 245, column: 8, scope: !299)
!301 = !DILocation(line: 245, column: 7, scope: !299)
!302 = !DILocation(line: 245, column: 5, scope: !299)
!303 = !DILocation(line: 246, column: 6, scope: !304)
!304 = distinct !DILexicalBlock(scope: !299, file: !12, line: 246, column: 6)
!305 = !DILocation(line: 246, column: 8, scope: !304)
!306 = !DILocation(line: 246, column: 6, scope: !299)
!307 = !DILocation(line: 246, column: 31, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !12, line: 246, column: 22)
!309 = !DILocation(line: 246, column: 30, scope: !308)
!310 = !DILocation(line: 246, column: 25, scope: !308)
!311 = !DILocation(line: 246, column: 35, scope: !308)
!312 = !DILocation(line: 246, column: 39, scope: !308)
!313 = !DILocation(line: 247, column: 11, scope: !314)
!314 = distinct !DILexicalBlock(scope: !304, file: !12, line: 247, column: 11)
!315 = !DILocation(line: 247, column: 13, scope: !314)
!316 = !DILocation(line: 247, column: 11, scope: !304)
!317 = !DILocation(line: 247, column: 31, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !12, line: 247, column: 27)
!319 = !DILocation(line: 247, column: 32, scope: !318)
!320 = !DILocation(line: 247, column: 29, scope: !318)
!321 = !DILocation(line: 247, column: 44, scope: !318)
!322 = !DILocation(line: 247, column: 47, scope: !318)
!323 = !DILocation(line: 248, column: 15, scope: !324)
!324 = distinct !DILexicalBlock(scope: !314, file: !12, line: 248, column: 10)
!325 = !DILocation(line: 248, column: 13, scope: !324)
!326 = !DILocation(line: 248, column: 19, scope: !324)
!327 = !DILocation(line: 249, column: 6, scope: !299)
!328 = !DILocation(line: 250, column: 9, scope: !329)
!329 = distinct !DILexicalBlock(scope: !294, file: !12, line: 249, column: 13)
!330 = !DILocation(line: 250, column: 7, scope: !329)
!331 = !DILocation(line: 251, column: 13, scope: !332)
!332 = distinct !DILexicalBlock(scope: !329, file: !12, line: 251, column: 13)
!333 = !DILocation(line: 251, column: 15, scope: !332)
!334 = !DILocation(line: 251, column: 13, scope: !329)
!335 = !DILocation(line: 251, column: 36, scope: !336)
!336 = distinct !DILexicalBlock(scope: !332, file: !12, line: 251, column: 29)
!337 = !DILocation(line: 251, column: 35, scope: !336)
!338 = !DILocation(line: 251, column: 31, scope: !336)
!339 = !DILocation(line: 251, column: 39, scope: !336)
!340 = !DILocation(line: 251, column: 42, scope: !336)
!341 = !DILocation(line: 252, column: 18, scope: !342)
!342 = distinct !DILexicalBlock(scope: !332, file: !12, line: 252, column: 18)
!343 = !DILocation(line: 252, column: 20, scope: !342)
!344 = !DILocation(line: 252, column: 18, scope: !332)
!345 = !DILocation(line: 252, column: 37, scope: !346)
!346 = distinct !DILexicalBlock(scope: !342, file: !12, line: 252, column: 34)
!347 = !DILocation(line: 252, column: 38, scope: !346)
!348 = !DILocation(line: 252, column: 36, scope: !346)
!349 = !DILocation(line: 252, column: 43, scope: !346)
!350 = !DILocation(line: 252, column: 46, scope: !346)
!351 = !DILocation(line: 253, column: 11, scope: !352)
!352 = distinct !DILexicalBlock(scope: !342, file: !12, line: 253, column: 8)
!353 = !DILocation(line: 253, column: 12, scope: !352)
!354 = !DILocation(line: 253, column: 10, scope: !352)
!355 = !DILocation(line: 253, column: 18, scope: !352)
!356 = !DILocation(line: 255, column: 13, scope: !295)
!357 = !DILocation(line: 255, column: 6, scope: !295)
!358 = !DILocation(line: 257, column: 7, scope: !359)
!359 = distinct !DILexicalBlock(scope: !295, file: !12, line: 255, column: 16)
!360 = !DILocation(line: 257, column: 9, scope: !359)
!361 = !DILocation(line: 257, column: 8, scope: !359)
!362 = !DILocation(line: 257, column: 5, scope: !359)
!363 = !DILocation(line: 258, column: 11, scope: !359)
!364 = !DILocation(line: 258, column: 17, scope: !359)
!365 = !DILocation(line: 258, column: 23, scope: !359)
!366 = !DILocation(line: 258, column: 29, scope: !359)
!367 = !DILocation(line: 258, column: 35, scope: !359)
!368 = !DILocation(line: 258, column: 36, scope: !359)
!369 = !DILocation(line: 258, column: 34, scope: !359)
!370 = !DILocation(line: 258, column: 30, scope: !359)
!371 = !DILocation(line: 258, column: 28, scope: !359)
!372 = !DILocation(line: 258, column: 24, scope: !359)
!373 = !DILocation(line: 258, column: 22, scope: !359)
!374 = !DILocation(line: 258, column: 18, scope: !359)
!375 = !DILocation(line: 258, column: 16, scope: !359)
!376 = !DILocation(line: 258, column: 12, scope: !359)
!377 = !DILocation(line: 258, column: 10, scope: !359)
!378 = !DILocation(line: 258, column: 6, scope: !359)
!379 = !DILocation(line: 259, column: 8, scope: !359)
!380 = !DILocation(line: 259, column: 14, scope: !359)
!381 = !DILocation(line: 259, column: 20, scope: !359)
!382 = !DILocation(line: 259, column: 26, scope: !359)
!383 = !DILocation(line: 259, column: 32, scope: !359)
!384 = !DILocation(line: 259, column: 38, scope: !359)
!385 = !DILocation(line: 259, column: 39, scope: !359)
!386 = !DILocation(line: 259, column: 37, scope: !359)
!387 = !DILocation(line: 259, column: 33, scope: !359)
!388 = !DILocation(line: 259, column: 31, scope: !359)
!389 = !DILocation(line: 259, column: 27, scope: !359)
!390 = !DILocation(line: 259, column: 25, scope: !359)
!391 = !DILocation(line: 259, column: 21, scope: !359)
!392 = !DILocation(line: 259, column: 19, scope: !359)
!393 = !DILocation(line: 259, column: 15, scope: !359)
!394 = !DILocation(line: 259, column: 13, scope: !359)
!395 = !DILocation(line: 259, column: 9, scope: !359)
!396 = !DILocation(line: 259, column: 6, scope: !359)
!397 = !DILocation(line: 260, column: 8, scope: !359)
!398 = !DILocation(line: 260, column: 10, scope: !359)
!399 = !DILocation(line: 260, column: 9, scope: !359)
!400 = !DILocation(line: 260, column: 13, scope: !359)
!401 = !DILocation(line: 260, column: 12, scope: !359)
!402 = !DILocation(line: 260, column: 6, scope: !359)
!403 = !DILocation(line: 261, column: 10, scope: !359)
!404 = !DILocation(line: 261, column: 16, scope: !359)
!405 = !DILocation(line: 261, column: 15, scope: !359)
!406 = !DILocation(line: 261, column: 11, scope: !359)
!407 = !DILocation(line: 261, column: 6, scope: !359)
!408 = !DILocation(line: 261, column: 20, scope: !359)
!409 = !DILocation(line: 263, column: 7, scope: !359)
!410 = !DILocation(line: 263, column: 9, scope: !359)
!411 = !DILocation(line: 263, column: 8, scope: !359)
!412 = !DILocation(line: 263, column: 5, scope: !359)
!413 = !DILocation(line: 264, column: 7, scope: !359)
!414 = !DILocation(line: 264, column: 9, scope: !359)
!415 = !DILocation(line: 264, column: 8, scope: !359)
!416 = !DILocation(line: 264, column: 5, scope: !359)
!417 = !DILocation(line: 265, column: 11, scope: !359)
!418 = !DILocation(line: 265, column: 17, scope: !359)
!419 = !DILocation(line: 265, column: 23, scope: !359)
!420 = !DILocation(line: 265, column: 30, scope: !359)
!421 = !DILocation(line: 265, column: 31, scope: !359)
!422 = !DILocation(line: 265, column: 29, scope: !359)
!423 = !DILocation(line: 265, column: 24, scope: !359)
!424 = !DILocation(line: 265, column: 22, scope: !359)
!425 = !DILocation(line: 265, column: 18, scope: !359)
!426 = !DILocation(line: 265, column: 16, scope: !359)
!427 = !DILocation(line: 265, column: 12, scope: !359)
!428 = !DILocation(line: 265, column: 10, scope: !359)
!429 = !DILocation(line: 265, column: 6, scope: !359)
!430 = !DILocation(line: 266, column: 11, scope: !359)
!431 = !DILocation(line: 266, column: 17, scope: !359)
!432 = !DILocation(line: 266, column: 23, scope: !359)
!433 = !DILocation(line: 266, column: 30, scope: !359)
!434 = !DILocation(line: 266, column: 31, scope: !359)
!435 = !DILocation(line: 266, column: 29, scope: !359)
!436 = !DILocation(line: 266, column: 24, scope: !359)
!437 = !DILocation(line: 266, column: 22, scope: !359)
!438 = !DILocation(line: 266, column: 18, scope: !359)
!439 = !DILocation(line: 266, column: 16, scope: !359)
!440 = !DILocation(line: 266, column: 12, scope: !359)
!441 = !DILocation(line: 266, column: 10, scope: !359)
!442 = !DILocation(line: 266, column: 6, scope: !359)
!443 = !DILocation(line: 267, column: 11, scope: !359)
!444 = !DILocation(line: 267, column: 17, scope: !359)
!445 = !DILocation(line: 267, column: 23, scope: !359)
!446 = !DILocation(line: 267, column: 30, scope: !359)
!447 = !DILocation(line: 267, column: 31, scope: !359)
!448 = !DILocation(line: 267, column: 29, scope: !359)
!449 = !DILocation(line: 267, column: 24, scope: !359)
!450 = !DILocation(line: 267, column: 22, scope: !359)
!451 = !DILocation(line: 267, column: 18, scope: !359)
!452 = !DILocation(line: 267, column: 16, scope: !359)
!453 = !DILocation(line: 267, column: 12, scope: !359)
!454 = !DILocation(line: 267, column: 10, scope: !359)
!455 = !DILocation(line: 267, column: 6, scope: !359)
!456 = !DILocation(line: 268, column: 8, scope: !359)
!457 = !DILocation(line: 268, column: 10, scope: !359)
!458 = !DILocation(line: 268, column: 9, scope: !359)
!459 = !DILocation(line: 268, column: 17, scope: !359)
!460 = !DILocation(line: 268, column: 20, scope: !359)
!461 = !DILocation(line: 268, column: 23, scope: !359)
!462 = !DILocation(line: 268, column: 25, scope: !359)
!463 = !DILocation(line: 268, column: 24, scope: !359)
!464 = !DILocation(line: 268, column: 22, scope: !359)
!465 = !DILocation(line: 268, column: 18, scope: !359)
!466 = !DILocation(line: 268, column: 16, scope: !359)
!467 = !DILocation(line: 268, column: 12, scope: !359)
!468 = !DILocation(line: 268, column: 6, scope: !359)
!469 = !DILocation(line: 269, column: 14, scope: !359)
!470 = !DILocation(line: 269, column: 12, scope: !359)
!471 = !DILocation(line: 269, column: 5, scope: !359)
!472 = !DILocation(line: 269, column: 18, scope: !359)
!473 = !DILocation(line: 271, column: 8, scope: !359)
!474 = !DILocation(line: 271, column: 14, scope: !359)
!475 = !DILocation(line: 271, column: 20, scope: !359)
!476 = !DILocation(line: 271, column: 26, scope: !359)
!477 = !DILocation(line: 271, column: 32, scope: !359)
!478 = !DILocation(line: 271, column: 38, scope: !359)
!479 = !DILocation(line: 271, column: 39, scope: !359)
!480 = !DILocation(line: 271, column: 37, scope: !359)
!481 = !DILocation(line: 271, column: 33, scope: !359)
!482 = !DILocation(line: 271, column: 31, scope: !359)
!483 = !DILocation(line: 271, column: 27, scope: !359)
!484 = !DILocation(line: 271, column: 25, scope: !359)
!485 = !DILocation(line: 271, column: 21, scope: !359)
!486 = !DILocation(line: 271, column: 19, scope: !359)
!487 = !DILocation(line: 271, column: 15, scope: !359)
!488 = !DILocation(line: 271, column: 13, scope: !359)
!489 = !DILocation(line: 271, column: 9, scope: !359)
!490 = !DILocation(line: 271, column: 6, scope: !359)
!491 = !DILocation(line: 272, column: 12, scope: !359)
!492 = !DILocation(line: 272, column: 18, scope: !359)
!493 = !DILocation(line: 272, column: 24, scope: !359)
!494 = !DILocation(line: 272, column: 30, scope: !359)
!495 = !DILocation(line: 272, column: 36, scope: !359)
!496 = !DILocation(line: 272, column: 37, scope: !359)
!497 = !DILocation(line: 272, column: 35, scope: !359)
!498 = !DILocation(line: 272, column: 31, scope: !359)
!499 = !DILocation(line: 272, column: 29, scope: !359)
!500 = !DILocation(line: 272, column: 25, scope: !359)
!501 = !DILocation(line: 272, column: 23, scope: !359)
!502 = !DILocation(line: 272, column: 19, scope: !359)
!503 = !DILocation(line: 272, column: 17, scope: !359)
!504 = !DILocation(line: 272, column: 13, scope: !359)
!505 = !DILocation(line: 272, column: 11, scope: !359)
!506 = !DILocation(line: 272, column: 6, scope: !359)
!507 = !DILocation(line: 273, column: 14, scope: !359)
!508 = !DILocation(line: 273, column: 13, scope: !359)
!509 = !DILocation(line: 273, column: 18, scope: !359)
!510 = !DILocation(line: 273, column: 21, scope: !359)
!511 = !DILocation(line: 273, column: 20, scope: !359)
!512 = !DILocation(line: 273, column: 16, scope: !359)
!513 = !DILocation(line: 273, column: 5, scope: !359)
!514 = !DILocation(line: 274, column: 6, scope: !359)
!515 = !DILocation(line: 275, column: 2, scope: !295)
!516 = !DILocation(line: 276, column: 10, scope: !517)
!517 = distinct !DILexicalBlock(scope: !290, file: !12, line: 276, column: 10)
!518 = !DILocation(line: 276, column: 12, scope: !517)
!519 = !DILocation(line: 276, column: 10, scope: !290)
!520 = !DILocation(line: 277, column: 15, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !12, line: 276, column: 25)
!522 = !DILocation(line: 277, column: 10, scope: !521)
!523 = !DILocation(line: 277, column: 8, scope: !521)
!524 = !DILocation(line: 278, column: 10, scope: !521)
!525 = !DILocation(line: 278, column: 8, scope: !521)
!526 = !DILocation(line: 279, column: 10, scope: !521)
!527 = !DILocation(line: 279, column: 20, scope: !521)
!528 = !DILocation(line: 279, column: 12, scope: !521)
!529 = !DILocation(line: 279, column: 11, scope: !521)
!530 = !DILocation(line: 279, column: 8, scope: !521)
!531 = !DILocation(line: 280, column: 10, scope: !521)
!532 = !DILocation(line: 280, column: 16, scope: !521)
!533 = !DILocation(line: 280, column: 22, scope: !521)
!534 = !DILocation(line: 280, column: 28, scope: !521)
!535 = !DILocation(line: 280, column: 34, scope: !521)
!536 = !DILocation(line: 280, column: 40, scope: !521)
!537 = !DILocation(line: 280, column: 46, scope: !521)
!538 = !DILocation(line: 280, column: 47, scope: !521)
!539 = !DILocation(line: 280, column: 45, scope: !521)
!540 = !DILocation(line: 280, column: 41, scope: !521)
!541 = !DILocation(line: 280, column: 39, scope: !521)
!542 = !DILocation(line: 280, column: 35, scope: !521)
!543 = !DILocation(line: 280, column: 33, scope: !521)
!544 = !DILocation(line: 280, column: 29, scope: !521)
!545 = !DILocation(line: 280, column: 27, scope: !521)
!546 = !DILocation(line: 280, column: 23, scope: !521)
!547 = !DILocation(line: 280, column: 21, scope: !521)
!548 = !DILocation(line: 280, column: 17, scope: !521)
!549 = !DILocation(line: 280, column: 15, scope: !521)
!550 = !DILocation(line: 280, column: 11, scope: !521)
!551 = !DILocation(line: 280, column: 8, scope: !521)
!552 = !DILocation(line: 281, column: 14, scope: !521)
!553 = !DILocation(line: 281, column: 20, scope: !521)
!554 = !DILocation(line: 281, column: 26, scope: !521)
!555 = !DILocation(line: 281, column: 32, scope: !521)
!556 = !DILocation(line: 281, column: 38, scope: !521)
!557 = !DILocation(line: 281, column: 44, scope: !521)
!558 = !DILocation(line: 281, column: 45, scope: !521)
!559 = !DILocation(line: 281, column: 43, scope: !521)
!560 = !DILocation(line: 281, column: 39, scope: !521)
!561 = !DILocation(line: 281, column: 37, scope: !521)
!562 = !DILocation(line: 281, column: 33, scope: !521)
!563 = !DILocation(line: 281, column: 31, scope: !521)
!564 = !DILocation(line: 281, column: 27, scope: !521)
!565 = !DILocation(line: 281, column: 25, scope: !521)
!566 = !DILocation(line: 281, column: 21, scope: !521)
!567 = !DILocation(line: 281, column: 19, scope: !521)
!568 = !DILocation(line: 281, column: 15, scope: !521)
!569 = !DILocation(line: 281, column: 13, scope: !521)
!570 = !DILocation(line: 281, column: 8, scope: !521)
!571 = !DILocation(line: 282, column: 15, scope: !521)
!572 = !DILocation(line: 282, column: 14, scope: !521)
!573 = !DILocation(line: 282, column: 17, scope: !521)
!574 = !DILocation(line: 282, column: 19, scope: !521)
!575 = !DILocation(line: 282, column: 18, scope: !521)
!576 = !DILocation(line: 282, column: 16, scope: !521)
!577 = !DILocation(line: 282, column: 8, scope: !521)
!578 = !DILocation(line: 283, column: 8, scope: !521)
!579 = !DILocation(line: 284, column: 13, scope: !521)
!580 = !DILocation(line: 284, column: 6, scope: !521)
!581 = !DILocation(line: 285, column: 20, scope: !582)
!582 = distinct !DILexicalBlock(scope: !521, file: !12, line: 284, column: 16)
!583 = !DILocation(line: 285, column: 21, scope: !582)
!584 = !DILocation(line: 285, column: 16, scope: !582)
!585 = !DILocation(line: 285, column: 14, scope: !582)
!586 = !DILocation(line: 286, column: 20, scope: !582)
!587 = !DILocation(line: 286, column: 21, scope: !582)
!588 = !DILocation(line: 286, column: 16, scope: !582)
!589 = !DILocation(line: 286, column: 14, scope: !582)
!590 = !DILocation(line: 287, column: 20, scope: !582)
!591 = !DILocation(line: 287, column: 21, scope: !582)
!592 = !DILocation(line: 287, column: 16, scope: !582)
!593 = !DILocation(line: 287, column: 14, scope: !582)
!594 = !DILocation(line: 288, column: 20, scope: !582)
!595 = !DILocation(line: 288, column: 21, scope: !582)
!596 = !DILocation(line: 288, column: 16, scope: !582)
!597 = !DILocation(line: 288, column: 14, scope: !582)
!598 = !DILocation(line: 289, column: 20, scope: !582)
!599 = !DILocation(line: 289, column: 21, scope: !582)
!600 = !DILocation(line: 289, column: 16, scope: !582)
!601 = !DILocation(line: 290, column: 26, scope: !582)
!602 = !DILocation(line: 290, column: 12, scope: !582)
!603 = !DILocation(line: 290, column: 9, scope: !582)
!604 = !DILocation(line: 290, column: 30, scope: !582)
!605 = !DILocation(line: 293, column: 2, scope: !521)
!606 = !DILocation(line: 293, column: 13, scope: !607)
!607 = distinct !DILexicalBlock(scope: !517, file: !12, line: 293, column: 13)
!608 = !DILocation(line: 293, column: 16, scope: !607)
!609 = !DILocation(line: 293, column: 13, scope: !517)
!610 = !DILocation(line: 294, column: 24, scope: !611)
!611 = distinct !DILexicalBlock(scope: !607, file: !12, line: 293, column: 30)
!612 = !DILocation(line: 294, column: 10, scope: !611)
!613 = !DILocation(line: 294, column: 8, scope: !611)
!614 = !DILocation(line: 295, column: 14, scope: !611)
!615 = !DILocation(line: 295, column: 13, scope: !611)
!616 = !DILocation(line: 295, column: 8, scope: !611)
!617 = !DILocation(line: 296, column: 10, scope: !611)
!618 = !DILocation(line: 296, column: 12, scope: !611)
!619 = !DILocation(line: 296, column: 11, scope: !611)
!620 = !DILocation(line: 296, column: 8, scope: !611)
!621 = !DILocation(line: 297, column: 13, scope: !611)
!622 = !DILocation(line: 297, column: 19, scope: !611)
!623 = !DILocation(line: 297, column: 25, scope: !611)
!624 = !DILocation(line: 297, column: 31, scope: !611)
!625 = !DILocation(line: 297, column: 37, scope: !611)
!626 = !DILocation(line: 297, column: 43, scope: !611)
!627 = !DILocation(line: 297, column: 44, scope: !611)
!628 = !DILocation(line: 297, column: 42, scope: !611)
!629 = !DILocation(line: 297, column: 38, scope: !611)
!630 = !DILocation(line: 297, column: 36, scope: !611)
!631 = !DILocation(line: 297, column: 32, scope: !611)
!632 = !DILocation(line: 297, column: 30, scope: !611)
!633 = !DILocation(line: 297, column: 26, scope: !611)
!634 = !DILocation(line: 297, column: 24, scope: !611)
!635 = !DILocation(line: 297, column: 20, scope: !611)
!636 = !DILocation(line: 297, column: 18, scope: !611)
!637 = !DILocation(line: 297, column: 14, scope: !611)
!638 = !DILocation(line: 297, column: 12, scope: !611)
!639 = !DILocation(line: 297, column: 8, scope: !611)
!640 = !DILocation(line: 298, column: 11, scope: !611)
!641 = !DILocation(line: 298, column: 12, scope: !611)
!642 = !DILocation(line: 298, column: 20, scope: !611)
!643 = !DILocation(line: 298, column: 21, scope: !611)
!644 = !DILocation(line: 298, column: 18, scope: !611)
!645 = !DILocation(line: 298, column: 27, scope: !611)
!646 = !DILocation(line: 298, column: 26, scope: !611)
!647 = !DILocation(line: 298, column: 8, scope: !611)
!648 = !DILocation(line: 299, column: 2, scope: !611)
!649 = !DILocation(line: 301, column: 11, scope: !607)
!650 = !DILocation(line: 301, column: 28, scope: !607)
!651 = !DILocation(line: 301, column: 14, scope: !607)
!652 = !DILocation(line: 301, column: 30, scope: !607)
!653 = !DILocation(line: 301, column: 12, scope: !607)
!654 = !DILocation(line: 301, column: 8, scope: !607)
!655 = !DILocation(line: 302, column: 5, scope: !656)
!656 = distinct !DILexicalBlock(scope: !148, file: !12, line: 302, column: 5)
!657 = !DILocation(line: 302, column: 7, scope: !656)
!658 = !DILocation(line: 302, column: 5, scope: !148)
!659 = !DILocation(line: 302, column: 15, scope: !656)
!660 = !DILocation(line: 302, column: 22, scope: !656)
!661 = !DILocation(line: 302, column: 20, scope: !656)
!662 = !DILocation(line: 302, column: 13, scope: !656)
!663 = !DILocation(line: 302, column: 11, scope: !656)
!664 = !DILocation(line: 303, column: 9, scope: !148)
!665 = !DILocation(line: 303, column: 2, scope: !148)
!666 = !DILocation(line: 304, column: 1, scope: !148)
!667 = distinct !DISubprogram(name: "sin_pi", scope: !12, file: !12, line: 159, type: !668, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!668 = !DISubroutineType(types: !669)
!669 = !{!8, !8}
!670 = !DILocalVariable(name: "x", arg: 1, scope: !667, file: !12, line: 159, type: !8)
!671 = !DILocation(line: 159, column: 30, scope: !667)
!672 = !DILocalVariable(name: "y", scope: !667, file: !12, line: 165, type: !8)
!673 = !DILocation(line: 165, column: 9, scope: !667)
!674 = !DILocalVariable(name: "z", scope: !667, file: !12, line: 165, type: !8)
!675 = !DILocation(line: 165, column: 11, scope: !667)
!676 = !DILocalVariable(name: "n", scope: !667, file: !12, line: 166, type: !7)
!677 = !DILocation(line: 166, column: 6, scope: !667)
!678 = !DILocalVariable(name: "ix", scope: !667, file: !12, line: 166, type: !7)
!679 = !DILocation(line: 166, column: 8, scope: !667)
!680 = !DILocation(line: 168, column: 18, scope: !667)
!681 = !DILocation(line: 168, column: 17, scope: !667)
!682 = !DILocation(line: 168, column: 5, scope: !667)
!683 = !DILocation(line: 170, column: 5, scope: !684)
!684 = distinct !DILexicalBlock(scope: !667, file: !12, line: 170, column: 5)
!685 = !DILocation(line: 170, column: 7, scope: !684)
!686 = !DILocation(line: 170, column: 5, scope: !667)
!687 = !DILocation(line: 170, column: 43, scope: !684)
!688 = !DILocation(line: 170, column: 42, scope: !684)
!689 = !DILocation(line: 170, column: 45, scope: !684)
!690 = !DILocation(line: 170, column: 27, scope: !684)
!691 = !DILocation(line: 170, column: 20, scope: !684)
!692 = !DILocation(line: 171, column: 7, scope: !667)
!693 = !DILocation(line: 171, column: 6, scope: !667)
!694 = !DILocation(line: 171, column: 4, scope: !667)
!695 = !DILocation(line: 177, column: 12, scope: !667)
!696 = !DILocation(line: 177, column: 6, scope: !667)
!697 = !DILocation(line: 177, column: 4, scope: !667)
!698 = !DILocation(line: 178, column: 5, scope: !699)
!699 = distinct !DILexicalBlock(scope: !667, file: !12, line: 178, column: 5)
!700 = !DILocation(line: 178, column: 8, scope: !699)
!701 = !DILocation(line: 178, column: 6, scope: !699)
!702 = !DILocation(line: 178, column: 5, scope: !667)
!703 = !DILocation(line: 179, column: 9, scope: !704)
!704 = distinct !DILexicalBlock(scope: !699, file: !12, line: 178, column: 11)
!705 = !DILocation(line: 180, column: 17, scope: !704)
!706 = !DILocation(line: 180, column: 27, scope: !704)
!707 = !DILocation(line: 180, column: 21, scope: !704)
!708 = !DILocation(line: 180, column: 19, scope: !704)
!709 = !DILocation(line: 180, column: 15, scope: !704)
!710 = !DILocation(line: 180, column: 10, scope: !704)
!711 = !DILocation(line: 181, column: 19, scope: !704)
!712 = !DILocation(line: 181, column: 20, scope: !704)
!713 = !DILocation(line: 181, column: 12, scope: !704)
!714 = !DILocation(line: 181, column: 10, scope: !704)
!715 = !DILocation(line: 182, column: 2, scope: !704)
!716 = !DILocation(line: 183, column: 16, scope: !717)
!717 = distinct !DILexicalBlock(scope: !718, file: !12, line: 183, column: 16)
!718 = distinct !DILexicalBlock(scope: !699, file: !12, line: 182, column: 9)
!719 = !DILocation(line: 183, column: 18, scope: !717)
!720 = !DILocation(line: 183, column: 16, scope: !718)
!721 = !DILocation(line: 184, column: 21, scope: !722)
!722 = distinct !DILexicalBlock(scope: !717, file: !12, line: 183, column: 32)
!723 = !DILocation(line: 184, column: 19, scope: !722)
!724 = !DILocation(line: 184, column: 29, scope: !722)
!725 = !DILocation(line: 185, column: 13, scope: !722)
!726 = !DILocation(line: 186, column: 20, scope: !727)
!727 = distinct !DILexicalBlock(scope: !728, file: !12, line: 186, column: 20)
!728 = distinct !DILexicalBlock(scope: !717, file: !12, line: 185, column: 20)
!729 = !DILocation(line: 186, column: 22, scope: !727)
!730 = !DILocation(line: 186, column: 20, scope: !728)
!731 = !DILocation(line: 186, column: 39, scope: !727)
!732 = !DILocation(line: 186, column: 40, scope: !727)
!733 = !DILocation(line: 186, column: 37, scope: !727)
!734 = !DILocation(line: 186, column: 35, scope: !727)
!735 = !DILocation(line: 187, column: 23, scope: !728)
!736 = !DILocation(line: 187, column: 30, scope: !728)
!737 = !DILocation(line: 187, column: 21, scope: !728)
!738 = !DILocation(line: 188, column: 22, scope: !728)
!739 = !DILocation(line: 188, column: 20, scope: !728)
!740 = !DILocation(line: 189, column: 18, scope: !728)
!741 = !DILocation(line: 192, column: 10, scope: !667)
!742 = !DILocation(line: 192, column: 2, scope: !667)
!743 = !DILocation(line: 193, column: 37, scope: !744)
!744 = distinct !DILexicalBlock(scope: !667, file: !12, line: 192, column: 13)
!745 = !DILocation(line: 193, column: 36, scope: !744)
!746 = !DILocation(line: 193, column: 39, scope: !744)
!747 = !DILocation(line: 193, column: 21, scope: !744)
!748 = !DILocation(line: 193, column: 18, scope: !744)
!749 = !DILocation(line: 193, column: 48, scope: !744)
!750 = !DILocation(line: 195, column: 42, scope: !744)
!751 = !DILocation(line: 195, column: 41, scope: !744)
!752 = !DILocation(line: 195, column: 36, scope: !744)
!753 = !DILocation(line: 195, column: 45, scope: !744)
!754 = !DILocation(line: 195, column: 21, scope: !744)
!755 = !DILocation(line: 195, column: 18, scope: !744)
!756 = !DILocation(line: 195, column: 52, scope: !744)
!757 = !DILocation(line: 197, column: 42, scope: !744)
!758 = !DILocation(line: 197, column: 41, scope: !744)
!759 = !DILocation(line: 197, column: 36, scope: !744)
!760 = !DILocation(line: 197, column: 45, scope: !744)
!761 = !DILocation(line: 197, column: 21, scope: !744)
!762 = !DILocation(line: 197, column: 18, scope: !744)
!763 = !DILocation(line: 197, column: 54, scope: !744)
!764 = !DILocation(line: 199, column: 38, scope: !744)
!765 = !DILocation(line: 199, column: 39, scope: !744)
!766 = !DILocation(line: 199, column: 36, scope: !744)
!767 = !DILocation(line: 199, column: 45, scope: !744)
!768 = !DILocation(line: 199, column: 21, scope: !744)
!769 = !DILocation(line: 199, column: 20, scope: !744)
!770 = !DILocation(line: 199, column: 18, scope: !744)
!771 = !DILocation(line: 199, column: 52, scope: !744)
!772 = !DILocation(line: 200, column: 38, scope: !744)
!773 = !DILocation(line: 200, column: 39, scope: !744)
!774 = !DILocation(line: 200, column: 36, scope: !744)
!775 = !DILocation(line: 200, column: 45, scope: !744)
!776 = !DILocation(line: 200, column: 21, scope: !744)
!777 = !DILocation(line: 200, column: 18, scope: !744)
!778 = !DILocation(line: 200, column: 54, scope: !744)
!779 = !DILocation(line: 202, column: 10, scope: !667)
!780 = !DILocation(line: 202, column: 9, scope: !667)
!781 = !DILocation(line: 202, column: 2, scope: !667)
!782 = !DILocation(line: 203, column: 1, scope: !667)
!783 = distinct !DISubprogram(name: "main", scope: !12, file: !12, line: 308, type: !784, scopeLine: 308, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!784 = !DISubroutineType(types: !785)
!785 = !{!7}
!786 = !DILocalVariable(name: "a0", scope: !783, file: !12, line: 309, type: !8)
!787 = !DILocation(line: 309, column: 12, scope: !783)
!788 = !DILocation(line: 310, column: 24, scope: !783)
!789 = !DILocation(line: 310, column: 5, scope: !783)
!790 = !DILocalVariable(name: "a1", scope: !783, file: !12, line: 312, type: !7)
!791 = !DILocation(line: 312, column: 9, scope: !783)
!792 = !DILocation(line: 313, column: 21, scope: !783)
!793 = !DILocation(line: 313, column: 2, scope: !783)
!794 = !DILocalVariable(name: "r", scope: !783, file: !12, line: 314, type: !8)
!795 = !DILocation(line: 314, column: 9, scope: !783)
!796 = !DILocation(line: 314, column: 32, scope: !783)
!797 = !DILocation(line: 314, column: 13, scope: !783)
!798 = !DILocation(line: 316, column: 5, scope: !783)
