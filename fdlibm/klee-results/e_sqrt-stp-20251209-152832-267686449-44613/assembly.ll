; ModuleID = 'e_sqrt.bc'
source_filename = "./e_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_sqrt(double %x) #0 !dbg !23 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %z = alloca double, align 8
  %sign = alloca i32, align 4
  %r = alloca i32, align 4
  %t1 = alloca i32, align 4
  %s1 = alloca i32, align 4
  %ix1 = alloca i32, align 4
  %q1 = alloca i32, align 4
  %ix0 = alloca i32, align 4
  %s0 = alloca i32, align 4
  %q = alloca i32, align 4
  %m = alloca i32, align 4
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata double* %z, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %sign, metadata !30, metadata !DIExpression()), !dbg !31
  store i32 -2147483648, i32* %sign, align 4, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %r, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %t1, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %s1, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %ix1, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %q1, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %ix0, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %s0, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata i32* %q, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i32* %m, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata i32* %t, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i32* %i, metadata !52, metadata !DIExpression()), !dbg !53
  %0 = bitcast double* %x.addr to i32*, !dbg !54
  %1 = load i32, i32* %0, align 8, !dbg !54
  store i32 %1, i32* %ix0, align 4, !dbg !55
  %2 = bitcast double* %x.addr to i32*, !dbg !56
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 1, !dbg !56
  %3 = load i32, i32* %add.ptr, align 4, !dbg !56
  store i32 %3, i32* %ix1, align 4, !dbg !57
  %4 = load i32, i32* %ix0, align 4, !dbg !58
  %and = and i32 %4, 2146435072, !dbg !60
  %cmp = icmp eq i32 %and, 2146435072, !dbg !61
  br i1 %cmp, label %if.then, label %if.end, !dbg !62

if.then:                                          ; preds = %entry
  %5 = load double, double* %x.addr, align 8, !dbg !63
  %6 = load double, double* %x.addr, align 8, !dbg !65
  %mul = fmul double %5, %6, !dbg !66
  %7 = load double, double* %x.addr, align 8, !dbg !67
  %add = fadd double %mul, %7, !dbg !68
  store double %add, double* %retval, align 8, !dbg !69
  br label %return, !dbg !69

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %ix0, align 4, !dbg !70
  %cmp1 = icmp sle i32 %8, 0, !dbg !72
  br i1 %cmp1, label %if.then2, label %if.end11, !dbg !73

if.then2:                                         ; preds = %if.end
  %9 = load i32, i32* %ix0, align 4, !dbg !74
  %10 = load i32, i32* %sign, align 4, !dbg !77
  %neg = xor i32 %10, -1, !dbg !78
  %and3 = and i32 %9, %neg, !dbg !79
  %11 = load i32, i32* %ix1, align 4, !dbg !80
  %or = or i32 %and3, %11, !dbg !81
  %cmp4 = icmp eq i32 %or, 0, !dbg !82
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !83

if.then5:                                         ; preds = %if.then2
  %12 = load double, double* %x.addr, align 8, !dbg !84
  store double %12, double* %retval, align 8, !dbg !85
  br label %return, !dbg !85

if.else:                                          ; preds = %if.then2
  %13 = load i32, i32* %ix0, align 4, !dbg !86
  %cmp6 = icmp slt i32 %13, 0, !dbg !88
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !89

if.then7:                                         ; preds = %if.else
  %14 = load double, double* %x.addr, align 8, !dbg !90
  %15 = load double, double* %x.addr, align 8, !dbg !91
  %sub = fsub double %14, %15, !dbg !92
  %16 = load double, double* %x.addr, align 8, !dbg !93
  %17 = load double, double* %x.addr, align 8, !dbg !94
  %sub8 = fsub double %16, %17, !dbg !95
  %div = fdiv double %sub, %sub8, !dbg !96
  store double %div, double* %retval, align 8, !dbg !97
  br label %return, !dbg !97

if.end9:                                          ; preds = %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9
  br label %if.end11, !dbg !98

if.end11:                                         ; preds = %if.end10, %if.end
  %18 = load i32, i32* %ix0, align 4, !dbg !99
  %shr = ashr i32 %18, 20, !dbg !100
  store i32 %shr, i32* %m, align 4, !dbg !101
  %19 = load i32, i32* %m, align 4, !dbg !102
  %cmp12 = icmp eq i32 %19, 0, !dbg !104
  br i1 %cmp12, label %if.then13, label %if.end27, !dbg !105

if.then13:                                        ; preds = %if.end11
  br label %while.cond, !dbg !106

while.cond:                                       ; preds = %while.body, %if.then13
  %20 = load i32, i32* %ix0, align 4, !dbg !108
  %cmp14 = icmp eq i32 %20, 0, !dbg !109
  br i1 %cmp14, label %while.body, label %while.end, !dbg !106

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %m, align 4, !dbg !110
  %sub15 = sub nsw i32 %21, 21, !dbg !110
  store i32 %sub15, i32* %m, align 4, !dbg !110
  %22 = load i32, i32* %ix1, align 4, !dbg !112
  %shr16 = lshr i32 %22, 11, !dbg !113
  %23 = load i32, i32* %ix0, align 4, !dbg !114
  %or17 = or i32 %23, %shr16, !dbg !114
  store i32 %or17, i32* %ix0, align 4, !dbg !114
  %24 = load i32, i32* %ix1, align 4, !dbg !115
  %shl = shl i32 %24, 21, !dbg !115
  store i32 %shl, i32* %ix1, align 4, !dbg !115
  br label %while.cond, !dbg !106, !llvm.loop !116

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %i, align 4, !dbg !119
  br label %for.cond, !dbg !121

