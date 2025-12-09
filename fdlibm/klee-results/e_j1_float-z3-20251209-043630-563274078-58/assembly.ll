; ModuleID = 'e_j1_float.bc'
source_filename = "e_j1_float.bc"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = internal global double 0.000000e+00, align 8
@U0 = internal constant [5 x double] [double 0xBFC91866143CBC8A, double 0x3FA9D3C776292CD1, double 0xBF5F55E54844F50F, double 0x3EF8AB038FA6B88E, double 0xBE78AC00569105B8], align 16
@V0 = internal constant [5 x double] [double 0x3F94650D3F4DA9F0, double 0x3F2A8C896C257764, double 0x3EB6C05A894E8CA6, double 0x3E3ABF1D5BA69A86, double 0x3DB25039DACA772A], align 16
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@qr8 = internal constant [6 x double] [double 0.000000e+00, double 0xBFBA3FFFFFFFFDF3, double 0xC0304591A26779F7, double 0xC087BCD053E4B576, double 0xC0C724E740F87415, double 0xC0E7A6D065D09C6A], align 16
@qs8 = internal constant [6 x double] [double 0x40642CA6DE5BCDE5, double 0x40BE9162D0D88419, double 0x4100579AB0B75E98, double 0x4125F65372869C19, double 0x412457D27719AD5C, double 0xC111F9690EA5AA18], align 16
@qr5 = internal constant [6 x double] [double 0xBDB6FA431AA1A098, double 0xBFBA3FFFCB597FEF, double 0xC0201CE6CA03AD4B, double 0xC066F56D6CA7B9B0, double 0xC09574C66931734F, double 0xC0A468E388FDA79D], align 16
@qs5 = internal constant [6 x double] [double 0x405451B2FF5A11B2, double 0x409F1F31E77BF839, double 0x40D10F1F0D64CE29, double 0x40E8576DAABAD197, double 0x40DB4B04CF7C364B, double 0xC0B26F2EFCFFA004], align 16
@qr3 = internal constant [6 x double] [double 0xBE35CFA9D38FC84F, double 0xBFBA3FEB51AEED54, double 0xC01270C23302D9FF, double 0xC04CEC71C25D16DA, double 0xC06C87D34718D55F, double 0xC06B66B95F5C1BF6], align 16
@qs3 = internal constant [6 x double] [double 0x4047D523CCD367E4, double 0x40850EEBC031EE3E, double 0x40AA684E448E7C9A, double 0x40B5ABBAA61D54A6, double 0x409DBC7A0DD4DF4B, double 0xC060E670290A311F], align 16
@qr2 = internal constant [6 x double] [double 0xBE87F12644C626D2, double 0xBFBA3E8E9148B010, double 0xC006048469BB4EDA, double 0xC033A9E2C168907F, double 0xC04529A3DE104AAA, double 0xC0355F3639CF6E52], align 16
@qs2 = internal constant [6 x double] [double 0x403D888A78AE64FF, double 0x406F9F68DB821CBA, double 0x4087AC05CE49A0F7, double 0x40871B2548D4C029, double 0x40637E5E3C3ED8D4, double 0xC013D686E71BE86B], align 16
@pr8 = internal constant [6 x double] [double 0.000000e+00, double 0x3FBDFFFFFFFFFCCE, double 0x402A7A9D357F7FCE, double 0x4079C0D4652EA590, double 0x40AE457DA3A532CC, double 0x40BEEA7AC32782DD], align 16
@ps8 = internal constant [5 x double] [double 0x405C8D458E656CAC, double 0x40AC85DC964D274F, double 0x40E20B8697C5BB7F, double 0x40F7D42CB28F17BB, double 0x40DE1511697A0B2D], align 16
@pr5 = internal constant [6 x double] [double 0x3DAD0667DAE1CA7D, double 0x3FBDFFFFE2C10043, double 0x401B36046E6315E3, double 0x405B13B9452602ED, double 0x40802D16D052D649, double 0x408085B8BB7E0CB7], align 16
@ps5 = internal constant [5 x double] [double 0x404DA3EAA8AF633D, double 0x408EFB361B066701, double 0x40B4E9445706B6FB, double 0x40BEA4B0B8A5BB15, double 0x40978030036F5E51], align 16
@pr3 = internal constant [6 x double] [double 0x3E29FC21A7AD9EDD, double 0x3FBDFFF55B21D17B, double 0x400F76BCE85EAD8A, double 0x40418F489DA6D129, double 0x4056C3854D2C1837, double 0x4048478F8EA83EE5], align 16
@ps3 = internal constant [5 x double] [double 0x40416549A134069C, double 0x40750C3307F1A75F, double 0x40905B7C5037D523, double 0x408BD67DA32E31E9, double 0x4059F26D7C2EED53], align 16
@pr2 = internal constant [6 x double] [double 0x3E7CE9D4F65544F4, double 0x3FBDFF42BE760D83, double 0x4002F2B7F98FAEC0, double 0x40287C377F71A964, double 0x4031B1A8177F8EE2, double 0x40144B49A574C1FE], align 16
@ps2 = internal constant [5 x double] [double 0x40356FBD8AD5ECDC, double 0x405F529314F92CD5, double 0x406D08D8D5A2DBD9, double 0x405D6B7ADA1884A9, double 0x4020BAB1F44E5192], align 16

