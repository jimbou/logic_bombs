; ModuleID = 's_log1p.bc'
source_filename = "./s_log1p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = internal global double 0.000000e+00, align 8, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @log1p(double %x) #0 !dbg !38 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %hfsq = alloca double, align 8
  %f = alloca double, align 8
  %c = alloca double, align 8
  %s = alloca double, align 8
  %z = alloca double, align 8
  %R = alloca double, align 8
  %u = alloca double, align 8
  %k = alloca i32, align 4
  %hx = alloca i32, align 4
  %hu = alloca i32, align 4
  %ax = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata double* %hfsq, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata double* %f, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata double* %c, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata double* %s, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata double* %z, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata double* %R, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata double* %u, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %k, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %hu, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %ax, metadata !63, metadata !DIExpression()), !dbg !64
  %0 = bitcast double* %x.addr to i32*, !dbg !65
  %1 = load i32, i32* %0, align 8, !dbg !65
  store i32 %1, i32* %hx, align 4, !dbg !66
  %2 = load i32, i32* %hx, align 4, !dbg !67
  %and = and i32 %2, 2147483647, !dbg !68
  store i32 %and, i32* %ax, align 4, !dbg !69
  store i32 1, i32* %k, align 4, !dbg !70
  %3 = load i32, i32* %hx, align 4, !dbg !71
  %cmp = icmp slt i32 %3, 1071284858, !dbg !73
  br i1 %cmp, label %if.then, label %if.end20, !dbg !74

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ax, align 4, !dbg !75
  %cmp1 = icmp sge i32 %4, 1072693248, !dbg !78
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !79

if.then2:                                         ; preds = %if.then
  %5 = load double, double* %x.addr, align 8, !dbg !80
  %cmp3 = fcmp oeq double %5, -1.000000e+00, !dbg !83
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !84

if.then4:                                         ; preds = %if.then2
  %6 = load double, double* @zero, align 8, !dbg !85
  %div = fdiv double 0xC350000000000000, %6, !dbg !86
  store double %div, double* %retval, align 8, !dbg !87
  br label %return, !dbg !87

if.else:                                          ; preds = %if.then2
  %7 = load double, double* %x.addr, align 8, !dbg !88
  %8 = load double, double* %x.addr, align 8, !dbg !89
  %sub = fsub double %7, %8, !dbg !90
  %9 = load double, double* %x.addr, align 8, !dbg !91
  %10 = load double, double* %x.addr, align 8, !dbg !92
  %sub5 = fsub double %9, %10, !dbg !93
  %div6 = fdiv double %sub, %sub5, !dbg !94
  store double %div6, double* %retval, align 8, !dbg !95
  br label %return, !dbg !95

if.end:                                           ; preds = %if.then
  %11 = load i32, i32* %ax, align 4, !dbg !96
  %cmp7 = icmp slt i32 %11, 1042284544, !dbg !98
  br i1 %cmp7, label %if.then8, label %if.end15, !dbg !99

if.then8:                                         ; preds = %if.end
  %12 = load double, double* %x.addr, align 8, !dbg !100
  %add = fadd double 0x4350000000000000, %12, !dbg !103
  %13 = load double, double* @zero, align 8, !dbg !104
  %cmp9 = fcmp ogt double %add, %13, !dbg !105
  br i1 %cmp9, label %land.lhs.true, label %if.else12, !dbg !106

land.lhs.true:                                    ; preds = %if.then8
  %14 = load i32, i32* %ax, align 4, !dbg !107
  %cmp10 = icmp slt i32 %14, 1016070144, !dbg !108
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !109

if.then11:                                        ; preds = %land.lhs.true
  %15 = load double, double* %x.addr, align 8, !dbg !110
  store double %15, double* %retval, align 8, !dbg !111
  br label %return, !dbg !111

if.else12:                                        ; preds = %land.lhs.true, %if.then8
  %16 = load double, double* %x.addr, align 8, !dbg !112
  %17 = load double, double* %x.addr, align 8, !dbg !113
  %18 = load double, double* %x.addr, align 8, !dbg !114
  %mul = fmul double %17, %18, !dbg !115
  %mul13 = fmul double %mul, 5.000000e-01, !dbg !116
  %sub14 = fsub double %16, %mul13, !dbg !117
  store double %sub14, double* %retval, align 8, !dbg !118
  br label %return, !dbg !118

if.end15:                                         ; preds = %if.end
  %19 = load i32, i32* %hx, align 4, !dbg !119
  %cmp16 = icmp sgt i32 %19, 0, !dbg !121
  br i1 %cmp16, label %if.then18, label %lor.lhs.false, !dbg !122

lor.lhs.false:                                    ; preds = %if.end15
  %20 = load i32, i32* %hx, align 4, !dbg !123
  %cmp17 = icmp sle i32 %20, -1076707645, !dbg !124
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !125

if.then18:                                        ; preds = %lor.lhs.false, %if.end15
  store i32 0, i32* %k, align 4, !dbg !126
  %21 = load double, double* %x.addr, align 8, !dbg !128
  store double %21, double* %f, align 8, !dbg !129
  store i32 1, i32* %hu, align 4, !dbg !130
  br label %if.end19, !dbg !131

if.end19:                                         ; preds = %if.then18, %lor.lhs.false
  br label %if.end20, !dbg !132

if.end20:                                         ; preds = %if.end19, %entry
  %22 = load i32, i32* %hx, align 4, !dbg !133
  %cmp21 = icmp sge i32 %22, 2146435072, !dbg !135
  br i1 %cmp21, label %if.then22, label %if.end24, !dbg !136