for.cond:                                         ; preds = %for.inc, %while.end
  %25 = load i32, i32* %ix0, align 4, !dbg !122
  %and18 = and i32 %25, 1048576, !dbg !124
  %cmp19 = icmp eq i32 %and18, 0, !dbg !125
  br i1 %cmp19, label %for.body, label %for.end, !dbg !126

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %ix0, align 4, !dbg !127
  %shl20 = shl i32 %26, 1, !dbg !127
  store i32 %shl20, i32* %ix0, align 4, !dbg !127
  br label %for.inc, !dbg !128

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !dbg !129
  %inc = add nsw i32 %27, 1, !dbg !129
  store i32 %inc, i32* %i, align 4, !dbg !129
  br label %for.cond, !dbg !130, !llvm.loop !131

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %i, align 4, !dbg !133
  %sub21 = sub nsw i32 %28, 1, !dbg !134
  %29 = load i32, i32* %m, align 4, !dbg !135
  %sub22 = sub nsw i32 %29, %sub21, !dbg !135
  store i32 %sub22, i32* %m, align 4, !dbg !135
  %30 = load i32, i32* %ix1, align 4, !dbg !136
  %31 = load i32, i32* %i, align 4, !dbg !137
  %sub23 = sub nsw i32 32, %31, !dbg !138
  %int_cast_to_i64 = zext i32 %sub23 to i64, !dbg !139
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !139
  %shr24 = lshr i32 %30, %sub23, !dbg !139, !klee.check.shift !140
  %32 = load i32, i32* %ix0, align 4, !dbg !141
  %or25 = or i32 %32, %shr24, !dbg !141
  store i32 %or25, i32* %ix0, align 4, !dbg !141
  %33 = load i32, i32* %i, align 4, !dbg !142
  %34 = load i32, i32* %ix1, align 4, !dbg !143
  %int_cast_to_i641 = zext i32 %33 to i64, !dbg !143
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !143
  %shl26 = shl i32 %34, %33, !dbg !143, !klee.check.shift !140
  store i32 %shl26, i32* %ix1, align 4, !dbg !143
  br label %if.end27, !dbg !144

if.end27:                                         ; preds = %for.end, %if.end11
  %35 = load i32, i32* %m, align 4, !dbg !145
  %sub28 = sub nsw i32 %35, 1023, !dbg !145
  store i32 %sub28, i32* %m, align 4, !dbg !145
  %36 = load i32, i32* %ix0, align 4, !dbg !146
  %and29 = and i32 %36, 1048575, !dbg !147
  %or30 = or i32 %and29, 1048576, !dbg !148
  store i32 %or30, i32* %ix0, align 4, !dbg !149
  %37 = load i32, i32* %m, align 4, !dbg !150
  %and31 = and i32 %37, 1, !dbg !152
  %tobool = icmp ne i32 %and31, 0, !dbg !152
  br i1 %tobool, label %if.then32, label %if.end38, !dbg !153

if.then32:                                        ; preds = %if.end27
  %38 = load i32, i32* %ix0, align 4, !dbg !154
  %39 = load i32, i32* %ix1, align 4, !dbg !156
  %40 = load i32, i32* %sign, align 4, !dbg !157
  %and33 = and i32 %39, %40, !dbg !158
  %shr34 = lshr i32 %and33, 31, !dbg !159
  %add35 = add i32 %38, %shr34, !dbg !160
  %41 = load i32, i32* %ix0, align 4, !dbg !161
  %add36 = add i32 %41, %add35, !dbg !161
  store i32 %add36, i32* %ix0, align 4, !dbg !161
  %42 = load i32, i32* %ix1, align 4, !dbg !162
  %43 = load i32, i32* %ix1, align 4, !dbg !163
  %add37 = add i32 %43, %42, !dbg !163
  store i32 %add37, i32* %ix1, align 4, !dbg !163
  br label %if.end38, !dbg !164

if.end38:                                         ; preds = %if.then32, %if.end27
  %44 = load i32, i32* %m, align 4, !dbg !165
  %shr39 = ashr i32 %44, 1, !dbg !165
  store i32 %shr39, i32* %m, align 4, !dbg !165
  %45 = load i32, i32* %ix0, align 4, !dbg !166
  %46 = load i32, i32* %ix1, align 4, !dbg !167
  %47 = load i32, i32* %sign, align 4, !dbg !168
  %and40 = and i32 %46, %47, !dbg !169
  %shr41 = lshr i32 %and40, 31, !dbg !170
  %add42 = add i32 %45, %shr41, !dbg !171
  %48 = load i32, i32* %ix0, align 4, !dbg !172
  %add43 = add i32 %48, %add42, !dbg !172
  store i32 %add43, i32* %ix0, align 4, !dbg !172
  %49 = load i32, i32* %ix1, align 4, !dbg !173
  %50 = load i32, i32* %ix1, align 4, !dbg !174
  %add44 = add i32 %50, %49, !dbg !174
  store i32 %add44, i32* %ix1, align 4, !dbg !174
  store i32 0, i32* %s1, align 4, !dbg !175
  store i32 0, i32* %s0, align 4, !dbg !176
  store i32 0, i32* %q1, align 4, !dbg !177
  store i32 0, i32* %q, align 4, !dbg !178
  store i32 2097152, i32* %r, align 4, !dbg !179
  br label %while.cond45, !dbg !180

while.cond45:                                     ; preds = %if.end54, %if.end38
  %51 = load i32, i32* %r, align 4, !dbg !181
  %cmp46 = icmp ne i32 %51, 0, !dbg !182
  br i1 %cmp46, label %while.body47, label %while.end61, !dbg !180

while.body47:                                     ; preds = %while.cond45
  %52 = load i32, i32* %s0, align 4, !dbg !183
  %53 = load i32, i32* %r, align 4, !dbg !185
  %add48 = add i32 %52, %53, !dbg !186
  store i32 %add48, i32* %t, align 4, !dbg !187
  %54 = load i32, i32* %t, align 4, !dbg !188
  %55 = load i32, i32* %ix0, align 4, !dbg !190
  %cmp49 = icmp sle i32 %54, %55, !dbg !191
  br i1 %cmp49, label %if.then50, label %if.end54, !dbg !192

if.then50:                                        ; preds = %while.body47
  %56 = load i32, i32* %t, align 4, !dbg !193
  %57 = load i32, i32* %r, align 4, !dbg !195
  %add51 = add i32 %56, %57, !dbg !196
  store i32 %add51, i32* %s0, align 4, !dbg !197
  %58 = load i32, i32* %t, align 4, !dbg !198
  %59 = load i32, i32* %ix0, align 4, !dbg !199
  %sub52 = sub nsw i32 %59, %58, !dbg !199
  store i32 %sub52, i32* %ix0, align 4, !dbg !199
  %60 = load i32, i32* %r, align 4, !dbg !200
  %61 = load i32, i32* %q, align 4, !dbg !201
  %add53 = add i32 %61, %60, !dbg !201
  store i32 %add53, i32* %q, align 4, !dbg !201
  br label %if.end54, !dbg !202