; Function Attrs: nounwind uwtable
define double @__ieee754_j1(double %x) #0 {
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
  %0 = bitcast double* %x.addr to i32*
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %hx, align 4
  %2 = load i32, i32* %hx, align 4
  %and = and i32 %2, 2147483647
  store i32 %and, i32* %ix, align 4
  %3 = load i32, i32* %ix, align 4
  %cmp = icmp sge i32 %3, 2146435072
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load double, double* %x.addr, align 8
  %div = fdiv double 1.000000e+00, %4
  store double %div, double* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load double, double* %x.addr, align 8
  %call = call double @fabs(double %5) #5
  store double %call, double* %y, align 8
  %6 = load i32, i32* %ix, align 4
  %cmp1 = icmp sge i32 %6, 1073741824
  br i1 %cmp1, label %if.then2, label %if.end35

if.then2:                                         ; preds = %if.end
  %7 = load double, double* %y, align 8
  %call3 = call double @sin(double %7) #6
  store double %call3, double* %s, align 8
  %8 = load double, double* %y, align 8
  %call4 = call double @cos(double %8) #6
  store double %call4, double* %c, align 8
  %9 = load double, double* %s, align 8
  %sub = fsub double -0.000000e+00, %9
  %10 = load double, double* %c, align 8
  %sub5 = fsub double %sub, %10
  store double %sub5, double* %ss, align 8
  %11 = load double, double* %s, align 8
  %12 = load double, double* %c, align 8
  %sub6 = fsub double %11, %12
  store double %sub6, double* %cc, align 8
  %13 = load i32, i32* %ix, align 4
  %cmp7 = icmp slt i32 %13, 2145386496
  br i1 %cmp7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.then2
  %14 = load double, double* %y, align 8
  %15 = load double, double* %y, align 8
  %add = fadd double %14, %15
  %call9 = call double @cos(double %add) #6
  store double %call9, double* %z, align 8
  %16 = load double, double* %s, align 8
  %17 = load double, double* %c, align 8
  %mul = fmul double %16, %17
  %18 = load double, double* @zero, align 8
  %cmp10 = fcmp ogt double %mul, %18
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  %19 = load double, double* %z, align 8
  %20 = load double, double* %ss, align 8
  %div12 = fdiv double %19, %20
  store double %div12, double* %cc, align 8
  br label %if.end15

if.else:                                          ; preds = %if.then8
  %21 = load double, double* %z, align 8
  %22 = load double, double* %cc, align 8
  %div13 = fdiv double %21, %22
  store double %div13, double* %ss, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.else, %if.then2
  %23 = load i32, i32* %ix, align 4
  %cmp16 = icmp sgt i32 %23, 1207959552
  br i1 %cmp16, label %if.then17, label %if.else21

if.then17:                                        ; preds = %if.end15
  %24 = load double, double* %cc, align 8
  %mul18 = fmul double 0x3FE20DD750429B6D, %24
  %25 = load double, double* %y, align 8
  %call19 = call double @sqrt(double %25) #6
  %div20 = fdiv double %mul18, %call19
  store double %div20, double* %z, align 8
  br label %if.end30

