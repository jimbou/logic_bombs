; ModuleID = 'heap_bo_l1_klee_annotated.bc'
source_filename = "heap_bo_l1_klee_annotated.bc"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@n = global i32 5, align 4
@.str = private unnamed_addr constant [28 x i8] c"0 && \22Logic bomb triggered\22\00", align 1
@.str1 = private unnamed_addr constant [28 x i8] c"heap_bo_l1_klee_annotated.c\00", align 1
@__PRETTY_FUNCTION__.logic_bomb = private unnamed_addr constant [23 x i8] c"int logic_bomb(char *)\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"symvar\00", align 1

; Function Attrs: nounwind uwtable
define i32 @logic_bomb(i8* %symvar) #0 {
entry:
  %retval = alloca i32, align 4
  %symvar.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  store i8* %symvar, i8** %symvar.addr, align 8
  %call = call noalias i8* @malloc(i64 16) #5
  store i8* %call, i8** %p, align 8
  %call1 = call noalias i8* @malloc(i64 16) #5
  store i8* %call1, i8** %q, align 8
  %0 = load i8*, i8** %p, align 8
  %1 = load i8*, i8** %symvar.addr, align 8
  %call2 = call i8* @strcpy(i8* %0, i8* %1) #5
  %2 = load i8*, i8** %q, align 8
  call void @free(i8* %2) #5
  %3 = load i32, i32* @n, align 4
  %cmp = icmp ne i32 %3, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %p, align 8
  call void @free(i8* %4) #5
  %call3 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str1, i32 0, i32 0), i32 17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** %p, align 8
  call void @free(i8* %5) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %symvar = alloca [257 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [257 x i8]* %symvar to i8*
  call void @klee_make_symbolic(i8* %0, i64 257, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str2, i32 0, i32 0))
  %arrayidx = getelementptr inbounds [257 x i8], [257 x i8]* %symvar, i32 0, i64 256
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  %conv1 = zext i1 %cmp to i32
  %conv2 = sext i32 %conv1 to i64
  call void @klee_assume(i64 %conv2)
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %symvar, i32 0, i32 0
  %call = call i32 @logic_bomb(i8* %arraydecay)
  ret i32 %call
}

declare void @klee_make_symbolic(i8*, i64, i8*) #4

declare void @klee_assume(i64) #4

attributes #0 = { nounwind uwtable "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 2, !"Dwarf Version", i32 4}
!1 = !{i32 1, !"Debug Info Version", i32 1}
!2 = !{!"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)"}