if.end54:                                         ; preds = %if.then50, %while.body47
  %62 = load i32, i32* %ix0, align 4, !dbg !203
  %63 = load i32, i32* %ix1, align 4, !dbg !204
  %64 = load i32, i32* %sign, align 4, !dbg !205
  %and55 = and i32 %63, %64, !dbg !206
  %shr56 = lshr i32 %and55, 31, !dbg !207
  %add57 = add i32 %62, %shr56, !dbg !208
  %65 = load i32, i32* %ix0, align 4, !dbg !209
  %add58 = add i32 %65, %add57, !dbg !209
  store i32 %add58, i32* %ix0, align 4, !dbg !209
  %66 = load i32, i32* %ix1, align 4, !dbg !210
  %67 = load i32, i32* %ix1, align 4, !dbg !211
  %add59 = add i32 %67, %66, !dbg !211
  store i32 %add59, i32* %ix1, align 4, !dbg !211
  %68 = load i32, i32* %r, align 4, !dbg !212
  %shr60 = lshr i32 %68, 1, !dbg !212
  store i32 %shr60, i32* %r, align 4, !dbg !212
  br label %while.cond45, !dbg !180, !llvm.loop !213

while.end61:                                      ; preds = %while.cond45
  %69 = load i32, i32* %sign, align 4, !dbg !215
  store i32 %69, i32* %r, align 4, !dbg !216
  br label %while.cond62, !dbg !217

while.cond62:                                     ; preds = %if.end86, %while.end61
  %70 = load i32, i32* %r, align 4, !dbg !218
  %cmp63 = icmp ne i32 %70, 0, !dbg !219
  br i1 %cmp63, label %while.body64, label %while.end93, !dbg !217

while.body64:                                     ; preds = %while.cond62
  %71 = load i32, i32* %s1, align 4, !dbg !220
  %72 = load i32, i32* %r, align 4, !dbg !222
  %add65 = add i32 %71, %72, !dbg !223
  store i32 %add65, i32* %t1, align 4, !dbg !224
  %73 = load i32, i32* %s0, align 4, !dbg !225
  store i32 %73, i32* %t, align 4, !dbg !226
  %74 = load i32, i32* %t, align 4, !dbg !227
  %75 = load i32, i32* %ix0, align 4, !dbg !229
  %cmp66 = icmp slt i32 %74, %75, !dbg !230
  br i1 %cmp66, label %if.then69, label %lor.lhs.false, !dbg !231

lor.lhs.false:                                    ; preds = %while.body64
  %76 = load i32, i32* %t, align 4, !dbg !232
  %77 = load i32, i32* %ix0, align 4, !dbg !233
  %cmp67 = icmp eq i32 %76, %77, !dbg !234
  br i1 %cmp67, label %land.lhs.true, label %if.end86, !dbg !235

land.lhs.true:                                    ; preds = %lor.lhs.false
  %78 = load i32, i32* %t1, align 4, !dbg !236
  %79 = load i32, i32* %ix1, align 4, !dbg !237
  %cmp68 = icmp ule i32 %78, %79, !dbg !238
  br i1 %cmp68, label %if.then69, label %if.end86, !dbg !239

if.then69:                                        ; preds = %land.lhs.true, %while.body64
  %80 = load i32, i32* %t1, align 4, !dbg !240
  %81 = load i32, i32* %r, align 4, !dbg !242
  %add70 = add i32 %80, %81, !dbg !243
  store i32 %add70, i32* %s1, align 4, !dbg !244
  %82 = load i32, i32* %t1, align 4, !dbg !245
  %83 = load i32, i32* %sign, align 4, !dbg !247
  %and71 = and i32 %82, %83, !dbg !248
  %84 = load i32, i32* %sign, align 4, !dbg !249
  %cmp72 = icmp eq i32 %and71, %84, !dbg !250
  br i1 %cmp72, label %land.lhs.true73, label %if.end78, !dbg !251

land.lhs.true73:                                  ; preds = %if.then69
  %85 = load i32, i32* %s1, align 4, !dbg !252
  %86 = load i32, i32* %sign, align 4, !dbg !253
  %and74 = and i32 %85, %86, !dbg !254
  %cmp75 = icmp eq i32 %and74, 0, !dbg !255
  br i1 %cmp75, label %if.then76, label %if.end78, !dbg !256

if.then76:                                        ; preds = %land.lhs.true73
  %87 = load i32, i32* %s0, align 4, !dbg !257
  %add77 = add nsw i32 %87, 1, !dbg !257
  store i32 %add77, i32* %s0, align 4, !dbg !257
  br label %if.end78, !dbg !258

if.end78:                                         ; preds = %if.then76, %land.lhs.true73, %if.then69
  %88 = load i32, i32* %t, align 4, !dbg !259
  %89 = load i32, i32* %ix0, align 4, !dbg !260
  %sub79 = sub nsw i32 %89, %88, !dbg !260
  store i32 %sub79, i32* %ix0, align 4, !dbg !260
  %90 = load i32, i32* %ix1, align 4, !dbg !261
  %91 = load i32, i32* %t1, align 4, !dbg !263
  %cmp80 = icmp ult i32 %90, %91, !dbg !264
  br i1 %cmp80, label %if.then81, label %if.end83, !dbg !265

if.then81:                                        ; preds = %if.end78
  %92 = load i32, i32* %ix0, align 4, !dbg !266
  %sub82 = sub nsw i32 %92, 1, !dbg !266
  store i32 %sub82, i32* %ix0, align 4, !dbg !266
  br label %if.end83, !dbg !267

if.end83:                                         ; preds = %if.then81, %if.end78
  %93 = load i32, i32* %t1, align 4, !dbg !268
  %94 = load i32, i32* %ix1, align 4, !dbg !269
  %sub84 = sub i32 %94, %93, !dbg !269
  store i32 %sub84, i32* %ix1, align 4, !dbg !269
  %95 = load i32, i32* %r, align 4, !dbg !270
  %96 = load i32, i32* %q1, align 4, !dbg !271
  %add85 = add i32 %96, %95, !dbg !271
  store i32 %add85, i32* %q1, align 4, !dbg !271
  br label %if.end86, !dbg !272

if.end86:                                         ; preds = %if.end83, %land.lhs.true, %lor.lhs.false
  %97 = load i32, i32* %ix0, align 4, !dbg !273
  %98 = load i32, i32* %ix1, align 4, !dbg !274
  %99 = load i32, i32* %sign, align 4, !dbg !275
  %and87 = and i32 %98, %99, !dbg !276
  %shr88 = lshr i32 %and87, 31, !dbg !277
  %add89 = add i32 %97, %shr88, !dbg !278
  %100 = load i32, i32* %ix0, align 4, !dbg !279
  %add90 = add i32 %100, %add89, !dbg !279
  store i32 %add90, i32* %ix0, align 4, !dbg !279
  %101 = load i32, i32* %ix1, align 4, !dbg !280
  %102 = load i32, i32* %ix1, align 4, !dbg !281
  %add91 = add i32 %102, %101, !dbg !281
  store i32 %add91, i32* %ix1, align 4, !dbg !281
  %103 = load i32, i32* %r, align 4, !dbg !282
  %shr92 = lshr i32 %103, 1, !dbg !282
  store i32 %shr92, i32* %r, align 4, !dbg !282
  br label %while.cond62, !dbg !217, !llvm.loop !283

