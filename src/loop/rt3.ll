; ModuleID = '5n+1_lo_l1_klee_annotated.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"0 && \22Logic bomb triggered\22\00", align 1
@.str1 = private unnamed_addr constant [28 x i8] c"5n+1_lo_l1_klee_annotated.c\00", align 1
@__PRETTY_FUNCTION__.logic_bomb = private unnamed_addr constant [23 x i8] c"int logic_bomb(char *)\00", align 1
@.str2 = private unnamed_addr constant [29 x i8] c"0 && \22Path without the bomb\22\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"s\00", align 1

; Function Attrs: nounwind uwtable
define i64 @f(i64 %x) #0 {
entry:
  %retval = alloca i64, align 8
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %x.addr}, metadata !22), !dbg !23
  %0 = load i64* %x.addr, align 8, !dbg !24
  %rem = srem i64 %0, 2, !dbg !24
  %cmp = icmp eq i64 %rem, 0, !dbg !24
  br i1 %cmp, label %if.then, label %if.else, !dbg !24

if.then:                                          ; preds = %entry
  %1 = load i64* %x.addr, align 8, !dbg !26
  %div = sdiv i64 %1, 2, !dbg !26
  store i64 %div, i64* %retval, !dbg !26
  br label %return, !dbg !26

if.else:                                          ; preds = %entry
  %2 = load i64* %x.addr, align 8, !dbg !27
  %rem1 = srem i64 %2, 3, !dbg !27
  %cmp2 = icmp eq i64 %rem1, 0, !dbg !27
  br i1 %cmp2, label %if.then3, label %if.else5, !dbg !27

if.then3:                                         ; preds = %if.else
  %3 = load i64* %x.addr, align 8, !dbg !29
  %div4 = sdiv i64 %3, 3, !dbg !29
  store i64 %div4, i64* %retval, !dbg !29
  br label %return, !dbg !29

if.else5:                                         ; preds = %if.else
  %4 = load i64* %x.addr, align 8, !dbg !30
  %mul = mul nsw i64 3, %4, !dbg !30
  %add = add nsw i64 %mul, 1, !dbg !30
  store i64 %add, i64* %retval, !dbg !30
  br label %return, !dbg !30

return:                                           ; preds = %if.else5, %if.then3, %if.then
  %5 = load i64* %retval, !dbg !31
  ret i64 %5, !dbg !31
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @logic_bomb(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %symvar = alloca i32, align 4
  %j = alloca i64, align 8
  %loopcount = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %s.addr}, metadata !32), !dbg !33
  call void @llvm.dbg.declare(metadata !{i32* %symvar}, metadata !34), !dbg !35
  %0 = load i8** %s.addr, align 8, !dbg !35
  %arrayidx = getelementptr inbounds i8* %0, i64 0, !dbg !35
  %1 = load i8* %arrayidx, align 1, !dbg !35
  %conv = sext i8 %1 to i32, !dbg !35
  %sub = sub nsw i32 %conv, 48, !dbg !35
  store i32 %sub, i32* %symvar, align 4, !dbg !35
  %2 = load i32* %symvar, align 4, !dbg !36
  %add = add nsw i32 %2, 94, !dbg !36
  store i32 %add, i32* %symvar, align 4, !dbg !36
  call void @llvm.dbg.declare(metadata !{i64* %j}, metadata !37), !dbg !38
  %3 = load i32* %symvar, align 4, !dbg !38
  %conv1 = sext i32 %3 to i64, !dbg !38
  %call = call i64 @f(i64 %conv1), !dbg !38
  store i64 %call, i64* %j, align 8, !dbg !38
  call void @llvm.dbg.declare(metadata !{i32* %loopcount}, metadata !39), !dbg !40
  store i32 1, i32* %loopcount, align 4, !dbg !40
  br label %while.cond, !dbg !41

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i64* %j, align 8, !dbg !41
  %cmp = icmp ne i64 %4, 1, !dbg !41
  br i1 %cmp, label %while.body, label %while.end, !dbg !41

while.body:                                       ; preds = %while.cond
  %5 = load i64* %j, align 8, !dbg !42
  %call3 = call i64 @f(i64 %5), !dbg !42
  store i64 %call3, i64* %j, align 8, !dbg !42
  %6 = load i32* %loopcount, align 4, !dbg !44
  %inc = add nsw i32 %6, 1, !dbg !44
  store i32 %inc, i32* %loopcount, align 4, !dbg !44
  br label %while.cond, !dbg !45

while.end:                                        ; preds = %while.cond
  %7 = load i32* %loopcount, align 4, !dbg !46
  %cmp4 = icmp eq i32 %7, 25, !dbg !46
  br i1 %cmp4, label %if.then, label %if.else, !dbg !46

if.then:                                          ; preds = %while.end
  %call6 = call i32 (i8*, i8*, i32, i8*, ...)* bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 26, i8* getelementptr inbounds ([23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i32 0, i32 0)), !dbg !48
  br label %if.end, !dbg !48