if.else21:                                        ; preds = %if.end15
  %26 = load double, double* %y, align 8
  %call22 = call double @pone(double %26)
  store double %call22, double* %u, align 8
  %27 = load double, double* %y, align 8
  %call23 = call double @qone(double %27)
  store double %call23, double* %v, align 8
  %28 = load double, double* %u, align 8
  %29 = load double, double* %cc, align 8
  %mul24 = fmul double %28, %29
  %30 = load double, double* %v, align 8
  %31 = load double, double* %ss, align 8
  %mul25 = fmul double %30, %31
  %sub26 = fsub double %mul24, %mul25
  %mul27 = fmul double 0x3FE20DD750429B6D, %sub26
  %32 = load double, double* %y, align 8
  %call28 = call double @sqrt(double %32) #6
  %div29 = fdiv double %mul27, %call28
  store double %div29, double* %z, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else21, %if.then17
  %33 = load i32, i32* %hx, align 4
  %cmp31 = icmp slt i32 %33, 0
  br i1 %cmp31, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.end30
  %34 = load double, double* %z, align 8
  %sub33 = fsub double -0.000000e+00, %34
  store double %sub33, double* %retval, align 8
  br label %return

if.else34:                                        ; preds = %if.end30
  %35 = load double, double* %z, align 8
  store double %35, double* %retval, align 8
  br label %return

if.end35:                                         ; preds = %if.end
  %36 = load i32, i32* %ix, align 4
  %cmp36 = icmp slt i32 %36, 1044381696
  br i1 %cmp36, label %if.then37, label %if.end43

if.then37:                                        ; preds = %if.end35
  %37 = load double, double* %x.addr, align 8
  %add38 = fadd double 1.000000e+300, %37
  %cmp39 = fcmp ogt double %add38, 1.000000e+00
  br i1 %cmp39, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.then37
  %38 = load double, double* %x.addr, align 8
  %mul41 = fmul double 5.000000e-01, %38
  store double %mul41, double* %retval, align 8
  br label %return

if.end43:                                         ; preds = %if.then37, %if.end35
  %39 = load double, double* %x.addr, align 8
  %40 = load double, double* %x.addr, align 8
  %mul44 = fmul double %39, %40
  store double %mul44, double* %z, align 8
  %41 = load double, double* %z, align 8
  %42 = load double, double* %z, align 8
  %43 = load double, double* %z, align 8
  %44 = load double, double* %z, align 8
  %mul45 = fmul double %44, 0x3E6AAAFA46CA0BD9
  %add46 = fadd double 0xBEF0C5C6BA169668, %mul45
  %mul47 = fmul double %43, %add46
  %add48 = fadd double 0x3F570D9F98472C61, %mul47
  %mul49 = fmul double %42, %add48
  %add50 = fadd double -6.250000e-02, %mul49
  %mul51 = fmul double %41, %add50
  store double %mul51, double* %r, align 8
  %45 = load double, double* %z, align 8
  %46 = load double, double* %z, align 8
  %47 = load double, double* %z, align 8
  %48 = load double, double* %z, align 8
  %49 = load double, double* %z, align 8
  %mul52 = fmul double %49, 0x3DAB2ACFCFB97ED8
  %add53 = fadd double 0x3E35AC88C97DFF2C, %mul52
  %mul54 = fmul double %48, %add53
  %add55 = fadd double 0x3EB3BFF8333F8498, %mul54
  %mul56 = fmul double %47, %add55
  %add57 = fadd double 0x3F285F56B9CDF664, %mul56
  %mul58 = fmul double %46, %add57
  %add59 = fadd double 0x3F939D0B12637E53, %mul58
  %mul60 = fmul double %45, %add59
  %add61 = fadd double 1.000000e+00, %mul60
  store double %add61, double* %s, align 8
  %50 = load double, double* %x.addr, align 8
  %51 = load double, double* %r, align 8
  %mul62 = fmul double %51, %50
  store double %mul62, double* %r, align 8
  %52 = load double, double* %x.addr, align 8
  %mul63 = fmul double %52, 5.000000e-01
  %53 = load double, double* %r, align 8
  %54 = load double, double* %s, align 8
  %div64 = fdiv double %53, %54
  %add65 = fadd double %mul63, %div64
  store double %add65, double* %retval, align 8
  br label %return

