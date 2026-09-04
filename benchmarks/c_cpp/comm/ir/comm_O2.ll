; ModuleID = 'src/comm.c'
source_filename = "src/comm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.linebuffer = type { i64, i64, ptr }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Usage: %s [OPTION]... FILE1 FILE2\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [52 x i8] c"Compare sorted files FILE1 and FILE2 line by line.\0A\00", align 1, !dbg !12
@stdout = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"\0AWhen FILE1 or FILE2 is -, read standard input.\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [189 x i8] c"\0AWith no options, produce three-column output.  Column one contains\0Alines unique to FILE1, column two contains lines unique to FILE2,\0Aand column three contains lines common to both files.\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [5 x i8] c"comm\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [52 x i8] c"  -1     suppress column 1 (lines unique to FILE1)\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [52 x i8] c"  -2     suppress column 2 (lines unique to FILE2)\0A\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [62 x i8] c"  -3     suppress column 3 (lines that appear in both files)\0A\00", align 1, !dbg !36
@.str.9 = private unnamed_addr constant [118 x i8] c"      --check-order\0A         check that the input is correctly sorted,\0A         even if all input lines are pairable\0A\00", align 1, !dbg !41
@.str.10 = private unnamed_addr constant [80 x i8] c"      --nocheck-order\0A         do not check that the input is correctly sorted\0A\00", align 1, !dbg !46
@.str.11 = private unnamed_addr constant [65 x i8] c"      --output-delimiter=STR\0A         separate columns with STR\0A\00", align 1, !dbg !51
@.str.12 = private unnamed_addr constant [41 x i8] c"      --total\0A         output a summary\0A\00", align 1, !dbg !56
@.str.13 = private unnamed_addr constant [69 x i8] c"  -z, --zero-terminated\0A         line delimiter is NUL, not newline\0A\00", align 1, !dbg !61
@.str.14 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !66
@.str.15 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !71
@.str.16 = private unnamed_addr constant [57 x i8] c"\0AComparisons honor the rules specified by 'LC_COLLATE'.\0A\00", align 1, !dbg !73
@.str.17 = private unnamed_addr constant [156 x i8] c"\0AExamples:\0A  %s -12 file1 file2  Print only lines present in both file1 and file2.\0A  %s -3 file1 file2  Print lines in file1 not in file2, and vice versa.\0A\00", align 1, !dbg !78
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !83
@.str.19 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !88
@.str.20 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !93
@hard_LC_COLLATE = internal unnamed_addr global i8 0, align 1, !dbg !98
@.str.21 = private unnamed_addr constant [5 x i8] c"123z\00", align 1, !dbg !169
@only_file_1 = internal unnamed_addr global i1 false, align 1, !dbg !459
@only_file_2 = internal unnamed_addr global i1 false, align 1, !dbg !460
@both = internal unnamed_addr global i1 false, align 1, !dbg !461
@delim = internal unnamed_addr global i1 false, align 1, !dbg !462
@check_input_order = internal unnamed_addr global i32 0, align 4, !dbg !206
@col_sep_len = internal unnamed_addr global i64 0, align 8, !dbg !426
@col_sep = internal unnamed_addr global ptr @.str.70, align 8, !dbg !430
@optarg = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [37 x i8] c"multiple output delimiters specified\00", align 1, !dbg !171
@total_option = internal unnamed_addr global i1 false, align 1, !dbg !463
@.str.23 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !176
@Version = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1, !dbg !181
@.str.25 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !186
@optind = external local_unnamed_addr global i32, align 4
@.str.26 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !191
@.str.27 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1, !dbg !193
@.str.28 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !198
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !208
@.str.29 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !287
@.str.30 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !289
@.str.31 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !291
@.str.32 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !296
@.str.46 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !339
@.str.47 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !341
@.str.48 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !343
@.str.49 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !345
@.str.50 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !350
@.str.51 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !355
@.str.52 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !360
@.str.53 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !362
@.str.54 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !364
@.str.55 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !366
@.str.59 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !377
@.str.60 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !382
@.str.61 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !387
@.str.62 = private unnamed_addr constant [12 x i8] c"check-order\00", align 1, !dbg !392
@.str.63 = private unnamed_addr constant [14 x i8] c"nocheck-order\00", align 1, !dbg !394
@.str.64 = private unnamed_addr constant [17 x i8] c"output-delimiter\00", align 1, !dbg !396
@.str.65 = private unnamed_addr constant [6 x i8] c"total\00", align 1, !dbg !398
@.str.66 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1, !dbg !400
@.str.67 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !402
@.str.68 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !404
@long_options = internal constant [8 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.62, i32 0, [4 x i8] zeroinitializer, ptr null, i32 128, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.63, i32 0, [4 x i8] zeroinitializer, ptr null, i32 129, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 130, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.65, i32 0, [4 x i8] zeroinitializer, ptr null, i32 131, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.66, i32 0, [4 x i8] zeroinitializer, ptr null, i32 122, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.67, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -130, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.68, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -131, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16, !dbg !406
@.str.70 = private unnamed_addr constant [2 x i8] c"\09\00", align 1, !dbg !428
@stdin = external local_unnamed_addr global ptr, align 8
@.str.72 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !434
@.str.73 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !436
@seen_unpairable = internal unnamed_addr global i1 false, align 1, !dbg !464
@.str.74 = private unnamed_addr constant [20 x i8] c"%ju%c%ju%c%ju%c%s%c\00", align 1, !dbg !438
@.str.75 = private unnamed_addr constant [20 x i8] c"%ju%s%ju%s%ju%s%s%c\00", align 1, !dbg !440
@issued_disorder_warning = internal unnamed_addr global [2 x i8] zeroinitializer, align 1, !dbg !456
@.str.76 = private unnamed_addr constant [29 x i8] c"input is not in sorted order\00", align 1, !dbg !442
@.str.77 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !447
@.str.78 = private unnamed_addr constant [31 x i8] c"file %d is not in sorted order\00", align 1, !dbg !451

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !477 {
    #dbg_value(i32 %0, !481, !DIExpression(), !482)
  %2 = icmp eq i32 %0, 0, !dbg !483
  br i1 %2, label %8, label %3, !dbg !485

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !486, !tbaa !488
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #13, !dbg !486
  %6 = load ptr, ptr @program_name, align 8, !dbg !486, !tbaa !491
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #13, !dbg !486
  br label %41, !dbg !486

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #13, !dbg !493
  %10 = load ptr, ptr @program_name, align 8, !dbg !495, !tbaa !491
  %11 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %9, ptr noundef %10) #13, !dbg !496
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #13, !dbg !497
  %13 = load ptr, ptr @stdout, align 8, !dbg !498, !tbaa !488
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !499
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #13, !dbg !500
  %16 = load ptr, ptr @stdout, align 8, !dbg !501, !tbaa !488
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !502
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #13, !dbg !503
  %19 = load ptr, ptr @stdout, align 8, !dbg !504, !tbaa !488
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !505
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #13, !dbg !506
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !507
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #13, !dbg !508
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !509
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #13, !dbg !510
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !511
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #13, !dbg !512
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !513
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #13, !dbg !514
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !515
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #13, !dbg !516
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !517
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #13, !dbg !518
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !519
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #13, !dbg !520
  tail call fastcc void @oputs_(ptr noundef %28), !dbg !521
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #13, !dbg !522
  tail call fastcc void @oputs_(ptr noundef %29), !dbg !523
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #13, !dbg !524
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !525
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #13, !dbg !526
  %32 = load ptr, ptr @stdout, align 8, !dbg !527, !tbaa !488
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !528
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #13, !dbg !529
  %35 = load ptr, ptr @program_name, align 8, !dbg !530, !tbaa !491
  %36 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %34, ptr noundef %35, ptr noundef %35) #13, !dbg !531
    #dbg_value(ptr @.str.5, !532, !DIExpression(), !548)
    #dbg_value(ptr poison, !545, !DIExpression(), !548)
    #dbg_value(ptr @.str.5, !544, !DIExpression(), !548)
  tail call void @emit_bug_reporting_address() #13, !dbg !550
    #dbg_value(ptr @.str.5, !547, !DIExpression(), !548)
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #13, !dbg !551
  %38 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %37, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.5) #13, !dbg !552
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #13, !dbg !553
  %40 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %39, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.61) #13, !dbg !554
  br label %41

41:                                               ; preds = %8, %3
  tail call void @exit(i32 noundef %0) #14, !dbg !555
  unreachable, !dbg !555
}

declare !dbg !556 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !562 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !566 i32 @rpl_printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare !dbg !570 noundef i32 @fputs_unlocked(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !210 {
    #dbg_value(ptr @.str.5, !214, !DIExpression(), !574)
    #dbg_value(ptr %0, !215, !DIExpression(), !574)
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !575, !tbaa !473
  %3 = icmp eq i32 %2, -1, !dbg !576
  br i1 %3, label %4, label %16, !dbg !577

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.29) #13, !dbg !578
    #dbg_value(ptr %5, !216, !DIExpression(), !579)
  %6 = icmp eq ptr %5, null, !dbg !580
  br i1 %6, label %14, label %7, !dbg !581

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !582, !tbaa !583
  %9 = icmp eq i8 %8, 0, !dbg !584
  br i1 %9, label %14, label %10, !dbg !585

10:                                               ; preds = %7
    #dbg_value(ptr %5, !586, !DIExpression(), !593)
    #dbg_value(ptr @.str.30, !592, !DIExpression(), !593)
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.30) #15, !dbg !595
  %12 = icmp eq i32 %11, 0, !dbg !596
  %13 = zext i1 %12 to i32, !dbg !597
  br label %14, !dbg !598

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !599, !tbaa !473
  br label %16, !dbg !600

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !601
  %18 = icmp eq i32 %17, 0, !dbg !603
  br i1 %18, label %19, label %114, !dbg !604

19:                                               ; preds = %16
    #dbg_value(i8 1, !219, !DIExpression(), !574)
  %20 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.31) #15, !dbg !605
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 %20, !dbg !606
    #dbg_value(ptr %21, !220, !DIExpression(), !574)
  %22 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #15, !dbg !607
    #dbg_value(ptr %22, !221, !DIExpression(), !574)
  %23 = icmp eq ptr %22, null, !dbg !608
  br i1 %23, label %48, label %24, !dbg !609

24:                                               ; preds = %19
    #dbg_value(ptr %21, !222, !DIExpression(), !610)
    #dbg_value(i64 0, !226, !DIExpression(), !610)
  %25 = icmp ult ptr %21, %22
  br i1 %25, label %26, label %48, !dbg !611

26:                                               ; preds = %24
  %27 = tail call ptr @__ctype_b_loc() #16, !dbg !574
  %28 = load ptr, ptr %27, align 8, !tbaa !612
  br label %29, !dbg !614

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %21, %26 ], [ %32, %29 ]
  %31 = phi i64 [ 0, %26 ], [ %41, %29 ]
    #dbg_value(ptr %30, !222, !DIExpression(), !610)
    #dbg_value(i64 %31, !226, !DIExpression(), !610)
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 1, !dbg !615
    #dbg_value(ptr %32, !222, !DIExpression(), !610)
  %33 = load i8, ptr %30, align 1, !dbg !616, !tbaa !583
  %34 = sext i8 %33 to i64, !dbg !617
  %35 = getelementptr inbounds i16, ptr %28, i64 %34, !dbg !617
  %36 = load i16, ptr %35, align 2, !dbg !617, !tbaa !618
  %37 = freeze i16 %36, !dbg !620
  %38 = lshr i16 %37, 13, !dbg !620
  %39 = and i16 %38, 1, !dbg !620
  %40 = zext nneg i16 %39 to i64, !dbg !620
  %41 = add i64 %31, %40, !dbg !621
    #dbg_value(i64 %41, !226, !DIExpression(), !610)
  %42 = icmp ult ptr %32, %22, !dbg !622
  %43 = icmp samesign ult i64 %41, 2, !dbg !623
  %44 = select i1 %42, i1 %43, i1 false, !dbg !623
  br i1 %44, label %29, label %45, !dbg !624, !llvm.loop !625

45:                                               ; preds = %29
  %46 = icmp ne i64 %41, 2, !dbg !628
  %47 = select i1 %46, ptr %22, ptr %21, !dbg !630
  br label %48, !dbg !630

48:                                               ; preds = %45, %19, %24
  %49 = phi ptr [ %21, %19 ], [ %22, %24 ], [ %47, %45 ], !dbg !574
  %50 = phi i1 [ false, %19 ], [ true, %24 ], [ %46, %45 ], !dbg !574
    #dbg_value(i8 poison, !219, !DIExpression(), !574)
    #dbg_value(ptr %49, !221, !DIExpression(), !574)
  %51 = tail call i64 @strcspn(ptr noundef nonnull %49, ptr noundef nonnull @.str.32) #15, !dbg !631
    #dbg_value(i64 %51, !227, !DIExpression(), !574)
  %52 = getelementptr inbounds nuw i8, ptr %49, i64 %51, !dbg !632
    #dbg_value(ptr %52, !228, !DIExpression(), !574)
  br label %53, !dbg !633

53:                                               ; preds = %84, %48
  %54 = phi ptr [ %52, %48 ], [ %85, %84 ], !dbg !574
  %55 = phi i1 [ %50, %48 ], [ %63, %84 ], !dbg !574
    #dbg_value(i8 poison, !219, !DIExpression(), !574)
    #dbg_value(ptr %54, !228, !DIExpression(), !574)
  %56 = load i8, ptr %54, align 1, !dbg !634, !tbaa !583
  switch i8 %56, label %62 [
    i8 0, label %86
    i8 10, label %86
    i8 45, label %57
  ], !dbg !635

57:                                               ; preds = %53
  %58 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !636
  %59 = load i8, ptr %58, align 1, !dbg !636, !tbaa !583
  %60 = icmp ne i8 %59, 45, !dbg !639
  %61 = select i1 %60, i1 %55, i1 false, !dbg !640
  br label %62, !dbg !640

62:                                               ; preds = %57, %53
  %63 = phi i1 [ %55, %53 ], [ %61, %57 ], !dbg !574
    #dbg_value(i8 poison, !219, !DIExpression(), !574)
  %64 = tail call ptr @__ctype_b_loc() #16, !dbg !641
  %65 = load ptr, ptr %64, align 8, !dbg !641, !tbaa !612
  %66 = sext i8 %56 to i64, !dbg !641
  %67 = getelementptr inbounds i16, ptr %65, i64 %66, !dbg !641
  %68 = load i16, ptr %67, align 2, !dbg !641, !tbaa !618
  %69 = and i16 %68, 8192, !dbg !641
  %70 = icmp eq i16 %69, 0, !dbg !643
  br i1 %70, label %84, label %71, !dbg !644

71:                                               ; preds = %62
  %72 = icmp eq i8 %56, 9, !dbg !645
  br i1 %72, label %86, label %73, !dbg !648

73:                                               ; preds = %71
  %74 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !649
  %75 = load i8, ptr %74, align 1, !dbg !649, !tbaa !583
  %76 = sext i8 %75 to i64, !dbg !650
  %77 = getelementptr inbounds i16, ptr %65, i64 %76, !dbg !650
  %78 = load i16, ptr %77, align 2, !dbg !650, !tbaa !618
  %79 = and i16 %78, 8192, !dbg !650
  %80 = icmp eq i16 %79, 0, !dbg !651
  %81 = icmp eq i8 %75, 45
  %82 = or i1 %63, %81
  %83 = select i1 %80, i1 %82, i1 false, !dbg !652
  br i1 %83, label %84, label %86, !dbg !652

84:                                               ; preds = %73, %62
  %85 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !653
    #dbg_value(ptr %85, !228, !DIExpression(), !574)
  br label %53, !dbg !633, !llvm.loop !654

86:                                               ; preds = %53, %53, %71, %73
  %87 = ptrtoint ptr %21 to i64, !dbg !656
  %88 = load ptr, ptr @stdout, align 8, !dbg !657, !tbaa !488
  %89 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %0, i64 noundef 1, i64 noundef %20, ptr noundef %88), !dbg !658
    #dbg_value(ptr @.str.5, !586, !DIExpression(), !659)
    #dbg_value(ptr poison, !592, !DIExpression(), !659)
    #dbg_value(ptr @.str.5, !586, !DIExpression(), !661)
    #dbg_value(ptr poison, !592, !DIExpression(), !661)
    #dbg_value(ptr @.str.5, !586, !DIExpression(), !663)
    #dbg_value(ptr poison, !592, !DIExpression(), !663)
    #dbg_value(ptr @.str.5, !586, !DIExpression(), !665)
    #dbg_value(ptr poison, !592, !DIExpression(), !665)
    #dbg_value(ptr @.str.5, !586, !DIExpression(), !667)
    #dbg_value(ptr poison, !592, !DIExpression(), !667)
    #dbg_value(ptr @.str.5, !586, !DIExpression(), !669)
    #dbg_value(ptr poison, !592, !DIExpression(), !669)
    #dbg_value(ptr @.str.5, !586, !DIExpression(), !671)
    #dbg_value(ptr poison, !592, !DIExpression(), !671)
    #dbg_value(ptr @.str.5, !586, !DIExpression(), !673)
    #dbg_value(ptr poison, !592, !DIExpression(), !673)
    #dbg_value(ptr @.str.5, !586, !DIExpression(), !675)
    #dbg_value(ptr poison, !592, !DIExpression(), !675)
    #dbg_value(ptr @.str.5, !586, !DIExpression(), !677)
    #dbg_value(ptr poison, !592, !DIExpression(), !677)
    #dbg_value(ptr @.str.5, !282, !DIExpression(), !574)
  %90 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(7) @.str.46, i64 noundef 6) #15, !dbg !679
  %91 = icmp eq i32 %90, 0, !dbg !681
  br i1 %91, label %95, label %92, !dbg !682

92:                                               ; preds = %86
  %93 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(10) @.str.47, i64 noundef 9) #15, !dbg !683
  %94 = icmp eq i32 %93, 0, !dbg !684
  br i1 %94, label %95, label %98, !dbg !685