if.then22:                                        ; preds = %if.end20
  %23 = load double, double* %x.addr, align 8, !dbg !137
  %24 = load double, double* %x.addr, align 8, !dbg !138
  %add23 = fadd double %23, %24, !dbg !139
  store double %add23, double* %retval, align 8, !dbg !140
  br label %return, !dbg !140

if.end24:                                         ; preds = %if.end20
  %25 = load i32, i32* %k, align 4, !dbg !141
  %cmp25 = icmp ne i32 %25, 0, !dbg !143
  br i1 %cmp25, label %if.then26, label %if.end51, !dbg !144

if.then26:                                        ; preds = %if.end24
  %26 = load i32, i32* %hx, align 4, !dbg !145
  %cmp27 = icmp slt i32 %26, 1128267776, !dbg !148
  br i1 %cmp27, label %if.then28, label %if.else37, !dbg !149

if.then28:                                        ; preds = %if.then26
  %27 = load double, double* %x.addr, align 8, !dbg !150
  %add29 = fadd double 1.000000e+00, %27, !dbg !152
  store double %add29, double* %u, align 8, !dbg !153
  %28 = bitcast double* %u to i32*, !dbg !154
  %29 = load i32, i32* %28, align 8, !dbg !154
  store i32 %29, i32* %hu, align 4, !dbg !155
  %30 = load i32, i32* %hu, align 4, !dbg !156
  %shr = ashr i32 %30, 20, !dbg !157
  %sub30 = sub nsw i32 %shr, 1023, !dbg !158
  store i32 %sub30, i32* %k, align 4, !dbg !159
  %31 = load i32, i32* %k, align 4, !dbg !160
  %cmp31 = icmp sgt i32 %31, 0, !dbg !161
  br i1 %cmp31, label %cond.true, label %cond.false, !dbg !162

cond.true:                                        ; preds = %if.then28
  %32 = load double, double* %u, align 8, !dbg !163
  %33 = load double, double* %x.addr, align 8, !dbg !164
  %sub32 = fsub double %32, %33, !dbg !165
  %sub33 = fsub double 1.000000e+00, %sub32, !dbg !166
  br label %cond.end, !dbg !162

cond.false:                                       ; preds = %if.then28
  %34 = load double, double* %x.addr, align 8, !dbg !167
  %35 = load double, double* %u, align 8, !dbg !168
  %sub34 = fsub double %35, 1.000000e+00, !dbg !169
  %sub35 = fsub double %34, %sub34, !dbg !170
  br label %cond.end, !dbg !162

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub33, %cond.true ], [ %sub35, %cond.false ], !dbg !162
  store double %cond, double* %c, align 8, !dbg !171
  %36 = load double, double* %u, align 8, !dbg !172
  %37 = load double, double* %c, align 8, !dbg !173
  %div36 = fdiv double %37, %36, !dbg !173
  store double %div36, double* %c, align 8, !dbg !173
  br label %if.end40, !dbg !174

if.else37:                                        ; preds = %if.then26
  %38 = load double, double* %x.addr, align 8, !dbg !175
  store double %38, double* %u, align 8, !dbg !177
  %39 = bitcast double* %u to i32*, !dbg !178
  %40 = load i32, i32* %39, align 8, !dbg !178
  store i32 %40, i32* %hu, align 4, !dbg !179
  %41 = load i32, i32* %hu, align 4, !dbg !180
  %shr38 = ashr i32 %41, 20, !dbg !181
  %sub39 = sub nsw i32 %shr38, 1023, !dbg !182
  store i32 %sub39, i32* %k, align 4, !dbg !183
  store double 0.000000e+00, double* %c, align 8, !dbg !184
  br label %if.end40

if.end40:                                         ; preds = %if.else37, %cond.end
  %42 = load i32, i32* %hu, align 4, !dbg !185
  %and41 = and i32 %42, 1048575, !dbg !185
  store i32 %and41, i32* %hu, align 4, !dbg !185
  %43 = load i32, i32* %hu, align 4, !dbg !186
  %cmp42 = icmp slt i32 %43, 434334, !dbg !188
  br i1 %cmp42, label %if.then43, label %if.else44, !dbg !189

if.then43:                                        ; preds = %if.end40
  %44 = load i32, i32* %hu, align 4, !dbg !190
  %or = or i32 %44, 1072693248, !dbg !192
  %45 = bitcast double* %u to i32*, !dbg !193
  store i32 %or, i32* %45, align 8, !dbg !194
  br label %if.end49, !dbg !195

if.else44:                                        ; preds = %if.end40
  %46 = load i32, i32* %k, align 4, !dbg !196
  %add45 = add nsw i32 %46, 1, !dbg !196
  store i32 %add45, i32* %k, align 4, !dbg !196
  %47 = load i32, i32* %hu, align 4, !dbg !198
  %or46 = or i32 %47, 1071644672, !dbg !199
  %48 = bitcast double* %u to i32*, !dbg !200
  store i32 %or46, i32* %48, align 8, !dbg !201
  %49 = load i32, i32* %hu, align 4, !dbg !202
  %sub47 = sub nsw i32 1048576, %49, !dbg !203
  %shr48 = ashr i32 %sub47, 2, !dbg !204
  store i32 %shr48, i32* %hu, align 4, !dbg !205
  br label %if.end49