return:                                           ; preds = %if.end43, %if.then40, %if.else34, %if.then32, %if.then
  %55 = load double, double* %retval, align 8
  ret double %55
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind
declare double @sin(double) #3

; Function Attrs: nounwind
declare double @cos(double) #3

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind uwtable
define internal double @pone(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  %p = alloca double*, align 8
  %q = alloca double*, align 8
  %z = alloca double, align 8
  %r = alloca double, align 8
  %s = alloca double, align 8
  %ix = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  %0 = bitcast double* %x.addr to i32*
  %1 = load i32, i32* %0, align 4
  %and = and i32 2147483647, %1
  store i32 %and, i32* %ix, align 4
  %2 = load i32, i32* %ix, align 4
  %cmp = icmp sge i32 %2, 1075838976
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double* getelementptr inbounds ([6 x double], [6 x double]* @pr8, i32 0, i32 0), double** %p, align 8
  store double* getelementptr inbounds ([5 x double], [5 x double]* @ps8, i32 0, i32 0), double** %q, align 8
  br label %if.end11

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %ix, align 4
  %cmp1 = icmp sge i32 %3, 1074933387
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store double* getelementptr inbounds ([6 x double], [6 x double]* @pr5, i32 0, i32 0), double** %p, align 8
  store double* getelementptr inbounds ([5 x double], [5 x double]* @ps5, i32 0, i32 0), double** %q, align 8
  br label %if.end11

if.else3:                                         ; preds = %if.else
  %4 = load i32, i32* %ix, align 4
  %cmp4 = icmp sge i32 %4, 1074191213
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  store double* getelementptr inbounds ([6 x double], [6 x double]* @pr3, i32 0, i32 0), double** %p, align 8
  store double* getelementptr inbounds ([5 x double], [5 x double]* @ps3, i32 0, i32 0), double** %q, align 8
  br label %if.end11

if.else6:                                         ; preds = %if.else3
  %5 = load i32, i32* %ix, align 4
  %cmp7 = icmp sge i32 %5, 1073741824
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.else6
  store double* getelementptr inbounds ([6 x double], [6 x double]* @pr2, i32 0, i32 0), double** %p, align 8
  store double* getelementptr inbounds ([5 x double], [5 x double]* @ps2, i32 0, i32 0), double** %q, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then2, %if.else6, %if.then8, %if.then5, %if.then
  %6 = load double, double* %x.addr, align 8
  %7 = load double, double* %x.addr, align 8
  %mul = fmul double %6, %7
  %div = fdiv double 1.000000e+00, %mul
  store double %div, double* %z, align 8
  %8 = load double*, double** %p, align 8
  %arrayidx = getelementptr inbounds double, double* %8, i64 0
  %9 = load double, double* %arrayidx, align 8
  %10 = load double, double* %z, align 8
  %11 = load double*, double** %p, align 8
  %arrayidx12 = getelementptr inbounds double, double* %11, i64 1
  %12 = load double, double* %arrayidx12, align 8
  %13 = load double, double* %z, align 8
  %14 = load double*, double** %p, align 8
  %arrayidx13 = getelementptr inbounds double, double* %14, i64 2
  %15 = load double, double* %arrayidx13, align 8
  %16 = load double, double* %z, align 8
  %17 = load double*, double** %p, align 8
  %arrayidx14 = getelementptr inbounds double, double* %17, i64 3
  %18 = load double, double* %arrayidx14, align 8
  %19 = load double, double* %z, align 8
  %20 = load double*, double** %p, align 8
  %arrayidx15 = getelementptr inbounds double, double* %20, i64 4
  %21 = load double, double* %arrayidx15, align 8
  %22 = load double, double* %z, align 8
  %23 = load double*, double** %p, align 8
  %arrayidx16 = getelementptr inbounds double, double* %23, i64 5
  %24 = load double, double* %arrayidx16, align 8
  %mul17 = fmul double %22, %24
  %add = fadd double %21, %mul17
  %mul18 = fmul double %19, %add
  %add19 = fadd double %18, %mul18
  %mul20 = fmul double %16, %add19
  %add21 = fadd double %15, %mul20
  %mul22 = fmul double %13, %add21
  %add23 = fadd double %12, %mul22
  %mul24 = fmul double %10, %add23
  %add25 = fadd double %9, %mul24
  store double %add25, double* %r, align 8
  %25 = load double, double* %z, align 8
  %26 = load double*, double** %q, align 8
  %arrayidx26 = getelementptr inbounds double, double* %26, i64 0
  %27 = load double, double* %arrayidx26, align 8
  %28 = load double, double* %z, align 8
  %29 = load double*, double** %q, align 8
  %arrayidx27 = getelementptr inbounds double, double* %29, i64 1
  %30 = load double, double* %arrayidx27, align 8
  %31 = load double, double* %z, align 8
  %32 = load double*, double** %q, align 8
  %arrayidx28 = getelementptr inbounds double, double* %32, i64 2
  %33 = load double, double* %arrayidx28, align 8
  %34 = load double, double* %z, align 8
  %35 = load double*, double** %q, align 8
  %arrayidx29 = getelementptr inbounds double, double* %35, i64 3
  %36 = load double, double* %arrayidx29, align 8
  %37 = load double, double* %z, align 8
  %38 = load double*, double** %q, align 8
  %arrayidx30 = getelementptr inbounds double, double* %38, i64 4
  %39 = load double, double* %arrayidx30, align 8
  %mul31 = fmul double %37, %39
  %add32 = fadd double %36, %mul31
  %mul33 = fmul double %34, %add32
  %add34 = fadd double %33, %mul33
  %mul35 = fmul double %31, %add34
  %add36 = fadd double %30, %mul35
  %mul37 = fmul double %28, %add36
  %add38 = fadd double %27, %mul37
  %mul39 = fmul double %25, %add38
  %add40 = fadd double 1.000000e+00, %mul39
  store double %add40, double* %s, align 8
  %40 = load double, double* %r, align 8
  %41 = load double, double* %s, align 8
  %div41 = fdiv double %40, %41
  %add42 = fadd double 1.000000e+00, %div41
  ret double %add42
}