95:                                               ; preds = %92, %86
  %96 = trunc i64 %51 to i32, !dbg !686
  %97 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.5, i32 noundef %96, ptr noundef nonnull %49) #13, !dbg !688
  br label %101, !dbg !689

98:                                               ; preds = %92
  %99 = trunc i64 %51 to i32, !dbg !690
  %100 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.5, i32 noundef %99, ptr noundef nonnull %49) #13, !dbg !692
  br label %101

101:                                              ; preds = %98, %95
  %102 = load ptr, ptr @stdout, align 8, !dbg !693, !tbaa !488
  %103 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.52, ptr noundef %102), !dbg !694
  %104 = load ptr, ptr @stdout, align 8, !dbg !695, !tbaa !488
  %105 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.53, ptr noundef %104), !dbg !696
  %106 = ptrtoint ptr %54 to i64, !dbg !697
  %107 = sub i64 %106, %87, !dbg !697
  %108 = load ptr, ptr @stdout, align 8, !dbg !698, !tbaa !488
  %109 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %21, i64 noundef 1, i64 noundef %107, ptr noundef %108), !dbg !699
  %110 = load ptr, ptr @stdout, align 8, !dbg !700, !tbaa !488
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.54, ptr noundef %110), !dbg !701
  %112 = load ptr, ptr @stdout, align 8, !dbg !702, !tbaa !488
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.55, ptr noundef %112), !dbg !703
  br label %114, !dbg !704

114:                                              ; preds = %16, %101
  %115 = phi ptr [ %54, %101 ], [ %0, %16 ]
  %116 = load ptr, ptr @stdout, align 8, !dbg !574, !tbaa !488
  %117 = tail call i32 @fputs_unlocked(ptr noundef %115, ptr noundef %116), !dbg !574
  ret void, !dbg !705
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !706 {
    #dbg_value(i32 %0, !711, !DIExpression(), !714)
    #dbg_value(ptr %1, !712, !DIExpression(), !714)
  %3 = load ptr, ptr %1, align 8, !dbg !715, !tbaa !491
  tail call void @set_program_name(ptr noundef %3) #13, !dbg !716
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.18) #13, !dbg !717
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #13, !dbg !718
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.19) #13, !dbg !719
  %7 = tail call zeroext i1 @hard_locale(i32 noundef 3) #13, !dbg !720
  %8 = zext i1 %7 to i8, !dbg !721
  store i8 %8, ptr @hard_LC_COLLATE, align 1, !dbg !722, !tbaa !723
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #13, !dbg !725
  br label %10, !dbg !726

10:                                               ; preds = %36, %2
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.21, ptr noundef nonnull @long_options, ptr noundef null) #13, !dbg !727
    #dbg_value(i32 %11, !713, !DIExpression(), !714)
  switch i32 %11, label %43 [
    i32 -1, label %44
    i32 49, label %12
    i32 50, label %13
    i32 51, label %14
    i32 122, label %15
    i32 129, label %16
    i32 128, label %17
    i32 130, label %18
    i32 131, label %35
    i32 -130, label %37
    i32 -131, label %38
  ], !dbg !728

12:                                               ; preds = %10
  store i1 true, ptr @only_file_1, align 1, !dbg !729
  br label %36, !dbg !731

13:                                               ; preds = %10
  store i1 true, ptr @only_file_2, align 1, !dbg !732
  br label %36, !dbg !733

14:                                               ; preds = %10
  store i1 true, ptr @both, align 1, !dbg !734
  br label %36, !dbg !735

15:                                               ; preds = %10
  store i1 true, ptr @delim, align 1, !dbg !736
  br label %36, !dbg !737

16:                                               ; preds = %10
  store i32 2, ptr @check_input_order, align 4, !dbg !738, !tbaa !473
  br label %36, !dbg !739

17:                                               ; preds = %10
  store i32 1, ptr @check_input_order, align 4, !dbg !740, !tbaa !473
  br label %36, !dbg !741

18:                                               ; preds = %10
  %19 = load i64, ptr @col_sep_len, align 8, !dbg !742, !tbaa !744
  %20 = icmp eq i64 %19, 0, !dbg !746
  %21 = load ptr, ptr @optarg, align 8, !dbg !747, !tbaa !491
  br i1 %20, label %28, label %22, !dbg !748

22:                                               ; preds = %18
  %23 = load ptr, ptr @col_sep, align 8, !dbg !749, !tbaa !491
    #dbg_value(ptr %23, !586, !DIExpression(), !750)
    #dbg_value(ptr %21, !592, !DIExpression(), !750)
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %21) #15, !dbg !752
  %25 = icmp eq i32 %24, 0, !dbg !753
  br i1 %25, label %28, label %26, !dbg !754

26:                                               ; preds = %22
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #13, !dbg !755
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %27) #13, !dbg !756
  unreachable, !dbg !756

28:                                               ; preds = %22, %18
  store ptr %21, ptr @col_sep, align 8, !dbg !757, !tbaa !491
  %29 = load i8, ptr %21, align 1, !dbg !758, !tbaa !583
  %30 = icmp eq i8 %29, 0, !dbg !759
  br i1 %30, label %33, label %31, !dbg !760

31:                                               ; preds = %28
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %21) #15, !dbg !761
  br label %33, !dbg !758

33:                                               ; preds = %28, %31
  %34 = phi i64 [ %32, %31 ], [ 1, %28 ], !dbg !762
  store i64 %34, ptr @col_sep_len, align 8, !dbg !763, !tbaa !744
  br label %36, !dbg !764

35:                                               ; preds = %10
  store i1 true, ptr @total_option, align 1, !dbg !765
  br label %36, !dbg !766

36:                                               ; preds = %35, %33, %17, %16, %15, %14, %13, %12
  br label %10, !dbg !727, !llvm.loop !767

37:                                               ; preds = %10
  tail call void @usage(i32 noundef 0) #17, !dbg !769
  unreachable, !dbg !769

38:                                               ; preds = %10
  %39 = load ptr, ptr @stdout, align 8, !dbg !770, !tbaa !488
  %40 = load ptr, ptr @Version, align 8, !dbg !770, !tbaa !491
  %41 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.24) #13, !dbg !771
  %42 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.25) #13, !dbg !771
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %39, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.23, ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef null) #13, !dbg !770
  tail call void @exit(i32 noundef 0) #14, !dbg !770
  unreachable, !dbg !770

43:                                               ; preds = %10
  tail call void @usage(i32 noundef 1) #17, !dbg !772
  unreachable, !dbg !772

44:                                               ; preds = %10
  %45 = load i64, ptr @col_sep_len, align 8, !dbg !773, !tbaa !744
  %46 = icmp eq i64 %45, 0, !dbg !775
  br i1 %46, label %47, label %48, !dbg !776

47:                                               ; preds = %44
  store i64 1, ptr @col_sep_len, align 8, !dbg !777, !tbaa !744
  br label %48, !dbg !778

48:                                               ; preds = %47, %44
  %49 = load i32, ptr @optind, align 4, !dbg !779, !tbaa !473
  %50 = sub nsw i32 %0, %49, !dbg !781
  %51 = icmp slt i32 %50, 2, !dbg !782
  br i1 %51, label %52, label %64, !dbg !783

52:                                               ; preds = %48
  %53 = icmp sgt i32 %0, %49, !dbg !784
  br i1 %53, label %56, label %54, !dbg !787

54:                                               ; preds = %52
  %55 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #13, !dbg !788
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %55) #13, !dbg !789
  br label %63, !dbg !789

56:                                               ; preds = %52
  %57 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #13, !dbg !790
  %58 = sext i32 %0 to i64, !dbg !791
  %59 = getelementptr ptr, ptr %1, i64 %58, !dbg !791
  %60 = getelementptr i8, ptr %59, i64 -8, !dbg !791
  %61 = load ptr, ptr %60, align 8, !dbg !791, !tbaa !491
  %62 = tail call ptr @quote(ptr noundef %61) #13, !dbg !792
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %57, ptr noundef %62) #13, !dbg !793
  br label %63

63:                                               ; preds = %56, %54
  tail call void @usage(i32 noundef 1) #17, !dbg !794
  unreachable, !dbg !794

64:                                               ; preds = %48
  %65 = icmp eq i32 %50, 2, !dbg !795
  br i1 %65, label %74, label %66, !dbg !797

66:                                               ; preds = %64
  %67 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #13, !dbg !798
  %68 = load i32, ptr @optind, align 4, !dbg !800, !tbaa !473
  %69 = sext i32 %68 to i64, !dbg !801
  %70 = getelementptr ptr, ptr %1, i64 %69, !dbg !801
  %71 = getelementptr i8, ptr %70, i64 16, !dbg !801
  %72 = load ptr, ptr %71, align 8, !dbg !801, !tbaa !491
  %73 = tail call ptr @quote(ptr noundef %72) #13, !dbg !802
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %67, ptr noundef %73) #13, !dbg !803
  tail call void @usage(i32 noundef 1) #17, !dbg !804
  unreachable, !dbg !804

74:                                               ; preds = %64
  %75 = sext i32 %49 to i64, !dbg !805
  %76 = getelementptr inbounds ptr, ptr %1, i64 %75, !dbg !805
  tail call fastcc void @compare_files(ptr noundef nonnull %76) #17, !dbg !806
  unreachable, !dbg !806
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

declare !dbg !807 void @set_program_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !809 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !813 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !816 ptr @textdomain(ptr noundef) local_unnamed_addr #2

declare !dbg !819 zeroext i1 @hard_locale(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare !dbg !823 i32 @atexit(ptr noundef) local_unnamed_addr #3

declare void @close_stdout() #1

; Function Attrs: nounwind
declare !dbg !830 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !836 void @error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !840 i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare !dbg !844 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !848 ptr @proper_name_lite(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !852 ptr @quote(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @compare_files(ptr noundef readonly captures(none) %0) unnamed_addr #0 !dbg !856 {
  %2 = alloca [2 x [4 x %struct.linebuffer]], align 16, !DIAssignID !908
    #dbg_assign(i1 poison, !861, !DIExpression(), !908, ptr %2, !DIExpression(), !909)
  %3 = alloca [2 x [4 x ptr]], align 16, !DIAssignID !910
    #dbg_assign(i1 poison, !875, !DIExpression(), !910, ptr %3, !DIExpression(), !909)
    #dbg_value(ptr %0, !860, !DIExpression(), !909)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13, !dbg !911
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13, !dbg !912
    #dbg_value(i64 0, !882, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !909)
    #dbg_value(i64 0, !882, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !909)
    #dbg_value(i64 0, !882, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !909)
    #dbg_value(i64 0, !887, !DIExpression(), !913)
    #dbg_value(i64 0, !889, !DIExpression(), !914)
  call void @initbuffer(ptr noundef nonnull %2) #13, !dbg !915
  store ptr %2, ptr %3, align 16, !dbg !918, !tbaa !919
    #dbg_value(i64 1, !889, !DIExpression(), !914)
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !921
  call void @initbuffer(ptr noundef nonnull %4) #13, !dbg !915
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !922
  store ptr %4, ptr %5, align 8, !dbg !923, !tbaa !919
    #dbg_value(i64 2, !889, !DIExpression(), !914)
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 48, !dbg !921
  call void @initbuffer(ptr noundef nonnull %6) #13, !dbg !915
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !922
  store ptr %6, ptr %7, align 16, !dbg !924, !tbaa !919
    #dbg_value(i64 3, !889, !DIExpression(), !914)
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 72, !dbg !921
  call void @initbuffer(ptr noundef nonnull %8) #13, !dbg !915
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !922
  store ptr %8, ptr %9, align 8, !dbg !925, !tbaa !919
    #dbg_value(i64 4, !889, !DIExpression(), !914)
    #dbg_value(i32 0, !877, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !909)
    #dbg_value(i32 0, !877, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !909)
    #dbg_value(i32 0, !877, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !909)
  %10 = load ptr, ptr %0, align 8, !dbg !926, !tbaa !491
    #dbg_value(ptr %10, !586, !DIExpression(), !927)
    #dbg_value(ptr poison, !592, !DIExpression(), !927)
  %11 = load i8, ptr %10, align 1, !dbg !929
  %12 = icmp eq i8 %11, 45, !dbg !929
  br i1 %12, label %48, label %54, !dbg !929

13:                                               ; preds = %66
    #dbg_value(i64 1, !887, !DIExpression(), !913)
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 96
    #dbg_value(i32 0, !889, !DIExpression(), !914)
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
    #dbg_value(i64 0, !889, !DIExpression(), !914)
  call void @initbuffer(ptr noundef nonnull %14) #13, !dbg !915
  store ptr %14, ptr %15, align 16, !dbg !930, !tbaa !919
    #dbg_value(i64 1, !889, !DIExpression(), !914)
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 120, !dbg !921
  call void @initbuffer(ptr noundef nonnull %16) #13, !dbg !915
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !922
  store ptr %16, ptr %17, align 8, !dbg !931, !tbaa !919
    #dbg_value(i64 2, !889, !DIExpression(), !914)
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 144, !dbg !921
  call void @initbuffer(ptr noundef nonnull %18) #13, !dbg !915
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !922
  store ptr %18, ptr %19, align 16, !dbg !932, !tbaa !919
    #dbg_value(i64 3, !889, !DIExpression(), !914)
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 168, !dbg !921
  call void @initbuffer(ptr noundef nonnull %20) #13, !dbg !915
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 56, !dbg !922
  store ptr %20, ptr %21, align 8, !dbg !933, !tbaa !919
    #dbg_value(i64 4, !889, !DIExpression(), !914)
    #dbg_value(i32 0, !877, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !909)
    #dbg_value(i32 0, !877, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !909)
    #dbg_value(i32 0, !877, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !909)
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !926
  %23 = load ptr, ptr %22, align 8, !dbg !926, !tbaa !491
    #dbg_value(ptr %23, !586, !DIExpression(), !927)
    #dbg_value(ptr poison, !592, !DIExpression(), !927)
  %24 = load i8, ptr %23, align 1, !dbg !929
  %25 = icmp eq i8 %24, 45, !dbg !929
  br i1 %25, label %26, label %30, !dbg !929

26:                                               ; preds = %13
  %27 = getelementptr inbounds nuw i8, ptr %23, i64 1, !dbg !929
  %28 = load i8, ptr %27, align 1, !dbg !929
  %29 = icmp eq i8 %28, 0, !dbg !934
  br i1 %29, label %32, label %30, !dbg !935

30:                                               ; preds = %13, %26
  %31 = call ptr @fopen_safer(ptr noundef nonnull %23, ptr noundef nonnull @.str.72) #13, !dbg !936
  br label %34, !dbg !937

32:                                               ; preds = %26
  %33 = load ptr, ptr @stdin, align 8, !dbg !938, !tbaa !488
  br label %34, !dbg !937

34:                                               ; preds = %32, %30
  %35 = phi ptr [ %33, %32 ], [ %31, %30 ], !dbg !939
    #dbg_value(ptr %35, !880, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !909)
  %36 = icmp eq ptr %35, null, !dbg !940
  br i1 %36, label %59, label %37, !dbg !942

37:                                               ; preds = %34
  call void @fadvise(ptr noundef nonnull %35, i32 noundef 2) #13, !dbg !943
  %38 = load i1, ptr @delim, align 1, !dbg !944
  %39 = select i1 %38, i8 0, i8 10, !dbg !944
  %40 = call ptr @readlinebuffer_delim(ptr noundef nonnull %14, ptr noundef nonnull %35, i8 noundef signext %39) #13, !dbg !945
    #dbg_value(ptr %40, !872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !909)
    #dbg_value(ptr %35, !946, !DIExpression(), !952)
  %41 = load i32, ptr %35, align 8, !dbg !955, !tbaa !956
  %42 = and i32 %41, 32, !dbg !961
  %43 = icmp eq i32 %42, 0, !dbg !961
    #dbg_value(i64 1, !887, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !913)
  br i1 %43, label %44, label %73, !dbg !962

44:                                               ; preds = %37
    #dbg_value(i64 2, !887, !DIExpression(), !913)
    #dbg_value(i64 0, !882, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !909)
    #dbg_value(i64 0, !882, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !909)
    #dbg_value(i64 0, !882, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !909)
  %45 = icmp ne ptr %69, null, !dbg !963
  %46 = icmp ne ptr %40, null, !dbg !964
  %47 = select i1 %45, i1 true, i1 %46, !dbg !964
  br i1 %47, label %80, label %225, !dbg !965

48:                                               ; preds = %1
  %49 = getelementptr inbounds nuw i8, ptr %10, i64 1, !dbg !929
  %50 = load i8, ptr %49, align 1, !dbg !929
  %51 = icmp eq i8 %50, 0, !dbg !934
  br i1 %51, label %52, label %54, !dbg !966

52:                                               ; preds = %48
  %53 = load ptr, ptr @stdin, align 8, !dbg !938, !tbaa !488
  br label %56, !dbg !937

54:                                               ; preds = %1, %48
  %55 = call ptr @fopen_safer(ptr noundef nonnull %10, ptr noundef nonnull @.str.72) #13, !dbg !936
  br label %56, !dbg !937

56:                                               ; preds = %54, %52
  %57 = phi ptr [ %53, %52 ], [ %55, %54 ], !dbg !967
    #dbg_value(ptr %57, !880, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !909)
  %58 = icmp eq ptr %57, null, !dbg !968
  br i1 %58, label %59, label %66, !dbg !969

59:                                               ; preds = %34, %56
  %60 = phi i64 [ 0, %56 ], [ 1, %34 ], !dbg !970
  %61 = getelementptr inbounds nuw ptr, ptr %0, i64 %60
  %62 = tail call ptr @__errno_location() #16, !dbg !971
  %63 = load i32, ptr %62, align 4, !dbg !971, !tbaa !473
  %64 = load ptr, ptr %61, align 8, !dbg !972, !tbaa !491
  %65 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %64) #13, !dbg !973
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %63, ptr noundef nonnull @.str.73, ptr noundef %65) #13, !dbg !974
  unreachable, !dbg !974

66:                                               ; preds = %56
  call void @fadvise(ptr noundef nonnull %57, i32 noundef 2) #13, !dbg !943
  %67 = load i1, ptr @delim, align 1, !dbg !944
  %68 = select i1 %67, i8 0, i8 10, !dbg !944
  %69 = call ptr @readlinebuffer_delim(ptr noundef nonnull %2, ptr noundef nonnull %57, i8 noundef signext %68) #13, !dbg !975
    #dbg_value(ptr %69, !872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !909)
    #dbg_value(ptr %57, !946, !DIExpression(), !952)
  %70 = load i32, ptr %57, align 8, !dbg !955, !tbaa !956
  %71 = and i32 %70, 32, !dbg !976
  %72 = icmp eq i32 %71, 0, !dbg !976
    #dbg_value(i64 0, !887, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !913)
  br i1 %72, label %13, label %73, !dbg !977

73:                                               ; preds = %37, %66
  %74 = phi i64 [ 0, %66 ], [ 1, %37 ], !dbg !970
  %75 = getelementptr inbounds nuw ptr, ptr %0, i64 %74
  %76 = tail call ptr @__errno_location() #16, !dbg !978
  %77 = load i32, ptr %76, align 4, !dbg !978, !tbaa !473
  %78 = load ptr, ptr %75, align 8, !dbg !979, !tbaa !491
  %79 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %78) #13, !dbg !980
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %77, ptr noundef nonnull @.str.73, ptr noundef %79) #13, !dbg !981
  unreachable, !dbg !981

