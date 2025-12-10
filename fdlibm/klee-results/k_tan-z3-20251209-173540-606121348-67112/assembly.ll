; ModuleID = 'k_tan.bc'
source_filename = "./k_tan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xxx = internal constant [16 x double] [double 0x3FD5555555555563, double 0x3FC111111110FE7A, double 0x3FABA1BA1BB341FE, double 0x3F9664F48406D637, double 0x3F8226E3E96E8493, double 0x3F6D6D22C9560328, double 0x3F57DBC8FEE08315, double 0x3F4344D8F2F26501, double 0x3F3026F71A8D1068, double 0x3F147E88A03792A6, double 0x3F12B80F32F0A7E9, double 0xBEF375CBDB605373, double 0x3EFB2A7074BF7AD4, double 1.000000e+00, double 0x3FE921FB54442D18, double 0x3C81A62633145C07], align 16, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"a2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__kernel_tan(double %x, double %y, i32 %iy) #0 !dbg !21 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %iy.addr = alloca i32, align 4
  %z = alloca double, align 8
  %r = alloca double, align 8
  %v = alloca double, align 8
  %w = alloca double, align 8
  %s = alloca double, align 8
  %ix = alloca i32, align 4
  %hx = alloca i32, align 4
  %a = alloca double, align 8
  %t = alloca double, align 8
  %a88 = alloca double, align 8
  %t89 = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !24, metadata !DIExpression()), !dbg !25
  store double %y, double* %y.addr, align 8
  call void @llvm.dbg.declare(metadata double* %y.addr, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 %iy, i32* %iy.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %iy.addr, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata double* %z, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata double* %r, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata double* %v, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata double* %w, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata double* %s, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !42, metadata !DIExpression()), !dbg !43
  %0 = bitcast double* %x.addr to i32*, !dbg !44
  %1 = load i32, i32* %0, align 8, !dbg !44
  store i32 %1, i32* %hx, align 4, !dbg !45
  %2 = load i32, i32* %hx, align 4, !dbg !46
  %and = and i32 %2, 2147483647, !dbg !47
  store i32 %and, i32* %ix, align 4, !dbg !48
  %3 = load i32, i32* %ix, align 4, !dbg !49
  %cmp = icmp slt i32 %3, 1043333120, !dbg !51
  br i1 %cmp, label %if.then, label %if.end22, !dbg !52

if.then:                                          ; preds = %entry
  %4 = load double, double* %x.addr, align 8, !dbg !53
  %conv = fptosi double %4 to i32, !dbg !56
  %cmp1 = icmp eq i32 %conv, 0, !dbg !57
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !58

if.then3:                                         ; preds = %if.then
  %5 = load i32, i32* %ix, align 4, !dbg !59
  %6 = bitcast double* %x.addr to i32*, !dbg !62
  %add.ptr = getelementptr inbounds i32, i32* %6, i64 1, !dbg !62
  %7 = load i32, i32* %add.ptr, align 4, !dbg !62
  %or = or i32 %5, %7, !dbg !63
  %8 = load i32, i32* %iy.addr, align 4, !dbg !64
  %add = add nsw i32 %8, 1, !dbg !65
  %or4 = or i32 %or, %add, !dbg !66
  %cmp5 = icmp eq i32 %or4, 0, !dbg !67
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !68

if.then7:                                         ; preds = %if.then3
  %9 = load double, double* getelementptr inbounds ([16 x double], [16 x double]* @xxx, i64 0, i64 13), align 8, !dbg !69
  %10 = load double, double* %x.addr, align 8, !dbg !70
  %11 = call double @llvm.fabs.f64(double %10), !dbg !71
  %div = fdiv double %9, %11, !dbg !72
  store double %div, double* %retval, align 8, !dbg !73
  br label %return, !dbg !73

if.else:                                          ; preds = %if.then3
  %12 = load i32, i32* %iy.addr, align 4, !dbg !74
  %cmp8 = icmp eq i32 %12, 1, !dbg !77
  br i1 %cmp8, label %if.then10, label %if.else11, !dbg !78

if.then10:                                        ; preds = %if.else
  %13 = load double, double* %x.addr, align 8, !dbg !79
  store double %13, double* %retval, align 8, !dbg !80
  br label %return, !dbg !80

