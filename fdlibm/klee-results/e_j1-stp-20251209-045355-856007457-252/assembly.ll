; ModuleID = 'e_j1.bc'
source_filename = "./e_j1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = internal global double 0.000000e+00, align 8, !dbg !0
@U0 = internal constant [5 x double] [double 0xBFC91866143CBC8A, double 0x3FA9D3C776292CD1, double 0xBF5F55E54844F50F, double 0x3EF8AB038FA6B88E, double 0xBE78AC00569105B8], align 16, !dbg !38
@V0 = internal constant [5 x double] [double 0x3F94650D3F4DA9F0, double 0x3F2A8C896C257764, double 0x3EB6C05A894E8CA6, double 0x3E3ABF1D5BA69A86, double 0x3DB25039DACA772A], align 16, !dbg !43
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@pr8 = internal constant [6 x double] [double 0.000000e+00, double 0x3FBDFFFFFFFFFCCE, double 0x402A7A9D357F7FCE, double 0x4079C0D4652EA590, double 0x40AE457DA3A532CC, double 0x40BEEA7AC32782DD], align 16, !dbg !45
@ps8 = internal constant [5 x double] [double 0x405C8D458E656CAC, double 0x40AC85DC964D274F, double 0x40E20B8697C5BB7F, double 0x40F7D42CB28F17BB, double 0x40DE1511697A0B2D], align 16, !dbg !50
@pr5 = internal constant [6 x double] [double 0x3DAD0667DAE1CA7D, double 0x3FBDFFFFE2C10043, double 0x401B36046E6315E3, double 0x405B13B9452602ED, double 0x40802D16D052D649, double 0x408085B8BB7E0CB7], align 16, !dbg !52
@ps5 = internal constant [5 x double] [double 0x404DA3EAA8AF633D, double 0x408EFB361B066701, double 0x40B4E9445706B6FB, double 0x40BEA4B0B8A5BB15, double 0x40978030036F5E51], align 16, !dbg !54
@pr3 = internal constant [6 x double] [double 0x3E29FC21A7AD9EDD, double 0x3FBDFFF55B21D17B, double 0x400F76BCE85EAD8A, double 0x40418F489DA6D129, double 0x4056C3854D2C1837, double 0x4048478F8EA83EE5], align 16, !dbg !56
@ps3 = internal constant [5 x double] [double 0x40416549A134069C, double 0x40750C3307F1A75F, double 0x40905B7C5037D523, double 0x408BD67DA32E31E9, double 0x4059F26D7C2EED53], align 16, !dbg !58
@pr2 = internal constant [6 x double] [double 0x3E7CE9D4F65544F4, double 0x3FBDFF42BE760D83, double 0x4002F2B7F98FAEC0, double 0x40287C377F71A964, double 0x4031B1A8177F8EE2, double 0x40144B49A574C1FE], align 16, !dbg !60
@ps2 = internal constant [5 x double] [double 0x40356FBD8AD5ECDC, double 0x405F529314F92CD5, double 0x406D08D8D5A2DBD9, double 0x405D6B7ADA1884A9, double 0x4020BAB1F44E5192], align 16, !dbg !62
@qr8 = internal constant [6 x double] [double 0.000000e+00, double 0xBFBA3FFFFFFFFDF3, double 0xC0304591A26779F7, double 0xC087BCD053E4B576, double 0xC0C724E740F87415, double 0xC0E7A6D065D09C6A], align 16, !dbg !64
@qs8 = internal constant [6 x double] [double 0x40642CA6DE5BCDE5, double 0x40BE9162D0D88419, double 0x4100579AB0B75E98, double 0x4125F65372869C19, double 0x412457D27719AD5C, double 0xC111F9690EA5AA18], align 16, !dbg !66
@qr5 = internal constant [6 x double] [double 0xBDB6FA431AA1A098, double 0xBFBA3FFFCB597FEF, double 0xC0201CE6CA03AD4B, double 0xC066F56D6CA7B9B0, double 0xC09574C66931734F, double 0xC0A468E388FDA79D], align 16, !dbg !68
@qs5 = internal constant [6 x double] [double 0x405451B2FF5A11B2, double 0x409F1F31E77BF839, double 0x40D10F1F0D64CE29, double 0x40E8576DAABAD197, double 0x40DB4B04CF7C364B, double 0xC0B26F2EFCFFA004], align 16, !dbg !70
@qr3 = internal constant [6 x double] [double 0xBE35CFA9D38FC84F, double 0xBFBA3FEB51AEED54, double 0xC01270C23302D9FF, double 0xC04CEC71C25D16DA, double 0xC06C87D34718D55F, double 0xC06B66B95F5C1BF6], align 16, !dbg !72
@qs3 = internal constant [6 x double] [double 0x4047D523CCD367E4, double 0x40850EEBC031EE3E, double 0x40AA684E448E7C9A, double 0x40B5ABBAA61D54A6, double 0x409DBC7A0DD4DF4B, double 0xC060E670290A311F], align 16, !dbg !74
@qr2 = internal constant [6 x double] [double 0xBE87F12644C626D2, double 0xBFBA3E8E9148B010, double 0xC006048469BB4EDA, double 0xC033A9E2C168907F, double 0xC04529A3DE104AAA, double 0xC0355F3639CF6E52], align 16, !dbg !76
@qs2 = internal constant [6 x double] [double 0x403D888A78AE64FF, double 0x406F9F68DB821CBA, double 0x4087AC05CE49A0F7, double 0x40871B2548D4C029, double 0x40637E5E3C3ED8D4, double 0xC013D686E71BE86B], align 16, !dbg !78

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_j1(double %x) #0 !dbg !86 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %z = alloca double, align 8
  %s = alloca double, align 8
  %c = alloca double, align 8
  %ss = alloca double, align 8
  %cc = alloca double, align 8
  %r = alloca double, align 8
  %u = alloca double, align 8
  %v = alloca double, align 8
  %y = alloca double, align 8
  %hx = alloca i32, align 4
  %ix = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata double* %z, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata double* %s, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata double* %c, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata double* %ss, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata double* %cc, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata double* %r, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata double* %u, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata double* %v, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata double* %y, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !111, metadata !DIExpression()), !dbg !112
  %0 = bitcast double* %x.addr to i32*, !dbg !113
  %1 = load i32, i32* %0, align 8, !dbg !113
  store i32 %1, i32* %hx, align 4, !dbg !114
  %2 = load i32, i32* %hx, align 4, !dbg !115
  %and = and i32 %2, 2147483647, !dbg !116
  store i32 %and, i32* %ix, align 4, !dbg !117
  %3 = load i32, i32* %ix, align 4, !dbg !118
  %cmp = icmp sge i32 %3, 2146435072, !dbg !120
  br i1 %cmp, label %if.then, label %if.end, !dbg !121

if.then:                                          ; preds = %entry
  %4 = load double, double* %x.addr, align 8, !dbg !122
  %div = fdiv double 1.000000e+00, %4, !dbg !123
  store double %div, double* %retval, align 8, !dbg !124
  br label %return, !dbg !124

if.end:                                           ; preds = %entry
  %5 = load double, double* %x.addr, align 8, !dbg !125
  %6 = call double @llvm.fabs.f64(double %5), !dbg !126
  store double %6, double* %y, align 8, !dbg !127
  %7 = load i32, i32* %ix, align 4, !dbg !128
  %cmp1 = icmp sge i32 %7, 1073741824, !dbg !130
  br i1 %cmp1, label %if.then2, label %if.end33, !dbg !131

if.then2:                                         ; preds = %if.end
  %8 = load double, double* %y, align 8, !dbg !132
  %call = call double @sin(double %8) #4, !dbg !134
  store double %call, double* %s, align 8, !dbg !135
  %9 = load double, double* %y, align 8, !dbg !136
  %call3 = call double @cos(double %9) #4, !dbg !137
  store double %call3, double* %c, align 8, !dbg !138
  %10 = load double, double* %s, align 8, !dbg !139
  %fneg = fneg double %10, !dbg !140
  %11 = load double, double* %c, align 8, !dbg !141
  %sub = fsub double %fneg, %11, !dbg !142
  store double %sub, double* %ss, align 8, !dbg !143
  %12 = load double, double* %s, align 8, !dbg !144
  %13 = load double, double* %c, align 8, !dbg !145
  %sub4 = fsub double %12, %13, !dbg !146
  store double %sub4, double* %cc, align 8, !dbg !147
  %14 = load i32, i32* %ix, align 4, !dbg !148
  %cmp5 = icmp slt i32 %14, 2145386496, !dbg !150
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !151

if.then6:                                         ; preds = %if.then2
  %15 = load double, double* %y, align 8, !dbg !152
  %16 = load double, double* %y, align 8, !dbg !154
  %add = fadd double %15, %16, !dbg !155
  %call7 = call double @cos(double %add) #4, !dbg !156
  store double %call7, double* %z, align 8, !dbg !157
  %17 = load double, double* %s, align 8, !dbg !158
  %18 = load double, double* %c, align 8, !dbg !160
  %mul = fmul double %17, %18, !dbg !161
  %19 = load double, double* @zero, align 8, !dbg !162
  %cmp8 = fcmp ogt double %mul, %19, !dbg !163
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !164

if.then9:                                         ; preds = %if.then6
  %20 = load double, double* %z, align 8, !dbg !165
  %21 = load double, double* %ss, align 8, !dbg !166
  %div10 = fdiv double %20, %21, !dbg !167
  store double %div10, double* %cc, align 8, !dbg !168
  br label %if.end12, !dbg !169

if.else:                                          ; preds = %if.then6
  %22 = load double, double* %z, align 8, !dbg !170
  %23 = load double, double* %cc, align 8, !dbg !171
  %div11 = fdiv double %22, %23, !dbg !172
  store double %div11, double* %ss, align 8, !dbg !173
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  br label %if.end13, !dbg !174

if.end13:                                         ; preds = %if.end12, %if.then2
  %24 = load i32, i32* %ix, align 4, !dbg !175
  %cmp14 = icmp sgt i32 %24, 1207959552, !dbg !177
  br i1 %cmp14, label %if.then15, label %if.else19, !dbg !178

if.then15:                                        ; preds = %if.end13
  %25 = load double, double* %cc, align 8, !dbg !179
  %mul16 = fmul double 0x3FE20DD750429B6D, %25, !dbg !180
  %26 = load double, double* %y, align 8, !dbg !181
  %call17 = call double @sqrt(double %26) #4, !dbg !182
  %div18 = fdiv double %mul16, %call17, !dbg !183
  store double %div18, double* %z, align 8, !dbg !184
  br label %if.end28, !dbg !185

if.else19:                                        ; preds = %if.end13
  %27 = load double, double* %y, align 8, !dbg !186
  %call20 = call double @pone(double %27), !dbg !188
  store double %call20, double* %u, align 8, !dbg !189
  %28 = load double, double* %y, align 8, !dbg !190
  %call21 = call double @qone(double %28), !dbg !191
  store double %call21, double* %v, align 8, !dbg !192
  %29 = load double, double* %u, align 8, !dbg !193
  %30 = load double, double* %cc, align 8, !dbg !194
  %mul22 = fmul double %29, %30, !dbg !195
  %31 = load double, double* %v, align 8, !dbg !196
  %32 = load double, double* %ss, align 8, !dbg !197
  %mul23 = fmul double %31, %32, !dbg !198
  %sub24 = fsub double %mul22, %mul23, !dbg !199
  %mul25 = fmul double 0x3FE20DD750429B6D, %sub24, !dbg !200
  %33 = load double, double* %y, align 8, !dbg !201
  %call26 = call double @sqrt(double %33) #4, !dbg !202
  %div27 = fdiv double %mul25, %call26, !dbg !203
  store double %div27, double* %z, align 8, !dbg !204
  br label %if.end28