80:                                               ; preds = %44, %212
  %81 = phi ptr [ %219, %212 ], [ %40, %44 ], !dbg !909
  %82 = phi ptr [ %215, %212 ], [ %69, %44 ], !dbg !909
  %83 = phi i32 [ %220, %212 ], [ 0, %44 ], !dbg !909
  %84 = phi i32 [ %221, %212 ], [ 0, %44 ], !dbg !909
  %85 = phi i32 [ %214, %212 ], [ 0, %44 ], !dbg !909
  %86 = phi i32 [ %213, %212 ], [ 0, %44 ], !dbg !909
  %87 = phi i64 [ %218, %212 ], [ 0, %44 ]
  %88 = phi i64 [ %217, %212 ], [ 0, %44 ]
  %89 = phi i64 [ %216, %212 ], [ 0, %44 ]
    #dbg_value(i32 %86, !877, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !909)
    #dbg_value(i32 %85, !877, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !909)
    #dbg_value(i32 %84, !877, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !909)
    #dbg_value(i32 %83, !877, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !909)
    #dbg_value(ptr %82, !872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !909)
    #dbg_value(ptr %81, !872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !909)
    #dbg_value(i64 %87, !882, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !909)
    #dbg_value(i64 %88, !882, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !909)
    #dbg_value(i64 %89, !882, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !909)
    #dbg_value(i8 0, !895, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !982)
    #dbg_value(i8 0, !895, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !982)
  %90 = icmp eq ptr %82, null, !dbg !983
  br i1 %90, label %91, label %92, !dbg !984

91:                                               ; preds = %80
  store i1 true, ptr @seen_unpairable, align 1, !dbg !985
  br label %135, !dbg !988

92:                                               ; preds = %80
  %93 = icmp eq ptr %81, null, !dbg !990
  br i1 %93, label %94, label %95, !dbg !991

94:                                               ; preds = %92
  store i1 true, ptr @seen_unpairable, align 1, !dbg !992
  br label %133, !dbg !993

95:                                               ; preds = %92
  %96 = load i8, ptr @hard_LC_COLLATE, align 1, !dbg !994, !tbaa !723, !range !995, !noundef !996
  %97 = trunc nuw i8 %96 to i1, !dbg !997
  br i1 %97, label %98, label %110, !dbg !998

98:                                               ; preds = %95
  %99 = getelementptr inbounds nuw i8, ptr %82, i64 16, !dbg !999
  %100 = load ptr, ptr %99, align 8, !dbg !999, !tbaa !1000
  %101 = getelementptr inbounds nuw i8, ptr %82, i64 8, !dbg !1002
  %102 = load i64, ptr %101, align 8, !dbg !1002, !tbaa !1003
  %103 = add nsw i64 %102, -1, !dbg !1004
  %104 = getelementptr inbounds nuw i8, ptr %81, i64 16, !dbg !1005
  %105 = load ptr, ptr %104, align 8, !dbg !1005, !tbaa !1000
  %106 = getelementptr inbounds nuw i8, ptr %81, i64 8, !dbg !1006
  %107 = load i64, ptr %106, align 8, !dbg !1006, !tbaa !1003
  %108 = add nsw i64 %107, -1, !dbg !1007
  %109 = call i32 @xmemcoll(ptr noundef %100, i64 noundef %103, ptr noundef %105, i64 noundef %108) #13, !dbg !1008
    #dbg_value(i32 %109, !893, !DIExpression(), !982)
  br label %125, !dbg !1009

110:                                              ; preds = %95
  %111 = getelementptr inbounds nuw i8, ptr %82, i64 8, !dbg !1010
  %112 = load i64, ptr %111, align 8, !dbg !1010, !tbaa !1003
  %113 = getelementptr inbounds nuw i8, ptr %81, i64 8, !dbg !1011
  %114 = load i64, ptr %113, align 8, !dbg !1011, !tbaa !1003
  %115 = call i64 @llvm.smin.i64(i64 %112, i64 %114), !dbg !1012
  %116 = add nsw i64 %115, -1, !dbg !1013
    #dbg_value(i64 %116, !896, !DIExpression(), !1014)
  %117 = getelementptr inbounds nuw i8, ptr %82, i64 16, !dbg !1015
  %118 = load ptr, ptr %117, align 8, !dbg !1015, !tbaa !1000
  %119 = getelementptr inbounds nuw i8, ptr %81, i64 16, !dbg !1016
  %120 = load ptr, ptr %119, align 8, !dbg !1016, !tbaa !1000
  %121 = call i32 @memcmp(ptr noundef %118, ptr noundef %120, i64 noundef %116) #15, !dbg !1017
    #dbg_value(i32 %121, !893, !DIExpression(), !982)
  %122 = icmp eq i32 %121, 0, !dbg !1018
  br i1 %122, label %123, label %130, !dbg !1020

123:                                              ; preds = %110
  %124 = call i32 @llvm.scmp.i32.i64(i64 %112, i64 %114), !dbg !1021
    #dbg_value(i32 %124, !893, !DIExpression(), !982)
  br label %125, !dbg !1022

125:                                              ; preds = %123, %98
  %126 = phi i32 [ %109, %98 ], [ %124, %123 ], !dbg !1023
    #dbg_value(i32 %126, !893, !DIExpression(), !982)
  %127 = icmp eq i32 %126, 0, !dbg !1024
  br i1 %127, label %128, label %130, !dbg !1025

128:                                              ; preds = %125
  %129 = add i64 %89, 1, !dbg !1026
    #dbg_value(i64 %129, !882, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !909)
  call fastcc void @writeline(ptr noundef nonnull %81, i32 noundef 3), !dbg !1028
    #dbg_value(i64 %87, !882, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !909)
    #dbg_value(i64 %88, !882, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !909)
    #dbg_value(i64 %129, !882, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !909)
    #dbg_value(i8 1, !895, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !982)
  br label %137, !dbg !1029

130:                                              ; preds = %110, %125
  %131 = phi i32 [ %126, %125 ], [ %121, %110 ]
  store i1 true, ptr @seen_unpairable, align 1, !dbg !1031
  %132 = icmp slt i32 %131, 1, !dbg !1032
  br i1 %132, label %133, label %135, !dbg !1033

133:                                              ; preds = %130, %94
  %134 = add i64 %87, 1, !dbg !1034
    #dbg_value(i64 %134, !882, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !909)
  call fastcc void @writeline(ptr noundef nonnull %82, i32 noundef 1), !dbg !1036
    #dbg_value(i64 %88, !882, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !909)
    #dbg_value(i64 %89, !882, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !909)
  br label %137, !dbg !1037

135:                                              ; preds = %91, %130
  %136 = add i64 %88, 1, !dbg !1038
    #dbg_value(i64 %136, !882, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !909)
  call fastcc void @writeline(ptr noundef %81, i32 noundef 2), !dbg !1040
    #dbg_value(i64 %87, !882, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !909)
    #dbg_value(i64 %136, !882, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !909)
    #dbg_value(i64 %89, !882, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !909)
    #dbg_value(i8 poison, !895, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !982)
    #dbg_value(i8 poison, !895, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !982)
    #dbg_value(i32 %86, !877, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !909)
    #dbg_value(i32 %85, !877, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !909)
    #dbg_value(ptr %82, !872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !909)
    #dbg_value(i64 1, !902, !DIExpression(), !1041)
  br label %177, !dbg !1042

137:                                              ; preds = %128, %133
  %138 = phi i1 [ true, %128 ], [ false, %133 ]
  %139 = phi i64 [ %129, %128 ], [ %89, %133 ]
  %140 = phi i64 [ %87, %128 ], [ %134, %133 ]
    #dbg_value(i8 poison, !895, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !982)
    #dbg_value(i8 poison, !895, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !982)
    #dbg_value(i64 0, !902, !DIExpression(), !1041)
    #dbg_value(i32 %85, !877, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !909)
    #dbg_value(i32 %86, !877, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !909)
  %141 = add nuw nsw i32 %86, 1, !dbg !1045
  %142 = and i32 %141, 3, !dbg !1047
    #dbg_value(i32 %142, !877, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !909)
  %143 = zext nneg i32 %142 to i64, !dbg !1048
  %144 = getelementptr inbounds nuw ptr, ptr %3, i64 %143, !dbg !1048
  %145 = load ptr, ptr %144, align 8, !dbg !1048, !tbaa !919
  %146 = load i1, ptr @delim, align 1, !dbg !1049
  %147 = select i1 %146, i8 0, i8 10, !dbg !1049
  %148 = call ptr @readlinebuffer_delim(ptr noundef %145, ptr noundef nonnull %57, i8 noundef signext %147) #13, !dbg !1050
    #dbg_value(ptr %148, !872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !909)
  %149 = icmp eq ptr %148, null, !dbg !1051
  br i1 %149, label %154, label %150, !dbg !1053

150:                                              ; preds = %137
  %151 = zext nneg i32 %86 to i64, !dbg !1054
  %152 = getelementptr inbounds nuw ptr, ptr %3, i64 %151, !dbg !1054
  %153 = load ptr, ptr %152, align 8, !dbg !1054, !tbaa !919
  call fastcc void @check_order(ptr noundef %153, ptr noundef nonnull %148, i32 noundef 1), !dbg !1055
  br label %165, !dbg !1055

154:                                              ; preds = %137
  %155 = sext i32 %85 to i64, !dbg !1056
  %156 = getelementptr inbounds ptr, ptr %3, i64 %155, !dbg !1056
  %157 = load ptr, ptr %156, align 8, !dbg !1056, !tbaa !919
  %158 = getelementptr inbounds nuw i8, ptr %157, i64 16, !dbg !1058
  %159 = load ptr, ptr %158, align 8, !dbg !1058, !tbaa !1000
  %160 = icmp eq ptr %159, null, !dbg !1059
  br i1 %160, label %165, label %161, !dbg !1060

161:                                              ; preds = %154
  %162 = zext nneg i32 %86 to i64, !dbg !1061
  %163 = getelementptr inbounds nuw ptr, ptr %3, i64 %162, !dbg !1061
  %164 = load ptr, ptr %163, align 8, !dbg !1061, !tbaa !919
  call fastcc void @check_order(ptr noundef nonnull %157, ptr noundef %164, i32 noundef 1), !dbg !1062
  br label %165, !dbg !1062

165:                                              ; preds = %154, %161, %150
    #dbg_value(ptr %57, !946, !DIExpression(), !1063)
  %166 = load i32, ptr %57, align 8, !dbg !1066, !tbaa !956
  %167 = and i32 %166, 32, !dbg !1067
  %168 = icmp eq i32 %167, 0, !dbg !1067
  br i1 %168, label %176, label %169, !dbg !1068

169:                                              ; preds = %208, %165
  %170 = phi i64 [ 0, %165 ], [ 1, %208 ], !dbg !1069
  %171 = tail call ptr @__errno_location() #16, !dbg !1070
  %172 = load i32, ptr %171, align 4, !dbg !1070, !tbaa !473
  %173 = getelementptr inbounds nuw ptr, ptr %0, i64 %170, !dbg !1071
  %174 = load ptr, ptr %173, align 8, !dbg !1071, !tbaa !491
  %175 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %174) #13, !dbg !1072
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %172, ptr noundef nonnull @.str.73, ptr noundef %175) #13, !dbg !1073
  unreachable, !dbg !1073

176:                                              ; preds = %165
    #dbg_value(i32 %142, !877, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !909)
    #dbg_value(i32 %86, !877, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !909)
    #dbg_value(ptr %148, !872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !909)
    #dbg_value(i64 1, !902, !DIExpression(), !1041)
  br i1 %138, label %177, label %212, !dbg !1042

177:                                              ; preds = %135, %176
  %178 = phi i32 [ %86, %135 ], [ %142, %176 ]
  %179 = phi i32 [ %85, %135 ], [ %86, %176 ]
  %180 = phi ptr [ %82, %135 ], [ %148, %176 ]
  %181 = phi i64 [ %89, %135 ], [ %139, %176 ]
  %182 = phi i64 [ %136, %135 ], [ %88, %176 ]
  %183 = phi i64 [ %87, %135 ], [ %140, %176 ]
    #dbg_value(i32 %83, !877, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !909)
    #dbg_value(i32 %84, !877, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !909)
  %184 = add nuw nsw i32 %84, 1, !dbg !1045
  %185 = and i32 %184, 3, !dbg !1074
    #dbg_value(i32 %185, !877, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !909)
  %186 = zext nneg i32 %185 to i64, !dbg !1048
  %187 = getelementptr inbounds nuw ptr, ptr %15, i64 %186, !dbg !1048
  %188 = load ptr, ptr %187, align 8, !dbg !1048, !tbaa !919
  %189 = load i1, ptr @delim, align 1, !dbg !1049
  %190 = select i1 %189, i8 0, i8 10, !dbg !1049
  %191 = call ptr @readlinebuffer_delim(ptr noundef %188, ptr noundef nonnull %35, i8 noundef signext %190) #13, !dbg !1075
    #dbg_value(ptr %191, !872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !909)
  %192 = icmp eq ptr %191, null, !dbg !1076
  br i1 %192, label %197, label %193, !dbg !1077

193:                                              ; preds = %177
  %194 = zext nneg i32 %84 to i64, !dbg !1054
  %195 = getelementptr inbounds nuw ptr, ptr %15, i64 %194, !dbg !1054
  %196 = load ptr, ptr %195, align 8, !dbg !1054, !tbaa !919
  call fastcc void @check_order(ptr noundef %196, ptr noundef nonnull %191, i32 noundef 2), !dbg !1055
  br label %208, !dbg !1055

197:                                              ; preds = %177
  %198 = sext i32 %83 to i64, !dbg !1056
  %199 = getelementptr inbounds ptr, ptr %15, i64 %198, !dbg !1056
  %200 = load ptr, ptr %199, align 8, !dbg !1056, !tbaa !919
  %201 = getelementptr inbounds nuw i8, ptr %200, i64 16, !dbg !1058
  %202 = load ptr, ptr %201, align 8, !dbg !1058, !tbaa !1000
  %203 = icmp eq ptr %202, null, !dbg !1078
  br i1 %203, label %208, label %204, !dbg !1079

204:                                              ; preds = %197
  %205 = zext nneg i32 %84 to i64, !dbg !1061
  %206 = getelementptr inbounds nuw ptr, ptr %15, i64 %205, !dbg !1061
  %207 = load ptr, ptr %206, align 8, !dbg !1061, !tbaa !919
  call fastcc void @check_order(ptr noundef nonnull %200, ptr noundef %207, i32 noundef 2), !dbg !1062
  br label %208, !dbg !1062

208:                                              ; preds = %204, %197, %193
    #dbg_value(ptr %35, !946, !DIExpression(), !1063)
  %209 = load i32, ptr %35, align 8, !dbg !1066, !tbaa !956
  %210 = and i32 %209, 32, !dbg !1080
  %211 = icmp eq i32 %210, 0, !dbg !1080
  br i1 %211, label %212, label %169, !dbg !1081

212:                                              ; preds = %208, %176
  %213 = phi i32 [ %142, %176 ], [ %178, %208 ]
  %214 = phi i32 [ %86, %176 ], [ %179, %208 ]
  %215 = phi ptr [ %148, %176 ], [ %180, %208 ]
  %216 = phi i64 [ %139, %176 ], [ %181, %208 ]
  %217 = phi i64 [ %88, %176 ], [ %182, %208 ]
  %218 = phi i64 [ %140, %176 ], [ %183, %208 ]
  %219 = phi ptr [ %81, %176 ], [ %191, %208 ], !dbg !909
  %220 = phi i32 [ %83, %176 ], [ %84, %208 ], !dbg !909
  %221 = phi i32 [ %84, %176 ], [ %185, %208 ], !dbg !909
    #dbg_value(i32 %221, !877, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !909)
    #dbg_value(i32 %220, !877, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !909)
    #dbg_value(ptr %219, !872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !909)
    #dbg_value(i64 2, !902, !DIExpression(), !1041)
    #dbg_value(i64 %218, !882, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !909)
    #dbg_value(i64 %217, !882, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !909)
    #dbg_value(i64 %216, !882, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !909)
  %222 = icmp ne ptr %215, null, !dbg !1082
  %223 = icmp ne ptr %219, null, !dbg !1083
  %224 = select i1 %222, i1 true, i1 %223, !dbg !1083
  br i1 %224, label %80, label %225, !dbg !1084, !llvm.loop !1085

225:                                              ; preds = %212, %44
  %226 = phi i64 [ 0, %44 ], [ %216, %212 ], !dbg !909
  %227 = phi i64 [ 0, %44 ], [ %217, %212 ], !dbg !1088
  %228 = phi i64 [ 0, %44 ], [ %218, %212 ], !dbg !1088
  %229 = icmp eq ptr %57, %35, !dbg !1089
    #dbg_value(i32 poison, !904, !DIExpression(), !909)
    #dbg_value(i32 0, !906, !DIExpression(), !1090)
    #dbg_value(i64 0, !906, !DIExpression(), !1090)
  %230 = call i32 @rpl_fclose(ptr noundef nonnull %57) #13, !dbg !1091
  %231 = icmp eq i32 %230, 0, !dbg !1094
    #dbg_value(i64 0, !906, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1090)
  br i1 %231, label %232, label %238, !dbg !1095