if.else11:                                        ; preds = %if.else
  call void @llvm.dbg.declare(metadata double* %a, metadata !81, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata double* %t, metadata !84, metadata !DIExpression()), !dbg !85
  %14 = load double, double* %x.addr, align 8, !dbg !86
  %15 = load double, double* %y.addr, align 8, !dbg !87
  %add12 = fadd double %14, %15, !dbg !88
  store double %add12, double* %w, align 8, !dbg !89
  store double %add12, double* %z, align 8, !dbg !90
  %16 = bitcast double* %z to i32*, !dbg !91
  %add.ptr13 = getelementptr inbounds i32, i32* %16, i64 1, !dbg !91
  store i32 0, i32* %add.ptr13, align 4, !dbg !92
  %17 = load double, double* %y.addr, align 8, !dbg !93
  %18 = load double, double* %z, align 8, !dbg !94
  %19 = load double, double* %x.addr, align 8, !dbg !95
  %sub = fsub double %18, %19, !dbg !96
  %sub14 = fsub double %17, %sub, !dbg !97
  store double %sub14, double* %v, align 8, !dbg !98
  %20 = load double, double* getelementptr inbounds ([16 x double], [16 x double]* @xxx, i64 0, i64 13), align 8, !dbg !99
  %fneg = fneg double %20, !dbg !100
  %21 = load double, double* %w, align 8, !dbg !101
  %div15 = fdiv double %fneg, %21, !dbg !102
  store double %div15, double* %a, align 8, !dbg !103
  store double %div15, double* %t, align 8, !dbg !104
  %22 = bitcast double* %t to i32*, !dbg !105
  %add.ptr16 = getelementptr inbounds i32, i32* %22, i64 1, !dbg !105
  store i32 0, i32* %add.ptr16, align 4, !dbg !106
  %23 = load double, double* getelementptr inbounds ([16 x double], [16 x double]* @xxx, i64 0, i64 13), align 8, !dbg !107
  %24 = load double, double* %t, align 8, !dbg !108
  %25 = load double, double* %z, align 8, !dbg !109
  %mul = fmul double %24, %25, !dbg !110
  %add17 = fadd double %23, %mul, !dbg !111
  store double %add17, double* %s, align 8, !dbg !112
  %26 = load double, double* %t, align 8, !dbg !113
  %27 = load double, double* %a, align 8, !dbg !114
  %28 = load double, double* %s, align 8, !dbg !115
  %29 = load double, double* %t, align 8, !dbg !116
  %30 = load double, double* %v, align 8, !dbg !117
  %mul18 = fmul double %29, %30, !dbg !118
  %add19 = fadd double %28, %mul18, !dbg !119
  %mul20 = fmul double %27, %add19, !dbg !120
  %add21 = fadd double %26, %mul20, !dbg !121
  store double %add21, double* %retval, align 8, !dbg !122
  br label %return, !dbg !122

if.end:                                           ; preds = %if.then
  br label %if.end22, !dbg !123

if.end22:                                         ; preds = %if.end, %entry
  %31 = load i32, i32* %ix, align 4, !dbg !124
  %cmp23 = icmp sge i32 %31, 1072010280, !dbg !126
  br i1 %cmp23, label %if.then25, label %if.end35, !dbg !127

if.then25:                                        ; preds = %if.end22
  %32 = load i32, i32* %hx, align 4, !dbg !128
  %cmp26 = icmp slt i32 %32, 0, !dbg !131
  br i1 %cmp26, label %if.then28, label %if.end31, !dbg !132

if.then28:                                        ; preds = %if.then25
  %33 = load double, double* %x.addr, align 8, !dbg !133
  %fneg29 = fneg double %33, !dbg !135
  store double %fneg29, double* %x.addr, align 8, !dbg !136
  %34 = load double, double* %y.addr, align 8, !dbg !137
  %fneg30 = fneg double %34, !dbg !138
  store double %fneg30, double* %y.addr, align 8, !dbg !139
  br label %if.end31, !dbg !140

if.end31:                                         ; preds = %if.then28, %if.then25
  %35 = load double, double* getelementptr inbounds ([16 x double], [16 x double]* @xxx, i64 0, i64 14), align 16, !dbg !141
  %36 = load double, double* %x.addr, align 8, !dbg !142
  %sub32 = fsub double %35, %36, !dbg !143
  store double %sub32, double* %z, align 8, !dbg !144
  %37 = load double, double* getelementptr inbounds ([16 x double], [16 x double]* @xxx, i64 0, i64 15), align 8, !dbg !145
  %38 = load double, double* %y.addr, align 8, !dbg !146
  %sub33 = fsub double %37, %38, !dbg !147
  store double %sub33, double* %w, align 8, !dbg !148
  %39 = load double, double* %z, align 8, !dbg !149
  %40 = load double, double* %w, align 8, !dbg !150
  %add34 = fadd double %39, %40, !dbg !151
  store double %add34, double* %x.addr, align 8, !dbg !152
  store double 0.000000e+00, double* %y.addr, align 8, !dbg !153
  br label %if.end35, !dbg !154

