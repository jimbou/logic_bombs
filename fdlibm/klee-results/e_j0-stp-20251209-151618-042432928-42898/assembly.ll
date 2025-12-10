; ModuleID = 'e_j0.bc'
source_filename = "./e_j0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = internal global double 0.000000e+00, align 8, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@pR8 = internal constant [6 x double] [double 0.000000e+00, double 0xBFB1FFFFFFFFFD32, double 0xC02029D0B44FA779, double 0xC07011027B19E863, double 0xC0A36A6ECD4DCAFC, double 0xC0B4850B36CC643D], align 16, !dbg !58
@pS8 = internal constant [5 x double] [double 0x405D223307A96751, double 0x40ADF37D50596938, double 0x40E3D2BB6EB6B05F, double 0x40FC810F8F9FA9BD, double 0x40E741774F2C49DC], align 16, !dbg !63
@pR5 = internal constant [6 x double] [double 0xBDA918B147E495CC, double 0xBFB1FFFFE69AFBC6, double 0xC010A370F90C6BBF, double 0xC050EB2F5A7D1783, double 0xC074B3B36742CC63, double 0xC075A6EF28A38BD7], align 16, !dbg !68
@pS5 = internal constant [5 x double] [double 0x404E60810C98C5DE, double 0x40906D025C7E2864, double 0x40B75AF88FBE1D60, double 0x40C2CCB8FA76FA38, double 0x40A2CC1DC70BE864], align 16, !dbg !70
@pR3 = internal constant [6 x double] [double 0xBE25E1036FE1AA86, double 0xBFB1FFF6F7C0E24B, double 0xC00345B2AEA48074, double 0xC035F74A4CB94E14, double 0xC04D0A22420A1A45, double 0xC03F72ACA892D80F], align 16, !dbg !72
@pS3 = internal constant [5 x double] [double 0x4041ED9284077DD3, double 0x40769839464A7C0E, double 0x4092A66E6D1061D6, double 0x40919FFCB8C39B7E, double 0x4065B296FC379081], align 16, !dbg !74
@pR2 = internal constant [6 x double] [double 0xBE77D316E927026D, double 0xBFB1FF62495E1E42, double 0xBFF736398A24A843, double 0xC01E8AF3EDAFA7F3, double 0xC02662E6C5246303, double 0xC009DE81AF8FE70F], align 16, !dbg !76
@pS2 = internal constant [5 x double] [double 0x40363865908B5959, double 0x4061069E0EE8878F, double 0x4070E78642EA079B, double 0x40633C033AB6FAFF, double 0x402D50B344391809], align 16, !dbg !78
@qR8 = internal constant [6 x double] [double 0.000000e+00, double 0x3FB2BFFFFFFFFE2C, double 0x402789525BB334D6, double 0x40816D6315301825, double 0x40C14D993E18F46D, double 0x40E212D40E901566], align 16, !dbg !80
@qS8 = internal constant [6 x double] [double 0x406478D5365B39BC, double 0x40BFA2584E6B0563, double 0x4101665254D38C3F, double 0x412883DA83A52B43, double 0x4129A66B28DE0B3D, double 0xC114FD6D2C9530C5], align 16, !dbg !82
@qR5 = internal constant [6 x double] [double 0x3DB43D8F29CC8CD9, double 0x3FB2BFFFD172B04C, double 0x401757B0B9953DD3, double 0x4060E3920A8788E9, double 0x40900CF99DC8C481, double 0x409F17E953C6E3A6], align 16, !dbg !84
@qS5 = internal constant [6 x double] [double 0x4054B1B3FB5E1543, double 0x40A03BA0DA21C0CE, double 0x40D267D27B591E6D, double 0x40EBB5E397E02372, double 0x40E191181F7A54A0, double 0xC0B4EA57BEDBC609], align 16, !dbg !86
@qR3 = internal constant [6 x double] [double 0x3E32CD036ADECB82, double 0x3FB2BFEE0E8D0842, double 0x400AC0FC61149CF5, double 0x40454F98962DAEDD, double 0x406559DBE25EFD1F, double 0x4064D77C81FA21E0], align 16, !dbg !88
@qS3 = internal constant [6 x double] [double 0x40486122BFE343A6, double 0x40862D8386544EB3, double 0x40ACF04BE44DFC63, double 0x40B93C6CD7C76A28, double 0x40A3A8AAD94FB1C0, double 0xC062A7EB201CF40F], align 16, !dbg !90
@qR2 = internal constant [6 x double] [double 0x3E84313B54F76BDB, double 0x3FB2BEC53E883E34, double 0x3FFFF897E727779C, double 0x402CFDBFAAF96FE5, double 0x403FAA8E29FBDC4A, double 0x403040B171814BB4], align 16, !dbg !92
@qS2 = internal constant [6 x double] [double 0x403E5D96F7C07AED, double 0x4070D591E4D14B40, double 0x408A664522B3BF22, double 0x408B977C9C5CC214, double 0x406A95530E001365, double 0xC0153E6AF8B32931], align 16, !dbg !94

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_j0(double %x) #0 !dbg !102 {
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
  %hx = alloca i32, align 4
  %ix = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata double* %z, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata double* %s, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata double* %c, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata double* %ss, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata double* %cc, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata double* %r, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata double* %u, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata double* %v, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !125, metadata !DIExpression()), !dbg !126
  %0 = bitcast double* %x.addr to i32*, !dbg !127
  %1 = load i32, i32* %0, align 8, !dbg !127
  store i32 %1, i32* %hx, align 4, !dbg !128
  %2 = load i32, i32* %hx, align 4, !dbg !129
  %and = and i32 %2, 2147483647, !dbg !130
  store i32 %and, i32* %ix, align 4, !dbg !131
  %3 = load i32, i32* %ix, align 4, !dbg !132
  %cmp = icmp sge i32 %3, 2146435072, !dbg !134
  br i1 %cmp, label %if.then, label %if.end, !dbg !135

if.then:                                          ; preds = %entry
  %4 = load double, double* %x.addr, align 8, !dbg !136
  %5 = load double, double* %x.addr, align 8, !dbg !137
  %mul = fmul double %4, %5, !dbg !138
  %div = fdiv double 1.000000e+00, %mul, !dbg !139
  store double %div, double* %retval, align 8, !dbg !140
  br label %return, !dbg !140

if.end:                                           ; preds = %entry
  %6 = load double, double* %x.addr, align 8, !dbg !141
  %7 = call double @llvm.fabs.f64(double %6), !dbg !142
  store double %7, double* %x.addr, align 8, !dbg !143
  %8 = load i32, i32* %ix, align 4, !dbg !144
  %cmp1 = icmp sge i32 %8, 1073741824, !dbg !146
  br i1 %cmp1, label %if.then2, label %if.end30, !dbg !147

if.then2:                                         ; preds = %if.end
  %9 = load double, double* %x.addr, align 8, !dbg !148
  %call = call double @sin(double %9) #4, !dbg !150
  store double %call, double* %s, align 8, !dbg !151
  %10 = load double, double* %x.addr, align 8, !dbg !152
  %call3 = call double @cos(double %10) #4, !dbg !153
  store double %call3, double* %c, align 8, !dbg !154
  %11 = load double, double* %s, align 8, !dbg !155
  %12 = load double, double* %c, align 8, !dbg !156
  %sub = fsub double %11, %12, !dbg !157
  store double %sub, double* %ss, align 8, !dbg !158
  %13 = load double, double* %s, align 8, !dbg !159
  %14 = load double, double* %c, align 8, !dbg !160
  %add = fadd double %13, %14, !dbg !161
  store double %add, double* %cc, align 8, !dbg !162
  %15 = load i32, i32* %ix, align 4, !dbg !163
  %cmp4 = icmp slt i32 %15, 2145386496, !dbg !165
  br i1 %cmp4, label %if.then5, label %if.end14, !dbg !166

if.then5:                                         ; preds = %if.then2
  %16 = load double, double* %x.addr, align 8, !dbg !167
  %17 = load double, double* %x.addr, align 8, !dbg !169
  %add6 = fadd double %16, %17, !dbg !170
  %call7 = call double @cos(double %add6) #4, !dbg !171
  %fneg = fneg double %call7, !dbg !172
  store double %fneg, double* %z, align 8, !dbg !173
  %18 = load double, double* %s, align 8, !dbg !174
  %19 = load double, double* %c, align 8, !dbg !176
  %mul8 = fmul double %18, %19, !dbg !177
  %20 = load double, double* @zero, align 8, !dbg !178
  %cmp9 = fcmp olt double %mul8, %20, !dbg !179
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !180

if.then10:                                        ; preds = %if.then5
  %21 = load double, double* %z, align 8, !dbg !181
  %22 = load double, double* %ss, align 8, !dbg !182
  %div11 = fdiv double %21, %22, !dbg !183
  store double %div11, double* %cc, align 8, !dbg !184
  br label %if.end13, !dbg !185

if.else:                                          ; preds = %if.then5
  %23 = load double, double* %z, align 8, !dbg !186
  %24 = load double, double* %cc, align 8, !dbg !187
  %div12 = fdiv double %23, %24, !dbg !188
  store double %div12, double* %ss, align 8, !dbg !189
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  br label %if.end14, !dbg !190

if.end14:                                         ; preds = %if.end13, %if.then2
  %25 = load i32, i32* %ix, align 4, !dbg !191
  %cmp15 = icmp sgt i32 %25, 1207959552, !dbg !193
  br i1 %cmp15, label %if.then16, label %if.else20, !dbg !194

if.then16:                                        ; preds = %if.end14
  %26 = load double, double* %cc, align 8, !dbg !195
  %mul17 = fmul double 0x3FE20DD750429B6D, %26, !dbg !196
  %27 = load double, double* %x.addr, align 8, !dbg !197
  %call18 = call double @sqrt(double %27) #4, !dbg !198
  %div19 = fdiv double %mul17, %call18, !dbg !199
  store double %div19, double* %z, align 8, !dbg !200
  br label %if.end29, !dbg !201

if.else20:                                        ; preds = %if.end14
  %28 = load double, double* %x.addr, align 8, !dbg !202
  %call21 = call double @pzero(double %28), !dbg !204
  store double %call21, double* %u, align 8, !dbg !205
  %29 = load double, double* %x.addr, align 8, !dbg !206
  %call22 = call double @qzero(double %29), !dbg !207
  store double %call22, double* %v, align 8, !dbg !208
  %30 = load double, double* %u, align 8, !dbg !209
  %31 = load double, double* %cc, align 8, !dbg !210
  %mul23 = fmul double %30, %31, !dbg !211
  %32 = load double, double* %v, align 8, !dbg !212
  %33 = load double, double* %ss, align 8, !dbg !213
  %mul24 = fmul double %32, %33, !dbg !214
  %sub25 = fsub double %mul23, %mul24, !dbg !215
  %mul26 = fmul double 0x3FE20DD750429B6D, %sub25, !dbg !216
  %34 = load double, double* %x.addr, align 8, !dbg !217
  %call27 = call double @sqrt(double %34) #4, !dbg !218
  %div28 = fdiv double %mul26, %call27, !dbg !219
  store double %div28, double* %z, align 8, !dbg !220
  br label %if.end29

if.end29:                                         ; preds = %if.else20, %if.then16
  %35 = load double, double* %z, align 8, !dbg !221
  store double %35, double* %retval, align 8, !dbg !222
  br label %return, !dbg !222

if.end30:                                         ; preds = %if.end
  %36 = load i32, i32* %ix, align 4, !dbg !223
  %cmp31 = icmp slt i32 %36, 1059061760, !dbg !225
  br i1 %cmp31, label %if.then32, label %if.end43, !dbg !226

if.then32:                                        ; preds = %if.end30
  %37 = load double, double* %x.addr, align 8, !dbg !227
  %add33 = fadd double 1.000000e+300, %37, !dbg !230
  %cmp34 = fcmp ogt double %add33, 1.000000e+00, !dbg !231
  br i1 %cmp34, label %if.then35, label %if.end42, !dbg !232

