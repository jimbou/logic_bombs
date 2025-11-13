; ModuleID = 'jmp_sj_l1_klee_annotated_float.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"0 && \22Logic bomb triggered\22\00", align 1
@.str1 = private unnamed_addr constant [27 x i8] c"jmp_sj_l1_klee_annotated.c\00", align 1
@__PRETTY_FUNCTION__.logic_bomb = private unnamed_addr constant [23 x i8] c"int logic_bomb(char *)\00", align 1
@.str2 = private unnamed_addr constant [29 x i8] c"0 && \22Path without the bomb\22\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"s\00", align 1

; Function Attrs: nounwind uwtable
define i32 @logic_bomb(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %symvar = alloca i32, align 4
  %addr = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %s.addr}, metadata !18), !dbg !19
  call void @llvm.dbg.declare(metadata !{i32* %symvar}, metadata !20), !dbg !21
  %0 = load i8** %s.addr, align 8, !dbg !21
  %arrayidx = getelementptr inbounds i8* %0, i64 0, !dbg !21
  %1 = load i8* %arrayidx, align 1, !dbg !21
  %conv = sext i8 %1 to i32, !dbg !21
  %sub = sub nsw i32 %conv, 48, !dbg !21
  store i32 %sub, i32* %symvar, align 4, !dbg !21
  %2 = load i32* %symvar, align 4, !dbg !22
  %rem = srem i32 %2, 6, !dbg !22
  %cmp = icmp ne i32 %rem, 1, !dbg !22
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !22

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32* %symvar, align 4, !dbg !22
  %cmp2 = icmp slt i32 %3, 10, !dbg !22
  br i1 %cmp2, label %if.then, label %lor.lhs.false4, !dbg !22

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = load i32* %symvar, align 4, !dbg !22
  %cmp5 = icmp sgt i32 %4, 40, !dbg !22
  br i1 %cmp5, label %if.then, label %lor.lhs.false7, !dbg !22

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %5 = load i32* %symvar, align 4, !dbg !22
  %cmp8 = icmp eq i32 %5, 19, !dbg !22
  br i1 %cmp8, label %if.then, label %if.end, !dbg !22

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false4, %lor.lhs.false, %entry
  store i32 13, i32* %symvar, align 4, !dbg !24
  br label %if.end, !dbg !24

if.end:                                           ; preds = %if.then, %lor.lhs.false7
  call void @llvm.dbg.declare(metadata !{i64* %addr}, metadata !25), !dbg !27
  %6 = load i32* %symvar, align 4, !dbg !27
  %idx.ext = sext i32 %6 to i64, !dbg !27
  %add.ptr = getelementptr i8* blockaddress(@logic_bomb, %flag_0), i64 %idx.ext, !dbg !27
  %7 = ptrtoint i8* %add.ptr to i64, !dbg !27
  store i64 %7, i64* %addr, align 8, !dbg !27
  %8 = load i64* %addr, align 8, !dbg !28
  call void asm sideeffect "jmp *$0", "r,~{dirflag},~{fpsr},~{flags}"(i64 %8) #3, !dbg !28, !srcloc !29
  br label %flag_0, !dbg !28

flag_0:                                           ; preds = %indirectgoto, %if.end
  %9 = load i32* %symvar, align 4, !dbg !30
  %cmp10 = icmp sgt i32 %9, 0, !dbg !30
  br i1 %cmp10, label %if.then12, label %if.end17, !dbg !30

if.then12:                                        ; preds = %flag_0
  %10 = load i32* %symvar, align 4, !dbg !32
  %inc = add nsw i32 %10, 1, !dbg !32
  store i32 %inc, i32* %symvar, align 4, !dbg !32
  %11 = load i32* %symvar, align 4, !dbg !34
  %cmp13 = icmp eq i32 %11, 0, !dbg !34
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !34

if.then15:                                        ; preds = %if.then12
  %call = call i32 (i8*, i8*, i32, i8*, ...)* bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8]* @.str1, i32 0, i32 0), i32 20, i8* getelementptr inbounds ([23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i32 0, i32 0)), !dbg !36
  br label %if.end16, !dbg !36

if.end16:                                         ; preds = %if.then15, %if.then12
  br label %if.end17, !dbg !37

if.end17:                                         ; preds = %if.end16, %flag_0
  %call18 = call i32 (i8*, i8*, i32, i8*, ...)* bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([29 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8]* @.str1, i32 0, i32 0), i32 22, i8* getelementptr inbounds ([23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i32 0, i32 0)), !dbg !38
  %12 = load i32* %retval, !dbg !39
  ret i32 %12, !dbg !39