; Function Attrs: nounwind uwtable
define internal double @qone(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  %p = alloca double*, align 8
  %q = alloca double*, align 8
  %s = alloca double, align 8
  %r = alloca double, align 8
  %z = alloca double, align 8
  %ix = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  %0 = bitcast double* %x.addr to i32*
  %1 = load i32, i32* %0, align 4
  %and = and i32 2147483647, %1
  store i32 %and, i32* %ix, align 4
  %2 = load i32, i32* %ix, align 4
  %cmp = icmp sge i32 %2, 1075838976
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qr8, i32 0, i32 0), double** %p, align 8
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qs8, i32 0, i32 0), double** %q, align 8
  br label %if.end11

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %ix, align 4
  %cmp1 = icmp sge i32 %3, 1074933387
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qr5, i32 0, i32 0), double** %p, align 8
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qs5, i32 0, i32 0), double** %q, align 8
  br label %if.end11

if.else3:                                         ; preds = %if.else
  %4 = load i32, i32* %ix, align 4
  %cmp4 = icmp sge i32 %4, 1074191213
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qr3, i32 0, i32 0), double** %p, align 8
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qs3, i32 0, i32 0), double** %q, align 8
  br label %if.end11

if.else6:                                         ; preds = %if.else3
  %5 = load i32, i32* %ix, align 4
  %cmp7 = icmp sge i32 %5, 1073741824
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.else6
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qr2, i32 0, i32 0), double** %p, align 8
  store double* getelementptr inbounds ([6 x double], [6 x double]* @qs2, i32 0, i32 0), double** %q, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then2, %if.else6, %if.then8, %if.then5, %if.then
  %6 = load double, double* %x.addr, align 8
  %7 = load double, double* %x.addr, align 8
  %mul = fmul double %6, %7
  %div = fdiv double 1.000000e+00, %mul
  store double %div, double* %z, align 8
  %8 = load double*, double** %p, align 8
  %arrayidx = getelementptr inbounds double, double* %8, i64 0
  %9 = load double, double* %arrayidx, align 8
  %10 = load double, double* %z, align 8
  %11 = load double*, double** %p, align 8
  %arrayidx12 = getelementptr inbounds double, double* %11, i64 1
  %12 = load double, double* %arrayidx12, align 8
  %13 = load double, double* %z, align 8
  %14 = load double*, double** %p, align 8
  %arrayidx13 = getelementptr inbounds double, double* %14, i64 2
  %15 = load double, double* %arrayidx13, align 8
  %16 = load double, double* %z, align 8
  %17 = load double*, double** %p, align 8
  %arrayidx14 = getelementptr inbounds double, double* %17, i64 3
  %18 = load double, double* %arrayidx14, align 8
  %19 = load double, double* %z, align 8
  %20 = load double*, double** %p, align 8
  %arrayidx15 = getelementptr inbounds double, double* %20, i64 4
  %21 = load double, double* %arrayidx15, align 8
  %22 = load double, double* %z, align 8
  %23 = load double*, double** %p, align 8
  %arrayidx16 = getelementptr inbounds double, double* %23, i64 5
  %24 = load double, double* %arrayidx16, align 8
  %mul17 = fmul double %22, %24
  %add = fadd double %21, %mul17
  %mul18 = fmul double %19, %add
  %add19 = fadd double %18, %mul18
  %mul20 = fmul double %16, %add19
  %add21 = fadd double %15, %mul20
  %mul22 = fmul double %13, %add21
  %add23 = fadd double %12, %mul22
  %mul24 = fmul double %10, %add23
  %add25 = fadd double %9, %mul24
  store double %add25, double* %r, align 8
  %25 = load double, double* %z, align 8
  %26 = load double*, double** %q, align 8
  %arrayidx26 = getelementptr inbounds double, double* %26, i64 0
  %27 = load double, double* %arrayidx26, align 8
  %28 = load double, double* %z, align 8
  %29 = load double*, double** %q, align 8
  %arrayidx27 = getelementptr inbounds double, double* %29, i64 1
  %30 = load double, double* %arrayidx27, align 8
  %31 = load double, double* %z, align 8
  %32 = load double*, double** %q, align 8
  %arrayidx28 = getelementptr inbounds double, double* %32, i64 2
  %33 = load double, double* %arrayidx28, align 8
  %34 = load double, double* %z, align 8
  %35 = load double*, double** %q, align 8
  %arrayidx29 = getelementptr inbounds double, double* %35, i64 3
  %36 = load double, double* %arrayidx29, align 8
  %37 = load double, double* %z, align 8
  %38 = load double*, double** %q, align 8
  %arrayidx30 = getelementptr inbounds double, double* %38, i64 4
  %39 = load double, double* %arrayidx30, align 8
  %40 = load double, double* %z, align 8
  %41 = load double*, double** %q, align 8
  %arrayidx31 = getelementptr inbounds double, double* %41, i64 5
  %42 = load double, double* %arrayidx31, align 8
  %mul32 = fmul double %40, %42
  %add33 = fadd double %39, %mul32
  %mul34 = fmul double %37, %add33
  %add35 = fadd double %36, %mul34
  %mul36 = fmul double %34, %add35
  %add37 = fadd double %33, %mul36
  %mul38 = fmul double %31, %add37
  %add39 = fadd double %30, %mul38
  %mul40 = fmul double %28, %add39
  %add41 = fadd double %27, %mul40
  %mul42 = fmul double %25, %add41
  %add43 = fadd double 1.000000e+00, %mul42
  store double %add43, double* %s, align 8
  %43 = load double, double* %r, align 8
  %44 = load double, double* %s, align 8
  %div44 = fdiv double %43, %44
  %add45 = fadd double 3.750000e-01, %div44
  %45 = load double, double* %x.addr, align 8
  %div46 = fdiv double %add45, %45
  ret double %div46
}