if.then35:                                        ; preds = %if.then32
  %38 = load i32, i32* %ix, align 4, !dbg !233
  %cmp36 = icmp slt i32 %38, 1044381696, !dbg !236
  br i1 %cmp36, label %if.then37, label %if.else38, !dbg !237

if.then37:                                        ; preds = %if.then35
  store double 1.000000e+00, double* %retval, align 8, !dbg !238
  br label %return, !dbg !238

if.else38:                                        ; preds = %if.then35
  %39 = load double, double* %x.addr, align 8, !dbg !239
  %mul39 = fmul double 2.500000e-01, %39, !dbg !240
  %40 = load double, double* %x.addr, align 8, !dbg !241
  %mul40 = fmul double %mul39, %40, !dbg !242
  %sub41 = fsub double 1.000000e+00, %mul40, !dbg !243
  store double %sub41, double* %retval, align 8, !dbg !244
  br label %return, !dbg !244

if.end42:                                         ; preds = %if.then32
  br label %if.end43, !dbg !245

if.end43:                                         ; preds = %if.end42, %if.end30
  %41 = load double, double* %x.addr, align 8, !dbg !246
  %42 = load double, double* %x.addr, align 8, !dbg !247
  %mul44 = fmul double %41, %42, !dbg !248
  store double %mul44, double* %z, align 8, !dbg !249
  %43 = load double, double* %z, align 8, !dbg !250
  %44 = load double, double* %z, align 8, !dbg !251
  %45 = load double, double* %z, align 8, !dbg !252
  %46 = load double, double* %z, align 8, !dbg !253
  %mul45 = fmul double %46, 0xBE33D5E773D63FCE, !dbg !254
  %add46 = fadd double 0x3EBEB1D10C503919, %mul45, !dbg !255
  %mul47 = fmul double %45, %add46, !dbg !256
  %add48 = fadd double 0xBF28E6A5B61AC6E9, %mul47, !dbg !257
  %mul49 = fmul double %44, %add48, !dbg !258
  %add50 = fadd double 0x3F8FFFFFFFFFFFFD, %mul49, !dbg !259
  %mul51 = fmul double %43, %add50, !dbg !260
  store double %mul51, double* %r, align 8, !dbg !261
  %47 = load double, double* %z, align 8, !dbg !262
  %48 = load double, double* %z, align 8, !dbg !263
  %49 = load double, double* %z, align 8, !dbg !264
  %50 = load double, double* %z, align 8, !dbg !265
  %mul52 = fmul double %50, 0x3E1408BCF4745D8F, !dbg !266
  %add53 = fadd double 0x3EA13B54CE84D5A9, %mul52, !dbg !267
  %mul54 = fmul double %49, %add53, !dbg !268
  %add55 = fadd double 0x3F1EA6D2DD57DBF4, %mul54, !dbg !269
  %mul56 = fmul double %48, %add55, !dbg !270
  %add57 = fadd double 0x3F8FFCE882C8C2A4, %mul56, !dbg !271
  %mul58 = fmul double %47, %add57, !dbg !272
  %add59 = fadd double 1.000000e+00, %mul58, !dbg !273
  store double %add59, double* %s, align 8, !dbg !274
  %51 = load i32, i32* %ix, align 4, !dbg !275
  %cmp60 = icmp slt i32 %51, 1072693248, !dbg !277
  br i1 %cmp60, label %if.then61, label %if.else66, !dbg !278

if.then61:                                        ; preds = %if.end43
  %52 = load double, double* %z, align 8, !dbg !279
  %53 = load double, double* %r, align 8, !dbg !281
  %54 = load double, double* %s, align 8, !dbg !282
  %div62 = fdiv double %53, %54, !dbg !283
  %add63 = fadd double -2.500000e-01, %div62, !dbg !284
  %mul64 = fmul double %52, %add63, !dbg !285
  %add65 = fadd double 1.000000e+00, %mul64, !dbg !286
  store double %add65, double* %retval, align 8, !dbg !287
  br label %return, !dbg !287

if.else66:                                        ; preds = %if.end43
  %55 = load double, double* %x.addr, align 8, !dbg !288
  %mul67 = fmul double 5.000000e-01, %55, !dbg !290
  store double %mul67, double* %u, align 8, !dbg !291
  %56 = load double, double* %u, align 8, !dbg !292
  %add68 = fadd double 1.000000e+00, %56, !dbg !293
  %57 = load double, double* %u, align 8, !dbg !294
  %sub69 = fsub double 1.000000e+00, %57, !dbg !295
  %mul70 = fmul double %add68, %sub69, !dbg !296
  %58 = load double, double* %z, align 8, !dbg !297
  %59 = load double, double* %r, align 8, !dbg !298
  %60 = load double, double* %s, align 8, !dbg !299
  %div71 = fdiv double %59, %60, !dbg !300
  %mul72 = fmul double %58, %div71, !dbg !301
  %add73 = fadd double %mul70, %mul72, !dbg !302
  store double %add73, double* %retval, align 8, !dbg !303
  br label %return, !dbg !303

return:                                           ; preds = %if.else66, %if.then61, %if.else38, %if.then37, %if.end29, %if.then
  %61 = load double, double* %retval, align 8, !dbg !304
  ret double %61, !dbg !304
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
define internal double @pzero(double %x) #0 !dbg !305 {
entry:
  %x.addr = alloca double, align 8
  %p = alloca double*, align 8
  %q = alloca double*, align 8
  %z = alloca double, align 8
  %r = alloca double, align 8
  %s = alloca double, align 8
  %ix = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !306, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.declare(metadata double** %p, metadata !308, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.declare(metadata double** %q, metadata !311, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.declare(metadata double* %z, metadata !313, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.declare(metadata double* %r, metadata !315, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.declare(metadata double* %s, metadata !317, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !319, metadata !DIExpression()), !dbg !320
  %0 = bitcast double* %x.addr to i32*, !dbg !321
  %1 = load i32, i32* %0, align 8, !dbg !321
  %and = and i32 2147483647, %1, !dbg !322
  store i32 %and, i32* %ix, align 4, !dbg !323
  %2 = load i32, i32* %ix, align 4, !dbg !324
  %cmp = icmp sge i32 %2, 1075838976, !dbg !326
  br i1 %cmp, label %if.then, label %if.else, !dbg !327

if.then:                                          ; preds = %entry
  store double* getelementptr inbounds ([6 x double], [6 x double]* @pR8, i64 0, i64 0), double** %p, align 8, !dbg !328
  store double* getelementptr inbounds ([5 x double], [5 x double]* @pS8, i64 0, i64 0), double** %q, align 8, !dbg !330
  br label %if.end11, !dbg !331

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %ix, align 4, !dbg !332
  %cmp1 = icmp sge i32 %3, 1074933387, !dbg !334
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !335

if.then2:                                         ; preds = %if.else
  store double* getelementptr inbounds ([6 x double], [6 x double]* @pR5, i64 0, i64 0), double** %p, align 8, !dbg !336
  store double* getelementptr inbounds ([5 x double], [5 x double]* @pS5, i64 0, i64 0), double** %q, align 8, !dbg !338
  br label %if.end10, !dbg !339

if.else3:                                         ; preds = %if.else
  %4 = load i32, i32* %ix, align 4, !dbg !340
  %cmp4 = icmp sge i32 %4, 1074191213, !dbg !342
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !343

if.then5:                                         ; preds = %if.else3
  store double* getelementptr inbounds ([6 x double], [6 x double]* @pR3, i64 0, i64 0), double** %p, align 8, !dbg !344
  store double* getelementptr inbounds ([5 x double], [5 x double]* @pS3, i64 0, i64 0), double** %q, align 8, !dbg !346
  br label %if.end9, !dbg !347

if.else6:                                         ; preds = %if.else3
  %5 = load i32, i32* %ix, align 4, !dbg !348
  %cmp7 = icmp sge i32 %5, 1073741824, !dbg !350
  br i1 %cmp7, label %if.then8, label %if.end, !dbg !351

if.then8:                                         ; preds = %if.else6
  store double* getelementptr inbounds ([6 x double], [6 x double]* @pR2, i64 0, i64 0), double** %p, align 8, !dbg !352
  store double* getelementptr inbounds ([5 x double], [5 x double]* @pS2, i64 0, i64 0), double** %q, align 8, !dbg !354
  br label %if.end, !dbg !355

if.end:                                           ; preds = %if.then8, %if.else6
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then5
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then2
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then
  %6 = load double, double* %x.addr, align 8, !dbg !356
  %7 = load double, double* %x.addr, align 8, !dbg !357
  %mul = fmul double %6, %7, !dbg !358
  %div = fdiv double 1.000000e+00, %mul, !dbg !359
  store double %div, double* %z, align 8, !dbg !360
  %8 = load double*, double** %p, align 8, !dbg !361
  %arrayidx = getelementptr inbounds double, double* %8, i64 0, !dbg !361
  %9 = load double, double* %arrayidx, align 8, !dbg !361
  %10 = load double, double* %z, align 8, !dbg !362
  %11 = load double*, double** %p, align 8, !dbg !363
  %arrayidx12 = getelementptr inbounds double, double* %11, i64 1, !dbg !363
  %12 = load double, double* %arrayidx12, align 8, !dbg !363
  %13 = load double, double* %z, align 8, !dbg !364
  %14 = load double*, double** %p, align 8, !dbg !365
  %arrayidx13 = getelementptr inbounds double, double* %14, i64 2, !dbg !365
  %15 = load double, double* %arrayidx13, align 8, !dbg !365
  %16 = load double, double* %z, align 8, !dbg !366
  %17 = load double*, double** %p, align 8, !dbg !367
  %arrayidx14 = getelementptr inbounds double, double* %17, i64 3, !dbg !367
  %18 = load double, double* %arrayidx14, align 8, !dbg !367
  %19 = load double, double* %z, align 8, !dbg !368
  %20 = load double*, double** %p, align 8, !dbg !369
  %arrayidx15 = getelementptr inbounds double, double* %20, i64 4, !dbg !369
  %21 = load double, double* %arrayidx15, align 8, !dbg !369
  %22 = load double, double* %z, align 8, !dbg !370
  %23 = load double*, double** %p, align 8, !dbg !371
  %arrayidx16 = getelementptr inbounds double, double* %23, i64 5, !dbg !371
  %24 = load double, double* %arrayidx16, align 8, !dbg !371
  %mul17 = fmul double %22, %24, !dbg !372
  %add = fadd double %21, %mul17, !dbg !373
  %mul18 = fmul double %19, %add, !dbg !374
  %add19 = fadd double %18, %mul18, !dbg !375
  %mul20 = fmul double %16, %add19, !dbg !376
  %add21 = fadd double %15, %mul20, !dbg !377
  %mul22 = fmul double %13, %add21, !dbg !378
  %add23 = fadd double %12, %mul22, !dbg !379
  %mul24 = fmul double %10, %add23, !dbg !380
  %add25 = fadd double %9, %mul24, !dbg !381
  store double %add25, double* %r, align 8, !dbg !382
  %25 = load double, double* %z, align 8, !dbg !383
  %26 = load double*, double** %q, align 8, !dbg !384
  %arrayidx26 = getelementptr inbounds double, double* %26, i64 0, !dbg !384
  %27 = load double, double* %arrayidx26, align 8, !dbg !384
  %28 = load double, double* %z, align 8, !dbg !385
  %29 = load double*, double** %q, align 8, !dbg !386
  %arrayidx27 = getelementptr inbounds double, double* %29, i64 1, !dbg !386
  %30 = load double, double* %arrayidx27, align 8, !dbg !386
  %31 = load double, double* %z, align 8, !dbg !387
  %32 = load double*, double** %q, align 8, !dbg !388
  %arrayidx28 = getelementptr inbounds double, double* %32, i64 2, !dbg !388
  %33 = load double, double* %arrayidx28, align 8, !dbg !388
  %34 = load double, double* %z, align 8, !dbg !389
  %35 = load double*, double** %q, align 8, !dbg !390
  %arrayidx29 = getelementptr inbounds double, double* %35, i64 3, !dbg !390
  %36 = load double, double* %arrayidx29, align 8, !dbg !390
  %37 = load double, double* %z, align 8, !dbg !391
  %38 = load double*, double** %q, align 8, !dbg !392
  %arrayidx30 = getelementptr inbounds double, double* %38, i64 4, !dbg !392
  %39 = load double, double* %arrayidx30, align 8, !dbg !392
  %mul31 = fmul double %37, %39, !dbg !393
  %add32 = fadd double %36, %mul31, !dbg !394
  %mul33 = fmul double %34, %add32, !dbg !395
  %add34 = fadd double %33, %mul33, !dbg !396
  %mul35 = fmul double %31, %add34, !dbg !397
  %add36 = fadd double %30, %mul35, !dbg !398
  %mul37 = fmul double %28, %add36, !dbg !399
  %add38 = fadd double %27, %mul37, !dbg !400
  %mul39 = fmul double %25, %add38, !dbg !401
  %add40 = fadd double 1.000000e+00, %mul39, !dbg !402
  store double %add40, double* %s, align 8, !dbg !403
  %40 = load double, double* %r, align 8, !dbg !404
  %41 = load double, double* %s, align 8, !dbg !405
  %div41 = fdiv double %40, %41, !dbg !406
  %add42 = fadd double 1.000000e+00, %div41, !dbg !407
  ret double %add42, !dbg !408
}

; Function Attrs: noinline nounwind optnone uwtable
define internal double @qzero(double %x) #0 !dbg !409 {
entry:
  %x.addr = alloca double, align 8
  %p = alloca double*, align 8
  %q = alloca double*, align 8
  %s = alloca double, align 8
  %r = alloca double, align 8
  %z = alloca double, align 8
  %ix = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !410, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.declare(metadata double** %p, metadata !412, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.declare(metadata double** %q, metadata !414, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.declare(metadata double* %s, metadata !416, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.declare(metadata double* %r, metadata !418, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.declare(metadata double* %z, metadata !420, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !422, metadata !DIExpression()), !dbg !423
  %0 = bitcast double* %x.addr to i32*, !dbg !424
  %1 = load i32, i32* %0, align 8, !dbg !424
  %and = and i32 2147483647, %1, !dbg !425
  store i32 %and, i32* %ix, align 4, !dbg !426
  %2 = load i32, i32* %ix, align 4, !dbg !427
  %cmp = icmp sge i32 %2, 1075838976, !dbg !429
  br i1 %cmp, label %if.then, label %if.else, !dbg !430

if.then:                                          ; preds = %entry
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qR8, i64 0, i64 0), double** %p, align 8, !dbg !431
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qS8, i64 0, i64 0), double** %q, align 8, !dbg !433
  br label %if.end11, !dbg !434

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %ix, align 4, !dbg !435
  %cmp1 = icmp sge i32 %3, 1074933387, !dbg !437
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !438

if.then2:                                         ; preds = %if.else
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qR5, i64 0, i64 0), double** %p, align 8, !dbg !439
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qS5, i64 0, i64 0), double** %q, align 8, !dbg !441
  br label %if.end10, !dbg !442

if.else3:                                         ; preds = %if.else
  %4 = load i32, i32* %ix, align 4, !dbg !443
  %cmp4 = icmp sge i32 %4, 1074191213, !dbg !445
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !446

if.then5:                                         ; preds = %if.else3
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qR3, i64 0, i64 0), double** %p, align 8, !dbg !447
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qS3, i64 0, i64 0), double** %q, align 8, !dbg !449
  br label %if.end9, !dbg !450

if.else6:                                         ; preds = %if.else3
  %5 = load i32, i32* %ix, align 4, !dbg !451
  %cmp7 = icmp sge i32 %5, 1073741824, !dbg !453
  br i1 %cmp7, label %if.then8, label %if.end, !dbg !454

if.then8:                                         ; preds = %if.else6
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qR2, i64 0, i64 0), double** %p, align 8, !dbg !455
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qS2, i64 0, i64 0), double** %q, align 8, !dbg !457
  br label %if.end, !dbg !458