if.end35:                                         ; preds = %if.end31, %if.end22
  %41 = load double, double* %x.addr, align 8, !dbg !155
  %42 = load double, double* %x.addr, align 8, !dbg !156
  %mul36 = fmul double %41, %42, !dbg !157
  store double %mul36, double* %z, align 8, !dbg !158
  %43 = load double, double* %z, align 8, !dbg !159
  %44 = load double, double* %z, align 8, !dbg !160
  %mul37 = fmul double %43, %44, !dbg !161
  store double %mul37, double* %w, align 8, !dbg !162
  %45 = load double, double* getelementptr inbounds ([16 x double], [16 x double]* @xxx, i64 0, i64 1), align 8, !dbg !163
  %46 = load double, double* %w, align 8, !dbg !164
  %47 = load double, double* getelementptr inbounds ([16 x double], [16 x double]* @xxx, i64 0, i64 3), align 8, !dbg !165
  %48 = load double, double* %w, align 8, !dbg !166
  %49 = load double, double* getelementptr inbounds ([16 x double], [16 x double]* @xxx, i64 0, i64 5), align 8, !dbg !167
  %50 = load double, double* %w, align 8, !dbg !168
  %51 = load double, double* getelementptr inbounds ([16 x double], [16 x double]* @xxx, i64 0, i64 7), align 8, !dbg !169
  %52 = load double, double* %w, align 8, !dbg !170
  %53 = load double, double* getelementptr inbounds ([16 x double], [16 x double]* @xxx, i64 0, i64 9), align 8, !dbg !171
  %54 = load double, double* %w, align 8, !dbg !172
  %55 = load double, double* getelementptr inbounds ([16 x double], [16 x double]* @xxx, i64 0, i64 11), align 8, !dbg !173
  %mul38 = fmul double %54, %55, !dbg !174
  %add39 = fadd double %53, %mul38, !dbg !175
  %mul40 = fmul double %52, %add39, !dbg !176
  %add41 = fadd double %51, %mul40, !dbg !177
  %mul42 = fmul double %50, %add41, !dbg !178
  %add43 = fadd double %49, %mul42, !dbg !179
  %mul44 = fmul double %48, %add43, !dbg !180
  %add45 = fadd double %47, %mul44, !dbg !181
  %mul46 = fmul double %46, %add45, !dbg !182
  %add47 = fadd double %45, %mul46, !dbg !183
  store double %add47, double* %r, align 8, !dbg !184
  %56 = load double, double* %z, align 8, !dbg !185
  %57 = load double, double* getelementptr inbounds ([16 x double], [16 x double]* @xxx, i64 0, i64 2), align 16, !dbg !186
  %58 = load double, double* %w, align 8, !dbg !187
  %59 = load double, double* getelementptr inbounds ([16 x double], [16 x double]* @xxx, i64 0, i64 4), align 16, !dbg !188
  %60 = load double, double* %w, align 8, !dbg !189
  %61 = load double, double* getelementptr inbounds ([16 x double], [16 x double]* @xxx, i64 0, i64 6), align 16, !dbg !190
  %62 = load double, double* %w, align 8, !dbg !191
  %63 = load double, double* getelementptr inbounds ([16 x double], [16 x double]* @xxx, i64 0, i64 8), align 16, !dbg !192
  %64 = load double, double* %w, align 8, !dbg !193
  %65 = load double, double* getelementptr inbounds ([16 x double], [16 x double]* @xxx, i64 0, i64 10), align 16, !dbg !194
  %66 = load double, double* %w, align 8, !dbg !195
  %67 = load double, double* getelementptr inbounds ([16 x double], [16 x double]* @xxx, i64 0, i64 12), align 16, !dbg !196
  %mul48 = fmul double %66, %67, !dbg !197
  %add49 = fadd double %65, %mul48, !dbg !198
  %mul50 = fmul double %64, %add49, !dbg !199
  %add51 = fadd double %63, %mul50, !dbg !200
  %mul52 = fmul double %62, %add51, !dbg !201
  %add53 = fadd double %61, %mul52, !dbg !202
  %mul54 = fmul double %60, %add53, !dbg !203
  %add55 = fadd double %59, %mul54, !dbg !204
  %mul56 = fmul double %58, %add55, !dbg !205
  %add57 = fadd double %57, %mul56, !dbg !206
  %mul58 = fmul double %56, %add57, !dbg !207
  store double %mul58, double* %v, align 8, !dbg !208
  %68 = load double, double* %z, align 8, !dbg !209
  %69 = load double, double* %x.addr, align 8, !dbg !210
  %mul59 = fmul double %68, %69, !dbg !211
  store double %mul59, double* %s, align 8, !dbg !212
  %70 = load double, double* %y.addr, align 8, !dbg !213
  %71 = load double, double* %z, align 8, !dbg !214
  %72 = load double, double* %s, align 8, !dbg !215
  %73 = load double, double* %r, align 8, !dbg !216
  %74 = load double, double* %v, align 8, !dbg !217
  %add60 = fadd double %73, %74, !dbg !218
  %mul61 = fmul double %72, %add60, !dbg !219
  %75 = load double, double* %y.addr, align 8, !dbg !220
  %add62 = fadd double %mul61, %75, !dbg !221
  %mul63 = fmul double %71, %add62, !dbg !222
  %add64 = fadd double %70, %mul63, !dbg !223
  store double %add64, double* %r, align 8, !dbg !224
  %76 = load double, double* getelementptr inbounds ([16 x double], [16 x double]* @xxx, i64 0, i64 0), align 16, !dbg !225
  %77 = load double, double* %s, align 8, !dbg !226
  %mul65 = fmul double %76, %77, !dbg !227
  %78 = load double, double* %r, align 8, !dbg !228
  %add66 = fadd double %78, %mul65, !dbg !228
  store double %add66, double* %r, align 8, !dbg !228
  %79 = load double, double* %x.addr, align 8, !dbg !229
  %80 = load double, double* %r, align 8, !dbg !230
  %add67 = fadd double %79, %80, !dbg !231
  store double %add67, double* %w, align 8, !dbg !232
  %81 = load i32, i32* %ix, align 4, !dbg !233
  %cmp68 = icmp sge i32 %81, 1072010280, !dbg !235
  br i1 %cmp68, label %if.then70, label %if.end83, !dbg !236