; Function Attrs: nounwind uwtable
define double @__ieee754_y1(double %x) #0 {
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
  %0 = bitcast double* %x.addr to i32*
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %hx, align 4
  %2 = load i32, i32* %hx, align 4
  %and = and i32 2147483647, %2
  store i32 %and, i32* %ix, align 4
  %3 = bitcast double* %x.addr to i32*
  %add.ptr = getelementptr inbounds i32, i32* %3, i64 1
  %4 = load i32, i32* %add.ptr, align 4
  store i32 %4, i32* %lx, align 4
  %5 = load i32, i32* %ix, align 4
  %cmp = icmp sge i32 %5, 2146435072
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load double, double* %x.addr, align 8
  %7 = load double, double* %x.addr, align 8
  %8 = load double, double* %x.addr, align 8
  %mul = fmul double %7, %8
  %add = fadd double %6, %mul
  %div = fdiv double 1.000000e+00, %add
  store double %div, double* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %ix, align 4
  %10 = load i32, i32* %lx, align 4
  %or = or i32 %9, %10
  %cmp1 = icmp eq i32 %or, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %11 = load double, double* @zero, align 8
  %div3 = fdiv double -1.000000e+00, %11
  store double %div3, double* %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %12 = load i32, i32* %hx, align 4
  %cmp5 = icmp slt i32 %12, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %13 = load double, double* @zero, align 8
  %14 = load double, double* @zero, align 8
  %div7 = fdiv double %13, %14
  store double %div7, double* %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end4
  %15 = load i32, i32* %ix, align 4
  %cmp9 = icmp sge i32 %15, 1073741824
  br i1 %cmp9, label %if.then10, label %if.end40