if.end:                                           ; preds = %if.then8, %if.else6
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then5
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then2
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then
  %6 = load double, double* %x.addr, align 8, !dbg !459
  %7 = load double, double* %x.addr, align 8, !dbg !460
  %mul = fmul double %6, %7, !dbg !461
  %div = fdiv double 1.000000e+00, %mul, !dbg !462
  store double %div, double* %z, align 8, !dbg !463
  %8 = load double*, double** %p, align 8, !dbg !464
  %arrayidx = getelementptr inbounds double, double* %8, i64 0, !dbg !464
  %9 = load double, double* %arrayidx, align 8, !dbg !464
  %10 = load double, double* %z, align 8, !dbg !465
  %11 = load double*, double** %p, align 8, !dbg !466
  %arrayidx12 = getelementptr inbounds double, double* %11, i64 1, !dbg !466
  %12 = load double, double* %arrayidx12, align 8, !dbg !466
  %13 = load double, double* %z, align 8, !dbg !467
  %14 = load double*, double** %p, align 8, !dbg !468
  %arrayidx13 = getelementptr inbounds double, double* %14, i64 2, !dbg !468
  %15 = load double, double* %arrayidx13, align 8, !dbg !468
  %16 = load double, double* %z, align 8, !dbg !469
  %17 = load double*, double** %p, align 8, !dbg !470
  %arrayidx14 = getelementptr inbounds double, double* %17, i64 3, !dbg !470
  %18 = load double, double* %arrayidx14, align 8, !dbg !470
  %19 = load double, double* %z, align 8, !dbg !471
  %20 = load double*, double** %p, align 8, !dbg !472
  %arrayidx15 = getelementptr inbounds double, double* %20, i64 4, !dbg !472
  %21 = load double, double* %arrayidx15, align 8, !dbg !472
  %22 = load double, double* %z, align 8, !dbg !473
  %23 = load double*, double** %p, align 8, !dbg !474
  %arrayidx16 = getelementptr inbounds double, double* %23, i64 5, !dbg !474
  %24 = load double, double* %arrayidx16, align 8, !dbg !474
  %mul17 = fmul double %22, %24, !dbg !475
  %add = fadd double %21, %mul17, !dbg !476
  %mul18 = fmul double %19, %add, !dbg !477
  %add19 = fadd double %18, %mul18, !dbg !478
  %mul20 = fmul double %16, %add19, !dbg !479
  %add21 = fadd double %15, %mul20, !dbg !480
  %mul22 = fmul double %13, %add21, !dbg !481
  %add23 = fadd double %12, %mul22, !dbg !482
  %mul24 = fmul double %10, %add23, !dbg !483
  %add25 = fadd double %9, %mul24, !dbg !484
  store double %add25, double* %r, align 8, !dbg !485
  %25 = load double, double* %z, align 8, !dbg !486
  %26 = load double*, double** %q, align 8, !dbg !487
  %arrayidx26 = getelementptr inbounds double, double* %26, i64 0, !dbg !487
  %27 = load double, double* %arrayidx26, align 8, !dbg !487
  %28 = load double, double* %z, align 8, !dbg !488
  %29 = load double*, double** %q, align 8, !dbg !489
  %arrayidx27 = getelementptr inbounds double, double* %29, i64 1, !dbg !489
  %30 = load double, double* %arrayidx27, align 8, !dbg !489
  %31 = load double, double* %z, align 8, !dbg !490
  %32 = load double*, double** %q, align 8, !dbg !491
  %arrayidx28 = getelementptr inbounds double, double* %32, i64 2, !dbg !491
  %33 = load double, double* %arrayidx28, align 8, !dbg !491
  %34 = load double, double* %z, align 8, !dbg !492
  %35 = load double*, double** %q, align 8, !dbg !493
  %arrayidx29 = getelementptr inbounds double, double* %35, i64 3, !dbg !493
  %36 = load double, double* %arrayidx29, align 8, !dbg !493
  %37 = load double, double* %z, align 8, !dbg !494
  %38 = load double*, double** %q, align 8, !dbg !495
  %arrayidx30 = getelementptr inbounds double, double* %38, i64 4, !dbg !495
  %39 = load double, double* %arrayidx30, align 8, !dbg !495
  %40 = load double, double* %z, align 8, !dbg !496
  %41 = load double*, double** %q, align 8, !dbg !497
  %arrayidx31 = getelementptr inbounds double, double* %41, i64 5, !dbg !497
  %42 = load double, double* %arrayidx31, align 8, !dbg !497
  %mul32 = fmul double %40, %42, !dbg !498
  %add33 = fadd double %39, %mul32, !dbg !499
  %mul34 = fmul double %37, %add33, !dbg !500
  %add35 = fadd double %36, %mul34, !dbg !501
  %mul36 = fmul double %34, %add35, !dbg !502
  %add37 = fadd double %33, %mul36, !dbg !503
  %mul38 = fmul double %31, %add37, !dbg !504
  %add39 = fadd double %30, %mul38, !dbg !505
  %mul40 = fmul double %28, %add39, !dbg !506
  %add41 = fadd double %27, %mul40, !dbg !507
  %mul42 = fmul double %25, %add41, !dbg !508
  %add43 = fadd double 1.000000e+00, %mul42, !dbg !509
  store double %add43, double* %s, align 8, !dbg !510
  %43 = load double, double* %r, align 8, !dbg !511
  %44 = load double, double* %s, align 8, !dbg !512
  %div44 = fdiv double %43, %44, !dbg !513
  %add45 = fadd double -1.250000e-01, %div44, !dbg !514
  %45 = load double, double* %x.addr, align 8, !dbg !515
  %div46 = fdiv double %add45, %45, !dbg !516
  ret double %div46, !dbg !517
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_y0(double %x) #0 !dbg !518 {
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
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !519, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.declare(metadata double* %z, metadata !521, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.declare(metadata double* %s, metadata !523, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.declare(metadata double* %c, metadata !525, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.declare(metadata double* %ss, metadata !527, metadata !DIExpression()), !dbg !528
  call void @llvm.dbg.declare(metadata double* %cc, metadata !529, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.declare(metadata double* %u, metadata !531, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.declare(metadata double* %v, metadata !533, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !535, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !537, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.declare(metadata i32* %lx, metadata !539, metadata !DIExpression()), !dbg !540
  %0 = bitcast double* %x.addr to i32*, !dbg !541
  %1 = load i32, i32* %0, align 8, !dbg !541
  store i32 %1, i32* %hx, align 4, !dbg !542
  %2 = load i32, i32* %hx, align 4, !dbg !543
  %and = and i32 2147483647, %2, !dbg !544
  store i32 %and, i32* %ix, align 4, !dbg !545
  %3 = bitcast double* %x.addr to i32*, !dbg !546
  %add.ptr = getelementptr inbounds i32, i32* %3, i64 1, !dbg !546
  %4 = load i32, i32* %add.ptr, align 4, !dbg !546
  store i32 %4, i32* %lx, align 4, !dbg !547
  %5 = load i32, i32* %ix, align 4, !dbg !548
  %cmp = icmp sge i32 %5, 2146435072, !dbg !550
  br i1 %cmp, label %if.then, label %if.end, !dbg !551

if.then:                                          ; preds = %entry
  %6 = load double, double* %x.addr, align 8, !dbg !552
  %7 = load double, double* %x.addr, align 8, !dbg !553
  %8 = load double, double* %x.addr, align 8, !dbg !554
  %mul = fmul double %7, %8, !dbg !555
  %add = fadd double %6, %mul, !dbg !556
  %div = fdiv double 1.000000e+00, %add, !dbg !557
  store double %div, double* %retval, align 8, !dbg !558
  br label %return, !dbg !558

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %ix, align 4, !dbg !559
  %10 = load i32, i32* %lx, align 4, !dbg !561
  %or = or i32 %9, %10, !dbg !562
  %cmp1 = icmp eq i32 %or, 0, !dbg !563
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !564

if.then2:                                         ; preds = %if.end
  %11 = load double, double* @zero, align 8, !dbg !565
  %div3 = fdiv double -1.000000e+00, %11, !dbg !566
  store double %div3, double* %retval, align 8, !dbg !567
  br label %return, !dbg !567

if.end4:                                          ; preds = %if.end
  %12 = load i32, i32* %hx, align 4, !dbg !568
  %cmp5 = icmp slt i32 %12, 0, !dbg !570
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !571

if.then6:                                         ; preds = %if.end4
  %13 = load double, double* @zero, align 8, !dbg !572
  %14 = load double, double* @zero, align 8, !dbg !573
  %div7 = fdiv double %13, %14, !dbg !574
  store double %div7, double* %retval, align 8, !dbg !575
  br label %return, !dbg !575

if.end8:                                          ; preds = %if.end4
  %15 = load i32, i32* %ix, align 4, !dbg !576
  %cmp9 = icmp sge i32 %15, 1073741824, !dbg !578
  br i1 %cmp9, label %if.then10, label %if.end39, !dbg !579

if.then10:                                        ; preds = %if.end8
  %16 = load double, double* %x.addr, align 8, !dbg !580
  %call = call double @sin(double %16) #4, !dbg !582
  store double %call, double* %s, align 8, !dbg !583
  %17 = load double, double* %x.addr, align 8, !dbg !584
  %call11 = call double @cos(double %17) #4, !dbg !585
  store double %call11, double* %c, align 8, !dbg !586
  %18 = load double, double* %s, align 8, !dbg !587
  %19 = load double, double* %c, align 8, !dbg !588
  %sub = fsub double %18, %19, !dbg !589
  store double %sub, double* %ss, align 8, !dbg !590
  %20 = load double, double* %s, align 8, !dbg !591
  %21 = load double, double* %c, align 8, !dbg !592
  %add12 = fadd double %20, %21, !dbg !593
  store double %add12, double* %cc, align 8, !dbg !594
  %22 = load i32, i32* %ix, align 4, !dbg !595
  %cmp13 = icmp slt i32 %22, 2145386496, !dbg !597
  br i1 %cmp13, label %if.then14, label %if.end23, !dbg !598

if.then14:                                        ; preds = %if.then10
  %23 = load double, double* %x.addr, align 8, !dbg !599
  %24 = load double, double* %x.addr, align 8, !dbg !601
  %add15 = fadd double %23, %24, !dbg !602
  %call16 = call double @cos(double %add15) #4, !dbg !603
  %fneg = fneg double %call16, !dbg !604
  store double %fneg, double* %z, align 8, !dbg !605
  %25 = load double, double* %s, align 8, !dbg !606
  %26 = load double, double* %c, align 8, !dbg !608
  %mul17 = fmul double %25, %26, !dbg !609
  %27 = load double, double* @zero, align 8, !dbg !610
  %cmp18 = fcmp olt double %mul17, %27, !dbg !611
  br i1 %cmp18, label %if.then19, label %if.else, !dbg !612

if.then19:                                        ; preds = %if.then14
  %28 = load double, double* %z, align 8, !dbg !613
  %29 = load double, double* %ss, align 8, !dbg !614
  %div20 = fdiv double %28, %29, !dbg !615
  store double %div20, double* %cc, align 8, !dbg !616
  br label %if.end22, !dbg !617

if.else:                                          ; preds = %if.then14
  %30 = load double, double* %z, align 8, !dbg !618
  %31 = load double, double* %cc, align 8, !dbg !619
  %div21 = fdiv double %30, %31, !dbg !620
  store double %div21, double* %ss, align 8, !dbg !621
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then19
  br label %if.end23, !dbg !622

if.end23:                                         ; preds = %if.end22, %if.then10
  %32 = load i32, i32* %ix, align 4, !dbg !623
  %cmp24 = icmp sgt i32 %32, 1207959552, !dbg !625
  br i1 %cmp24, label %if.then25, label %if.else29, !dbg !626

if.then25:                                        ; preds = %if.end23
  %33 = load double, double* %ss, align 8, !dbg !627
  %mul26 = fmul double 0x3FE20DD750429B6D, %33, !dbg !628
  %34 = load double, double* %x.addr, align 8, !dbg !629
  %call27 = call double @sqrt(double %34) #4, !dbg !630
  %div28 = fdiv double %mul26, %call27, !dbg !631
  store double %div28, double* %z, align 8, !dbg !632
  br label %if.end38, !dbg !633

if.else29:                                        ; preds = %if.end23
  %35 = load double, double* %x.addr, align 8, !dbg !634
  %call30 = call double @pzero(double %35), !dbg !636
  store double %call30, double* %u, align 8, !dbg !637
  %36 = load double, double* %x.addr, align 8, !dbg !638
  %call31 = call double @qzero(double %36), !dbg !639
  store double %call31, double* %v, align 8, !dbg !640
  %37 = load double, double* %u, align 8, !dbg !641
  %38 = load double, double* %ss, align 8, !dbg !642
  %mul32 = fmul double %37, %38, !dbg !643
  %39 = load double, double* %v, align 8, !dbg !644
  %40 = load double, double* %cc, align 8, !dbg !645
  %mul33 = fmul double %39, %40, !dbg !646
  %add34 = fadd double %mul32, %mul33, !dbg !647
  %mul35 = fmul double 0x3FE20DD750429B6D, %add34, !dbg !648
  %41 = load double, double* %x.addr, align 8, !dbg !649
  %call36 = call double @sqrt(double %41) #4, !dbg !650
  %div37 = fdiv double %mul35, %call36, !dbg !651
  store double %div37, double* %z, align 8, !dbg !652
  br label %if.end38

if.end38:                                         ; preds = %if.else29, %if.then25
  %42 = load double, double* %z, align 8, !dbg !653
  store double %42, double* %retval, align 8, !dbg !654
  br label %return, !dbg !654

if.end39:                                         ; preds = %if.end8
  %43 = load i32, i32* %ix, align 4, !dbg !655
  %cmp40 = icmp sle i32 %43, 1044381696, !dbg !657
  br i1 %cmp40, label %if.then41, label %if.end45, !dbg !658

if.then41:                                        ; preds = %if.end39
  %44 = load double, double* %x.addr, align 8, !dbg !659
  %call42 = call double @__ieee754_log(double %44), !dbg !661
  %mul43 = fmul double 0x3FE45F306DC9C883, %call42, !dbg !662
  %add44 = fadd double 0xBFB2E4D699CBD01F, %mul43, !dbg !663
  store double %add44, double* %retval, align 8, !dbg !664
  br label %return, !dbg !664

if.end45:                                         ; preds = %if.end39
  %45 = load double, double* %x.addr, align 8, !dbg !665
  %46 = load double, double* %x.addr, align 8, !dbg !666
  %mul46 = fmul double %45, %46, !dbg !667
  store double %mul46, double* %z, align 8, !dbg !668
  %47 = load double, double* %z, align 8, !dbg !669
  %48 = load double, double* %z, align 8, !dbg !670
  %49 = load double, double* %z, align 8, !dbg !671
  %50 = load double, double* %z, align 8, !dbg !672
  %51 = load double, double* %z, align 8, !dbg !673
  %52 = load double, double* %z, align 8, !dbg !674
  %mul47 = fmul double %52, 0xBDC5E43D693FB3C8, !dbg !675
  %add48 = fadd double 0x3E5500573B4EABD4, %mul47, !dbg !676
  %mul49 = fmul double %51, %add48, !dbg !677
  %add50 = fadd double 0xBECFFEA773D25CAD, %mul49, !dbg !678
  %mul51 = fmul double %50, %add50, !dbg !679
  %add52 = fadd double 0x3F36C54D20B29B6B, %mul51, !dbg !680
  %mul53 = fmul double %49, %add52, !dbg !681
  %add54 = fadd double 0xBF8C4CE8B16CFA97, %mul53, !dbg !682
  %mul55 = fmul double %48, %add54, !dbg !683
  %add56 = fadd double 0x3FC69D019DE9E3FC, %mul55, !dbg !684
  %mul57 = fmul double %47, %add56, !dbg !685
  %add58 = fadd double 0xBFB2E4D699CBD01F, %mul57, !dbg !686
  store double %add58, double* %u, align 8, !dbg !687
  %53 = load double, double* %z, align 8, !dbg !688
  %54 = load double, double* %z, align 8, !dbg !689
  %55 = load double, double* %z, align 8, !dbg !690
  %56 = load double, double* %z, align 8, !dbg !691
  %mul59 = fmul double %56, 0x3DFE50183BD6D9EF, !dbg !692
  %add60 = fadd double 0x3E91642D7FF202FD, %mul59, !dbg !693
  %mul61 = fmul double %55, %add60, !dbg !694
  %add62 = fadd double 0x3F13ECBBF578C6C1, %mul61, !dbg !695
  %mul63 = fmul double %54, %add62, !dbg !696
  %add64 = fadd double 0x3F8A127091C9C71A, %mul63, !dbg !697
  %mul65 = fmul double %53, %add64, !dbg !698
  %add66 = fadd double 1.000000e+00, %mul65, !dbg !699
  store double %add66, double* %v, align 8, !dbg !700
  %57 = load double, double* %u, align 8, !dbg !701
  %58 = load double, double* %v, align 8, !dbg !702
  %div67 = fdiv double %57, %58, !dbg !703
  %59 = load double, double* %x.addr, align 8, !dbg !704
  %call68 = call double @__ieee754_j0(double %59), !dbg !705
  %60 = load double, double* %x.addr, align 8, !dbg !706
  %call69 = call double @__ieee754_log(double %60), !dbg !707
  %mul70 = fmul double %call68, %call69, !dbg !708
  %mul71 = fmul double 0x3FE45F306DC9C883, %mul70, !dbg !709
  %add72 = fadd double %div67, %mul71, !dbg !710
  store double %add72, double* %retval, align 8, !dbg !711
  br label %return, !dbg !711

return:                                           ; preds = %if.end45, %if.then41, %if.end38, %if.then6, %if.then2, %if.then
  %61 = load double, double* %retval, align 8, !dbg !712
  ret double %61, !dbg !712
}

declare dso_local double @__ieee754_log(double) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !713 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !716, metadata !DIExpression()), !dbg !717
  %0 = bitcast double* %a0 to i8*, !dbg !718
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !719
  call void @llvm.dbg.declare(metadata double* %r, metadata !720, metadata !DIExpression()), !dbg !721
  %1 = load double, double* %a0, align 8, !dbg !722
  %call = call double @__ieee754_j0(double %1), !dbg !723
  store double %call, double* %r, align 8, !dbg !721
  ret i32 0, !dbg !724
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "zero", scope: !2, file: !11, line: 86, type: !13, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "e_j0.c", directory: "/home/klee/logic_bombs/fdlibm")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !0, !58, !63, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!10 = distinct !DIGlobalVariable(name: "one", scope: !2, file: !11, line: 73, type: !12, isLocal: true, isDefinition: true)
!11 = !DIFile(filename: "./e_j0.c", directory: "/home/klee/logic_bombs/fdlibm")
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4603256987541740397, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "invsqrtpi", scope: !2, file: !11, line: 74, type: !12, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "huge", scope: !2, file: !11, line: 72, type: !12, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 4580160821035794429, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "R02", scope: !2, file: !11, line: 77, type: !12, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 13774513059711862505, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "R03", scope: !2, file: !11, line: 78, type: !12, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 4521246587339421977, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "R04", scope: !2, file: !11, line: 79, type: !12, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression(DW_OP_constu, 13705533281076133838, DW_OP_stack_value))
!25 = distinct !DIGlobalVariable(name: "R05", scope: !2, file: !11, line: 80, type: !12, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression(DW_OP_constu, 4580157421615891108, DW_OP_stack_value))
!27 = distinct !DIGlobalVariable(name: "S01", scope: !2, file: !11, line: 81, type: !12, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression(DW_OP_constu, 4548256098277645300, DW_OP_stack_value))
!29 = distinct !DIGlobalVariable(name: "S02", scope: !2, file: !11, line: 82, type: !12, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression(DW_OP_constu, 4512953537030051241, DW_OP_stack_value))
!31 = distinct !DIGlobalVariable(name: "S03", scope: !2, file: !11, line: 83, type: !12, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression(DW_OP_constu, 4473209937533885839, DW_OP_stack_value))
!33 = distinct !DIGlobalVariable(name: "S04", scope: !2, file: !11, line: 84, type: !12, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression(DW_OP_constu, 13813354617453137951, DW_OP_stack_value))
!35 = distinct !DIGlobalVariable(name: "u00", scope: !2, file: !11, line: 145, type: !12, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression(DW_OP_constu, 4603909380684499075, DW_OP_stack_value))
!37 = distinct !DIGlobalVariable(name: "tpi", scope: !2, file: !11, line: 75, type: !12, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression(DW_OP_constu, 4595533100048049148, DW_OP_stack_value))
!39 = distinct !DIGlobalVariable(name: "u01", scope: !2, file: !11, line: 146, type: !12, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression(DW_OP_constu, 13802491520276560535, DW_OP_stack_value))
!41 = distinct !DIGlobalVariable(name: "u02", scope: !2, file: !11, line: 147, type: !12, isLocal: true, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression(DW_OP_constu, 4555045008183565163, DW_OP_stack_value))
!43 = distinct !DIGlobalVariable(name: "u03", scope: !2, file: !11, line: 148, type: !12, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression(DW_OP_constu, 13749488182541573293, DW_OP_stack_value))
!45 = distinct !DIGlobalVariable(name: "u04", scope: !2, file: !11, line: 149, type: !12, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression(DW_OP_constu, 4491496578029104084, DW_OP_stack_value))
!47 = distinct !DIGlobalVariable(name: "u05", scope: !2, file: !11, line: 150, type: !12, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression(DW_OP_constu, 13674586795990299592, DW_OP_stack_value))
!49 = distinct !DIGlobalVariable(name: "u06", scope: !2, file: !11, line: 151, type: !12, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression(DW_OP_constu, 4578492245867087642, DW_OP_stack_value))
!51 = distinct !DIGlobalVariable(name: "v01", scope: !2, file: !11, line: 152, type: !12, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression(DW_OP_constu, 4545236740968335041, DW_OP_stack_value))
!53 = distinct !DIGlobalVariable(name: "v02", scope: !2, file: !11, line: 153, type: !12, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression(DW_OP_constu, 4508494848557449981, DW_OP_stack_value))
!55 = distinct !DIGlobalVariable(name: "v03", scope: !2, file: !11, line: 154, type: !12, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression(DW_OP_constu, 4467095945411484143, DW_OP_stack_value))
!57 = distinct !DIGlobalVariable(name: "v04", scope: !2, file: !11, line: 155, type: !12, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "pR8", scope: !2, file: !11, line: 225, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 384, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 6)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "pS8", scope: !2, file: !11, line: 237, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 320, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 5)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "pR5", scope: !2, file: !11, line: 249, type: !60, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "pS5", scope: !2, file: !11, line: 261, type: !65, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "pR3", scope: !2, file: !11, line: 273, type: !60, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "pS3", scope: !2, file: !11, line: 285, type: !65, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "pR2", scope: !2, file: !11, line: 297, type: !60, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "pS2", scope: !2, file: !11, line: 309, type: !65, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "qR8", scope: !2, file: !11, line: 356, type: !60, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "qS8", scope: !2, file: !11, line: 368, type: !60, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "qR5", scope: !2, file: !11, line: 381, type: !60, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "qS5", scope: !2, file: !11, line: 393, type: !60, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "qR3", scope: !2, file: !11, line: 406, type: !60, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "qS3", scope: !2, file: !11, line: 418, type: !60, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "qR2", scope: !2, file: !11, line: 431, type: !60, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "qS2", scope: !2, file: !11, line: 443, type: !60, isLocal: true, isDefinition: true)
!96 = !{i32 7, !"Dwarf Version", i32 4}
!97 = !{i32 2, !"Debug Info Version", i32 3}
!98 = !{i32 1, !"wchar_size", i32 4}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!102 = distinct !DISubprogram(name: "__ieee754_j0", scope: !11, file: !11, line: 89, type: !103, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!103 = !DISubroutineType(types: !104)
!104 = !{!13, !13}
!105 = !DILocalVariable(name: "x", arg: 1, scope: !102, file: !11, line: 89, type: !13)
!106 = !DILocation(line: 89, column: 29, scope: !102)
!107 = !DILocalVariable(name: "z", scope: !102, file: !11, line: 95, type: !13)
!108 = !DILocation(line: 95, column: 9, scope: !102)
!109 = !DILocalVariable(name: "s", scope: !102, file: !11, line: 95, type: !13)
!110 = !DILocation(line: 95, column: 12, scope: !102)
!111 = !DILocalVariable(name: "c", scope: !102, file: !11, line: 95, type: !13)
!112 = !DILocation(line: 95, column: 14, scope: !102)
!113 = !DILocalVariable(name: "ss", scope: !102, file: !11, line: 95, type: !13)
!114 = !DILocation(line: 95, column: 16, scope: !102)
!115 = !DILocalVariable(name: "cc", scope: !102, file: !11, line: 95, type: !13)
!116 = !DILocation(line: 95, column: 19, scope: !102)
!117 = !DILocalVariable(name: "r", scope: !102, file: !11, line: 95, type: !13)
!118 = !DILocation(line: 95, column: 22, scope: !102)
!119 = !DILocalVariable(name: "u", scope: !102, file: !11, line: 95, type: !13)
!120 = !DILocation(line: 95, column: 24, scope: !102)
!121 = !DILocalVariable(name: "v", scope: !102, file: !11, line: 95, type: !13)
!122 = !DILocation(line: 95, column: 26, scope: !102)
!123 = !DILocalVariable(name: "hx", scope: !102, file: !11, line: 96, type: !7)
!124 = !DILocation(line: 96, column: 6, scope: !102)
!125 = !DILocalVariable(name: "ix", scope: !102, file: !11, line: 96, type: !7)
!126 = !DILocation(line: 96, column: 9, scope: !102)
!127 = !DILocation(line: 98, column: 7, scope: !102)
!128 = !DILocation(line: 98, column: 5, scope: !102)
!129 = !DILocation(line: 99, column: 7, scope: !102)
!130 = !DILocation(line: 99, column: 9, scope: !102)
!131 = !DILocation(line: 99, column: 5, scope: !102)
!132 = !DILocation(line: 100, column: 5, scope: !133)
!133 = distinct !DILexicalBlock(scope: !102, file: !11, line: 100, column: 5)
!134 = !DILocation(line: 100, column: 7, scope: !133)
!135 = !DILocation(line: 100, column: 5, scope: !102)
!136 = !DILocation(line: 100, column: 33, scope: !133)
!137 = !DILocation(line: 100, column: 35, scope: !133)
!138 = !DILocation(line: 100, column: 34, scope: !133)
!139 = !DILocation(line: 100, column: 31, scope: !133)
!140 = !DILocation(line: 100, column: 21, scope: !133)
!141 = !DILocation(line: 101, column: 11, scope: !102)
!142 = !DILocation(line: 101, column: 6, scope: !102)
!143 = !DILocation(line: 101, column: 4, scope: !102)
!144 = !DILocation(line: 102, column: 5, scope: !145)
!145 = distinct !DILexicalBlock(scope: !102, file: !11, line: 102, column: 5)
!146 = !DILocation(line: 102, column: 8, scope: !145)
!147 = !DILocation(line: 102, column: 5, scope: !102)
!148 = !DILocation(line: 103, column: 11, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !11, line: 102, column: 23)
!150 = !DILocation(line: 103, column: 7, scope: !149)
!151 = !DILocation(line: 103, column: 5, scope: !149)
!152 = !DILocation(line: 104, column: 11, scope: !149)
!153 = !DILocation(line: 104, column: 7, scope: !149)
!154 = !DILocation(line: 104, column: 5, scope: !149)
!155 = !DILocation(line: 105, column: 8, scope: !149)
!156 = !DILocation(line: 105, column: 10, scope: !149)
!157 = !DILocation(line: 105, column: 9, scope: !149)
!158 = !DILocation(line: 105, column: 6, scope: !149)
!159 = !DILocation(line: 106, column: 8, scope: !149)
!160 = !DILocation(line: 106, column: 10, scope: !149)
!161 = !DILocation(line: 106, column: 9, scope: !149)
!162 = !DILocation(line: 106, column: 6, scope: !149)
!163 = !DILocation(line: 107, column: 6, scope: !164)
!164 = distinct !DILexicalBlock(scope: !149, file: !11, line: 107, column: 6)
!165 = !DILocation(line: 107, column: 8, scope: !164)
!166 = !DILocation(line: 107, column: 6, scope: !149)
!167 = !DILocation(line: 108, column: 16, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !11, line: 107, column: 21)
!169 = !DILocation(line: 108, column: 18, scope: !168)
!170 = !DILocation(line: 108, column: 17, scope: !168)
!171 = !DILocation(line: 108, column: 12, scope: !168)
!172 = !DILocation(line: 108, column: 11, scope: !168)
!173 = !DILocation(line: 108, column: 9, scope: !168)
!174 = !DILocation(line: 109, column: 12, scope: !175)
!175 = distinct !DILexicalBlock(scope: !168, file: !11, line: 109, column: 11)
!176 = !DILocation(line: 109, column: 14, scope: !175)
!177 = !DILocation(line: 109, column: 13, scope: !175)
!178 = !DILocation(line: 109, column: 17, scope: !175)
!179 = !DILocation(line: 109, column: 16, scope: !175)
!180 = !DILocation(line: 109, column: 11, scope: !168)
!181 = !DILocation(line: 109, column: 28, scope: !175)
!182 = !DILocation(line: 109, column: 30, scope: !175)
!183 = !DILocation(line: 109, column: 29, scope: !175)
!184 = !DILocation(line: 109, column: 26, scope: !175)
!185 = !DILocation(line: 109, column: 23, scope: !175)
!186 = !DILocation(line: 110, column: 22, scope: !175)
!187 = !DILocation(line: 110, column: 24, scope: !175)
!188 = !DILocation(line: 110, column: 23, scope: !175)
!189 = !DILocation(line: 110, column: 20, scope: !175)
!190 = !DILocation(line: 111, column: 3, scope: !168)
!191 = !DILocation(line: 116, column: 6, scope: !192)
!192 = distinct !DILexicalBlock(scope: !149, file: !11, line: 116, column: 6)
!193 = !DILocation(line: 116, column: 8, scope: !192)
!194 = !DILocation(line: 116, column: 6, scope: !149)
!195 = !DILocation(line: 116, column: 36, scope: !192)
!196 = !DILocation(line: 116, column: 35, scope: !192)
!197 = !DILocation(line: 116, column: 45, scope: !192)
!198 = !DILocation(line: 116, column: 40, scope: !192)
!199 = !DILocation(line: 116, column: 39, scope: !192)
!200 = !DILocation(line: 116, column: 23, scope: !192)
!201 = !DILocation(line: 116, column: 21, scope: !192)
!202 = !DILocation(line: 118, column: 17, scope: !203)
!203 = distinct !DILexicalBlock(scope: !192, file: !11, line: 117, column: 8)
!204 = !DILocation(line: 118, column: 11, scope: !203)
!205 = !DILocation(line: 118, column: 9, scope: !203)
!206 = !DILocation(line: 118, column: 31, scope: !203)
!207 = !DILocation(line: 118, column: 25, scope: !203)
!208 = !DILocation(line: 118, column: 23, scope: !203)
!209 = !DILocation(line: 119, column: 22, scope: !203)
!210 = !DILocation(line: 119, column: 24, scope: !203)
!211 = !DILocation(line: 119, column: 23, scope: !203)
!212 = !DILocation(line: 119, column: 27, scope: !203)
!213 = !DILocation(line: 119, column: 29, scope: !203)
!214 = !DILocation(line: 119, column: 28, scope: !203)
!215 = !DILocation(line: 119, column: 26, scope: !203)
!216 = !DILocation(line: 119, column: 20, scope: !203)
!217 = !DILocation(line: 119, column: 38, scope: !203)
!218 = !DILocation(line: 119, column: 33, scope: !203)
!219 = !DILocation(line: 119, column: 32, scope: !203)
!220 = !DILocation(line: 119, column: 9, scope: !203)
!221 = !DILocation(line: 121, column: 10, scope: !149)
!222 = !DILocation(line: 121, column: 3, scope: !149)
!223 = !DILocation(line: 123, column: 5, scope: !224)
!224 = distinct !DILexicalBlock(scope: !102, file: !11, line: 123, column: 5)
!225 = !DILocation(line: 123, column: 7, scope: !224)
!226 = !DILocation(line: 123, column: 5, scope: !102)
!227 = !DILocation(line: 124, column: 14, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !11, line: 124, column: 9)
!229 = distinct !DILexicalBlock(scope: !224, file: !11, line: 123, column: 20)
!230 = !DILocation(line: 124, column: 13, scope: !228)
!231 = !DILocation(line: 124, column: 15, scope: !228)
!232 = !DILocation(line: 124, column: 9, scope: !229)
!233 = !DILocation(line: 125, column: 13, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !11, line: 125, column: 13)
!235 = distinct !DILexicalBlock(scope: !228, file: !11, line: 124, column: 21)
!236 = !DILocation(line: 125, column: 15, scope: !234)
!237 = !DILocation(line: 125, column: 13, scope: !235)
!238 = !DILocation(line: 125, column: 28, scope: !234)
!239 = !DILocation(line: 126, column: 40, scope: !234)
!240 = !DILocation(line: 126, column: 39, scope: !234)
!241 = !DILocation(line: 126, column: 42, scope: !234)
!242 = !DILocation(line: 126, column: 41, scope: !234)
!243 = !DILocation(line: 126, column: 33, scope: !234)
!244 = !DILocation(line: 126, column: 22, scope: !234)
!245 = !DILocation(line: 128, column: 2, scope: !229)
!246 = !DILocation(line: 129, column: 6, scope: !102)
!247 = !DILocation(line: 129, column: 8, scope: !102)
!248 = !DILocation(line: 129, column: 7, scope: !102)
!249 = !DILocation(line: 129, column: 4, scope: !102)
!250 = !DILocation(line: 130, column: 7, scope: !102)
!251 = !DILocation(line: 130, column: 14, scope: !102)
!252 = !DILocation(line: 130, column: 21, scope: !102)
!253 = !DILocation(line: 130, column: 28, scope: !102)
!254 = !DILocation(line: 130, column: 29, scope: !102)
!255 = !DILocation(line: 130, column: 27, scope: !102)
!256 = !DILocation(line: 130, column: 22, scope: !102)
!257 = !DILocation(line: 130, column: 20, scope: !102)
!258 = !DILocation(line: 130, column: 15, scope: !102)
!259 = !DILocation(line: 130, column: 13, scope: !102)
!260 = !DILocation(line: 130, column: 8, scope: !102)
!261 = !DILocation(line: 130, column: 4, scope: !102)
!262 = !DILocation(line: 131, column: 11, scope: !102)
!263 = !DILocation(line: 131, column: 18, scope: !102)
!264 = !DILocation(line: 131, column: 25, scope: !102)
!265 = !DILocation(line: 131, column: 32, scope: !102)
!266 = !DILocation(line: 131, column: 33, scope: !102)
!267 = !DILocation(line: 131, column: 31, scope: !102)
!268 = !DILocation(line: 131, column: 26, scope: !102)
!269 = !DILocation(line: 131, column: 24, scope: !102)
!270 = !DILocation(line: 131, column: 19, scope: !102)
!271 = !DILocation(line: 131, column: 17, scope: !102)
!272 = !DILocation(line: 131, column: 12, scope: !102)
!273 = !DILocation(line: 131, column: 10, scope: !102)
!274 = !DILocation(line: 131, column: 4, scope: !102)
!275 = !DILocation(line: 132, column: 5, scope: !276)
!276 = distinct !DILexicalBlock(scope: !102, file: !11, line: 132, column: 5)
!277 = !DILocation(line: 132, column: 8, scope: !276)
!278 = !DILocation(line: 132, column: 5, scope: !102)
!279 = !DILocation(line: 133, column: 19, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !11, line: 132, column: 22)
!281 = !DILocation(line: 133, column: 29, scope: !280)
!282 = !DILocation(line: 133, column: 31, scope: !280)
!283 = !DILocation(line: 133, column: 30, scope: !280)
!284 = !DILocation(line: 133, column: 27, scope: !280)
!285 = !DILocation(line: 133, column: 20, scope: !280)
!286 = !DILocation(line: 133, column: 17, scope: !280)
!287 = !DILocation(line: 133, column: 6, scope: !280)
!288 = !DILocation(line: 135, column: 14, scope: !289)
!289 = distinct !DILexicalBlock(scope: !276, file: !11, line: 134, column: 9)
!290 = !DILocation(line: 135, column: 13, scope: !289)
!291 = !DILocation(line: 135, column: 8, scope: !289)
!292 = !DILocation(line: 136, column: 18, scope: !289)
!293 = !DILocation(line: 136, column: 17, scope: !289)
!294 = !DILocation(line: 136, column: 26, scope: !289)
!295 = !DILocation(line: 136, column: 25, scope: !289)
!296 = !DILocation(line: 136, column: 20, scope: !289)
!297 = !DILocation(line: 136, column: 29, scope: !289)
!298 = !DILocation(line: 136, column: 32, scope: !289)
!299 = !DILocation(line: 136, column: 34, scope: !289)
!300 = !DILocation(line: 136, column: 33, scope: !289)
!301 = !DILocation(line: 136, column: 30, scope: !289)
!302 = !DILocation(line: 136, column: 28, scope: !289)
!303 = !DILocation(line: 136, column: 6, scope: !289)
!304 = !DILocation(line: 138, column: 1, scope: !102)
!305 = distinct !DISubprogram(name: "pzero", scope: !11, file: !11, line: 321, type: !103, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!306 = !DILocalVariable(name: "x", arg: 1, scope: !305, file: !11, line: 321, type: !13)
!307 = !DILocation(line: 321, column: 29, scope: !305)
!308 = !DILocalVariable(name: "p", scope: !305, file: !11, line: 328, type: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!310 = !DILocation(line: 328, column: 16, scope: !305)
!311 = !DILocalVariable(name: "q", scope: !305, file: !11, line: 328, type: !309)
!312 = !DILocation(line: 328, column: 19, scope: !305)
!313 = !DILocalVariable(name: "z", scope: !305, file: !11, line: 332, type: !13)
!314 = !DILocation(line: 332, column: 9, scope: !305)
!315 = !DILocalVariable(name: "r", scope: !305, file: !11, line: 332, type: !13)
!316 = !DILocation(line: 332, column: 11, scope: !305)
!317 = !DILocalVariable(name: "s", scope: !305, file: !11, line: 332, type: !13)
!318 = !DILocation(line: 332, column: 13, scope: !305)
!319 = !DILocalVariable(name: "ix", scope: !305, file: !11, line: 333, type: !7)
!320 = !DILocation(line: 333, column: 6, scope: !305)
!321 = !DILocation(line: 334, column: 18, scope: !305)
!322 = !DILocation(line: 334, column: 17, scope: !305)
!323 = !DILocation(line: 334, column: 5, scope: !305)
!324 = !DILocation(line: 335, column: 5, scope: !325)
!325 = distinct !DILexicalBlock(scope: !305, file: !11, line: 335, column: 5)
!326 = !DILocation(line: 335, column: 7, scope: !325)
!327 = !DILocation(line: 335, column: 5, scope: !305)
!328 = !DILocation(line: 335, column: 28, scope: !329)
!329 = distinct !DILexicalBlock(scope: !325, file: !11, line: 335, column: 25)
!330 = !DILocation(line: 335, column: 36, scope: !329)
!331 = !DILocation(line: 335, column: 42, scope: !329)
!332 = !DILocation(line: 336, column: 10, scope: !333)
!333 = distinct !DILexicalBlock(scope: !325, file: !11, line: 336, column: 10)
!334 = !DILocation(line: 336, column: 12, scope: !333)
!335 = !DILocation(line: 336, column: 10, scope: !325)
!336 = !DILocation(line: 336, column: 28, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !11, line: 336, column: 25)
!338 = !DILocation(line: 336, column: 36, scope: !337)
!339 = !DILocation(line: 336, column: 42, scope: !337)
!340 = !DILocation(line: 337, column: 10, scope: !341)
!341 = distinct !DILexicalBlock(scope: !333, file: !11, line: 337, column: 10)
!342 = !DILocation(line: 337, column: 12, scope: !341)
!343 = !DILocation(line: 337, column: 10, scope: !333)
!344 = !DILocation(line: 337, column: 28, scope: !345)
!345 = distinct !DILexicalBlock(scope: !341, file: !11, line: 337, column: 25)
!346 = !DILocation(line: 337, column: 36, scope: !345)
!347 = !DILocation(line: 337, column: 42, scope: !345)
!348 = !DILocation(line: 338, column: 10, scope: !349)
!349 = distinct !DILexicalBlock(scope: !341, file: !11, line: 338, column: 10)
!350 = !DILocation(line: 338, column: 12, scope: !349)
!351 = !DILocation(line: 338, column: 10, scope: !341)
!352 = !DILocation(line: 338, column: 28, scope: !353)
!353 = distinct !DILexicalBlock(scope: !349, file: !11, line: 338, column: 25)
!354 = !DILocation(line: 338, column: 36, scope: !353)
!355 = !DILocation(line: 338, column: 42, scope: !353)
!356 = !DILocation(line: 339, column: 11, scope: !305)
!357 = !DILocation(line: 339, column: 13, scope: !305)
!358 = !DILocation(line: 339, column: 12, scope: !305)
!359 = !DILocation(line: 339, column: 9, scope: !305)
!360 = !DILocation(line: 339, column: 4, scope: !305)
!361 = !DILocation(line: 340, column: 6, scope: !305)
!362 = !DILocation(line: 340, column: 11, scope: !305)
!363 = !DILocation(line: 340, column: 14, scope: !305)
!364 = !DILocation(line: 340, column: 19, scope: !305)
!365 = !DILocation(line: 340, column: 22, scope: !305)
!366 = !DILocation(line: 340, column: 27, scope: !305)
!367 = !DILocation(line: 340, column: 30, scope: !305)
!368 = !DILocation(line: 340, column: 35, scope: !305)
!369 = !DILocation(line: 340, column: 38, scope: !305)
!370 = !DILocation(line: 340, column: 43, scope: !305)
!371 = !DILocation(line: 340, column: 45, scope: !305)
!372 = !DILocation(line: 340, column: 44, scope: !305)
!373 = !DILocation(line: 340, column: 42, scope: !305)
!374 = !DILocation(line: 340, column: 36, scope: !305)
!375 = !DILocation(line: 340, column: 34, scope: !305)
!376 = !DILocation(line: 340, column: 28, scope: !305)
!377 = !DILocation(line: 340, column: 26, scope: !305)
!378 = !DILocation(line: 340, column: 20, scope: !305)
!379 = !DILocation(line: 340, column: 18, scope: !305)
!380 = !DILocation(line: 340, column: 12, scope: !305)
!381 = !DILocation(line: 340, column: 10, scope: !305)
!382 = !DILocation(line: 340, column: 4, scope: !305)
!383 = !DILocation(line: 341, column: 10, scope: !305)
!384 = !DILocation(line: 341, column: 13, scope: !305)
!385 = !DILocation(line: 341, column: 18, scope: !305)
!386 = !DILocation(line: 341, column: 21, scope: !305)
!387 = !DILocation(line: 341, column: 26, scope: !305)
!388 = !DILocation(line: 341, column: 29, scope: !305)
!389 = !DILocation(line: 341, column: 34, scope: !305)
!390 = !DILocation(line: 341, column: 37, scope: !305)
!391 = !DILocation(line: 341, column: 42, scope: !305)
!392 = !DILocation(line: 341, column: 44, scope: !305)
!393 = !DILocation(line: 341, column: 43, scope: !305)
!394 = !DILocation(line: 341, column: 41, scope: !305)
!395 = !DILocation(line: 341, column: 35, scope: !305)
!396 = !DILocation(line: 341, column: 33, scope: !305)
!397 = !DILocation(line: 341, column: 27, scope: !305)
!398 = !DILocation(line: 341, column: 25, scope: !305)
!399 = !DILocation(line: 341, column: 19, scope: !305)
!400 = !DILocation(line: 341, column: 17, scope: !305)
!401 = !DILocation(line: 341, column: 11, scope: !305)
!402 = !DILocation(line: 341, column: 9, scope: !305)
!403 = !DILocation(line: 341, column: 4, scope: !305)
!404 = !DILocation(line: 342, column: 14, scope: !305)
!405 = !DILocation(line: 342, column: 16, scope: !305)
!406 = !DILocation(line: 342, column: 15, scope: !305)
!407 = !DILocation(line: 342, column: 12, scope: !305)
!408 = !DILocation(line: 342, column: 2, scope: !305)
!409 = distinct !DISubprogram(name: "qzero", scope: !11, file: !11, line: 456, type: !103, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!410 = !DILocalVariable(name: "x", arg: 1, scope: !409, file: !11, line: 456, type: !13)
!411 = !DILocation(line: 456, column: 29, scope: !409)
!412 = !DILocalVariable(name: "p", scope: !409, file: !11, line: 463, type: !309)
!413 = !DILocation(line: 463, column: 16, scope: !409)
!414 = !DILocalVariable(name: "q", scope: !409, file: !11, line: 463, type: !309)
!415 = !DILocation(line: 463, column: 19, scope: !409)
!416 = !DILocalVariable(name: "s", scope: !409, file: !11, line: 467, type: !13)
!417 = !DILocation(line: 467, column: 9, scope: !409)
!418 = !DILocalVariable(name: "r", scope: !409, file: !11, line: 467, type: !13)
!419 = !DILocation(line: 467, column: 11, scope: !409)
!420 = !DILocalVariable(name: "z", scope: !409, file: !11, line: 467, type: !13)
!421 = !DILocation(line: 467, column: 13, scope: !409)
!422 = !DILocalVariable(name: "ix", scope: !409, file: !11, line: 468, type: !7)
!423 = !DILocation(line: 468, column: 6, scope: !409)
!424 = !DILocation(line: 469, column: 18, scope: !409)
!425 = !DILocation(line: 469, column: 17, scope: !409)
!426 = !DILocation(line: 469, column: 5, scope: !409)
!427 = !DILocation(line: 470, column: 5, scope: !428)
!428 = distinct !DILexicalBlock(scope: !409, file: !11, line: 470, column: 5)
!429 = !DILocation(line: 470, column: 7, scope: !428)
!430 = !DILocation(line: 470, column: 5, scope: !409)
!431 = !DILocation(line: 470, column: 28, scope: !432)
!432 = distinct !DILexicalBlock(scope: !428, file: !11, line: 470, column: 25)
!433 = !DILocation(line: 470, column: 36, scope: !432)
!434 = !DILocation(line: 470, column: 42, scope: !432)
!435 = !DILocation(line: 471, column: 10, scope: !436)
!436 = distinct !DILexicalBlock(scope: !428, file: !11, line: 471, column: 10)
!437 = !DILocation(line: 471, column: 12, scope: !436)
!438 = !DILocation(line: 471, column: 10, scope: !428)
!439 = !DILocation(line: 471, column: 28, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !11, line: 471, column: 25)
!441 = !DILocation(line: 471, column: 36, scope: !440)
!442 = !DILocation(line: 471, column: 42, scope: !440)
!443 = !DILocation(line: 472, column: 10, scope: !444)
!444 = distinct !DILexicalBlock(scope: !436, file: !11, line: 472, column: 10)
!445 = !DILocation(line: 472, column: 12, scope: !444)
!446 = !DILocation(line: 472, column: 10, scope: !436)
!447 = !DILocation(line: 472, column: 28, scope: !448)
!448 = distinct !DILexicalBlock(scope: !444, file: !11, line: 472, column: 25)
!449 = !DILocation(line: 472, column: 36, scope: !448)
!450 = !DILocation(line: 472, column: 42, scope: !448)
!451 = !DILocation(line: 473, column: 10, scope: !452)
!452 = distinct !DILexicalBlock(scope: !444, file: !11, line: 473, column: 10)
!453 = !DILocation(line: 473, column: 12, scope: !452)
!454 = !DILocation(line: 473, column: 10, scope: !444)
!455 = !DILocation(line: 473, column: 28, scope: !456)
!456 = distinct !DILexicalBlock(scope: !452, file: !11, line: 473, column: 25)
!457 = !DILocation(line: 473, column: 36, scope: !456)
!458 = !DILocation(line: 473, column: 42, scope: !456)
!459 = !DILocation(line: 474, column: 11, scope: !409)
!460 = !DILocation(line: 474, column: 13, scope: !409)
!461 = !DILocation(line: 474, column: 12, scope: !409)
!462 = !DILocation(line: 474, column: 9, scope: !409)
!463 = !DILocation(line: 474, column: 4, scope: !409)
!464 = !DILocation(line: 475, column: 6, scope: !409)
!465 = !DILocation(line: 475, column: 11, scope: !409)
!466 = !DILocation(line: 475, column: 14, scope: !409)
!467 = !DILocation(line: 475, column: 19, scope: !409)
!468 = !DILocation(line: 475, column: 22, scope: !409)
!469 = !DILocation(line: 475, column: 27, scope: !409)
!470 = !DILocation(line: 475, column: 30, scope: !409)
!471 = !DILocation(line: 475, column: 35, scope: !409)
!472 = !DILocation(line: 475, column: 38, scope: !409)
!473 = !DILocation(line: 475, column: 43, scope: !409)
!474 = !DILocation(line: 475, column: 45, scope: !409)
!475 = !DILocation(line: 475, column: 44, scope: !409)
!476 = !DILocation(line: 475, column: 42, scope: !409)
!477 = !DILocation(line: 475, column: 36, scope: !409)
!478 = !DILocation(line: 475, column: 34, scope: !409)
!479 = !DILocation(line: 475, column: 28, scope: !409)
!480 = !DILocation(line: 475, column: 26, scope: !409)
!481 = !DILocation(line: 475, column: 20, scope: !409)
!482 = !DILocation(line: 475, column: 18, scope: !409)
!483 = !DILocation(line: 475, column: 12, scope: !409)
!484 = !DILocation(line: 475, column: 10, scope: !409)
!485 = !DILocation(line: 475, column: 4, scope: !409)
!486 = !DILocation(line: 476, column: 10, scope: !409)
!487 = !DILocation(line: 476, column: 13, scope: !409)
!488 = !DILocation(line: 476, column: 18, scope: !409)
!489 = !DILocation(line: 476, column: 21, scope: !409)
!490 = !DILocation(line: 476, column: 26, scope: !409)
!491 = !DILocation(line: 476, column: 29, scope: !409)
!492 = !DILocation(line: 476, column: 34, scope: !409)
!493 = !DILocation(line: 476, column: 37, scope: !409)
!494 = !DILocation(line: 476, column: 42, scope: !409)
!495 = !DILocation(line: 476, column: 45, scope: !409)
!496 = !DILocation(line: 476, column: 50, scope: !409)
!497 = !DILocation(line: 476, column: 52, scope: !409)
!498 = !DILocation(line: 476, column: 51, scope: !409)
!499 = !DILocation(line: 476, column: 49, scope: !409)
!500 = !DILocation(line: 476, column: 43, scope: !409)
!501 = !DILocation(line: 476, column: 41, scope: !409)
!502 = !DILocation(line: 476, column: 35, scope: !409)
!503 = !DILocation(line: 476, column: 33, scope: !409)
!504 = !DILocation(line: 476, column: 27, scope: !409)
!505 = !DILocation(line: 476, column: 25, scope: !409)
!506 = !DILocation(line: 476, column: 19, scope: !409)
!507 = !DILocation(line: 476, column: 17, scope: !409)
!508 = !DILocation(line: 476, column: 11, scope: !409)
!509 = !DILocation(line: 476, column: 9, scope: !409)
!510 = !DILocation(line: 476, column: 4, scope: !409)
!511 = !DILocation(line: 477, column: 18, scope: !409)
!512 = !DILocation(line: 477, column: 20, scope: !409)
!513 = !DILocation(line: 477, column: 19, scope: !409)
!514 = !DILocation(line: 477, column: 16, scope: !409)
!515 = !DILocation(line: 477, column: 23, scope: !409)
!516 = !DILocation(line: 477, column: 22, scope: !409)
!517 = !DILocation(line: 477, column: 2, scope: !409)
!518 = distinct !DISubprogram(name: "__ieee754_y0", scope: !11, file: !11, line: 158, type: !103, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!519 = !DILocalVariable(name: "x", arg: 1, scope: !518, file: !11, line: 158, type: !13)
!520 = !DILocation(line: 158, column: 29, scope: !518)
!521 = !DILocalVariable(name: "z", scope: !518, file: !11, line: 164, type: !13)
!522 = !DILocation(line: 164, column: 9, scope: !518)
!523 = !DILocalVariable(name: "s", scope: !518, file: !11, line: 164, type: !13)
!524 = !DILocation(line: 164, column: 12, scope: !518)
!525 = !DILocalVariable(name: "c", scope: !518, file: !11, line: 164, type: !13)
!526 = !DILocation(line: 164, column: 14, scope: !518)
!527 = !DILocalVariable(name: "ss", scope: !518, file: !11, line: 164, type: !13)
!528 = !DILocation(line: 164, column: 16, scope: !518)
!529 = !DILocalVariable(name: "cc", scope: !518, file: !11, line: 164, type: !13)
!530 = !DILocation(line: 164, column: 19, scope: !518)
!531 = !DILocalVariable(name: "u", scope: !518, file: !11, line: 164, type: !13)
!532 = !DILocation(line: 164, column: 22, scope: !518)
!533 = !DILocalVariable(name: "v", scope: !518, file: !11, line: 164, type: !13)
!534 = !DILocation(line: 164, column: 24, scope: !518)
!535 = !DILocalVariable(name: "hx", scope: !518, file: !11, line: 165, type: !7)
!536 = !DILocation(line: 165, column: 6, scope: !518)
!537 = !DILocalVariable(name: "ix", scope: !518, file: !11, line: 165, type: !7)
!538 = !DILocation(line: 165, column: 9, scope: !518)
!539 = !DILocalVariable(name: "lx", scope: !518, file: !11, line: 165, type: !7)
!540 = !DILocation(line: 165, column: 12, scope: !518)
!541 = !DILocation(line: 167, column: 14, scope: !518)
!542 = !DILocation(line: 167, column: 12, scope: !518)
!543 = !DILocation(line: 168, column: 25, scope: !518)
!544 = !DILocation(line: 168, column: 24, scope: !518)
!545 = !DILocation(line: 168, column: 12, scope: !518)
!546 = !DILocation(line: 169, column: 14, scope: !518)
!547 = !DILocation(line: 169, column: 12, scope: !518)
!548 = !DILocation(line: 171, column: 5, scope: !549)
!549 = distinct !DILexicalBlock(scope: !518, file: !11, line: 171, column: 5)
!550 = !DILocation(line: 171, column: 7, scope: !549)
!551 = !DILocation(line: 171, column: 5, scope: !518)
!552 = !DILocation(line: 171, column: 34, scope: !549)
!553 = !DILocation(line: 171, column: 36, scope: !549)
!554 = !DILocation(line: 171, column: 38, scope: !549)
!555 = !DILocation(line: 171, column: 37, scope: !549)
!556 = !DILocation(line: 171, column: 35, scope: !549)
!557 = !DILocation(line: 171, column: 32, scope: !549)
!558 = !DILocation(line: 171, column: 21, scope: !549)
!559 = !DILocation(line: 172, column: 13, scope: !560)
!560 = distinct !DILexicalBlock(scope: !518, file: !11, line: 172, column: 12)
!561 = !DILocation(line: 172, column: 16, scope: !560)
!562 = !DILocation(line: 172, column: 15, scope: !560)
!563 = !DILocation(line: 172, column: 19, scope: !560)
!564 = !DILocation(line: 172, column: 12, scope: !518)
!565 = !DILocation(line: 172, column: 36, scope: !560)
!566 = !DILocation(line: 172, column: 35, scope: !560)
!567 = !DILocation(line: 172, column: 24, scope: !560)
!568 = !DILocation(line: 173, column: 12, scope: !569)
!569 = distinct !DILexicalBlock(scope: !518, file: !11, line: 173, column: 12)
!570 = !DILocation(line: 173, column: 14, scope: !569)
!571 = !DILocation(line: 173, column: 12, scope: !518)
!572 = !DILocation(line: 173, column: 25, scope: !569)
!573 = !DILocation(line: 173, column: 30, scope: !569)
!574 = !DILocation(line: 173, column: 29, scope: !569)
!575 = !DILocation(line: 173, column: 18, scope: !569)
!576 = !DILocation(line: 174, column: 12, scope: !577)
!577 = distinct !DILexicalBlock(scope: !518, file: !11, line: 174, column: 12)
!578 = !DILocation(line: 174, column: 15, scope: !577)
!579 = !DILocation(line: 174, column: 12, scope: !518)
!580 = !DILocation(line: 186, column: 25, scope: !581)
!581 = distinct !DILexicalBlock(scope: !577, file: !11, line: 174, column: 30)
!582 = !DILocation(line: 186, column: 21, scope: !581)
!583 = !DILocation(line: 186, column: 19, scope: !581)
!584 = !DILocation(line: 187, column: 25, scope: !581)
!585 = !DILocation(line: 187, column: 21, scope: !581)
!586 = !DILocation(line: 187, column: 19, scope: !581)
!587 = !DILocation(line: 188, column: 22, scope: !581)
!588 = !DILocation(line: 188, column: 24, scope: !581)
!589 = !DILocation(line: 188, column: 23, scope: !581)
!590 = !DILocation(line: 188, column: 20, scope: !581)
!591 = !DILocation(line: 189, column: 22, scope: !581)
!592 = !DILocation(line: 189, column: 24, scope: !581)
!593 = !DILocation(line: 189, column: 23, scope: !581)
!594 = !DILocation(line: 189, column: 20, scope: !581)
!595 = !DILocation(line: 194, column: 20, scope: !596)
!596 = distinct !DILexicalBlock(scope: !581, file: !11, line: 194, column: 20)
!597 = !DILocation(line: 194, column: 22, scope: !596)
!598 = !DILocation(line: 194, column: 20, scope: !581)
!599 = !DILocation(line: 195, column: 30, scope: !600)
!600 = distinct !DILexicalBlock(scope: !596, file: !11, line: 194, column: 35)
!601 = !DILocation(line: 195, column: 32, scope: !600)
!602 = !DILocation(line: 195, column: 31, scope: !600)
!603 = !DILocation(line: 195, column: 26, scope: !600)
!604 = !DILocation(line: 195, column: 25, scope: !600)
!605 = !DILocation(line: 195, column: 23, scope: !600)
!606 = !DILocation(line: 196, column: 26, scope: !607)
!607 = distinct !DILexicalBlock(scope: !600, file: !11, line: 196, column: 25)
!608 = !DILocation(line: 196, column: 28, scope: !607)
!609 = !DILocation(line: 196, column: 27, scope: !607)
!610 = !DILocation(line: 196, column: 31, scope: !607)
!611 = !DILocation(line: 196, column: 30, scope: !607)
!612 = !DILocation(line: 196, column: 25, scope: !600)
!613 = !DILocation(line: 196, column: 42, scope: !607)
!614 = !DILocation(line: 196, column: 44, scope: !607)
!615 = !DILocation(line: 196, column: 43, scope: !607)
!616 = !DILocation(line: 196, column: 40, scope: !607)
!617 = !DILocation(line: 196, column: 37, scope: !607)
!618 = !DILocation(line: 197, column: 42, scope: !607)
!619 = !DILocation(line: 197, column: 44, scope: !607)
!620 = !DILocation(line: 197, column: 43, scope: !607)
!621 = !DILocation(line: 197, column: 40, scope: !607)
!622 = !DILocation(line: 198, column: 17, scope: !600)
!623 = !DILocation(line: 199, column: 20, scope: !624)
!624 = distinct !DILexicalBlock(scope: !581, file: !11, line: 199, column: 20)
!625 = !DILocation(line: 199, column: 22, scope: !624)
!626 = !DILocation(line: 199, column: 20, scope: !581)
!627 = !DILocation(line: 199, column: 50, scope: !624)
!628 = !DILocation(line: 199, column: 49, scope: !624)
!629 = !DILocation(line: 199, column: 59, scope: !624)
!630 = !DILocation(line: 199, column: 54, scope: !624)
!631 = !DILocation(line: 199, column: 53, scope: !624)
!632 = !DILocation(line: 199, column: 37, scope: !624)
!633 = !DILocation(line: 199, column: 35, scope: !624)
!634 = !DILocation(line: 201, column: 31, scope: !635)
!635 = distinct !DILexicalBlock(scope: !624, file: !11, line: 200, column: 22)
!636 = !DILocation(line: 201, column: 25, scope: !635)
!637 = !DILocation(line: 201, column: 23, scope: !635)
!638 = !DILocation(line: 201, column: 45, scope: !635)
!639 = !DILocation(line: 201, column: 39, scope: !635)
!640 = !DILocation(line: 201, column: 37, scope: !635)
!641 = !DILocation(line: 202, column: 36, scope: !635)
!642 = !DILocation(line: 202, column: 38, scope: !635)
!643 = !DILocation(line: 202, column: 37, scope: !635)
!644 = !DILocation(line: 202, column: 41, scope: !635)
!645 = !DILocation(line: 202, column: 43, scope: !635)
!646 = !DILocation(line: 202, column: 42, scope: !635)
!647 = !DILocation(line: 202, column: 40, scope: !635)
!648 = !DILocation(line: 202, column: 34, scope: !635)
!649 = !DILocation(line: 202, column: 52, scope: !635)
!650 = !DILocation(line: 202, column: 47, scope: !635)
!651 = !DILocation(line: 202, column: 46, scope: !635)
!652 = !DILocation(line: 202, column: 23, scope: !635)
!653 = !DILocation(line: 204, column: 24, scope: !581)
!654 = !DILocation(line: 204, column: 17, scope: !581)
!655 = !DILocation(line: 206, column: 5, scope: !656)
!656 = distinct !DILexicalBlock(scope: !518, file: !11, line: 206, column: 5)
!657 = !DILocation(line: 206, column: 7, scope: !656)
!658 = !DILocation(line: 206, column: 5, scope: !518)
!659 = !DILocation(line: 207, column: 37, scope: !660)
!660 = distinct !DILexicalBlock(scope: !656, file: !11, line: 206, column: 21)
!661 = !DILocation(line: 207, column: 23, scope: !660)
!662 = !DILocation(line: 207, column: 22, scope: !660)
!663 = !DILocation(line: 207, column: 17, scope: !660)
!664 = !DILocation(line: 207, column: 6, scope: !660)
!665 = !DILocation(line: 209, column: 6, scope: !518)
!666 = !DILocation(line: 209, column: 8, scope: !518)
!667 = !DILocation(line: 209, column: 7, scope: !518)
!668 = !DILocation(line: 209, column: 4, scope: !518)
!669 = !DILocation(line: 210, column: 10, scope: !518)
!670 = !DILocation(line: 210, column: 17, scope: !518)
!671 = !DILocation(line: 210, column: 24, scope: !518)
!672 = !DILocation(line: 210, column: 31, scope: !518)
!673 = !DILocation(line: 210, column: 38, scope: !518)
!674 = !DILocation(line: 210, column: 45, scope: !518)
!675 = !DILocation(line: 210, column: 46, scope: !518)
!676 = !DILocation(line: 210, column: 44, scope: !518)
!677 = !DILocation(line: 210, column: 39, scope: !518)
!678 = !DILocation(line: 210, column: 37, scope: !518)
!679 = !DILocation(line: 210, column: 32, scope: !518)
!680 = !DILocation(line: 210, column: 30, scope: !518)
!681 = !DILocation(line: 210, column: 25, scope: !518)
!682 = !DILocation(line: 210, column: 23, scope: !518)
!683 = !DILocation(line: 210, column: 18, scope: !518)
!684 = !DILocation(line: 210, column: 16, scope: !518)
!685 = !DILocation(line: 210, column: 11, scope: !518)
!686 = !DILocation(line: 210, column: 9, scope: !518)
!687 = !DILocation(line: 210, column: 4, scope: !518)
!688 = !DILocation(line: 211, column: 10, scope: !518)
!689 = !DILocation(line: 211, column: 17, scope: !518)
!690 = !DILocation(line: 211, column: 24, scope: !518)
!691 = !DILocation(line: 211, column: 31, scope: !518)
!692 = !DILocation(line: 211, column: 32, scope: !518)
!693 = !DILocation(line: 211, column: 30, scope: !518)
!694 = !DILocation(line: 211, column: 25, scope: !518)
!695 = !DILocation(line: 211, column: 23, scope: !518)
!696 = !DILocation(line: 211, column: 18, scope: !518)
!697 = !DILocation(line: 211, column: 16, scope: !518)
!698 = !DILocation(line: 211, column: 11, scope: !518)
!699 = !DILocation(line: 211, column: 9, scope: !518)
!700 = !DILocation(line: 211, column: 4, scope: !518)
!701 = !DILocation(line: 212, column: 9, scope: !518)
!702 = !DILocation(line: 212, column: 11, scope: !518)
!703 = !DILocation(line: 212, column: 10, scope: !518)
!704 = !DILocation(line: 212, column: 33, scope: !518)
!705 = !DILocation(line: 212, column: 20, scope: !518)
!706 = !DILocation(line: 212, column: 50, scope: !518)
!707 = !DILocation(line: 212, column: 36, scope: !518)
!708 = !DILocation(line: 212, column: 35, scope: !518)
!709 = !DILocation(line: 212, column: 18, scope: !518)
!710 = !DILocation(line: 212, column: 13, scope: !518)
!711 = !DILocation(line: 212, column: 2, scope: !518)
!712 = !DILocation(line: 213, column: 1, scope: !518)
!713 = distinct !DISubprogram(name: "main", scope: !11, file: !11, line: 482, type: !714, scopeLine: 482, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!714 = !DISubroutineType(types: !715)
!715 = !{!7}
!716 = !DILocalVariable(name: "a0", scope: !713, file: !11, line: 483, type: !13)
!717 = !DILocation(line: 483, column: 12, scope: !713)
!718 = !DILocation(line: 484, column: 24, scope: !713)
!719 = !DILocation(line: 484, column: 5, scope: !713)
!720 = !DILocalVariable(name: "r", scope: !713, file: !11, line: 486, type: !13)
!721 = !DILocation(line: 486, column: 12, scope: !713)
!722 = !DILocation(line: 486, column: 29, scope: !713)
!723 = !DILocation(line: 486, column: 16, scope: !713)
!724 = !DILocation(line: 487, column: 5, scope: !713)