indirectgoto:                                     ; No predecessors!
  indirectbr i8* undef, [label %flag_0]
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @__assert_fail(...) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %s = alloca [5 x i8], align 1
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %argc.addr}, metadata !40), !dbg !41
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8*** %argv.addr}, metadata !42), !dbg !41
  call void @llvm.dbg.declare(metadata !{[5 x i8]* %s}, metadata !43), !dbg !47
  %0 = bitcast [5 x i8]* %s to i8*, !dbg !48
  call void @klee_make_symbolic(i8* %0, i64 5, i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !dbg !48
  %arrayidx = getelementptr inbounds [5 x i8]* %s, i32 0, i64 4, !dbg !49
  %1 = load i8* %arrayidx, align 1, !dbg !49
  %conv = sext i8 %1 to i32, !dbg !49
  %cmp = icmp eq i32 %conv, 0, !dbg !49
  %conv1 = zext i1 %cmp to i32, !dbg !49
  %conv2 = sext i32 %conv1 to i64, !dbg !49
  call void @klee_assume(i64 %conv2), !dbg !49
  %arraydecay = getelementptr inbounds [5 x i8]* %s, i32 0, i32 0, !dbg !50
  %call = call i32 @logic_bomb(i8* %arraydecay), !dbg !50
  ret i32 %call, !dbg !50
}

declare void @klee_make_symbolic(i8*, i64, i8*) #2

declare void @klee_assume(i64) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16}
!llvm.ident = !{!17}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/logic_bombs/src/symbolic_jump/jmp_sj_l1_klee_annotated.c] [DW_LANG_C99]
!1 = metadata !{metadata !"jmp_sj_l1_klee_annotated.c", metadata !"/home/klee/logic_bombs/src/symbolic_jump"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"logic_bomb", metadata !"logic_bomb", metadata !"", i32 10, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*)* @logic_bomb, null, null, metadata !2, i32 10} ; [ DW_TAG_subprogram ] [line 10] [def] [logic_bomb]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/klee/logic_bombs/src/symbolic_jump/jmp_sj_l1_klee_annotated.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 25, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 25} ; [ DW_TAG_subprogram ] [line 25] [def] [main]
!12 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !8, metadata !8, metadata !14}
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!15 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!16 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!17 = metadata !{metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)"}
!18 = metadata !{i32 786689, metadata !4, metadata !"s", metadata !5, i32 16777226, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 10]
!19 = metadata !{i32 10, i32 0, metadata !4, null}
!20 = metadata !{i32 786688, metadata !4, metadata !"symvar", metadata !5, i32 11, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symvar] [line 11]
!21 = metadata !{i32 11, i32 0, metadata !4, null}
!22 = metadata !{i32 12, i32 0, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !4, i32 12, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/symbolic_jump/jmp_sj_l1_klee_annotated.c]
!24 = metadata !{i32 13, i32 0, metadata !23, null}
!25 = metadata !{i32 786688, metadata !4, metadata !"addr", metadata !5, i32 14, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [addr] [line 14]
!26 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!27 = metadata !{i32 14, i32 0, metadata !4, null}
!28 = metadata !{i32 15, i32 0, metadata !4, null}
!29 = metadata !{i32 -2146802964}
!30 = metadata !{i32 17, i32 0, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !4, i32 17, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/symbolic_jump/jmp_sj_l1_klee_annotated.c]
!32 = metadata !{i32 18, i32 0, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !31, i32 17, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/symbolic_jump/jmp_sj_l1_klee_annotated.c]
!34 = metadata !{i32 19, i32 0, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !33, i32 19, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/symbolic_jump/jmp_sj_l1_klee_annotated.c]
!36 = metadata !{i32 20, i32 0, metadata !35, null}
!37 = metadata !{i32 21, i32 0, metadata !33, null}
!38 = metadata !{i32 22, i32 0, metadata !4, null}
!39 = metadata !{i32 23, i32 0, metadata !4, null}
!40 = metadata !{i32 786689, metadata !11, metadata !"argc", metadata !5, i32 16777241, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 25]
!41 = metadata !{i32 25, i32 0, metadata !11, null}
!42 = metadata !{i32 786689, metadata !11, metadata !"argv", metadata !5, i32 33554457, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 25]
!43 = metadata !{i32 786688, metadata !11, metadata !"s", metadata !5, i32 26, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 26]
!44 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 40, i64 8, i32 0, i32 0, metadata !10, metadata !45, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 40, align 8, offset 0] [from char]
!45 = metadata !{metadata !46}
!46 = metadata !{i32 786465, i64 0, i64 5}        ; [ DW_TAG_subrange_type ] [0, 4]
!47 = metadata !{i32 26, i32 0, metadata !11, null}
!48 = metadata !{i32 27, i32 0, metadata !11, null}
!49 = metadata !{i32 28, i32 0, metadata !11, null}
!50 = metadata !{i32 29, i32 0, metadata !11, null}