if.then70:                                        ; preds = %if.end35
  %82 = load i32, i32* %iy.addr, align 4, !dbg !237
  %conv71 = sitofp i32 %82 to double, !dbg !239
  store double %conv71, double* %v, align 8, !dbg !240
  %83 = load i32, i32* %hx, align 4, !dbg !241
  %shr = ashr i32 %83, 30, !dbg !242
  %and72 = and i32 %shr, 2, !dbg !243
  %sub73 = sub nsw i32 1, %and72, !dbg !244
  %conv74 = sitofp i32 %sub73 to double, !dbg !245
  %84 = load double, double* %v, align 8, !dbg !246
  %85 = load double, double* %x.addr, align 8, !dbg !247
  %86 = load double, double* %w, align 8, !dbg !248
  %87 = load double, double* %w, align 8, !dbg !249
  %mul75 = fmul double %86, %87, !dbg !250
  %88 = load double, double* %w, align 8, !dbg !251
  %89 = load double, double* %v, align 8, !dbg !252
  %add76 = fadd double %88, %89, !dbg !253
  %div77 = fdiv double %mul75, %add76, !dbg !254
  %90 = load double, double* %r, align 8, !dbg !255
  %sub78 = fsub double %div77, %90, !dbg !256
  %sub79 = fsub double %85, %sub78, !dbg !257
  %mul80 = fmul double 2.000000e+00, %sub79, !dbg !258
  %sub81 = fsub double %84, %mul80, !dbg !259
  %mul82 = fmul double %conv74, %sub81, !dbg !260
  store double %mul82, double* %retval, align 8, !dbg !261
  br label %return, !dbg !261

if.end83:                                         ; preds = %if.end35
  %91 = load i32, i32* %iy.addr, align 4, !dbg !262
  %cmp84 = icmp eq i32 %91, 1, !dbg !264
  br i1 %cmp84, label %if.then86, label %if.else87, !dbg !265

if.then86:                                        ; preds = %if.end83
  %92 = load double, double* %w, align 8, !dbg !266
  store double %92, double* %retval, align 8, !dbg !267
  br label %return, !dbg !267