if.end49:                                         ; preds = %if.else44, %if.then43
  %50 = load double, double* %u, align 8, !dbg !206
  %sub50 = fsub double %50, 1.000000e+00, !dbg !207
  store double %sub50, double* %f, align 8, !dbg !208
  br label %if.end51, !dbg !209

if.end51:                                         ; preds = %if.end49, %if.end24
  %51 = load double, double* %f, align 8, !dbg !210
  %mul52 = fmul double 5.000000e-01, %51, !dbg !211
  %52 = load double, double* %f, align 8, !dbg !212
  %mul53 = fmul double %mul52, %52, !dbg !213
  store double %mul53, double* %hfsq, align 8, !dbg !214
  %53 = load i32, i32* %hu, align 4, !dbg !215
  %cmp54 = icmp eq i32 %53, 0, !dbg !217
  br i1 %cmp54, label %if.then55, label %if.end83, !dbg !218

if.then55:                                        ; preds = %if.end51
  %54 = load double, double* %f, align 8, !dbg !219
  %55 = load double, double* @zero, align 8, !dbg !222
  %cmp56 = fcmp oeq double %54, %55, !dbg !223
  br i1 %cmp56, label %if.then57, label %if.end66, !dbg !224

if.then57:                                        ; preds = %if.then55
  %56 = load i32, i32* %k, align 4, !dbg !225
  %cmp58 = icmp eq i32 %56, 0, !dbg !228
  br i1 %cmp58, label %if.then59, label %if.else60, !dbg !229

if.then59:                                        ; preds = %if.then57
  %57 = load double, double* @zero, align 8, !dbg !230
  store double %57, double* %retval, align 8, !dbg !232
  br label %return, !dbg !232

if.else60:                                        ; preds = %if.then57
  %58 = load i32, i32* %k, align 4, !dbg !233
  %conv = sitofp i32 %58 to double, !dbg !233
  %mul61 = fmul double %conv, 0x3DEA39EF35793C76, !dbg !235
  %59 = load double, double* %c, align 8, !dbg !236
  %add62 = fadd double %59, %mul61, !dbg !236
  store double %add62, double* %c, align 8, !dbg !236
  %60 = load i32, i32* %k, align 4, !dbg !237
  %conv63 = sitofp i32 %60 to double, !dbg !237
  %mul64 = fmul double %conv63, 0x3FE62E42FEE00000, !dbg !238
  %61 = load double, double* %c, align 8, !dbg !239
  %add65 = fadd double %mul64, %61, !dbg !240
  store double %add65, double* %retval, align 8, !dbg !241
  br label %return, !dbg !241

if.end66:                                         ; preds = %if.then55
  %62 = load double, double* %hfsq, align 8, !dbg !242
  %63 = load double, double* %f, align 8, !dbg !243
  %mul67 = fmul double 0x3FE5555555555555, %63, !dbg !244
  %sub68 = fsub double 1.000000e+00, %mul67, !dbg !245
  %mul69 = fmul double %62, %sub68, !dbg !246
  store double %mul69, double* %R, align 8, !dbg !247
  %64 = load i32, i32* %k, align 4, !dbg !248
  %cmp70 = icmp eq i32 %64, 0, !dbg !250
  br i1 %cmp70, label %if.then72, label %if.else74, !dbg !251

if.then72:                                        ; preds = %if.end66
  %65 = load double, double* %f, align 8, !dbg !252
  %66 = load double, double* %R, align 8, !dbg !253
  %sub73 = fsub double %65, %66, !dbg !254
  store double %sub73, double* %retval, align 8, !dbg !255
  br label %return, !dbg !255

if.else74:                                        ; preds = %if.end66
  %67 = load i32, i32* %k, align 4, !dbg !256
  %conv75 = sitofp i32 %67 to double, !dbg !256
  %mul76 = fmul double %conv75, 0x3FE62E42FEE00000, !dbg !257
  %68 = load double, double* %R, align 8, !dbg !258
  %69 = load i32, i32* %k, align 4, !dbg !259
  %conv77 = sitofp i32 %69 to double, !dbg !259
  %mul78 = fmul double %conv77, 0x3DEA39EF35793C76, !dbg !260
  %70 = load double, double* %c, align 8, !dbg !261
  %add79 = fadd double %mul78, %70, !dbg !262
  %sub80 = fsub double %68, %add79, !dbg !263
  %71 = load double, double* %f, align 8, !dbg !264
  %sub81 = fsub double %sub80, %71, !dbg !265
  %sub82 = fsub double %mul76, %sub81, !dbg !266
  store double %sub82, double* %retval, align 8, !dbg !267
  br label %return, !dbg !267