while.end93:                                      ; preds = %while.cond62
  %104 = load i32, i32* %ix0, align 4, !dbg !285
  %105 = load i32, i32* %ix1, align 4, !dbg !287
  %or94 = or i32 %104, %105, !dbg !288
  %cmp95 = icmp ne i32 %or94, 0, !dbg !289
  br i1 %cmp95, label %if.then96, label %if.end116, !dbg !290

if.then96:                                        ; preds = %while.end93
  store double 1.000000e+00, double* %z, align 8, !dbg !291
  %106 = load double, double* %z, align 8, !dbg !293
  %cmp97 = fcmp oge double %106, 1.000000e+00, !dbg !295
  br i1 %cmp97, label %if.then98, label %if.end115, !dbg !296

if.then98:                                        ; preds = %if.then96
  store double 1.000000e+00, double* %z, align 8, !dbg !297
  %107 = load i32, i32* %q1, align 4, !dbg !299
  %cmp99 = icmp eq i32 %107, -1, !dbg !301
  br i1 %cmp99, label %if.then100, label %if.else102, !dbg !302

if.then100:                                       ; preds = %if.then98
  store i32 0, i32* %q1, align 4, !dbg !303
  %108 = load i32, i32* %q, align 4, !dbg !305
  %add101 = add nsw i32 %108, 1, !dbg !305
  store i32 %add101, i32* %q, align 4, !dbg !305
  br label %if.end114, !dbg !306

if.else102:                                       ; preds = %if.then98
  %109 = load double, double* %z, align 8, !dbg !307
  %cmp103 = fcmp ogt double %109, 1.000000e+00, !dbg !309
  br i1 %cmp103, label %if.then104, label %if.else110, !dbg !310

if.then104:                                       ; preds = %if.else102
  %110 = load i32, i32* %q1, align 4, !dbg !311
  %cmp105 = icmp eq i32 %110, -2, !dbg !314
  br i1 %cmp105, label %if.then106, label %if.end108, !dbg !315

if.then106:                                       ; preds = %if.then104
  %111 = load i32, i32* %q, align 4, !dbg !316
  %add107 = add nsw i32 %111, 1, !dbg !316
  store i32 %add107, i32* %q, align 4, !dbg !316
  br label %if.end108, !dbg !317

if.end108:                                        ; preds = %if.then106, %if.then104
  %112 = load i32, i32* %q1, align 4, !dbg !318
  %add109 = add i32 %112, 2, !dbg !318
  store i32 %add109, i32* %q1, align 4, !dbg !318
  br label %if.end113, !dbg !319

if.else110:                                       ; preds = %if.else102
  %113 = load i32, i32* %q1, align 4, !dbg !320
  %and111 = and i32 %113, 1, !dbg !321
  %114 = load i32, i32* %q1, align 4, !dbg !322
  %add112 = add i32 %114, %and111, !dbg !322
  store i32 %add112, i32* %q1, align 4, !dbg !322
  br label %if.end113

if.end113:                                        ; preds = %if.else110, %if.end108
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.then100
  br label %if.end115, !dbg !323

if.end115:                                        ; preds = %if.end114, %if.then96
  br label %if.end116, !dbg !324

if.end116:                                        ; preds = %if.end115, %while.end93
  %115 = load i32, i32* %q, align 4, !dbg !325
  %shr117 = ashr i32 %115, 1, !dbg !326
  %add118 = add nsw i32 %shr117, 1071644672, !dbg !327
  store i32 %add118, i32* %ix0, align 4, !dbg !328
  %116 = load i32, i32* %q1, align 4, !dbg !329
  %shr119 = lshr i32 %116, 1, !dbg !330
  store i32 %shr119, i32* %ix1, align 4, !dbg !331
  %117 = load i32, i32* %q, align 4, !dbg !332
  %and120 = and i32 %117, 1, !dbg !334
  %cmp121 = icmp eq i32 %and120, 1, !dbg !335
  br i1 %cmp121, label %if.then122, label %if.end124, !dbg !336

if.then122:                                       ; preds = %if.end116
  %118 = load i32, i32* %sign, align 4, !dbg !337
  %119 = load i32, i32* %ix1, align 4, !dbg !338
  %or123 = or i32 %119, %118, !dbg !338
  store i32 %or123, i32* %ix1, align 4, !dbg !338
  br label %if.end124, !dbg !339

if.end124:                                        ; preds = %if.then122, %if.end116
  %120 = load i32, i32* %m, align 4, !dbg !340
  %shl125 = shl i32 %120, 20, !dbg !341
  %121 = load i32, i32* %ix0, align 4, !dbg !342
  %add126 = add nsw i32 %121, %shl125, !dbg !342
  store i32 %add126, i32* %ix0, align 4, !dbg !342
  %122 = load i32, i32* %ix0, align 4, !dbg !343
  %123 = bitcast double* %z to i32*, !dbg !344
  store i32 %122, i32* %123, align 8, !dbg !345
  %124 = load i32, i32* %ix1, align 4, !dbg !346
  %125 = bitcast double* %z to i32*, !dbg !347
  %add.ptr127 = getelementptr inbounds i32, i32* %125, i64 1, !dbg !347
  store i32 %124, i32* %add.ptr127, align 4, !dbg !348
  %126 = load double, double* %z, align 8, !dbg !349
  store double %126, double* %retval, align 8, !dbg !350
  br label %return, !dbg !350

return:                                           ; preds = %if.end124, %if.then7, %if.then5, %if.then
  %127 = load double, double* %retval, align 8, !dbg !351
  ret double %127, !dbg !351
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !352 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !355, metadata !DIExpression()), !dbg !356
  %0 = bitcast double* %a0 to i8*, !dbg !357
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !358
  call void @llvm.dbg.declare(metadata double* %r, metadata !359, metadata !DIExpression()), !dbg !360
  %1 = load double, double* %a0, align 8, !dbg !361
  %call = call double @__ieee754_sqrt(double %1), !dbg !362
  store double %call, double* %r, align 8, !dbg !360
  ret i32 0, !dbg !363
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_overshift_check(i64 %bitWidth, i64 %shift) #3 !dbg !364 {
entry:
  %bitWidth.addr = alloca i64, align 8
  %shift.addr = alloca i64, align 8
  store i64 %bitWidth, i64* %bitWidth.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %bitWidth.addr, metadata !369, metadata !DIExpression()), !dbg !370
  store i64 %shift, i64* %shift.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %shift.addr, metadata !371, metadata !DIExpression()), !dbg !372
  %0 = load i64, i64* %shift.addr, align 8, !dbg !373
  %1 = load i64, i64* %bitWidth.addr, align 8, !dbg !375
  %cmp = icmp uge i64 %0, %1, !dbg !376
  br i1 %cmp, label %if.then, label %if.end, !dbg !377

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !378
  unreachable, !dbg !378