232:                                              ; preds = %225
    #dbg_value(i64 0, !906, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1090)
  br i1 %229, label %233, label %235, !dbg !1096

233:                                              ; preds = %235, %232
  %234 = load i1, ptr @total_option, align 1, !dbg !1097
  br i1 %234, label %245, label %261, !dbg !1099

235:                                              ; preds = %232
    #dbg_value(i64 1, !906, !DIExpression(), !1090)
  %236 = call i32 @rpl_fclose(ptr noundef nonnull %35) #13, !dbg !1091
  %237 = icmp eq i32 %236, 0, !dbg !1100
    #dbg_value(i64 1, !906, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1090)
  br i1 %237, label %233, label %238, !dbg !1101

238:                                              ; preds = %235, %225
  %239 = phi i64 [ 0, %225 ], [ 1, %235 ]
  %240 = tail call ptr @__errno_location() #16, !dbg !1102
  %241 = load i32, ptr %240, align 4, !dbg !1102, !tbaa !473
  %242 = getelementptr inbounds nuw ptr, ptr %0, i64 %239, !dbg !1103
  %243 = load ptr, ptr %242, align 8, !dbg !1103, !tbaa !491
  %244 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %243) #13, !dbg !1104
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %241, ptr noundef nonnull @.str.73, ptr noundef %244) #13, !dbg !1105
  unreachable, !dbg !1105

245:                                              ; preds = %233
  %246 = load i64, ptr @col_sep_len, align 8, !dbg !1106, !tbaa !744
  %247 = icmp eq i64 %246, 1, !dbg !1109
  %248 = load ptr, ptr @col_sep, align 8, !dbg !1110, !tbaa !491
  br i1 %247, label %249, label %256, !dbg !1111

249:                                              ; preds = %245
  %250 = load i8, ptr %248, align 1, !dbg !1112, !tbaa !583
  %251 = sext i8 %250 to i32, !dbg !1112
  %252 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #13, !dbg !1114
  %253 = load i1, ptr @delim, align 1, !dbg !1115
  %254 = select i1 %253, i32 0, i32 10, !dbg !1115
  %255 = call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str.74, i64 noundef %228, i32 noundef %251, i64 noundef %227, i32 noundef %251, i64 noundef %226, i32 noundef %251, ptr noundef %252, i32 noundef %254) #13, !dbg !1116
  br label %261, !dbg !1117

256:                                              ; preds = %245
  %257 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #13, !dbg !1118
  %258 = load i1, ptr @delim, align 1, !dbg !1120
  %259 = select i1 %258, i32 0, i32 10, !dbg !1120
  %260 = call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str.75, i64 noundef %228, ptr noundef %248, i64 noundef %227, ptr noundef %248, i64 noundef %226, ptr noundef %248, ptr noundef %257, i32 noundef %259) #13, !dbg !1121
  br label %261

261:                                              ; preds = %249, %256, %233
  %262 = load i8, ptr @issued_disorder_warning, align 1, !dbg !1122, !tbaa !723, !range !995, !noundef !996
  %263 = trunc nuw i8 %262 to i1, !dbg !1124
  %264 = load i8, ptr getelementptr inbounds nuw (i8, ptr @issued_disorder_warning, i64 1), align 1, !range !995
  %265 = trunc nuw i8 %264 to i1
  %266 = select i1 %263, i1 true, i1 %265, !dbg !1125
  br i1 %266, label %267, label %269, !dbg !1125

267:                                              ; preds = %261
  %268 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.76, i32 noundef 5) #13, !dbg !1126
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %268) #13, !dbg !1127
  unreachable, !dbg !1127

269:                                              ; preds = %261
  call void @exit(i32 noundef 0) #14, !dbg !1128
  unreachable, !dbg !1128
}

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1129 noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1130 i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1133 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1136 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1142 i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !1143 noundef i64 @fwrite_unlocked(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1149 i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

declare !dbg !1152 void @emit_bug_reporting_address() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1153 i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare !dbg !1156 void @initbuffer(ptr noundef) local_unnamed_addr #1

declare !dbg !1159 ptr @fopen_safer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1163 ptr @__errno_location() local_unnamed_addr #9

declare !dbg !1167 ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1170 void @fadvise(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !1174 ptr @readlinebuffer_delim(ptr noundef, ptr noundef, i8 noundef signext) local_unnamed_addr #1

declare !dbg !1177 i32 @xmemcoll(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1182 i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @writeline(ptr noundef readonly captures(none) %0, i32 noundef range(i32 1, 4) %1) unnamed_addr #10 !dbg !1185 {
    #dbg_value(ptr %0, !1191, !DIExpression(), !1213)
    #dbg_value(i32 %1, !1192, !DIExpression(), !1213)
  switch i32 %1, label %20 [
    i32 1, label %3
    i32 2, label %5
    i32 3, label %9
  ], !dbg !1214

3:                                                ; preds = %2
  %4 = load i1, ptr @only_file_1, align 1, !dbg !1215
  br i1 %4, label %45, label %26, !dbg !1217

5:                                                ; preds = %2
  %6 = load i1, ptr @only_file_2, align 1, !dbg !1218
  br i1 %6, label %45, label %7, !dbg !1220

7:                                                ; preds = %5
  %8 = load i1, ptr @only_file_1, align 1, !dbg !1221
  br i1 %8, label %26, label %21, !dbg !1222

9:                                                ; preds = %2
  %10 = load i1, ptr @both, align 1, !dbg !1223
  br i1 %10, label %45, label %11, !dbg !1225

11:                                               ; preds = %9
  %12 = load i1, ptr @only_file_1, align 1, !dbg !1226
  br i1 %12, label %18, label %13, !dbg !1227

13:                                               ; preds = %11
  %14 = load i64, ptr @col_sep_len, align 8, !dbg !1228, !tbaa !744
  %15 = load ptr, ptr @col_sep, align 8, !dbg !1229, !tbaa !491
  %16 = load ptr, ptr @stdout, align 8, !dbg !1230, !tbaa !488
  %17 = tail call i64 @fwrite_unlocked(ptr noundef %15, i64 noundef 1, i64 noundef %14, ptr noundef %16), !dbg !1231
  br label %18, !dbg !1231

18:                                               ; preds = %13, %11
  %19 = load i1, ptr @only_file_2, align 1, !dbg !1232
  br i1 %19, label %26, label %21, !dbg !1233

20:                                               ; preds = %2
  unreachable

21:                                               ; preds = %18, %7
  %22 = load i64, ptr @col_sep_len, align 8, !dbg !1234, !tbaa !744
  %23 = load ptr, ptr @col_sep, align 8, !dbg !1234, !tbaa !491
  %24 = load ptr, ptr @stdout, align 8, !dbg !1234, !tbaa !488
  %25 = tail call i64 @fwrite_unlocked(ptr noundef %23, i64 noundef 1, i64 noundef %22, ptr noundef %24), !dbg !1234
  br label %26, !dbg !1235

26:                                               ; preds = %21, %18, %7, %3
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1235
  %28 = load i64, ptr %27, align 8, !dbg !1235, !tbaa !1003
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1236
  %30 = load ptr, ptr %29, align 8, !dbg !1236, !tbaa !1000
  %31 = load ptr, ptr @stdout, align 8, !dbg !1237, !tbaa !488
  %32 = tail call i64 @fwrite_unlocked(ptr noundef %30, i64 noundef 1, i64 noundef %28, ptr noundef %31), !dbg !1238
  %33 = load ptr, ptr @stdout, align 8, !dbg !1239, !tbaa !488
    #dbg_value(ptr %33, !946, !DIExpression(), !1241)
  %34 = load i32, ptr %33, align 8, !dbg !1243, !tbaa !956
  %35 = and i32 %34, 32, !dbg !1244
  %36 = icmp eq i32 %35, 0, !dbg !1244
  br i1 %36, label %45, label %37, !dbg !1245

37:                                               ; preds = %26
  %38 = tail call ptr @__errno_location() #16, !dbg !1246
  %39 = load i32, ptr %38, align 4, !dbg !1251, !tbaa !473
    #dbg_value(i32 %39, !1249, !DIExpression(), !1252)
  %40 = tail call i32 @fflush_unlocked(ptr noundef nonnull %33) #13, !dbg !1253
  %41 = load ptr, ptr @stdout, align 8, !dbg !1254, !tbaa !488
  %42 = tail call i32 @fpurge(ptr noundef %41) #13, !dbg !1255
  %43 = load ptr, ptr @stdout, align 8, !dbg !1256, !tbaa !488
  tail call void @clearerr_unlocked(ptr noundef %43) #13, !dbg !1257
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #13, !dbg !1258
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %39, ptr noundef %44) #13, !dbg !1259
  unreachable, !dbg !1259

45:                                               ; preds = %9, %5, %3, %26
  ret void, !dbg !1260
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_order(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef range(i32 1, 3) %2) unnamed_addr #10 !dbg !1261 {
    #dbg_value(ptr %0, !1265, !DIExpression(), !1277)
    #dbg_value(ptr %1, !1266, !DIExpression(), !1277)
    #dbg_value(i32 %2, !1267, !DIExpression(), !1277)
  %4 = load i32, ptr @check_input_order, align 4, !dbg !1278, !tbaa !473
  %5 = icmp eq i32 %4, 2, !dbg !1279
  br i1 %5, label %41, label %6, !dbg !1280

6:                                                ; preds = %3
  %7 = icmp eq i32 %4, 1, !dbg !1281
  %8 = load i1, ptr @seen_unpairable, align 1
  %9 = select i1 %7, i1 true, i1 %8, !dbg !1282
  br i1 %9, label %10, label %41, !dbg !1282

10:                                               ; preds = %6
  %11 = zext nneg i32 %2 to i64, !dbg !1283
  %12 = getelementptr i8, ptr @issued_disorder_warning, i64 %11, !dbg !1283
  %13 = getelementptr i8, ptr %12, i64 -1, !dbg !1283
  %14 = load i8, ptr %13, align 1, !dbg !1284, !tbaa !723, !range !995, !noundef !996
  %15 = trunc nuw i8 %14 to i1, !dbg !1285
  br i1 %15, label %41, label %16, !dbg !1286

16:                                               ; preds = %10
  %17 = load i8, ptr @hard_LC_COLLATE, align 1, !dbg !1287, !tbaa !723, !range !995, !noundef !996
  %18 = trunc nuw i8 %17 to i1, !dbg !1289
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1290
  %20 = load ptr, ptr %19, align 8, !dbg !1290, !tbaa !1000
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1290
  %22 = load i64, ptr %21, align 8, !dbg !1290, !tbaa !1003
  %23 = add nsw i64 %22, -1, !dbg !1290
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1290
  %25 = load ptr, ptr %24, align 8, !dbg !1290, !tbaa !1000
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1290
  %27 = load i64, ptr %26, align 8, !dbg !1290, !tbaa !1003
  %28 = add nsw i64 %27, -1, !dbg !1290
  br i1 %18, label %29, label %31, !dbg !1291

29:                                               ; preds = %16
  %30 = tail call i32 @xmemcoll(ptr noundef %20, i64 noundef %23, ptr noundef %25, i64 noundef %28) #13, !dbg !1292
    #dbg_value(i32 %30, !1268, !DIExpression(), !1293)
  br label %33, !dbg !1294

31:                                               ; preds = %16
  %32 = tail call i32 @memcmp2(ptr noundef %20, i64 noundef %23, ptr noundef %25, i64 noundef %28) #15, !dbg !1295
    #dbg_value(i32 %32, !1268, !DIExpression(), !1293)
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ], !dbg !1290
    #dbg_value(i32 %34, !1268, !DIExpression(), !1293)
  %35 = icmp sgt i32 %34, 0, !dbg !1296
  br i1 %35, label %36, label %41, !dbg !1297

36:                                               ; preds = %33
  %37 = load i32, ptr @check_input_order, align 4, !dbg !1298, !tbaa !473
  %38 = icmp eq i32 %37, 1, !dbg !1299
  %39 = zext i1 %38 to i32, !dbg !1298
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #13, !dbg !1300
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %39, i32 noundef 0, ptr noundef %40, i32 noundef %2) #13, !dbg !1301
    #dbg_value(i32 %39, !1273, !DIExpression(), !1302)
  store i8 1, ptr %13, align 1, !dbg !1303, !tbaa !723
  br label %41, !dbg !1304

41:                                               ; preds = %33, %36, %10, %6, %3
  ret void, !dbg !1305
}

declare !dbg !1306 i32 @rpl_fclose(ptr noundef) local_unnamed_addr #1

declare !dbg !1307 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #1