if.end83:                                         ; preds = %if.end51
  %72 = load double, double* %f, align 8, !dbg !268
  %73 = load double, double* %f, align 8, !dbg !269
  %add84 = fadd double 2.000000e+00, %73, !dbg !270
  %div85 = fdiv double %72, %add84, !dbg !271
  store double %div85, double* %s, align 8, !dbg !272
  %74 = load double, double* %s, align 8, !dbg !273
  %75 = load double, double* %s, align 8, !dbg !274
  %mul86 = fmul double %74, %75, !dbg !275
  store double %mul86, double* %z, align 8, !dbg !276
  %76 = load double, double* %z, align 8, !dbg !277
  %77 = load double, double* %z, align 8, !dbg !278
  %78 = load double, double* %z, align 8, !dbg !279
  %79 = load double, double* %z, align 8, !dbg !280
  %80 = load double, double* %z, align 8, !dbg !281
  %81 = load double, double* %z, align 8, !dbg !282
  %82 = load double, double* %z, align 8, !dbg !283
  %mul87 = fmul double %82, 0x3FC2F112DF3E5244, !dbg !284
  %add88 = fadd double 0x3FC39A09D078C69F, %mul87, !dbg !285
  %mul89 = fmul double %81, %add88, !dbg !286
  %add90 = fadd double 0x3FC7466496CB03DE, %mul89, !dbg !287
  %mul91 = fmul double %80, %add90, !dbg !288
  %add92 = fadd double 0x3FCC71C51D8E78AF, %mul91, !dbg !289
  %mul93 = fmul double %79, %add92, !dbg !290
  %add94 = fadd double 0x3FD2492494229359, %mul93, !dbg !291
  %mul95 = fmul double %78, %add94, !dbg !292
  %add96 = fadd double 0x3FD999999997FA04, %mul95, !dbg !293
  %mul97 = fmul double %77, %add96, !dbg !294
  %add98 = fadd double 0x3FE5555555555593, %mul97, !dbg !295
  %mul99 = fmul double %76, %add98, !dbg !296
  store double %mul99, double* %R, align 8, !dbg !297
  %83 = load i32, i32* %k, align 4, !dbg !298
  %cmp100 = icmp eq i32 %83, 0, !dbg !300
  br i1 %cmp100, label %if.then102, label %if.else107, !dbg !301

if.then102:                                       ; preds = %if.end83
  %84 = load double, double* %f, align 8, !dbg !302
  %85 = load double, double* %hfsq, align 8, !dbg !303
  %86 = load double, double* %s, align 8, !dbg !304
  %87 = load double, double* %hfsq, align 8, !dbg !305
  %88 = load double, double* %R, align 8, !dbg !306
  %add103 = fadd double %87, %88, !dbg !307
  %mul104 = fmul double %86, %add103, !dbg !308
  %sub105 = fsub double %85, %mul104, !dbg !309
  %sub106 = fsub double %84, %sub105, !dbg !310
  store double %sub106, double* %retval, align 8, !dbg !311
  br label %return, !dbg !311

if.else107:                                       ; preds = %if.end83
  %89 = load i32, i32* %k, align 4, !dbg !312
  %conv108 = sitofp i32 %89 to double, !dbg !312
  %mul109 = fmul double %conv108, 0x3FE62E42FEE00000, !dbg !313
  %90 = load double, double* %hfsq, align 8, !dbg !314
  %91 = load double, double* %s, align 8, !dbg !315
  %92 = load double, double* %hfsq, align 8, !dbg !316
  %93 = load double, double* %R, align 8, !dbg !317
  %add110 = fadd double %92, %93, !dbg !318
  %mul111 = fmul double %91, %add110, !dbg !319
  %94 = load i32, i32* %k, align 4, !dbg !320
  %conv112 = sitofp i32 %94 to double, !dbg !320
  %mul113 = fmul double %conv112, 0x3DEA39EF35793C76, !dbg !321
  %95 = load double, double* %c, align 8, !dbg !322
  %add114 = fadd double %mul113, %95, !dbg !323
  %add115 = fadd double %mul111, %add114, !dbg !324
  %sub116 = fsub double %90, %add115, !dbg !325
  %96 = load double, double* %f, align 8, !dbg !326
  %sub117 = fsub double %sub116, %96, !dbg !327
  %sub118 = fsub double %mul109, %sub117, !dbg !328
  store double %sub118, double* %retval, align 8, !dbg !329
  br label %return, !dbg !329