if.end:                                           ; preds = %entry
  ret void, !dbg !380
}

; Function Attrs: noreturn
declare dso_local void @klee_report_error(i8*, i32, i8*, i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!0, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21}
!llvm.ident = !{!22, !22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "e_sqrt.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !13}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !10, line: 86, type: !11, isLocal: true, isDefinition: true)
!10 = !DIFile(filename: "./e_sqrt.c", directory: "/home/klee/logic_bombs/fdlibm")
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression(DW_OP_constu, 118622047889322841, DW_OP_stack_value))
!14 = distinct !DIGlobalVariable(name: "tiny", scope: !0, file: !10, line: 86, type: !11, isLocal: true, isDefinition: true)
!15 = distinct !DICompileUnit(language: DW_LANG_C89, file: !16, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/tmp/klee_src/runtime/Intrinsic/klee_overshift_check.c", directory: "/tmp/klee_build130stp_z3/runtime/Intrinsic")
!17 = !{i32 7, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!23 = distinct !DISubprogram(name: "__ieee754_sqrt", scope: !10, file: !10, line: 92, type: !24, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!24 = !DISubroutineType(types: !25)
!25 = !{!12, !12}
!26 = !DILocalVariable(name: "x", arg: 1, scope: !23, file: !10, line: 92, type: !12)
!27 = !DILocation(line: 92, column: 31, scope: !23)
!28 = !DILocalVariable(name: "z", scope: !23, file: !10, line: 98, type: !12)
!29 = !DILocation(line: 98, column: 9, scope: !23)
!30 = !DILocalVariable(name: "sign", scope: !23, file: !10, line: 99, type: !4)
!31 = !DILocation(line: 99, column: 7, scope: !23)
!32 = !DILocalVariable(name: "r", scope: !23, file: !10, line: 100, type: !6)
!33 = !DILocation(line: 100, column: 11, scope: !23)
!34 = !DILocalVariable(name: "t1", scope: !23, file: !10, line: 100, type: !6)
!35 = !DILocation(line: 100, column: 13, scope: !23)
!36 = !DILocalVariable(name: "s1", scope: !23, file: !10, line: 100, type: !6)
!37 = !DILocation(line: 100, column: 16, scope: !23)
!38 = !DILocalVariable(name: "ix1", scope: !23, file: !10, line: 100, type: !6)
!39 = !DILocation(line: 100, column: 19, scope: !23)
!40 = !DILocalVariable(name: "q1", scope: !23, file: !10, line: 100, type: !6)
!41 = !DILocation(line: 100, column: 23, scope: !23)
!42 = !DILocalVariable(name: "ix0", scope: !23, file: !10, line: 101, type: !4)
!43 = !DILocation(line: 101, column: 6, scope: !23)
!44 = !DILocalVariable(name: "s0", scope: !23, file: !10, line: 101, type: !4)
!45 = !DILocation(line: 101, column: 10, scope: !23)
!46 = !DILocalVariable(name: "q", scope: !23, file: !10, line: 101, type: !4)
!47 = !DILocation(line: 101, column: 13, scope: !23)
!48 = !DILocalVariable(name: "m", scope: !23, file: !10, line: 101, type: !4)
!49 = !DILocation(line: 101, column: 15, scope: !23)
!50 = !DILocalVariable(name: "t", scope: !23, file: !10, line: 101, type: !4)
!51 = !DILocation(line: 101, column: 17, scope: !23)
!52 = !DILocalVariable(name: "i", scope: !23, file: !10, line: 101, type: !4)
!53 = !DILocation(line: 101, column: 19, scope: !23)
!54 = !DILocation(line: 103, column: 8, scope: !23)
!55 = !DILocation(line: 103, column: 6, scope: !23)
!56 = !DILocation(line: 104, column: 8, scope: !23)
!57 = !DILocation(line: 104, column: 6, scope: !23)
!58 = !DILocation(line: 107, column: 6, scope: !59)
!59 = distinct !DILexicalBlock(scope: !23, file: !10, line: 107, column: 5)
!60 = !DILocation(line: 107, column: 9, scope: !59)
!61 = !DILocation(line: 107, column: 21, scope: !59)
!62 = !DILocation(line: 107, column: 5, scope: !23)
!63 = !DILocation(line: 108, column: 13, scope: !64)
!64 = distinct !DILexicalBlock(scope: !59, file: !10, line: 107, column: 35)
!65 = !DILocation(line: 108, column: 15, scope: !64)
!66 = !DILocation(line: 108, column: 14, scope: !64)
!67 = !DILocation(line: 108, column: 17, scope: !64)
!68 = !DILocation(line: 108, column: 16, scope: !64)
!69 = !DILocation(line: 108, column: 6, scope: !64)
!70 = !DILocation(line: 112, column: 5, scope: !71)
!71 = distinct !DILexicalBlock(scope: !23, file: !10, line: 112, column: 5)
!72 = !DILocation(line: 112, column: 8, scope: !71)
!73 = !DILocation(line: 112, column: 5, scope: !23)
!74 = !DILocation(line: 113, column: 11, scope: !75)
!75 = distinct !DILexicalBlock(scope: !76, file: !10, line: 113, column: 9)
!76 = distinct !DILexicalBlock(scope: !71, file: !10, line: 112, column: 13)
!77 = !DILocation(line: 113, column: 17, scope: !75)
!78 = !DILocation(line: 113, column: 16, scope: !75)
!79 = !DILocation(line: 113, column: 14, scope: !75)
!80 = !DILocation(line: 113, column: 24, scope: !75)
!81 = !DILocation(line: 113, column: 23, scope: !75)
!82 = !DILocation(line: 113, column: 28, scope: !75)
!83 = !DILocation(line: 113, column: 9, scope: !76)
!84 = !DILocation(line: 113, column: 40, scope: !75)
!85 = !DILocation(line: 113, column: 33, scope: !75)
!86 = !DILocation(line: 114, column: 14, scope: !87)
!87 = distinct !DILexicalBlock(scope: !75, file: !10, line: 114, column: 14)
!88 = !DILocation(line: 114, column: 17, scope: !87)
!89 = !DILocation(line: 114, column: 14, scope: !75)
!90 = !DILocation(line: 115, column: 11, scope: !87)
!91 = !DILocation(line: 115, column: 13, scope: !87)
!92 = !DILocation(line: 115, column: 12, scope: !87)
!93 = !DILocation(line: 115, column: 17, scope: !87)
!94 = !DILocation(line: 115, column: 19, scope: !87)
!95 = !DILocation(line: 115, column: 18, scope: !87)
!96 = !DILocation(line: 115, column: 15, scope: !87)
!97 = !DILocation(line: 115, column: 3, scope: !87)
!98 = !DILocation(line: 116, column: 2, scope: !76)
!99 = !DILocation(line: 118, column: 7, scope: !23)
!100 = !DILocation(line: 118, column: 10, scope: !23)
!101 = !DILocation(line: 118, column: 4, scope: !23)
!102 = !DILocation(line: 119, column: 5, scope: !103)
!103 = distinct !DILexicalBlock(scope: !23, file: !10, line: 119, column: 5)
!104 = !DILocation(line: 119, column: 6, scope: !103)
!105 = !DILocation(line: 119, column: 5, scope: !23)
!106 = !DILocation(line: 120, column: 6, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !10, line: 119, column: 11)
!108 = !DILocation(line: 120, column: 12, scope: !107)
!109 = !DILocation(line: 120, column: 15, scope: !107)
!110 = !DILocation(line: 121, column: 5, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !10, line: 120, column: 20)
!112 = !DILocation(line: 122, column: 11, scope: !111)
!113 = !DILocation(line: 122, column: 14, scope: !111)
!114 = !DILocation(line: 122, column: 7, scope: !111)
!115 = !DILocation(line: 122, column: 25, scope: !111)
!116 = distinct !{!116, !106, !117, !118}
!117 = !DILocation(line: 123, column: 6, scope: !107)
!118 = !{!"llvm.loop.mustprogress"}
!119 = !DILocation(line: 124, column: 11, scope: !120)
!120 = distinct !DILexicalBlock(scope: !107, file: !10, line: 124, column: 6)
!121 = !DILocation(line: 124, column: 10, scope: !120)
!122 = !DILocation(line: 124, column: 15, scope: !123)
!123 = distinct !DILexicalBlock(scope: !120, file: !10, line: 124, column: 6)
!124 = !DILocation(line: 124, column: 18, scope: !123)
!125 = !DILocation(line: 124, column: 30, scope: !123)
!126 = !DILocation(line: 124, column: 6, scope: !120)
!127 = !DILocation(line: 124, column: 42, scope: !123)
!128 = !DILocation(line: 124, column: 39, scope: !123)
!129 = !DILocation(line: 124, column: 35, scope: !123)
!130 = !DILocation(line: 124, column: 6, scope: !123)
!131 = distinct !{!131, !126, !132, !118}
!132 = !DILocation(line: 124, column: 45, scope: !120)
!133 = !DILocation(line: 125, column: 11, scope: !107)
!134 = !DILocation(line: 125, column: 12, scope: !107)
!135 = !DILocation(line: 125, column: 8, scope: !107)
!136 = !DILocation(line: 126, column: 14, scope: !107)
!137 = !DILocation(line: 126, column: 23, scope: !107)
!138 = !DILocation(line: 126, column: 22, scope: !107)
!139 = !DILocation(line: 126, column: 17, scope: !107)
!140 = !{!"True"}
!141 = !DILocation(line: 126, column: 10, scope: !107)
!142 = !DILocation(line: 127, column: 14, scope: !107)
!143 = !DILocation(line: 127, column: 10, scope: !107)
!144 = !DILocation(line: 128, column: 2, scope: !107)
!145 = !DILocation(line: 129, column: 4, scope: !23)
!146 = !DILocation(line: 130, column: 9, scope: !23)
!147 = !DILocation(line: 130, column: 12, scope: !23)
!148 = !DILocation(line: 130, column: 24, scope: !23)
!149 = !DILocation(line: 130, column: 6, scope: !23)
!150 = !DILocation(line: 131, column: 5, scope: !151)
!151 = distinct !DILexicalBlock(scope: !23, file: !10, line: 131, column: 5)
!152 = !DILocation(line: 131, column: 6, scope: !151)
!153 = !DILocation(line: 131, column: 5, scope: !23)
!154 = !DILocation(line: 132, column: 13, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !10, line: 131, column: 9)
!156 = !DILocation(line: 132, column: 21, scope: !155)
!157 = !DILocation(line: 132, column: 25, scope: !155)
!158 = !DILocation(line: 132, column: 24, scope: !155)
!159 = !DILocation(line: 132, column: 30, scope: !155)
!160 = !DILocation(line: 132, column: 17, scope: !155)
!161 = !DILocation(line: 132, column: 10, scope: !155)
!162 = !DILocation(line: 133, column: 13, scope: !155)
!163 = !DILocation(line: 133, column: 10, scope: !155)
!164 = !DILocation(line: 134, column: 2, scope: !155)
!165 = !DILocation(line: 135, column: 4, scope: !23)
!166 = !DILocation(line: 138, column: 9, scope: !23)
!167 = !DILocation(line: 138, column: 17, scope: !23)
!168 = !DILocation(line: 138, column: 21, scope: !23)
!169 = !DILocation(line: 138, column: 20, scope: !23)
!170 = !DILocation(line: 138, column: 26, scope: !23)
!171 = !DILocation(line: 138, column: 13, scope: !23)
!172 = !DILocation(line: 138, column: 6, scope: !23)
!173 = !DILocation(line: 139, column: 9, scope: !23)
!174 = !DILocation(line: 139, column: 6, scope: !23)
!175 = !DILocation(line: 140, column: 19, scope: !23)
!176 = !DILocation(line: 140, column: 14, scope: !23)
!177 = !DILocation(line: 140, column: 9, scope: !23)
!178 = !DILocation(line: 140, column: 4, scope: !23)
!179 = !DILocation(line: 141, column: 4, scope: !23)
!180 = !DILocation(line: 143, column: 2, scope: !23)
!181 = !DILocation(line: 143, column: 8, scope: !23)
!182 = !DILocation(line: 143, column: 9, scope: !23)
!183 = !DILocation(line: 144, column: 10, scope: !184)
!184 = distinct !DILexicalBlock(scope: !23, file: !10, line: 143, column: 14)
!185 = !DILocation(line: 144, column: 13, scope: !184)
!186 = !DILocation(line: 144, column: 12, scope: !184)
!187 = !DILocation(line: 144, column: 8, scope: !184)
!188 = !DILocation(line: 145, column: 9, scope: !189)
!189 = distinct !DILexicalBlock(scope: !184, file: !10, line: 145, column: 9)
!190 = !DILocation(line: 145, column: 12, scope: !189)
!191 = !DILocation(line: 145, column: 10, scope: !189)
!192 = !DILocation(line: 145, column: 9, scope: !184)
!193 = !DILocation(line: 146, column: 10, scope: !194)
!194 = distinct !DILexicalBlock(scope: !189, file: !10, line: 145, column: 17)
!195 = !DILocation(line: 146, column: 12, scope: !194)
!196 = !DILocation(line: 146, column: 11, scope: !194)
!197 = !DILocation(line: 146, column: 8, scope: !194)
!198 = !DILocation(line: 147, column: 10, scope: !194)
!199 = !DILocation(line: 147, column: 7, scope: !194)
!200 = !DILocation(line: 148, column: 10, scope: !194)
!201 = !DILocation(line: 148, column: 7, scope: !194)
!202 = !DILocation(line: 149, column: 6, scope: !194)
!203 = !DILocation(line: 150, column: 13, scope: !184)
!204 = !DILocation(line: 150, column: 21, scope: !184)
!205 = !DILocation(line: 150, column: 25, scope: !184)
!206 = !DILocation(line: 150, column: 24, scope: !184)
!207 = !DILocation(line: 150, column: 30, scope: !184)
!208 = !DILocation(line: 150, column: 17, scope: !184)
!209 = !DILocation(line: 150, column: 10, scope: !184)
!210 = !DILocation(line: 151, column: 13, scope: !184)
!211 = !DILocation(line: 151, column: 10, scope: !184)
!212 = !DILocation(line: 152, column: 7, scope: !184)
!213 = distinct !{!213, !180, !214, !118}
!214 = !DILocation(line: 153, column: 2, scope: !23)
!215 = !DILocation(line: 155, column: 6, scope: !23)
!216 = !DILocation(line: 155, column: 4, scope: !23)
!217 = !DILocation(line: 156, column: 2, scope: !23)
!218 = !DILocation(line: 156, column: 8, scope: !23)
!219 = !DILocation(line: 156, column: 9, scope: !23)
!220 = !DILocation(line: 157, column: 11, scope: !221)
!221 = distinct !DILexicalBlock(scope: !23, file: !10, line: 156, column: 14)
!222 = !DILocation(line: 157, column: 14, scope: !221)
!223 = !DILocation(line: 157, column: 13, scope: !221)
!224 = !DILocation(line: 157, column: 9, scope: !221)
!225 = !DILocation(line: 158, column: 11, scope: !221)
!226 = !DILocation(line: 158, column: 9, scope: !221)
!227 = !DILocation(line: 159, column: 10, scope: !228)
!228 = distinct !DILexicalBlock(scope: !221, file: !10, line: 159, column: 9)
!229 = !DILocation(line: 159, column: 12, scope: !228)
!230 = !DILocation(line: 159, column: 11, scope: !228)
!231 = !DILocation(line: 159, column: 16, scope: !228)
!232 = !DILocation(line: 159, column: 20, scope: !228)
!233 = !DILocation(line: 159, column: 23, scope: !228)
!234 = !DILocation(line: 159, column: 21, scope: !228)
!235 = !DILocation(line: 159, column: 27, scope: !228)
!236 = !DILocation(line: 159, column: 30, scope: !228)
!237 = !DILocation(line: 159, column: 34, scope: !228)
!238 = !DILocation(line: 159, column: 32, scope: !228)
!239 = !DILocation(line: 159, column: 9, scope: !221)
!240 = !DILocation(line: 160, column: 9, scope: !241)
!241 = distinct !DILexicalBlock(scope: !228, file: !10, line: 159, column: 41)
!242 = !DILocation(line: 160, column: 12, scope: !241)
!243 = !DILocation(line: 160, column: 11, scope: !241)
!244 = !DILocation(line: 160, column: 7, scope: !241)
!245 = !DILocation(line: 161, column: 8, scope: !246)
!246 = distinct !DILexicalBlock(scope: !241, file: !10, line: 161, column: 6)
!247 = !DILocation(line: 161, column: 11, scope: !246)
!248 = !DILocation(line: 161, column: 10, scope: !246)
!249 = !DILocation(line: 161, column: 18, scope: !246)
!250 = !DILocation(line: 161, column: 16, scope: !246)
!251 = !DILocation(line: 161, column: 23, scope: !246)
!252 = !DILocation(line: 161, column: 26, scope: !246)
!253 = !DILocation(line: 161, column: 29, scope: !246)
!254 = !DILocation(line: 161, column: 28, scope: !246)
!255 = !DILocation(line: 161, column: 34, scope: !246)
!256 = !DILocation(line: 161, column: 6, scope: !241)
!257 = !DILocation(line: 161, column: 42, scope: !246)
!258 = !DILocation(line: 161, column: 39, scope: !246)
!259 = !DILocation(line: 162, column: 10, scope: !241)
!260 = !DILocation(line: 162, column: 7, scope: !241)
!261 = !DILocation(line: 163, column: 7, scope: !262)
!262 = distinct !DILexicalBlock(scope: !241, file: !10, line: 163, column: 7)
!263 = !DILocation(line: 163, column: 13, scope: !262)
!264 = !DILocation(line: 163, column: 11, scope: !262)
!265 = !DILocation(line: 163, column: 7, scope: !241)
!266 = !DILocation(line: 163, column: 21, scope: !262)
!267 = !DILocation(line: 163, column: 17, scope: !262)
!268 = !DILocation(line: 164, column: 10, scope: !241)
!269 = !DILocation(line: 164, column: 7, scope: !241)
!270 = !DILocation(line: 165, column: 10, scope: !241)
!271 = !DILocation(line: 165, column: 7, scope: !241)
!272 = !DILocation(line: 166, column: 6, scope: !241)
!273 = !DILocation(line: 167, column: 13, scope: !221)
!274 = !DILocation(line: 167, column: 21, scope: !221)
!275 = !DILocation(line: 167, column: 25, scope: !221)
!276 = !DILocation(line: 167, column: 24, scope: !221)
!277 = !DILocation(line: 167, column: 30, scope: !221)
!278 = !DILocation(line: 167, column: 17, scope: !221)
!279 = !DILocation(line: 167, column: 10, scope: !221)
!280 = !DILocation(line: 168, column: 13, scope: !221)
!281 = !DILocation(line: 168, column: 10, scope: !221)
!282 = !DILocation(line: 169, column: 7, scope: !221)
!283 = distinct !{!283, !217, !284, !118}
!284 = !DILocation(line: 170, column: 2, scope: !23)
!285 = !DILocation(line: 173, column: 6, scope: !286)
!286 = distinct !DILexicalBlock(scope: !23, file: !10, line: 173, column: 5)
!287 = !DILocation(line: 173, column: 10, scope: !286)
!288 = !DILocation(line: 173, column: 9, scope: !286)
!289 = !DILocation(line: 173, column: 14, scope: !286)
!290 = !DILocation(line: 173, column: 5, scope: !23)
!291 = !DILocation(line: 174, column: 8, scope: !292)
!292 = distinct !DILexicalBlock(scope: !286, file: !10, line: 173, column: 19)
!293 = !DILocation(line: 175, column: 10, scope: !294)
!294 = distinct !DILexicalBlock(scope: !292, file: !10, line: 175, column: 10)
!295 = !DILocation(line: 175, column: 11, scope: !294)
!296 = !DILocation(line: 175, column: 10, scope: !292)
!297 = !DILocation(line: 176, column: 12, scope: !298)
!298 = distinct !DILexicalBlock(scope: !294, file: !10, line: 175, column: 18)
!299 = !DILocation(line: 177, column: 14, scope: !300)
!300 = distinct !DILexicalBlock(scope: !298, file: !10, line: 177, column: 14)
!301 = !DILocation(line: 177, column: 16, scope: !300)
!302 = !DILocation(line: 177, column: 14, scope: !298)
!303 = !DILocation(line: 177, column: 44, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !10, line: 177, column: 40)
!305 = !DILocation(line: 177, column: 50, scope: !304)
!306 = !DILocation(line: 177, column: 55, scope: !304)
!307 = !DILocation(line: 178, column: 12, scope: !308)
!308 = distinct !DILexicalBlock(scope: !300, file: !10, line: 178, column: 12)
!309 = !DILocation(line: 178, column: 13, scope: !308)
!310 = !DILocation(line: 178, column: 12, scope: !300)
!311 = !DILocation(line: 179, column: 11, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !10, line: 179, column: 11)
!313 = distinct !DILexicalBlock(scope: !308, file: !10, line: 178, column: 19)
!314 = !DILocation(line: 179, column: 13, scope: !312)
!315 = !DILocation(line: 179, column: 11, scope: !313)
!316 = !DILocation(line: 179, column: 38, scope: !312)
!317 = !DILocation(line: 179, column: 37, scope: !312)
!318 = !DILocation(line: 180, column: 9, scope: !313)
!319 = !DILocation(line: 181, column: 3, scope: !313)
!320 = !DILocation(line: 182, column: 21, scope: !308)
!321 = !DILocation(line: 182, column: 23, scope: !308)
!322 = !DILocation(line: 182, column: 17, scope: !308)
!323 = !DILocation(line: 183, column: 6, scope: !298)
!324 = !DILocation(line: 184, column: 2, scope: !292)
!325 = !DILocation(line: 185, column: 9, scope: !23)
!326 = !DILocation(line: 185, column: 10, scope: !23)
!327 = !DILocation(line: 185, column: 14, scope: !23)
!328 = !DILocation(line: 185, column: 6, scope: !23)
!329 = !DILocation(line: 186, column: 9, scope: !23)
!330 = !DILocation(line: 186, column: 11, scope: !23)
!331 = !DILocation(line: 186, column: 6, scope: !23)
!332 = !DILocation(line: 187, column: 7, scope: !333)
!333 = distinct !DILexicalBlock(scope: !23, file: !10, line: 187, column: 6)
!334 = !DILocation(line: 187, column: 8, scope: !333)
!335 = !DILocation(line: 187, column: 11, scope: !333)
!336 = !DILocation(line: 187, column: 6, scope: !23)
!337 = !DILocation(line: 187, column: 23, scope: !333)
!338 = !DILocation(line: 187, column: 20, scope: !333)
!339 = !DILocation(line: 187, column: 16, scope: !333)
!340 = !DILocation(line: 188, column: 10, scope: !23)
!341 = !DILocation(line: 188, column: 12, scope: !23)
!342 = !DILocation(line: 188, column: 6, scope: !23)
!343 = !DILocation(line: 189, column: 12, scope: !23)
!344 = !DILocation(line: 189, column: 2, scope: !23)
!345 = !DILocation(line: 189, column: 10, scope: !23)
!346 = !DILocation(line: 190, column: 12, scope: !23)
!347 = !DILocation(line: 190, column: 2, scope: !23)
!348 = !DILocation(line: 190, column: 10, scope: !23)
!349 = !DILocation(line: 191, column: 9, scope: !23)
!350 = !DILocation(line: 191, column: 2, scope: !23)
!351 = !DILocation(line: 192, column: 1, scope: !23)
!352 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 453, type: !353, scopeLine: 453, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!353 = !DISubroutineType(types: !354)
!354 = !{!4}
!355 = !DILocalVariable(name: "a0", scope: !352, file: !10, line: 454, type: !12)
!356 = !DILocation(line: 454, column: 12, scope: !352)
!357 = !DILocation(line: 455, column: 24, scope: !352)
!358 = !DILocation(line: 455, column: 5, scope: !352)
!359 = !DILocalVariable(name: "r", scope: !352, file: !10, line: 457, type: !12)
!360 = !DILocation(line: 457, column: 12, scope: !352)
!361 = !DILocation(line: 457, column: 31, scope: !352)
!362 = !DILocation(line: 457, column: 16, scope: !352)
!363 = !DILocation(line: 458, column: 5, scope: !352)
!364 = distinct !DISubprogram(name: "klee_overshift_check", scope: !365, file: !365, line: 20, type: !366, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !2)
!365 = !DIFile(filename: "klee_src/runtime/Intrinsic/klee_overshift_check.c", directory: "/tmp")
!366 = !DISubroutineType(types: !367)
!367 = !{null, !368, !368}
!368 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!369 = !DILocalVariable(name: "bitWidth", arg: 1, scope: !364, file: !365, line: 20, type: !368)
!370 = !DILocation(line: 20, column: 46, scope: !364)
!371 = !DILocalVariable(name: "shift", arg: 2, scope: !364, file: !365, line: 20, type: !368)
!372 = !DILocation(line: 20, column: 75, scope: !364)
!373 = !DILocation(line: 21, column: 7, scope: !374)
!374 = distinct !DILexicalBlock(scope: !364, file: !365, line: 21, column: 7)
!375 = !DILocation(line: 21, column: 16, scope: !374)
!376 = !DILocation(line: 21, column: 13, scope: !374)
!377 = !DILocation(line: 21, column: 7, scope: !364)
!378 = !DILocation(line: 27, column: 5, scope: !379)
!379 = distinct !DILexicalBlock(scope: !374, file: !365, line: 21, column: 26)
!380 = !DILocation(line: 29, column: 1, scope: !364)