if.else87:                                        ; preds = %if.end83
  call void @llvm.dbg.declare(metadata double* %a88, metadata !268, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.declare(metadata double* %t89, metadata !271, metadata !DIExpression()), !dbg !272
  %93 = load double, double* %w, align 8, !dbg !273
  store double %93, double* %z, align 8, !dbg !274
  %94 = bitcast double* %z to i32*, !dbg !275
  %add.ptr90 = getelementptr inbounds i32, i32* %94, i64 1, !dbg !275
  store i32 0, i32* %add.ptr90, align 4, !dbg !276
  %95 = load double, double* %r, align 8, !dbg !277
  %96 = load double, double* %z, align 8, !dbg !278
  %97 = load double, double* %x.addr, align 8, !dbg !279
  %sub91 = fsub double %96, %97, !dbg !280
  %sub92 = fsub double %95, %sub91, !dbg !281
  store double %sub92, double* %v, align 8, !dbg !282
  %98 = load double, double* %w, align 8, !dbg !283
  %div93 = fdiv double -1.000000e+00, %98, !dbg !284
  store double %div93, double* %a88, align 8, !dbg !285
  store double %div93, double* %t89, align 8, !dbg !286
  %99 = bitcast double* %t89 to i32*, !dbg !287
  %add.ptr94 = getelementptr inbounds i32, i32* %99, i64 1, !dbg !287
  store i32 0, i32* %add.ptr94, align 4, !dbg !288
  %100 = load double, double* %t89, align 8, !dbg !289
  %101 = load double, double* %z, align 8, !dbg !290
  %mul95 = fmul double %100, %101, !dbg !291
  %add96 = fadd double 1.000000e+00, %mul95, !dbg !292
  store double %add96, double* %s, align 8, !dbg !293
  %102 = load double, double* %t89, align 8, !dbg !294
  %103 = load double, double* %a88, align 8, !dbg !295
  %104 = load double, double* %s, align 8, !dbg !296
  %105 = load double, double* %t89, align 8, !dbg !297
  %106 = load double, double* %v, align 8, !dbg !298
  %mul97 = fmul double %105, %106, !dbg !299
  %add98 = fadd double %104, %mul97, !dbg !300
  %mul99 = fmul double %103, %add98, !dbg !301
  %add100 = fadd double %102, %mul99, !dbg !302
  store double %add100, double* %retval, align 8, !dbg !303
  br label %return, !dbg !303

return:                                           ; preds = %if.else87, %if.then86, %if.then70, %if.else11, %if.then10, %if.then7
  %107 = load double, double* %retval, align 8, !dbg !304
  ret double %107, !dbg !304
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !305 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca double, align 8
  %a2 = alloca i32, align 4
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !308, metadata !DIExpression()), !dbg !309
  %0 = bitcast double* %a0 to i8*, !dbg !310
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !311
  call void @llvm.dbg.declare(metadata double* %a1, metadata !312, metadata !DIExpression()), !dbg !313
  %1 = bitcast double* %a1 to i8*, !dbg !314
  call void @klee_make_symbolic(i8* %1, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !315
  call void @llvm.dbg.declare(metadata i32* %a2, metadata !316, metadata !DIExpression()), !dbg !317
  %2 = bitcast i32* %a2 to i8*, !dbg !318
  call void @klee_make_symbolic(i8* %2, i64 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)), !dbg !319
  call void @llvm.dbg.declare(metadata double* %r, metadata !320, metadata !DIExpression()), !dbg !321
  %3 = load double, double* %a0, align 8, !dbg !322
  %4 = load double, double* %a1, align 8, !dbg !323
  %5 = load i32, i32* %a2, align 4, !dbg !324
  %call = call double @__kernel_tan(double %3, double %4, i32 %5), !dbg !325
  store double %call, double* %r, align 8, !dbg !321
  ret i32 0, !dbg !326
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xxx", scope: !2, file: !10, line: 49, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "k_tan.c", directory: "/home/klee/logic_bombs/fdlibm")
!4 = !{}
!5 = !{!6, !7, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!9 = !{!0}
!10 = !DIFile(filename: "./k_tan.c", directory: "/home/klee/logic_bombs/fdlibm")
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1024, elements: !13)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!13 = !{!14}
!14 = !DISubrange(count: 16)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!21 = distinct !DISubprogram(name: "__kernel_tan", scope: !10, file: !10, line: 74, type: !22, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!22 = !DISubroutineType(types: !23)
!23 = !{!8, !8, !8, !7}
!24 = !DILocalVariable(name: "x", arg: 1, scope: !21, file: !10, line: 74, type: !8)
!25 = !DILocation(line: 74, column: 21, scope: !21)
!26 = !DILocalVariable(name: "y", arg: 2, scope: !21, file: !10, line: 74, type: !8)
!27 = !DILocation(line: 74, column: 31, scope: !21)
!28 = !DILocalVariable(name: "iy", arg: 3, scope: !21, file: !10, line: 74, type: !7)
!29 = !DILocation(line: 74, column: 38, scope: !21)
!30 = !DILocalVariable(name: "z", scope: !21, file: !10, line: 75, type: !8)
!31 = !DILocation(line: 75, column: 9, scope: !21)
!32 = !DILocalVariable(name: "r", scope: !21, file: !10, line: 75, type: !8)
!33 = !DILocation(line: 75, column: 12, scope: !21)
!34 = !DILocalVariable(name: "v", scope: !21, file: !10, line: 75, type: !8)
!35 = !DILocation(line: 75, column: 15, scope: !21)
!36 = !DILocalVariable(name: "w", scope: !21, file: !10, line: 75, type: !8)
!37 = !DILocation(line: 75, column: 18, scope: !21)
!38 = !DILocalVariable(name: "s", scope: !21, file: !10, line: 75, type: !8)
!39 = !DILocation(line: 75, column: 21, scope: !21)
!40 = !DILocalVariable(name: "ix", scope: !21, file: !10, line: 76, type: !7)
!41 = !DILocation(line: 76, column: 6, scope: !21)
!42 = !DILocalVariable(name: "hx", scope: !21, file: !10, line: 76, type: !7)
!43 = !DILocation(line: 76, column: 10, scope: !21)
!44 = !DILocation(line: 78, column: 7, scope: !21)
!45 = !DILocation(line: 78, column: 5, scope: !21)
!46 = !DILocation(line: 79, column: 7, scope: !21)
!47 = !DILocation(line: 79, column: 10, scope: !21)
!48 = !DILocation(line: 79, column: 5, scope: !21)
!49 = !DILocation(line: 80, column: 6, scope: !50)
!50 = distinct !DILexicalBlock(scope: !21, file: !10, line: 80, column: 6)
!51 = !DILocation(line: 80, column: 9, scope: !50)
!52 = !DILocation(line: 80, column: 6, scope: !21)
!53 = !DILocation(line: 81, column: 13, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !10, line: 81, column: 7)
!55 = distinct !DILexicalBlock(scope: !50, file: !10, line: 80, column: 23)
!56 = !DILocation(line: 81, column: 7, scope: !54)
!57 = !DILocation(line: 81, column: 15, scope: !54)
!58 = !DILocation(line: 81, column: 7, scope: !55)
!59 = !DILocation(line: 82, column: 10, scope: !60)
!60 = distinct !DILexicalBlock(scope: !61, file: !10, line: 82, column: 8)
!61 = distinct !DILexicalBlock(scope: !54, file: !10, line: 81, column: 21)
!62 = !DILocation(line: 82, column: 15, scope: !60)
!63 = !DILocation(line: 82, column: 13, scope: !60)
!64 = !DILocation(line: 82, column: 27, scope: !60)
!65 = !DILocation(line: 82, column: 30, scope: !60)
!66 = !DILocation(line: 82, column: 24, scope: !60)
!67 = !DILocation(line: 82, column: 36, scope: !60)
!68 = !DILocation(line: 82, column: 8, scope: !61)
!69 = !DILocation(line: 83, column: 12, scope: !60)
!70 = !DILocation(line: 83, column: 23, scope: !60)
!71 = !DILocation(line: 83, column: 18, scope: !60)
!72 = !DILocation(line: 83, column: 16, scope: !60)
!73 = !DILocation(line: 83, column: 5, scope: !60)
!74 = !DILocation(line: 85, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !76, file: !10, line: 85, column: 9)
!76 = distinct !DILexicalBlock(scope: !60, file: !10, line: 84, column: 9)
!77 = !DILocation(line: 85, column: 12, scope: !75)
!78 = !DILocation(line: 85, column: 9, scope: !76)
!79 = !DILocation(line: 86, column: 13, scope: !75)
!80 = !DILocation(line: 86, column: 6, scope: !75)
!81 = !DILocalVariable(name: "a", scope: !82, file: !10, line: 88, type: !8)
!82 = distinct !DILexicalBlock(scope: !75, file: !10, line: 87, column: 10)
!83 = !DILocation(line: 88, column: 13, scope: !82)
!84 = !DILocalVariable(name: "t", scope: !82, file: !10, line: 88, type: !8)
!85 = !DILocation(line: 88, column: 16, scope: !82)
!86 = !DILocation(line: 90, column: 14, scope: !82)
!87 = !DILocation(line: 90, column: 18, scope: !82)
!88 = !DILocation(line: 90, column: 16, scope: !82)
!89 = !DILocation(line: 90, column: 12, scope: !82)
!90 = !DILocation(line: 90, column: 8, scope: !82)
!91 = !DILocation(line: 91, column: 6, scope: !82)
!92 = !DILocation(line: 91, column: 14, scope: !82)
!93 = !DILocation(line: 92, column: 10, scope: !82)
!94 = !DILocation(line: 92, column: 15, scope: !82)
!95 = !DILocation(line: 92, column: 19, scope: !82)
!96 = !DILocation(line: 92, column: 17, scope: !82)
!97 = !DILocation(line: 92, column: 12, scope: !82)
!98 = !DILocation(line: 92, column: 8, scope: !82)
!99 = !DILocation(line: 93, column: 15, scope: !82)
!100 = !DILocation(line: 93, column: 14, scope: !82)
!101 = !DILocation(line: 93, column: 21, scope: !82)
!102 = !DILocation(line: 93, column: 19, scope: !82)
!103 = !DILocation(line: 93, column: 12, scope: !82)
!104 = !DILocation(line: 93, column: 8, scope: !82)
!105 = !DILocation(line: 94, column: 6, scope: !82)
!106 = !DILocation(line: 94, column: 14, scope: !82)
!107 = !DILocation(line: 95, column: 10, scope: !82)
!108 = !DILocation(line: 95, column: 16, scope: !82)
!109 = !DILocation(line: 95, column: 20, scope: !82)
!110 = !DILocation(line: 95, column: 18, scope: !82)
!111 = !DILocation(line: 95, column: 14, scope: !82)
!112 = !DILocation(line: 95, column: 8, scope: !82)
!113 = !DILocation(line: 96, column: 13, scope: !82)
!114 = !DILocation(line: 96, column: 17, scope: !82)
!115 = !DILocation(line: 96, column: 22, scope: !82)
!116 = !DILocation(line: 96, column: 26, scope: !82)
!117 = !DILocation(line: 96, column: 30, scope: !82)
!118 = !DILocation(line: 96, column: 28, scope: !82)
!119 = !DILocation(line: 96, column: 24, scope: !82)
!120 = !DILocation(line: 96, column: 19, scope: !82)
!121 = !DILocation(line: 96, column: 15, scope: !82)
!122 = !DILocation(line: 96, column: 6, scope: !82)
!123 = !DILocation(line: 100, column: 2, scope: !55)
!124 = !DILocation(line: 101, column: 6, scope: !125)
!125 = distinct !DILexicalBlock(scope: !21, file: !10, line: 101, column: 6)
!126 = !DILocation(line: 101, column: 9, scope: !125)
!127 = !DILocation(line: 101, column: 6, scope: !21)
!128 = !DILocation(line: 102, column: 7, scope: !129)
!129 = distinct !DILexicalBlock(scope: !130, file: !10, line: 102, column: 7)
!130 = distinct !DILexicalBlock(scope: !125, file: !10, line: 101, column: 24)
!131 = !DILocation(line: 102, column: 10, scope: !129)
!132 = !DILocation(line: 102, column: 7, scope: !130)
!133 = !DILocation(line: 103, column: 9, scope: !134)
!134 = distinct !DILexicalBlock(scope: !129, file: !10, line: 102, column: 15)
!135 = !DILocation(line: 103, column: 8, scope: !134)
!136 = !DILocation(line: 103, column: 6, scope: !134)
!137 = !DILocation(line: 104, column: 9, scope: !134)
!138 = !DILocation(line: 104, column: 8, scope: !134)
!139 = !DILocation(line: 104, column: 6, scope: !134)
!140 = !DILocation(line: 105, column: 3, scope: !134)
!141 = !DILocation(line: 106, column: 7, scope: !130)
!142 = !DILocation(line: 106, column: 14, scope: !130)
!143 = !DILocation(line: 106, column: 12, scope: !130)
!144 = !DILocation(line: 106, column: 5, scope: !130)
!145 = !DILocation(line: 107, column: 7, scope: !130)
!146 = !DILocation(line: 107, column: 16, scope: !130)
!147 = !DILocation(line: 107, column: 14, scope: !130)
!148 = !DILocation(line: 107, column: 5, scope: !130)
!149 = !DILocation(line: 108, column: 7, scope: !130)
!150 = !DILocation(line: 108, column: 11, scope: !130)
!151 = !DILocation(line: 108, column: 9, scope: !130)
!152 = !DILocation(line: 108, column: 5, scope: !130)
!153 = !DILocation(line: 109, column: 5, scope: !130)
!154 = !DILocation(line: 110, column: 2, scope: !130)
!155 = !DILocation(line: 111, column: 6, scope: !21)
!156 = !DILocation(line: 111, column: 10, scope: !21)
!157 = !DILocation(line: 111, column: 8, scope: !21)
!158 = !DILocation(line: 111, column: 4, scope: !21)
!159 = !DILocation(line: 112, column: 6, scope: !21)
!160 = !DILocation(line: 112, column: 10, scope: !21)
!161 = !DILocation(line: 112, column: 8, scope: !21)
!162 = !DILocation(line: 112, column: 4, scope: !21)
!163 = !DILocation(line: 118, column: 6, scope: !21)
!164 = !DILocation(line: 118, column: 13, scope: !21)
!165 = !DILocation(line: 118, column: 18, scope: !21)
!166 = !DILocation(line: 118, column: 25, scope: !21)
!167 = !DILocation(line: 118, column: 30, scope: !21)
!168 = !DILocation(line: 118, column: 37, scope: !21)
!169 = !DILocation(line: 118, column: 42, scope: !21)
!170 = !DILocation(line: 118, column: 49, scope: !21)
!171 = !DILocation(line: 118, column: 54, scope: !21)
!172 = !DILocation(line: 119, column: 3, scope: !21)
!173 = !DILocation(line: 119, column: 7, scope: !21)
!174 = !DILocation(line: 119, column: 5, scope: !21)
!175 = !DILocation(line: 118, column: 59, scope: !21)
!176 = !DILocation(line: 118, column: 51, scope: !21)
!177 = !DILocation(line: 118, column: 47, scope: !21)
!178 = !DILocation(line: 118, column: 39, scope: !21)
!179 = !DILocation(line: 118, column: 35, scope: !21)
!180 = !DILocation(line: 118, column: 27, scope: !21)
!181 = !DILocation(line: 118, column: 23, scope: !21)
!182 = !DILocation(line: 118, column: 15, scope: !21)
!183 = !DILocation(line: 118, column: 11, scope: !21)
!184 = !DILocation(line: 118, column: 4, scope: !21)
!185 = !DILocation(line: 120, column: 6, scope: !21)
!186 = !DILocation(line: 120, column: 11, scope: !21)
!187 = !DILocation(line: 120, column: 18, scope: !21)
!188 = !DILocation(line: 120, column: 23, scope: !21)
!189 = !DILocation(line: 120, column: 30, scope: !21)
!190 = !DILocation(line: 120, column: 35, scope: !21)
!191 = !DILocation(line: 120, column: 42, scope: !21)
!192 = !DILocation(line: 120, column: 47, scope: !21)
!193 = !DILocation(line: 120, column: 54, scope: !21)
!194 = !DILocation(line: 120, column: 59, scope: !21)
!195 = !DILocation(line: 121, column: 3, scope: !21)
!196 = !DILocation(line: 121, column: 7, scope: !21)
!197 = !DILocation(line: 121, column: 5, scope: !21)
!198 = !DILocation(line: 120, column: 65, scope: !21)
!199 = !DILocation(line: 120, column: 56, scope: !21)
!200 = !DILocation(line: 120, column: 52, scope: !21)
!201 = !DILocation(line: 120, column: 44, scope: !21)
!202 = !DILocation(line: 120, column: 40, scope: !21)
!203 = !DILocation(line: 120, column: 32, scope: !21)
!204 = !DILocation(line: 120, column: 28, scope: !21)
!205 = !DILocation(line: 120, column: 20, scope: !21)
!206 = !DILocation(line: 120, column: 16, scope: !21)
!207 = !DILocation(line: 120, column: 8, scope: !21)
!208 = !DILocation(line: 120, column: 4, scope: !21)
!209 = !DILocation(line: 122, column: 6, scope: !21)
!210 = !DILocation(line: 122, column: 10, scope: !21)
!211 = !DILocation(line: 122, column: 8, scope: !21)
!212 = !DILocation(line: 122, column: 4, scope: !21)
!213 = !DILocation(line: 123, column: 6, scope: !21)
!214 = !DILocation(line: 123, column: 10, scope: !21)
!215 = !DILocation(line: 123, column: 15, scope: !21)
!216 = !DILocation(line: 123, column: 20, scope: !21)
!217 = !DILocation(line: 123, column: 24, scope: !21)
!218 = !DILocation(line: 123, column: 22, scope: !21)
!219 = !DILocation(line: 123, column: 17, scope: !21)
!220 = !DILocation(line: 123, column: 29, scope: !21)
!221 = !DILocation(line: 123, column: 27, scope: !21)
!222 = !DILocation(line: 123, column: 12, scope: !21)
!223 = !DILocation(line: 123, column: 8, scope: !21)
!224 = !DILocation(line: 123, column: 4, scope: !21)
!225 = !DILocation(line: 124, column: 7, scope: !21)
!226 = !DILocation(line: 124, column: 14, scope: !21)
!227 = !DILocation(line: 124, column: 12, scope: !21)
!228 = !DILocation(line: 124, column: 4, scope: !21)
!229 = !DILocation(line: 125, column: 6, scope: !21)
!230 = !DILocation(line: 125, column: 10, scope: !21)
!231 = !DILocation(line: 125, column: 8, scope: !21)
!232 = !DILocation(line: 125, column: 4, scope: !21)
!233 = !DILocation(line: 126, column: 6, scope: !234)
!234 = distinct !DILexicalBlock(scope: !21, file: !10, line: 126, column: 6)
!235 = !DILocation(line: 126, column: 9, scope: !234)
!236 = !DILocation(line: 126, column: 6, scope: !21)
!237 = !DILocation(line: 127, column: 16, scope: !238)
!238 = distinct !DILexicalBlock(scope: !234, file: !10, line: 126, column: 24)
!239 = !DILocation(line: 127, column: 7, scope: !238)
!240 = !DILocation(line: 127, column: 5, scope: !238)
!241 = !DILocation(line: 128, column: 26, scope: !238)
!242 = !DILocation(line: 128, column: 29, scope: !238)
!243 = !DILocation(line: 128, column: 36, scope: !238)
!244 = !DILocation(line: 128, column: 22, scope: !238)
!245 = !DILocation(line: 128, column: 10, scope: !238)
!246 = !DILocation(line: 129, column: 5, scope: !238)
!247 = !DILocation(line: 129, column: 16, scope: !238)
!248 = !DILocation(line: 129, column: 21, scope: !238)
!249 = !DILocation(line: 129, column: 25, scope: !238)
!250 = !DILocation(line: 129, column: 23, scope: !238)
!251 = !DILocation(line: 129, column: 30, scope: !238)
!252 = !DILocation(line: 129, column: 34, scope: !238)
!253 = !DILocation(line: 129, column: 32, scope: !238)
!254 = !DILocation(line: 129, column: 27, scope: !238)
!255 = !DILocation(line: 129, column: 39, scope: !238)
!256 = !DILocation(line: 129, column: 37, scope: !238)
!257 = !DILocation(line: 129, column: 18, scope: !238)
!258 = !DILocation(line: 129, column: 13, scope: !238)
!259 = !DILocation(line: 129, column: 7, scope: !238)
!260 = !DILocation(line: 128, column: 42, scope: !238)
!261 = !DILocation(line: 128, column: 3, scope: !238)
!262 = !DILocation(line: 131, column: 6, scope: !263)
!263 = distinct !DILexicalBlock(scope: !21, file: !10, line: 131, column: 6)
!264 = !DILocation(line: 131, column: 9, scope: !263)
!265 = !DILocation(line: 131, column: 6, scope: !21)
!266 = !DILocation(line: 132, column: 10, scope: !263)
!267 = !DILocation(line: 132, column: 3, scope: !263)
!268 = !DILocalVariable(name: "a", scope: !269, file: !10, line: 139, type: !8)
!269 = distinct !DILexicalBlock(scope: !263, file: !10, line: 133, column: 7)
!270 = !DILocation(line: 139, column: 10, scope: !269)
!271 = !DILocalVariable(name: "t", scope: !269, file: !10, line: 139, type: !8)
!272 = !DILocation(line: 139, column: 13, scope: !269)
!273 = !DILocation(line: 140, column: 7, scope: !269)
!274 = !DILocation(line: 140, column: 5, scope: !269)
!275 = !DILocation(line: 141, column: 3, scope: !269)
!276 = !DILocation(line: 141, column: 11, scope: !269)
!277 = !DILocation(line: 142, column: 7, scope: !269)
!278 = !DILocation(line: 142, column: 12, scope: !269)
!279 = !DILocation(line: 142, column: 16, scope: !269)
!280 = !DILocation(line: 142, column: 14, scope: !269)
!281 = !DILocation(line: 142, column: 9, scope: !269)
!282 = !DILocation(line: 142, column: 5, scope: !269)
!283 = !DILocation(line: 143, column: 18, scope: !269)
!284 = !DILocation(line: 143, column: 16, scope: !269)
!285 = !DILocation(line: 143, column: 9, scope: !269)
!286 = !DILocation(line: 143, column: 5, scope: !269)
!287 = !DILocation(line: 144, column: 3, scope: !269)
!288 = !DILocation(line: 144, column: 11, scope: !269)
!289 = !DILocation(line: 145, column: 13, scope: !269)
!290 = !DILocation(line: 145, column: 17, scope: !269)
!291 = !DILocation(line: 145, column: 15, scope: !269)
!292 = !DILocation(line: 145, column: 11, scope: !269)
!293 = !DILocation(line: 145, column: 5, scope: !269)
!294 = !DILocation(line: 146, column: 10, scope: !269)
!295 = !DILocation(line: 146, column: 14, scope: !269)
!296 = !DILocation(line: 146, column: 19, scope: !269)
!297 = !DILocation(line: 146, column: 23, scope: !269)
!298 = !DILocation(line: 146, column: 27, scope: !269)
!299 = !DILocation(line: 146, column: 25, scope: !269)
!300 = !DILocation(line: 146, column: 21, scope: !269)
!301 = !DILocation(line: 146, column: 16, scope: !269)
!302 = !DILocation(line: 146, column: 12, scope: !269)
!303 = !DILocation(line: 146, column: 3, scope: !269)
!304 = !DILocation(line: 148, column: 1, scope: !21)
!305 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 152, type: !306, scopeLine: 152, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!306 = !DISubroutineType(types: !307)
!307 = !{!7}
!308 = !DILocalVariable(name: "a0", scope: !305, file: !10, line: 153, type: !8)
!309 = !DILocation(line: 153, column: 12, scope: !305)
!310 = !DILocation(line: 154, column: 24, scope: !305)
!311 = !DILocation(line: 154, column: 5, scope: !305)
!312 = !DILocalVariable(name: "a1", scope: !305, file: !10, line: 155, type: !8)
!313 = !DILocation(line: 155, column: 12, scope: !305)
!314 = !DILocation(line: 156, column: 24, scope: !305)
!315 = !DILocation(line: 156, column: 5, scope: !305)
!316 = !DILocalVariable(name: "a2", scope: !305, file: !10, line: 157, type: !7)
!317 = !DILocation(line: 157, column: 9, scope: !305)
!318 = !DILocation(line: 158, column: 24, scope: !305)
!319 = !DILocation(line: 158, column: 5, scope: !305)
!320 = !DILocalVariable(name: "r", scope: !305, file: !10, line: 160, type: !8)
!321 = !DILocation(line: 160, column: 12, scope: !305)
!322 = !DILocation(line: 160, column: 29, scope: !305)
!323 = !DILocation(line: 160, column: 33, scope: !305)
!324 = !DILocation(line: 160, column: 37, scope: !305)
!325 = !DILocation(line: 160, column: 16, scope: !305)
!326 = !DILocation(line: 161, column: 5, scope: !305)