if.end28:                                         ; preds = %if.else19, %if.then15
  %34 = load i32, i32* %hx, align 4, !dbg !205
  %cmp29 = icmp slt i32 %34, 0, !dbg !207
  br i1 %cmp29, label %if.then30, label %if.else32, !dbg !208

if.then30:                                        ; preds = %if.end28
  %35 = load double, double* %z, align 8, !dbg !209
  %fneg31 = fneg double %35, !dbg !210
  store double %fneg31, double* %retval, align 8, !dbg !211
  br label %return, !dbg !211

if.else32:                                        ; preds = %if.end28
  %36 = load double, double* %z, align 8, !dbg !212
  store double %36, double* %retval, align 8, !dbg !213
  br label %return, !dbg !213

if.end33:                                         ; preds = %if.end
  %37 = load i32, i32* %ix, align 4, !dbg !214
  %cmp34 = icmp slt i32 %37, 1044381696, !dbg !216
  br i1 %cmp34, label %if.then35, label %if.end41, !dbg !217

if.then35:                                        ; preds = %if.end33
  %38 = load double, double* %x.addr, align 8, !dbg !218
  %add36 = fadd double 1.000000e+300, %38, !dbg !221
  %cmp37 = fcmp ogt double %add36, 1.000000e+00, !dbg !222
  br i1 %cmp37, label %if.then38, label %if.end40, !dbg !223

if.then38:                                        ; preds = %if.then35
  %39 = load double, double* %x.addr, align 8, !dbg !224
  %mul39 = fmul double 5.000000e-01, %39, !dbg !225
  store double %mul39, double* %retval, align 8, !dbg !226
  br label %return, !dbg !226

if.end40:                                         ; preds = %if.then35
  br label %if.end41, !dbg !227

if.end41:                                         ; preds = %if.end40, %if.end33
  %40 = load double, double* %x.addr, align 8, !dbg !228
  %41 = load double, double* %x.addr, align 8, !dbg !229
  %mul42 = fmul double %40, %41, !dbg !230
  store double %mul42, double* %z, align 8, !dbg !231
  %42 = load double, double* %z, align 8, !dbg !232
  %43 = load double, double* %z, align 8, !dbg !233
  %44 = load double, double* %z, align 8, !dbg !234
  %45 = load double, double* %z, align 8, !dbg !235
  %mul43 = fmul double %45, 0x3E6AAAFA46CA0BD9, !dbg !236
  %add44 = fadd double 0xBEF0C5C6BA169668, %mul43, !dbg !237
  %mul45 = fmul double %44, %add44, !dbg !238
  %add46 = fadd double 0x3F570D9F98472C61, %mul45, !dbg !239
  %mul47 = fmul double %43, %add46, !dbg !240
  %add48 = fadd double -6.250000e-02, %mul47, !dbg !241
  %mul49 = fmul double %42, %add48, !dbg !242
  store double %mul49, double* %r, align 8, !dbg !243
  %46 = load double, double* %z, align 8, !dbg !244
  %47 = load double, double* %z, align 8, !dbg !245
  %48 = load double, double* %z, align 8, !dbg !246
  %49 = load double, double* %z, align 8, !dbg !247
  %50 = load double, double* %z, align 8, !dbg !248
  %mul50 = fmul double %50, 0x3DAB2ACFCFB97ED8, !dbg !249
  %add51 = fadd double 0x3E35AC88C97DFF2C, %mul50, !dbg !250
  %mul52 = fmul double %49, %add51, !dbg !251
  %add53 = fadd double 0x3EB3BFF8333F8498, %mul52, !dbg !252
  %mul54 = fmul double %48, %add53, !dbg !253
  %add55 = fadd double 0x3F285F56B9CDF664, %mul54, !dbg !254
  %mul56 = fmul double %47, %add55, !dbg !255
  %add57 = fadd double 0x3F939D0B12637E53, %mul56, !dbg !256
  %mul58 = fmul double %46, %add57, !dbg !257
  %add59 = fadd double 1.000000e+00, %mul58, !dbg !258
  store double %add59, double* %s, align 8, !dbg !259
  %51 = load double, double* %x.addr, align 8, !dbg !260
  %52 = load double, double* %r, align 8, !dbg !261
  %mul60 = fmul double %52, %51, !dbg !261
  store double %mul60, double* %r, align 8, !dbg !261
  %53 = load double, double* %x.addr, align 8, !dbg !262
  %mul61 = fmul double %53, 5.000000e-01, !dbg !263
  %54 = load double, double* %r, align 8, !dbg !264
  %55 = load double, double* %s, align 8, !dbg !265
  %div62 = fdiv double %54, %55, !dbg !266
  %add63 = fadd double %mul61, %div62, !dbg !267
  store double %add63, double* %retval, align 8, !dbg !268
  br label %return, !dbg !268

return:                                           ; preds = %if.end41, %if.then38, %if.else32, %if.then30, %if.then
  %56 = load double, double* %retval, align 8, !dbg !269
  ret double %56, !dbg !269
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal double @pone(double %x) #0 !dbg !270 {
entry:
  %x.addr = alloca double, align 8
  %p = alloca double*, align 8
  %q = alloca double*, align 8
  %z = alloca double, align 8
  %r = alloca double, align 8
  %s = alloca double, align 8
  %ix = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !271, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.declare(metadata double** %p, metadata !273, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.declare(metadata double** %q, metadata !276, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata double* %z, metadata !278, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.declare(metadata double* %r, metadata !280, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata double* %s, metadata !282, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !284, metadata !DIExpression()), !dbg !285
  %0 = bitcast double* %x.addr to i32*, !dbg !286
  %1 = load i32, i32* %0, align 8, !dbg !286
  %and = and i32 2147483647, %1, !dbg !287
  store i32 %and, i32* %ix, align 4, !dbg !288
  %2 = load i32, i32* %ix, align 4, !dbg !289
  %cmp = icmp sge i32 %2, 1075838976, !dbg !291
  br i1 %cmp, label %if.then, label %if.else, !dbg !292

if.then:                                          ; preds = %entry
  store double* getelementptr inbounds ([6 x double], [6 x double]* @pr8, i64 0, i64 0), double** %p, align 8, !dbg !293
  store double* getelementptr inbounds ([5 x double], [5 x double]* @ps8, i64 0, i64 0), double** %q, align 8, !dbg !295
  br label %if.end11, !dbg !296

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %ix, align 4, !dbg !297
  %cmp1 = icmp sge i32 %3, 1074933387, !dbg !299
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !300

if.then2:                                         ; preds = %if.else
  store double* getelementptr inbounds ([6 x double], [6 x double]* @pr5, i64 0, i64 0), double** %p, align 8, !dbg !301
  store double* getelementptr inbounds ([5 x double], [5 x double]* @ps5, i64 0, i64 0), double** %q, align 8, !dbg !303
  br label %if.end10, !dbg !304

if.else3:                                         ; preds = %if.else
  %4 = load i32, i32* %ix, align 4, !dbg !305
  %cmp4 = icmp sge i32 %4, 1074191213, !dbg !307
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !308

if.then5:                                         ; preds = %if.else3
  store double* getelementptr inbounds ([6 x double], [6 x double]* @pr3, i64 0, i64 0), double** %p, align 8, !dbg !309
  store double* getelementptr inbounds ([5 x double], [5 x double]* @ps3, i64 0, i64 0), double** %q, align 8, !dbg !311
  br label %if.end9, !dbg !312

if.else6:                                         ; preds = %if.else3
  %5 = load i32, i32* %ix, align 4, !dbg !313
  %cmp7 = icmp sge i32 %5, 1073741824, !dbg !315
  br i1 %cmp7, label %if.then8, label %if.end, !dbg !316

if.then8:                                         ; preds = %if.else6
  store double* getelementptr inbounds ([6 x double], [6 x double]* @pr2, i64 0, i64 0), double** %p, align 8, !dbg !317
  store double* getelementptr inbounds ([5 x double], [5 x double]* @ps2, i64 0, i64 0), double** %q, align 8, !dbg !319
  br label %if.end, !dbg !320

if.end:                                           ; preds = %if.then8, %if.else6
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then5
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then2
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then
  %6 = load double, double* %x.addr, align 8, !dbg !321
  %7 = load double, double* %x.addr, align 8, !dbg !322
  %mul = fmul double %6, %7, !dbg !323
  %div = fdiv double 1.000000e+00, %mul, !dbg !324
  store double %div, double* %z, align 8, !dbg !325
  %8 = load double*, double** %p, align 8, !dbg !326
  %arrayidx = getelementptr inbounds double, double* %8, i64 0, !dbg !326
  %9 = load double, double* %arrayidx, align 8, !dbg !326
  %10 = load double, double* %z, align 8, !dbg !327
  %11 = load double*, double** %p, align 8, !dbg !328
  %arrayidx12 = getelementptr inbounds double, double* %11, i64 1, !dbg !328
  %12 = load double, double* %arrayidx12, align 8, !dbg !328
  %13 = load double, double* %z, align 8, !dbg !329
  %14 = load double*, double** %p, align 8, !dbg !330
  %arrayidx13 = getelementptr inbounds double, double* %14, i64 2, !dbg !330
  %15 = load double, double* %arrayidx13, align 8, !dbg !330
  %16 = load double, double* %z, align 8, !dbg !331
  %17 = load double*, double** %p, align 8, !dbg !332
  %arrayidx14 = getelementptr inbounds double, double* %17, i64 3, !dbg !332
  %18 = load double, double* %arrayidx14, align 8, !dbg !332
  %19 = load double, double* %z, align 8, !dbg !333
  %20 = load double*, double** %p, align 8, !dbg !334
  %arrayidx15 = getelementptr inbounds double, double* %20, i64 4, !dbg !334
  %21 = load double, double* %arrayidx15, align 8, !dbg !334
  %22 = load double, double* %z, align 8, !dbg !335
  %23 = load double*, double** %p, align 8, !dbg !336
  %arrayidx16 = getelementptr inbounds double, double* %23, i64 5, !dbg !336
  %24 = load double, double* %arrayidx16, align 8, !dbg !336
  %mul17 = fmul double %22, %24, !dbg !337
  %add = fadd double %21, %mul17, !dbg !338
  %mul18 = fmul double %19, %add, !dbg !339
  %add19 = fadd double %18, %mul18, !dbg !340
  %mul20 = fmul double %16, %add19, !dbg !341
  %add21 = fadd double %15, %mul20, !dbg !342
  %mul22 = fmul double %13, %add21, !dbg !343
  %add23 = fadd double %12, %mul22, !dbg !344
  %mul24 = fmul double %10, %add23, !dbg !345
  %add25 = fadd double %9, %mul24, !dbg !346
  store double %add25, double* %r, align 8, !dbg !347
  %25 = load double, double* %z, align 8, !dbg !348
  %26 = load double*, double** %q, align 8, !dbg !349
  %arrayidx26 = getelementptr inbounds double, double* %26, i64 0, !dbg !349
  %27 = load double, double* %arrayidx26, align 8, !dbg !349
  %28 = load double, double* %z, align 8, !dbg !350
  %29 = load double*, double** %q, align 8, !dbg !351
  %arrayidx27 = getelementptr inbounds double, double* %29, i64 1, !dbg !351
  %30 = load double, double* %arrayidx27, align 8, !dbg !351
  %31 = load double, double* %z, align 8, !dbg !352
  %32 = load double*, double** %q, align 8, !dbg !353
  %arrayidx28 = getelementptr inbounds double, double* %32, i64 2, !dbg !353
  %33 = load double, double* %arrayidx28, align 8, !dbg !353
  %34 = load double, double* %z, align 8, !dbg !354
  %35 = load double*, double** %q, align 8, !dbg !355
  %arrayidx29 = getelementptr inbounds double, double* %35, i64 3, !dbg !355
  %36 = load double, double* %arrayidx29, align 8, !dbg !355
  %37 = load double, double* %z, align 8, !dbg !356
  %38 = load double*, double** %q, align 8, !dbg !357
  %arrayidx30 = getelementptr inbounds double, double* %38, i64 4, !dbg !357
  %39 = load double, double* %arrayidx30, align 8, !dbg !357
  %mul31 = fmul double %37, %39, !dbg !358
  %add32 = fadd double %36, %mul31, !dbg !359
  %mul33 = fmul double %34, %add32, !dbg !360
  %add34 = fadd double %33, %mul33, !dbg !361
  %mul35 = fmul double %31, %add34, !dbg !362
  %add36 = fadd double %30, %mul35, !dbg !363
  %mul37 = fmul double %28, %add36, !dbg !364
  %add38 = fadd double %27, %mul37, !dbg !365
  %mul39 = fmul double %25, %add38, !dbg !366
  %add40 = fadd double 1.000000e+00, %mul39, !dbg !367
  store double %add40, double* %s, align 8, !dbg !368
  %40 = load double, double* %r, align 8, !dbg !369
  %41 = load double, double* %s, align 8, !dbg !370
  %div41 = fdiv double %40, %41, !dbg !371
  %add42 = fadd double 1.000000e+00, %div41, !dbg !372
  ret double %add42, !dbg !373
}

; Function Attrs: noinline nounwind optnone uwtable
define internal double @qone(double %x) #0 !dbg !374 {
entry:
  %x.addr = alloca double, align 8
  %p = alloca double*, align 8
  %q = alloca double*, align 8
  %s = alloca double, align 8
  %r = alloca double, align 8
  %z = alloca double, align 8
  %ix = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !375, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata double** %p, metadata !377, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.declare(metadata double** %q, metadata !379, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.declare(metadata double* %s, metadata !381, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.declare(metadata double* %r, metadata !383, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.declare(metadata double* %z, metadata !385, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !387, metadata !DIExpression()), !dbg !388
  %0 = bitcast double* %x.addr to i32*, !dbg !389
  %1 = load i32, i32* %0, align 8, !dbg !389
  %and = and i32 2147483647, %1, !dbg !390
  store i32 %and, i32* %ix, align 4, !dbg !391
  %2 = load i32, i32* %ix, align 4, !dbg !392
  %cmp = icmp sge i32 %2, 1075838976, !dbg !394
  br i1 %cmp, label %if.then, label %if.else, !dbg !395

if.then:                                          ; preds = %entry
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qr8, i64 0, i64 0), double** %p, align 8, !dbg !396
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qs8, i64 0, i64 0), double** %q, align 8, !dbg !398
  br label %if.end11, !dbg !399

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %ix, align 4, !dbg !400
  %cmp1 = icmp sge i32 %3, 1074933387, !dbg !402
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !403

if.then2:                                         ; preds = %if.else
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qr5, i64 0, i64 0), double** %p, align 8, !dbg !404
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qs5, i64 0, i64 0), double** %q, align 8, !dbg !406
  br label %if.end10, !dbg !407