if.then10:                                        ; preds = %if.end8
  %16 = load double, double* %x.addr, align 8
  %call = call double @sin(double %16) #6
  store double %call, double* %s, align 8
  %17 = load double, double* %x.addr, align 8
  %call11 = call double @cos(double %17) #6
  store double %call11, double* %c, align 8
  %18 = load double, double* %s, align 8
  %sub = fsub double -0.000000e+00, %18
  %19 = load double, double* %c, align 8
  %sub12 = fsub double %sub, %19
  store double %sub12, double* %ss, align 8
  %20 = load double, double* %s, align 8
  %21 = load double, double* %c, align 8
  %sub13 = fsub double %20, %21
  store double %sub13, double* %cc, align 8
  %22 = load i32, i32* %ix, align 4
  %cmp14 = icmp slt i32 %22, 2145386496
  br i1 %cmp14, label %if.then15, label %if.end24

if.then15:                                        ; preds = %if.then10
  %23 = load double, double* %x.addr, align 8
  %24 = load double, double* %x.addr, align 8
  %add16 = fadd double %23, %24
  %call17 = call double @cos(double %add16) #6
  store double %call17, double* %z, align 8
  %25 = load double, double* %s, align 8
  %26 = load double, double* %c, align 8
  %mul18 = fmul double %25, %26
  %27 = load double, double* @zero, align 8
  %cmp19 = fcmp ogt double %mul18, %27
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then15
  %28 = load double, double* %z, align 8
  %29 = load double, double* %ss, align 8
  %div21 = fdiv double %28, %29
  store double %div21, double* %cc, align 8
  br label %if.end24

if.else:                                          ; preds = %if.then15
  %30 = load double, double* %z, align 8
  %31 = load double, double* %cc, align 8
  %div22 = fdiv double %30, %31
  store double %div22, double* %ss, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.else, %if.then10
  %32 = load i32, i32* %ix, align 4
  %cmp25 = icmp sgt i32 %32, 1207959552
  br i1 %cmp25, label %if.then26, label %if.else30

if.then26:                                        ; preds = %if.end24
  %33 = load double, double* %ss, align 8
  %mul27 = fmul double 0x3FE20DD750429B6D, %33
  %34 = load double, double* %x.addr, align 8
  %call28 = call double @sqrt(double %34) #6
  %div29 = fdiv double %mul27, %call28
  store double %div29, double* %z, align 8
  br label %if.end39

if.else30:                                        ; preds = %if.end24
  %35 = load double, double* %x.addr, align 8
  %call31 = call double @pone(double %35)
  store double %call31, double* %u, align 8
  %36 = load double, double* %x.addr, align 8
  %call32 = call double @qone(double %36)
  store double %call32, double* %v, align 8
  %37 = load double, double* %u, align 8
  %38 = load double, double* %ss, align 8
  %mul33 = fmul double %37, %38
  %39 = load double, double* %v, align 8
  %40 = load double, double* %cc, align 8
  %mul34 = fmul double %39, %40
  %add35 = fadd double %mul33, %mul34
  %mul36 = fmul double 0x3FE20DD750429B6D, %add35
  %41 = load double, double* %x.addr, align 8
  %call37 = call double @sqrt(double %41) #6
  %div38 = fdiv double %mul36, %call37
  store double %div38, double* %z, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.else30, %if.then26
  %42 = load double, double* %z, align 8
  store double %42, double* %retval, align 8
  br label %return