return:                                           ; preds = %if.else107, %if.then102, %if.else74, %if.then72, %if.else60, %if.then59, %if.then22, %if.else12, %if.then11, %if.else, %if.then4
  %97 = load double, double* %retval, align 8, !dbg !330
  ret double %97, !dbg !330
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !331 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !334, metadata !DIExpression()), !dbg !335
  %0 = bitcast double* %a0 to i8*, !dbg !336
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !337
  call void @llvm.dbg.declare(metadata double* %r, metadata !338, metadata !DIExpression()), !dbg !339
  %1 = load double, double* %a0, align 8, !dbg !340
  %call = call double @log1p(double %1) #3, !dbg !341
  store double %call, double* %r, align 8, !dbg !339
  ret i32 0, !dbg !342
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "zero", scope: !2, file: !11, line: 97, type: !13, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "s_log1p.c", directory: "/home/klee/logic_bombs/fdlibm")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !14, !16, !18, !20, !22, !24, !26, !28, !30, !0}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression(DW_OP_constu, 4850376798678024192, DW_OP_stack_value))
!10 = distinct !DIGlobalVariable(name: "two54", scope: !2, file: !11, line: 88, type: !12, isLocal: true, isDefinition: true)
!11 = !DIFile(filename: "./s_log1p.c", directory: "/home/klee/logic_bombs/fdlibm")
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4461442080421002358, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "ln2_lo", scope: !2, file: !11, line: 87, type: !12, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4604418534311723008, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "ln2_hi", scope: !2, file: !11, line: 86, type: !12, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 4604180019048437139, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "Lp1", scope: !2, file: !11, line: 89, type: !12, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 4600877379321592324, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "Lp2", scope: !2, file: !11, line: 90, type: !12, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 4598818590951641945, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "Lp3", scope: !2, file: !11, line: 91, type: !12, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression(DW_OP_constu, 4597174411056806063, DW_OP_stack_value))
!25 = distinct !DIGlobalVariable(name: "Lp4", scope: !2, file: !11, line: 92, type: !12, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression(DW_OP_constu, 4595719342595441630, DW_OP_stack_value))
!27 = distinct !DIGlobalVariable(name: "Lp5", scope: !2, file: !11, line: 93, type: !12, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression(DW_OP_constu, 4594685411790997151, DW_OP_stack_value))
!29 = distinct !DIGlobalVariable(name: "Lp6", scope: !2, file: !11, line: 94, type: !12, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression(DW_OP_constu, 4594499633228436036, DW_OP_stack_value))
!31 = distinct !DIGlobalVariable(name: "Lp7", scope: !2, file: !11, line: 95, type: !12, isLocal: true, isDefinition: true)
!32 = !{i32 7, !"Dwarf Version", i32 4}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!38 = distinct !DISubprogram(name: "log1p", scope: !11, file: !11, line: 100, type: !39, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!39 = !DISubroutineType(types: !40)
!40 = !{!13, !13}
!41 = !DILocalVariable(name: "x", arg: 1, scope: !38, file: !11, line: 100, type: !13)
!42 = !DILocation(line: 100, column: 22, scope: !38)
!43 = !DILocalVariable(name: "hfsq", scope: !38, file: !11, line: 106, type: !13)
!44 = !DILocation(line: 106, column: 9, scope: !38)
!45 = !DILocalVariable(name: "f", scope: !38, file: !11, line: 106, type: !13)
!46 = !DILocation(line: 106, column: 14, scope: !38)
!47 = !DILocalVariable(name: "c", scope: !38, file: !11, line: 106, type: !13)
!48 = !DILocation(line: 106, column: 16, scope: !38)
!49 = !DILocalVariable(name: "s", scope: !38, file: !11, line: 106, type: !13)
!50 = !DILocation(line: 106, column: 18, scope: !38)
!51 = !DILocalVariable(name: "z", scope: !38, file: !11, line: 106, type: !13)
!52 = !DILocation(line: 106, column: 20, scope: !38)
!53 = !DILocalVariable(name: "R", scope: !38, file: !11, line: 106, type: !13)
!54 = !DILocation(line: 106, column: 22, scope: !38)
!55 = !DILocalVariable(name: "u", scope: !38, file: !11, line: 106, type: !13)
!56 = !DILocation(line: 106, column: 24, scope: !38)
!57 = !DILocalVariable(name: "k", scope: !38, file: !11, line: 107, type: !7)
!58 = !DILocation(line: 107, column: 6, scope: !38)
!59 = !DILocalVariable(name: "hx", scope: !38, file: !11, line: 107, type: !7)
!60 = !DILocation(line: 107, column: 8, scope: !38)
!61 = !DILocalVariable(name: "hu", scope: !38, file: !11, line: 107, type: !7)
!62 = !DILocation(line: 107, column: 11, scope: !38)
!63 = !DILocalVariable(name: "ax", scope: !38, file: !11, line: 107, type: !7)
!64 = !DILocation(line: 107, column: 14, scope: !38)
!65 = !DILocation(line: 109, column: 7, scope: !38)
!66 = !DILocation(line: 109, column: 5, scope: !38)
!67 = !DILocation(line: 110, column: 7, scope: !38)
!68 = !DILocation(line: 110, column: 9, scope: !38)
!69 = !DILocation(line: 110, column: 5, scope: !38)
!70 = !DILocation(line: 112, column: 4, scope: !38)
!71 = !DILocation(line: 113, column: 6, scope: !72)
!72 = distinct !DILexicalBlock(scope: !38, file: !11, line: 113, column: 6)
!73 = !DILocation(line: 113, column: 9, scope: !72)
!74 = !DILocation(line: 113, column: 6, scope: !38)
!75 = !DILocation(line: 114, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !11, line: 114, column: 9)
!77 = distinct !DILexicalBlock(scope: !72, file: !11, line: 113, column: 23)
!78 = !DILocation(line: 114, column: 11, scope: !76)
!79 = !DILocation(line: 114, column: 9, scope: !77)
!80 = !DILocation(line: 115, column: 6, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !11, line: 115, column: 6)
!82 = distinct !DILexicalBlock(scope: !76, file: !11, line: 114, column: 25)
!83 = !DILocation(line: 115, column: 7, scope: !81)
!84 = !DILocation(line: 115, column: 6, scope: !82)
!85 = !DILocation(line: 115, column: 29, scope: !81)
!86 = !DILocation(line: 115, column: 28, scope: !81)
!87 = !DILocation(line: 115, column: 15, scope: !81)
!88 = !DILocation(line: 116, column: 16, scope: !81)
!89 = !DILocation(line: 116, column: 18, scope: !81)
!90 = !DILocation(line: 116, column: 17, scope: !81)
!91 = !DILocation(line: 116, column: 22, scope: !81)
!92 = !DILocation(line: 116, column: 24, scope: !81)
!93 = !DILocation(line: 116, column: 23, scope: !81)
!94 = !DILocation(line: 116, column: 20, scope: !81)
!95 = !DILocation(line: 116, column: 8, scope: !81)
!96 = !DILocation(line: 118, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !77, file: !11, line: 118, column: 9)
!98 = !DILocation(line: 118, column: 11, scope: !97)
!99 = !DILocation(line: 118, column: 9, scope: !77)
!100 = !DILocation(line: 119, column: 12, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !11, line: 119, column: 6)
!102 = distinct !DILexicalBlock(scope: !97, file: !11, line: 118, column: 24)
!103 = !DILocation(line: 119, column: 11, scope: !101)
!104 = !DILocation(line: 119, column: 14, scope: !101)
!105 = !DILocation(line: 119, column: 13, scope: !101)
!106 = !DILocation(line: 120, column: 14, scope: !101)
!107 = !DILocation(line: 120, column: 16, scope: !101)
!108 = !DILocation(line: 120, column: 18, scope: !101)
!109 = !DILocation(line: 119, column: 6, scope: !102)
!110 = !DILocation(line: 121, column: 14, scope: !101)
!111 = !DILocation(line: 121, column: 7, scope: !101)
!112 = !DILocation(line: 123, column: 14, scope: !101)
!113 = !DILocation(line: 123, column: 18, scope: !101)
!114 = !DILocation(line: 123, column: 20, scope: !101)
!115 = !DILocation(line: 123, column: 19, scope: !101)
!116 = !DILocation(line: 123, column: 21, scope: !101)
!117 = !DILocation(line: 123, column: 16, scope: !101)
!118 = !DILocation(line: 123, column: 7, scope: !101)
!119 = !DILocation(line: 125, column: 9, scope: !120)
!120 = distinct !DILexicalBlock(scope: !77, file: !11, line: 125, column: 9)
!121 = !DILocation(line: 125, column: 11, scope: !120)
!122 = !DILocation(line: 125, column: 13, scope: !120)
!123 = !DILocation(line: 125, column: 15, scope: !120)
!124 = !DILocation(line: 125, column: 17, scope: !120)
!125 = !DILocation(line: 125, column: 9, scope: !77)
!126 = !DILocation(line: 126, column: 4, scope: !127)
!127 = distinct !DILexicalBlock(scope: !120, file: !11, line: 125, column: 38)
!128 = !DILocation(line: 126, column: 9, scope: !127)
!129 = !DILocation(line: 126, column: 8, scope: !127)
!130 = !DILocation(line: 126, column: 13, scope: !127)
!131 = !DILocation(line: 126, column: 16, scope: !127)
!132 = !DILocation(line: 127, column: 2, scope: !77)
!133 = !DILocation(line: 128, column: 6, scope: !134)
!134 = distinct !DILexicalBlock(scope: !38, file: !11, line: 128, column: 6)
!135 = !DILocation(line: 128, column: 9, scope: !134)
!136 = !DILocation(line: 128, column: 6, scope: !38)
!137 = !DILocation(line: 128, column: 31, scope: !134)
!138 = !DILocation(line: 128, column: 33, scope: !134)
!139 = !DILocation(line: 128, column: 32, scope: !134)
!140 = !DILocation(line: 128, column: 24, scope: !134)
!141 = !DILocation(line: 129, column: 5, scope: !142)
!142 = distinct !DILexicalBlock(scope: !38, file: !11, line: 129, column: 5)
!143 = !DILocation(line: 129, column: 6, scope: !142)
!144 = !DILocation(line: 129, column: 5, scope: !38)
!145 = !DILocation(line: 130, column: 9, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !11, line: 130, column: 9)
!147 = distinct !DILexicalBlock(scope: !142, file: !11, line: 129, column: 11)
!148 = !DILocation(line: 130, column: 11, scope: !146)
!149 = !DILocation(line: 130, column: 9, scope: !147)
!150 = !DILocation(line: 131, column: 12, scope: !151)
!151 = distinct !DILexicalBlock(scope: !146, file: !11, line: 130, column: 24)
!152 = !DILocation(line: 131, column: 11, scope: !151)
!153 = !DILocation(line: 131, column: 6, scope: !151)
!154 = !DILocation(line: 132, column: 15, scope: !151)
!155 = !DILocation(line: 132, column: 13, scope: !151)
!156 = !DILocation(line: 133, column: 16, scope: !151)
!157 = !DILocation(line: 133, column: 18, scope: !151)
!158 = !DILocation(line: 133, column: 23, scope: !151)
!159 = !DILocation(line: 133, column: 13, scope: !151)
!160 = !DILocation(line: 134, column: 16, scope: !151)
!161 = !DILocation(line: 134, column: 17, scope: !151)
!162 = !DILocation(line: 134, column: 15, scope: !151)
!163 = !DILocation(line: 134, column: 27, scope: !151)
!164 = !DILocation(line: 134, column: 29, scope: !151)
!165 = !DILocation(line: 134, column: 28, scope: !151)
!166 = !DILocation(line: 134, column: 25, scope: !151)
!167 = !DILocation(line: 134, column: 32, scope: !151)
!168 = !DILocation(line: 134, column: 35, scope: !151)
!169 = !DILocation(line: 134, column: 36, scope: !151)
!170 = !DILocation(line: 134, column: 33, scope: !151)
!171 = !DILocation(line: 134, column: 13, scope: !151)
!172 = !DILocation(line: 135, column: 8, scope: !151)
!173 = !DILocation(line: 135, column: 5, scope: !151)
!174 = !DILocation(line: 136, column: 6, scope: !151)
!175 = !DILocation(line: 137, column: 8, scope: !176)
!176 = distinct !DILexicalBlock(scope: !146, file: !11, line: 136, column: 13)
!177 = !DILocation(line: 137, column: 6, scope: !176)
!178 = !DILocation(line: 138, column: 15, scope: !176)
!179 = !DILocation(line: 138, column: 13, scope: !176)
!180 = !DILocation(line: 139, column: 16, scope: !176)
!181 = !DILocation(line: 139, column: 18, scope: !176)
!182 = !DILocation(line: 139, column: 23, scope: !176)
!183 = !DILocation(line: 139, column: 13, scope: !176)
!184 = !DILocation(line: 140, column: 6, scope: !176)
!185 = !DILocation(line: 142, column: 9, scope: !147)
!186 = !DILocation(line: 143, column: 9, scope: !187)
!187 = distinct !DILexicalBlock(scope: !147, file: !11, line: 143, column: 9)
!188 = !DILocation(line: 143, column: 11, scope: !187)
!189 = !DILocation(line: 143, column: 9, scope: !147)
!190 = !DILocation(line: 144, column: 20, scope: !191)
!191 = distinct !DILexicalBlock(scope: !187, file: !11, line: 143, column: 21)
!192 = !DILocation(line: 144, column: 22, scope: !191)
!193 = !DILocation(line: 144, column: 10, scope: !191)
!194 = !DILocation(line: 144, column: 18, scope: !191)
!195 = !DILocation(line: 145, column: 6, scope: !191)
!196 = !DILocation(line: 146, column: 12, scope: !197)
!197 = distinct !DILexicalBlock(scope: !187, file: !11, line: 145, column: 13)
!198 = !DILocation(line: 147, column: 20, scope: !197)
!199 = !DILocation(line: 147, column: 22, scope: !197)
!200 = !DILocation(line: 147, column: 10, scope: !197)
!201 = !DILocation(line: 147, column: 18, scope: !197)
!202 = !DILocation(line: 148, column: 27, scope: !197)
!203 = !DILocation(line: 148, column: 26, scope: !197)
!204 = !DILocation(line: 148, column: 30, scope: !197)
!205 = !DILocation(line: 148, column: 13, scope: !197)
!206 = !DILocation(line: 150, column: 10, scope: !147)
!207 = !DILocation(line: 150, column: 11, scope: !147)
!208 = !DILocation(line: 150, column: 8, scope: !147)
!209 = !DILocation(line: 151, column: 2, scope: !147)
!210 = !DILocation(line: 152, column: 11, scope: !38)
!211 = !DILocation(line: 152, column: 10, scope: !38)
!212 = !DILocation(line: 152, column: 13, scope: !38)
!213 = !DILocation(line: 152, column: 12, scope: !38)
!214 = !DILocation(line: 152, column: 6, scope: !38)
!215 = !DILocation(line: 153, column: 5, scope: !216)
!216 = distinct !DILexicalBlock(scope: !38, file: !11, line: 153, column: 5)
!217 = !DILocation(line: 153, column: 7, scope: !216)
!218 = !DILocation(line: 153, column: 5, scope: !38)
!219 = !DILocation(line: 154, column: 10, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !11, line: 154, column: 10)
!221 = distinct !DILexicalBlock(scope: !216, file: !11, line: 153, column: 12)
!222 = !DILocation(line: 154, column: 15, scope: !220)
!223 = !DILocation(line: 154, column: 12, scope: !220)
!224 = !DILocation(line: 154, column: 10, scope: !221)
!225 = !DILocation(line: 155, column: 8, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !11, line: 155, column: 8)
!227 = distinct !DILexicalBlock(scope: !220, file: !11, line: 154, column: 21)
!228 = !DILocation(line: 155, column: 10, scope: !226)
!229 = !DILocation(line: 155, column: 8, scope: !227)
!230 = !DILocation(line: 156, column: 12, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !11, line: 155, column: 16)
!232 = !DILocation(line: 156, column: 5, scope: !231)
!233 = !DILocation(line: 158, column: 10, scope: !234)
!234 = distinct !DILexicalBlock(scope: !226, file: !11, line: 157, column: 11)
!235 = !DILocation(line: 158, column: 12, scope: !234)
!236 = !DILocation(line: 158, column: 7, scope: !234)
!237 = !DILocation(line: 159, column: 12, scope: !234)
!238 = !DILocation(line: 159, column: 14, scope: !234)
!239 = !DILocation(line: 159, column: 25, scope: !234)
!240 = !DILocation(line: 159, column: 23, scope: !234)
!241 = !DILocation(line: 159, column: 5, scope: !234)
!242 = !DILocation(line: 162, column: 10, scope: !221)
!243 = !DILocation(line: 162, column: 40, scope: !221)
!244 = !DILocation(line: 162, column: 39, scope: !221)
!245 = !DILocation(line: 162, column: 19, scope: !221)
!246 = !DILocation(line: 162, column: 14, scope: !221)
!247 = !DILocation(line: 162, column: 8, scope: !221)
!248 = !DILocation(line: 163, column: 9, scope: !249)
!249 = distinct !DILexicalBlock(scope: !221, file: !11, line: 163, column: 9)
!250 = !DILocation(line: 163, column: 10, scope: !249)
!251 = !DILocation(line: 163, column: 9, scope: !221)
!252 = !DILocation(line: 163, column: 22, scope: !249)
!253 = !DILocation(line: 163, column: 24, scope: !249)
!254 = !DILocation(line: 163, column: 23, scope: !249)
!255 = !DILocation(line: 163, column: 15, scope: !249)
!256 = !DILocation(line: 164, column: 19, scope: !249)
!257 = !DILocation(line: 164, column: 20, scope: !249)
!258 = !DILocation(line: 164, column: 30, scope: !249)
!259 = !DILocation(line: 164, column: 33, scope: !249)
!260 = !DILocation(line: 164, column: 34, scope: !249)
!261 = !DILocation(line: 164, column: 42, scope: !249)
!262 = !DILocation(line: 164, column: 41, scope: !249)
!263 = !DILocation(line: 164, column: 31, scope: !249)
!264 = !DILocation(line: 164, column: 46, scope: !249)
!265 = !DILocation(line: 164, column: 45, scope: !249)
!266 = !DILocation(line: 164, column: 27, scope: !249)
!267 = !DILocation(line: 164, column: 12, scope: !249)
!268 = !DILocation(line: 166, column: 7, scope: !38)
!269 = !DILocation(line: 166, column: 14, scope: !38)
!270 = !DILocation(line: 166, column: 13, scope: !38)
!271 = !DILocation(line: 166, column: 8, scope: !38)
!272 = !DILocation(line: 166, column: 5, scope: !38)
!273 = !DILocation(line: 167, column: 6, scope: !38)
!274 = !DILocation(line: 167, column: 8, scope: !38)
!275 = !DILocation(line: 167, column: 7, scope: !38)
!276 = !DILocation(line: 167, column: 4, scope: !38)
!277 = !DILocation(line: 168, column: 6, scope: !38)
!278 = !DILocation(line: 168, column: 13, scope: !38)
!279 = !DILocation(line: 168, column: 20, scope: !38)
!280 = !DILocation(line: 168, column: 27, scope: !38)
!281 = !DILocation(line: 168, column: 34, scope: !38)
!282 = !DILocation(line: 168, column: 41, scope: !38)
!283 = !DILocation(line: 168, column: 48, scope: !38)
!284 = !DILocation(line: 168, column: 49, scope: !38)
!285 = !DILocation(line: 168, column: 47, scope: !38)
!286 = !DILocation(line: 168, column: 42, scope: !38)
!287 = !DILocation(line: 168, column: 40, scope: !38)
!288 = !DILocation(line: 168, column: 35, scope: !38)
!289 = !DILocation(line: 168, column: 33, scope: !38)
!290 = !DILocation(line: 168, column: 28, scope: !38)
!291 = !DILocation(line: 168, column: 26, scope: !38)
!292 = !DILocation(line: 168, column: 21, scope: !38)
!293 = !DILocation(line: 168, column: 19, scope: !38)
!294 = !DILocation(line: 168, column: 14, scope: !38)
!295 = !DILocation(line: 168, column: 12, scope: !38)
!296 = !DILocation(line: 168, column: 7, scope: !38)
!297 = !DILocation(line: 168, column: 4, scope: !38)
!298 = !DILocation(line: 169, column: 5, scope: !299)
!299 = distinct !DILexicalBlock(scope: !38, file: !11, line: 169, column: 5)
!300 = !DILocation(line: 169, column: 6, scope: !299)
!301 = !DILocation(line: 169, column: 5, scope: !38)
!302 = !DILocation(line: 169, column: 18, scope: !299)
!303 = !DILocation(line: 169, column: 21, scope: !299)
!304 = !DILocation(line: 169, column: 26, scope: !299)
!305 = !DILocation(line: 169, column: 29, scope: !299)
!306 = !DILocation(line: 169, column: 34, scope: !299)
!307 = !DILocation(line: 169, column: 33, scope: !299)
!308 = !DILocation(line: 169, column: 27, scope: !299)
!309 = !DILocation(line: 169, column: 25, scope: !299)
!310 = !DILocation(line: 169, column: 19, scope: !299)
!311 = !DILocation(line: 169, column: 11, scope: !299)
!312 = !DILocation(line: 170, column: 11, scope: !299)
!313 = !DILocation(line: 170, column: 12, scope: !299)
!314 = !DILocation(line: 170, column: 22, scope: !299)
!315 = !DILocation(line: 170, column: 28, scope: !299)
!316 = !DILocation(line: 170, column: 31, scope: !299)
!317 = !DILocation(line: 170, column: 36, scope: !299)
!318 = !DILocation(line: 170, column: 35, scope: !299)
!319 = !DILocation(line: 170, column: 29, scope: !299)
!320 = !DILocation(line: 170, column: 40, scope: !299)
!321 = !DILocation(line: 170, column: 41, scope: !299)
!322 = !DILocation(line: 170, column: 49, scope: !299)
!323 = !DILocation(line: 170, column: 48, scope: !299)
!324 = !DILocation(line: 170, column: 38, scope: !299)
!325 = !DILocation(line: 170, column: 26, scope: !299)
!326 = !DILocation(line: 170, column: 54, scope: !299)
!327 = !DILocation(line: 170, column: 53, scope: !299)
!328 = !DILocation(line: 170, column: 19, scope: !299)
!329 = !DILocation(line: 170, column: 4, scope: !299)
!330 = !DILocation(line: 171, column: 1, scope: !38)
!331 = distinct !DISubprogram(name: "main", scope: !11, file: !11, line: 175, type: !332, scopeLine: 175, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!332 = !DISubroutineType(types: !333)
!333 = !{!7}
!334 = !DILocalVariable(name: "a0", scope: !331, file: !11, line: 176, type: !13)
!335 = !DILocation(line: 176, column: 12, scope: !331)
!336 = !DILocation(line: 177, column: 24, scope: !331)
!337 = !DILocation(line: 177, column: 5, scope: !331)
!338 = !DILocalVariable(name: "r", scope: !331, file: !11, line: 179, type: !13)
!339 = !DILocation(line: 179, column: 12, scope: !331)
!340 = !DILocation(line: 179, column: 22, scope: !331)
!341 = !DILocation(line: 179, column: 16, scope: !331)
!342 = !DILocation(line: 180, column: 5, scope: !331)