if.else3:                                         ; preds = %if.else
  %4 = load i32, i32* %ix, align 4, !dbg !408
  %cmp4 = icmp sge i32 %4, 1074191213, !dbg !410
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !411

if.then5:                                         ; preds = %if.else3
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qr3, i64 0, i64 0), double** %p, align 8, !dbg !412
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qs3, i64 0, i64 0), double** %q, align 8, !dbg !414
  br label %if.end9, !dbg !415

if.else6:                                         ; preds = %if.else3
  %5 = load i32, i32* %ix, align 4, !dbg !416
  %cmp7 = icmp sge i32 %5, 1073741824, !dbg !418
  br i1 %cmp7, label %if.then8, label %if.end, !dbg !419

if.then8:                                         ; preds = %if.else6
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qr2, i64 0, i64 0), double** %p, align 8, !dbg !420
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qs2, i64 0, i64 0), double** %q, align 8, !dbg !422
  br label %if.end, !dbg !423

if.end:                                           ; preds = %if.then8, %if.else6
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then5
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then2
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then
  %6 = load double, double* %x.addr, align 8, !dbg !424
  %7 = load double, double* %x.addr, align 8, !dbg !425
  %mul = fmul double %6, %7, !dbg !426
  %div = fdiv double 1.000000e+00, %mul, !dbg !427
  store double %div, double* %z, align 8, !dbg !428
  %8 = load double*, double** %p, align 8, !dbg !429
  %arrayidx = getelementptr inbounds double, double* %8, i64 0, !dbg !429
  %9 = load double, double* %arrayidx, align 8, !dbg !429
  %10 = load double, double* %z, align 8, !dbg !430
  %11 = load double*, double** %p, align 8, !dbg !431
  %arrayidx12 = getelementptr inbounds double, double* %11, i64 1, !dbg !431
  %12 = load double, double* %arrayidx12, align 8, !dbg !431
  %13 = load double, double* %z, align 8, !dbg !432
  %14 = load double*, double** %p, align 8, !dbg !433
  %arrayidx13 = getelementptr inbounds double, double* %14, i64 2, !dbg !433
  %15 = load double, double* %arrayidx13, align 8, !dbg !433
  %16 = load double, double* %z, align 8, !dbg !434
  %17 = load double*, double** %p, align 8, !dbg !435
  %arrayidx14 = getelementptr inbounds double, double* %17, i64 3, !dbg !435
  %18 = load double, double* %arrayidx14, align 8, !dbg !435
  %19 = load double, double* %z, align 8, !dbg !436
  %20 = load double*, double** %p, align 8, !dbg !437
  %arrayidx15 = getelementptr inbounds double, double* %20, i64 4, !dbg !437
  %21 = load double, double* %arrayidx15, align 8, !dbg !437
  %22 = load double, double* %z, align 8, !dbg !438
  %23 = load double*, double** %p, align 8, !dbg !439
  %arrayidx16 = getelementptr inbounds double, double* %23, i64 5, !dbg !439
  %24 = load double, double* %arrayidx16, align 8, !dbg !439
  %mul17 = fmul double %22, %24, !dbg !440
  %add = fadd double %21, %mul17, !dbg !441
  %mul18 = fmul double %19, %add, !dbg !442
  %add19 = fadd double %18, %mul18, !dbg !443
  %mul20 = fmul double %16, %add19, !dbg !444
  %add21 = fadd double %15, %mul20, !dbg !445
  %mul22 = fmul double %13, %add21, !dbg !446
  %add23 = fadd double %12, %mul22, !dbg !447
  %mul24 = fmul double %10, %add23, !dbg !448
  %add25 = fadd double %9, %mul24, !dbg !449
  store double %add25, double* %r, align 8, !dbg !450
  %25 = load double, double* %z, align 8, !dbg !451
  %26 = load double*, double** %q, align 8, !dbg !452
  %arrayidx26 = getelementptr inbounds double, double* %26, i64 0, !dbg !452
  %27 = load double, double* %arrayidx26, align 8, !dbg !452
  %28 = load double, double* %z, align 8, !dbg !453
  %29 = load double*, double** %q, align 8, !dbg !454
  %arrayidx27 = getelementptr inbounds double, double* %29, i64 1, !dbg !454
  %30 = load double, double* %arrayidx27, align 8, !dbg !454
  %31 = load double, double* %z, align 8, !dbg !455
  %32 = load double*, double** %q, align 8, !dbg !456
  %arrayidx28 = getelementptr inbounds double, double* %32, i64 2, !dbg !456
  %33 = load double, double* %arrayidx28, align 8, !dbg !456
  %34 = load double, double* %z, align 8, !dbg !457
  %35 = load double*, double** %q, align 8, !dbg !458
  %arrayidx29 = getelementptr inbounds double, double* %35, i64 3, !dbg !458
  %36 = load double, double* %arrayidx29, align 8, !dbg !458
  %37 = load double, double* %z, align 8, !dbg !459
  %38 = load double*, double** %q, align 8, !dbg !460
  %arrayidx30 = getelementptr inbounds double, double* %38, i64 4, !dbg !460
  %39 = load double, double* %arrayidx30, align 8, !dbg !460
  %40 = load double, double* %z, align 8, !dbg !461
  %41 = load double*, double** %q, align 8, !dbg !462
  %arrayidx31 = getelementptr inbounds double, double* %41, i64 5, !dbg !462
  %42 = load double, double* %arrayidx31, align 8, !dbg !462
  %mul32 = fmul double %40, %42, !dbg !463
  %add33 = fadd double %39, %mul32, !dbg !464
  %mul34 = fmul double %37, %add33, !dbg !465
  %add35 = fadd double %36, %mul34, !dbg !466
  %mul36 = fmul double %34, %add35, !dbg !467
  %add37 = fadd double %33, %mul36, !dbg !468
  %mul38 = fmul double %31, %add37, !dbg !469
  %add39 = fadd double %30, %mul38, !dbg !470
  %mul40 = fmul double %28, %add39, !dbg !471
  %add41 = fadd double %27, %mul40, !dbg !472
  %mul42 = fmul double %25, %add41, !dbg !473
  %add43 = fadd double 1.000000e+00, %mul42, !dbg !474
  store double %add43, double* %s, align 8, !dbg !475
  %43 = load double, double* %r, align 8, !dbg !476
  %44 = load double, double* %s, align 8, !dbg !477
  %div44 = fdiv double %43, %44, !dbg !478
  %add45 = fadd double 3.750000e-01, %div44, !dbg !479
  %45 = load double, double* %x.addr, align 8, !dbg !480
  %div46 = fdiv double %add45, %45, !dbg !481
  ret double %div46, !dbg !482
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_y1(double %x) #0 !dbg !483 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %z = alloca double, align 8
  %s = alloca double, align 8
  %c = alloca double, align 8
  %ss = alloca double, align 8
  %cc = alloca double, align 8
  %u = alloca double, align 8
  %v = alloca double, align 8
  %hx = alloca i32, align 4
  %ix = alloca i32, align 4
  %lx = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !484, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.declare(metadata double* %z, metadata !486, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.declare(metadata double* %s, metadata !488, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.declare(metadata double* %c, metadata !490, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.declare(metadata double* %ss, metadata !492, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.declare(metadata double* %cc, metadata !494, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.declare(metadata double* %u, metadata !496, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.declare(metadata double* %v, metadata !498, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !500, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !502, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.declare(metadata i32* %lx, metadata !504, metadata !DIExpression()), !dbg !505
  %0 = bitcast double* %x.addr to i32*, !dbg !506
  %1 = load i32, i32* %0, align 8, !dbg !506
  store i32 %1, i32* %hx, align 4, !dbg !507
  %2 = load i32, i32* %hx, align 4, !dbg !508
  %and = and i32 2147483647, %2, !dbg !509
  store i32 %and, i32* %ix, align 4, !dbg !510
  %3 = bitcast double* %x.addr to i32*, !dbg !511
  %add.ptr = getelementptr inbounds i32, i32* %3, i64 1, !dbg !511
  %4 = load i32, i32* %add.ptr, align 4, !dbg !511
  store i32 %4, i32* %lx, align 4, !dbg !512
  %5 = load i32, i32* %ix, align 4, !dbg !513
  %cmp = icmp sge i32 %5, 2146435072, !dbg !515
  br i1 %cmp, label %if.then, label %if.end, !dbg !516

if.then:                                          ; preds = %entry
  %6 = load double, double* %x.addr, align 8, !dbg !517
  %7 = load double, double* %x.addr, align 8, !dbg !518
  %8 = load double, double* %x.addr, align 8, !dbg !519
  %mul = fmul double %7, %8, !dbg !520
  %add = fadd double %6, %mul, !dbg !521
  %div = fdiv double 1.000000e+00, %add, !dbg !522
  store double %div, double* %retval, align 8, !dbg !523
  br label %return, !dbg !523

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %ix, align 4, !dbg !524
  %10 = load i32, i32* %lx, align 4, !dbg !526
  %or = or i32 %9, %10, !dbg !527
  %cmp1 = icmp eq i32 %or, 0, !dbg !528
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !529

if.then2:                                         ; preds = %if.end
  %11 = load double, double* @zero, align 8, !dbg !530
  %div3 = fdiv double -1.000000e+00, %11, !dbg !531
  store double %div3, double* %retval, align 8, !dbg !532
  br label %return, !dbg !532

if.end4:                                          ; preds = %if.end
  %12 = load i32, i32* %hx, align 4, !dbg !533
  %cmp5 = icmp slt i32 %12, 0, !dbg !535
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !536

if.then6:                                         ; preds = %if.end4
  %13 = load double, double* @zero, align 8, !dbg !537
  %14 = load double, double* @zero, align 8, !dbg !538
  %div7 = fdiv double %13, %14, !dbg !539
  store double %div7, double* %retval, align 8, !dbg !540
  br label %return, !dbg !540

if.end8:                                          ; preds = %if.end4
  %15 = load i32, i32* %ix, align 4, !dbg !541
  %cmp9 = icmp sge i32 %15, 1073741824, !dbg !543
  br i1 %cmp9, label %if.then10, label %if.end39, !dbg !544

if.then10:                                        ; preds = %if.end8
  %16 = load double, double* %x.addr, align 8, !dbg !545
  %call = call double @sin(double %16) #4, !dbg !547
  store double %call, double* %s, align 8, !dbg !548
  %17 = load double, double* %x.addr, align 8, !dbg !549
  %call11 = call double @cos(double %17) #4, !dbg !550
  store double %call11, double* %c, align 8, !dbg !551
  %18 = load double, double* %s, align 8, !dbg !552
  %fneg = fneg double %18, !dbg !553
  %19 = load double, double* %c, align 8, !dbg !554
  %sub = fsub double %fneg, %19, !dbg !555
  store double %sub, double* %ss, align 8, !dbg !556
  %20 = load double, double* %s, align 8, !dbg !557
  %21 = load double, double* %c, align 8, !dbg !558
  %sub12 = fsub double %20, %21, !dbg !559
  store double %sub12, double* %cc, align 8, !dbg !560
  %22 = load i32, i32* %ix, align 4, !dbg !561
  %cmp13 = icmp slt i32 %22, 2145386496, !dbg !563
  br i1 %cmp13, label %if.then14, label %if.end23, !dbg !564

if.then14:                                        ; preds = %if.then10
  %23 = load double, double* %x.addr, align 8, !dbg !565
  %24 = load double, double* %x.addr, align 8, !dbg !567
  %add15 = fadd double %23, %24, !dbg !568
  %call16 = call double @cos(double %add15) #4, !dbg !569
  store double %call16, double* %z, align 8, !dbg !570
  %25 = load double, double* %s, align 8, !dbg !571
  %26 = load double, double* %c, align 8, !dbg !573
  %mul17 = fmul double %25, %26, !dbg !574
  %27 = load double, double* @zero, align 8, !dbg !575
  %cmp18 = fcmp ogt double %mul17, %27, !dbg !576
  br i1 %cmp18, label %if.then19, label %if.else, !dbg !577

if.then19:                                        ; preds = %if.then14
  %28 = load double, double* %z, align 8, !dbg !578
  %29 = load double, double* %ss, align 8, !dbg !579
  %div20 = fdiv double %28, %29, !dbg !580
  store double %div20, double* %cc, align 8, !dbg !581
  br label %if.end22, !dbg !582

if.else:                                          ; preds = %if.then14
  %30 = load double, double* %z, align 8, !dbg !583
  %31 = load double, double* %cc, align 8, !dbg !584
  %div21 = fdiv double %30, %31, !dbg !585
  store double %div21, double* %ss, align 8, !dbg !586
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then19
  br label %if.end23, !dbg !587

if.end23:                                         ; preds = %if.end22, %if.then10
  %32 = load i32, i32* %ix, align 4, !dbg !588
  %cmp24 = icmp sgt i32 %32, 1207959552, !dbg !590
  br i1 %cmp24, label %if.then25, label %if.else29, !dbg !591

if.then25:                                        ; preds = %if.end23
  %33 = load double, double* %ss, align 8, !dbg !592
  %mul26 = fmul double 0x3FE20DD750429B6D, %33, !dbg !593
  %34 = load double, double* %x.addr, align 8, !dbg !594
  %call27 = call double @sqrt(double %34) #4, !dbg !595
  %div28 = fdiv double %mul26, %call27, !dbg !596
  store double %div28, double* %z, align 8, !dbg !597
  br label %if.end38, !dbg !598

if.else29:                                        ; preds = %if.end23
  %35 = load double, double* %x.addr, align 8, !dbg !599
  %call30 = call double @pone(double %35), !dbg !601
  store double %call30, double* %u, align 8, !dbg !602
  %36 = load double, double* %x.addr, align 8, !dbg !603
  %call31 = call double @qone(double %36), !dbg !604
  store double %call31, double* %v, align 8, !dbg !605
  %37 = load double, double* %u, align 8, !dbg !606
  %38 = load double, double* %ss, align 8, !dbg !607
  %mul32 = fmul double %37, %38, !dbg !608
  %39 = load double, double* %v, align 8, !dbg !609
  %40 = load double, double* %cc, align 8, !dbg !610
  %mul33 = fmul double %39, %40, !dbg !611
  %add34 = fadd double %mul32, %mul33, !dbg !612
  %mul35 = fmul double 0x3FE20DD750429B6D, %add34, !dbg !613
  %41 = load double, double* %x.addr, align 8, !dbg !614
  %call36 = call double @sqrt(double %41) #4, !dbg !615
  %div37 = fdiv double %mul35, %call36, !dbg !616
  store double %div37, double* %z, align 8, !dbg !617
  br label %if.end38

if.end38:                                         ; preds = %if.else29, %if.then25
  %42 = load double, double* %z, align 8, !dbg !618
  store double %42, double* %retval, align 8, !dbg !619
  br label %return, !dbg !619

if.end39:                                         ; preds = %if.end8
  %43 = load i32, i32* %ix, align 4, !dbg !620
  %cmp40 = icmp sle i32 %43, 1016070144, !dbg !622
  br i1 %cmp40, label %if.then41, label %if.end43, !dbg !623

if.then41:                                        ; preds = %if.end39
  %44 = load double, double* %x.addr, align 8, !dbg !624
  %div42 = fdiv double 0xBFE45F306DC9C883, %44, !dbg !626
  store double %div42, double* %retval, align 8, !dbg !627
  br label %return, !dbg !627

if.end43:                                         ; preds = %if.end39
  %45 = load double, double* %x.addr, align 8, !dbg !628
  %46 = load double, double* %x.addr, align 8, !dbg !629
  %mul44 = fmul double %45, %46, !dbg !630
  store double %mul44, double* %z, align 8, !dbg !631
  %47 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @U0, i64 0, i64 0), align 16, !dbg !632
  %48 = load double, double* %z, align 8, !dbg !633
  %49 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @U0, i64 0, i64 1), align 8, !dbg !634
  %50 = load double, double* %z, align 8, !dbg !635
  %51 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @U0, i64 0, i64 2), align 16, !dbg !636
  %52 = load double, double* %z, align 8, !dbg !637
  %53 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @U0, i64 0, i64 3), align 8, !dbg !638
  %54 = load double, double* %z, align 8, !dbg !639
  %55 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @U0, i64 0, i64 4), align 16, !dbg !640
  %mul45 = fmul double %54, %55, !dbg !641
  %add46 = fadd double %53, %mul45, !dbg !642
  %mul47 = fmul double %52, %add46, !dbg !643
  %add48 = fadd double %51, %mul47, !dbg !644
  %mul49 = fmul double %50, %add48, !dbg !645
  %add50 = fadd double %49, %mul49, !dbg !646
  %mul51 = fmul double %48, %add50, !dbg !647
  %add52 = fadd double %47, %mul51, !dbg !648
  store double %add52, double* %u, align 8, !dbg !649
  %56 = load double, double* %z, align 8, !dbg !650
  %57 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @V0, i64 0, i64 0), align 16, !dbg !651
  %58 = load double, double* %z, align 8, !dbg !652
  %59 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @V0, i64 0, i64 1), align 8, !dbg !653
  %60 = load double, double* %z, align 8, !dbg !654
  %61 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @V0, i64 0, i64 2), align 16, !dbg !655
  %62 = load double, double* %z, align 8, !dbg !656
  %63 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @V0, i64 0, i64 3), align 8, !dbg !657
  %64 = load double, double* %z, align 8, !dbg !658
  %65 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @V0, i64 0, i64 4), align 16, !dbg !659
  %mul53 = fmul double %64, %65, !dbg !660
  %add54 = fadd double %63, %mul53, !dbg !661
  %mul55 = fmul double %62, %add54, !dbg !662
  %add56 = fadd double %61, %mul55, !dbg !663
  %mul57 = fmul double %60, %add56, !dbg !664
  %add58 = fadd double %59, %mul57, !dbg !665
  %mul59 = fmul double %58, %add58, !dbg !666
  %add60 = fadd double %57, %mul59, !dbg !667
  %mul61 = fmul double %56, %add60, !dbg !668
  %add62 = fadd double 1.000000e+00, %mul61, !dbg !669
  store double %add62, double* %v, align 8, !dbg !670
  %66 = load double, double* %x.addr, align 8, !dbg !671
  %67 = load double, double* %u, align 8, !dbg !672
  %68 = load double, double* %v, align 8, !dbg !673
  %div63 = fdiv double %67, %68, !dbg !674
  %mul64 = fmul double %66, %div63, !dbg !675
  %69 = load double, double* %x.addr, align 8, !dbg !676
  %call65 = call double @__ieee754_j1(double %69), !dbg !677
  %70 = load double, double* %x.addr, align 8, !dbg !678
  %call66 = call double @__ieee754_log(double %70), !dbg !679
  %mul67 = fmul double %call65, %call66, !dbg !680
  %71 = load double, double* %x.addr, align 8, !dbg !681
  %div68 = fdiv double 1.000000e+00, %71, !dbg !682
  %sub69 = fsub double %mul67, %div68, !dbg !683
  %mul70 = fmul double 0x3FE45F306DC9C883, %sub69, !dbg !684
  %add71 = fadd double %mul64, %mul70, !dbg !685
  store double %add71, double* %retval, align 8, !dbg !686
  br label %return, !dbg !686