declare !dbg !1308 i32 @fpurge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !1309 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !1312 i32 @memcmp2(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { noreturn }

!llvm.dbg.cu = !{!100}
!llvm.module.flags = !{!465, !466, !467, !468, !469, !470, !471}
!llvm.ident = !{!472}
!llvm.errno.tbaa = !{!473}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/comm.c", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "5d98e81f11012a08021fd9d68c7a9896")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 35)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 52)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 49)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 117, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1512, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 189)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 5)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !14, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !14, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 62)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 944, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 118)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 80)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 141, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 65)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 145, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 41)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 149, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 69)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 50)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !38, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 155, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 57)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1248, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 156)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 432, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 1)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 433, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 10)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 433, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 24)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "hard_LC_COLLATE", scope: !100, file: !2, line: 40, type: !205, isLocal: true, isDefinition: true)
!100 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !101, retainedTypes: !158, globals: !168, splitDebugInlining: false, nameTableKind: None)
!101 = !{!102, !109, !114, !120, !135, !149}
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 78, baseType: !103, size: 32, elements: !104)
!103 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!104 = !{!105, !106, !107, !108}
!105 = !DIEnumerator(name: "CHECK_ORDER_OPTION", value: 128)
!106 = !DIEnumerator(name: "NOCHECK_ORDER_OPTION", value: 129)
!107 = !DIEnumerator(name: "OUTPUT_DELIMITER_OPTION", value: 130)
!108 = !DIEnumerator(name: "TOTAL_OPTION", value: 131)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 64, baseType: !103, size: 32, elements: !110)
!110 = !{!111, !112, !113}
!111 = !DIEnumerator(name: "CHECK_ORDER_DEFAULT", value: 0)
!112 = !DIEnumerator(name: "CHECK_ORDER_ENABLED", value: 1)
!113 = !DIEnumerator(name: "CHECK_ORDER_DISABLED", value: 2)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !115, line: 356, baseType: !116, size: 32, elements: !117)
!115 = !DIFile(filename: "src/system.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "6a9c30566098770bfb4561b49834f302")
!116 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!117 = !{!118, !119}
!118 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!119 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !121, line: 46, baseType: !103, size: 32, elements: !122)
!121 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!123 = !DIEnumerator(name: "_ISupper", value: 256)
!124 = !DIEnumerator(name: "_ISlower", value: 512)
!125 = !DIEnumerator(name: "_ISalpha", value: 1024)
!126 = !DIEnumerator(name: "_ISdigit", value: 2048)
!127 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!128 = !DIEnumerator(name: "_ISspace", value: 8192)
!129 = !DIEnumerator(name: "_ISprint", value: 16384)
!130 = !DIEnumerator(name: "_ISgraph", value: 32768)
!131 = !DIEnumerator(name: "_ISblank", value: 1)
!132 = !DIEnumerator(name: "_IScntrl", value: 2)
!133 = !DIEnumerator(name: "_ISpunct", value: 4)
!134 = !DIEnumerator(name: "_ISalnum", value: 8)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !136, line: 42, baseType: !103, size: 32, elements: !137)
!136 = !DIFile(filename: "./lib/quotearg.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148}
!138 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!139 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!140 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!141 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!142 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!143 = !DIEnumerator(name: "c_quoting_style", value: 5)
!144 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!145 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!146 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!147 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!148 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !150, line: 44, baseType: !103, size: 32, elements: !151)
!150 = !DIFile(filename: "./lib/fadvise.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!151 = !{!152, !153, !154, !155, !156, !157}
!152 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!153 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!154 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!155 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!156 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!157 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!158 = !{!159, !160, !116, !161, !162, !165, !167}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!161 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !163, line: 18, baseType: !164)
!163 = !DIFile(filename: "/usr/lib/llvm-22/lib/clang/22/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!164 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!167 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!168 = !{!0, !7, !12, !17, !22, !27, !32, !34, !36, !41, !46, !51, !56, !61, !66, !71, !73, !78, !83, !88, !93, !169, !171, !176, !181, !186, !191, !193, !198, !98, !203, !206, !208, !287, !289, !291, !296, !301, !306, !308, !310, !315, !317, !319, !321, !326, !331, !333, !335, !337, !339, !341, !343, !345, !350, !355, !360, !362, !364, !366, !368, !370, !375, !377, !382, !387, !392, !394, !396, !398, !400, !402, !404, !406, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !447, !449, !451, !456}
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 439, type: !29, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !2, line: 468, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 37)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !2, line: 479, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 14)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !2, line: 479, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 20)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !2, line: 479, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 16)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !2, line: 491, type: !188, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !2, line: 493, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 25)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !2, line: 499, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 17)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "total_option", scope: !100, file: !2, line: 61, type: !205, isLocal: true, isDefinition: true)
!205 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "check_input_order", scope: !100, file: !2, line: 69, type: !109, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !210, file: !115, line: 594, type: !116, isLocal: true, isDefinition: true)
!210 = distinct !DISubprogram(name: "oputs_", scope: !115, file: !115, line: 592, type: !211, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !213, keyInstructions: true)
!211 = !DISubroutineType(cc: DW_CC_nocall, types: !212)
!212 = !{null, !165, !165}
!213 = !{!214, !215, !216, !219, !220, !221, !222, !226, !227, !228, !229, !231, !281, !282, !283, !285, !286}
!214 = !DILocalVariable(name: "program", arg: 1, scope: !210, file: !115, line: 592, type: !165)
!215 = !DILocalVariable(name: "option", arg: 2, scope: !210, file: !115, line: 592, type: !165)
!216 = !DILocalVariable(name: "term", scope: !217, file: !115, line: 604, type: !165)
!217 = distinct !DILexicalBlock(scope: !218, file: !115, line: 601, column: 5)
!218 = distinct !DILexicalBlock(scope: !210, file: !115, line: 600, column: 7)
!219 = !DILocalVariable(name: "double_space", scope: !210, file: !115, line: 613, type: !205)
!220 = !DILocalVariable(name: "first_word", scope: !210, file: !115, line: 614, type: !165)
!221 = !DILocalVariable(name: "option_text", scope: !210, file: !115, line: 615, type: !165)
!222 = !DILocalVariable(name: "s", scope: !223, file: !115, line: 627, type: !165)
!223 = distinct !DILexicalBlock(scope: !224, file: !115, line: 624, column: 5)
!224 = distinct !DILexicalBlock(scope: !225, file: !115, line: 623, column: 12)
!225 = distinct !DILexicalBlock(scope: !210, file: !115, line: 616, column: 7)
!226 = !DILocalVariable(name: "spaces", scope: !223, file: !115, line: 628, type: !162)
!227 = !DILocalVariable(name: "anchor_len", scope: !210, file: !115, line: 639, type: !162)
!228 = !DILocalVariable(name: "desc_text", scope: !210, file: !115, line: 644, type: !165)
!229 = !DILocalVariable(name: "__ptr", scope: !230, file: !115, line: 663, type: !165)
!230 = distinct !DILexicalBlock(scope: !210, file: !115, line: 663, column: 3)
!231 = !DILocalVariable(name: "__stream", scope: !230, file: !115, line: 663, type: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !235)
!234 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !237)
!236 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !253, !255, !256, !257, !261, !262, !264, !265, !268, !270, !273, !276, !277, !278, !279, !280}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !235, file: !236, line: 51, baseType: !116, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !235, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !235, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !235, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !235, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !235, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !235, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !235, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !235, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !235, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !235, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !235, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !235, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !236, line: 36, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !235, file: !236, line: 70, baseType: !254, size: 64, offset: 832)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !235, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !235, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !235, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !259, line: 152, baseType: !260)
!259 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!260 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !235, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !235, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!263 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !235, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !235, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !236, line: 43, baseType: null)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !235, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !259, line: 153, baseType: !260)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !235, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !236, line: 37, flags: DIFlagFwdDecl)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !235, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !236, line: 38, flags: DIFlagFwdDecl)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !235, file: !236, line: 93, baseType: !254, size: 64, offset: 1344)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !235, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !235, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !235, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !235, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!281 = !DILocalVariable(name: "__cnt", scope: !230, file: !115, line: 663, type: !162)
!282 = !DILocalVariable(name: "url_program", scope: !210, file: !115, line: 667, type: !165)
!283 = !DILocalVariable(name: "__ptr", scope: !284, file: !115, line: 705, type: !165)
!284 = distinct !DILexicalBlock(scope: !210, file: !115, line: 705, column: 3)
!285 = !DILocalVariable(name: "__stream", scope: !284, file: !115, line: 705, type: !232)
!286 = !DILocalVariable(name: "__cnt", scope: !284, file: !115, line: 705, type: !162)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !115, line: 604, type: !29, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !115, line: 605, type: !29, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !115, line: 614, type: !293, isLocal: true, isDefinition: true)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 4)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !115, line: 639, type: !298, isLocal: true, isDefinition: true)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 6)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !115, line: 667, type: !303, isLocal: true, isDefinition: true)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 2)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !115, line: 667, type: !29, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !115, line: 668, type: !293, isLocal: true, isDefinition: true)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !115, line: 668, type: !312, isLocal: true, isDefinition: true)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 3)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !115, line: 669, type: !29, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !115, line: 670, type: !298, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !115, line: 670, type: !298, isLocal: true, isDefinition: true)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !115, line: 671, type: !323, isLocal: true, isDefinition: true)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 7)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !115, line: 672, type: !328, isLocal: true, isDefinition: true)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 8)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !115, line: 673, type: !90, isLocal: true, isDefinition: true)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !115, line: 674, type: !90, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !115, line: 675, type: !90, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !115, line: 676, type: !90, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !115, line: 682, type: !323, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !115, line: 683, type: !90, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !115, line: 688, type: !200, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !115, line: 688, type: !347, isLocal: true, isDefinition: true)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 40)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !115, line: 695, type: !352, isLocal: true, isDefinition: true)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 15)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !115, line: 695, type: !357, isLocal: true, isDefinition: true)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 61)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !115, line: 698, type: !312, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !115, line: 702, type: !29, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !115, line: 707, type: !29, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !115, line: 710, type: !328, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !115, line: 858, type: !188, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !115, line: 859, type: !372, isLocal: true, isDefinition: true)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 22)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !115, line: 860, type: !352, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !115, line: 882, type: !379, isLocal: true, isDefinition: true)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 27)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !115, line: 884, type: !384, isLocal: true, isDefinition: true)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 51)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !115, line: 885, type: !389, isLocal: true, isDefinition: true)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 12)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !389, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !178, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !200, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !298, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !188, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !29, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !328, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "long_options", scope: !100, file: !2, line: 86, type: !408, isLocal: true, isDefinition: true)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 2048, elements: !329)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !411, line: 50, size: 256, elements: !412)
!411 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!412 = !{!413, !414, !415, !417}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !410, file: !411, line: 52, baseType: !165, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !410, file: !411, line: 55, baseType: !116, size: 32, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !410, file: !411, line: 56, baseType: !416, size: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !410, file: !411, line: 57, baseType: !116, size: 32, offset: 192)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(name: "only_file_1", scope: !100, file: !2, line: 43, type: !205, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "only_file_2", scope: !100, file: !2, line: 46, type: !205, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(name: "both", scope: !100, file: !2, line: 49, type: !205, isLocal: true, isDefinition: true)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(name: "delim", scope: !100, file: !2, line: 58, type: !167, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "col_sep_len", scope: !100, file: !2, line: 74, type: !162, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !303, isLocal: true, isDefinition: true)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(name: "col_sep", scope: !100, file: !2, line: 73, type: !165, isLocal: true, isDefinition: true)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !303, isLocal: true, isDefinition: true)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !303, isLocal: true, isDefinition: true)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !2, line: 297, type: !312, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !2, line: 402, type: !183, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !2, line: 410, type: !183, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !2, line: 419, type: !444, isLocal: true, isDefinition: true)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 29)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !115, line: 959, type: !389, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(name: "seen_unpairable", scope: !100, file: !2, line: 52, type: !205, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !2, line: 244, type: !453, isLocal: true, isDefinition: true)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 31)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(name: "issued_disorder_warning", scope: !100, file: !2, line: 55, type: !458, isLocal: true, isDefinition: true)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 16, elements: !304)
!459 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!460 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!461 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!462 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!463 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!464 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!465 = !{i32 7, !"Dwarf Version", i32 5}
!466 = !{i32 2, !"Debug Info Version", i32 3}
!467 = !{i32 1, !"wchar_size", i32 4}
!468 = !{i32 8, !"PIC Level", i32 2}
!469 = !{i32 7, !"PIE Level", i32 2}
!470 = !{i32 7, !"uwtable", i32 2}
!471 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!472 = !{!"Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)"}
!473 = !{!474, !474, i64 0}
!474 = !{!"int", !475, i64 0}
!475 = !{!"omnipotent char", !476, i64 0}
!476 = !{!"Simple C/C++ TBAA"}
!477 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 100, type: !478, scopeLine: 101, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !480, keyInstructions: true)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !116}
!480 = !{!481}
!481 = !DILocalVariable(name: "status", arg: 1, scope: !477, file: !2, line: 100, type: !116)
!482 = !DILocation(line: 0, scope: !477)
!483 = !DILocation(line: 102, column: 14, scope: !484, atomGroup: 1, atomRank: 2)
!484 = distinct !DILexicalBlock(scope: !477, file: !2, line: 102, column: 7)
!485 = !DILocation(line: 102, column: 14, scope: !484, atomGroup: 1, atomRank: 1)
!486 = !DILocation(line: 103, column: 5, scope: !487)
!487 = distinct !DILexicalBlock(scope: !484, file: !2, line: 103, column: 5)
!488 = !{!489, !489, i64 0}
!489 = !{!"p1 _ZTS8_IO_FILE", !490, i64 0}
!490 = !{!"any pointer", !475, i64 0}
!491 = !{!492, !492, i64 0}
!492 = !{!"p1 omnipotent char", !490, i64 0}
!493 = !DILocation(line: 106, column: 15, scope: !494)
!494 = distinct !DILexicalBlock(scope: !484, file: !2, line: 105, column: 5)
!495 = !DILocation(line: 109, column: 15, scope: !494)
!496 = !DILocation(line: 106, column: 7, scope: !494)
!497 = !DILocation(line: 110, column: 14, scope: !494)
!498 = !DILocation(line: 112, column: 5, scope: !494)
!499 = !DILocation(line: 110, column: 7, scope: !494)
!500 = !DILocation(line: 113, column: 14, scope: !494)
!501 = !DILocation(line: 116, column: 5, scope: !494)
!502 = !DILocation(line: 113, column: 7, scope: !494)
!503 = !DILocation(line: 117, column: 14, scope: !494)
!504 = !DILocation(line: 122, column: 5, scope: !494)
!505 = !DILocation(line: 117, column: 7, scope: !494)
!506 = !DILocation(line: 123, column: 14, scope: !494)
!507 = !DILocation(line: 123, column: 7, scope: !494)
!508 = !DILocation(line: 126, column: 14, scope: !494)
!509 = !DILocation(line: 126, column: 7, scope: !494)
!510 = !DILocation(line: 129, column: 14, scope: !494)
!511 = !DILocation(line: 129, column: 7, scope: !494)
!512 = !DILocation(line: 132, column: 14, scope: !494)
!513 = !DILocation(line: 132, column: 7, scope: !494)
!514 = !DILocation(line: 137, column: 14, scope: !494)
!515 = !DILocation(line: 137, column: 7, scope: !494)
!516 = !DILocation(line: 141, column: 14, scope: !494)
!517 = !DILocation(line: 141, column: 7, scope: !494)
!518 = !DILocation(line: 145, column: 14, scope: !494)
!519 = !DILocation(line: 145, column: 7, scope: !494)
!520 = !DILocation(line: 149, column: 14, scope: !494)
!521 = !DILocation(line: 149, column: 7, scope: !494)
!522 = !DILocation(line: 153, column: 14, scope: !494)
!523 = !DILocation(line: 153, column: 7, scope: !494)
!524 = !DILocation(line: 154, column: 14, scope: !494)
!525 = !DILocation(line: 154, column: 7, scope: !494)
!526 = !DILocation(line: 155, column: 14, scope: !494)
!527 = !DILocation(line: 158, column: 5, scope: !494)
!528 = !DILocation(line: 155, column: 7, scope: !494)
!529 = !DILocation(line: 159, column: 15, scope: !494)
!530 = !DILocation(line: 165, column: 15, scope: !494)
!531 = !DILocation(line: 159, column: 7, scope: !494)
!532 = !DILocalVariable(name: "program", arg: 1, scope: !533, file: !115, line: 855, type: !165)
!533 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !115, file: !115, line: 855, type: !534, scopeLine: 856, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !536, keyInstructions: true)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !165}
!536 = !{!532, !537, !544, !545, !547}
!537 = !DILocalVariable(name: "infomap", scope: !533, file: !115, line: 857, type: !538)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 896, elements: !324)
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !533, file: !115, line: 857, size: 128, elements: !541)
!541 = !{!542, !543}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !540, file: !115, line: 857, baseType: !165, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !540, file: !115, line: 857, baseType: !165, size: 64, offset: 64)
!544 = !DILocalVariable(name: "node", scope: !533, file: !115, line: 867, type: !165)
!545 = !DILocalVariable(name: "map_prog", scope: !533, file: !115, line: 868, type: !546)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!547 = !DILocalVariable(name: "url_program", scope: !533, file: !115, line: 881, type: !165)
!548 = !DILocation(line: 0, scope: !533, inlinedAt: !549)
!549 = distinct !DILocation(line: 166, column: 7, scope: !494)
!550 = !DILocation(line: 876, column: 3, scope: !533, inlinedAt: !549)
!551 = !DILocation(line: 882, column: 11, scope: !533, inlinedAt: !549)
!552 = !DILocation(line: 882, column: 3, scope: !533, inlinedAt: !549)
!553 = !DILocation(line: 884, column: 11, scope: !533, inlinedAt: !549)
!554 = !DILocation(line: 884, column: 3, scope: !533, inlinedAt: !549)
!555 = !DILocation(line: 168, column: 3, scope: !477)
!556 = !DISubprogram(name: "__fprintf_chk", scope: !557, file: !557, line: 93, type: !558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!557 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!558 = !DISubroutineType(types: !559)
!559 = !{!116, !560, !116, !561, null}
!560 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !232)
!561 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !165)
!562 = !DISubprogram(name: "dcgettext", scope: !563, file: !563, line: 51, type: !564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!563 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!564 = !DISubroutineType(types: !565)
!565 = !{!159, !165, !165, !116}
!566 = !DISubprogram(name: "__printf__", linkageName: "rpl_printf", scope: !567, file: !567, line: 1944, type: !568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!567 = !DIFile(filename: "./lib/stdio.h", directory: "/workspaces/Thesis/.build/coreutils")
!568 = !DISubroutineType(types: !569)
!569 = !{!116, !561, null}
!570 = !DISubprogram(name: "fputs_unlocked", scope: !571, file: !571, line: 691, type: !572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!571 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!572 = !DISubroutineType(types: !573)
!573 = !{!116, !561, !560}
!574 = !DILocation(line: 0, scope: !210)
!575 = !DILocation(line: 600, column: 7, scope: !218)
!576 = !DILocation(line: 600, column: 19, scope: !218, atomGroup: 1, atomRank: 2)
!577 = !DILocation(line: 600, column: 19, scope: !218, atomGroup: 1, atomRank: 1)
!578 = !DILocation(line: 604, column: 26, scope: !217, atomGroup: 2, atomRank: 2)
!579 = !DILocation(line: 0, scope: !217)
!580 = !DILocation(line: 605, column: 23, scope: !217, atomGroup: 4, atomRank: 2)
!581 = !DILocation(line: 605, column: 28, scope: !217, atomGroup: 4, atomRank: 1)
!582 = !DILocation(line: 605, column: 32, scope: !217)
!583 = !{!475, !475, i64 0}
!584 = !DILocation(line: 605, column: 32, scope: !217, atomGroup: 5, atomRank: 2)
!585 = !DILocation(line: 605, column: 38, scope: !217, atomGroup: 5, atomRank: 1)
!586 = !DILocalVariable(name: "__s1", arg: 1, scope: !587, file: !588, line: 1368, type: !165)
!587 = distinct !DISubprogram(name: "streq", scope: !588, file: !588, line: 1368, type: !589, scopeLine: 1369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !591, keyInstructions: true)
!588 = !DIFile(filename: "./lib/string.h", directory: "/workspaces/Thesis/.build/coreutils")
!589 = !DISubroutineType(types: !590)
!590 = !{!205, !165, !165}
!591 = !{!586, !592}
!592 = !DILocalVariable(name: "__s2", arg: 2, scope: !587, file: !588, line: 1368, type: !165)
!593 = !DILocation(line: 0, scope: !587, inlinedAt: !594)
!594 = distinct !DILocation(line: 605, column: 41, scope: !217)
!595 = !DILocation(line: 1370, column: 11, scope: !587, inlinedAt: !594)
!596 = !DILocation(line: 1370, column: 10, scope: !587, inlinedAt: !594)
!597 = !DILocation(line: 605, column: 38, scope: !217, atomGroup: 3, atomRank: 2)
!598 = !DILocation(line: 605, column: 38, scope: !217)
!599 = !DILocation(line: 605, column: 19, scope: !217, atomGroup: 3, atomRank: 1)
!600 = !DILocation(line: 606, column: 5, scope: !217)
!601 = !DILocation(line: 607, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !210, file: !115, line: 607, column: 7)
!603 = !DILocation(line: 607, column: 7, scope: !602, atomGroup: 6, atomRank: 2)
!604 = !DILocation(line: 607, column: 7, scope: !602, atomGroup: 6, atomRank: 1)
!605 = !DILocation(line: 614, column: 37, scope: !210)
!606 = !DILocation(line: 614, column: 35, scope: !210, atomGroup: 9, atomRank: 2)
!607 = !DILocation(line: 615, column: 29, scope: !210, atomGroup: 10, atomRank: 2)
!608 = !DILocation(line: 616, column: 8, scope: !225, atomGroup: 11, atomRank: 2)
!609 = !DILocation(line: 616, column: 7, scope: !225, atomGroup: 11, atomRank: 1)
!610 = !DILocation(line: 0, scope: !223)
!611 = !DILocation(line: 623, column: 24, scope: !224, atomGroup: 14, atomRank: 1)
!612 = !{!613, !613, i64 0}
!613 = !{!"p1 short", !490, i64 0}
!614 = !DILocation(line: 629, column: 7, scope: !223, atomGroup: 98, atomRank: 1)
!615 = !DILocation(line: 630, column: 32, scope: !223, atomGroup: 20, atomRank: 2)
!616 = !DILocation(line: 630, column: 30, scope: !223)
!617 = !DILocation(line: 630, column: 21, scope: !223)
!618 = !{!619, !619, i64 0}
!619 = !{!"short", !475, i64 0}
!620 = !DILocation(line: 630, column: 19, scope: !223)
!621 = !DILocation(line: 630, column: 16, scope: !223, atomGroup: 19, atomRank: 2)
!622 = !DILocation(line: 629, column: 16, scope: !223, atomGroup: 17, atomRank: 2)
!623 = !DILocation(line: 629, column: 30, scope: !223, atomGroup: 17, atomRank: 1)
!624 = !DILocation(line: 629, column: 7, scope: !223, atomGroup: 18, atomRank: 1)
!625 = distinct !{!625, !626, !617, !627}
!626 = !DILocation(line: 629, column: 7, scope: !223)
!627 = !{!"llvm.loop.mustprogress"}
!628 = !DILocation(line: 631, column: 18, scope: !629, atomGroup: 21, atomRank: 2)
!629 = distinct !DILexicalBlock(scope: !223, file: !115, line: 631, column: 11)
!630 = !DILocation(line: 631, column: 18, scope: !629)
!631 = !DILocation(line: 639, column: 23, scope: !210, atomGroup: 24, atomRank: 2)
!632 = !DILocation(line: 644, column: 39, scope: !210, atomGroup: 25, atomRank: 2)
!633 = !DILocation(line: 645, column: 3, scope: !210)
!634 = !DILocation(line: 645, column: 10, scope: !210)
!635 = !DILocation(line: 645, column: 21, scope: !210, atomGroup: 26, atomRank: 1)
!636 = !DILocation(line: 647, column: 32, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !115, line: 647, column: 11)
!638 = distinct !DILexicalBlock(scope: !210, file: !115, line: 646, column: 5)
!639 = !DILocation(line: 647, column: 49, scope: !637, atomGroup: 29, atomRank: 2)
!640 = !DILocation(line: 647, column: 29, scope: !637, atomGroup: 29, atomRank: 1)
!641 = !DILocation(line: 649, column: 11, scope: !642)
!642 = distinct !DILexicalBlock(scope: !638, file: !115, line: 649, column: 11)
!643 = !DILocation(line: 649, column: 11, scope: !642, atomGroup: 31, atomRank: 2)
!644 = !DILocation(line: 649, column: 11, scope: !642, atomGroup: 31, atomRank: 1)
!645 = !DILocation(line: 651, column: 26, scope: !646, atomGroup: 32, atomRank: 2)
!646 = distinct !DILexicalBlock(scope: !647, file: !115, line: 651, column: 15)
!647 = distinct !DILexicalBlock(scope: !642, file: !115, line: 650, column: 9)
!648 = !DILocation(line: 651, column: 34, scope: !646, atomGroup: 32, atomRank: 1)
!649 = !DILocation(line: 651, column: 46, scope: !646)
!650 = !DILocation(line: 651, column: 37, scope: !646)
!651 = !DILocation(line: 651, column: 37, scope: !646, atomGroup: 33, atomRank: 2)
!652 = !DILocation(line: 651, column: 34, scope: !646, atomGroup: 33, atomRank: 1)
!653 = !DILocation(line: 659, column: 16, scope: !638, atomGroup: 38, atomRank: 2)
!654 = distinct !{!654, !633, !655, !627}
!655 = !DILocation(line: 660, column: 5, scope: !210)
!656 = !DILocation(line: 663, column: 33, scope: !210)
!657 = !DILocation(line: 663, column: 43, scope: !210)
!658 = !DILocation(line: 663, column: 3, scope: !210)
!659 = !DILocation(line: 0, scope: !587, inlinedAt: !660)
!660 = distinct !DILocation(line: 667, column: 31, scope: !210)
!661 = !DILocation(line: 0, scope: !587, inlinedAt: !662)
!662 = distinct !DILocation(line: 668, column: 31, scope: !210)
!663 = !DILocation(line: 0, scope: !587, inlinedAt: !664)
!664 = distinct !DILocation(line: 669, column: 31, scope: !210)
!665 = !DILocation(line: 0, scope: !587, inlinedAt: !666)
!666 = distinct !DILocation(line: 670, column: 31, scope: !210)
!667 = !DILocation(line: 0, scope: !587, inlinedAt: !668)
!668 = distinct !DILocation(line: 671, column: 31, scope: !210)
!669 = !DILocation(line: 0, scope: !587, inlinedAt: !670)
!670 = distinct !DILocation(line: 672, column: 31, scope: !210)
!671 = !DILocation(line: 0, scope: !587, inlinedAt: !672)
!672 = distinct !DILocation(line: 673, column: 31, scope: !210)
!673 = !DILocation(line: 0, scope: !587, inlinedAt: !674)
!674 = distinct !DILocation(line: 674, column: 31, scope: !210)
!675 = !DILocation(line: 0, scope: !587, inlinedAt: !676)
!676 = distinct !DILocation(line: 675, column: 31, scope: !210)
!677 = !DILocation(line: 0, scope: !587, inlinedAt: !678)
!678 = distinct !DILocation(line: 676, column: 31, scope: !210)
!679 = !DILocation(line: 682, column: 7, scope: !680)
!680 = distinct !DILexicalBlock(scope: !210, file: !115, line: 682, column: 7)
!681 = !DILocation(line: 682, column: 7, scope: !680, atomGroup: 64, atomRank: 2)
!682 = !DILocation(line: 683, column: 7, scope: !680, atomGroup: 64, atomRank: 1)
!683 = !DILocation(line: 683, column: 10, scope: !680)
!684 = !DILocation(line: 683, column: 10, scope: !680, atomGroup: 65, atomRank: 2)
!685 = !DILocation(line: 683, column: 7, scope: !680, atomGroup: 65, atomRank: 1)
!686 = !DILocation(line: 689, column: 41, scope: !687)
!687 = distinct !DILexicalBlock(scope: !680, file: !115, line: 684, column: 5)
!688 = !DILocation(line: 688, column: 7, scope: !687)
!689 = !DILocation(line: 690, column: 5, scope: !687)
!690 = !DILocation(line: 696, column: 15, scope: !691)
!691 = distinct !DILexicalBlock(scope: !680, file: !115, line: 692, column: 5)
!692 = !DILocation(line: 695, column: 7, scope: !691)
!693 = !DILocation(line: 698, column: 20, scope: !210)
!694 = !DILocation(line: 698, column: 3, scope: !210)
!695 = !DILocation(line: 702, column: 21, scope: !210)
!696 = !DILocation(line: 702, column: 3, scope: !210)
!697 = !DILocation(line: 705, column: 36, scope: !210)
!698 = !DILocation(line: 705, column: 50, scope: !210)
!699 = !DILocation(line: 705, column: 3, scope: !210)
!700 = !DILocation(line: 707, column: 21, scope: !210)
!701 = !DILocation(line: 707, column: 3, scope: !210)
!702 = !DILocation(line: 710, column: 28, scope: !210)
!703 = !DILocation(line: 710, column: 3, scope: !210)
!704 = !DILocation(line: 715, column: 1, scope: !210)
!705 = !DILocation(line: 715, column: 1, scope: !210, atomGroup: 80, atomRank: 1)
!706 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 426, type: !707, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !710, keyInstructions: true)
!707 = !DISubroutineType(types: !708)
!708 = !{!116, !116, !709}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!710 = !{!711, !712, !713}
!711 = !DILocalVariable(name: "argc", arg: 1, scope: !706, file: !2, line: 426, type: !116)
!712 = !DILocalVariable(name: "argv", arg: 2, scope: !706, file: !2, line: 426, type: !709)
!713 = !DILocalVariable(name: "c", scope: !706, file: !2, line: 428, type: !116)
!714 = !DILocation(line: 0, scope: !706)
!715 = !DILocation(line: 431, column: 21, scope: !706)
!716 = !DILocation(line: 431, column: 3, scope: !706)
!717 = !DILocation(line: 432, column: 3, scope: !706)
!718 = !DILocation(line: 433, column: 3, scope: !706)
!719 = !DILocation(line: 434, column: 3, scope: !706)
!720 = !DILocation(line: 435, column: 21, scope: !706, atomGroup: 1, atomRank: 3)
!721 = !DILocation(line: 435, column: 19, scope: !706, atomGroup: 1, atomRank: 2)
!722 = !DILocation(line: 435, column: 19, scope: !706, atomGroup: 1, atomRank: 1)
!723 = !{!724, !724, i64 0}
!724 = !{!"_Bool", !475, i64 0}
!725 = !DILocation(line: 437, column: 3, scope: !706)
!726 = !DILocation(line: 439, column: 3, scope: !706)
!727 = !DILocation(line: 439, column: 15, scope: !706, atomGroup: 2, atomRank: 2)
!728 = !DILocation(line: 439, column: 3, scope: !706, atomGroup: 4, atomRank: 1)
!729 = !DILocation(line: 443, column: 21, scope: !730, atomGroup: 6, atomRank: 1)
!730 = distinct !DILexicalBlock(scope: !706, file: !2, line: 441, column: 7)
!731 = !DILocation(line: 444, column: 9, scope: !730, atomGroup: 7, atomRank: 1)
!732 = !DILocation(line: 447, column: 21, scope: !730, atomGroup: 8, atomRank: 1)
!733 = !DILocation(line: 448, column: 9, scope: !730, atomGroup: 9, atomRank: 1)
!734 = !DILocation(line: 451, column: 14, scope: !730, atomGroup: 10, atomRank: 1)
!735 = !DILocation(line: 452, column: 9, scope: !730, atomGroup: 11, atomRank: 1)
!736 = !DILocation(line: 455, column: 15, scope: !730, atomGroup: 12, atomRank: 1)
!737 = !DILocation(line: 456, column: 9, scope: !730, atomGroup: 13, atomRank: 1)
!738 = !DILocation(line: 459, column: 27, scope: !730, atomGroup: 14, atomRank: 1)
!739 = !DILocation(line: 460, column: 9, scope: !730, atomGroup: 15, atomRank: 1)
!740 = !DILocation(line: 463, column: 27, scope: !730, atomGroup: 16, atomRank: 1)
!741 = !DILocation(line: 464, column: 9, scope: !730, atomGroup: 17, atomRank: 1)
!742 = !DILocation(line: 467, column: 13, scope: !743)
!743 = distinct !DILexicalBlock(scope: !730, file: !2, line: 467, column: 13)
!744 = !{!745, !745, i64 0}
!745 = !{!"long", !475, i64 0}
!746 = !DILocation(line: 467, column: 13, scope: !743, atomGroup: 18, atomRank: 2)
!747 = !DILocation(line: 469, column: 19, scope: !730, atomGroup: 20, atomRank: 2)
!748 = !DILocation(line: 467, column: 25, scope: !743, atomGroup: 18, atomRank: 1)
!749 = !DILocation(line: 467, column: 36, scope: !743)
!750 = !DILocation(line: 0, scope: !587, inlinedAt: !751)
!751 = distinct !DILocation(line: 467, column: 29, scope: !743)
!752 = !DILocation(line: 1370, column: 11, scope: !587, inlinedAt: !751)
!753 = !DILocation(line: 1370, column: 10, scope: !587, inlinedAt: !751)
!754 = !DILocation(line: 467, column: 25, scope: !743, atomGroup: 19, atomRank: 1)
!755 = !DILocation(line: 468, column: 35, scope: !743)
!756 = !DILocation(line: 468, column: 11, scope: !743)
!757 = !DILocation(line: 469, column: 17, scope: !730, atomGroup: 20, atomRank: 1)
!758 = !DILocation(line: 470, column: 23, scope: !730)
!759 = !DILocation(line: 470, column: 23, scope: !730, atomGroup: 22, atomRank: 2)
!760 = !DILocation(line: 470, column: 23, scope: !730, atomGroup: 22, atomRank: 1)
!761 = !DILocation(line: 470, column: 33, scope: !730)
!762 = !DILocation(line: 470, column: 23, scope: !730, atomGroup: 21, atomRank: 2)
!763 = !DILocation(line: 470, column: 21, scope: !730, atomGroup: 21, atomRank: 1)
!764 = !DILocation(line: 471, column: 9, scope: !730, atomGroup: 23, atomRank: 1)
!765 = !DILocation(line: 474, column: 22, scope: !730, atomGroup: 24, atomRank: 1)
!766 = !DILocation(line: 475, column: 9, scope: !730, atomGroup: 25, atomRank: 1)
!767 = distinct !{!767, !726, !768, !627}
!768 = !DILocation(line: 483, column: 7, scope: !706)
!769 = !DILocation(line: 477, column: 7, scope: !730)
!770 = !DILocation(line: 479, column: 7, scope: !730)
!771 = !DILocation(line: 479, column: 47, scope: !730)
!772 = !DILocation(line: 482, column: 9, scope: !730)
!773 = !DILocation(line: 485, column: 9, scope: !774)
!774 = distinct !DILexicalBlock(scope: !706, file: !2, line: 485, column: 7)
!775 = !DILocation(line: 485, column: 9, scope: !774, atomGroup: 26, atomRank: 2)
!776 = !DILocation(line: 485, column: 7, scope: !774, atomGroup: 26, atomRank: 1)
!777 = !DILocation(line: 486, column: 17, scope: !774, atomGroup: 27, atomRank: 1)
!778 = !DILocation(line: 486, column: 5, scope: !774)
!779 = !DILocation(line: 488, column: 14, scope: !780)
!780 = distinct !DILexicalBlock(scope: !706, file: !2, line: 488, column: 7)
!781 = !DILocation(line: 488, column: 12, scope: !780)
!782 = !DILocation(line: 488, column: 21, scope: !780, atomGroup: 28, atomRank: 2)
!783 = !DILocation(line: 488, column: 21, scope: !780, atomGroup: 28, atomRank: 1)
!784 = !DILocation(line: 490, column: 16, scope: !785, atomGroup: 29, atomRank: 2)
!785 = distinct !DILexicalBlock(scope: !786, file: !2, line: 490, column: 11)
!786 = distinct !DILexicalBlock(scope: !780, file: !2, line: 489, column: 5)
!787 = !DILocation(line: 490, column: 16, scope: !785, atomGroup: 29, atomRank: 1)
!788 = !DILocation(line: 491, column: 22, scope: !785)
!789 = !DILocation(line: 491, column: 9, scope: !785)
!790 = !DILocation(line: 493, column: 22, scope: !785)
!791 = !DILocation(line: 493, column: 60, scope: !785)
!792 = !DILocation(line: 493, column: 53, scope: !785)
!793 = !DILocation(line: 493, column: 9, scope: !785)
!794 = !DILocation(line: 494, column: 7, scope: !786)
!795 = !DILocation(line: 497, column: 9, scope: !796, atomGroup: 30, atomRank: 2)
!796 = distinct !DILexicalBlock(scope: !706, file: !2, line: 497, column: 7)
!797 = !DILocation(line: 497, column: 9, scope: !796, atomGroup: 30, atomRank: 1)
!798 = !DILocation(line: 499, column: 20, scope: !799)
!799 = distinct !DILexicalBlock(scope: !796, file: !2, line: 498, column: 5)
!800 = !DILocation(line: 499, column: 55, scope: !799)
!801 = !DILocation(line: 499, column: 50, scope: !799)
!802 = !DILocation(line: 499, column: 43, scope: !799)
!803 = !DILocation(line: 499, column: 7, scope: !799)
!804 = !DILocation(line: 500, column: 7, scope: !799)
!805 = !DILocation(line: 503, column: 23, scope: !706)
!806 = !DILocation(line: 503, column: 3, scope: !706)
!807 = !DISubprogram(name: "set_program_name", scope: !808, file: !808, line: 38, type: !534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!808 = !DIFile(filename: "./lib/progname.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3e5536ae3756d6a65acb8e248212c2ee")
!809 = !DISubprogram(name: "setlocale", scope: !810, file: !810, line: 122, type: !811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!810 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!811 = !DISubroutineType(types: !812)
!812 = !{!159, !116, !165}
!813 = !DISubprogram(name: "bindtextdomain", scope: !563, file: !563, line: 86, type: !814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!814 = !DISubroutineType(types: !815)
!815 = !{!159, !165, !165}
!816 = !DISubprogram(name: "textdomain", scope: !563, file: !563, line: 82, type: !817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!817 = !DISubroutineType(types: !818)
!818 = !{!159, !165}
!819 = !DISubprogram(name: "hard_locale", scope: !820, file: !820, line: 31, type: !821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!820 = !DIFile(filename: "./lib/hard-locale.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "109b2217185d3ad79f3917c70b3a698c")
!821 = !DISubroutineType(types: !822)
!822 = !{!205, !116}
!823 = !DISubprogram(name: "atexit", scope: !824, file: !824, line: 602, type: !825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!824 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!825 = !DISubroutineType(types: !826)
!826 = !{!116, !827}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{null}
!830 = !DISubprogram(name: "getopt_long", scope: !411, file: !411, line: 66, type: !831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!831 = !DISubroutineType(types: !832)
!832 = !{!116, !116, !833, !165, !835, !416}
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!836 = !DISubprogram(name: "error", scope: !837, file: !837, line: 31, type: !838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!837 = !DIFile(filename: "/usr/include/error.h", directory: "", checksumkind: CSK_MD5, checksum: "0bac552e7426506dc6623c11568834e0")
!838 = !DISubroutineType(types: !839)
!839 = !{null, !116, !116, !165, null}
!840 = !DISubprogram(name: "strlen", scope: !841, file: !841, line: 407, type: !842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!841 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!842 = !DISubroutineType(types: !843)
!843 = !{!164, !165}
!844 = !DISubprogram(name: "version_etc", scope: !845, file: !845, line: 70, type: !846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!845 = !DIFile(filename: "./lib/version-etc.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "7242964c9dbfa69ef19b57250c13e279")
!846 = !DISubroutineType(types: !847)
!847 = !{null, !232, !165, !165, !165, null}
!848 = !DISubprogram(name: "proper_name_lite", scope: !849, file: !849, line: 126, type: !850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!849 = !DIFile(filename: "./lib/propername.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "fdc444d0083bc592737160d9365ffa54")
!850 = !DISubroutineType(types: !851)
!851 = !{!165, !165, !165}
!852 = !DISubprogram(name: "quote", scope: !853, file: !853, line: 49, type: !854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!853 = !DIFile(filename: "./lib/quote.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "4a0796caa167d9859d28846ccf7a0d92")
!854 = !DISubroutineType(types: !855)
!855 = !{!165, !165}
!856 = distinct !DISubprogram(name: "compare_files", scope: !2, file: !2, line: 261, type: !857, scopeLine: 262, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !859, keyInstructions: true)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !709}
!859 = !{!860, !861, !872, !875, !877, !880, !882, !887, !889, !893, !895, !896, !902, !904, !906}
!860 = !DILocalVariable(name: "infiles", arg: 1, scope: !856, file: !2, line: 261, type: !709)
!861 = !DILocalVariable(name: "lba", scope: !856, file: !2, line: 264, type: !862)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !863, size: 1536, elements: !871)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !864, line: 32, size: 192, elements: !865)
!864 = !DIFile(filename: "./lib/linebuffer.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "e2597f62c7d5286d9e09d95cf657d3bc")
!865 = !{!866, !869, !870}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !863, file: !864, line: 34, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !868, line: 137, baseType: !260)
!868 = !DIFile(filename: "./lib/idx.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "a342c053ede588630cf36a09403114d3")
!869 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !863, file: !864, line: 35, baseType: !867, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !863, file: !864, line: 36, baseType: !159, size: 64, offset: 128)
!871 = !{!305, !295}
!872 = !DILocalVariable(name: "thisline", scope: !856, file: !2, line: 268, type: !873)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !874, size: 128, elements: !304)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!875 = !DILocalVariable(name: "all_line", scope: !856, file: !2, line: 273, type: !876)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !874, size: 512, elements: !871)
!877 = !DILocalVariable(name: "alt", scope: !856, file: !2, line: 276, type: !878)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 192, elements: !879)
!879 = !{!305, !314}
!880 = !DILocalVariable(name: "streams", scope: !856, file: !2, line: 279, type: !881)
!881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 128, elements: !304)
!882 = !DILocalVariable(name: "total", scope: !856, file: !2, line: 282, type: !883)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !884, size: 192, elements: !313)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !885, line: 102, baseType: !886)
!885 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !259, line: 73, baseType: !164)
!887 = !DILocalVariable(name: "i", scope: !888, file: !2, line: 285, type: !116)
!888 = distinct !DILexicalBlock(scope: !856, file: !2, line: 285, column: 3)
!889 = !DILocalVariable(name: "j", scope: !890, file: !2, line: 287, type: !116)
!890 = distinct !DILexicalBlock(scope: !891, file: !2, line: 287, column: 7)
!891 = distinct !DILexicalBlock(scope: !892, file: !2, line: 286, column: 5)
!892 = distinct !DILexicalBlock(scope: !888, file: !2, line: 285, column: 3)
!893 = !DILocalVariable(name: "order", scope: !894, file: !2, line: 309, type: !116)
!894 = distinct !DILexicalBlock(scope: !856, file: !2, line: 308, column: 5)
!895 = !DILocalVariable(name: "fill_up", scope: !894, file: !2, line: 310, type: !458)
!896 = !DILocalVariable(name: "len", scope: !897, file: !2, line: 325, type: !162)
!897 = distinct !DILexicalBlock(scope: !898, file: !2, line: 324, column: 13)
!898 = distinct !DILexicalBlock(scope: !899, file: !2, line: 320, column: 15)
!899 = distinct !DILexicalBlock(scope: !900, file: !2, line: 319, column: 9)
!900 = distinct !DILexicalBlock(scope: !901, file: !2, line: 316, column: 16)
!901 = distinct !DILexicalBlock(scope: !894, file: !2, line: 314, column: 11)
!902 = !DILocalVariable(name: "i", scope: !903, file: !2, line: 363, type: !116)
!903 = distinct !DILexicalBlock(scope: !894, file: !2, line: 363, column: 7)
!904 = !DILocalVariable(name: "n_streams", scope: !856, file: !2, line: 392, type: !905)
!905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!906 = !DILocalVariable(name: "i", scope: !907, file: !2, line: 393, type: !116)
!907 = distinct !DILexicalBlock(scope: !856, file: !2, line: 393, column: 3)
!908 = distinct !DIAssignID()
!909 = !DILocation(line: 0, scope: !856)
!910 = distinct !DIAssignID()
!911 = !DILocation(line: 264, column: 3, scope: !856)
!912 = !DILocation(line: 273, column: 3, scope: !856)
!913 = !DILocation(line: 0, scope: !888)
!914 = !DILocation(line: 0, scope: !890)
!915 = !DILocation(line: 289, column: 11, scope: !916)
!916 = distinct !DILexicalBlock(scope: !917, file: !2, line: 288, column: 9)
!917 = distinct !DILexicalBlock(scope: !890, file: !2, line: 287, column: 7)
!918 = !DILocation(line: 290, column: 26, scope: !916, atomGroup: 8, atomRank: 1)
!919 = !{!920, !920, i64 0}
!920 = !{!"p1 _ZTS10linebuffer", !490, i64 0}
!921 = !DILocation(line: 289, column: 24, scope: !916)
!922 = !DILocation(line: 290, column: 11, scope: !916)
!923 = !DILocation(line: 290, column: 26, scope: !916, atomGroup: 160, atomRank: 1)
!924 = !DILocation(line: 290, column: 26, scope: !916, atomGroup: 164, atomRank: 1)
!925 = !DILocation(line: 290, column: 26, scope: !916, atomGroup: 168, atomRank: 1)
!926 = !DILocation(line: 295, column: 28, scope: !891)
!927 = !DILocation(line: 0, scope: !587, inlinedAt: !928)
!928 = distinct !DILocation(line: 295, column: 21, scope: !891)
!929 = !DILocation(line: 1370, column: 11, scope: !587, inlinedAt: !928)
!930 = !DILocation(line: 290, column: 26, scope: !916, atomGroup: 173, atomRank: 1)
!931 = !DILocation(line: 290, column: 26, scope: !916, atomGroup: 174, atomRank: 1)
!932 = !DILocation(line: 290, column: 26, scope: !916, atomGroup: 175, atomRank: 1)
!933 = !DILocation(line: 290, column: 26, scope: !916, atomGroup: 176, atomRank: 1)
!934 = !DILocation(line: 1370, column: 10, scope: !587, inlinedAt: !928)
!935 = !DILocation(line: 295, column: 21, scope: !891, atomGroup: 180, atomRank: 1)
!936 = !DILocation(line: 295, column: 55, scope: !891)
!937 = !DILocation(line: 295, column: 21, scope: !891)
!938 = !DILocation(line: 295, column: 47, scope: !891)
!939 = !DILocation(line: 295, column: 21, scope: !891, atomGroup: 181, atomRank: 2)
!940 = !DILocation(line: 296, column: 12, scope: !941, atomGroup: 182, atomRank: 2)
!941 = distinct !DILexicalBlock(scope: !891, file: !2, line: 296, column: 11)
!942 = !DILocation(line: 296, column: 11, scope: !941, atomGroup: 182, atomRank: 1)
!943 = !DILocation(line: 299, column: 7, scope: !891)
!944 = !DILocation(line: 302, column: 43, scope: !891)
!945 = !DILocation(line: 301, column: 21, scope: !891, atomGroup: 183, atomRank: 2)
!946 = !DILocalVariable(name: "__stream", arg: 1, scope: !947, file: !948, line: 135, type: !232)
!947 = distinct !DISubprogram(name: "ferror_unlocked", scope: !948, file: !948, line: 135, type: !949, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !951, keyInstructions: true)
!948 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!949 = !DISubroutineType(types: !950)
!950 = !{!116, !232}
!951 = !{!946}
!952 = !DILocation(line: 0, scope: !947, inlinedAt: !953)
!953 = distinct !DILocation(line: 303, column: 11, scope: !954)
!954 = distinct !DILexicalBlock(scope: !891, file: !2, line: 303, column: 11)
!955 = !DILocation(line: 137, column: 10, scope: !947, inlinedAt: !953)
!956 = !{!957, !474, i64 0}
!957 = !{!"_IO_FILE", !474, i64 0, !492, i64 8, !492, i64 16, !492, i64 24, !492, i64 32, !492, i64 40, !492, i64 48, !492, i64 56, !492, i64 64, !492, i64 72, !492, i64 80, !492, i64 88, !958, i64 96, !489, i64 104, !474, i64 112, !474, i64 116, !745, i64 120, !619, i64 128, !475, i64 130, !475, i64 131, !490, i64 136, !745, i64 144, !959, i64 152, !960, i64 160, !489, i64 168, !490, i64 176, !745, i64 184, !474, i64 192, !475, i64 196}
!958 = !{!"p1 _ZTS10_IO_marker", !490, i64 0}
!959 = !{!"p1 _ZTS11_IO_codecvt", !490, i64 0}
!960 = !{!"p1 _ZTS13_IO_wide_data", !490, i64 0}
!961 = !DILocation(line: 303, column: 11, scope: !954, atomGroup: 184, atomRank: 2)
!962 = !DILocation(line: 303, column: 11, scope: !954, atomGroup: 184, atomRank: 1)
!963 = !DILocation(line: 307, column: 10, scope: !856, atomGroup: 156, atomRank: 2)
!964 = !DILocation(line: 307, column: 22, scope: !856, atomGroup: 156, atomRank: 1)
!965 = !DILocation(line: 307, column: 3, scope: !856, atomGroup: 157, atomRank: 1)
!966 = !DILocation(line: 295, column: 21, scope: !891, atomGroup: 15, atomRank: 1)
!967 = !DILocation(line: 295, column: 21, scope: !891, atomGroup: 14, atomRank: 2)
!968 = !DILocation(line: 296, column: 12, scope: !941, atomGroup: 16, atomRank: 2)
!969 = !DILocation(line: 296, column: 11, scope: !941, atomGroup: 16, atomRank: 1)
!970 = !DILocation(line: 292, column: 7, scope: !891)
!971 = !DILocation(line: 297, column: 30, scope: !941)
!972 = !DILocation(line: 297, column: 51, scope: !941)
!973 = !DILocation(line: 297, column: 43, scope: !941)
!974 = !DILocation(line: 297, column: 9, scope: !941)
!975 = !DILocation(line: 301, column: 21, scope: !891, atomGroup: 17, atomRank: 2)
!976 = !DILocation(line: 303, column: 11, scope: !954, atomGroup: 18, atomRank: 2)
!977 = !DILocation(line: 303, column: 11, scope: !954, atomGroup: 18, atomRank: 1)
!978 = !DILocation(line: 304, column: 30, scope: !954)
!979 = !DILocation(line: 304, column: 51, scope: !954)
!980 = !DILocation(line: 304, column: 43, scope: !954)
!981 = !DILocation(line: 304, column: 9, scope: !954)
!982 = !DILocation(line: 0, scope: !894)
!983 = !DILocation(line: 314, column: 12, scope: !901, atomGroup: 24, atomRank: 2)
!984 = !DILocation(line: 314, column: 11, scope: !901, atomGroup: 24, atomRank: 1)
!985 = !DILocation(line: 341, column: 27, scope: !986, atomGroup: 148, atomRank: 1)
!986 = distinct !DILexicalBlock(scope: !987, file: !2, line: 340, column: 9)
!987 = distinct !DILexicalBlock(scope: !894, file: !2, line: 333, column: 11)
!988 = !DILocation(line: 342, column: 21, scope: !989, atomGroup: 149, atomRank: 1)
!989 = distinct !DILexicalBlock(scope: !986, file: !2, line: 342, column: 15)
!990 = !DILocation(line: 316, column: 17, scope: !900, atomGroup: 26, atomRank: 2)
!991 = !DILocation(line: 316, column: 16, scope: !900, atomGroup: 26, atomRank: 1)
!992 = !DILocation(line: 341, column: 27, scope: !986, atomGroup: 146, atomRank: 1)
!993 = !DILocation(line: 342, column: 21, scope: !989, atomGroup: 147, atomRank: 1)
!994 = !DILocation(line: 320, column: 15, scope: !898, atomGroup: 28, atomRank: 3)
!995 = !{i8 0, i8 2}
!996 = !{}
!997 = !DILocation(line: 320, column: 15, scope: !898, atomGroup: 28, atomRank: 2)
!998 = !DILocation(line: 320, column: 15, scope: !898, atomGroup: 28, atomRank: 1)
!999 = !DILocation(line: 321, column: 44, scope: !898)
!1000 = !{!1001, !492, i64 16}
!1001 = !{!"linebuffer", !745, i64 0, !745, i64 8, !492, i64 16}
!1002 = !DILocation(line: 321, column: 65, scope: !898)
!1003 = !{!1001, !745, i64 8}
!1004 = !DILocation(line: 321, column: 72, scope: !898)
!1005 = !DILocation(line: 322, column: 44, scope: !898)
!1006 = !DILocation(line: 322, column: 65, scope: !898)
!1007 = !DILocation(line: 322, column: 72, scope: !898)
!1008 = !DILocation(line: 321, column: 21, scope: !898, atomGroup: 29, atomRank: 2)
!1009 = !DILocation(line: 321, column: 13, scope: !898)
!1010 = !DILocation(line: 325, column: 46, scope: !897)
!1011 = !DILocation(line: 325, column: 67, scope: !897)
!1012 = !DILocation(line: 325, column: 28, scope: !897)
!1013 = !DILocation(line: 325, column: 75, scope: !897, atomGroup: 30, atomRank: 2)
!1014 = !DILocation(line: 0, scope: !897)
!1015 = !DILocation(line: 326, column: 44, scope: !897)
!1016 = !DILocation(line: 326, column: 65, scope: !897)
!1017 = !DILocation(line: 326, column: 23, scope: !897, atomGroup: 32, atomRank: 2)
!1018 = !DILocation(line: 327, column: 25, scope: !1019, atomGroup: 33, atomRank: 2)
!1019 = distinct !DILexicalBlock(scope: !897, file: !2, line: 327, column: 19)
!1020 = !DILocation(line: 327, column: 25, scope: !1019, atomGroup: 33, atomRank: 1)
!1021 = !DILocation(line: 328, column: 25, scope: !1019, atomGroup: 34, atomRank: 2)
!1022 = !DILocation(line: 328, column: 17, scope: !1019)
!1023 = !DILocation(line: 0, scope: !901)
!1024 = !DILocation(line: 333, column: 17, scope: !987, atomGroup: 35, atomRank: 2)
!1025 = !DILocation(line: 333, column: 17, scope: !987, atomGroup: 35, atomRank: 1)
!1026 = !DILocation(line: 336, column: 19, scope: !1027, atomGroup: 36, atomRank: 2)
!1027 = distinct !DILexicalBlock(scope: !987, file: !2, line: 334, column: 9)
!1028 = !DILocation(line: 337, column: 11, scope: !1027)
!1029 = !DILocation(line: 360, column: 17, scope: !1030, atomGroup: 145, atomRank: 1)
!1030 = distinct !DILexicalBlock(scope: !894, file: !2, line: 360, column: 11)
!1031 = !DILocation(line: 341, column: 27, scope: !986, atomGroup: 37, atomRank: 1)
!1032 = !DILocation(line: 342, column: 21, scope: !989, atomGroup: 38, atomRank: 2)
!1033 = !DILocation(line: 342, column: 21, scope: !989, atomGroup: 38, atomRank: 1)
!1034 = !DILocation(line: 345, column: 23, scope: !1035, atomGroup: 39, atomRank: 2)
!1035 = distinct !DILexicalBlock(scope: !989, file: !2, line: 343, column: 13)
!1036 = !DILocation(line: 346, column: 15, scope: !1035)
!1037 = !DILocation(line: 360, column: 17, scope: !1030, atomGroup: 143, atomRank: 1)
!1038 = !DILocation(line: 351, column: 23, scope: !1039, atomGroup: 40, atomRank: 2)
!1039 = distinct !DILexicalBlock(scope: !989, file: !2, line: 349, column: 13)
!1040 = !DILocation(line: 352, column: 15, scope: !1039)
!1041 = !DILocation(line: 0, scope: !903)
!1042 = !DILocation(line: 364, column: 13, scope: !1043, atomGroup: 188, atomRank: 1)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 364, column: 13)
!1044 = distinct !DILexicalBlock(scope: !903, file: !2, line: 363, column: 7)
!1045 = !DILocation(line: 369, column: 36, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1043, file: !2, line: 365, column: 11)
!1047 = !DILocation(line: 369, column: 41, scope: !1046, atomGroup: 51, atomRank: 2)
!1048 = !DILocation(line: 371, column: 49, scope: !1046)
!1049 = !DILocation(line: 372, column: 61, scope: !1046)
!1050 = !DILocation(line: 371, column: 27, scope: !1046, atomGroup: 52, atomRank: 2)
!1051 = !DILocation(line: 374, column: 17, scope: !1052, atomGroup: 53, atomRank: 2)
!1052 = distinct !DILexicalBlock(scope: !1046, file: !2, line: 374, column: 17)
!1053 = !DILocation(line: 374, column: 17, scope: !1052, atomGroup: 53, atomRank: 1)
!1054 = !DILocation(line: 375, column: 28, scope: !1052)
!1055 = !DILocation(line: 375, column: 15, scope: !1052)
!1056 = !DILocation(line: 380, column: 22, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !2, line: 380, column: 22)
!1058 = !DILocation(line: 380, column: 46, scope: !1057)
!1059 = !DILocation(line: 380, column: 22, scope: !1057, atomGroup: 54, atomRank: 2)
!1060 = !DILocation(line: 380, column: 22, scope: !1057, atomGroup: 54, atomRank: 1)
!1061 = !DILocation(line: 382, column: 28, scope: !1057)
!1062 = !DILocation(line: 381, column: 15, scope: !1057)
!1063 = !DILocation(line: 0, scope: !947, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 384, column: 17, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1046, file: !2, line: 384, column: 17)
!1066 = !DILocation(line: 137, column: 10, scope: !947, inlinedAt: !1064)
!1067 = !DILocation(line: 384, column: 17, scope: !1065, atomGroup: 55, atomRank: 2)
!1068 = !DILocation(line: 384, column: 17, scope: !1065, atomGroup: 55, atomRank: 1)
!1069 = !DILocation(line: 364, column: 13, scope: !1043)
!1070 = !DILocation(line: 385, column: 36, scope: !1065)
!1071 = !DILocation(line: 385, column: 57, scope: !1065)
!1072 = !DILocation(line: 385, column: 49, scope: !1065)
!1073 = !DILocation(line: 385, column: 15, scope: !1065)
!1074 = !DILocation(line: 369, column: 41, scope: !1046, atomGroup: 191, atomRank: 2)
!1075 = !DILocation(line: 371, column: 27, scope: !1046, atomGroup: 192, atomRank: 2)
!1076 = !DILocation(line: 374, column: 17, scope: !1052, atomGroup: 193, atomRank: 2)
!1077 = !DILocation(line: 374, column: 17, scope: !1052, atomGroup: 193, atomRank: 1)
!1078 = !DILocation(line: 380, column: 22, scope: !1057, atomGroup: 194, atomRank: 2)
!1079 = !DILocation(line: 380, column: 22, scope: !1057, atomGroup: 194, atomRank: 1)
!1080 = !DILocation(line: 384, column: 17, scope: !1065, atomGroup: 195, atomRank: 2)
!1081 = !DILocation(line: 384, column: 17, scope: !1065, atomGroup: 195, atomRank: 1)
!1082 = !DILocation(line: 307, column: 10, scope: !856, atomGroup: 21, atomRank: 2)
!1083 = !DILocation(line: 307, column: 22, scope: !856, atomGroup: 21, atomRank: 1)
!1084 = !DILocation(line: 307, column: 3, scope: !856, atomGroup: 22, atomRank: 1)
!1085 = distinct !{!1085, !1086, !1087, !627}
!1086 = !DILocation(line: 307, column: 3, scope: !856)
!1087 = !DILocation(line: 389, column: 5, scope: !856)
!1088 = !DILocation(line: 282, column: 13, scope: !856, atomGroup: 1, atomRank: 1)
!1089 = !DILocation(line: 392, column: 41, scope: !856)
!1090 = !DILocation(line: 0, scope: !907)
!1091 = !DILocation(line: 394, column: 9, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 394, column: 9)
!1093 = distinct !DILexicalBlock(scope: !907, file: !2, line: 393, column: 3)
!1094 = !DILocation(line: 394, column: 29, scope: !1092, atomGroup: 200, atomRank: 2)
!1095 = !DILocation(line: 394, column: 29, scope: !1092, atomGroup: 200, atomRank: 1)
!1096 = !DILocation(line: 393, column: 3, scope: !907, atomGroup: 202, atomRank: 1)
!1097 = !DILocation(line: 397, column: 7, scope: !1098, atomGroup: 66, atomRank: 3)
!1098 = distinct !DILexicalBlock(scope: !856, file: !2, line: 397, column: 7)
!1099 = !DILocation(line: 397, column: 7, scope: !1098, atomGroup: 66, atomRank: 1)
!1100 = !DILocation(line: 394, column: 29, scope: !1092, atomGroup: 63, atomRank: 2)
!1101 = !DILocation(line: 394, column: 29, scope: !1092, atomGroup: 63, atomRank: 1)
!1102 = !DILocation(line: 395, column: 28, scope: !1092)
!1103 = !DILocation(line: 395, column: 49, scope: !1092)
!1104 = !DILocation(line: 395, column: 41, scope: !1092)
!1105 = !DILocation(line: 395, column: 7, scope: !1092)
!1106 = !DILocation(line: 400, column: 11, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 400, column: 11)
!1108 = distinct !DILexicalBlock(scope: !1098, file: !2, line: 398, column: 5)
!1109 = !DILocation(line: 400, column: 23, scope: !1107, atomGroup: 67, atomRank: 2)
!1110 = !DILocation(line: 0, scope: !1107)
!1111 = !DILocation(line: 400, column: 23, scope: !1107, atomGroup: 67, atomRank: 1)
!1112 = !DILocation(line: 403, column: 29, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1107, file: !2, line: 401, column: 9)
!1114 = !DILocation(line: 406, column: 19, scope: !1113)
!1115 = !DILocation(line: 406, column: 31, scope: !1113)
!1116 = !DILocation(line: 402, column: 11, scope: !1113)
!1117 = !DILocation(line: 407, column: 9, scope: !1113)
!1118 = !DILocation(line: 414, column: 19, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1107, file: !2, line: 409, column: 9)
!1120 = !DILocation(line: 414, column: 31, scope: !1119)
!1121 = !DILocation(line: 410, column: 11, scope: !1119)
!1122 = !DILocation(line: 418, column: 7, scope: !1123, atomGroup: 68, atomRank: 3)
!1123 = distinct !DILexicalBlock(scope: !856, file: !2, line: 418, column: 7)
!1124 = !DILocation(line: 418, column: 7, scope: !1123, atomGroup: 68, atomRank: 2)
!1125 = !DILocation(line: 418, column: 34, scope: !1123, atomGroup: 68, atomRank: 1)
!1126 = !DILocation(line: 419, column: 29, scope: !1123)
!1127 = !DILocation(line: 419, column: 5, scope: !1123)
!1128 = !DILocation(line: 422, column: 3, scope: !856)
!1129 = !DISubprogram(name: "getenv", scope: !824, file: !824, line: 641, type: !817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1130 = !DISubprogram(name: "strspn", scope: !841, file: !841, line: 297, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!164, !165, !165}
!1133 = !DISubprogram(name: "strchr", scope: !841, file: !841, line: 246, type: !1134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!159, !165, !116}
!1136 = !DISubprogram(name: "__ctype_b_loc", scope: !121, file: !121, line: 79, type: !1137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!1139}
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!1142 = !DISubprogram(name: "strcspn", scope: !841, file: !841, line: 293, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1143 = !DISubprogram(name: "fwrite_unlocked", scope: !571, file: !571, line: 704, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!162, !1146, !162, !162, !560}
!1146 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1147)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1149 = !DISubprogram(name: "strncmp", scope: !841, file: !841, line: 159, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!116, !165, !165, !162}
!1152 = !DISubprogram(name: "emit_bug_reporting_address", scope: !845, file: !845, line: 77, type: !828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1153 = !DISubprogram(name: "strcmp", scope: !841, file: !841, line: 156, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!116, !165, !165}
!1156 = !DISubprogram(name: "initbuffer", scope: !864, file: !864, line: 41, type: !1157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{null, !874}
!1159 = !DISubprogram(name: "fopen_safer", scope: !1160, file: !1160, line: 33, type: !1161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1160 = !DIFile(filename: "./lib/stdio-safer.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "da7c848ac45b6b340d78312531e02838")
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!232, !165, !165}
!1163 = !DISubprogram(name: "__errno_location", scope: !1164, file: !1164, line: 37, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1164 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!416}
!1167 = !DISubprogram(name: "quotearg_n_style_colon", scope: !136, file: !136, line: 419, type: !1168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!159, !116, !135, !165}
!1170 = !DISubprogram(name: "fadvise", scope: !150, file: !150, line: 71, type: !1171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null, !232, !1173}
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !150, line: 51, baseType: !149)
!1174 = !DISubprogram(name: "readlinebuffer_delim", scope: !864, file: !864, line: 48, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!874, !874, !232, !4}
!1177 = !DISubprogram(name: "xmemcoll", scope: !1178, file: !1178, line: 25, type: !1179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1178 = !DIFile(filename: "./lib/xmemcoll.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "1970b9928648e83ca5202cf6a7b0bd9b")
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!116, !1181, !162, !1181, !162}
!1181 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !159)
!1182 = !DISubprogram(name: "memcmp", scope: !841, file: !841, line: 64, type: !1183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!116, !1147, !1147, !162}
!1185 = distinct !DISubprogram(name: "writeline", scope: !2, file: !2, line: 177, type: !1186, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1190, keyInstructions: true)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{null, !1188, !116}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !863)
!1190 = !{!1191, !1192, !1193, !1197, !1198, !1199, !1202, !1203, !1204, !1207, !1208, !1209, !1211, !1212}
!1191 = !DILocalVariable(name: "line", arg: 1, scope: !1185, file: !2, line: 177, type: !1188)
!1192 = !DILocalVariable(name: "class", arg: 2, scope: !1185, file: !2, line: 177, type: !116)
!1193 = !DILocalVariable(name: "__ptr", scope: !1194, file: !2, line: 190, type: !165)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 190, column: 9)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 189, column: 11)
!1196 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 180, column: 5)
!1197 = !DILocalVariable(name: "__stream", scope: !1194, file: !2, line: 190, type: !232)
!1198 = !DILocalVariable(name: "__cnt", scope: !1194, file: !2, line: 190, type: !162)
!1199 = !DILocalVariable(name: "__ptr", scope: !1200, file: !2, line: 197, type: !165)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 197, column: 9)
!1201 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 196, column: 11)
!1202 = !DILocalVariable(name: "__stream", scope: !1200, file: !2, line: 197, type: !232)
!1203 = !DILocalVariable(name: "__cnt", scope: !1200, file: !2, line: 197, type: !162)
!1204 = !DILocalVariable(name: "__ptr", scope: !1205, file: !2, line: 199, type: !165)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !2, line: 199, column: 9)
!1206 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 198, column: 11)
!1207 = !DILocalVariable(name: "__stream", scope: !1205, file: !2, line: 199, type: !232)
!1208 = !DILocalVariable(name: "__cnt", scope: !1205, file: !2, line: 199, type: !162)
!1209 = !DILocalVariable(name: "__ptr", scope: !1210, file: !2, line: 203, type: !165)
!1210 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 203, column: 3)
!1211 = !DILocalVariable(name: "__stream", scope: !1210, file: !2, line: 203, type: !232)
!1212 = !DILocalVariable(name: "__cnt", scope: !1210, file: !2, line: 203, type: !162)
!1213 = !DILocation(line: 0, scope: !1185)
!1214 = !DILocation(line: 179, column: 3, scope: !1185, atomGroup: 1, atomRank: 1)
!1215 = !DILocation(line: 182, column: 12, scope: !1216, atomGroup: 2, atomRank: 3)
!1216 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 182, column: 11)
!1217 = !DILocation(line: 182, column: 11, scope: !1216, atomGroup: 2, atomRank: 1)
!1218 = !DILocation(line: 187, column: 12, scope: !1219, atomGroup: 5, atomRank: 3)
!1219 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 187, column: 11)
!1220 = !DILocation(line: 187, column: 11, scope: !1219, atomGroup: 5, atomRank: 1)
!1221 = !DILocation(line: 189, column: 11, scope: !1195, atomGroup: 7, atomRank: 3)
!1222 = !DILocation(line: 189, column: 11, scope: !1195, atomGroup: 7, atomRank: 1)
!1223 = !DILocation(line: 194, column: 12, scope: !1224, atomGroup: 23, atomRank: 3)
!1224 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 194, column: 11)
!1225 = !DILocation(line: 194, column: 11, scope: !1224, atomGroup: 23, atomRank: 1)
!1226 = !DILocation(line: 196, column: 11, scope: !1201, atomGroup: 25, atomRank: 3)
!1227 = !DILocation(line: 196, column: 11, scope: !1201, atomGroup: 25, atomRank: 1)
!1228 = !DILocation(line: 197, column: 29, scope: !1201)
!1229 = !DILocation(line: 197, column: 17, scope: !1201)
!1230 = !DILocation(line: 197, column: 42, scope: !1201)
!1231 = !DILocation(line: 197, column: 9, scope: !1201)
!1232 = !DILocation(line: 198, column: 11, scope: !1206, atomGroup: 40, atomRank: 3)
!1233 = !DILocation(line: 198, column: 11, scope: !1206, atomGroup: 40, atomRank: 1)
!1234 = !DILocation(line: 0, scope: !1196)
!1235 = !DILocation(line: 203, column: 46, scope: !1185)
!1236 = !DILocation(line: 203, column: 17, scope: !1185)
!1237 = !DILocation(line: 203, column: 54, scope: !1185)
!1238 = !DILocation(line: 203, column: 3, scope: !1185)
!1239 = !DILocation(line: 205, column: 15, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 205, column: 7)
!1241 = !DILocation(line: 0, scope: !947, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 205, column: 7, scope: !1240)
!1243 = !DILocation(line: 137, column: 10, scope: !947, inlinedAt: !1242)
!1244 = !DILocation(line: 205, column: 7, scope: !1240, atomGroup: 70, atomRank: 2)
!1245 = !DILocation(line: 205, column: 7, scope: !1240, atomGroup: 70, atomRank: 1)
!1246 = !DILocation(line: 955, column: 21, scope: !1247, inlinedAt: !1250)
!1247 = distinct !DISubprogram(name: "write_error", scope: !115, file: !115, line: 953, type: !828, scopeLine: 954, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1248, keyInstructions: true)
!1248 = !{!1249}
!1249 = !DILocalVariable(name: "saved_errno", scope: !1247, file: !115, line: 955, type: !116)
!1250 = distinct !DILocation(line: 206, column: 5, scope: !1240)
!1251 = !DILocation(line: 955, column: 21, scope: !1247, inlinedAt: !1250, atomGroup: 1, atomRank: 2)
!1252 = !DILocation(line: 0, scope: !1247, inlinedAt: !1250)
!1253 = !DILocation(line: 956, column: 3, scope: !1247, inlinedAt: !1250)
!1254 = !DILocation(line: 957, column: 11, scope: !1247, inlinedAt: !1250)
!1255 = !DILocation(line: 957, column: 3, scope: !1247, inlinedAt: !1250)
!1256 = !DILocation(line: 958, column: 13, scope: !1247, inlinedAt: !1250)
!1257 = !DILocation(line: 958, column: 3, scope: !1247, inlinedAt: !1250)
!1258 = !DILocation(line: 959, column: 37, scope: !1247, inlinedAt: !1250)
!1259 = !DILocation(line: 959, column: 3, scope: !1247, inlinedAt: !1250)
!1260 = !DILocation(line: 207, column: 1, scope: !1185, atomGroup: 71, atomRank: 1)
!1261 = distinct !DISubprogram(name: "check_order", scope: !2, file: !2, line: 221, type: !1262, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1264, keyInstructions: true)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{null, !1188, !1188, !116}
!1264 = !{!1265, !1266, !1267, !1268, !1273}
!1265 = !DILocalVariable(name: "prev", arg: 1, scope: !1261, file: !2, line: 221, type: !1188)
!1266 = !DILocalVariable(name: "current", arg: 2, scope: !1261, file: !2, line: 222, type: !1188)
!1267 = !DILocalVariable(name: "whatfile", arg: 3, scope: !1261, file: !2, line: 223, type: !116)
!1268 = !DILocalVariable(name: "order", scope: !1269, file: !2, line: 231, type: !116)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 230, column: 9)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 229, column: 11)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !2, line: 228, column: 5)
!1272 = distinct !DILexicalBlock(scope: !1261, file: !2, line: 226, column: 7)
!1273 = !DILocalVariable(name: "__errstatus", scope: !1274, file: !2, line: 242, type: !905)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !2, line: 242, column: 15)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 241, column: 13)
!1276 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 240, column: 15)
!1277 = !DILocation(line: 0, scope: !1261)
!1278 = !DILocation(line: 226, column: 7, scope: !1272)
!1279 = !DILocation(line: 226, column: 25, scope: !1272, atomGroup: 1, atomRank: 2)
!1280 = !DILocation(line: 227, column: 7, scope: !1272, atomGroup: 1, atomRank: 1)
!1281 = !DILocation(line: 227, column: 30, scope: !1272, atomGroup: 2, atomRank: 2)
!1282 = !DILocation(line: 227, column: 54, scope: !1272, atomGroup: 2, atomRank: 1)
!1283 = !DILocation(line: 229, column: 12, scope: !1270)
!1284 = !DILocation(line: 229, column: 12, scope: !1270, atomGroup: 4, atomRank: 3)
!1285 = !DILocation(line: 229, column: 12, scope: !1270, atomGroup: 4, atomRank: 2)
!1286 = !DILocation(line: 229, column: 11, scope: !1270, atomGroup: 4, atomRank: 1)
!1287 = !DILocation(line: 233, column: 15, scope: !1288, atomGroup: 5, atomRank: 3)
!1288 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 233, column: 15)
!1289 = !DILocation(line: 233, column: 15, scope: !1288, atomGroup: 5, atomRank: 2)
!1290 = !DILocation(line: 0, scope: !1288)
!1291 = !DILocation(line: 233, column: 15, scope: !1288, atomGroup: 5, atomRank: 1)
!1292 = !DILocation(line: 234, column: 21, scope: !1288, atomGroup: 6, atomRank: 2)
!1293 = !DILocation(line: 0, scope: !1269)
!1294 = !DILocation(line: 234, column: 13, scope: !1288)
!1295 = !DILocation(line: 237, column: 21, scope: !1288, atomGroup: 7, atomRank: 2)
!1296 = !DILocation(line: 240, column: 17, scope: !1276, atomGroup: 8, atomRank: 2)
!1297 = !DILocation(line: 240, column: 17, scope: !1276, atomGroup: 8, atomRank: 1)
!1298 = !DILocation(line: 242, column: 23, scope: !1275)
!1299 = !DILocation(line: 242, column: 41, scope: !1275)
!1300 = !DILocation(line: 244, column: 25, scope: !1275)
!1301 = !DILocation(line: 242, column: 15, scope: !1275)
!1302 = !DILocation(line: 0, scope: !1274)
!1303 = !DILocation(line: 248, column: 53, scope: !1275, atomGroup: 13, atomRank: 1)
!1304 = !DILocation(line: 249, column: 13, scope: !1275)
!1305 = !DILocation(line: 252, column: 1, scope: !1261, atomGroup: 14, atomRank: 1)
!1306 = !DISubprogram(name: "rpl_fclose", scope: !567, file: !567, line: 959, type: !949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1307 = !DISubprogram(name: "fflush_unlocked", scope: !571, file: !571, line: 239, type: !949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1308 = !DISubprogram(name: "fpurge", scope: !567, file: !567, line: 1266, type: !949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1309 = !DISubprogram(name: "clearerr_unlocked", scope: !571, file: !571, line: 794, type: !1310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{null, !232}
!1312 = !DISubprogram(name: "memcmp2", scope: !1313, file: !1313, line: 37, type: !1314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1313 = !DIFile(filename: "./lib/memcmp2.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "9c79f2268f5f3e2a31ecb25a3af8fb6e")
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!116, !165, !162, !165, !162}