if.else:                                          ; preds = %while.end
  %call7 = call i32 (i8*, i8*, i32, i8*, ...)* bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([29 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 28, i8* getelementptr inbounds ([23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i32 0, i32 0)), !dbg !49
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32* %retval, !dbg !50
  ret i32 %8, !dbg !50
}

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
  call void @llvm.dbg.declare(metadata !{i32* %argc.addr}, metadata !51), !dbg !52
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8*** %argv.addr}, metadata !53), !dbg !52
  call void @llvm.dbg.declare(metadata !{[5 x i8]* %s}, metadata !54), !dbg !58
  %0 = bitcast [5 x i8]* %s to i8*, !dbg !59
  call void @klee_make_symbolic(i8* %0, i64 5, i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !dbg !59
  %arrayidx = getelementptr inbounds [5 x i8]* %s, i32 0, i64 4, !dbg !60
  %1 = load i8* %arrayidx, align 1, !dbg !60
  %conv = sext i8 %1 to i32, !dbg !60
  %cmp = icmp eq i32 %conv, 0, !dbg !60
  %conv1 = zext i1 %cmp to i32, !dbg !60
  %conv2 = sext i32 %conv1 to i64, !dbg !60
  call void @klee_assume(i64 %conv2), !dbg !60
  %arraydecay = getelementptr inbounds [5 x i8]* %s, i32 0, i32 0, !dbg !61
  %call = call i32 @logic_bomb(i8* %arraydecay), !dbg !61
  ret i32 %call, !dbg !61
}

declare void @klee_make_symbolic(i8*, i64, i8*) #2

declare void @klee_assume(i64) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!19, !20}
!llvm.ident = !{!21}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/logic_bombs/src/loop/5n+1_lo_l1_klee_annotated.c] [DW_LANG_C99]
!1 = metadata !{metadata !"5n+1_lo_l1_klee_annotated.c", metadata !"/home/klee/logic_bombs/src/loop"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !9, metadata !15}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"f", metadata !"f", metadata !"", i32 6, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64)* @f, null, null, metadata !2, i32 6} ; [ DW_TAG_subprogram ] [line 6] [def] [f]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/klee/logic_bombs/src/loop/5n+1_lo_l1_klee_annotated.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"logic_bomb", metadata !"logic_bomb", metadata !"", i32 16, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*)* @logic_bomb, null, null, metadata !2, i32 16} ; [ DW_TAG_subprogram ] [line 16] [def] [logic_bomb]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !12, metadata !13}
!12 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!13 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!14 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 31, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 31} ; [ DW_TAG_subprogram ] [line 31] [def] [main]
!16 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!17 = metadata !{metadata !12, metadata !12, metadata !18}
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!19 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!20 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!21 = metadata !{metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)"}
!22 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 16777222, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 6]
!23 = metadata !{i32 6, i32 0, metadata !4, null}
!24 = metadata !{i32 7, i32 0, metadata !25, null}
!25 = metadata !{i32 786443, metadata !1, metadata !4, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/loop/5n+1_lo_l1_klee_annotated.c]
!26 = metadata !{i32 8, i32 0, metadata !25, null} ; [ DW_TAG_imported_declaration ]
!27 = metadata !{i32 9, i32 0, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !25, i32 9, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/loop/5n+1_lo_l1_klee_annotated.c]
!29 = metadata !{i32 10, i32 0, metadata !28, null}
!30 = metadata !{i32 12, i32 0, metadata !28, null}
!31 = metadata !{i32 13, i32 0, metadata !4, null}
!32 = metadata !{i32 786689, metadata !9, metadata !"s", metadata !5, i32 16777232, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 16]
!33 = metadata !{i32 16, i32 0, metadata !9, null}
!34 = metadata !{i32 786688, metadata !9, metadata !"symvar", metadata !5, i32 17, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symvar] [line 17]
!35 = metadata !{i32 17, i32 0, metadata !9, null}
!36 = metadata !{i32 18, i32 0, metadata !9, null}
!37 = metadata !{i32 786688, metadata !9, metadata !"j", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 19]
!38 = metadata !{i32 19, i32 0, metadata !9, null}
!39 = metadata !{i32 786688, metadata !9, metadata !"loopcount", metadata !5, i32 20, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loopcount] [line 20]
!40 = metadata !{i32 20, i32 0, metadata !9, null}
!41 = metadata !{i32 21, i32 0, metadata !9, null}
!42 = metadata !{i32 22, i32 0, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !9, i32 21, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/loop/5n+1_lo_l1_klee_annotated.c]
!44 = metadata !{i32 23, i32 0, metadata !43, null}
!45 = metadata !{i32 24, i32 0, metadata !43, null}
!46 = metadata !{i32 25, i32 0, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !9, i32 25, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/loop/5n+1_lo_l1_klee_annotated.c]
!48 = metadata !{i32 26, i32 0, metadata !47, null}
!49 = metadata !{i32 28, i32 0, metadata !47, null}
!50 = metadata !{i32 29, i32 0, metadata !9, null}
!51 = metadata !{i32 786689, metadata !15, metadata !"argc", metadata !5, i32 16777247, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 31]
!52 = metadata !{i32 31, i32 0, metadata !15, null}
!53 = metadata !{i32 786689, metadata !15, metadata !"argv", metadata !5, i32 33554463, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 31]
!54 = metadata !{i32 786688, metadata !15, metadata !"s", metadata !5, i32 32, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 32]
!55 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 40, i64 8, i32 0, i32 0, metadata !14, metadata !56, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 40, align 8, offset 0] [from char]
!56 = metadata !{metadata !57}
!57 = metadata !{i32 786465, i64 0, i64 5}        ; [ DW_TAG_subrange_type ] [0, 4]
!58 = metadata !{i32 32, i32 0, metadata !15, null}
!59 = metadata !{i32 33, i32 0, metadata !15, null}
!60 = metadata !{i32 34, i32 0, metadata !15, null}
!61 = metadata !{i32 35, i32 0, metadata !15, null}