return:                                           ; preds = %if.end43, %if.then41, %if.end38, %if.then6, %if.then2, %if.then
  %72 = load double, double* %retval, align 8, !dbg !687
  ret double %72, !dbg !687
}

declare dso_local double @__ieee754_log(double) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !688 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !691, metadata !DIExpression()), !dbg !692
  %0 = bitcast double* %a0 to i8*, !dbg !693
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !694
  call void @llvm.dbg.declare(metadata double* %r, metadata !695, metadata !DIExpression()), !dbg !696
  %1 = load double, double* %a0, align 8, !dbg !697
  %call = call double @__ieee754_j1(double %1), !dbg !698
  store double %call, double* %r, align 8, !dbg !696
  ret i32 0, !dbg !699
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "zero", scope: !2, file: !11, line: 87, type: !13, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "e_j1.c", directory: "/home/klee/logic_bombs/fdlibm")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !0, !38, !43, !45, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!10 = distinct !DIGlobalVariable(name: "one", scope: !2, file: !11, line: 73, type: !12, isLocal: true, isDefinition: true)
!11 = !DIFile(filename: "./e_j1.c", directory: "/home/klee/logic_bombs/fdlibm")
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4603256987541740397, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "invsqrtpi", scope: !2, file: !11, line: 74, type: !12, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "huge", scope: !2, file: !11, line: 72, type: !12, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 13812540057145311232, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "r00", scope: !2, file: !11, line: 77, type: !12, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 4564131726469049441, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "r01", scope: !2, file: !11, line: 78, type: !12, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 13758714318933104232, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "r02", scope: !2, file: !11, line: 79, type: !12, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression(DW_OP_constu, 4497595169789053913, DW_OP_stack_value))
!25 = distinct !DIGlobalVariable(name: "r03", scope: !2, file: !11, line: 80, type: !12, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression(DW_OP_constu, 4581177916844637779, DW_OP_stack_value))
!27 = distinct !DIGlobalVariable(name: "s01", scope: !2, file: !11, line: 81, type: !12, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression(DW_OP_constu, 4550992249546995300, DW_OP_stack_value))
!29 = distinct !DIGlobalVariable(name: "s02", scope: !2, file: !11, line: 82, type: !12, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression(DW_OP_constu, 4518165923915334808, DW_OP_stack_value))
!31 = distinct !DIGlobalVariable(name: "s03", scope: !2, file: !11, line: 83, type: !12, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression(DW_OP_constu, 4482678707613204268, DW_OP_stack_value))
!33 = distinct !DIGlobalVariable(name: "s04", scope: !2, file: !11, line: 84, type: !12, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression(DW_OP_constu, 4443692529362763480, DW_OP_stack_value))
!35 = distinct !DIGlobalVariable(name: "s05", scope: !2, file: !11, line: 85, type: !12, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression(DW_OP_constu, 4603909380684499075, DW_OP_stack_value))
!37 = distinct !DIGlobalVariable(name: "tpi", scope: !2, file: !11, line: 75, type: !12, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "U0", scope: !2, file: !11, line: 136, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 320, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 5)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "V0", scope: !2, file: !11, line: 147, type: !40, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "pr8", scope: !2, file: !11, line: 223, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 384, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 6)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "ps8", scope: !2, file: !11, line: 235, type: !40, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "pr5", scope: !2, file: !11, line: 247, type: !47, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "ps5", scope: !2, file: !11, line: 259, type: !40, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "pr3", scope: !2, file: !11, line: 271, type: !47, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "ps3", scope: !2, file: !11, line: 283, type: !40, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "pr2", scope: !2, file: !11, line: 295, type: !47, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "ps2", scope: !2, file: !11, line: 307, type: !40, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "qr8", scope: !2, file: !11, line: 355, type: !47, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "qs8", scope: !2, file: !11, line: 367, type: !47, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "qr5", scope: !2, file: !11, line: 380, type: !47, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "qs5", scope: !2, file: !11, line: 392, type: !47, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "qr3", scope: !2, file: !11, line: 405, type: !47, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "qs3", scope: !2, file: !11, line: 417, type: !47, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "qr2", scope: !2, file: !11, line: 430, type: !47, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "qs2", scope: !2, file: !11, line: 442, type: !47, isLocal: true, isDefinition: true)
!80 = !{i32 7, !"Dwarf Version", i32 4}
!81 = !{i32 2, !"Debug Info Version", i32 3}
!82 = !{i32 1, !"wchar_size", i32 4}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!86 = distinct !DISubprogram(name: "__ieee754_j1", scope: !11, file: !11, line: 90, type: !87, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!87 = !DISubroutineType(types: !88)
!88 = !{!13, !13}
!89 = !DILocalVariable(name: "x", arg: 1, scope: !86, file: !11, line: 90, type: !13)
!90 = !DILocation(line: 90, column: 29, scope: !86)
!91 = !DILocalVariable(name: "z", scope: !86, file: !11, line: 96, type: !13)
!92 = !DILocation(line: 96, column: 9, scope: !86)
!93 = !DILocalVariable(name: "s", scope: !86, file: !11, line: 96, type: !13)
!94 = !DILocation(line: 96, column: 12, scope: !86)
!95 = !DILocalVariable(name: "c", scope: !86, file: !11, line: 96, type: !13)
!96 = !DILocation(line: 96, column: 14, scope: !86)
!97 = !DILocalVariable(name: "ss", scope: !86, file: !11, line: 96, type: !13)
!98 = !DILocation(line: 96, column: 16, scope: !86)
!99 = !DILocalVariable(name: "cc", scope: !86, file: !11, line: 96, type: !13)
!100 = !DILocation(line: 96, column: 19, scope: !86)
!101 = !DILocalVariable(name: "r", scope: !86, file: !11, line: 96, type: !13)
!102 = !DILocation(line: 96, column: 22, scope: !86)
!103 = !DILocalVariable(name: "u", scope: !86, file: !11, line: 96, type: !13)
!104 = !DILocation(line: 96, column: 24, scope: !86)
!105 = !DILocalVariable(name: "v", scope: !86, file: !11, line: 96, type: !13)
!106 = !DILocation(line: 96, column: 26, scope: !86)
!107 = !DILocalVariable(name: "y", scope: !86, file: !11, line: 96, type: !13)
!108 = !DILocation(line: 96, column: 28, scope: !86)
!109 = !DILocalVariable(name: "hx", scope: !86, file: !11, line: 97, type: !7)
!110 = !DILocation(line: 97, column: 6, scope: !86)
!111 = !DILocalVariable(name: "ix", scope: !86, file: !11, line: 97, type: !7)
!112 = !DILocation(line: 97, column: 9, scope: !86)
!113 = !DILocation(line: 99, column: 7, scope: !86)
!114 = !DILocation(line: 99, column: 5, scope: !86)
!115 = !DILocation(line: 100, column: 7, scope: !86)
!116 = !DILocation(line: 100, column: 9, scope: !86)
!117 = !DILocation(line: 100, column: 5, scope: !86)
!118 = !DILocation(line: 101, column: 5, scope: !119)
!119 = distinct !DILexicalBlock(scope: !86, file: !11, line: 101, column: 5)
!120 = !DILocation(line: 101, column: 7, scope: !119)
!121 = !DILocation(line: 101, column: 5, scope: !86)
!122 = !DILocation(line: 101, column: 32, scope: !119)
!123 = !DILocation(line: 101, column: 31, scope: !119)
!124 = !DILocation(line: 101, column: 21, scope: !119)
!125 = !DILocation(line: 102, column: 11, scope: !86)
!126 = !DILocation(line: 102, column: 6, scope: !86)
!127 = !DILocation(line: 102, column: 4, scope: !86)
!128 = !DILocation(line: 103, column: 5, scope: !129)
!129 = distinct !DILexicalBlock(scope: !86, file: !11, line: 103, column: 5)
!130 = !DILocation(line: 103, column: 8, scope: !129)
!131 = !DILocation(line: 103, column: 5, scope: !86)
!132 = !DILocation(line: 104, column: 11, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !11, line: 103, column: 23)
!134 = !DILocation(line: 104, column: 7, scope: !133)
!135 = !DILocation(line: 104, column: 5, scope: !133)
!136 = !DILocation(line: 105, column: 11, scope: !133)
!137 = !DILocation(line: 105, column: 7, scope: !133)
!138 = !DILocation(line: 105, column: 5, scope: !133)
!139 = !DILocation(line: 106, column: 9, scope: !133)
!140 = !DILocation(line: 106, column: 8, scope: !133)
!141 = !DILocation(line: 106, column: 11, scope: !133)
!142 = !DILocation(line: 106, column: 10, scope: !133)
!143 = !DILocation(line: 106, column: 6, scope: !133)
!144 = !DILocation(line: 107, column: 8, scope: !133)
!145 = !DILocation(line: 107, column: 10, scope: !133)
!146 = !DILocation(line: 107, column: 9, scope: !133)
!147 = !DILocation(line: 107, column: 6, scope: !133)
!148 = !DILocation(line: 108, column: 6, scope: !149)
!149 = distinct !DILexicalBlock(scope: !133, file: !11, line: 108, column: 6)
!150 = !DILocation(line: 108, column: 8, scope: !149)
!151 = !DILocation(line: 108, column: 6, scope: !133)
!152 = !DILocation(line: 109, column: 15, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !11, line: 108, column: 21)
!154 = !DILocation(line: 109, column: 17, scope: !153)
!155 = !DILocation(line: 109, column: 16, scope: !153)
!156 = !DILocation(line: 109, column: 11, scope: !153)
!157 = !DILocation(line: 109, column: 9, scope: !153)
!158 = !DILocation(line: 110, column: 12, scope: !159)
!159 = distinct !DILexicalBlock(scope: !153, file: !11, line: 110, column: 11)
!160 = !DILocation(line: 110, column: 14, scope: !159)
!161 = !DILocation(line: 110, column: 13, scope: !159)
!162 = !DILocation(line: 110, column: 17, scope: !159)
!163 = !DILocation(line: 110, column: 16, scope: !159)
!164 = !DILocation(line: 110, column: 11, scope: !153)
!165 = !DILocation(line: 110, column: 28, scope: !159)
!166 = !DILocation(line: 110, column: 30, scope: !159)
!167 = !DILocation(line: 110, column: 29, scope: !159)
!168 = !DILocation(line: 110, column: 26, scope: !159)
!169 = !DILocation(line: 110, column: 23, scope: !159)
!170 = !DILocation(line: 111, column: 22, scope: !159)
!171 = !DILocation(line: 111, column: 24, scope: !159)
!172 = !DILocation(line: 111, column: 23, scope: !159)
!173 = !DILocation(line: 111, column: 20, scope: !159)
!174 = !DILocation(line: 112, column: 3, scope: !153)
!175 = !DILocation(line: 117, column: 6, scope: !176)
!176 = distinct !DILexicalBlock(scope: !133, file: !11, line: 117, column: 6)
!177 = !DILocation(line: 117, column: 8, scope: !176)
!178 = !DILocation(line: 117, column: 6, scope: !133)
!179 = !DILocation(line: 117, column: 36, scope: !176)
!180 = !DILocation(line: 117, column: 35, scope: !176)
!181 = !DILocation(line: 117, column: 45, scope: !176)
!182 = !DILocation(line: 117, column: 40, scope: !176)
!183 = !DILocation(line: 117, column: 39, scope: !176)
!184 = !DILocation(line: 117, column: 23, scope: !176)
!185 = !DILocation(line: 117, column: 21, scope: !176)
!186 = !DILocation(line: 119, column: 16, scope: !187)
!187 = distinct !DILexicalBlock(scope: !176, file: !11, line: 118, column: 8)
!188 = !DILocation(line: 119, column: 11, scope: !187)
!189 = !DILocation(line: 119, column: 9, scope: !187)
!190 = !DILocation(line: 119, column: 29, scope: !187)
!191 = !DILocation(line: 119, column: 24, scope: !187)
!192 = !DILocation(line: 119, column: 22, scope: !187)
!193 = !DILocation(line: 120, column: 22, scope: !187)
!194 = !DILocation(line: 120, column: 24, scope: !187)
!195 = !DILocation(line: 120, column: 23, scope: !187)
!196 = !DILocation(line: 120, column: 27, scope: !187)
!197 = !DILocation(line: 120, column: 29, scope: !187)
!198 = !DILocation(line: 120, column: 28, scope: !187)
!199 = !DILocation(line: 120, column: 26, scope: !187)
!200 = !DILocation(line: 120, column: 20, scope: !187)
!201 = !DILocation(line: 120, column: 38, scope: !187)
!202 = !DILocation(line: 120, column: 33, scope: !187)
!203 = !DILocation(line: 120, column: 32, scope: !187)
!204 = !DILocation(line: 120, column: 9, scope: !187)
!205 = !DILocation(line: 122, column: 6, scope: !206)
!206 = distinct !DILexicalBlock(scope: !133, file: !11, line: 122, column: 6)
!207 = !DILocation(line: 122, column: 8, scope: !206)
!208 = !DILocation(line: 122, column: 6, scope: !133)
!209 = !DILocation(line: 122, column: 20, scope: !206)
!210 = !DILocation(line: 122, column: 19, scope: !206)
!211 = !DILocation(line: 122, column: 12, scope: !206)
!212 = !DILocation(line: 123, column: 19, scope: !206)
!213 = !DILocation(line: 123, column: 11, scope: !206)
!214 = !DILocation(line: 125, column: 5, scope: !215)
!215 = distinct !DILexicalBlock(scope: !86, file: !11, line: 125, column: 5)
!216 = !DILocation(line: 125, column: 7, scope: !215)
!217 = !DILocation(line: 125, column: 5, scope: !86)
!218 = !DILocation(line: 126, column: 14, scope: !219)
!219 = distinct !DILexicalBlock(scope: !220, file: !11, line: 126, column: 9)
!220 = distinct !DILexicalBlock(scope: !215, file: !11, line: 125, column: 20)
!221 = !DILocation(line: 126, column: 13, scope: !219)
!222 = !DILocation(line: 126, column: 15, scope: !219)
!223 = !DILocation(line: 126, column: 9, scope: !220)
!224 = !DILocation(line: 126, column: 32, scope: !219)
!225 = !DILocation(line: 126, column: 31, scope: !219)
!226 = !DILocation(line: 126, column: 21, scope: !219)
!227 = !DILocation(line: 127, column: 2, scope: !220)
!228 = !DILocation(line: 128, column: 6, scope: !86)
!229 = !DILocation(line: 128, column: 8, scope: !86)
!230 = !DILocation(line: 128, column: 7, scope: !86)
!231 = !DILocation(line: 128, column: 4, scope: !86)
!232 = !DILocation(line: 129, column: 7, scope: !86)
!233 = !DILocation(line: 129, column: 14, scope: !86)
!234 = !DILocation(line: 129, column: 21, scope: !86)
!235 = !DILocation(line: 129, column: 28, scope: !86)
!236 = !DILocation(line: 129, column: 29, scope: !86)
!237 = !DILocation(line: 129, column: 27, scope: !86)
!238 = !DILocation(line: 129, column: 22, scope: !86)
!239 = !DILocation(line: 129, column: 20, scope: !86)
!240 = !DILocation(line: 129, column: 15, scope: !86)
!241 = !DILocation(line: 129, column: 13, scope: !86)
!242 = !DILocation(line: 129, column: 8, scope: !86)
!243 = !DILocation(line: 129, column: 4, scope: !86)
!244 = !DILocation(line: 130, column: 11, scope: !86)
!245 = !DILocation(line: 130, column: 18, scope: !86)
!246 = !DILocation(line: 130, column: 25, scope: !86)
!247 = !DILocation(line: 130, column: 32, scope: !86)
!248 = !DILocation(line: 130, column: 39, scope: !86)
!249 = !DILocation(line: 130, column: 40, scope: !86)
!250 = !DILocation(line: 130, column: 38, scope: !86)
!251 = !DILocation(line: 130, column: 33, scope: !86)
!252 = !DILocation(line: 130, column: 31, scope: !86)
!253 = !DILocation(line: 130, column: 26, scope: !86)
!254 = !DILocation(line: 130, column: 24, scope: !86)
!255 = !DILocation(line: 130, column: 19, scope: !86)
!256 = !DILocation(line: 130, column: 17, scope: !86)
!257 = !DILocation(line: 130, column: 12, scope: !86)
!258 = !DILocation(line: 130, column: 10, scope: !86)
!259 = !DILocation(line: 130, column: 4, scope: !86)
!260 = !DILocation(line: 131, column: 7, scope: !86)
!261 = !DILocation(line: 131, column: 4, scope: !86)
!262 = !DILocation(line: 132, column: 9, scope: !86)
!263 = !DILocation(line: 132, column: 10, scope: !86)
!264 = !DILocation(line: 132, column: 15, scope: !86)
!265 = !DILocation(line: 132, column: 17, scope: !86)
!266 = !DILocation(line: 132, column: 16, scope: !86)
!267 = !DILocation(line: 132, column: 14, scope: !86)
!268 = !DILocation(line: 132, column: 2, scope: !86)
!269 = !DILocation(line: 133, column: 1, scope: !86)
!270 = distinct !DISubprogram(name: "pone", scope: !11, file: !11, line: 319, type: !87, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!271 = !DILocalVariable(name: "x", arg: 1, scope: !270, file: !11, line: 319, type: !13)
!272 = !DILocation(line: 319, column: 28, scope: !270)
!273 = !DILocalVariable(name: "p", scope: !270, file: !11, line: 326, type: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!275 = !DILocation(line: 326, column: 16, scope: !270)
!276 = !DILocalVariable(name: "q", scope: !270, file: !11, line: 326, type: !274)
!277 = !DILocation(line: 326, column: 19, scope: !270)
!278 = !DILocalVariable(name: "z", scope: !270, file: !11, line: 330, type: !13)
!279 = !DILocation(line: 330, column: 9, scope: !270)
!280 = !DILocalVariable(name: "r", scope: !270, file: !11, line: 330, type: !13)
!281 = !DILocation(line: 330, column: 11, scope: !270)
!282 = !DILocalVariable(name: "s", scope: !270, file: !11, line: 330, type: !13)
!283 = !DILocation(line: 330, column: 13, scope: !270)
!284 = !DILocalVariable(name: "ix", scope: !270, file: !11, line: 331, type: !7)
!285 = !DILocation(line: 331, column: 13, scope: !270)
!286 = !DILocation(line: 332, column: 25, scope: !270)
!287 = !DILocation(line: 332, column: 24, scope: !270)
!288 = !DILocation(line: 332, column: 12, scope: !270)
!289 = !DILocation(line: 333, column: 12, scope: !290)
!290 = distinct !DILexicalBlock(scope: !270, file: !11, line: 333, column: 12)
!291 = !DILocation(line: 333, column: 14, scope: !290)
!292 = !DILocation(line: 333, column: 12, scope: !270)
!293 = !DILocation(line: 333, column: 35, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !11, line: 333, column: 32)
!295 = !DILocation(line: 333, column: 43, scope: !294)
!296 = !DILocation(line: 333, column: 49, scope: !294)
!297 = !DILocation(line: 334, column: 17, scope: !298)
!298 = distinct !DILexicalBlock(scope: !290, file: !11, line: 334, column: 17)
!299 = !DILocation(line: 334, column: 19, scope: !298)
!300 = !DILocation(line: 334, column: 17, scope: !290)
!301 = !DILocation(line: 334, column: 35, scope: !302)
!302 = distinct !DILexicalBlock(scope: !298, file: !11, line: 334, column: 32)
!303 = !DILocation(line: 334, column: 43, scope: !302)
!304 = !DILocation(line: 334, column: 49, scope: !302)
!305 = !DILocation(line: 335, column: 17, scope: !306)
!306 = distinct !DILexicalBlock(scope: !298, file: !11, line: 335, column: 17)
!307 = !DILocation(line: 335, column: 19, scope: !306)
!308 = !DILocation(line: 335, column: 17, scope: !298)
!309 = !DILocation(line: 335, column: 35, scope: !310)
!310 = distinct !DILexicalBlock(scope: !306, file: !11, line: 335, column: 32)
!311 = !DILocation(line: 335, column: 43, scope: !310)
!312 = !DILocation(line: 335, column: 49, scope: !310)
!313 = !DILocation(line: 336, column: 17, scope: !314)
!314 = distinct !DILexicalBlock(scope: !306, file: !11, line: 336, column: 17)
!315 = !DILocation(line: 336, column: 19, scope: !314)
!316 = !DILocation(line: 336, column: 17, scope: !306)
!317 = !DILocation(line: 336, column: 35, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !11, line: 336, column: 32)
!319 = !DILocation(line: 336, column: 43, scope: !318)
!320 = !DILocation(line: 336, column: 49, scope: !318)
!321 = !DILocation(line: 337, column: 18, scope: !270)
!322 = !DILocation(line: 337, column: 20, scope: !270)
!323 = !DILocation(line: 337, column: 19, scope: !270)
!324 = !DILocation(line: 337, column: 16, scope: !270)
!325 = !DILocation(line: 337, column: 11, scope: !270)
!326 = !DILocation(line: 338, column: 13, scope: !270)
!327 = !DILocation(line: 338, column: 18, scope: !270)
!328 = !DILocation(line: 338, column: 21, scope: !270)
!329 = !DILocation(line: 338, column: 26, scope: !270)
!330 = !DILocation(line: 338, column: 29, scope: !270)
!331 = !DILocation(line: 338, column: 34, scope: !270)
!332 = !DILocation(line: 338, column: 37, scope: !270)
!333 = !DILocation(line: 338, column: 42, scope: !270)
!334 = !DILocation(line: 338, column: 45, scope: !270)
!335 = !DILocation(line: 338, column: 50, scope: !270)
!336 = !DILocation(line: 338, column: 52, scope: !270)
!337 = !DILocation(line: 338, column: 51, scope: !270)
!338 = !DILocation(line: 338, column: 49, scope: !270)
!339 = !DILocation(line: 338, column: 43, scope: !270)
!340 = !DILocation(line: 338, column: 41, scope: !270)
!341 = !DILocation(line: 338, column: 35, scope: !270)
!342 = !DILocation(line: 338, column: 33, scope: !270)
!343 = !DILocation(line: 338, column: 27, scope: !270)
!344 = !DILocation(line: 338, column: 25, scope: !270)
!345 = !DILocation(line: 338, column: 19, scope: !270)
!346 = !DILocation(line: 338, column: 17, scope: !270)
!347 = !DILocation(line: 338, column: 11, scope: !270)
!348 = !DILocation(line: 339, column: 17, scope: !270)
!349 = !DILocation(line: 339, column: 20, scope: !270)
!350 = !DILocation(line: 339, column: 25, scope: !270)
!351 = !DILocation(line: 339, column: 28, scope: !270)
!352 = !DILocation(line: 339, column: 33, scope: !270)
!353 = !DILocation(line: 339, column: 36, scope: !270)
!354 = !DILocation(line: 339, column: 41, scope: !270)
!355 = !DILocation(line: 339, column: 44, scope: !270)
!356 = !DILocation(line: 339, column: 49, scope: !270)
!357 = !DILocation(line: 339, column: 51, scope: !270)
!358 = !DILocation(line: 339, column: 50, scope: !270)
!359 = !DILocation(line: 339, column: 48, scope: !270)
!360 = !DILocation(line: 339, column: 42, scope: !270)
!361 = !DILocation(line: 339, column: 40, scope: !270)
!362 = !DILocation(line: 339, column: 34, scope: !270)
!363 = !DILocation(line: 339, column: 32, scope: !270)
!364 = !DILocation(line: 339, column: 26, scope: !270)
!365 = !DILocation(line: 339, column: 24, scope: !270)
!366 = !DILocation(line: 339, column: 18, scope: !270)
!367 = !DILocation(line: 339, column: 16, scope: !270)
!368 = !DILocation(line: 339, column: 11, scope: !270)
!369 = !DILocation(line: 340, column: 21, scope: !270)
!370 = !DILocation(line: 340, column: 23, scope: !270)
!371 = !DILocation(line: 340, column: 22, scope: !270)
!372 = !DILocation(line: 340, column: 19, scope: !270)
!373 = !DILocation(line: 340, column: 9, scope: !270)
!374 = distinct !DISubprogram(name: "qone", scope: !11, file: !11, line: 455, type: !87, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!375 = !DILocalVariable(name: "x", arg: 1, scope: !374, file: !11, line: 455, type: !13)
!376 = !DILocation(line: 455, column: 28, scope: !374)
!377 = !DILocalVariable(name: "p", scope: !374, file: !11, line: 462, type: !274)
!378 = !DILocation(line: 462, column: 16, scope: !374)
!379 = !DILocalVariable(name: "q", scope: !374, file: !11, line: 462, type: !274)
!380 = !DILocation(line: 462, column: 19, scope: !374)
!381 = !DILocalVariable(name: "s", scope: !374, file: !11, line: 466, type: !13)
!382 = !DILocation(line: 466, column: 10, scope: !374)
!383 = !DILocalVariable(name: "r", scope: !374, file: !11, line: 466, type: !13)
!384 = !DILocation(line: 466, column: 12, scope: !374)
!385 = !DILocalVariable(name: "z", scope: !374, file: !11, line: 466, type: !13)
!386 = !DILocation(line: 466, column: 14, scope: !374)
!387 = !DILocalVariable(name: "ix", scope: !374, file: !11, line: 467, type: !7)
!388 = !DILocation(line: 467, column: 6, scope: !374)
!389 = !DILocation(line: 468, column: 18, scope: !374)
!390 = !DILocation(line: 468, column: 17, scope: !374)
!391 = !DILocation(line: 468, column: 5, scope: !374)
!392 = !DILocation(line: 469, column: 5, scope: !393)
!393 = distinct !DILexicalBlock(scope: !374, file: !11, line: 469, column: 5)
!394 = !DILocation(line: 469, column: 7, scope: !393)
!395 = !DILocation(line: 469, column: 5, scope: !374)
!396 = !DILocation(line: 469, column: 28, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !11, line: 469, column: 25)
!398 = !DILocation(line: 469, column: 36, scope: !397)
!399 = !DILocation(line: 469, column: 42, scope: !397)
!400 = !DILocation(line: 470, column: 10, scope: !401)
!401 = distinct !DILexicalBlock(scope: !393, file: !11, line: 470, column: 10)
!402 = !DILocation(line: 470, column: 12, scope: !401)
!403 = !DILocation(line: 470, column: 10, scope: !393)
!404 = !DILocation(line: 470, column: 28, scope: !405)
!405 = distinct !DILexicalBlock(scope: !401, file: !11, line: 470, column: 25)
!406 = !DILocation(line: 470, column: 36, scope: !405)
!407 = !DILocation(line: 470, column: 42, scope: !405)
!408 = !DILocation(line: 471, column: 10, scope: !409)
!409 = distinct !DILexicalBlock(scope: !401, file: !11, line: 471, column: 10)
!410 = !DILocation(line: 471, column: 12, scope: !409)
!411 = !DILocation(line: 471, column: 10, scope: !401)
!412 = !DILocation(line: 471, column: 28, scope: !413)
!413 = distinct !DILexicalBlock(scope: !409, file: !11, line: 471, column: 25)
!414 = !DILocation(line: 471, column: 36, scope: !413)
!415 = !DILocation(line: 471, column: 42, scope: !413)
!416 = !DILocation(line: 472, column: 10, scope: !417)
!417 = distinct !DILexicalBlock(scope: !409, file: !11, line: 472, column: 10)
!418 = !DILocation(line: 472, column: 12, scope: !417)
!419 = !DILocation(line: 472, column: 10, scope: !409)
!420 = !DILocation(line: 472, column: 28, scope: !421)
!421 = distinct !DILexicalBlock(scope: !417, file: !11, line: 472, column: 25)
!422 = !DILocation(line: 472, column: 36, scope: !421)
!423 = !DILocation(line: 472, column: 42, scope: !421)
!424 = !DILocation(line: 473, column: 11, scope: !374)
!425 = !DILocation(line: 473, column: 13, scope: !374)
!426 = !DILocation(line: 473, column: 12, scope: !374)
!427 = !DILocation(line: 473, column: 9, scope: !374)
!428 = !DILocation(line: 473, column: 4, scope: !374)
!429 = !DILocation(line: 474, column: 6, scope: !374)
!430 = !DILocation(line: 474, column: 11, scope: !374)
!431 = !DILocation(line: 474, column: 14, scope: !374)
!432 = !DILocation(line: 474, column: 19, scope: !374)
!433 = !DILocation(line: 474, column: 22, scope: !374)
!434 = !DILocation(line: 474, column: 27, scope: !374)
!435 = !DILocation(line: 474, column: 30, scope: !374)
!436 = !DILocation(line: 474, column: 35, scope: !374)
!437 = !DILocation(line: 474, column: 38, scope: !374)
!438 = !DILocation(line: 474, column: 43, scope: !374)
!439 = !DILocation(line: 474, column: 45, scope: !374)
!440 = !DILocation(line: 474, column: 44, scope: !374)
!441 = !DILocation(line: 474, column: 42, scope: !374)
!442 = !DILocation(line: 474, column: 36, scope: !374)
!443 = !DILocation(line: 474, column: 34, scope: !374)
!444 = !DILocation(line: 474, column: 28, scope: !374)
!445 = !DILocation(line: 474, column: 26, scope: !374)
!446 = !DILocation(line: 474, column: 20, scope: !374)
!447 = !DILocation(line: 474, column: 18, scope: !374)
!448 = !DILocation(line: 474, column: 12, scope: !374)
!449 = !DILocation(line: 474, column: 10, scope: !374)
!450 = !DILocation(line: 474, column: 4, scope: !374)
!451 = !DILocation(line: 475, column: 10, scope: !374)
!452 = !DILocation(line: 475, column: 13, scope: !374)
!453 = !DILocation(line: 475, column: 18, scope: !374)
!454 = !DILocation(line: 475, column: 21, scope: !374)
!455 = !DILocation(line: 475, column: 26, scope: !374)
!456 = !DILocation(line: 475, column: 29, scope: !374)
!457 = !DILocation(line: 475, column: 34, scope: !374)
!458 = !DILocation(line: 475, column: 37, scope: !374)
!459 = !DILocation(line: 475, column: 42, scope: !374)
!460 = !DILocation(line: 475, column: 45, scope: !374)
!461 = !DILocation(line: 475, column: 50, scope: !374)
!462 = !DILocation(line: 475, column: 52, scope: !374)
!463 = !DILocation(line: 475, column: 51, scope: !374)
!464 = !DILocation(line: 475, column: 49, scope: !374)
!465 = !DILocation(line: 475, column: 43, scope: !374)
!466 = !DILocation(line: 475, column: 41, scope: !374)
!467 = !DILocation(line: 475, column: 35, scope: !374)
!468 = !DILocation(line: 475, column: 33, scope: !374)
!469 = !DILocation(line: 475, column: 27, scope: !374)
!470 = !DILocation(line: 475, column: 25, scope: !374)
!471 = !DILocation(line: 475, column: 19, scope: !374)
!472 = !DILocation(line: 475, column: 17, scope: !374)
!473 = !DILocation(line: 475, column: 11, scope: !374)
!474 = !DILocation(line: 475, column: 9, scope: !374)
!475 = !DILocation(line: 475, column: 4, scope: !374)
!476 = !DILocation(line: 476, column: 17, scope: !374)
!477 = !DILocation(line: 476, column: 19, scope: !374)
!478 = !DILocation(line: 476, column: 18, scope: !374)
!479 = !DILocation(line: 476, column: 15, scope: !374)
!480 = !DILocation(line: 476, column: 22, scope: !374)
!481 = !DILocation(line: 476, column: 21, scope: !374)
!482 = !DILocation(line: 476, column: 2, scope: !374)
!483 = distinct !DISubprogram(name: "__ieee754_y1", scope: !11, file: !11, line: 159, type: !87, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!484 = !DILocalVariable(name: "x", arg: 1, scope: !483, file: !11, line: 159, type: !13)
!485 = !DILocation(line: 159, column: 29, scope: !483)
!486 = !DILocalVariable(name: "z", scope: !483, file: !11, line: 165, type: !13)
!487 = !DILocation(line: 165, column: 9, scope: !483)
!488 = !DILocalVariable(name: "s", scope: !483, file: !11, line: 165, type: !13)
!489 = !DILocation(line: 165, column: 12, scope: !483)
!490 = !DILocalVariable(name: "c", scope: !483, file: !11, line: 165, type: !13)
!491 = !DILocation(line: 165, column: 14, scope: !483)
!492 = !DILocalVariable(name: "ss", scope: !483, file: !11, line: 165, type: !13)
!493 = !DILocation(line: 165, column: 16, scope: !483)
!494 = !DILocalVariable(name: "cc", scope: !483, file: !11, line: 165, type: !13)
!495 = !DILocation(line: 165, column: 19, scope: !483)
!496 = !DILocalVariable(name: "u", scope: !483, file: !11, line: 165, type: !13)
!497 = !DILocation(line: 165, column: 22, scope: !483)
!498 = !DILocalVariable(name: "v", scope: !483, file: !11, line: 165, type: !13)
!499 = !DILocation(line: 165, column: 24, scope: !483)
!500 = !DILocalVariable(name: "hx", scope: !483, file: !11, line: 166, type: !7)
!501 = !DILocation(line: 166, column: 6, scope: !483)
!502 = !DILocalVariable(name: "ix", scope: !483, file: !11, line: 166, type: !7)
!503 = !DILocation(line: 166, column: 9, scope: !483)
!504 = !DILocalVariable(name: "lx", scope: !483, file: !11, line: 166, type: !7)
!505 = !DILocation(line: 166, column: 12, scope: !483)
!506 = !DILocation(line: 168, column: 14, scope: !483)
!507 = !DILocation(line: 168, column: 12, scope: !483)
!508 = !DILocation(line: 169, column: 25, scope: !483)
!509 = !DILocation(line: 169, column: 24, scope: !483)
!510 = !DILocation(line: 169, column: 12, scope: !483)
!511 = !DILocation(line: 170, column: 14, scope: !483)
!512 = !DILocation(line: 170, column: 12, scope: !483)
!513 = !DILocation(line: 172, column: 5, scope: !514)
!514 = distinct !DILexicalBlock(scope: !483, file: !11, line: 172, column: 5)
!515 = !DILocation(line: 172, column: 7, scope: !514)
!516 = !DILocation(line: 172, column: 5, scope: !483)
!517 = !DILocation(line: 172, column: 34, scope: !514)
!518 = !DILocation(line: 172, column: 36, scope: !514)
!519 = !DILocation(line: 172, column: 38, scope: !514)
!520 = !DILocation(line: 172, column: 37, scope: !514)
!521 = !DILocation(line: 172, column: 35, scope: !514)
!522 = !DILocation(line: 172, column: 32, scope: !514)
!523 = !DILocation(line: 172, column: 21, scope: !514)
!524 = !DILocation(line: 173, column: 13, scope: !525)
!525 = distinct !DILexicalBlock(scope: !483, file: !11, line: 173, column: 12)
!526 = !DILocation(line: 173, column: 16, scope: !525)
!527 = !DILocation(line: 173, column: 15, scope: !525)
!528 = !DILocation(line: 173, column: 19, scope: !525)
!529 = !DILocation(line: 173, column: 12, scope: !483)
!530 = !DILocation(line: 173, column: 36, scope: !525)
!531 = !DILocation(line: 173, column: 35, scope: !525)
!532 = !DILocation(line: 173, column: 24, scope: !525)
!533 = !DILocation(line: 174, column: 12, scope: !534)
!534 = distinct !DILexicalBlock(scope: !483, file: !11, line: 174, column: 12)
!535 = !DILocation(line: 174, column: 14, scope: !534)
!536 = !DILocation(line: 174, column: 12, scope: !483)
!537 = !DILocation(line: 174, column: 25, scope: !534)
!538 = !DILocation(line: 174, column: 30, scope: !534)
!539 = !DILocation(line: 174, column: 29, scope: !534)
!540 = !DILocation(line: 174, column: 18, scope: !534)
!541 = !DILocation(line: 175, column: 12, scope: !542)
!542 = distinct !DILexicalBlock(scope: !483, file: !11, line: 175, column: 12)
!543 = !DILocation(line: 175, column: 15, scope: !542)
!544 = !DILocation(line: 175, column: 12, scope: !483)
!545 = !DILocation(line: 176, column: 25, scope: !546)
!546 = distinct !DILexicalBlock(scope: !542, file: !11, line: 175, column: 30)
!547 = !DILocation(line: 176, column: 21, scope: !546)
!548 = !DILocation(line: 176, column: 19, scope: !546)
!549 = !DILocation(line: 177, column: 25, scope: !546)
!550 = !DILocation(line: 177, column: 21, scope: !546)
!551 = !DILocation(line: 177, column: 19, scope: !546)
!552 = !DILocation(line: 178, column: 23, scope: !546)
!553 = !DILocation(line: 178, column: 22, scope: !546)
!554 = !DILocation(line: 178, column: 25, scope: !546)
!555 = !DILocation(line: 178, column: 24, scope: !546)
!556 = !DILocation(line: 178, column: 20, scope: !546)
!557 = !DILocation(line: 179, column: 22, scope: !546)
!558 = !DILocation(line: 179, column: 24, scope: !546)
!559 = !DILocation(line: 179, column: 23, scope: !546)
!560 = !DILocation(line: 179, column: 20, scope: !546)
!561 = !DILocation(line: 180, column: 20, scope: !562)
!562 = distinct !DILexicalBlock(scope: !546, file: !11, line: 180, column: 20)
!563 = !DILocation(line: 180, column: 22, scope: !562)
!564 = !DILocation(line: 180, column: 20, scope: !546)
!565 = !DILocation(line: 181, column: 29, scope: !566)
!566 = distinct !DILexicalBlock(scope: !562, file: !11, line: 180, column: 35)
!567 = !DILocation(line: 181, column: 31, scope: !566)
!568 = !DILocation(line: 181, column: 30, scope: !566)
!569 = !DILocation(line: 181, column: 25, scope: !566)
!570 = !DILocation(line: 181, column: 23, scope: !566)
!571 = !DILocation(line: 182, column: 26, scope: !572)
!572 = distinct !DILexicalBlock(scope: !566, file: !11, line: 182, column: 25)
!573 = !DILocation(line: 182, column: 28, scope: !572)
!574 = !DILocation(line: 182, column: 27, scope: !572)
!575 = !DILocation(line: 182, column: 31, scope: !572)
!576 = !DILocation(line: 182, column: 30, scope: !572)
!577 = !DILocation(line: 182, column: 25, scope: !566)
!578 = !DILocation(line: 182, column: 42, scope: !572)
!579 = !DILocation(line: 182, column: 44, scope: !572)
!580 = !DILocation(line: 182, column: 43, scope: !572)
!581 = !DILocation(line: 182, column: 40, scope: !572)
!582 = !DILocation(line: 182, column: 37, scope: !572)
!583 = !DILocation(line: 183, column: 42, scope: !572)
!584 = !DILocation(line: 183, column: 44, scope: !572)
!585 = !DILocation(line: 183, column: 43, scope: !572)
!586 = !DILocation(line: 183, column: 40, scope: !572)
!587 = !DILocation(line: 184, column: 17, scope: !566)
!588 = !DILocation(line: 196, column: 20, scope: !589)
!589 = distinct !DILexicalBlock(scope: !546, file: !11, line: 196, column: 20)
!590 = !DILocation(line: 196, column: 22, scope: !589)
!591 = !DILocation(line: 196, column: 20, scope: !546)
!592 = !DILocation(line: 196, column: 50, scope: !589)
!593 = !DILocation(line: 196, column: 49, scope: !589)
!594 = !DILocation(line: 196, column: 59, scope: !589)
!595 = !DILocation(line: 196, column: 54, scope: !589)
!596 = !DILocation(line: 196, column: 53, scope: !589)
!597 = !DILocation(line: 196, column: 37, scope: !589)
!598 = !DILocation(line: 196, column: 35, scope: !589)
!599 = !DILocation(line: 198, column: 30, scope: !600)
!600 = distinct !DILexicalBlock(scope: !589, file: !11, line: 197, column: 22)
!601 = !DILocation(line: 198, column: 25, scope: !600)
!602 = !DILocation(line: 198, column: 23, scope: !600)
!603 = !DILocation(line: 198, column: 43, scope: !600)
!604 = !DILocation(line: 198, column: 38, scope: !600)
!605 = !DILocation(line: 198, column: 36, scope: !600)
!606 = !DILocation(line: 199, column: 36, scope: !600)
!607 = !DILocation(line: 199, column: 38, scope: !600)
!608 = !DILocation(line: 199, column: 37, scope: !600)
!609 = !DILocation(line: 199, column: 41, scope: !600)
!610 = !DILocation(line: 199, column: 43, scope: !600)
!611 = !DILocation(line: 199, column: 42, scope: !600)
!612 = !DILocation(line: 199, column: 40, scope: !600)
!613 = !DILocation(line: 199, column: 34, scope: !600)
!614 = !DILocation(line: 199, column: 52, scope: !600)
!615 = !DILocation(line: 199, column: 47, scope: !600)
!616 = !DILocation(line: 199, column: 46, scope: !600)
!617 = !DILocation(line: 199, column: 23, scope: !600)
!618 = !DILocation(line: 201, column: 24, scope: !546)
!619 = !DILocation(line: 201, column: 17, scope: !546)
!620 = !DILocation(line: 203, column: 12, scope: !621)
!621 = distinct !DILexicalBlock(scope: !483, file: !11, line: 203, column: 12)
!622 = !DILocation(line: 203, column: 14, scope: !621)
!623 = !DILocation(line: 203, column: 12, scope: !483)
!624 = !DILocation(line: 204, column: 25, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !11, line: 203, column: 28)
!626 = !DILocation(line: 204, column: 24, scope: !625)
!627 = !DILocation(line: 204, column: 13, scope: !625)
!628 = !DILocation(line: 206, column: 13, scope: !483)
!629 = !DILocation(line: 206, column: 15, scope: !483)
!630 = !DILocation(line: 206, column: 14, scope: !483)
!631 = !DILocation(line: 206, column: 11, scope: !483)
!632 = !DILocation(line: 207, column: 13, scope: !483)
!633 = !DILocation(line: 207, column: 19, scope: !483)
!634 = !DILocation(line: 207, column: 22, scope: !483)
!635 = !DILocation(line: 207, column: 28, scope: !483)
!636 = !DILocation(line: 207, column: 31, scope: !483)
!637 = !DILocation(line: 207, column: 37, scope: !483)
!638 = !DILocation(line: 207, column: 40, scope: !483)
!639 = !DILocation(line: 207, column: 46, scope: !483)
!640 = !DILocation(line: 207, column: 48, scope: !483)
!641 = !DILocation(line: 207, column: 47, scope: !483)
!642 = !DILocation(line: 207, column: 45, scope: !483)
!643 = !DILocation(line: 207, column: 38, scope: !483)
!644 = !DILocation(line: 207, column: 36, scope: !483)
!645 = !DILocation(line: 207, column: 29, scope: !483)
!646 = !DILocation(line: 207, column: 27, scope: !483)
!647 = !DILocation(line: 207, column: 20, scope: !483)
!648 = !DILocation(line: 207, column: 18, scope: !483)
!649 = !DILocation(line: 207, column: 11, scope: !483)
!650 = !DILocation(line: 208, column: 17, scope: !483)
!651 = !DILocation(line: 208, column: 20, scope: !483)
!652 = !DILocation(line: 208, column: 26, scope: !483)
!653 = !DILocation(line: 208, column: 29, scope: !483)
!654 = !DILocation(line: 208, column: 35, scope: !483)
!655 = !DILocation(line: 208, column: 38, scope: !483)
!656 = !DILocation(line: 208, column: 44, scope: !483)
!657 = !DILocation(line: 208, column: 47, scope: !483)
!658 = !DILocation(line: 208, column: 53, scope: !483)
!659 = !DILocation(line: 208, column: 55, scope: !483)
!660 = !DILocation(line: 208, column: 54, scope: !483)
!661 = !DILocation(line: 208, column: 52, scope: !483)
!662 = !DILocation(line: 208, column: 45, scope: !483)
!663 = !DILocation(line: 208, column: 43, scope: !483)
!664 = !DILocation(line: 208, column: 36, scope: !483)
!665 = !DILocation(line: 208, column: 34, scope: !483)
!666 = !DILocation(line: 208, column: 27, scope: !483)
!667 = !DILocation(line: 208, column: 25, scope: !483)
!668 = !DILocation(line: 208, column: 18, scope: !483)
!669 = !DILocation(line: 208, column: 16, scope: !483)
!670 = !DILocation(line: 208, column: 11, scope: !483)
!671 = !DILocation(line: 209, column: 16, scope: !483)
!672 = !DILocation(line: 209, column: 19, scope: !483)
!673 = !DILocation(line: 209, column: 21, scope: !483)
!674 = !DILocation(line: 209, column: 20, scope: !483)
!675 = !DILocation(line: 209, column: 17, scope: !483)
!676 = !DILocation(line: 209, column: 44, scope: !483)
!677 = !DILocation(line: 209, column: 31, scope: !483)
!678 = !DILocation(line: 209, column: 61, scope: !483)
!679 = !DILocation(line: 209, column: 47, scope: !483)
!680 = !DILocation(line: 209, column: 46, scope: !483)
!681 = !DILocation(line: 209, column: 68, scope: !483)
!682 = !DILocation(line: 209, column: 67, scope: !483)
!683 = !DILocation(line: 209, column: 63, scope: !483)
!684 = !DILocation(line: 209, column: 29, scope: !483)
!685 = !DILocation(line: 209, column: 24, scope: !483)
!686 = !DILocation(line: 209, column: 9, scope: !483)
!687 = !DILocation(line: 210, column: 1, scope: !483)
!688 = distinct !DISubprogram(name: "main", scope: !11, file: !11, line: 481, type: !689, scopeLine: 481, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!689 = !DISubroutineType(types: !690)
!690 = !{!7}
!691 = !DILocalVariable(name: "a0", scope: !688, file: !11, line: 482, type: !13)
!692 = !DILocation(line: 482, column: 12, scope: !688)
!693 = !DILocation(line: 483, column: 24, scope: !688)
!694 = !DILocation(line: 483, column: 5, scope: !688)
!695 = !DILocalVariable(name: "r", scope: !688, file: !11, line: 485, type: !13)
!696 = !DILocation(line: 485, column: 12, scope: !688)
!697 = !DILocation(line: 485, column: 29, scope: !688)
!698 = !DILocation(line: 485, column: 16, scope: !688)
!699 = !DILocation(line: 486, column: 5, scope: !688)