if.end40:                                         ; preds = %if.end8
  %43 = load i32, i32* %ix, align 4
  %cmp41 = icmp sle i32 %43, 1016070144
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end40
  %44 = load double, double* %x.addr, align 8
  %div43 = fdiv double 0xBFE45F306DC9C883, %44
  store double %div43, double* %retval, align 8
  br label %return

if.end44:                                         ; preds = %if.end40
  %45 = load double, double* %x.addr, align 8
  %46 = load double, double* %x.addr, align 8
  %mul45 = fmul double %45, %46
  store double %mul45, double* %z, align 8
  %47 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @U0, i32 0, i64 0), align 8
  %48 = load double, double* %z, align 8
  %49 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @U0, i32 0, i64 1), align 8
  %50 = load double, double* %z, align 8
  %51 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @U0, i32 0, i64 2), align 8
  %52 = load double, double* %z, align 8
  %53 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @U0, i32 0, i64 3), align 8
  %54 = load double, double* %z, align 8
  %55 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @U0, i32 0, i64 4), align 8
  %mul46 = fmul double %54, %55
  %add47 = fadd double %53, %mul46
  %mul48 = fmul double %52, %add47
  %add49 = fadd double %51, %mul48
  %mul50 = fmul double %50, %add49
  %add51 = fadd double %49, %mul50
  %mul52 = fmul double %48, %add51
  %add53 = fadd double %47, %mul52
  store double %add53, double* %u, align 8
  %56 = load double, double* %z, align 8
  %57 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @V0, i32 0, i64 0), align 8
  %58 = load double, double* %z, align 8
  %59 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @V0, i32 0, i64 1), align 8
  %60 = load double, double* %z, align 8
  %61 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @V0, i32 0, i64 2), align 8
  %62 = load double, double* %z, align 8
  %63 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @V0, i32 0, i64 3), align 8
  %64 = load double, double* %z, align 8
  %65 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @V0, i32 0, i64 4), align 8
  %mul54 = fmul double %64, %65
  %add55 = fadd double %63, %mul54
  %mul56 = fmul double %62, %add55
  %add57 = fadd double %61, %mul56
  %mul58 = fmul double %60, %add57
  %add59 = fadd double %59, %mul58
  %mul60 = fmul double %58, %add59
  %add61 = fadd double %57, %mul60
  %mul62 = fmul double %56, %add61
  %add63 = fadd double 1.000000e+00, %mul62
  store double %add63, double* %v, align 8
  %66 = load double, double* %x.addr, align 8
  %67 = load double, double* %u, align 8
  %68 = load double, double* %v, align 8
  %div64 = fdiv double %67, %68
  %mul65 = fmul double %66, %div64
  %69 = load double, double* %x.addr, align 8
  %call66 = call double @__ieee754_j1(double %69)
  %70 = load double, double* %x.addr, align 8
  %call67 = call double @__ieee754_log(double %70)
  %mul68 = fmul double %call66, %call67
  %71 = load double, double* %x.addr, align 8
  %div69 = fdiv double 1.000000e+00, %71
  %sub70 = fsub double %mul68, %div69
  %mul71 = fmul double 0x3FE45F306DC9C883, %sub70
  %add72 = fadd double %mul65, %mul71
  store double %add72, double* %retval, align 8
  br label %return

return:                                           ; preds = %if.end44, %if.then42, %if.end39, %if.then6, %if.then2, %if.then
  %72 = load double, double* %retval, align 8
  ret double %72
}

declare double @__ieee754_log(double) #4

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast double* %a0 to i8*
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  %1 = load double, double* %a0, align 8
  %call = call double @__ieee754_j1(double %1)
  store double %call, double* %r, align 8
  ret i32 0
}

declare void @klee_make_symbolic(i8*, i64, i8*) #4

attributes #0 = { nounwind uwtable "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 2, !"Dwarf Version", i32 4}
!1 = !{i32 1, !"Debug Info Version", i32 1}
!2 = !{!"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)"}
