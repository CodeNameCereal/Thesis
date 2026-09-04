; ModuleID = 'src/paste.c'
source_filename = "src/paste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [204 x i8] c"Write lines consisting of the sequentially corresponding lines from\0Aeach FILE, separated by TABs, to standard output.\0AThe newline of every line except the line from the last file\0Ais replaced with a TAB.\0A\00", align 1, !dbg !12
@stdout = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"paste\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [119 x i8] c"  -d, --delimiters=LIST\0A         reuse characters from LIST instead of TABs;\0A         backslash escapes are supported\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [166 x i8] c"  -s, --serial\0A         paste one file at a time instead of in parallel; the newline of\0A         every line except the last line in each file is replaced with a TAB\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [69 x i8] c"  -z, --zero-terminated\0A         line delimiter is NUL, not newline\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [2 x i8] c"\09\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !52
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [5 x i8] c"d:sz\00", align 1, !dbg !67
@optarg = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [3 x i8] c"\\0\00", align 1, !dbg !72
@serial_merge = internal unnamed_addr global i1 false, align 1, !dbg !77
@line_delim = internal unnamed_addr global i1 false, align 1, !dbg !409
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !148
@Version = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [15 x i8] c"David M. Ihnat\00", align 1, !dbg !153
@.str.17 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !158
@optind = external local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !163
@.str.19 = private unnamed_addr constant [52 x i8] c"delimiter list ends with an unescaped backslash: %s\00", align 1, !dbg !165
@delims = internal unnamed_addr global ptr null, align 8, !dbg !174
@delim_lens = internal unnamed_addr global ptr null, align 8, !dbg !176
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !410
@stdin = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !179
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !184
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !189
@.str.22 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !271
@.str.23 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !273
@.str.24 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !275
@.str.25 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !280
@.str.39 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !314
@.str.40 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !316
@.str.41 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !318
@.str.42 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !323
@.str.43 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !328
@.str.44 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !330
@.str.45 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !335
@.str.46 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !337
@.str.47 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !339
@.str.48 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !341
@.str.52 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !352
@.str.53 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !357
@.str.54 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !362
@.str.55 = private unnamed_addr constant [7 x i8] c"serial\00", align 1, !dbg !367
@.str.56 = private unnamed_addr constant [11 x i8] c"delimiters\00", align 1, !dbg !369
@.str.57 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1, !dbg !374
@.str.58 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !376
@.str.59 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !378
@longopts = internal constant [6 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.55, i32 0, [4 x i8] zeroinitializer, ptr null, i32 115, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.56, i32 1, [4 x i8] zeroinitializer, ptr null, i32 100, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.57, i32 0, [4 x i8] zeroinitializer, ptr null, i32 122, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.58, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -130, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.59, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -131, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16, !dbg !380
@num_delims = internal unnamed_addr global i64 0, align 8, !dbg !394
@.str.61 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !398
@.str.62 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !400
@.str.63 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !402
@.str.64 = private unnamed_addr constant [25 x i8] c"standard input is closed\00", align 1, !dbg !404
@switch.table.main = private unnamed_addr constant [14 x i8] [i8 92, i8 poison, i8 poison, i8 8, i8 poison, i8 12, i8 poison, i8 poison, i8 poison, i8 10, i8 poison, i8 13, i8 9, i8 11], align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !423 {
    #dbg_value(i32 %0, !427, !DIExpression(), !428)
  %2 = icmp eq i32 %0, 0, !dbg !429
  br i1 %2, label %8, label %3, !dbg !431

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !432, !tbaa !434
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #16, !dbg !432
  %6 = load ptr, ptr @program_name, align 8, !dbg !432, !tbaa !437
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #16, !dbg !432
  br label %30, !dbg !432

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #16, !dbg !439
  %10 = load ptr, ptr @program_name, align 8, !dbg !441, !tbaa !437
  %11 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %9, ptr noundef %10) #16, !dbg !442
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #16, !dbg !443
  %13 = load ptr, ptr @stdout, align 8, !dbg !444, !tbaa !434
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !445
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #16, !dbg !446
  %16 = load ptr, ptr @stdout, align 8, !dbg !451, !tbaa !434
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !452
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #16, !dbg !453
  %19 = load ptr, ptr @stdout, align 8, !dbg !456, !tbaa !434
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !457
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #16, !dbg !458
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !459
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #16, !dbg !460
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !461
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #16, !dbg !462
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !463
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #16, !dbg !464
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !465
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #16, !dbg !466
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !467
    #dbg_value(ptr @.str.3, !468, !DIExpression(), !484)
    #dbg_value(ptr poison, !481, !DIExpression(), !484)
    #dbg_value(ptr @.str.3, !480, !DIExpression(), !484)
  tail call void @emit_bug_reporting_address() #16, !dbg !486
    #dbg_value(ptr @.str.3, !483, !DIExpression(), !484)
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #16, !dbg !487
  %27 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %26, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3) #16, !dbg !488
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #16, !dbg !489
  %29 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %28, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.54) #16, !dbg !490
  br label %30

30:                                               ; preds = %8, %3
  tail call void @exit(i32 noundef %0) #17, !dbg !491
  unreachable, !dbg !491
}

declare !dbg !492 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !498 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !502 i32 @rpl_printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare !dbg !506 noundef i32 @fputs_unlocked(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !191 {
    #dbg_value(ptr @.str.3, !195, !DIExpression(), !510)
    #dbg_value(ptr %0, !196, !DIExpression(), !510)
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !511, !tbaa !419
  %3 = icmp eq i32 %2, -1, !dbg !512
  br i1 %3, label %4, label %16, !dbg !513

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.22) #16, !dbg !514
    #dbg_value(ptr %5, !197, !DIExpression(), !515)
  %6 = icmp eq ptr %5, null, !dbg !516
  br i1 %6, label %14, label %7, !dbg !517

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !518, !tbaa !519
  %9 = icmp eq i8 %8, 0, !dbg !520
  br i1 %9, label %14, label %10, !dbg !521

10:                                               ; preds = %7
    #dbg_value(ptr %5, !522, !DIExpression(), !529)
    #dbg_value(ptr @.str.23, !528, !DIExpression(), !529)
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.23) #18, !dbg !531
  %12 = icmp eq i32 %11, 0, !dbg !532
  %13 = zext i1 %12 to i32, !dbg !533
  br label %14, !dbg !534

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !535, !tbaa !419
  br label %16, !dbg !536

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !537
  %18 = icmp eq i32 %17, 0, !dbg !539
  br i1 %18, label %19, label %114, !dbg !540

19:                                               ; preds = %16
    #dbg_value(i8 1, !200, !DIExpression(), !510)
  %20 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.24) #18, !dbg !541
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 %20, !dbg !542
    #dbg_value(ptr %21, !201, !DIExpression(), !510)
  %22 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #18, !dbg !543
    #dbg_value(ptr %22, !202, !DIExpression(), !510)
  %23 = icmp eq ptr %22, null, !dbg !544
  br i1 %23, label %48, label %24, !dbg !545

24:                                               ; preds = %19
    #dbg_value(ptr %21, !203, !DIExpression(), !546)
    #dbg_value(i64 0, !207, !DIExpression(), !546)
  %25 = icmp ult ptr %21, %22
  br i1 %25, label %26, label %48, !dbg !547

26:                                               ; preds = %24
  %27 = tail call ptr @__ctype_b_loc() #19, !dbg !510
  %28 = load ptr, ptr %27, align 8, !tbaa !548
  br label %29, !dbg !550

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %21, %26 ], [ %32, %29 ]
  %31 = phi i64 [ 0, %26 ], [ %41, %29 ]
    #dbg_value(ptr %30, !203, !DIExpression(), !546)
    #dbg_value(i64 %31, !207, !DIExpression(), !546)
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 1, !dbg !551
    #dbg_value(ptr %32, !203, !DIExpression(), !546)
  %33 = load i8, ptr %30, align 1, !dbg !552, !tbaa !519
  %34 = sext i8 %33 to i64, !dbg !553
  %35 = getelementptr inbounds i16, ptr %28, i64 %34, !dbg !553
  %36 = load i16, ptr %35, align 2, !dbg !553, !tbaa !554
  %37 = freeze i16 %36, !dbg !556
  %38 = lshr i16 %37, 13, !dbg !556
  %39 = and i16 %38, 1, !dbg !556
  %40 = zext nneg i16 %39 to i64, !dbg !556
  %41 = add i64 %31, %40, !dbg !557
    #dbg_value(i64 %41, !207, !DIExpression(), !546)
  %42 = icmp ult ptr %32, %22, !dbg !558
  %43 = icmp samesign ult i64 %41, 2, !dbg !559
  %44 = select i1 %42, i1 %43, i1 false, !dbg !559
  br i1 %44, label %29, label %45, !dbg !560, !llvm.loop !561

45:                                               ; preds = %29
  %46 = icmp ne i64 %41, 2, !dbg !564
  %47 = select i1 %46, ptr %22, ptr %21, !dbg !566
  br label %48, !dbg !566

48:                                               ; preds = %45, %19, %24
  %49 = phi ptr [ %21, %19 ], [ %22, %24 ], [ %47, %45 ], !dbg !510
  %50 = phi i1 [ false, %19 ], [ true, %24 ], [ %46, %45 ], !dbg !510
    #dbg_value(i8 poison, !200, !DIExpression(), !510)
    #dbg_value(ptr %49, !202, !DIExpression(), !510)
  %51 = tail call i64 @strcspn(ptr noundef nonnull %49, ptr noundef nonnull @.str.25) #18, !dbg !567
    #dbg_value(i64 %51, !208, !DIExpression(), !510)
  %52 = getelementptr inbounds nuw i8, ptr %49, i64 %51, !dbg !568
    #dbg_value(ptr %52, !209, !DIExpression(), !510)
  br label %53, !dbg !569

53:                                               ; preds = %84, %48
  %54 = phi ptr [ %52, %48 ], [ %85, %84 ], !dbg !510
  %55 = phi i1 [ %50, %48 ], [ %63, %84 ], !dbg !510
    #dbg_value(i8 poison, !200, !DIExpression(), !510)
    #dbg_value(ptr %54, !209, !DIExpression(), !510)
  %56 = load i8, ptr %54, align 1, !dbg !570, !tbaa !519
  switch i8 %56, label %62 [
    i8 0, label %86
    i8 10, label %86
    i8 45, label %57
  ], !dbg !571

57:                                               ; preds = %53
  %58 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !572
  %59 = load i8, ptr %58, align 1, !dbg !572, !tbaa !519
  %60 = icmp ne i8 %59, 45, !dbg !575
  %61 = select i1 %60, i1 %55, i1 false, !dbg !576
  br label %62, !dbg !576

62:                                               ; preds = %57, %53
  %63 = phi i1 [ %55, %53 ], [ %61, %57 ], !dbg !510
    #dbg_value(i8 poison, !200, !DIExpression(), !510)
  %64 = tail call ptr @__ctype_b_loc() #19, !dbg !577
  %65 = load ptr, ptr %64, align 8, !dbg !577, !tbaa !548
  %66 = sext i8 %56 to i64, !dbg !577
  %67 = getelementptr inbounds i16, ptr %65, i64 %66, !dbg !577
  %68 = load i16, ptr %67, align 2, !dbg !577, !tbaa !554
  %69 = and i16 %68, 8192, !dbg !577
  %70 = icmp eq i16 %69, 0, !dbg !579
  br i1 %70, label %84, label %71, !dbg !580

71:                                               ; preds = %62
  %72 = icmp eq i8 %56, 9, !dbg !581
  br i1 %72, label %86, label %73, !dbg !584

73:                                               ; preds = %71
  %74 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !585
  %75 = load i8, ptr %74, align 1, !dbg !585, !tbaa !519
  %76 = sext i8 %75 to i64, !dbg !586
  %77 = getelementptr inbounds i16, ptr %65, i64 %76, !dbg !586
  %78 = load i16, ptr %77, align 2, !dbg !586, !tbaa !554
  %79 = and i16 %78, 8192, !dbg !586
  %80 = icmp eq i16 %79, 0, !dbg !587
  %81 = icmp eq i8 %75, 45
  %82 = or i1 %63, %81
  %83 = select i1 %80, i1 %82, i1 false, !dbg !588
  br i1 %83, label %84, label %86, !dbg !588

84:                                               ; preds = %73, %62
  %85 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !589
    #dbg_value(ptr %85, !209, !DIExpression(), !510)
  br label %53, !dbg !569, !llvm.loop !590

86:                                               ; preds = %53, %53, %71, %73
  %87 = ptrtoint ptr %21 to i64, !dbg !592
  %88 = load ptr, ptr @stdout, align 8, !dbg !593, !tbaa !434
  %89 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %0, i64 noundef 1, i64 noundef %20, ptr noundef %88), !dbg !594
    #dbg_value(ptr @.str.3, !522, !DIExpression(), !595)
    #dbg_value(ptr poison, !528, !DIExpression(), !595)
    #dbg_value(ptr @.str.3, !522, !DIExpression(), !597)
    #dbg_value(ptr poison, !528, !DIExpression(), !597)
    #dbg_value(ptr @.str.3, !522, !DIExpression(), !599)
    #dbg_value(ptr poison, !528, !DIExpression(), !599)
    #dbg_value(ptr @.str.3, !522, !DIExpression(), !601)
    #dbg_value(ptr poison, !528, !DIExpression(), !601)
    #dbg_value(ptr @.str.3, !522, !DIExpression(), !603)
    #dbg_value(ptr poison, !528, !DIExpression(), !603)
    #dbg_value(ptr @.str.3, !522, !DIExpression(), !605)
    #dbg_value(ptr poison, !528, !DIExpression(), !605)
    #dbg_value(ptr @.str.3, !522, !DIExpression(), !607)
    #dbg_value(ptr poison, !528, !DIExpression(), !607)
    #dbg_value(ptr @.str.3, !522, !DIExpression(), !609)
    #dbg_value(ptr poison, !528, !DIExpression(), !609)
    #dbg_value(ptr @.str.3, !522, !DIExpression(), !611)
    #dbg_value(ptr poison, !528, !DIExpression(), !611)
    #dbg_value(ptr @.str.3, !522, !DIExpression(), !613)
    #dbg_value(ptr poison, !528, !DIExpression(), !613)
    #dbg_value(ptr @.str.3, !266, !DIExpression(), !510)
  %90 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(7) @.str.39, i64 noundef 6) #18, !dbg !615
  %91 = icmp eq i32 %90, 0, !dbg !617
  br i1 %91, label %95, label %92, !dbg !618

92:                                               ; preds = %86
  %93 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(10) @.str.40, i64 noundef 9) #18, !dbg !619
  %94 = icmp eq i32 %93, 0, !dbg !620
  br i1 %94, label %95, label %98, !dbg !621

95:                                               ; preds = %92, %86
  %96 = trunc i64 %51 to i32, !dbg !622
  %97 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %96, ptr noundef nonnull %49) #16, !dbg !624
  br label %101, !dbg !625

98:                                               ; preds = %92
  %99 = trunc i64 %51 to i32, !dbg !626
  %100 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, i32 noundef %99, ptr noundef nonnull %49) #16, !dbg !628
  br label %101

101:                                              ; preds = %98, %95
  %102 = load ptr, ptr @stdout, align 8, !dbg !629, !tbaa !434
  %103 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %102), !dbg !630
  %104 = load ptr, ptr @stdout, align 8, !dbg !631, !tbaa !434
  %105 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %104), !dbg !632
  %106 = ptrtoint ptr %54 to i64, !dbg !633
  %107 = sub i64 %106, %87, !dbg !633
  %108 = load ptr, ptr @stdout, align 8, !dbg !634, !tbaa !434
  %109 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %21, i64 noundef 1, i64 noundef %107, ptr noundef %108), !dbg !635
  %110 = load ptr, ptr @stdout, align 8, !dbg !636, !tbaa !434
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %110), !dbg !637
  %112 = load ptr, ptr @stdout, align 8, !dbg !638, !tbaa !434
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %112), !dbg !639
  br label %114, !dbg !640

114:                                              ; preds = %16, %101
  %115 = phi ptr [ %54, %101 ], [ %0, %16 ]
  %116 = load ptr, ptr @stdout, align 8, !dbg !510, !tbaa !434
  %117 = tail call i32 @fputs_unlocked(ptr noundef %115, ptr noundef %116), !dbg !510
  ret void, !dbg !641
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #6 !dbg !642 {
  %3 = alloca %struct.__mbstate_t, align 4, !DIAssignID !653
    #dbg_assign(i1 poison, !654, !DIExpression(), !653, ptr %3, !DIExpression(), !686)
  %4 = alloca i32, align 4, !DIAssignID !718
    #dbg_value(i32 %0, !647, !DIExpression(), !719)
    #dbg_value(ptr %1, !648, !DIExpression(), !719)
    #dbg_value(ptr @.str.9, !650, !DIExpression(), !719)
  %5 = load ptr, ptr %1, align 8, !dbg !720, !tbaa !437
  tail call void @set_program_name(ptr noundef %5) #16, !dbg !721
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.10) #16, !dbg !722
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #16, !dbg !723
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.11) #16, !dbg !724
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #16, !dbg !725
  br label %10, !dbg !726

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %18, %14 ], [ @.str.9, %2 ]
  br label %12, !dbg !726

12:                                               ; preds = %21, %10
    #dbg_value(ptr %11, !650, !DIExpression(), !719)
  %13 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @longopts, ptr noundef null) #16, !dbg !727
    #dbg_value(i32 %13, !649, !DIExpression(), !719)
  switch i32 %13, label %28 [
    i32 -1, label %29
    i32 100, label %14
    i32 115, label %19
    i32 122, label %20
    i32 -130, label %22
    i32 -131, label %23
  ], !dbg !728

14:                                               ; preds = %12
  %15 = load ptr, ptr @optarg, align 8, !dbg !729, !tbaa !437
  %16 = load i8, ptr %15, align 1, !dbg !729, !tbaa !519
  %17 = icmp eq i8 %16, 0, !dbg !732
  %18 = select i1 %17, ptr @.str.14, ptr %15, !dbg !733
    #dbg_value(ptr %18, !650, !DIExpression(), !719)
  br label %10, !dbg !734, !llvm.loop !735

19:                                               ; preds = %12
  store i1 true, ptr @serial_merge, align 1, !dbg !737
  br label %21, !dbg !738

20:                                               ; preds = %12
  store i1 true, ptr @line_delim, align 1, !dbg !739
  br label %21, !dbg !740

21:                                               ; preds = %20, %19
  br label %12, !dbg !727, !llvm.loop !735

22:                                               ; preds = %12
  tail call void @usage(i32 noundef 0) #20, !dbg !741
  unreachable, !dbg !741

23:                                               ; preds = %12
  %24 = load ptr, ptr @stdout, align 8, !dbg !742, !tbaa !434
  %25 = load ptr, ptr @Version, align 8, !dbg !742, !tbaa !437
  %26 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16) #16, !dbg !743
  %27 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #16, !dbg !743
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef null) #16, !dbg !742
  tail call void @exit(i32 noundef 0) #17, !dbg !742
  unreachable, !dbg !742

28:                                               ; preds = %12
  tail call void @usage(i32 noundef 1) #20, !dbg !744
  unreachable, !dbg !744

29:                                               ; preds = %12
  %30 = load i32, ptr @optind, align 4, !dbg !745, !tbaa !419
  %31 = sub nsw i32 %0, %30, !dbg !746
    #dbg_value(i32 %31, !651, !DIExpression(), !719)
  %32 = icmp eq i32 %31, 0, !dbg !747
  br i1 %32, label %33, label %36, !dbg !749

33:                                               ; preds = %29
  %34 = sext i32 %30 to i64, !dbg !750
  %35 = getelementptr inbounds ptr, ptr %1, i64 %34, !dbg !750
  store ptr @.str.18, ptr %35, align 8, !dbg !752, !tbaa !437
    #dbg_value(i32 1, !651, !DIExpression(), !719)
  br label %36, !dbg !753

36:                                               ; preds = %33, %29
  %37 = phi i32 [ 1, %33 ], [ %31, %29 ], !dbg !719
    #dbg_value(i32 %37, !651, !DIExpression(), !719)
    #dbg_value(ptr %11, !709, !DIExpression(), !754)
  %38 = tail call noalias nonnull ptr @xstrdup(ptr noundef %11) #16, !dbg !755
    #dbg_value(ptr %38, !710, !DIExpression(), !754)
    #dbg_value(i8 0, !711, !DIExpression(), !754)
  store ptr %38, ptr @delims, align 8, !dbg !756, !tbaa !437
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #18, !dbg !757
  %40 = tail call i64 @llvm.umax.i64(i64 %39, i64 1), !dbg !758
  %41 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %40, i64 noundef 8) #21, !dbg !759
  store ptr %41, ptr @delim_lens, align 8, !dbg !760, !tbaa !761
    #dbg_value(ptr %11, !712, !DIExpression(), !754)
    #dbg_value(i64 0, !713, !DIExpression(), !754)
  %42 = load i8, ptr %11, align 1, !dbg !763, !tbaa !519
  %43 = icmp eq i8 %42, 0, !dbg !764
  br i1 %43, label %44, label %45, !dbg !765

44:                                               ; preds = %36
    #dbg_value(i8 poison, !711, !DIExpression(), !754)
  store i8 0, ptr %38, align 1, !dbg !766, !tbaa !519
  store i64 0, ptr %41, align 8, !dbg !767, !tbaa !770
    #dbg_value(i64 1, !713, !DIExpression(), !754)
  br label %121, !dbg !772

45:                                               ; preds = %36, %76
  %46 = phi ptr [ %77, %76 ], [ %41, %36 ]
  %47 = phi ptr [ %78, %76 ], [ %41, %36 ]
  %48 = phi i8 [ %82, %76 ], [ %42, %36 ]
  %49 = phi ptr [ %80, %76 ], [ %38, %36 ]
  %50 = phi ptr [ %79, %76 ], [ %11, %36 ]
  %51 = phi i64 [ %81, %76 ], [ 0, %36 ]
    #dbg_value(ptr %49, !710, !DIExpression(), !754)
    #dbg_value(ptr %50, !712, !DIExpression(), !754)
    #dbg_value(i64 %51, !713, !DIExpression(), !754)
  %52 = icmp eq i8 %48, 92, !dbg !773
  br i1 %52, label %53, label %85, !dbg !775

53:                                               ; preds = %45
  %54 = getelementptr inbounds nuw i8, ptr %50, i64 1, !dbg !776
    #dbg_value(ptr %54, !712, !DIExpression(), !754)
  %55 = load i8, ptr %54, align 1, !dbg !778, !tbaa !519
  switch i8 %55, label %56 [
    i8 0, label %114
    i8 48, label %70
  ], !dbg !780

56:                                               ; preds = %53
  %57 = sext i8 %55 to i32, !dbg !778
  %58 = add nsw i32 %57, -92, !dbg !781
  %59 = call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 31), !dbg !781
  %60 = icmp ult i32 %59, 14, !dbg !781
  %61 = trunc i32 %59 to i16, !dbg !784
  %62 = lshr i16 14889, %61, !dbg !784
  %63 = trunc i16 %62 to i1, !dbg !784
  %64 = select i1 %60, i1 %63, i1 false, !dbg !781
  br i1 %64, label %65, label %85, !dbg !781

65:                                               ; preds = %56
  %66 = zext nneg i32 %59 to i64, !dbg !781
  %67 = getelementptr inbounds nuw i8, ptr @switch.table.main, i64 %66, !dbg !781
  %68 = load i8, ptr %67, align 1, !dbg !781
  store i8 %68, ptr %49, align 1, !dbg !785, !tbaa !519
  %69 = getelementptr inbounds nuw i8, ptr %49, i64 1, !dbg !785
    #dbg_value(ptr %69, !710, !DIExpression(), !754)
    #dbg_value(ptr %50, !712, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !754)
    #dbg_value(i64 %51, !713, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !754)
  br label %70

70:                                               ; preds = %65, %53
  %71 = phi ptr [ %46, %65 ], [ %47, %53 ]
  %72 = phi i64 [ 1, %65 ], [ 0, %53 ]
  %73 = phi ptr [ %69, %65 ], [ %49, %53 ], !dbg !754
  %74 = getelementptr inbounds nuw i64, ptr %71, i64 %51, !dbg !787
  store i64 %72, ptr %74, align 8, !dbg !787, !tbaa !770
  %75 = getelementptr inbounds nuw i8, ptr %50, i64 2, !dbg !787
    #dbg_value(ptr %73, !710, !DIExpression(), !754)
    #dbg_value(ptr %75, !712, !DIExpression(), !754)
    #dbg_value(i64 %51, !713, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !754)
  br label %76, !dbg !788

76:                                               ; preds = %108, %70
  %77 = phi ptr [ %46, %70 ], [ %112, %108 ]
  %78 = phi ptr [ %71, %70 ], [ %112, %108 ]
  %79 = phi ptr [ %75, %70 ], [ %111, %108 ]
  %80 = phi ptr [ %73, %70 ], [ %110, %108 ]
  %81 = add nuw nsw i64 %51, 1, !dbg !789
    #dbg_value(ptr %80, !710, !DIExpression(), !754)
    #dbg_value(ptr %79, !712, !DIExpression(), !754)
    #dbg_value(i64 %81, !713, !DIExpression(), !754)
  %82 = load i8, ptr %79, align 1, !dbg !763, !tbaa !519
  %83 = icmp eq i8 %82, 0, !dbg !790
  br i1 %83, label %84, label %45, !dbg !791, !llvm.loop !792

84:                                               ; preds = %76
    #dbg_value(i8 poison, !711, !DIExpression(), !754)
  store i8 0, ptr %80, align 1, !dbg !795, !tbaa !519
    #dbg_value(i64 %81, !713, !DIExpression(), !754)
  br label %121, !dbg !796

85:                                               ; preds = %56, %45
  %86 = phi i8 [ %48, %45 ], [ %55, %56 ], !dbg !797
  %87 = phi ptr [ %50, %45 ], [ %54, %56 ], !dbg !754
    #dbg_value(ptr %87, !712, !DIExpression(), !754)
    #dbg_label(!714, !799)
    #dbg_value(ptr %87, !702, !DIExpression(), !800)
    #dbg_value(ptr %87, !692, !DIExpression(), !801)
    #dbg_value(i8 0, !693, !DIExpression(), !801)
    #dbg_value(i8 %86, !802, !DIExpression(), !807)
  %88 = icmp sgt i8 %86, -1, !dbg !809
  br i1 %88, label %108, label %89, !dbg !810

89:                                               ; preds = %85
  %90 = getelementptr inbounds nuw i8, ptr %87, i64 1, !dbg !811
    #dbg_value(i32 0, !695, !DIExpression(), !812)
    #dbg_value(ptr %90, !694, !DIExpression(), !801)
  %91 = load i8, ptr %90, align 1, !dbg !813, !tbaa !519
  %92 = icmp ne i8 %91, 0, !dbg !815
  %93 = zext i1 %92 to i64, !dbg !816
  %94 = getelementptr inbounds nuw i8, ptr %90, i64 %93, !dbg !817
    #dbg_value(ptr %94, !694, !DIExpression(), !801)
    #dbg_value(i32 1, !695, !DIExpression(), !812)
  %95 = load i8, ptr %94, align 1, !dbg !813, !tbaa !519
  %96 = icmp ne i8 %95, 0, !dbg !815
  %97 = zext i1 %96 to i64, !dbg !816
  %98 = getelementptr inbounds nuw i8, ptr %94, i64 %97, !dbg !818
    #dbg_value(ptr %98, !694, !DIExpression(), !801)
    #dbg_value(i32 2, !695, !DIExpression(), !812)
  %99 = load i8, ptr %98, align 1, !dbg !813, !tbaa !519
  %100 = icmp ne i8 %99, 0, !dbg !815
  %101 = zext i1 %100 to i64, !dbg !816
    #dbg_value(!DIArgList(ptr %98, i64 %101), !694, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !801)
    #dbg_value(i32 3, !695, !DIExpression(), !812)
    #dbg_assign(i1 poison, !672, !DIExpression(), !718, ptr %4, !DIExpression(), !686)
    #dbg_value(ptr %87, !669, !DIExpression(), !686)
    #dbg_value(!DIArgList(ptr %98, i64 %101), !670, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !686)
    #dbg_value(i8 %86, !671, !DIExpression(), !686)
    #dbg_value(i8 %86, !802, !DIExpression(), !819)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !dbg !822
  store i32 0, ptr %3, align 4, !dbg !823, !tbaa !824, !DIAssignID !826
    #dbg_assign(i32 0, !654, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !826, ptr %3, !DIExpression(), !686)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !dbg !827
  %102 = select i1 %92, i64 2, i64 1, !dbg !828
  %103 = add nuw nsw i64 %102, %97, !dbg !828
  %104 = add nuw nsw i64 %103, %101, !dbg !828
  %105 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %87, i64 noundef %104, ptr noundef nonnull %3) #16, !dbg !829
    #dbg_value(i64 %105, !673, !DIExpression(), !686)
  %106 = icmp slt i64 %105, 0, !dbg !830
  %107 = select i1 %106, i64 1, i64 %105, !dbg !832, !prof !833
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !dbg !834
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !dbg !834
  br label %108

108:                                              ; preds = %89, %85
  %109 = phi i64 [ %107, %89 ], [ 1, %85 ], !dbg !801
    #dbg_value(i64 %109, !715, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40), !789)
    #dbg_value(i64 %109, !715, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8), !789)
    #dbg_value(i64 %109, !715, !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16), !789)
    #dbg_value(ptr %49, !835, !DIExpression(), !847)
    #dbg_value(ptr %87, !845, !DIExpression(), !847)
    #dbg_value(i64 %109, !846, !DIExpression(), !847)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %49, ptr noundef nonnull align 1 %87, i64 noundef range(i64 0, 256) %109, i1 noundef false) #16, !dbg !849
  %110 = getelementptr inbounds i8, ptr %49, i64 %109, !dbg !849
    #dbg_value(ptr %110, !710, !DIExpression(), !754)
  %111 = getelementptr inbounds nuw i8, ptr %87, i64 %109, !dbg !850
    #dbg_value(ptr %111, !712, !DIExpression(), !754)
  %112 = load ptr, ptr @delim_lens, align 8, !dbg !851, !tbaa !761
    #dbg_value(i64 %51, !713, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !754)
  %113 = getelementptr inbounds nuw i64, ptr %112, i64 %51, !dbg !851
  store i64 %109, ptr %113, align 8, !dbg !852, !tbaa !770
  br label %76, !dbg !793

114:                                              ; preds = %53
    #dbg_value(i8 poison, !711, !DIExpression(), !754)
  store i8 0, ptr %49, align 1, !dbg !853, !tbaa !519
  %115 = icmp eq i64 %51, 0, !dbg !854
  br i1 %115, label %116, label %117, !dbg !855

116:                                              ; preds = %114
  store i64 0, ptr %46, align 8, !dbg !856, !tbaa !770
    #dbg_value(i64 1, !713, !DIExpression(), !754)
  br label %117, !dbg !857

117:                                              ; preds = %114, %116
  %118 = phi i64 [ 1, %116 ], [ %51, %114 ], !dbg !858
  store i64 %118, ptr @num_delims, align 8, !dbg !858, !tbaa !770
  %119 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #16, !dbg !859
  %120 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 6, ptr noundef nonnull %11) #16, !dbg !861
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %119, ptr noundef %120) #16, !dbg !862
  unreachable, !dbg !862

121:                                              ; preds = %44, %84
  %122 = phi i64 [ %81, %84 ], [ 1, %44 ], !dbg !863
  store i64 %122, ptr @num_delims, align 8, !dbg !863, !tbaa !770
  %123 = load i1, ptr @serial_merge, align 1, !dbg !864
  %124 = select i1 %123, ptr @paste_serial, ptr @paste_parallel, !dbg !864
  %125 = sext i32 %37 to i64, !dbg !865
  %126 = load i32, ptr @optind, align 4, !dbg !866, !tbaa !419
  %127 = sext i32 %126 to i64, !dbg !867
  %128 = getelementptr inbounds ptr, ptr %1, i64 %127, !dbg !867
  %129 = call zeroext i1 %124(i64 noundef %125, ptr noundef nonnull %128) #16, !dbg !868, !callees !869
    #dbg_value(i1 %129, !652, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !719)
  %130 = load ptr, ptr @delims, align 8, !dbg !870, !tbaa !437
  call void @free(ptr noundef %130) #16, !dbg !871
  %131 = load ptr, ptr @delim_lens, align 8, !dbg !872, !tbaa !761
  call void @free(ptr noundef %131) #16, !dbg !873
  %132 = load i1, ptr @have_read_stdin, align 1, !dbg !874
  br i1 %132, label %133, label %140, !dbg !876

133:                                              ; preds = %121
  %134 = load ptr, ptr @stdin, align 8, !dbg !877, !tbaa !434
  %135 = call i32 @rpl_fclose(ptr noundef %134) #16, !dbg !878
  %136 = icmp eq i32 %135, -1, !dbg !879
  br i1 %136, label %137, label %140, !dbg !880

137:                                              ; preds = %133
  %138 = tail call ptr @__errno_location() #19, !dbg !881
  %139 = load i32, ptr %138, align 4, !dbg !881, !tbaa !419
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %139, ptr noundef nonnull @.str.18) #16, !dbg !882
  unreachable, !dbg !882

140:                                              ; preds = %133, %121
  %141 = xor i1 %129, true, !dbg !883
  %142 = zext i1 %141 to i32, !dbg !883
  ret i32 %142, !dbg !884
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

declare !dbg !885 void @set_program_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !887 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !891 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !894 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !897 i32 @atexit(ptr noundef) local_unnamed_addr #3

declare void @close_stdout() #1

; Function Attrs: nounwind
declare !dbg !902 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !908 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !912 ptr @proper_name_lite(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !916 void @error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !920 ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @paste_serial(i64 noundef %0, ptr noundef readonly captures(none) %1) unnamed_addr #6 !dbg !923 {
    #dbg_value(i64 %0, !927, !DIExpression(), !940)
    #dbg_value(ptr %1, !928, !DIExpression(), !940)
    #dbg_value(i8 poison, !929, !DIExpression(), !940)
  %3 = icmp eq i64 %0, 0, !dbg !941
  br i1 %3, label %203, label %4, !dbg !942

4:                                                ; preds = %2, %198
  %5 = phi i64 [ %200, %198 ], [ %0, %2 ]
  %6 = phi ptr [ %201, %198 ], [ %1, %2 ]
  %7 = phi i1 [ %199, %198 ], [ true, %2 ]
    #dbg_value(i64 %5, !927, !DIExpression(), !940)
    #dbg_value(ptr %6, !928, !DIExpression(), !940)
  %8 = load ptr, ptr %6, align 8, !dbg !943, !tbaa !437
    #dbg_value(ptr %8, !522, !DIExpression(), !944)
    #dbg_value(ptr @.str.18, !528, !DIExpression(), !944)
  %9 = load i8, ptr %8, align 1, !dbg !946
  %10 = icmp eq i8 %9, 45, !dbg !946
  br i1 %10, label %11, label %17, !dbg !946

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 1, !dbg !946
  %13 = load i8, ptr %12, align 1, !dbg !946
  %14 = icmp eq i8 %13, 0, !dbg !947
    #dbg_value(i1 %14, !937, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !948)
  br i1 %14, label %15, label %17, !dbg !949

15:                                               ; preds = %11
  store i1 true, ptr @have_read_stdin, align 1, !dbg !951
  %16 = load ptr, ptr @stdin, align 8, !dbg !953, !tbaa !434
    #dbg_value(ptr %16, !932, !DIExpression(), !940)
  br label %24, !dbg !954

17:                                               ; preds = %4, %11
  %18 = tail call noalias ptr @rpl_fopen(ptr noundef nonnull %8, ptr noundef nonnull @.str.61) #16, !dbg !955
    #dbg_value(ptr %18, !932, !DIExpression(), !940)
  %19 = icmp eq ptr %18, null, !dbg !957
  br i1 %19, label %20, label %23, !dbg !959

20:                                               ; preds = %17
  %21 = tail call ptr @__errno_location() #19, !dbg !960
  %22 = load i32, ptr %21, align 4, !dbg !960, !tbaa !419
    #dbg_value(i8 0, !929, !DIExpression(), !940)
  br label %194, !dbg !962

23:                                               ; preds = %17
  tail call void @fadvise(ptr noundef nonnull %18, i32 noundef 2) #16, !dbg !963
  br label %24

24:                                               ; preds = %23, %15
  %25 = phi i1 [ true, %15 ], [ false, %23 ]
  %26 = phi ptr [ %16, %15 ], [ %18, %23 ], !dbg !964
    #dbg_value(ptr %26, !932, !DIExpression(), !940)
    #dbg_value(i64 0, !938, !DIExpression(), !948)
    #dbg_value(i64 0, !939, !DIExpression(), !948)
    #dbg_value(ptr %26, !965, !DIExpression(), !971)
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 8, !dbg !973
  %28 = load ptr, ptr %27, align 8, !dbg !973, !tbaa !974
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 16, !dbg !973
  %30 = load ptr, ptr %29, align 8, !dbg !973, !tbaa !979
  %31 = icmp ult ptr %28, %30, !dbg !973
  br i1 %31, label %32, label %37, !dbg !980, !prof !981

32:                                               ; preds = %24
  %33 = getelementptr inbounds nuw i8, ptr %28, i64 1, !dbg !982
  store ptr %33, ptr %27, align 8, !dbg !983, !tbaa !974
  %34 = load i8, ptr %28, align 1, !dbg !973, !tbaa !519
  %35 = zext i8 %34 to i32, !dbg !973
    #dbg_value(i32 %35, !931, !DIExpression(), !940)
  %36 = tail call ptr @__errno_location() #19, !dbg !984
    #dbg_value(i32 poison, !933, !DIExpression(), !948)
  br label %41, !dbg !985

37:                                               ; preds = %24
  %38 = tail call i32 @__uflow(ptr noundef nonnull %26) #16, !dbg !973
    #dbg_value(i32 %38, !931, !DIExpression(), !940)
  %39 = tail call ptr @__errno_location() #19, !dbg !984
    #dbg_value(i32 poison, !933, !DIExpression(), !948)
  %40 = icmp eq i32 %38, -1, !dbg !987
  br i1 %40, label %44, label %41, !dbg !988

41:                                               ; preds = %32, %37
  %42 = phi ptr [ %36, %32 ], [ %39, %37 ]
  %43 = phi i32 [ %35, %32 ], [ %38, %37 ]
  br label %97, !dbg !989

44:                                               ; preds = %37
  %45 = load i32, ptr %39, align 4, !dbg !991, !tbaa !419
    #dbg_value(i32 %45, !933, !DIExpression(), !948)
    #dbg_value(i32 -1, !931, !DIExpression(), !940)
  %46 = load i1, ptr @line_delim, align 1, !dbg !992
  %47 = select i1 %46, i8 0, i8 10, !dbg !992
  %48 = zext nneg i8 %47 to i32, !dbg !992
  br label %152, !dbg !994

49:                                               ; preds = %115, %97
  %50 = phi i32 [ %98, %97 ], [ %62, %115 ], !dbg !948
    #dbg_value(i64 %100, !939, !DIExpression(), !948)
    #dbg_value(i64 %99, !938, !DIExpression(), !948)
    #dbg_value(i32 %50, !931, !DIExpression(), !940)
    #dbg_value(ptr %26, !965, !DIExpression(), !995)
  %51 = load ptr, ptr %27, align 8, !dbg !997, !tbaa !974
  %52 = load ptr, ptr %29, align 8, !dbg !997, !tbaa !979
  %53 = icmp ult ptr %51, %52, !dbg !997
  br i1 %53, label %54, label %58, !dbg !998, !prof !981

54:                                               ; preds = %49
  %55 = getelementptr inbounds nuw i8, ptr %51, i64 1, !dbg !999
  store ptr %55, ptr %27, align 8, !dbg !1000, !tbaa !974
  %56 = load i8, ptr %51, align 1, !dbg !997, !tbaa !519
  %57 = zext i8 %56 to i32, !dbg !997
    #dbg_value(i32 %57, !930, !DIExpression(), !940)
  br label %61, !dbg !1001

58:                                               ; preds = %49
  %59 = tail call i32 @__uflow(ptr noundef nonnull %26) #16, !dbg !997
    #dbg_value(i32 %59, !930, !DIExpression(), !940)
  %60 = icmp eq i32 %59, -1, !dbg !1002
  br i1 %60, label %124, label %61, !dbg !1001

61:                                               ; preds = %54, %58
  %62 = phi i32 [ %57, %54 ], [ %59, %58 ]
  %63 = load i1, ptr @line_delim, align 1, !dbg !1003
  %64 = select i1 %63, i32 0, i32 10, !dbg !1003
  %65 = icmp eq i32 %50, %64, !dbg !1006
  br i1 %65, label %66, label %101, !dbg !1007

66:                                               ; preds = %61
  %67 = load ptr, ptr @delim_lens, align 8, !dbg !1008, !tbaa !761
  %68 = getelementptr inbounds i64, ptr %67, i64 %99, !dbg !1008
  %69 = load i64, ptr %68, align 8, !dbg !1008, !tbaa !770
    #dbg_value(!DIArgList(ptr poison, i64 poison), !1010, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1021)
    #dbg_value(i64 %69, !1015, !DIExpression(), !1021)
  %70 = icmp eq i64 %69, 0, !dbg !1023
  br i1 %70, label %89, label %71, !dbg !1024

71:                                               ; preds = %66
  %72 = load ptr, ptr @delims, align 8, !dbg !1025, !tbaa !437
    #dbg_value(!DIArgList(ptr %72, i64 %100), !1010, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1021)
  %73 = getelementptr inbounds i8, ptr %72, i64 %100, !dbg !1026
    #dbg_value(ptr %73, !1010, !DIExpression(), !1021)
  %74 = load ptr, ptr @stdout, align 8, !dbg !1027, !tbaa !434
  %75 = tail call i64 @fwrite_unlocked(ptr noundef readonly %73, i64 noundef 1, i64 noundef %69, ptr noundef %74), !dbg !1028
  %76 = icmp eq i64 %75, %69, !dbg !1029
  br i1 %76, label %77, label %81, !dbg !1030

77:                                               ; preds = %71
  %78 = load ptr, ptr @delim_lens, align 8, !dbg !1031, !tbaa !761
  %79 = getelementptr inbounds i64, ptr %78, i64 %99
  %80 = load i64, ptr %79, align 8, !dbg !1031, !tbaa !770
  br label %89, !dbg !1030

81:                                               ; preds = %71
  %82 = load i32, ptr %42, align 4, !dbg !1032, !tbaa !419
    #dbg_value(i32 %82, !1035, !DIExpression(), !1037)
  %83 = load ptr, ptr @stdout, align 8, !dbg !1038, !tbaa !434
  %84 = tail call i32 @fflush_unlocked(ptr noundef %83) #16, !dbg !1039
  %85 = load ptr, ptr @stdout, align 8, !dbg !1040, !tbaa !434
  %86 = tail call i32 @fpurge(ptr noundef %85) #16, !dbg !1041
  %87 = load ptr, ptr @stdout, align 8, !dbg !1042, !tbaa !434
  tail call void @clearerr_unlocked(ptr noundef %87) #16, !dbg !1043
  %88 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #16, !dbg !1044
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %82, ptr noundef %88) #16, !dbg !1045
  unreachable, !dbg !1045

89:                                               ; preds = %77, %66
  %90 = phi i64 [ %80, %77 ], [ 0, %66 ], !dbg !1031
  %91 = add i64 %90, %100, !dbg !1046
    #dbg_value(i64 %91, !939, !DIExpression(), !948)
  %92 = add nsw i64 %99, 1, !dbg !1047
    #dbg_value(i64 %92, !938, !DIExpression(), !948)
  %93 = load i64, ptr @num_delims, align 8, !dbg !1049, !tbaa !770
  %94 = icmp eq i64 %92, %93, !dbg !1050
  %95 = select i1 %94, i64 0, i64 %92, !dbg !1051
  %96 = select i1 %94, i64 0, i64 %91, !dbg !1051
  br label %97, !dbg !1051, !llvm.loop !1052

97:                                               ; preds = %89, %41
  %98 = phi i32 [ %62, %89 ], [ %43, %41 ]
  %99 = phi i64 [ %95, %89 ], [ 0, %41 ]
  %100 = phi i64 [ %96, %89 ], [ 0, %41 ]
  br label %49, !dbg !989

101:                                              ; preds = %61
    #dbg_value(i32 %50, !1054, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1059)
    #dbg_value(i32 %50, !1061, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1066)
  %102 = load ptr, ptr @stdout, align 8, !dbg !1069, !tbaa !434
  %103 = getelementptr inbounds nuw i8, ptr %102, i64 40, !dbg !1070
  %104 = load ptr, ptr %103, align 8, !dbg !1070, !tbaa !1071
  %105 = getelementptr inbounds nuw i8, ptr %102, i64 48, !dbg !1070
  %106 = load ptr, ptr %105, align 8, !dbg !1070, !tbaa !1072
  %107 = icmp ult ptr %104, %106, !dbg !1070
  br i1 %107, label %108, label %111, !dbg !1073, !prof !981

108:                                              ; preds = %101
  %109 = trunc i32 %50 to i8, !dbg !1074
    #dbg_value(i8 %109, !1054, !DIExpression(), !1059)
    #dbg_value(i8 %109, !1061, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1066)
  %110 = getelementptr inbounds nuw i8, ptr %104, i64 1, !dbg !1075
  store ptr %110, ptr %103, align 8, !dbg !1076, !tbaa !1071
  store i8 %109, ptr %104, align 1, !dbg !1077, !tbaa !519
  br label %115, !dbg !1078

111:                                              ; preds = %101
  %112 = and i32 %50, 255, !dbg !1079
    #dbg_value(i32 %50, !1061, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1066)
  %113 = tail call i32 @__overflow(ptr noundef nonnull %102, i32 noundef %112) #16, !dbg !1070
  %114 = icmp slt i32 %113, 0, !dbg !1080
  br i1 %114, label %116, label %115, !dbg !1081

115:                                              ; preds = %111, %108
  br label %49, !dbg !997, !llvm.loop !1052

116:                                              ; preds = %111
  %117 = load i32, ptr %42, align 4, !dbg !1082, !tbaa !419
    #dbg_value(i32 %117, !1035, !DIExpression(), !1084)
  %118 = load ptr, ptr @stdout, align 8, !dbg !1085, !tbaa !434
  %119 = tail call i32 @fflush_unlocked(ptr noundef %118) #16, !dbg !1086
  %120 = load ptr, ptr @stdout, align 8, !dbg !1087, !tbaa !434
  %121 = tail call i32 @fpurge(ptr noundef %120) #16, !dbg !1088
  %122 = load ptr, ptr @stdout, align 8, !dbg !1089, !tbaa !434
  tail call void @clearerr_unlocked(ptr noundef %122) #16, !dbg !1090
  %123 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #16, !dbg !1091
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %117, ptr noundef %123) #16, !dbg !1092
  unreachable, !dbg !1092

124:                                              ; preds = %58
  %125 = load i32, ptr %42, align 4, !dbg !1093, !tbaa !419
    #dbg_value(i32 %125, !933, !DIExpression(), !948)
    #dbg_value(i32 %50, !1054, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1094)
    #dbg_value(i32 %50, !1061, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1096)
  %126 = load ptr, ptr @stdout, align 8, !dbg !1098, !tbaa !434
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 40, !dbg !1099
  %128 = load ptr, ptr %127, align 8, !dbg !1099, !tbaa !1071
  %129 = getelementptr inbounds nuw i8, ptr %126, i64 48, !dbg !1099
  %130 = load ptr, ptr %129, align 8, !dbg !1099, !tbaa !1072
  %131 = icmp ult ptr %128, %130, !dbg !1099
  br i1 %131, label %132, label %135, !dbg !1100, !prof !981

132:                                              ; preds = %124
  %133 = trunc i32 %50 to i8, !dbg !1101
    #dbg_value(i8 %133, !1054, !DIExpression(), !1094)
    #dbg_value(i8 %133, !1061, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1096)
  %134 = getelementptr inbounds nuw i8, ptr %128, i64 1, !dbg !1102
  store ptr %134, ptr %127, align 8, !dbg !1103, !tbaa !1071
  store i8 %133, ptr %128, align 1, !dbg !1104, !tbaa !519
  br label %147, !dbg !1105

135:                                              ; preds = %124
  %136 = and i32 %50, 255, !dbg !1106
    #dbg_value(i32 %50, !1061, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1096)
  %137 = tail call i32 @__overflow(ptr noundef nonnull %126, i32 noundef %136) #16, !dbg !1099
  %138 = icmp slt i32 %137, 0, !dbg !1107
  br i1 %138, label %139, label %147, !dbg !1108

139:                                              ; preds = %135
  %140 = load i32, ptr %42, align 4, !dbg !1109, !tbaa !419
    #dbg_value(i32 %140, !1035, !DIExpression(), !1111)
  %141 = load ptr, ptr @stdout, align 8, !dbg !1112, !tbaa !434
  %142 = tail call i32 @fflush_unlocked(ptr noundef %141) #16, !dbg !1113
  %143 = load ptr, ptr @stdout, align 8, !dbg !1114, !tbaa !434
  %144 = tail call i32 @fpurge(ptr noundef %143) #16, !dbg !1115
  %145 = load ptr, ptr @stdout, align 8, !dbg !1116, !tbaa !434
  tail call void @clearerr_unlocked(ptr noundef %145) #16, !dbg !1117
  %146 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #16, !dbg !1118
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %140, ptr noundef %146) #16, !dbg !1119
  unreachable, !dbg !1119

147:                                              ; preds = %135, %132
    #dbg_value(i32 %125, !933, !DIExpression(), !948)
    #dbg_value(i32 %50, !931, !DIExpression(), !940)
  %148 = load i1, ptr @line_delim, align 1, !dbg !992
  %149 = select i1 %148, i8 0, i8 10, !dbg !992
  %150 = zext nneg i8 %149 to i32, !dbg !992
  %151 = icmp eq i32 %50, %150, !dbg !1120
  br i1 %151, label %176, label %152, !dbg !1121

152:                                              ; preds = %44, %147
  %153 = phi ptr [ %39, %44 ], [ %42, %147 ]
  %154 = phi i32 [ %48, %44 ], [ %150, %147 ]
  %155 = phi i8 [ %47, %44 ], [ %149, %147 ]
  %156 = phi i32 [ %45, %44 ], [ %125, %147 ]
    #dbg_value(i8 %155, !1054, !DIExpression(), !1122)
    #dbg_value(i8 %155, !1061, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1124)
  %157 = load ptr, ptr @stdout, align 8, !dbg !1126, !tbaa !434
  %158 = getelementptr inbounds nuw i8, ptr %157, i64 40, !dbg !1127
  %159 = load ptr, ptr %158, align 8, !dbg !1127, !tbaa !1071
  %160 = getelementptr inbounds nuw i8, ptr %157, i64 48, !dbg !1127
  %161 = load ptr, ptr %160, align 8, !dbg !1127, !tbaa !1072
  %162 = icmp ult ptr %159, %161, !dbg !1127
  br i1 %162, label %163, label %165, !dbg !1128, !prof !981

163:                                              ; preds = %152
  %164 = getelementptr inbounds nuw i8, ptr %159, i64 1, !dbg !1129
  store ptr %164, ptr %158, align 8, !dbg !1130, !tbaa !1071
  store i8 %155, ptr %159, align 1, !dbg !1131, !tbaa !519
  br label %176, !dbg !1132

165:                                              ; preds = %152
    #dbg_value(i8 poison, !1061, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1124)
  %166 = tail call i32 @__overflow(ptr noundef nonnull %157, i32 noundef %154) #16, !dbg !1127
  %167 = icmp slt i32 %166, 0, !dbg !1133
  br i1 %167, label %168, label %176, !dbg !1134

168:                                              ; preds = %165
  %169 = load i32, ptr %153, align 4, !dbg !1135, !tbaa !419
    #dbg_value(i32 %169, !1035, !DIExpression(), !1137)
  %170 = load ptr, ptr @stdout, align 8, !dbg !1138, !tbaa !434
  %171 = tail call i32 @fflush_unlocked(ptr noundef %170) #16, !dbg !1139
  %172 = load ptr, ptr @stdout, align 8, !dbg !1140, !tbaa !434
  %173 = tail call i32 @fpurge(ptr noundef %172) #16, !dbg !1141
  %174 = load ptr, ptr @stdout, align 8, !dbg !1142, !tbaa !434
  tail call void @clearerr_unlocked(ptr noundef %174) #16, !dbg !1143
  %175 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #16, !dbg !1144
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %169, ptr noundef %175) #16, !dbg !1145
  unreachable, !dbg !1145

176:                                              ; preds = %165, %163, %147
  %177 = phi ptr [ %42, %147 ], [ %153, %163 ], [ %153, %165 ]
  %178 = phi i32 [ %125, %147 ], [ %156, %163 ], [ %156, %165 ]
    #dbg_value(ptr %26, !1146, !DIExpression(), !1149)
  %179 = load i32, ptr %26, align 8, !dbg !1152, !tbaa !1153
  %180 = and i32 %179, 32, !dbg !1154
  %181 = icmp eq i32 %180, 0, !dbg !1154
  %182 = select i1 %181, i32 0, i32 %178, !dbg !1155
    #dbg_value(i32 %182, !933, !DIExpression(), !948)
  br i1 %25, label %183, label %184, !dbg !1156

183:                                              ; preds = %176
  tail call void @clearerr_unlocked(ptr noundef nonnull %26) #16, !dbg !1158
  br label %191, !dbg !1158

184:                                              ; preds = %176
  %185 = tail call i32 @rpl_fclose(ptr noundef nonnull %26) #16, !dbg !1159
  %186 = icmp eq i32 %185, 0, !dbg !1161
  %187 = icmp ne i32 %182, 0
  %188 = select i1 %186, i1 true, i1 %187, !dbg !1162
  br i1 %188, label %191, label %189, !dbg !1162

189:                                              ; preds = %184
  %190 = load i32, ptr %177, align 4, !dbg !1163, !tbaa !419
    #dbg_value(i32 %190, !933, !DIExpression(), !948)
  br label %191, !dbg !1164

191:                                              ; preds = %184, %189, %183
  %192 = phi i32 [ %182, %183 ], [ %182, %184 ], [ %190, %189 ], !dbg !948
    #dbg_value(i32 %192, !933, !DIExpression(), !948)
  %193 = icmp eq i32 %192, 0, !dbg !1165
  br i1 %193, label %198, label %194, !dbg !1167

194:                                              ; preds = %191, %20
  %195 = phi i32 [ %22, %20 ], [ %192, %191 ]
  %196 = load ptr, ptr %6, align 8, !dbg !948, !tbaa !437
  %197 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %196) #16, !dbg !948
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %195, ptr noundef nonnull @.str.62, ptr noundef %197) #16, !dbg !948
  br label %198, !dbg !1168

198:                                              ; preds = %194, %191
  %199 = phi i1 [ %7, %191 ], [ false, %194 ], !dbg !948
    #dbg_value(i8 poison, !929, !DIExpression(), !940)
  %200 = add i64 %5, -1, !dbg !1168
    #dbg_value(i64 %200, !927, !DIExpression(), !940)
  %201 = getelementptr inbounds nuw i8, ptr %6, i64 8, !dbg !1169
    #dbg_value(ptr %201, !928, !DIExpression(), !940)
  %202 = icmp eq i64 %200, 0, !dbg !1170
  br i1 %202, label %203, label %4, !dbg !1171, !llvm.loop !1172

203:                                              ; preds = %198, %2
  %204 = phi i1 [ true, %2 ], [ %199, %198 ], !dbg !940
  ret i1 %204, !dbg !1175
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @paste_parallel(i64 noundef %0, ptr noundef readonly captures(none) %1) unnamed_addr #6 !dbg !1176 {
    #dbg_value(i64 %0, !1178, !DIExpression(), !1226)
    #dbg_value(ptr %1, !1179, !DIExpression(), !1226)
    #dbg_value(i8 1, !1180, !DIExpression(), !1226)
  %3 = add i64 %0, -1, !dbg !1227
  %4 = tail call i64 @__ctype_get_mb_cur_max() #16, !dbg !1228
  %5 = mul i64 %4, %3, !dbg !1229
  %6 = add i64 %5, 1, !dbg !1230
  %7 = tail call noalias nonnull ptr @xmalloc(i64 noundef %6) #22, !dbg !1231
    #dbg_value(ptr %7, !1181, !DIExpression(), !1226)
  %8 = add i64 %0, 1, !dbg !1232
  %9 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %8, i64 noundef 8) #21, !dbg !1233
    #dbg_value(ptr %9, !1182, !DIExpression(), !1226)
    #dbg_value(i64 0, !1184, !DIExpression(), !1226)
    #dbg_value(i8 poison, !1185, !DIExpression(), !1226)
  %10 = icmp eq i64 %0, 0, !dbg !1234
  br i1 %10, label %333, label %11, !dbg !1237

11:                                               ; preds = %2, %39
  %12 = phi i64 [ %41, %39 ], [ 0, %2 ]
  %13 = phi i1 [ %40, %39 ], [ false, %2 ]
    #dbg_value(i64 %12, !1184, !DIExpression(), !1226)
  %14 = getelementptr inbounds nuw ptr, ptr %1, i64 %12, !dbg !1238
  %15 = load ptr, ptr %14, align 8, !dbg !1238, !tbaa !437
    #dbg_value(ptr %15, !522, !DIExpression(), !1241)
    #dbg_value(ptr @.str.18, !528, !DIExpression(), !1241)
  %16 = load i8, ptr %15, align 1, !dbg !1243
  %17 = icmp eq i8 %16, 45, !dbg !1243
  br i1 %17, label %18, label %25, !dbg !1243

18:                                               ; preds = %11
  %19 = getelementptr inbounds nuw i8, ptr %15, i64 1, !dbg !1243
  %20 = load i8, ptr %19, align 1, !dbg !1243
  %21 = icmp eq i8 %20, 0, !dbg !1244
  br i1 %21, label %22, label %25, !dbg !1245

22:                                               ; preds = %18
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1246
  %23 = load ptr, ptr @stdin, align 8, !dbg !1248, !tbaa !434
  %24 = getelementptr inbounds nuw ptr, ptr %9, i64 %12, !dbg !1249
  store ptr %23, ptr %24, align 8, !dbg !1250, !tbaa !434
  br label %39, !dbg !1251

25:                                               ; preds = %11, %18
  %26 = tail call noalias ptr @rpl_fopen(ptr noundef nonnull %15, ptr noundef nonnull @.str.61) #16, !dbg !1252
  %27 = getelementptr inbounds nuw ptr, ptr %9, i64 %12, !dbg !1254
  store ptr %26, ptr %27, align 8, !dbg !1255, !tbaa !434
  %28 = icmp eq ptr %26, null, !dbg !1256
  br i1 %28, label %29, label %35, !dbg !1258

29:                                               ; preds = %25
  %30 = getelementptr inbounds nuw ptr, ptr %1, i64 %12
  %31 = tail call ptr @__errno_location() #19, !dbg !1259
  %32 = load i32, ptr %31, align 4, !dbg !1259, !tbaa !419
  %33 = load ptr, ptr %30, align 8, !dbg !1260, !tbaa !437
  %34 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %33) #16, !dbg !1261
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %32, ptr noundef nonnull @.str.62, ptr noundef %34) #16, !dbg !1262
  unreachable, !dbg !1262

35:                                               ; preds = %25
  %36 = tail call i32 @fileno_unlocked(ptr noundef nonnull %26) #16, !dbg !1263
  %37 = icmp eq i32 %36, 0, !dbg !1265
  %38 = select i1 %37, i1 true, i1 %13, !dbg !1266
    #dbg_value(i8 poison, !1185, !DIExpression(), !1226)
  tail call void @fadvise(ptr noundef nonnull %26, i32 noundef 2) #16, !dbg !1267
  br label %39

39:                                               ; preds = %22, %35
  %40 = phi i1 [ %13, %22 ], [ %38, %35 ], !dbg !1226
    #dbg_value(i8 poison, !1185, !DIExpression(), !1226)
  %41 = add nuw i64 %12, 1, !dbg !1268
    #dbg_value(i64 %41, !1184, !DIExpression(), !1226)
  %42 = icmp eq i64 %41, %0, !dbg !1269
  br i1 %42, label %43, label %11, !dbg !1270, !llvm.loop !1271

43:                                               ; preds = %39
  %44 = load i1, ptr @have_read_stdin, align 1
  %45 = select i1 %40, i1 %44, i1 false, !dbg !1274
  br i1 %45, label %46, label %52, !dbg !1274

46:                                               ; preds = %43
  %47 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #16, !dbg !1276
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %47) #16, !dbg !1277
  unreachable, !dbg !1277

48:                                               ; preds = %314, %299, %302
  %49 = phi i64 [ %54, %302 ], [ %54, %299 ], [ %320, %314 ], !dbg !1278
  %50 = phi i1 [ %53, %302 ], [ %53, %299 ], [ %321, %314 ], !dbg !1279
    #dbg_value(i8 poison, !1180, !DIExpression(), !1226)
    #dbg_value(i64 %49, !1184, !DIExpression(), !1226)
    #dbg_value(i32 poison, !1196, !DIExpression(), !1280)
    #dbg_value(i32 poison, !1193, !DIExpression(), !1280)
  %51 = icmp eq i64 %49, 0, !dbg !1281
  br i1 %51, label %333, label %325, !dbg !1282

52:                                               ; preds = %43, %325
  %53 = phi i1 [ %326, %325 ], [ true, %43 ]
  %54 = phi i64 [ %327, %325 ], [ %0, %43 ]
  %55 = phi i1 [ %328, %325 ], [ false, %43 ]
  %56 = phi i64 [ %329, %325 ], [ 0, %43 ]
  %57 = phi i64 [ %330, %325 ], [ 0, %43 ]
  %58 = phi i64 [ %331, %325 ], [ 0, %43 ]
  %59 = phi i64 [ %332, %325 ], [ 0, %43 ]
    #dbg_value(i64 %54, !1184, !DIExpression(), !1226)
    #dbg_value(i64 %56, !1188, !DIExpression(), !1283)
    #dbg_value(i64 %57, !1189, !DIExpression(), !1283)
    #dbg_value(i64 %58, !1191, !DIExpression(), !1284)
    #dbg_value(i64 %59, !1190, !DIExpression(), !1283)
    #dbg_value(i8 0, !1197, !DIExpression(), !1280)
  %60 = getelementptr inbounds nuw ptr, ptr %9, i64 %58, !dbg !1285
  %61 = load ptr, ptr %60, align 8, !dbg !1285, !tbaa !434
  %62 = icmp eq ptr %61, null, !dbg !1286
  br i1 %62, label %162, label %63, !dbg !1287

63:                                               ; preds = %52
    #dbg_value(ptr %61, !965, !DIExpression(), !1288)
  %64 = getelementptr inbounds nuw i8, ptr %61, i64 8, !dbg !1290
  %65 = load ptr, ptr %64, align 8, !dbg !1290, !tbaa !974
  %66 = getelementptr inbounds nuw i8, ptr %61, i64 16, !dbg !1290
  %67 = load ptr, ptr %66, align 8, !dbg !1290, !tbaa !979
  %68 = icmp ult ptr %65, %67, !dbg !1290
  br i1 %68, label %71, label %69, !dbg !1291, !prof !981

69:                                               ; preds = %63
  %70 = tail call i32 @__uflow(ptr noundef nonnull %61) #16, !dbg !1290
  br label %75, !dbg !1290

71:                                               ; preds = %63
  %72 = getelementptr inbounds nuw i8, ptr %65, i64 1, !dbg !1292
  store ptr %72, ptr %64, align 8, !dbg !1293, !tbaa !974
  %73 = load i8, ptr %65, align 1, !dbg !1290, !tbaa !519
  %74 = zext i8 %73 to i32, !dbg !1290
  br label %75, !dbg !1290

75:                                               ; preds = %69, %71
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !1294
    #dbg_value(i32 %76, !1193, !DIExpression(), !1280)
  %77 = tail call ptr @__errno_location() #19, !dbg !1295
  %78 = load i32, ptr %77, align 4, !dbg !1296, !tbaa !419
    #dbg_value(i32 %78, !1196, !DIExpression(), !1280)
  %79 = icmp ne i32 %76, -1, !dbg !1297
  %80 = icmp ne i64 %59, 0
  %81 = select i1 %79, i1 %80, i1 false, !dbg !1298
  br i1 %81, label %82, label %94, !dbg !1298

82:                                               ; preds = %75
  %83 = load ptr, ptr @stdout, align 8, !dbg !1299, !tbaa !434
  %84 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %7, i64 noundef 1, i64 noundef %59, ptr noundef %83), !dbg !1300
  %85 = icmp eq i64 %84, %59, !dbg !1301
  br i1 %85, label %94, label %86, !dbg !1302

86:                                               ; preds = %82
  %87 = load i32, ptr %77, align 4, !dbg !1303, !tbaa !419
    #dbg_value(i32 %87, !1035, !DIExpression(), !1305)
  %88 = load ptr, ptr @stdout, align 8, !dbg !1306, !tbaa !434
  %89 = tail call i32 @fflush_unlocked(ptr noundef %88) #16, !dbg !1307
  %90 = load ptr, ptr @stdout, align 8, !dbg !1308, !tbaa !434
  %91 = tail call i32 @fpurge(ptr noundef %90) #16, !dbg !1309
  %92 = load ptr, ptr @stdout, align 8, !dbg !1310, !tbaa !434
  tail call void @clearerr_unlocked(ptr noundef %92) #16, !dbg !1311
  %93 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #16, !dbg !1312
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %87, ptr noundef %93) #16, !dbg !1313
  unreachable, !dbg !1313

94:                                               ; preds = %82, %75
  %95 = phi i64 [ %59, %75 ], [ 0, %82 ], !dbg !1283
    #dbg_value(i64 %95, !1190, !DIExpression(), !1283)
    #dbg_value(i8 poison, !1197, !DIExpression(), !1280)
    #dbg_value(i32 %78, !1196, !DIExpression(), !1280)
    #dbg_value(i32 %76, !1193, !DIExpression(), !1280)
  %96 = icmp eq i32 %76, -1, !dbg !1314
  br i1 %96, label %137, label %97, !dbg !1315

97:                                               ; preds = %94, %134
  %98 = phi i32 [ %135, %134 ], [ %76, %94 ]
    #dbg_value(i32 %98, !1193, !DIExpression(), !1280)
    #dbg_value(i8 1, !1197, !DIExpression(), !1280)
  %99 = load i1, ptr @line_delim, align 1, !dbg !1316
  %100 = select i1 %99, i32 0, i32 10, !dbg !1316
  %101 = icmp eq i32 %98, %100, !dbg !1319
  br i1 %101, label %226, label %102, !dbg !1320

102:                                              ; preds = %97
    #dbg_value(i32 %98, !1054, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1321)
    #dbg_value(i32 %98, !1061, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1323)
  %103 = load ptr, ptr @stdout, align 8, !dbg !1325, !tbaa !434
  %104 = getelementptr inbounds nuw i8, ptr %103, i64 40, !dbg !1326
  %105 = load ptr, ptr %104, align 8, !dbg !1326, !tbaa !1071
  %106 = getelementptr inbounds nuw i8, ptr %103, i64 48, !dbg !1326
  %107 = load ptr, ptr %106, align 8, !dbg !1326, !tbaa !1072
  %108 = icmp ult ptr %105, %107, !dbg !1326
  br i1 %108, label %109, label %112, !dbg !1327, !prof !981

109:                                              ; preds = %102
  %110 = trunc i32 %98 to i8, !dbg !1328
    #dbg_value(i8 %110, !1054, !DIExpression(), !1321)
    #dbg_value(i8 %110, !1061, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1323)
  %111 = getelementptr inbounds nuw i8, ptr %105, i64 1, !dbg !1329
  store ptr %111, ptr %104, align 8, !dbg !1330, !tbaa !1071
  store i8 %110, ptr %105, align 1, !dbg !1331, !tbaa !519
  br label %124, !dbg !1332

112:                                              ; preds = %102
  %113 = and i32 %98, 255, !dbg !1333
    #dbg_value(i32 %98, !1061, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1323)
  %114 = tail call i32 @__overflow(ptr noundef nonnull %103, i32 noundef %113) #16, !dbg !1326
  %115 = icmp slt i32 %114, 0, !dbg !1334
  br i1 %115, label %116, label %124, !dbg !1335

116:                                              ; preds = %112
  %117 = load i32, ptr %77, align 4, !dbg !1336, !tbaa !419
    #dbg_value(i32 %117, !1035, !DIExpression(), !1338)
  %118 = load ptr, ptr @stdout, align 8, !dbg !1339, !tbaa !434
  %119 = tail call i32 @fflush_unlocked(ptr noundef %118) #16, !dbg !1340
  %120 = load ptr, ptr @stdout, align 8, !dbg !1341, !tbaa !434
  %121 = tail call i32 @fpurge(ptr noundef %120) #16, !dbg !1342
  %122 = load ptr, ptr @stdout, align 8, !dbg !1343, !tbaa !434
  tail call void @clearerr_unlocked(ptr noundef %122) #16, !dbg !1344
  %123 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #16, !dbg !1345
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %117, ptr noundef %123) #16, !dbg !1346
  unreachable, !dbg !1346

124:                                              ; preds = %109, %112
    #dbg_value(ptr %61, !965, !DIExpression(), !1347)
  %125 = load ptr, ptr %64, align 8, !dbg !1349, !tbaa !974
  %126 = load ptr, ptr %66, align 8, !dbg !1349, !tbaa !979
  %127 = icmp ult ptr %125, %126, !dbg !1349
  br i1 %127, label %130, label %128, !dbg !1350, !prof !981

128:                                              ; preds = %124
  %129 = tail call i32 @__uflow(ptr noundef nonnull %61) #16, !dbg !1349
  br label %134, !dbg !1349

130:                                              ; preds = %124
  %131 = getelementptr inbounds nuw i8, ptr %125, i64 1, !dbg !1351
  store ptr %131, ptr %64, align 8, !dbg !1352, !tbaa !974
  %132 = load i8, ptr %125, align 1, !dbg !1349, !tbaa !519
  %133 = zext i8 %132 to i32, !dbg !1349
  br label %134, !dbg !1349

134:                                              ; preds = %128, %130
  %135 = phi i32 [ %129, %128 ], [ %133, %130 ], !dbg !1353
    #dbg_value(i32 %135, !1193, !DIExpression(), !1280)
    #dbg_value(i8 poison, !1197, !DIExpression(), !1280)
    #dbg_value(i32 poison, !1196, !DIExpression(), !1280)
  %136 = icmp eq i32 %135, -1, !dbg !1354
  br i1 %136, label %226, label %97, !dbg !1355, !llvm.loop !1356

137:                                              ; preds = %94
    #dbg_value(ptr %61, !1146, !DIExpression(), !1359)
  %138 = load i32, ptr %61, align 8, !dbg !1364, !tbaa !1153
  %139 = and i32 %138, 32, !dbg !1365
  %140 = icmp eq i32 %139, 0, !dbg !1365
  %141 = select i1 %140, i32 0, i32 %78, !dbg !1366
    #dbg_value(i32 %141, !1196, !DIExpression(), !1280)
  %142 = load ptr, ptr @stdin, align 8, !dbg !1367, !tbaa !434
  %143 = icmp eq ptr %61, %142, !dbg !1369
  br i1 %143, label %144, label %145, !dbg !1370

144:                                              ; preds = %137
  tail call void @clearerr_unlocked(ptr noundef nonnull %61) #16, !dbg !1371
  br label %152, !dbg !1371

145:                                              ; preds = %137
  %146 = tail call i32 @rpl_fclose(ptr noundef nonnull %61) #16, !dbg !1372
  %147 = icmp ne i32 %146, -1, !dbg !1374
  %148 = icmp ne i32 %141, 0
  %149 = select i1 %147, i1 true, i1 %148, !dbg !1375
  br i1 %149, label %152, label %150, !dbg !1375

150:                                              ; preds = %145
  %151 = load i32, ptr %77, align 4, !dbg !1376, !tbaa !419
    #dbg_value(i32 %151, !1196, !DIExpression(), !1280)
  br label %152, !dbg !1377

152:                                              ; preds = %145, %150, %144
  %153 = phi i32 [ %141, %144 ], [ %141, %145 ], [ %151, %150 ], !dbg !1280
    #dbg_value(i32 %153, !1196, !DIExpression(), !1280)
  %154 = icmp eq i32 %153, 0, !dbg !1378
  br i1 %154, label %159, label %155, !dbg !1380

155:                                              ; preds = %152
  %156 = getelementptr inbounds nuw ptr, ptr %1, i64 %58, !dbg !1381
  %157 = load ptr, ptr %156, align 8, !dbg !1381, !tbaa !437
  %158 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %157) #16, !dbg !1383
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %153, ptr noundef nonnull @.str.62, ptr noundef %158) #16, !dbg !1384
    #dbg_value(i8 0, !1180, !DIExpression(), !1226)
  br label %159, !dbg !1385

159:                                              ; preds = %155, %152
  %160 = phi i1 [ false, %155 ], [ %53, %152 ], !dbg !1226
    #dbg_value(i8 poison, !1180, !DIExpression(), !1226)
  store ptr null, ptr %60, align 8, !dbg !1386, !tbaa !434
  %161 = add i64 %54, -1, !dbg !1387
    #dbg_value(i64 %161, !1184, !DIExpression(), !1226)
  br label %162, !dbg !1388

162:                                              ; preds = %52, %159
  %163 = phi i64 [ %95, %159 ], [ %59, %52 ]
  %164 = phi i64 [ %161, %159 ], [ %54, %52 ], !dbg !1226
  %165 = phi i1 [ %160, %159 ], [ %53, %52 ], !dbg !1226
    #dbg_value(i8 poison, !1180, !DIExpression(), !1226)
    #dbg_value(i64 %164, !1184, !DIExpression(), !1226)
    #dbg_value(i32 poison, !1196, !DIExpression(), !1280)
  %166 = add nuw i64 %58, 1, !dbg !1389
  %167 = icmp eq i64 %166, %0, !dbg !1390
  br i1 %167, label %168, label %208, !dbg !1391

168:                                              ; preds = %162
  br i1 %55, label %169, label %314, !dbg !1392

169:                                              ; preds = %168
  %170 = icmp eq i64 %163, 0, !dbg !1393
  br i1 %170, label %184, label %171, !dbg !1394

171:                                              ; preds = %169
  %172 = load ptr, ptr @stdout, align 8, !dbg !1395, !tbaa !434
  %173 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %7, i64 noundef 1, i64 noundef %163, ptr noundef %172), !dbg !1396
  %174 = icmp eq i64 %173, %163, !dbg !1397
  br i1 %174, label %184, label %175, !dbg !1398

175:                                              ; preds = %171
  %176 = tail call ptr @__errno_location() #19, !dbg !1399
  %177 = load i32, ptr %176, align 4, !dbg !1401, !tbaa !419
    #dbg_value(i32 %177, !1035, !DIExpression(), !1402)
  %178 = load ptr, ptr @stdout, align 8, !dbg !1403, !tbaa !434
  %179 = tail call i32 @fflush_unlocked(ptr noundef %178) #16, !dbg !1404
  %180 = load ptr, ptr @stdout, align 8, !dbg !1405, !tbaa !434
  %181 = tail call i32 @fpurge(ptr noundef %180) #16, !dbg !1406
  %182 = load ptr, ptr @stdout, align 8, !dbg !1407, !tbaa !434
  tail call void @clearerr_unlocked(ptr noundef %182) #16, !dbg !1408
  %183 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #16, !dbg !1409
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %177, ptr noundef %183) #16, !dbg !1410
  unreachable, !dbg !1410

184:                                              ; preds = %171, %169
    #dbg_value(i64 0, !1190, !DIExpression(), !1283)
  %185 = load i1, ptr @line_delim, align 1, !dbg !1411
  %186 = select i1 %185, i8 0, i8 10, !dbg !1411
    #dbg_value(i8 %186, !1054, !DIExpression(), !1412)
    #dbg_value(i8 %186, !1061, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1414)
  %187 = load ptr, ptr @stdout, align 8, !dbg !1416, !tbaa !434
  %188 = getelementptr inbounds nuw i8, ptr %187, i64 40, !dbg !1417
  %189 = load ptr, ptr %188, align 8, !dbg !1417, !tbaa !1071
  %190 = getelementptr inbounds nuw i8, ptr %187, i64 48, !dbg !1417
  %191 = load ptr, ptr %190, align 8, !dbg !1417, !tbaa !1072
  %192 = icmp ult ptr %189, %191, !dbg !1417
  br i1 %192, label %193, label %195, !dbg !1418, !prof !981

193:                                              ; preds = %184
  %194 = getelementptr inbounds nuw i8, ptr %189, i64 1, !dbg !1419
  store ptr %194, ptr %188, align 8, !dbg !1420, !tbaa !1071
  store i8 %186, ptr %189, align 1, !dbg !1421, !tbaa !519
  br label %314, !dbg !1422

195:                                              ; preds = %184
  %196 = zext nneg i8 %186 to i32, !dbg !1423
    #dbg_value(i8 %186, !1061, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1414)
  %197 = tail call i32 @__overflow(ptr noundef nonnull %187, i32 noundef %196) #16, !dbg !1417
  %198 = icmp slt i32 %197, 0, !dbg !1424
  br i1 %198, label %199, label %314, !dbg !1425

199:                                              ; preds = %195
  %200 = tail call ptr @__errno_location() #19, !dbg !1426
  %201 = load i32, ptr %200, align 4, !dbg !1428, !tbaa !419
    #dbg_value(i32 %201, !1035, !DIExpression(), !1429)
  %202 = load ptr, ptr @stdout, align 8, !dbg !1430, !tbaa !434
  %203 = tail call i32 @fflush_unlocked(ptr noundef %202) #16, !dbg !1431
  %204 = load ptr, ptr @stdout, align 8, !dbg !1432, !tbaa !434
  %205 = tail call i32 @fpurge(ptr noundef %204) #16, !dbg !1433
  %206 = load ptr, ptr @stdout, align 8, !dbg !1434, !tbaa !434
  tail call void @clearerr_unlocked(ptr noundef %206) #16, !dbg !1435
  %207 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #16, !dbg !1436
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %201, ptr noundef %207) #16, !dbg !1437
  unreachable, !dbg !1437

208:                                              ; preds = %162
  %209 = load ptr, ptr @delim_lens, align 8, !dbg !1438, !tbaa !761
  %210 = getelementptr inbounds i64, ptr %209, i64 %56, !dbg !1438
  %211 = load i64, ptr %210, align 8, !dbg !1439, !tbaa !770
    #dbg_value(i64 %211, !1220, !DIExpression(), !1440)
  %212 = icmp eq i64 %211, 0, !dbg !1441
  br i1 %212, label %218, label %213, !dbg !1443

213:                                              ; preds = %208
  %214 = getelementptr inbounds i8, ptr %7, i64 %163, !dbg !1444
  %215 = load ptr, ptr @delims, align 8, !dbg !1446, !tbaa !437
  %216 = getelementptr inbounds i8, ptr %215, i64 %57, !dbg !1447
    #dbg_value(ptr %214, !1448, !DIExpression(), !1453)
    #dbg_value(ptr %216, !1451, !DIExpression(), !1453)
    #dbg_value(i64 %211, !1452, !DIExpression(), !1453)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %214, ptr noundef nonnull align 1 %216, i64 noundef range(i64 1, 0) %211, i1 noundef false) #16, !dbg !1455
  %217 = add i64 %211, %163, !dbg !1456
    #dbg_value(i64 %217, !1190, !DIExpression(), !1283)
  br label %218, !dbg !1457

218:                                              ; preds = %213, %208
  %219 = phi i64 [ %217, %213 ], [ %163, %208 ], !dbg !1280
    #dbg_value(i64 %219, !1190, !DIExpression(), !1283)
  %220 = add i64 %211, %57, !dbg !1458
    #dbg_value(i64 %220, !1189, !DIExpression(), !1283)
  %221 = add nsw i64 %56, 1, !dbg !1459
    #dbg_value(i64 %221, !1188, !DIExpression(), !1283)
  %222 = load i64, ptr @num_delims, align 8, !dbg !1461, !tbaa !770
  %223 = icmp eq i64 %221, %222, !dbg !1462
  %224 = select i1 %223, i64 0, i64 %220, !dbg !1463
  %225 = select i1 %223, i64 0, i64 %221, !dbg !1463
    #dbg_value(i64 %225, !1188, !DIExpression(), !1283)
    #dbg_value(i64 %224, !1189, !DIExpression(), !1283)
  br label %314, !dbg !1464

226:                                              ; preds = %97, %134
  %227 = phi i32 [ -1, %134 ], [ %98, %97 ]
    #dbg_value(i8 1, !1186, !DIExpression(), !1283)
  %228 = add nuw i64 %58, 1, !dbg !1465
  %229 = icmp eq i64 %228, %0, !dbg !1466
  br i1 %229, label %288, label %230, !dbg !1467

230:                                              ; preds = %226
  %231 = load i1, ptr @line_delim, align 1, !dbg !1468
  %232 = select i1 %231, i32 0, i32 10, !dbg !1468
  %233 = icmp ne i32 %227, %232, !dbg !1471
  %234 = icmp ne i32 %227, -1
  %235 = and i1 %234, %233, !dbg !1472
  br i1 %235, label %236, label %257, !dbg !1472

236:                                              ; preds = %230
    #dbg_value(i32 %227, !1054, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1473)
    #dbg_value(i32 %227, !1061, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1475)
  %237 = load ptr, ptr @stdout, align 8, !dbg !1477, !tbaa !434
  %238 = getelementptr inbounds nuw i8, ptr %237, i64 40, !dbg !1478
  %239 = load ptr, ptr %238, align 8, !dbg !1478, !tbaa !1071
  %240 = getelementptr inbounds nuw i8, ptr %237, i64 48, !dbg !1478
  %241 = load ptr, ptr %240, align 8, !dbg !1478, !tbaa !1072
  %242 = icmp ult ptr %239, %241, !dbg !1478
  br i1 %242, label %243, label %246, !dbg !1479, !prof !981

243:                                              ; preds = %236
  %244 = trunc nuw nsw i32 %227 to i8, !dbg !1480
    #dbg_value(i8 %244, !1054, !DIExpression(), !1473)
    #dbg_value(i8 %244, !1061, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1475)
  %245 = getelementptr inbounds nuw i8, ptr %239, i64 1, !dbg !1481
  store ptr %245, ptr %238, align 8, !dbg !1482, !tbaa !1071
  store i8 %244, ptr %239, align 1, !dbg !1483, !tbaa !519
  br label %257, !dbg !1484

246:                                              ; preds = %236
    #dbg_value(i32 %227, !1061, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1475)
  %247 = tail call i32 @__overflow(ptr noundef nonnull %237, i32 noundef %227) #16, !dbg !1478
  %248 = icmp slt i32 %247, 0, !dbg !1485
  br i1 %248, label %249, label %257, !dbg !1486

249:                                              ; preds = %246
  %250 = load i32, ptr %77, align 4, !dbg !1487, !tbaa !419
    #dbg_value(i32 %250, !1035, !DIExpression(), !1489)
  %251 = load ptr, ptr @stdout, align 8, !dbg !1490, !tbaa !434
  %252 = tail call i32 @fflush_unlocked(ptr noundef %251) #16, !dbg !1491
  %253 = load ptr, ptr @stdout, align 8, !dbg !1492, !tbaa !434
  %254 = tail call i32 @fpurge(ptr noundef %253) #16, !dbg !1493
  %255 = load ptr, ptr @stdout, align 8, !dbg !1494, !tbaa !434
  tail call void @clearerr_unlocked(ptr noundef %255) #16, !dbg !1495
  %256 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #16, !dbg !1496
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %250, ptr noundef %256) #16, !dbg !1497
  unreachable, !dbg !1497

257:                                              ; preds = %246, %243, %230
  %258 = load ptr, ptr @delim_lens, align 8, !dbg !1498, !tbaa !761
  %259 = getelementptr inbounds i64, ptr %258, i64 %56, !dbg !1498
  %260 = load i64, ptr %259, align 8, !dbg !1498, !tbaa !770
    #dbg_value(!DIArgList(ptr poison, i64 poison), !1010, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1499)
    #dbg_value(i64 %260, !1015, !DIExpression(), !1499)
  %261 = icmp eq i64 %260, 0, !dbg !1501
  br i1 %261, label %280, label %262, !dbg !1502

262:                                              ; preds = %257
  %263 = load ptr, ptr @delims, align 8, !dbg !1503, !tbaa !437
    #dbg_value(!DIArgList(ptr %263, i64 %57), !1010, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1499)
  %264 = getelementptr inbounds i8, ptr %263, i64 %57, !dbg !1504
    #dbg_value(ptr %264, !1010, !DIExpression(), !1499)
  %265 = load ptr, ptr @stdout, align 8, !dbg !1505, !tbaa !434
  %266 = tail call i64 @fwrite_unlocked(ptr noundef readonly %264, i64 noundef 1, i64 noundef %260, ptr noundef %265), !dbg !1506
  %267 = icmp eq i64 %266, %260, !dbg !1507
  br i1 %267, label %268, label %272, !dbg !1508

268:                                              ; preds = %262
  %269 = load ptr, ptr @delim_lens, align 8, !dbg !1509, !tbaa !761
  %270 = getelementptr inbounds i64, ptr %269, i64 %56
  %271 = load i64, ptr %270, align 8, !dbg !1509, !tbaa !770
  br label %280, !dbg !1508

272:                                              ; preds = %262
  %273 = load i32, ptr %77, align 4, !dbg !1510, !tbaa !419
    #dbg_value(i32 %273, !1035, !DIExpression(), !1512)
  %274 = load ptr, ptr @stdout, align 8, !dbg !1513, !tbaa !434
  %275 = tail call i32 @fflush_unlocked(ptr noundef %274) #16, !dbg !1514
  %276 = load ptr, ptr @stdout, align 8, !dbg !1515, !tbaa !434
  %277 = tail call i32 @fpurge(ptr noundef %276) #16, !dbg !1516
  %278 = load ptr, ptr @stdout, align 8, !dbg !1517, !tbaa !434
  tail call void @clearerr_unlocked(ptr noundef %278) #16, !dbg !1518
  %279 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #16, !dbg !1519
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %273, ptr noundef %279) #16, !dbg !1520
  unreachable, !dbg !1520

280:                                              ; preds = %268, %257
  %281 = phi i64 [ %271, %268 ], [ 0, %257 ], !dbg !1509
  %282 = add i64 %281, %57, !dbg !1521
    #dbg_value(i64 %282, !1189, !DIExpression(), !1283)
  %283 = add nsw i64 %56, 1, !dbg !1522
    #dbg_value(i64 %283, !1188, !DIExpression(), !1283)
  %284 = load i64, ptr @num_delims, align 8, !dbg !1524, !tbaa !770
  %285 = icmp eq i64 %283, %284, !dbg !1525
  %286 = select i1 %285, i64 0, i64 %282, !dbg !1526
  %287 = select i1 %285, i64 0, i64 %283, !dbg !1526
  br label %314, !dbg !1526

288:                                              ; preds = %226
  %289 = icmp eq i32 %227, -1, !dbg !1527
  %290 = load i1, ptr @line_delim, align 1, !dbg !1528
  %291 = select i1 %290, i32 0, i32 10, !dbg !1528
  %292 = select i1 %289, i32 %291, i32 %227, !dbg !1528
    #dbg_value(i32 %292, !1222, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1529)
    #dbg_value(i32 %292, !1054, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1530)
    #dbg_value(i32 %292, !1061, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1532)
  %293 = load ptr, ptr @stdout, align 8, !dbg !1534, !tbaa !434
  %294 = getelementptr inbounds nuw i8, ptr %293, i64 40, !dbg !1535
  %295 = load ptr, ptr %294, align 8, !dbg !1535, !tbaa !1071
  %296 = getelementptr inbounds nuw i8, ptr %293, i64 48, !dbg !1535
  %297 = load ptr, ptr %296, align 8, !dbg !1535, !tbaa !1072
  %298 = icmp ult ptr %295, %297, !dbg !1535
  br i1 %298, label %299, label %302, !dbg !1536, !prof !981

299:                                              ; preds = %288
  %300 = trunc nsw i32 %292 to i8, !dbg !1537
    #dbg_value(i8 %300, !1222, !DIExpression(), !1529)
    #dbg_value(i8 %300, !1054, !DIExpression(), !1530)
    #dbg_value(i8 %300, !1061, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1532)
  %301 = getelementptr inbounds nuw i8, ptr %295, i64 1, !dbg !1538
  store ptr %301, ptr %294, align 8, !dbg !1539, !tbaa !1071
  store i8 %300, ptr %295, align 1, !dbg !1540, !tbaa !519
  br label %48, !dbg !1541

302:                                              ; preds = %288
  %303 = and i32 %292, 255, !dbg !1542
    #dbg_value(i32 %292, !1061, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1532)
  %304 = tail call i32 @__overflow(ptr noundef nonnull %293, i32 noundef %303) #16, !dbg !1535
  %305 = icmp slt i32 %304, 0, !dbg !1543
  br i1 %305, label %306, label %48, !dbg !1544

306:                                              ; preds = %302
  %307 = load i32, ptr %77, align 4, !dbg !1545, !tbaa !419
    #dbg_value(i32 %307, !1035, !DIExpression(), !1547)
  %308 = load ptr, ptr @stdout, align 8, !dbg !1548, !tbaa !434
  %309 = tail call i32 @fflush_unlocked(ptr noundef %308) #16, !dbg !1549
  %310 = load ptr, ptr @stdout, align 8, !dbg !1550, !tbaa !434
  %311 = tail call i32 @fpurge(ptr noundef %310) #16, !dbg !1551
  %312 = load ptr, ptr @stdout, align 8, !dbg !1552, !tbaa !434
  tail call void @clearerr_unlocked(ptr noundef %312) #16, !dbg !1553
  %313 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #16, !dbg !1554
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %307, ptr noundef %313) #16, !dbg !1555
  unreachable, !dbg !1555

314:                                              ; preds = %195, %193, %280, %218, %168
  %315 = phi i64 [ %166, %218 ], [ %166, %168 ], [ %166, %195 ], [ %166, %193 ], [ %228, %280 ], !dbg !1556
  %316 = phi i64 [ %219, %218 ], [ %163, %168 ], [ 0, %195 ], [ 0, %193 ], [ %95, %280 ], !dbg !1280
  %317 = phi i64 [ %224, %218 ], [ %57, %168 ], [ %57, %195 ], [ %57, %193 ], [ %286, %280 ], !dbg !1283
  %318 = phi i64 [ %225, %218 ], [ %56, %168 ], [ %56, %195 ], [ %56, %193 ], [ %287, %280 ], !dbg !1283
  %319 = phi i1 [ %55, %218 ], [ false, %168 ], [ true, %195 ], [ true, %193 ], [ true, %280 ], !dbg !1283
  %320 = phi i64 [ %164, %218 ], [ %164, %168 ], [ %164, %195 ], [ %164, %193 ], [ %54, %280 ], !dbg !1226
  %321 = phi i1 [ %165, %218 ], [ %165, %168 ], [ %165, %195 ], [ %165, %193 ], [ %53, %280 ], !dbg !1226
    #dbg_value(i8 poison, !1180, !DIExpression(), !1226)
    #dbg_value(i64 %320, !1184, !DIExpression(), !1226)
    #dbg_value(i8 poison, !1186, !DIExpression(), !1283)
    #dbg_value(i64 %318, !1188, !DIExpression(), !1283)
    #dbg_value(i64 %317, !1189, !DIExpression(), !1283)
    #dbg_value(i32 poison, !1196, !DIExpression(), !1280)
    #dbg_value(i64 %316, !1190, !DIExpression(), !1283)
    #dbg_value(i32 poison, !1193, !DIExpression(), !1280)
    #dbg_value(i64 %315, !1191, !DIExpression(), !1284)
  %322 = icmp ult i64 %315, %0, !dbg !1557
  %323 = icmp ne i64 %320, 0, !dbg !1558
  %324 = select i1 %322, i1 %323, i1 false, !dbg !1558
  br i1 %324, label %325, label %48, !dbg !1559

325:                                              ; preds = %314, %48
  %326 = phi i1 [ %321, %314 ], [ %50, %48 ]
  %327 = phi i64 [ %320, %314 ], [ %49, %48 ]
  %328 = phi i1 [ %319, %314 ], [ false, %48 ]
  %329 = phi i64 [ %318, %314 ], [ 0, %48 ]
  %330 = phi i64 [ %317, %314 ], [ 0, %48 ]
  %331 = phi i64 [ %315, %314 ], [ 0, %48 ]
  %332 = phi i64 [ %316, %314 ], [ 0, %48 ]
  br label %52, !dbg !1285, !llvm.loop !1560

333:                                              ; preds = %48, %2
  %334 = phi i1 [ true, %2 ], [ %50, %48 ], !dbg !1279
  tail call void @free(ptr noundef nonnull %9) #16, !dbg !1563
  tail call void @free(ptr noundef nonnull %7) #16, !dbg !1564
  ret i1 %334, !dbg !1565
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1566 void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare !dbg !1569 i32 @rpl_fclose(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1570 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1574 noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1575 i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1579 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1582 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1588 i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare !dbg !1589 noundef i64 @fwrite_unlocked(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1592 i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1595 i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

declare !dbg !1598 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !1601 void @emit_bug_reporting_address() local_unnamed_addr #1

declare !dbg !1602 noalias nonnull ptr @xstrdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare !dbg !1604 noalias nonnull ptr @xnmalloc(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1607 i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare !dbg !1610 i64 @rpl_mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1616 noalias ptr @rpl_fopen(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1619 void @fadvise(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !1623 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

declare !dbg !1626 i32 @__uflow(ptr noundef) local_unnamed_addr #1

declare !dbg !1627 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #1

declare !dbg !1628 i32 @fpurge(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare !dbg !1629 noalias nonnull ptr @xmalloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare !dbg !1632 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1635 i32 @fileno_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #15

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind willreturn memory(none) }
attributes #20 = { noreturn }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!79}
!llvm.module.flags = !{!411, !412, !413, !414, !415, !416, !417}
!llvm.ident = !{!418}
!llvm.errno.tbaa = !{!419}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 450, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/paste.c", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "043eec2995868248cd7453e271fe4ea7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 453, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 457, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1632, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 204)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 467, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 6)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 467, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 952, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 119)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 472, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1328, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 166)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 478, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 69)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 482, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 50)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 483, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 62)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 494, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 2)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 498, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 1)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 499, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 10)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 499, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 24)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 504, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 5)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 510, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 3)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!78 = distinct !DIGlobalVariable(name: "serial_merge", scope: !79, file: !2, line: 59, type: !172, isLocal: true, isDefinition: true)
!79 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !80, retainedTypes: !136, globals: !147, splitDebugInlining: false, nameTableKind: None)
!80 = !{!81, !87, !102, !117, !121, !124, !127}
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !82, line: 356, baseType: !83, size: 32, elements: !84)
!82 = !DIFile(filename: "src/system.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "6a9c30566098770bfb4561b49834f302")
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !{!85, !86}
!85 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!86 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !88, line: 42, baseType: !89, size: 32, elements: !90)
!88 = !DIFile(filename: "./lib/quotearg.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!89 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!90 = !{!91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!91 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!92 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!93 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!94 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!95 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!96 = !DIEnumerator(name: "c_quoting_style", value: 5)
!97 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!98 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!99 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!100 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!101 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !103, line: 46, baseType: !89, size: 32, elements: !104)
!103 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116}
!105 = !DIEnumerator(name: "_ISupper", value: 256)
!106 = !DIEnumerator(name: "_ISlower", value: 512)
!107 = !DIEnumerator(name: "_ISalpha", value: 1024)
!108 = !DIEnumerator(name: "_ISdigit", value: 2048)
!109 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!110 = !DIEnumerator(name: "_ISspace", value: 8192)
!111 = !DIEnumerator(name: "_ISprint", value: 16384)
!112 = !DIEnumerator(name: "_ISgraph", value: 32768)
!113 = !DIEnumerator(name: "_ISblank", value: 1)
!114 = !DIEnumerator(name: "_IScntrl", value: 2)
!115 = !DIEnumerator(name: "_ISpunct", value: 4)
!116 = !DIEnumerator(name: "_ISalnum", value: 8)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !118, line: 127, baseType: !89, size: 32, elements: !119)
!118 = !DIFile(filename: "./lib/mcel.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3579582c4826b47e433381dcd966e882")
!119 = !{!120}
!120 = !DIEnumerator(name: "MCEL_LEN_MAX", value: 4)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !118, line: 131, baseType: !89, size: 32, elements: !122)
!122 = !{!123}
!123 = !DIEnumerator(name: "MCEL_ERR_MIN", value: 128)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !118, line: 130, baseType: !89, size: 32, elements: !125)
!125 = !{!126}
!126 = !DIEnumerator(name: "MCEL_CHAR_MAX", value: 1114111)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !128, line: 44, baseType: !89, size: 32, elements: !129)
!128 = !DIFile(filename: "./lib/fadvise.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!129 = !{!130, !131, !132, !133, !134, !135}
!130 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!131 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!132 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!133 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!134 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!135 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!136 = !{!137, !138, !83, !139, !140, !143, !145, !146}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!139 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !141, line: 18, baseType: !142)
!141 = !DIFile(filename: "/usr/lib/llvm-22/lib/clang/22/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!142 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!145 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!147 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !72, !148, !153, !158, !163, !165, !170, !173, !174, !176, !179, !184, !189, !271, !273, !275, !280, !282, !284, !286, !288, !290, !292, !294, !296, !301, !306, !308, !310, !312, !314, !316, !318, !323, !328, !330, !335, !337, !339, !341, !343, !345, !350, !352, !357, !362, !367, !369, !374, !376, !378, !380, !392, !394, !398, !400, !402, !404}
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !2, line: 523, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 14)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !2, line: 523, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 15)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 523, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 16)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !2, line: 533, type: !49, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 542, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 52)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !79, file: !2, line: 55, type: !172, isLocal: true, isDefinition: true)
!172 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!173 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "delims", scope: !79, file: !2, line: 63, type: !137, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "delim_lens", scope: !79, file: !2, line: 67, type: !178, isLocal: true, isDefinition: true)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !82, line: 748, type: !181, isLocal: true, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 56)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !82, line: 755, type: !186, isLocal: true, isDefinition: true)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 75)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !191, file: !82, line: 594, type: !83, isLocal: true, isDefinition: true)
!191 = distinct !DISubprogram(name: "oputs_", scope: !82, file: !82, line: 592, type: !192, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !194, keyInstructions: true)
!192 = !DISubroutineType(cc: DW_CC_nocall, types: !193)
!193 = !{null, !143, !143}
!194 = !{!195, !196, !197, !200, !201, !202, !203, !207, !208, !209, !210, !212, !265, !266, !267, !269, !270}
!195 = !DILocalVariable(name: "program", arg: 1, scope: !191, file: !82, line: 592, type: !143)
!196 = !DILocalVariable(name: "option", arg: 2, scope: !191, file: !82, line: 592, type: !143)
!197 = !DILocalVariable(name: "term", scope: !198, file: !82, line: 604, type: !143)
!198 = distinct !DILexicalBlock(scope: !199, file: !82, line: 601, column: 5)
!199 = distinct !DILexicalBlock(scope: !191, file: !82, line: 600, column: 7)
!200 = !DILocalVariable(name: "double_space", scope: !191, file: !82, line: 613, type: !172)
!201 = !DILocalVariable(name: "first_word", scope: !191, file: !82, line: 614, type: !143)
!202 = !DILocalVariable(name: "option_text", scope: !191, file: !82, line: 615, type: !143)
!203 = !DILocalVariable(name: "s", scope: !204, file: !82, line: 627, type: !143)
!204 = distinct !DILexicalBlock(scope: !205, file: !82, line: 624, column: 5)
!205 = distinct !DILexicalBlock(scope: !206, file: !82, line: 623, column: 12)
!206 = distinct !DILexicalBlock(scope: !191, file: !82, line: 616, column: 7)
!207 = !DILocalVariable(name: "spaces", scope: !204, file: !82, line: 628, type: !140)
!208 = !DILocalVariable(name: "anchor_len", scope: !191, file: !82, line: 639, type: !140)
!209 = !DILocalVariable(name: "desc_text", scope: !191, file: !82, line: 644, type: !143)
!210 = !DILocalVariable(name: "__ptr", scope: !211, file: !82, line: 663, type: !143)
!211 = distinct !DILexicalBlock(scope: !191, file: !82, line: 663, column: 3)
!212 = !DILocalVariable(name: "__stream", scope: !211, file: !82, line: 663, type: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !215, line: 7, baseType: !216)
!215 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !217, line: 49, size: 1728, elements: !218)
!217 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !234, !236, !237, !238, !242, !243, !245, !246, !249, !251, !254, !257, !258, !259, !260, !261}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !216, file: !217, line: 51, baseType: !83, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !216, file: !217, line: 54, baseType: !137, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !216, file: !217, line: 55, baseType: !137, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !216, file: !217, line: 56, baseType: !137, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !216, file: !217, line: 57, baseType: !137, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !216, file: !217, line: 58, baseType: !137, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !216, file: !217, line: 59, baseType: !137, size: 64, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !216, file: !217, line: 60, baseType: !137, size: 64, offset: 448)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !216, file: !217, line: 61, baseType: !137, size: 64, offset: 512)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !216, file: !217, line: 64, baseType: !137, size: 64, offset: 576)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !216, file: !217, line: 65, baseType: !137, size: 64, offset: 640)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !216, file: !217, line: 66, baseType: !137, size: 64, offset: 704)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !216, file: !217, line: 68, baseType: !232, size: 64, offset: 768)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !217, line: 36, flags: DIFlagFwdDecl)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !216, file: !217, line: 70, baseType: !235, size: 64, offset: 832)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !216, file: !217, line: 72, baseType: !83, size: 32, offset: 896)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !216, file: !217, line: 73, baseType: !83, size: 32, offset: 928)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !216, file: !217, line: 74, baseType: !239, size: 64, offset: 960)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !240, line: 152, baseType: !241)
!240 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!241 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !216, file: !217, line: 77, baseType: !139, size: 16, offset: 1024)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !216, file: !217, line: 78, baseType: !244, size: 8, offset: 1040)
!244 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !216, file: !217, line: 79, baseType: !54, size: 8, offset: 1048)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !216, file: !217, line: 81, baseType: !247, size: 64, offset: 1088)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !217, line: 43, baseType: null)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !216, file: !217, line: 89, baseType: !250, size: 64, offset: 1152)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !240, line: 153, baseType: !241)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !216, file: !217, line: 91, baseType: !252, size: 64, offset: 1216)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !217, line: 37, flags: DIFlagFwdDecl)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !216, file: !217, line: 92, baseType: !255, size: 64, offset: 1280)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !217, line: 38, flags: DIFlagFwdDecl)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !216, file: !217, line: 93, baseType: !235, size: 64, offset: 1344)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !216, file: !217, line: 94, baseType: !138, size: 64, offset: 1408)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !216, file: !217, line: 95, baseType: !140, size: 64, offset: 1472)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !216, file: !217, line: 96, baseType: !83, size: 32, offset: 1536)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !216, file: !217, line: 98, baseType: !262, size: 160, offset: 1568)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 20)
!265 = !DILocalVariable(name: "__cnt", scope: !211, file: !82, line: 663, type: !140)
!266 = !DILocalVariable(name: "url_program", scope: !191, file: !82, line: 667, type: !143)
!267 = !DILocalVariable(name: "__ptr", scope: !268, file: !82, line: 705, type: !143)
!268 = distinct !DILexicalBlock(scope: !191, file: !82, line: 705, column: 3)
!269 = !DILocalVariable(name: "__stream", scope: !268, file: !82, line: 705, type: !213)
!270 = !DILocalVariable(name: "__cnt", scope: !268, file: !82, line: 705, type: !140)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !82, line: 604, type: !69, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !82, line: 605, type: !69, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !82, line: 614, type: !277, isLocal: true, isDefinition: true)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 4)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !82, line: 639, type: !19, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !82, line: 667, type: !49, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !82, line: 667, type: !69, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !82, line: 668, type: !277, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !82, line: 668, type: !74, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !82, line: 669, type: !69, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !82, line: 670, type: !19, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !82, line: 670, type: !19, isLocal: true, isDefinition: true)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !82, line: 671, type: !298, isLocal: true, isDefinition: true)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 7)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !82, line: 672, type: !303, isLocal: true, isDefinition: true)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 8)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !82, line: 673, type: !59, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !82, line: 674, type: !59, isLocal: true, isDefinition: true)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !82, line: 675, type: !59, isLocal: true, isDefinition: true)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !82, line: 676, type: !59, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !82, line: 682, type: !298, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !82, line: 683, type: !59, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !82, line: 688, type: !320, isLocal: true, isDefinition: true)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 17)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !82, line: 688, type: !325, isLocal: true, isDefinition: true)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 40)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !82, line: 695, type: !155, isLocal: true, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !82, line: 695, type: !332, isLocal: true, isDefinition: true)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 61)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !82, line: 698, type: !74, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !82, line: 702, type: !69, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !82, line: 707, type: !69, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !82, line: 710, type: !303, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !82, line: 858, type: !160, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !82, line: 859, type: !347, isLocal: true, isDefinition: true)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 22)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !82, line: 860, type: !155, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !82, line: 882, type: !354, isLocal: true, isDefinition: true)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 27)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !82, line: 884, type: !359, isLocal: true, isDefinition: true)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 51)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !82, line: 885, type: !364, isLocal: true, isDefinition: true)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 12)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !298, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !371, isLocal: true, isDefinition: true)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 11)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !160, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !69, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !303, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(name: "longopts", scope: !79, file: !2, line: 74, type: !382, isLocal: true, isDefinition: true)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 1536, elements: !20)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !385, line: 50, size: 256, elements: !386)
!385 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!386 = !{!387, !388, !389, !391}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !384, file: !385, line: 52, baseType: !143, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !384, file: !385, line: 55, baseType: !83, size: 32, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !384, file: !385, line: 56, baseType: !390, size: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !384, file: !385, line: 57, baseType: !83, size: 32, offset: 192)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "line_delim", scope: !79, file: !2, line: 72, type: !145, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "num_delims", scope: !79, file: !2, line: 70, type: !396, isLocal: true, isDefinition: true)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !397, line: 137, baseType: !241)
!397 = !DIFile(filename: "./lib/idx.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "a342c053ede588630cf36a09403114d3")
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !2, line: 381, type: !49, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !2, line: 384, type: !74, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !82, line: 959, type: !364, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !406, isLocal: true, isDefinition: true)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 25)
!409 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!410 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!411 = !{i32 7, !"Dwarf Version", i32 5}
!412 = !{i32 2, !"Debug Info Version", i32 3}
!413 = !{i32 1, !"wchar_size", i32 4}
!414 = !{i32 8, !"PIC Level", i32 2}
!415 = !{i32 7, !"PIE Level", i32 2}
!416 = !{i32 7, !"uwtable", i32 2}
!417 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!418 = !{!"Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)"}
!419 = !{!420, !420, i64 0}
!420 = !{!"int", !421, i64 0}
!421 = !{!"omnipotent char", !422, i64 0}
!422 = !{!"Simple C/C++ TBAA"}
!423 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 447, type: !424, scopeLine: 448, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !426, keyInstructions: true)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !83}
!426 = !{!427}
!427 = !DILocalVariable(name: "status", arg: 1, scope: !423, file: !2, line: 447, type: !83)
!428 = !DILocation(line: 0, scope: !423)
!429 = !DILocation(line: 449, column: 14, scope: !430, atomGroup: 1, atomRank: 2)
!430 = distinct !DILexicalBlock(scope: !423, file: !2, line: 449, column: 7)
!431 = !DILocation(line: 449, column: 14, scope: !430, atomGroup: 1, atomRank: 1)
!432 = !DILocation(line: 450, column: 5, scope: !433)
!433 = distinct !DILexicalBlock(scope: !430, file: !2, line: 450, column: 5)
!434 = !{!435, !435, i64 0}
!435 = !{!"p1 _ZTS8_IO_FILE", !436, i64 0}
!436 = !{!"any pointer", !421, i64 0}
!437 = !{!438, !438, i64 0}
!438 = !{!"p1 omnipotent char", !436, i64 0}
!439 = !DILocation(line: 453, column: 15, scope: !440)
!440 = distinct !DILexicalBlock(scope: !430, file: !2, line: 452, column: 5)
!441 = !DILocation(line: 456, column: 15, scope: !440)
!442 = !DILocation(line: 453, column: 7, scope: !440)
!443 = !DILocation(line: 457, column: 14, scope: !440)
!444 = !DILocation(line: 462, column: 5, scope: !440)
!445 = !DILocation(line: 457, column: 7, scope: !440)
!446 = !DILocation(line: 748, column: 10, scope: !447, inlinedAt: !450)
!447 = distinct !DISubprogram(name: "emit_stdin_note", scope: !82, file: !82, line: 746, type: !448, scopeLine: 747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, keyInstructions: true)
!448 = !DISubroutineType(types: !449)
!449 = !{null}
!450 = distinct !DILocation(line: 464, column: 7, scope: !440)
!451 = !DILocation(line: 750, column: 5, scope: !447, inlinedAt: !450)
!452 = !DILocation(line: 748, column: 3, scope: !447, inlinedAt: !450)
!453 = !DILocation(line: 755, column: 10, scope: !454, inlinedAt: !455)
!454 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !82, file: !82, line: 753, type: !448, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, keyInstructions: true)
!455 = distinct !DILocation(line: 465, column: 7, scope: !440)
!456 = !DILocation(line: 757, column: 5, scope: !454, inlinedAt: !455)
!457 = !DILocation(line: 755, column: 3, scope: !454, inlinedAt: !455)
!458 = !DILocation(line: 467, column: 14, scope: !440)
!459 = !DILocation(line: 467, column: 7, scope: !440)
!460 = !DILocation(line: 472, column: 14, scope: !440)
!461 = !DILocation(line: 472, column: 7, scope: !440)
!462 = !DILocation(line: 478, column: 14, scope: !440)
!463 = !DILocation(line: 478, column: 7, scope: !440)
!464 = !DILocation(line: 482, column: 14, scope: !440)
!465 = !DILocation(line: 482, column: 7, scope: !440)
!466 = !DILocation(line: 483, column: 14, scope: !440)
!467 = !DILocation(line: 483, column: 7, scope: !440)
!468 = !DILocalVariable(name: "program", arg: 1, scope: !469, file: !82, line: 855, type: !143)
!469 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !82, file: !82, line: 855, type: !470, scopeLine: 856, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !472, keyInstructions: true)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !143}
!472 = !{!468, !473, !480, !481, !483}
!473 = !DILocalVariable(name: "infomap", scope: !469, file: !82, line: 857, type: !474)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 896, elements: !299)
!475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !469, file: !82, line: 857, size: 128, elements: !477)
!477 = !{!478, !479}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !476, file: !82, line: 857, baseType: !143, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !476, file: !82, line: 857, baseType: !143, size: 64, offset: 64)
!480 = !DILocalVariable(name: "node", scope: !469, file: !82, line: 867, type: !143)
!481 = !DILocalVariable(name: "map_prog", scope: !469, file: !82, line: 868, type: !482)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!483 = !DILocalVariable(name: "url_program", scope: !469, file: !82, line: 881, type: !143)
!484 = !DILocation(line: 0, scope: !469, inlinedAt: !485)
!485 = distinct !DILocation(line: 485, column: 7, scope: !440)
!486 = !DILocation(line: 876, column: 3, scope: !469, inlinedAt: !485)
!487 = !DILocation(line: 882, column: 11, scope: !469, inlinedAt: !485)
!488 = !DILocation(line: 882, column: 3, scope: !469, inlinedAt: !485)
!489 = !DILocation(line: 884, column: 11, scope: !469, inlinedAt: !485)
!490 = !DILocation(line: 884, column: 3, scope: !469, inlinedAt: !485)
!491 = !DILocation(line: 487, column: 3, scope: !423)
!492 = !DISubprogram(name: "__fprintf_chk", scope: !493, file: !493, line: 93, type: !494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!493 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!494 = !DISubroutineType(types: !495)
!495 = !{!83, !496, !83, !497, null}
!496 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !213)
!497 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !143)
!498 = !DISubprogram(name: "dcgettext", scope: !499, file: !499, line: 51, type: !500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!499 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!500 = !DISubroutineType(types: !501)
!501 = !{!137, !143, !143, !83}
!502 = !DISubprogram(name: "__printf__", linkageName: "rpl_printf", scope: !503, file: !503, line: 1944, type: !504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!503 = !DIFile(filename: "./lib/stdio.h", directory: "/workspaces/Thesis/.build/coreutils")
!504 = !DISubroutineType(types: !505)
!505 = !{!83, !497, null}
!506 = !DISubprogram(name: "fputs_unlocked", scope: !507, file: !507, line: 691, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!507 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!508 = !DISubroutineType(types: !509)
!509 = !{!83, !497, !496}
!510 = !DILocation(line: 0, scope: !191)
!511 = !DILocation(line: 600, column: 7, scope: !199)
!512 = !DILocation(line: 600, column: 19, scope: !199, atomGroup: 1, atomRank: 2)
!513 = !DILocation(line: 600, column: 19, scope: !199, atomGroup: 1, atomRank: 1)
!514 = !DILocation(line: 604, column: 26, scope: !198, atomGroup: 2, atomRank: 2)
!515 = !DILocation(line: 0, scope: !198)
!516 = !DILocation(line: 605, column: 23, scope: !198, atomGroup: 4, atomRank: 2)
!517 = !DILocation(line: 605, column: 28, scope: !198, atomGroup: 4, atomRank: 1)
!518 = !DILocation(line: 605, column: 32, scope: !198)
!519 = !{!421, !421, i64 0}
!520 = !DILocation(line: 605, column: 32, scope: !198, atomGroup: 5, atomRank: 2)
!521 = !DILocation(line: 605, column: 38, scope: !198, atomGroup: 5, atomRank: 1)
!522 = !DILocalVariable(name: "__s1", arg: 1, scope: !523, file: !524, line: 1368, type: !143)
!523 = distinct !DISubprogram(name: "streq", scope: !524, file: !524, line: 1368, type: !525, scopeLine: 1369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !527, keyInstructions: true)
!524 = !DIFile(filename: "./lib/string.h", directory: "/workspaces/Thesis/.build/coreutils")
!525 = !DISubroutineType(types: !526)
!526 = !{!172, !143, !143}
!527 = !{!522, !528}
!528 = !DILocalVariable(name: "__s2", arg: 2, scope: !523, file: !524, line: 1368, type: !143)
!529 = !DILocation(line: 0, scope: !523, inlinedAt: !530)
!530 = distinct !DILocation(line: 605, column: 41, scope: !198)
!531 = !DILocation(line: 1370, column: 11, scope: !523, inlinedAt: !530)
!532 = !DILocation(line: 1370, column: 10, scope: !523, inlinedAt: !530)
!533 = !DILocation(line: 605, column: 38, scope: !198, atomGroup: 3, atomRank: 2)
!534 = !DILocation(line: 605, column: 38, scope: !198)
!535 = !DILocation(line: 605, column: 19, scope: !198, atomGroup: 3, atomRank: 1)
!536 = !DILocation(line: 606, column: 5, scope: !198)
!537 = !DILocation(line: 607, column: 7, scope: !538)
!538 = distinct !DILexicalBlock(scope: !191, file: !82, line: 607, column: 7)
!539 = !DILocation(line: 607, column: 7, scope: !538, atomGroup: 6, atomRank: 2)
!540 = !DILocation(line: 607, column: 7, scope: !538, atomGroup: 6, atomRank: 1)
!541 = !DILocation(line: 614, column: 37, scope: !191)
!542 = !DILocation(line: 614, column: 35, scope: !191, atomGroup: 9, atomRank: 2)
!543 = !DILocation(line: 615, column: 29, scope: !191, atomGroup: 10, atomRank: 2)
!544 = !DILocation(line: 616, column: 8, scope: !206, atomGroup: 11, atomRank: 2)
!545 = !DILocation(line: 616, column: 7, scope: !206, atomGroup: 11, atomRank: 1)
!546 = !DILocation(line: 0, scope: !204)
!547 = !DILocation(line: 623, column: 24, scope: !205, atomGroup: 14, atomRank: 1)
!548 = !{!549, !549, i64 0}
!549 = !{!"p1 short", !436, i64 0}
!550 = !DILocation(line: 629, column: 7, scope: !204, atomGroup: 127, atomRank: 1)
!551 = !DILocation(line: 630, column: 32, scope: !204, atomGroup: 20, atomRank: 2)
!552 = !DILocation(line: 630, column: 30, scope: !204)
!553 = !DILocation(line: 630, column: 21, scope: !204)
!554 = !{!555, !555, i64 0}
!555 = !{!"short", !421, i64 0}
!556 = !DILocation(line: 630, column: 19, scope: !204)
!557 = !DILocation(line: 630, column: 16, scope: !204, atomGroup: 19, atomRank: 2)
!558 = !DILocation(line: 629, column: 16, scope: !204, atomGroup: 17, atomRank: 2)
!559 = !DILocation(line: 629, column: 30, scope: !204, atomGroup: 17, atomRank: 1)
!560 = !DILocation(line: 629, column: 7, scope: !204, atomGroup: 18, atomRank: 1)
!561 = distinct !{!561, !562, !553, !563}
!562 = !DILocation(line: 629, column: 7, scope: !204)
!563 = !{!"llvm.loop.mustprogress"}
!564 = !DILocation(line: 631, column: 18, scope: !565, atomGroup: 21, atomRank: 2)
!565 = distinct !DILexicalBlock(scope: !204, file: !82, line: 631, column: 11)
!566 = !DILocation(line: 631, column: 18, scope: !565)
!567 = !DILocation(line: 639, column: 23, scope: !191, atomGroup: 24, atomRank: 2)
!568 = !DILocation(line: 644, column: 39, scope: !191, atomGroup: 25, atomRank: 2)
!569 = !DILocation(line: 645, column: 3, scope: !191)
!570 = !DILocation(line: 645, column: 10, scope: !191)
!571 = !DILocation(line: 645, column: 21, scope: !191, atomGroup: 26, atomRank: 1)
!572 = !DILocation(line: 647, column: 32, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !82, line: 647, column: 11)
!574 = distinct !DILexicalBlock(scope: !191, file: !82, line: 646, column: 5)
!575 = !DILocation(line: 647, column: 49, scope: !573, atomGroup: 29, atomRank: 2)
!576 = !DILocation(line: 647, column: 29, scope: !573, atomGroup: 29, atomRank: 1)
!577 = !DILocation(line: 649, column: 11, scope: !578)
!578 = distinct !DILexicalBlock(scope: !574, file: !82, line: 649, column: 11)
!579 = !DILocation(line: 649, column: 11, scope: !578, atomGroup: 31, atomRank: 2)
!580 = !DILocation(line: 649, column: 11, scope: !578, atomGroup: 31, atomRank: 1)
!581 = !DILocation(line: 651, column: 26, scope: !582, atomGroup: 32, atomRank: 2)
!582 = distinct !DILexicalBlock(scope: !583, file: !82, line: 651, column: 15)
!583 = distinct !DILexicalBlock(scope: !578, file: !82, line: 650, column: 9)
!584 = !DILocation(line: 651, column: 34, scope: !582, atomGroup: 32, atomRank: 1)
!585 = !DILocation(line: 651, column: 46, scope: !582)
!586 = !DILocation(line: 651, column: 37, scope: !582)
!587 = !DILocation(line: 651, column: 37, scope: !582, atomGroup: 33, atomRank: 2)
!588 = !DILocation(line: 651, column: 34, scope: !582, atomGroup: 33, atomRank: 1)
!589 = !DILocation(line: 659, column: 16, scope: !574, atomGroup: 38, atomRank: 2)
!590 = distinct !{!590, !569, !591, !563}
!591 = !DILocation(line: 660, column: 5, scope: !191)
!592 = !DILocation(line: 663, column: 33, scope: !191)
!593 = !DILocation(line: 663, column: 43, scope: !191)
!594 = !DILocation(line: 663, column: 3, scope: !191)
!595 = !DILocation(line: 0, scope: !523, inlinedAt: !596)
!596 = distinct !DILocation(line: 667, column: 31, scope: !191)
!597 = !DILocation(line: 0, scope: !523, inlinedAt: !598)
!598 = distinct !DILocation(line: 668, column: 31, scope: !191)
!599 = !DILocation(line: 0, scope: !523, inlinedAt: !600)
!600 = distinct !DILocation(line: 669, column: 31, scope: !191)
!601 = !DILocation(line: 0, scope: !523, inlinedAt: !602)
!602 = distinct !DILocation(line: 670, column: 31, scope: !191)
!603 = !DILocation(line: 0, scope: !523, inlinedAt: !604)
!604 = distinct !DILocation(line: 671, column: 31, scope: !191)
!605 = !DILocation(line: 0, scope: !523, inlinedAt: !606)
!606 = distinct !DILocation(line: 672, column: 31, scope: !191)
!607 = !DILocation(line: 0, scope: !523, inlinedAt: !608)
!608 = distinct !DILocation(line: 673, column: 31, scope: !191)
!609 = !DILocation(line: 0, scope: !523, inlinedAt: !610)
!610 = distinct !DILocation(line: 674, column: 31, scope: !191)
!611 = !DILocation(line: 0, scope: !523, inlinedAt: !612)
!612 = distinct !DILocation(line: 675, column: 31, scope: !191)
!613 = !DILocation(line: 0, scope: !523, inlinedAt: !614)
!614 = distinct !DILocation(line: 676, column: 31, scope: !191)
!615 = !DILocation(line: 682, column: 7, scope: !616)
!616 = distinct !DILexicalBlock(scope: !191, file: !82, line: 682, column: 7)
!617 = !DILocation(line: 682, column: 7, scope: !616, atomGroup: 64, atomRank: 2)
!618 = !DILocation(line: 683, column: 7, scope: !616, atomGroup: 64, atomRank: 1)
!619 = !DILocation(line: 683, column: 10, scope: !616)
!620 = !DILocation(line: 683, column: 10, scope: !616, atomGroup: 65, atomRank: 2)
!621 = !DILocation(line: 683, column: 7, scope: !616, atomGroup: 65, atomRank: 1)
!622 = !DILocation(line: 689, column: 41, scope: !623)
!623 = distinct !DILexicalBlock(scope: !616, file: !82, line: 684, column: 5)
!624 = !DILocation(line: 688, column: 7, scope: !623)
!625 = !DILocation(line: 690, column: 5, scope: !623)
!626 = !DILocation(line: 696, column: 15, scope: !627)
!627 = distinct !DILexicalBlock(scope: !616, file: !82, line: 692, column: 5)
!628 = !DILocation(line: 695, column: 7, scope: !627)
!629 = !DILocation(line: 698, column: 20, scope: !191)
!630 = !DILocation(line: 698, column: 3, scope: !191)
!631 = !DILocation(line: 702, column: 21, scope: !191)
!632 = !DILocation(line: 702, column: 3, scope: !191)
!633 = !DILocation(line: 705, column: 36, scope: !191)
!634 = !DILocation(line: 705, column: 50, scope: !191)
!635 = !DILocation(line: 705, column: 3, scope: !191)
!636 = !DILocation(line: 707, column: 21, scope: !191)
!637 = !DILocation(line: 707, column: 3, scope: !191)
!638 = !DILocation(line: 710, column: 28, scope: !191)
!639 = !DILocation(line: 710, column: 3, scope: !191)
!640 = !DILocation(line: 715, column: 1, scope: !191)
!641 = !DILocation(line: 715, column: 1, scope: !191, atomGroup: 80, atomRank: 1)
!642 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 491, type: !643, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !646, keyInstructions: true)
!643 = !DISubroutineType(types: !644)
!644 = !{!83, !83, !645}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!646 = !{!647, !648, !649, !650, !651, !652}
!647 = !DILocalVariable(name: "argc", arg: 1, scope: !642, file: !2, line: 491, type: !83)
!648 = !DILocalVariable(name: "argv", arg: 2, scope: !642, file: !2, line: 491, type: !645)
!649 = !DILocalVariable(name: "optc", scope: !642, file: !2, line: 493, type: !83)
!650 = !DILocalVariable(name: "delim_arg", scope: !642, file: !2, line: 494, type: !143)
!651 = !DILocalVariable(name: "nfiles", scope: !642, file: !2, line: 530, type: !83)
!652 = !DILocalVariable(name: "ok", scope: !642, file: !2, line: 546, type: !172)
!653 = distinct !DIAssignID()
!654 = !DILocalVariable(name: "mbs", scope: !655, file: !118, line: 237, type: !674)
!655 = distinct !DISubprogram(name: "mcel_scan", scope: !118, file: !118, line: 223, type: !656, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !668, keyInstructions: true)
!656 = !DISubroutineType(types: !657)
!657 = !{!658, !143, !143}
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !118, line: 143, baseType: !659)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !118, line: 138, size: 64, elements: !660)
!660 = !{!661, !666, !667}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !659, file: !118, line: 140, baseType: !662, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !663, line: 37, baseType: !664)
!663 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !240, line: 57, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !240, line: 42, baseType: !89)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !659, file: !118, line: 141, baseType: !145, size: 8, offset: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !659, file: !118, line: 142, baseType: !145, size: 8, offset: 40)
!668 = !{!669, !670, !671, !654, !672, !673}
!669 = !DILocalVariable(name: "p", arg: 1, scope: !655, file: !118, line: 223, type: !143)
!670 = !DILocalVariable(name: "lim", arg: 2, scope: !655, file: !118, line: 223, type: !143)
!671 = !DILocalVariable(name: "c", scope: !655, file: !118, line: 228, type: !4)
!672 = !DILocalVariable(name: "ch", scope: !655, file: !118, line: 260, type: !662)
!673 = !DILocalVariable(name: "len", scope: !655, file: !118, line: 261, type: !140)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !675, line: 6, baseType: !676)
!675 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !677, line: 21, baseType: !678)
!677 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !677, line: 13, size: 64, elements: !679)
!679 = !{!680, !681}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !678, file: !677, line: 15, baseType: !83, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !678, file: !677, line: 20, baseType: !682, size: 32, offset: 32)
!682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !678, file: !677, line: 16, size: 32, elements: !683)
!683 = !{!684, !685}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !682, file: !677, line: 18, baseType: !89, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !682, file: !677, line: 19, baseType: !277, size: 32)
!686 = !DILocation(line: 0, scope: !655, inlinedAt: !687)
!687 = distinct !DILocation(line: 292, column: 10, scope: !688, inlinedAt: !697)
!688 = distinct !DISubprogram(name: "mcel_scant", scope: !118, file: !118, line: 281, type: !689, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !691, keyInstructions: true)
!689 = !DISubroutineType(types: !690)
!690 = !{!658, !143, !4}
!691 = !{!692, !693, !694, !695}
!692 = !DILocalVariable(name: "p", arg: 1, scope: !688, file: !118, line: 281, type: !143)
!693 = !DILocalVariable(name: "terminator", arg: 2, scope: !688, file: !118, line: 281, type: !4)
!694 = !DILocalVariable(name: "lim", scope: !688, file: !118, line: 289, type: !143)
!695 = !DILocalVariable(name: "i", scope: !696, file: !118, line: 290, type: !83)
!696 = distinct !DILexicalBlock(scope: !688, file: !118, line: 290, column: 3)
!697 = distinct !DILocation(line: 302, column: 10, scope: !698, inlinedAt: !703)
!698 = distinct !DISubprogram(name: "mcel_scanz", scope: !118, file: !118, line: 300, type: !699, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !701, keyInstructions: true)
!699 = !DISubroutineType(types: !700)
!700 = !{!658, !143}
!701 = !{!702}
!702 = !DILocalVariable(name: "p", arg: 1, scope: !698, file: !118, line: 300, type: !143)
!703 = distinct !DILocation(line: 142, column: 18, scope: !704, inlinedAt: !716)
!704 = distinct !DILexicalBlock(scope: !705, file: !2, line: 105, column: 5)
!705 = distinct !DISubprogram(name: "collapse_escapes", scope: !2, file: !2, line: 93, type: !706, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !708, keyInstructions: true)
!706 = !DISubroutineType(types: !707)
!707 = !{!83, !143}
!708 = !{!709, !710, !711, !712, !713, !714, !715}
!709 = !DILocalVariable(name: "strptr", arg: 1, scope: !705, file: !2, line: 93, type: !143)
!710 = !DILocalVariable(name: "strout", scope: !705, file: !2, line: 95, type: !137)
!711 = !DILocalVariable(name: "backslash_at_end", scope: !705, file: !2, line: 96, type: !172)
!712 = !DILocalVariable(name: "s", scope: !705, file: !2, line: 101, type: !143)
!713 = !DILocalVariable(name: "idx", scope: !705, file: !2, line: 102, type: !396)
!714 = !DILabel(scope: !704, name: "copy_character", file: !2, line: 141, column: 7)
!715 = !DILocalVariable(name: "g", scope: !704, file: !2, line: 142, type: !658)
!716 = distinct !DILocation(line: 537, column: 7, scope: !717)
!717 = distinct !DILexicalBlock(scope: !642, file: !2, line: 537, column: 7)
!718 = distinct !DIAssignID()
!719 = !DILocation(line: 0, scope: !642)
!720 = !DILocation(line: 497, column: 21, scope: !642)
!721 = !DILocation(line: 497, column: 3, scope: !642)
!722 = !DILocation(line: 498, column: 3, scope: !642)
!723 = !DILocation(line: 499, column: 3, scope: !642)
!724 = !DILocation(line: 500, column: 3, scope: !642)
!725 = !DILocation(line: 502, column: 3, scope: !642)
!726 = !DILocation(line: 504, column: 3, scope: !642)
!727 = !DILocation(line: 504, column: 18, scope: !642, atomGroup: 2, atomRank: 2)
!728 = !DILocation(line: 504, column: 3, scope: !642, atomGroup: 4, atomRank: 1)
!729 = !DILocation(line: 510, column: 24, scope: !730)
!730 = distinct !DILexicalBlock(scope: !731, file: !2, line: 507, column: 9)
!731 = distinct !DILexicalBlock(scope: !642, file: !2, line: 505, column: 5)
!732 = !DILocation(line: 510, column: 34, scope: !730, atomGroup: 7, atomRank: 2)
!733 = !DILocation(line: 510, column: 24, scope: !730, atomGroup: 7, atomRank: 1)
!734 = !DILocation(line: 511, column: 11, scope: !730, atomGroup: 8, atomRank: 1)
!735 = distinct !{!735, !726, !736, !563}
!736 = !DILocation(line: 528, column: 5, scope: !642)
!737 = !DILocation(line: 514, column: 24, scope: !730, atomGroup: 9, atomRank: 1)
!738 = !DILocation(line: 515, column: 11, scope: !730, atomGroup: 10, atomRank: 1)
!739 = !DILocation(line: 518, column: 22, scope: !730, atomGroup: 11, atomRank: 1)
!740 = !DILocation(line: 519, column: 11, scope: !730, atomGroup: 12, atomRank: 1)
!741 = !DILocation(line: 521, column: 9, scope: !730)
!742 = !DILocation(line: 523, column: 9, scope: !730)
!743 = !DILocation(line: 523, column: 49, scope: !730)
!744 = !DILocation(line: 526, column: 11, scope: !730)
!745 = !DILocation(line: 530, column: 23, scope: !642)
!746 = !DILocation(line: 530, column: 21, scope: !642, atomGroup: 13, atomRank: 2)
!747 = !DILocation(line: 531, column: 14, scope: !748, atomGroup: 14, atomRank: 2)
!748 = distinct !DILexicalBlock(scope: !642, file: !2, line: 531, column: 7)
!749 = !DILocation(line: 531, column: 14, scope: !748, atomGroup: 14, atomRank: 1)
!750 = !DILocation(line: 533, column: 7, scope: !751)
!751 = distinct !DILexicalBlock(scope: !748, file: !2, line: 532, column: 5)
!752 = !DILocation(line: 533, column: 20, scope: !751, atomGroup: 15, atomRank: 1)
!753 = !DILocation(line: 535, column: 5, scope: !751)
!754 = !DILocation(line: 0, scope: !705, inlinedAt: !716)
!755 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !716, atomGroup: 1, atomRank: 2)
!756 = !DILocation(line: 98, column: 10, scope: !705, inlinedAt: !716, atomGroup: 3, atomRank: 1)
!757 = !DILocation(line: 99, column: 34, scope: !705, inlinedAt: !716)
!758 = !DILocation(line: 99, column: 26, scope: !705, inlinedAt: !716, atomGroup: 5, atomRank: 1)
!759 = !DILocation(line: 99, column: 16, scope: !705, inlinedAt: !716, atomGroup: 4, atomRank: 2)
!760 = !DILocation(line: 99, column: 14, scope: !705, inlinedAt: !716, atomGroup: 4, atomRank: 1)
!761 = !{!762, !762, i64 0}
!762 = !{!"p1 long", !436, i64 0}
!763 = !DILocation(line: 104, column: 10, scope: !705, inlinedAt: !716)
!764 = !DILocation(line: 104, column: 3, scope: !705, inlinedAt: !716, atomGroup: 160, atomRank: 1)
!765 = !DILocation(line: 104, column: 3, scope: !705, inlinedAt: !716, atomGroup: 161, atomRank: 1)
!766 = !DILocation(line: 148, column: 11, scope: !705, inlinedAt: !716, atomGroup: 163, atomRank: 1)
!767 = !DILocation(line: 152, column: 21, scope: !768, inlinedAt: !716, atomGroup: 208, atomRank: 1)
!768 = distinct !DILexicalBlock(scope: !769, file: !2, line: 151, column: 5)
!769 = distinct !DILexicalBlock(scope: !705, file: !2, line: 150, column: 7)
!770 = !{!771, !771, i64 0}
!771 = !{!"long", !421, i64 0}
!772 = !DILocation(line: 537, column: 7, scope: !717, atomGroup: 210, atomRank: 1)
!773 = !DILocation(line: 106, column: 14, scope: !774, inlinedAt: !716, atomGroup: 10, atomRank: 2)
!774 = distinct !DILexicalBlock(scope: !704, file: !2, line: 106, column: 11)
!775 = !DILocation(line: 106, column: 14, scope: !774, inlinedAt: !716, atomGroup: 10, atomRank: 1)
!776 = !DILocation(line: 108, column: 12, scope: !777, inlinedAt: !716, atomGroup: 11, atomRank: 2)
!777 = distinct !DILexicalBlock(scope: !774, file: !2, line: 107, column: 9)
!778 = !DILocation(line: 109, column: 15, scope: !779, inlinedAt: !716)
!779 = distinct !DILexicalBlock(scope: !777, file: !2, line: 109, column: 15)
!780 = !DILocation(line: 109, column: 18, scope: !779, inlinedAt: !716, atomGroup: 12, atomRank: 1)
!781 = !DILocation(line: 122, column: 15, scope: !782, inlinedAt: !716, atomGroup: 19, atomRank: 1)
!782 = distinct !DILexicalBlock(scope: !783, file: !2, line: 121, column: 13)
!783 = distinct !DILexicalBlock(scope: !779, file: !2, line: 114, column: 20)
!784 = !DILocation(line: 122, column: 15, scope: !782, inlinedAt: !716, atomGroup: 211, atomRank: 1)
!785 = !DILocation(line: 0, scope: !786, inlinedAt: !716)
!786 = distinct !DILexicalBlock(scope: !782, file: !2, line: 123, column: 17)
!787 = !DILocation(line: 0, scope: !783, inlinedAt: !716)
!788 = !DILocation(line: 138, column: 11, scope: !777, inlinedAt: !716, atomGroup: 45, atomRank: 1)
!789 = !DILocation(line: 0, scope: !704, inlinedAt: !716)
!790 = !DILocation(line: 104, column: 3, scope: !705, inlinedAt: !716, atomGroup: 8, atomRank: 1)
!791 = !DILocation(line: 104, column: 3, scope: !705, inlinedAt: !716, atomGroup: 9, atomRank: 1)
!792 = distinct !{!792, !793, !794, !563}
!793 = !DILocation(line: 104, column: 3, scope: !705, inlinedAt: !716)
!794 = !DILocation(line: 146, column: 5, scope: !705, inlinedAt: !716)
!795 = !DILocation(line: 148, column: 11, scope: !705, inlinedAt: !716, atomGroup: 166, atomRank: 1)
!796 = !DILocation(line: 537, column: 7, scope: !717, atomGroup: 205, atomRank: 1)
!797 = !DILocation(line: 284, column: 21, scope: !798, inlinedAt: !697)
!798 = distinct !DILexicalBlock(scope: !688, file: !118, line: 284, column: 7)
!799 = !DILocation(line: 141, column: 7, scope: !704, inlinedAt: !716)
!800 = !DILocation(line: 0, scope: !698, inlinedAt: !703)
!801 = !DILocation(line: 0, scope: !688, inlinedAt: !697)
!802 = !DILocalVariable(name: "c", arg: 1, scope: !803, file: !118, line: 215, type: !4)
!803 = distinct !DISubprogram(name: "mcel_isbasic", scope: !118, file: !118, line: 215, type: !804, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !806, keyInstructions: true)
!804 = !DISubroutineType(types: !805)
!805 = !{!172, !4}
!806 = !{!802}
!807 = !DILocation(line: 0, scope: !803, inlinedAt: !808)
!808 = distinct !DILocation(line: 284, column: 7, scope: !798, inlinedAt: !697)
!809 = !DILocation(line: 217, column: 24, scope: !803, inlinedAt: !808, atomGroup: 2, atomRank: 2)
!810 = !DILocation(line: 284, column: 7, scope: !798, inlinedAt: !697, atomGroup: 1, atomRank: 1)
!811 = !DILocation(line: 289, column: 23, scope: !688, inlinedAt: !697, atomGroup: 3, atomRank: 2)
!812 = !DILocation(line: 0, scope: !696, inlinedAt: !697)
!813 = !DILocation(line: 291, column: 12, scope: !814, inlinedAt: !697)
!814 = distinct !DILexicalBlock(scope: !696, file: !118, line: 290, column: 3)
!815 = !DILocation(line: 291, column: 17, scope: !814, inlinedAt: !697)
!816 = !DILocation(line: 291, column: 9, scope: !814, inlinedAt: !697)
!817 = !DILocation(line: 291, column: 9, scope: !814, inlinedAt: !697, atomGroup: 7, atomRank: 2)
!818 = !DILocation(line: 291, column: 9, scope: !814, inlinedAt: !697, atomGroup: 152, atomRank: 2)
!819 = !DILocation(line: 0, scope: !803, inlinedAt: !820)
!820 = distinct !DILocation(line: 229, column: 7, scope: !821, inlinedAt: !687)
!821 = distinct !DILexicalBlock(scope: !655, file: !118, line: 229, column: 7)
!822 = !DILocation(line: 237, column: 3, scope: !655, inlinedAt: !687)
!823 = !DILocation(line: 237, column: 30, scope: !655, inlinedAt: !687, atomGroup: 4, atomRank: 1)
!824 = !{!825, !420, i64 0}
!825 = !{!"", !420, i64 0, !421, i64 4}
!826 = distinct !DIAssignID()
!827 = !DILocation(line: 260, column: 3, scope: !655, inlinedAt: !687)
!828 = !DILocation(line: 261, column: 38, scope: !655, inlinedAt: !687)
!829 = !DILocation(line: 261, column: 16, scope: !655, inlinedAt: !687, atomGroup: 5, atomRank: 2)
!830 = !DILocation(line: 267, column: 37, scope: !831, inlinedAt: !687)
!831 = distinct !DILexicalBlock(scope: !655, file: !118, line: 267, column: 7)
!832 = !DILocation(line: 267, column: 7, scope: !831, inlinedAt: !687, atomGroup: 6, atomRank: 1)
!833 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!834 = !DILocation(line: 273, column: 1, scope: !655, inlinedAt: !687)
!835 = !DILocalVariable(name: "__dest", arg: 1, scope: !836, file: !837, line: 42, type: !840)
!836 = distinct !DISubprogram(name: "mempcpy", scope: !837, file: !837, line: 42, type: !838, scopeLine: 44, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !844, keyInstructions: true)
!837 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!838 = !DISubroutineType(types: !839)
!839 = !{!138, !840, !841, !140}
!840 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !138)
!841 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!844 = !{!835, !845, !846}
!845 = !DILocalVariable(name: "__src", arg: 2, scope: !836, file: !837, line: 42, type: !841)
!846 = !DILocalVariable(name: "__len", arg: 3, scope: !836, file: !837, line: 43, type: !140)
!847 = !DILocation(line: 0, scope: !836, inlinedAt: !848)
!848 = distinct !DILocation(line: 143, column: 16, scope: !704, inlinedAt: !716)
!849 = !DILocation(line: 45, column: 10, scope: !836, inlinedAt: !848, atomGroup: 1, atomRank: 2)
!850 = !DILocation(line: 144, column: 9, scope: !704, inlinedAt: !716, atomGroup: 48, atomRank: 2)
!851 = !DILocation(line: 145, column: 7, scope: !704, inlinedAt: !716)
!852 = !DILocation(line: 145, column: 25, scope: !704, inlinedAt: !716, atomGroup: 49, atomRank: 1)
!853 = !DILocation(line: 148, column: 11, scope: !705, inlinedAt: !716, atomGroup: 51, atomRank: 1)
!854 = !DILocation(line: 150, column: 11, scope: !769, inlinedAt: !716, atomGroup: 52, atomRank: 2)
!855 = !DILocation(line: 150, column: 11, scope: !769, inlinedAt: !716, atomGroup: 52, atomRank: 1)
!856 = !DILocation(line: 152, column: 21, scope: !768, inlinedAt: !716, atomGroup: 53, atomRank: 1)
!857 = !DILocation(line: 537, column: 7, scope: !717, atomGroup: 17, atomRank: 1)
!858 = !DILocation(line: 156, column: 14, scope: !705, inlinedAt: !716, atomGroup: 55, atomRank: 1)
!859 = !DILocation(line: 542, column: 14, scope: !860)
!860 = distinct !DILexicalBlock(scope: !717, file: !2, line: 538, column: 5)
!861 = !DILocation(line: 543, column: 14, scope: !860)
!862 = !DILocation(line: 541, column: 7, scope: !860)
!863 = !DILocation(line: 156, column: 14, scope: !705, inlinedAt: !716, atomGroup: 204, atomRank: 1)
!864 = !DILocation(line: 546, column: 15, scope: !642)
!865 = !DILocation(line: 547, column: 15, scope: !642)
!866 = !DILocation(line: 547, column: 29, scope: !642)
!867 = !DILocation(line: 547, column: 24, scope: !642)
!868 = !DILocation(line: 546, column: 14, scope: !642, atomGroup: 18, atomRank: 3)
!869 = !{ptr @paste_parallel, ptr @paste_serial}
!870 = !DILocation(line: 549, column: 9, scope: !642)
!871 = !DILocation(line: 549, column: 3, scope: !642)
!872 = !DILocation(line: 550, column: 9, scope: !642)
!873 = !DILocation(line: 550, column: 3, scope: !642)
!874 = !DILocation(line: 552, column: 7, scope: !875, atomGroup: 19, atomRank: 3)
!875 = distinct !DILexicalBlock(scope: !642, file: !2, line: 552, column: 7)
!876 = !DILocation(line: 552, column: 23, scope: !875, atomGroup: 19, atomRank: 1)
!877 = !DILocation(line: 552, column: 34, scope: !875)
!878 = !DILocation(line: 552, column: 26, scope: !875)
!879 = !DILocation(line: 552, column: 41, scope: !875, atomGroup: 20, atomRank: 2)
!880 = !DILocation(line: 552, column: 23, scope: !875, atomGroup: 20, atomRank: 1)
!881 = !DILocation(line: 553, column: 26, scope: !875)
!882 = !DILocation(line: 553, column: 5, scope: !875)
!883 = !DILocation(line: 554, column: 10, scope: !642, atomGroup: 22, atomRank: 2)
!884 = !DILocation(line: 554, column: 3, scope: !642, atomGroup: 22, atomRank: 1)
!885 = !DISubprogram(name: "set_program_name", scope: !886, file: !886, line: 38, type: !470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!886 = !DIFile(filename: "./lib/progname.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3e5536ae3756d6a65acb8e248212c2ee")
!887 = !DISubprogram(name: "setlocale", scope: !888, file: !888, line: 122, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!888 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!889 = !DISubroutineType(types: !890)
!890 = !{!137, !83, !143}
!891 = !DISubprogram(name: "bindtextdomain", scope: !499, file: !499, line: 86, type: !892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!892 = !DISubroutineType(types: !893)
!893 = !{!137, !143, !143}
!894 = !DISubprogram(name: "textdomain", scope: !499, file: !499, line: 82, type: !895, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!895 = !DISubroutineType(types: !896)
!896 = !{!137, !143}
!897 = !DISubprogram(name: "atexit", scope: !898, file: !898, line: 602, type: !899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!898 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!899 = !DISubroutineType(types: !900)
!900 = !{!83, !901}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!902 = !DISubprogram(name: "getopt_long", scope: !385, file: !385, line: 66, type: !903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!903 = !DISubroutineType(types: !904)
!904 = !{!83, !83, !905, !143, !907, !390}
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!908 = !DISubprogram(name: "version_etc", scope: !909, file: !909, line: 70, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!909 = !DIFile(filename: "./lib/version-etc.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "7242964c9dbfa69ef19b57250c13e279")
!910 = !DISubroutineType(types: !911)
!911 = !{null, !213, !143, !143, !143, null}
!912 = !DISubprogram(name: "proper_name_lite", scope: !913, file: !913, line: 126, type: !914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!913 = !DIFile(filename: "./lib/propername.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "fdc444d0083bc592737160d9365ffa54")
!914 = !DISubroutineType(types: !915)
!915 = !{!143, !143, !143}
!916 = !DISubprogram(name: "error", scope: !917, file: !917, line: 31, type: !918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!917 = !DIFile(filename: "/usr/include/error.h", directory: "", checksumkind: CSK_MD5, checksum: "0bac552e7426506dc6623c11568834e0")
!918 = !DISubroutineType(types: !919)
!919 = !{null, !83, !83, !143, null}
!920 = !DISubprogram(name: "quotearg_n_style_colon", scope: !88, file: !88, line: 419, type: !921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!921 = !DISubroutineType(types: !922)
!922 = !{!137, !83, !87, !143}
!923 = distinct !DISubprogram(name: "paste_serial", scope: !2, file: !2, line: 364, type: !924, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !926, keyInstructions: true)
!924 = !DISubroutineType(types: !925)
!925 = !{!172, !140, !645}
!926 = !{!927, !928, !929, !930, !931, !932, !933, !937, !938, !939}
!927 = !DILocalVariable(name: "nfiles", arg: 1, scope: !923, file: !2, line: 364, type: !140)
!928 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !923, file: !2, line: 364, type: !645)
!929 = !DILocalVariable(name: "ok", scope: !923, file: !2, line: 366, type: !172)
!930 = !DILocalVariable(name: "charnew", scope: !923, file: !2, line: 367, type: !83)
!931 = !DILocalVariable(name: "charold", scope: !923, file: !2, line: 367, type: !83)
!932 = !DILocalVariable(name: "fileptr", scope: !923, file: !2, line: 368, type: !213)
!933 = !DILocalVariable(name: "saved_errno", scope: !934, file: !2, line: 372, type: !83)
!934 = distinct !DILexicalBlock(scope: !935, file: !2, line: 371, column: 5)
!935 = distinct !DILexicalBlock(scope: !936, file: !2, line: 370, column: 3)
!936 = distinct !DILexicalBlock(scope: !923, file: !2, line: 370, column: 3)
!937 = !DILocalVariable(name: "is_stdin", scope: !934, file: !2, line: 373, type: !172)
!938 = !DILocalVariable(name: "delimidx", scope: !934, file: !2, line: 391, type: !396)
!939 = !DILocalVariable(name: "delimoff", scope: !934, file: !2, line: 392, type: !396)
!940 = !DILocation(line: 0, scope: !923)
!941 = !DILocation(line: 370, column: 3, scope: !936, atomGroup: 200, atomRank: 1)
!942 = !DILocation(line: 370, column: 3, scope: !936, atomGroup: 201, atomRank: 1)
!943 = !DILocation(line: 373, column: 30, scope: !934)
!944 = !DILocation(line: 0, scope: !523, inlinedAt: !945)
!945 = distinct !DILocation(line: 373, column: 23, scope: !934)
!946 = !DILocation(line: 1370, column: 11, scope: !523, inlinedAt: !945)
!947 = !DILocation(line: 1370, column: 10, scope: !523, inlinedAt: !945)
!948 = !DILocation(line: 0, scope: !934)
!949 = !DILocation(line: 374, column: 11, scope: !950, atomGroup: 5, atomRank: 1)
!950 = distinct !DILexicalBlock(scope: !934, file: !2, line: 374, column: 11)
!951 = !DILocation(line: 376, column: 27, scope: !952, atomGroup: 6, atomRank: 1)
!952 = distinct !DILexicalBlock(scope: !950, file: !2, line: 375, column: 9)
!953 = !DILocation(line: 377, column: 21, scope: !952, atomGroup: 7, atomRank: 2)
!954 = !DILocation(line: 378, column: 9, scope: !952)
!955 = !DILocation(line: 381, column: 21, scope: !956, atomGroup: 8, atomRank: 2)
!956 = distinct !DILexicalBlock(scope: !950, file: !2, line: 380, column: 9)
!957 = !DILocation(line: 382, column: 23, scope: !958, atomGroup: 9, atomRank: 2)
!958 = distinct !DILexicalBlock(scope: !956, file: !2, line: 382, column: 15)
!959 = !DILocation(line: 382, column: 23, scope: !958, atomGroup: 9, atomRank: 1)
!960 = !DILocation(line: 384, column: 25, scope: !961)
!961 = distinct !DILexicalBlock(scope: !958, file: !2, line: 383, column: 13)
!962 = !DILocation(line: 386, column: 15, scope: !961, atomGroup: 11, atomRank: 1)
!963 = !DILocation(line: 388, column: 11, scope: !956)
!964 = !DILocation(line: 0, scope: !950)
!965 = !DILocalVariable(name: "__fp", arg: 1, scope: !966, file: !967, line: 66, type: !213)
!966 = distinct !DISubprogram(name: "getc_unlocked", scope: !967, file: !967, line: 66, type: !968, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !970, keyInstructions: true)
!967 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!968 = !DISubroutineType(types: !969)
!969 = !{!83, !213}
!970 = !{!965}
!971 = !DILocation(line: 0, scope: !966, inlinedAt: !972)
!972 = distinct !DILocation(line: 394, column: 17, scope: !934)
!973 = !DILocation(line: 68, column: 10, scope: !966, inlinedAt: !972)
!974 = !{!975, !438, i64 8}
!975 = !{!"_IO_FILE", !420, i64 0, !438, i64 8, !438, i64 16, !438, i64 24, !438, i64 32, !438, i64 40, !438, i64 48, !438, i64 56, !438, i64 64, !438, i64 72, !438, i64 80, !438, i64 88, !976, i64 96, !435, i64 104, !420, i64 112, !420, i64 116, !771, i64 120, !555, i64 128, !421, i64 130, !421, i64 131, !436, i64 136, !771, i64 144, !977, i64 152, !978, i64 160, !435, i64 168, !436, i64 176, !771, i64 184, !420, i64 192, !421, i64 196}
!976 = !{!"p1 _ZTS10_IO_marker", !436, i64 0}
!977 = !{!"p1 _ZTS11_IO_codecvt", !436, i64 0}
!978 = !{!"p1 _ZTS13_IO_wide_data", !436, i64 0}
!979 = !{!975, !438, i64 16}
!980 = !DILocation(line: 68, column: 10, scope: !966, inlinedAt: !972, atomGroup: 2, atomRank: 1)
!981 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!982 = !DILocation(line: 68, column: 10, scope: !966, inlinedAt: !972, atomGroup: 3, atomRank: 2)
!983 = !DILocation(line: 68, column: 10, scope: !966, inlinedAt: !972, atomGroup: 3, atomRank: 1)
!984 = !DILocation(line: 395, column: 21, scope: !934)
!985 = !DILocation(line: 396, column: 19, scope: !986, atomGroup: 203, atomRank: 1)
!986 = distinct !DILexicalBlock(scope: !934, file: !2, line: 396, column: 11)
!987 = !DILocation(line: 396, column: 19, scope: !986, atomGroup: 16, atomRank: 2)
!988 = !DILocation(line: 396, column: 19, scope: !986, atomGroup: 16, atomRank: 1)
!989 = !DILocation(line: 404, column: 11, scope: !990)
!990 = distinct !DILexicalBlock(scope: !986, file: !2, line: 397, column: 9)
!991 = !DILocation(line: 395, column: 21, scope: !934, atomGroup: 15, atomRank: 2)
!992 = !DILocation(line: 428, column: 22, scope: !993)
!993 = distinct !DILexicalBlock(scope: !934, file: !2, line: 428, column: 11)
!994 = !DILocation(line: 428, column: 19, scope: !993, atomGroup: 199, atomRank: 1)
!995 = !DILocation(line: 0, scope: !966, inlinedAt: !996)
!996 = distinct !DILocation(line: 404, column: 29, scope: !990)
!997 = !DILocation(line: 68, column: 10, scope: !966, inlinedAt: !996)
!998 = !DILocation(line: 68, column: 10, scope: !966, inlinedAt: !996, atomGroup: 2, atomRank: 1)
!999 = !DILocation(line: 68, column: 10, scope: !966, inlinedAt: !996, atomGroup: 3, atomRank: 2)
!1000 = !DILocation(line: 68, column: 10, scope: !966, inlinedAt: !996, atomGroup: 3, atomRank: 1)
!1001 = !DILocation(line: 404, column: 11, scope: !990, atomGroup: 19, atomRank: 1)
!1002 = !DILocation(line: 404, column: 45, scope: !990, atomGroup: 18, atomRank: 1)
!1003 = !DILocation(line: 407, column: 30, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !2, line: 407, column: 19)
!1005 = distinct !DILexicalBlock(scope: !990, file: !2, line: 405, column: 13)
!1006 = !DILocation(line: 407, column: 27, scope: !1004, atomGroup: 20, atomRank: 2)
!1007 = !DILocation(line: 407, column: 27, scope: !1004, atomGroup: 20, atomRank: 1)
!1008 = !DILocation(line: 409, column: 52, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1004, file: !2, line: 408, column: 17)
!1010 = !DILocalVariable(name: "delimptr", arg: 1, scope: !1011, file: !2, line: 174, type: !143)
!1011 = distinct !DISubprogram(name: "output_delim", scope: !2, file: !2, line: 174, type: !1012, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1014, keyInstructions: true)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{null, !143, !140}
!1014 = !{!1010, !1015, !1016, !1019, !1020}
!1015 = !DILocalVariable(name: "len", arg: 2, scope: !1011, file: !2, line: 174, type: !140)
!1016 = !DILocalVariable(name: "__ptr", scope: !1017, file: !2, line: 176, type: !143)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !2, line: 176, column: 18)
!1018 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 176, column: 7)
!1019 = !DILocalVariable(name: "__stream", scope: !1017, file: !2, line: 176, type: !213)
!1020 = !DILocalVariable(name: "__cnt", scope: !1017, file: !2, line: 176, type: !140)
!1021 = !DILocation(line: 0, scope: !1011, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 409, column: 19, scope: !1009)
!1023 = !DILocation(line: 176, column: 11, scope: !1018, inlinedAt: !1022, atomGroup: 1, atomRank: 2)
!1024 = !DILocation(line: 176, column: 15, scope: !1018, inlinedAt: !1022, atomGroup: 1, atomRank: 1)
!1025 = !DILocation(line: 409, column: 33, scope: !1009)
!1026 = !DILocation(line: 409, column: 40, scope: !1009)
!1027 = !DILocation(line: 176, column: 44, scope: !1018, inlinedAt: !1022, atomGroup: 5, atomRank: 2)
!1028 = !DILocation(line: 176, column: 18, scope: !1018, inlinedAt: !1022)
!1029 = !DILocation(line: 176, column: 52, scope: !1018, inlinedAt: !1022, atomGroup: 16, atomRank: 2)
!1030 = !DILocation(line: 176, column: 15, scope: !1018, inlinedAt: !1022, atomGroup: 16, atomRank: 1)
!1031 = !DILocation(line: 410, column: 31, scope: !1009)
!1032 = !DILocation(line: 955, column: 21, scope: !1033, inlinedAt: !1036, atomGroup: 1, atomRank: 2)
!1033 = distinct !DISubprogram(name: "write_error", scope: !82, file: !82, line: 953, type: !448, scopeLine: 954, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1034, keyInstructions: true)
!1034 = !{!1035}
!1035 = !DILocalVariable(name: "saved_errno", scope: !1033, file: !82, line: 955, type: !83)
!1036 = distinct !DILocation(line: 177, column: 5, scope: !1018, inlinedAt: !1022)
!1037 = !DILocation(line: 0, scope: !1033, inlinedAt: !1036)
!1038 = !DILocation(line: 956, column: 11, scope: !1033, inlinedAt: !1036)
!1039 = !DILocation(line: 956, column: 3, scope: !1033, inlinedAt: !1036)
!1040 = !DILocation(line: 957, column: 11, scope: !1033, inlinedAt: !1036)
!1041 = !DILocation(line: 957, column: 3, scope: !1033, inlinedAt: !1036)
!1042 = !DILocation(line: 958, column: 13, scope: !1033, inlinedAt: !1036)
!1043 = !DILocation(line: 958, column: 3, scope: !1033, inlinedAt: !1036)
!1044 = !DILocation(line: 959, column: 37, scope: !1033, inlinedAt: !1036)
!1045 = !DILocation(line: 959, column: 3, scope: !1033, inlinedAt: !1036)
!1046 = !DILocation(line: 410, column: 28, scope: !1009, atomGroup: 21, atomRank: 2)
!1047 = !DILocation(line: 411, column: 23, scope: !1048, atomGroup: 22, atomRank: 2)
!1048 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 411, column: 23)
!1049 = !DILocation(line: 411, column: 37, scope: !1048)
!1050 = !DILocation(line: 411, column: 34, scope: !1048, atomGroup: 23, atomRank: 2)
!1051 = !DILocation(line: 411, column: 34, scope: !1048, atomGroup: 23, atomRank: 1)
!1052 = distinct !{!1052, !989, !1053, !563}
!1053 = !DILocation(line: 421, column: 13, scope: !990)
!1054 = !DILocalVariable(name: "c", arg: 1, scope: !1055, file: !2, line: 164, type: !4)
!1055 = distinct !DISubprogram(name: "xputchar", scope: !2, file: !2, line: 164, type: !1056, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1058, keyInstructions: true)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{null, !4}
!1058 = !{!1054}
!1059 = !DILocation(line: 0, scope: !1055, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 418, column: 17, scope: !1004)
!1061 = !DILocalVariable(name: "__c", arg: 1, scope: !1062, file: !967, line: 108, type: !83)
!1062 = distinct !DISubprogram(name: "putchar_unlocked", scope: !967, file: !967, line: 108, type: !1063, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1065, keyInstructions: true)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!83, !83}
!1065 = !{!1061}
!1066 = !DILocation(line: 0, scope: !1062, inlinedAt: !1067)
!1067 = distinct !DILocation(line: 166, column: 7, scope: !1068, inlinedAt: !1060)
!1068 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 166, column: 7)
!1069 = !DILocation(line: 110, column: 37, scope: !1062, inlinedAt: !1067)
!1070 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1067)
!1071 = !{!975, !438, i64 40}
!1072 = !{!975, !438, i64 48}
!1073 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1067, atomGroup: 2, atomRank: 1)
!1074 = !DILocation(line: 418, column: 27, scope: !1004)
!1075 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1067, atomGroup: 4, atomRank: 2)
!1076 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1067, atomGroup: 4, atomRank: 1)
!1077 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1067, atomGroup: 3, atomRank: 1)
!1078 = !DILocation(line: 166, column: 19, scope: !1068, inlinedAt: !1060, atomGroup: 169, atomRank: 1)
!1079 = !DILocation(line: 166, column: 16, scope: !1068, inlinedAt: !1060)
!1080 = !DILocation(line: 166, column: 19, scope: !1068, inlinedAt: !1060, atomGroup: 1, atomRank: 2)
!1081 = !DILocation(line: 166, column: 19, scope: !1068, inlinedAt: !1060, atomGroup: 1, atomRank: 1)
!1082 = !DILocation(line: 955, column: 21, scope: !1033, inlinedAt: !1083, atomGroup: 1, atomRank: 2)
!1083 = distinct !DILocation(line: 167, column: 5, scope: !1068, inlinedAt: !1060)
!1084 = !DILocation(line: 0, scope: !1033, inlinedAt: !1083)
!1085 = !DILocation(line: 956, column: 11, scope: !1033, inlinedAt: !1083)
!1086 = !DILocation(line: 956, column: 3, scope: !1033, inlinedAt: !1083)
!1087 = !DILocation(line: 957, column: 11, scope: !1033, inlinedAt: !1083)
!1088 = !DILocation(line: 957, column: 3, scope: !1033, inlinedAt: !1083)
!1089 = !DILocation(line: 958, column: 13, scope: !1033, inlinedAt: !1083)
!1090 = !DILocation(line: 958, column: 3, scope: !1033, inlinedAt: !1083)
!1091 = !DILocation(line: 959, column: 37, scope: !1033, inlinedAt: !1083)
!1092 = !DILocation(line: 959, column: 3, scope: !1033, inlinedAt: !1083)
!1093 = !DILocation(line: 422, column: 25, scope: !990, atomGroup: 27, atomRank: 2)
!1094 = !DILocation(line: 0, scope: !1055, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 425, column: 11, scope: !990)
!1096 = !DILocation(line: 0, scope: !1062, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 166, column: 7, scope: !1068, inlinedAt: !1095)
!1098 = !DILocation(line: 110, column: 37, scope: !1062, inlinedAt: !1097)
!1099 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1097)
!1100 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1097, atomGroup: 2, atomRank: 1)
!1101 = !DILocation(line: 425, column: 21, scope: !990)
!1102 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1097, atomGroup: 4, atomRank: 2)
!1103 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1097, atomGroup: 4, atomRank: 1)
!1104 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1097, atomGroup: 3, atomRank: 1)
!1105 = !DILocation(line: 166, column: 19, scope: !1068, inlinedAt: !1095, atomGroup: 169, atomRank: 1)
!1106 = !DILocation(line: 166, column: 16, scope: !1068, inlinedAt: !1095)
!1107 = !DILocation(line: 166, column: 19, scope: !1068, inlinedAt: !1095, atomGroup: 1, atomRank: 2)
!1108 = !DILocation(line: 166, column: 19, scope: !1068, inlinedAt: !1095, atomGroup: 1, atomRank: 1)
!1109 = !DILocation(line: 955, column: 21, scope: !1033, inlinedAt: !1110, atomGroup: 1, atomRank: 2)
!1110 = distinct !DILocation(line: 167, column: 5, scope: !1068, inlinedAt: !1095)
!1111 = !DILocation(line: 0, scope: !1033, inlinedAt: !1110)
!1112 = !DILocation(line: 956, column: 11, scope: !1033, inlinedAt: !1110)
!1113 = !DILocation(line: 956, column: 3, scope: !1033, inlinedAt: !1110)
!1114 = !DILocation(line: 957, column: 11, scope: !1033, inlinedAt: !1110)
!1115 = !DILocation(line: 957, column: 3, scope: !1033, inlinedAt: !1110)
!1116 = !DILocation(line: 958, column: 13, scope: !1033, inlinedAt: !1110)
!1117 = !DILocation(line: 958, column: 3, scope: !1033, inlinedAt: !1110)
!1118 = !DILocation(line: 959, column: 37, scope: !1033, inlinedAt: !1110)
!1119 = !DILocation(line: 959, column: 3, scope: !1033, inlinedAt: !1110)
!1120 = !DILocation(line: 428, column: 19, scope: !993, atomGroup: 28, atomRank: 2)
!1121 = !DILocation(line: 428, column: 19, scope: !993, atomGroup: 28, atomRank: 1)
!1122 = !DILocation(line: 0, scope: !1055, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 429, column: 9, scope: !993)
!1124 = !DILocation(line: 0, scope: !1062, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 166, column: 7, scope: !1068, inlinedAt: !1123)
!1126 = !DILocation(line: 110, column: 37, scope: !1062, inlinedAt: !1125)
!1127 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1125)
!1128 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1125, atomGroup: 2, atomRank: 1)
!1129 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1125, atomGroup: 4, atomRank: 2)
!1130 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1125, atomGroup: 4, atomRank: 1)
!1131 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1125, atomGroup: 3, atomRank: 1)
!1132 = !DILocation(line: 166, column: 19, scope: !1068, inlinedAt: !1123, atomGroup: 169, atomRank: 1)
!1133 = !DILocation(line: 166, column: 19, scope: !1068, inlinedAt: !1123, atomGroup: 1, atomRank: 2)
!1134 = !DILocation(line: 166, column: 19, scope: !1068, inlinedAt: !1123, atomGroup: 1, atomRank: 1)
!1135 = !DILocation(line: 955, column: 21, scope: !1033, inlinedAt: !1136, atomGroup: 1, atomRank: 2)
!1136 = distinct !DILocation(line: 167, column: 5, scope: !1068, inlinedAt: !1123)
!1137 = !DILocation(line: 0, scope: !1033, inlinedAt: !1136)
!1138 = !DILocation(line: 956, column: 11, scope: !1033, inlinedAt: !1136)
!1139 = !DILocation(line: 956, column: 3, scope: !1033, inlinedAt: !1136)
!1140 = !DILocation(line: 957, column: 11, scope: !1033, inlinedAt: !1136)
!1141 = !DILocation(line: 957, column: 3, scope: !1033, inlinedAt: !1136)
!1142 = !DILocation(line: 958, column: 13, scope: !1033, inlinedAt: !1136)
!1143 = !DILocation(line: 958, column: 3, scope: !1033, inlinedAt: !1136)
!1144 = !DILocation(line: 959, column: 37, scope: !1033, inlinedAt: !1136)
!1145 = !DILocation(line: 959, column: 3, scope: !1033, inlinedAt: !1136)
!1146 = !DILocalVariable(name: "__stream", arg: 1, scope: !1147, file: !967, line: 135, type: !213)
!1147 = distinct !DISubprogram(name: "ferror_unlocked", scope: !967, file: !967, line: 135, type: !968, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1148, keyInstructions: true)
!1148 = !{!1146}
!1149 = !DILocation(line: 0, scope: !1147, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 431, column: 12, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !934, file: !2, line: 431, column: 11)
!1152 = !DILocation(line: 137, column: 10, scope: !1147, inlinedAt: !1150)
!1153 = !{!975, !420, i64 0}
!1154 = !DILocation(line: 431, column: 12, scope: !1151, atomGroup: 29, atomRank: 2)
!1155 = !DILocation(line: 431, column: 11, scope: !1151, atomGroup: 29, atomRank: 1)
!1156 = !DILocation(line: 433, column: 11, scope: !1157, atomGroup: 31, atomRank: 1)
!1157 = distinct !DILexicalBlock(scope: !934, file: !2, line: 433, column: 11)
!1158 = !DILocation(line: 434, column: 9, scope: !1157)
!1159 = !DILocation(line: 435, column: 16, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 435, column: 16)
!1161 = !DILocation(line: 435, column: 33, scope: !1160, atomGroup: 32, atomRank: 2)
!1162 = !DILocation(line: 435, column: 38, scope: !1160, atomGroup: 32, atomRank: 1)
!1163 = !DILocation(line: 436, column: 23, scope: !1160, atomGroup: 34, atomRank: 2)
!1164 = !DILocation(line: 436, column: 9, scope: !1160)
!1165 = !DILocation(line: 437, column: 11, scope: !1166, atomGroup: 35, atomRank: 2)
!1166 = distinct !DILexicalBlock(scope: !934, file: !2, line: 437, column: 11)
!1167 = !DILocation(line: 437, column: 11, scope: !1166, atomGroup: 35, atomRank: 1)
!1168 = !DILocation(line: 370, column: 24, scope: !935, atomGroup: 37, atomRank: 2)
!1169 = !DILocation(line: 370, column: 35, scope: !935, atomGroup: 38, atomRank: 2)
!1170 = !DILocation(line: 370, column: 3, scope: !936, atomGroup: 2, atomRank: 1)
!1171 = !DILocation(line: 370, column: 3, scope: !936, atomGroup: 3, atomRank: 1)
!1172 = distinct !{!1172, !1173, !1174, !563}
!1173 = !DILocation(line: 370, column: 3, scope: !936)
!1174 = !DILocation(line: 442, column: 5, scope: !936)
!1175 = !DILocation(line: 443, column: 3, scope: !923, atomGroup: 41, atomRank: 1)
!1176 = distinct !DISubprogram(name: "paste_parallel", scope: !2, file: !2, line: 185, type: !924, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1177, keyInstructions: true)
!1177 = !{!1178, !1179, !1180, !1181, !1182, !1184, !1185, !1186, !1188, !1189, !1190, !1191, !1193, !1196, !1197, !1198, !1205, !1206, !1207, !1218, !1219, !1220, !1222}
!1178 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1176, file: !2, line: 185, type: !140)
!1179 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !1176, file: !2, line: 185, type: !645)
!1180 = !DILocalVariable(name: "ok", scope: !1176, file: !2, line: 187, type: !172)
!1181 = !DILocalVariable(name: "delbuf", scope: !1176, file: !2, line: 192, type: !137)
!1182 = !DILocalVariable(name: "fileptr", scope: !1176, file: !2, line: 196, type: !1183)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!1184 = !DILocalVariable(name: "files_open", scope: !1176, file: !2, line: 199, type: !140)
!1185 = !DILocalVariable(name: "opened_stdin", scope: !1176, file: !2, line: 202, type: !172)
!1186 = !DILocalVariable(name: "somedone", scope: !1187, file: !2, line: 236, type: !172)
!1187 = distinct !DILexicalBlock(scope: !1176, file: !2, line: 234, column: 5)
!1188 = !DILocalVariable(name: "delimidx", scope: !1187, file: !2, line: 237, type: !396)
!1189 = !DILocalVariable(name: "delimoff", scope: !1187, file: !2, line: 238, type: !396)
!1190 = !DILocalVariable(name: "delims_saved", scope: !1187, file: !2, line: 239, type: !396)
!1191 = !DILocalVariable(name: "i", scope: !1192, file: !2, line: 241, type: !140)
!1192 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 241, column: 7)
!1193 = !DILocalVariable(name: "chr", scope: !1194, file: !2, line: 243, type: !83)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 242, column: 9)
!1195 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 241, column: 7)
!1196 = !DILocalVariable(name: "err", scope: !1194, file: !2, line: 244, type: !83)
!1197 = !DILocalVariable(name: "sometodo", scope: !1194, file: !2, line: 245, type: !172)
!1198 = !DILocalVariable(name: "__ptr", scope: !1199, file: !2, line: 253, type: !143)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 253, column: 23)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 253, column: 23)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 252, column: 17)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 251, column: 19)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 248, column: 13)
!1204 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 247, column: 15)
!1205 = !DILocalVariable(name: "__stream", scope: !1199, file: !2, line: 253, type: !213)
!1206 = !DILocalVariable(name: "__cnt", scope: !1199, file: !2, line: 253, type: !140)
!1207 = !DILocalVariable(name: "__ptr", scope: !1208, file: !2, line: 300, type: !143)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 300, column: 31)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !2, line: 300, column: 31)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !2, line: 299, column: 25)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !2, line: 298, column: 27)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 296, column: 21)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 295, column: 23)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 292, column: 17)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 291, column: 19)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 270, column: 13)
!1217 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 269, column: 15)
!1218 = !DILocalVariable(name: "__stream", scope: !1208, file: !2, line: 300, type: !213)
!1219 = !DILocalVariable(name: "__cnt", scope: !1208, file: !2, line: 300, type: !140)
!1220 = !DILocalVariable(name: "len", scope: !1221, file: !2, line: 312, type: !140)
!1221 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 310, column: 17)
!1222 = !DILocalVariable(name: "c", scope: !1223, file: !2, line: 348, type: !4)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 345, column: 17)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !2, line: 332, column: 19)
!1225 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 327, column: 13)
!1226 = !DILocation(line: 0, scope: !1176)
!1227 = !DILocation(line: 192, column: 35, scope: !1176)
!1228 = !DILocation(line: 192, column: 42, scope: !1176)
!1229 = !DILocation(line: 192, column: 40, scope: !1176)
!1230 = !DILocation(line: 192, column: 53, scope: !1176)
!1231 = !DILocation(line: 192, column: 18, scope: !1176, atomGroup: 2, atomRank: 2)
!1232 = !DILocation(line: 196, column: 37, scope: !1176)
!1233 = !DILocation(line: 196, column: 20, scope: !1176, atomGroup: 3, atomRank: 2)
!1234 = !DILocation(line: 208, column: 35, scope: !1235, atomGroup: 178, atomRank: 1)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !2, line: 208, column: 3)
!1236 = distinct !DILexicalBlock(scope: !1176, file: !2, line: 208, column: 3)
!1237 = !DILocation(line: 208, column: 3, scope: !1236, atomGroup: 179, atomRank: 1)
!1238 = !DILocation(line: 210, column: 18, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 210, column: 11)
!1240 = distinct !DILexicalBlock(scope: !1235, file: !2, line: 209, column: 5)
!1241 = !DILocation(line: 0, scope: !523, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 210, column: 11, scope: !1239)
!1243 = !DILocation(line: 1370, column: 11, scope: !523, inlinedAt: !1242)
!1244 = !DILocation(line: 1370, column: 10, scope: !523, inlinedAt: !1242)
!1245 = !DILocation(line: 210, column: 11, scope: !1239, atomGroup: 8, atomRank: 1)
!1246 = !DILocation(line: 212, column: 27, scope: !1247, atomGroup: 9, atomRank: 1)
!1247 = distinct !DILexicalBlock(scope: !1239, file: !2, line: 211, column: 9)
!1248 = !DILocation(line: 213, column: 33, scope: !1247, atomGroup: 10, atomRank: 2)
!1249 = !DILocation(line: 213, column: 11, scope: !1247)
!1250 = !DILocation(line: 213, column: 31, scope: !1247, atomGroup: 10, atomRank: 1)
!1251 = !DILocation(line: 214, column: 9, scope: !1247)
!1252 = !DILocation(line: 217, column: 33, scope: !1253, atomGroup: 11, atomRank: 2)
!1253 = distinct !DILexicalBlock(scope: !1239, file: !2, line: 216, column: 9)
!1254 = !DILocation(line: 217, column: 11, scope: !1253)
!1255 = !DILocation(line: 217, column: 31, scope: !1253, atomGroup: 11, atomRank: 1)
!1256 = !DILocation(line: 218, column: 35, scope: !1257, atomGroup: 12, atomRank: 2)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 218, column: 15)
!1258 = !DILocation(line: 218, column: 35, scope: !1257, atomGroup: 12, atomRank: 1)
!1259 = !DILocation(line: 219, column: 34, scope: !1257)
!1260 = !DILocation(line: 219, column: 55, scope: !1257)
!1261 = !DILocation(line: 219, column: 47, scope: !1257)
!1262 = !DILocation(line: 219, column: 13, scope: !1257)
!1263 = !DILocation(line: 220, column: 20, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1257, file: !2, line: 220, column: 20)
!1265 = !DILocation(line: 220, column: 49, scope: !1264, atomGroup: 13, atomRank: 2)
!1266 = !DILocation(line: 220, column: 49, scope: !1264, atomGroup: 13, atomRank: 1)
!1267 = !DILocation(line: 222, column: 11, scope: !1253)
!1268 = !DILocation(line: 208, column: 45, scope: !1235, atomGroup: 15, atomRank: 2)
!1269 = !DILocation(line: 208, column: 35, scope: !1235, atomGroup: 6, atomRank: 1)
!1270 = !DILocation(line: 208, column: 3, scope: !1236, atomGroup: 7, atomRank: 1)
!1271 = distinct !{!1271, !1272, !1273, !563}
!1272 = !DILocation(line: 208, column: 3, scope: !1236)
!1273 = !DILocation(line: 224, column: 5, scope: !1236)
!1274 = !DILocation(line: 226, column: 20, scope: !1275, atomGroup: 17, atomRank: 1)
!1275 = distinct !DILexicalBlock(scope: !1176, file: !2, line: 226, column: 7)
!1276 = !DILocation(line: 227, column: 29, scope: !1275)
!1277 = !DILocation(line: 227, column: 5, scope: !1275)
!1278 = !DILocation(line: 208, column: 19, scope: !1236, atomGroup: 5, atomRank: 1)
!1279 = !DILocation(line: 187, column: 8, scope: !1176, atomGroup: 1, atomRank: 1)
!1280 = !DILocation(line: 0, scope: !1194)
!1281 = !DILocation(line: 233, column: 3, scope: !1176, atomGroup: 19, atomRank: 1)
!1282 = !DILocation(line: 233, column: 3, scope: !1176, atomGroup: 20, atomRank: 1)
!1283 = !DILocation(line: 0, scope: !1187)
!1284 = !DILocation(line: 0, scope: !1192)
!1285 = !DILocation(line: 247, column: 15, scope: !1204)
!1286 = !DILocation(line: 247, column: 15, scope: !1204, atomGroup: 29, atomRank: 2)
!1287 = !DILocation(line: 247, column: 15, scope: !1204, atomGroup: 29, atomRank: 1)
!1288 = !DILocation(line: 0, scope: !966, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 249, column: 21, scope: !1203)
!1290 = !DILocation(line: 68, column: 10, scope: !966, inlinedAt: !1289)
!1291 = !DILocation(line: 68, column: 10, scope: !966, inlinedAt: !1289, atomGroup: 2, atomRank: 1)
!1292 = !DILocation(line: 68, column: 10, scope: !966, inlinedAt: !1289, atomGroup: 3, atomRank: 2)
!1293 = !DILocation(line: 68, column: 10, scope: !966, inlinedAt: !1289, atomGroup: 3, atomRank: 1)
!1294 = !DILocation(line: 68, column: 10, scope: !966, inlinedAt: !1289, atomGroup: 1, atomRank: 2)
!1295 = !DILocation(line: 250, column: 21, scope: !1203)
!1296 = !DILocation(line: 250, column: 21, scope: !1203, atomGroup: 31, atomRank: 2)
!1297 = !DILocation(line: 251, column: 23, scope: !1202, atomGroup: 32, atomRank: 2)
!1298 = !DILocation(line: 251, column: 30, scope: !1202, atomGroup: 32, atomRank: 1)
!1299 = !DILocation(line: 253, column: 56, scope: !1200, atomGroup: 37, atomRank: 2)
!1300 = !DILocation(line: 253, column: 23, scope: !1200)
!1301 = !DILocation(line: 253, column: 64, scope: !1200, atomGroup: 48, atomRank: 2)
!1302 = !DILocation(line: 253, column: 64, scope: !1200, atomGroup: 48, atomRank: 1)
!1303 = !DILocation(line: 955, column: 21, scope: !1033, inlinedAt: !1304, atomGroup: 1, atomRank: 2)
!1304 = distinct !DILocation(line: 254, column: 21, scope: !1200)
!1305 = !DILocation(line: 0, scope: !1033, inlinedAt: !1304)
!1306 = !DILocation(line: 956, column: 11, scope: !1033, inlinedAt: !1304)
!1307 = !DILocation(line: 956, column: 3, scope: !1033, inlinedAt: !1304)
!1308 = !DILocation(line: 957, column: 11, scope: !1033, inlinedAt: !1304)
!1309 = !DILocation(line: 957, column: 3, scope: !1033, inlinedAt: !1304)
!1310 = !DILocation(line: 958, column: 13, scope: !1033, inlinedAt: !1304)
!1311 = !DILocation(line: 958, column: 3, scope: !1033, inlinedAt: !1304)
!1312 = !DILocation(line: 959, column: 37, scope: !1033, inlinedAt: !1304)
!1313 = !DILocation(line: 959, column: 3, scope: !1033, inlinedAt: !1304)
!1314 = !DILocation(line: 258, column: 26, scope: !1203, atomGroup: 182, atomRank: 1)
!1315 = !DILocation(line: 258, column: 15, scope: !1203, atomGroup: 183, atomRank: 1)
!1316 = !DILocation(line: 261, column: 30, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !2, line: 261, column: 23)
!1318 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 259, column: 17)
!1319 = !DILocation(line: 261, column: 27, scope: !1317, atomGroup: 53, atomRank: 2)
!1320 = !DILocation(line: 261, column: 27, scope: !1317, atomGroup: 53, atomRank: 1)
!1321 = !DILocation(line: 0, scope: !1055, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 263, column: 19, scope: !1318)
!1323 = !DILocation(line: 0, scope: !1062, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 166, column: 7, scope: !1068, inlinedAt: !1322)
!1325 = !DILocation(line: 110, column: 37, scope: !1062, inlinedAt: !1324)
!1326 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1324)
!1327 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1324, atomGroup: 2, atomRank: 1)
!1328 = !DILocation(line: 263, column: 29, scope: !1318)
!1329 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1324, atomGroup: 4, atomRank: 2)
!1330 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1324, atomGroup: 4, atomRank: 1)
!1331 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1324, atomGroup: 3, atomRank: 1)
!1332 = !DILocation(line: 166, column: 19, scope: !1068, inlinedAt: !1322, atomGroup: 169, atomRank: 1)
!1333 = !DILocation(line: 166, column: 16, scope: !1068, inlinedAt: !1322)
!1334 = !DILocation(line: 166, column: 19, scope: !1068, inlinedAt: !1322, atomGroup: 1, atomRank: 2)
!1335 = !DILocation(line: 166, column: 19, scope: !1068, inlinedAt: !1322, atomGroup: 1, atomRank: 1)
!1336 = !DILocation(line: 955, column: 21, scope: !1033, inlinedAt: !1337, atomGroup: 1, atomRank: 2)
!1337 = distinct !DILocation(line: 167, column: 5, scope: !1068, inlinedAt: !1322)
!1338 = !DILocation(line: 0, scope: !1033, inlinedAt: !1337)
!1339 = !DILocation(line: 956, column: 11, scope: !1033, inlinedAt: !1337)
!1340 = !DILocation(line: 956, column: 3, scope: !1033, inlinedAt: !1337)
!1341 = !DILocation(line: 957, column: 11, scope: !1033, inlinedAt: !1337)
!1342 = !DILocation(line: 957, column: 3, scope: !1033, inlinedAt: !1337)
!1343 = !DILocation(line: 958, column: 13, scope: !1033, inlinedAt: !1337)
!1344 = !DILocation(line: 958, column: 3, scope: !1033, inlinedAt: !1337)
!1345 = !DILocation(line: 959, column: 37, scope: !1033, inlinedAt: !1337)
!1346 = !DILocation(line: 959, column: 3, scope: !1033, inlinedAt: !1337)
!1347 = !DILocation(line: 0, scope: !966, inlinedAt: !1348)
!1348 = distinct !DILocation(line: 264, column: 25, scope: !1318)
!1349 = !DILocation(line: 68, column: 10, scope: !966, inlinedAt: !1348)
!1350 = !DILocation(line: 68, column: 10, scope: !966, inlinedAt: !1348, atomGroup: 2, atomRank: 1)
!1351 = !DILocation(line: 68, column: 10, scope: !966, inlinedAt: !1348, atomGroup: 3, atomRank: 2)
!1352 = !DILocation(line: 68, column: 10, scope: !966, inlinedAt: !1348, atomGroup: 3, atomRank: 1)
!1353 = !DILocation(line: 68, column: 10, scope: !966, inlinedAt: !1348, atomGroup: 1, atomRank: 2)
!1354 = !DILocation(line: 258, column: 26, scope: !1203, atomGroup: 50, atomRank: 1)
!1355 = !DILocation(line: 258, column: 15, scope: !1203, atomGroup: 51, atomRank: 1)
!1356 = distinct !{!1356, !1357, !1358, !563}
!1357 = !DILocation(line: 258, column: 15, scope: !1203)
!1358 = !DILocation(line: 266, column: 17, scope: !1203)
!1359 = !DILocation(line: 0, scope: !1147, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 275, column: 24, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 275, column: 23)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !2, line: 274, column: 17)
!1363 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 273, column: 19)
!1364 = !DILocation(line: 137, column: 10, scope: !1147, inlinedAt: !1360)
!1365 = !DILocation(line: 275, column: 24, scope: !1361, atomGroup: 59, atomRank: 2)
!1366 = !DILocation(line: 275, column: 23, scope: !1361, atomGroup: 59, atomRank: 1)
!1367 = !DILocation(line: 277, column: 37, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 277, column: 23)
!1369 = !DILocation(line: 277, column: 34, scope: !1368, atomGroup: 61, atomRank: 2)
!1370 = !DILocation(line: 277, column: 34, scope: !1368, atomGroup: 61, atomRank: 1)
!1371 = !DILocation(line: 278, column: 21, scope: !1368)
!1372 = !DILocation(line: 279, column: 28, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1368, file: !2, line: 279, column: 28)
!1374 = !DILocation(line: 279, column: 48, scope: !1373, atomGroup: 62, atomRank: 2)
!1375 = !DILocation(line: 279, column: 55, scope: !1373, atomGroup: 62, atomRank: 1)
!1376 = !DILocation(line: 280, column: 27, scope: !1373, atomGroup: 64, atomRank: 2)
!1377 = !DILocation(line: 280, column: 21, scope: !1373)
!1378 = !DILocation(line: 281, column: 23, scope: !1379, atomGroup: 65, atomRank: 2)
!1379 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 281, column: 23)
!1380 = !DILocation(line: 281, column: 23, scope: !1379, atomGroup: 65, atomRank: 1)
!1381 = !DILocation(line: 283, column: 52, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 282, column: 21)
!1383 = !DILocation(line: 283, column: 44, scope: !1382)
!1384 = !DILocation(line: 283, column: 23, scope: !1382)
!1385 = !DILocation(line: 285, column: 21, scope: !1382)
!1386 = !DILocation(line: 287, column: 30, scope: !1362, atomGroup: 67, atomRank: 1)
!1387 = !DILocation(line: 288, column: 29, scope: !1362, atomGroup: 68, atomRank: 2)
!1388 = !DILocation(line: 289, column: 17, scope: !1362)
!1389 = !DILocation(line: 291, column: 21, scope: !1215)
!1390 = !DILocation(line: 291, column: 25, scope: !1215, atomGroup: 69, atomRank: 2)
!1391 = !DILocation(line: 291, column: 25, scope: !1215, atomGroup: 69, atomRank: 1)
!1392 = !DILocation(line: 295, column: 23, scope: !1213, atomGroup: 70, atomRank: 1)
!1393 = !DILocation(line: 298, column: 27, scope: !1211, atomGroup: 71, atomRank: 2)
!1394 = !DILocation(line: 298, column: 27, scope: !1211, atomGroup: 71, atomRank: 1)
!1395 = !DILocation(line: 300, column: 64, scope: !1209, atomGroup: 75, atomRank: 2)
!1396 = !DILocation(line: 300, column: 31, scope: !1209)
!1397 = !DILocation(line: 301, column: 31, scope: !1209, atomGroup: 86, atomRank: 2)
!1398 = !DILocation(line: 301, column: 31, scope: !1209, atomGroup: 86, atomRank: 1)
!1399 = !DILocation(line: 955, column: 21, scope: !1033, inlinedAt: !1400)
!1400 = distinct !DILocation(line: 302, column: 29, scope: !1209)
!1401 = !DILocation(line: 955, column: 21, scope: !1033, inlinedAt: !1400, atomGroup: 1, atomRank: 2)
!1402 = !DILocation(line: 0, scope: !1033, inlinedAt: !1400)
!1403 = !DILocation(line: 956, column: 11, scope: !1033, inlinedAt: !1400)
!1404 = !DILocation(line: 956, column: 3, scope: !1033, inlinedAt: !1400)
!1405 = !DILocation(line: 957, column: 11, scope: !1033, inlinedAt: !1400)
!1406 = !DILocation(line: 957, column: 3, scope: !1033, inlinedAt: !1400)
!1407 = !DILocation(line: 958, column: 13, scope: !1033, inlinedAt: !1400)
!1408 = !DILocation(line: 958, column: 3, scope: !1033, inlinedAt: !1400)
!1409 = !DILocation(line: 959, column: 37, scope: !1033, inlinedAt: !1400)
!1410 = !DILocation(line: 959, column: 3, scope: !1033, inlinedAt: !1400)
!1411 = !DILocation(line: 305, column: 33, scope: !1212)
!1412 = !DILocation(line: 0, scope: !1055, inlinedAt: !1413)
!1413 = distinct !DILocation(line: 305, column: 23, scope: !1212)
!1414 = !DILocation(line: 0, scope: !1062, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 166, column: 7, scope: !1068, inlinedAt: !1413)
!1416 = !DILocation(line: 110, column: 37, scope: !1062, inlinedAt: !1415)
!1417 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1415)
!1418 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1415, atomGroup: 2, atomRank: 1)
!1419 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1415, atomGroup: 4, atomRank: 2)
!1420 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1415, atomGroup: 4, atomRank: 1)
!1421 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1415, atomGroup: 3, atomRank: 1)
!1422 = !DILocation(line: 166, column: 19, scope: !1068, inlinedAt: !1413, atomGroup: 169, atomRank: 1)
!1423 = !DILocation(line: 166, column: 16, scope: !1068, inlinedAt: !1413)
!1424 = !DILocation(line: 166, column: 19, scope: !1068, inlinedAt: !1413, atomGroup: 1, atomRank: 2)
!1425 = !DILocation(line: 166, column: 19, scope: !1068, inlinedAt: !1413, atomGroup: 1, atomRank: 1)
!1426 = !DILocation(line: 955, column: 21, scope: !1033, inlinedAt: !1427)
!1427 = distinct !DILocation(line: 167, column: 5, scope: !1068, inlinedAt: !1413)
!1428 = !DILocation(line: 955, column: 21, scope: !1033, inlinedAt: !1427, atomGroup: 1, atomRank: 2)
!1429 = !DILocation(line: 0, scope: !1033, inlinedAt: !1427)
!1430 = !DILocation(line: 956, column: 11, scope: !1033, inlinedAt: !1427)
!1431 = !DILocation(line: 956, column: 3, scope: !1033, inlinedAt: !1427)
!1432 = !DILocation(line: 957, column: 11, scope: !1033, inlinedAt: !1427)
!1433 = !DILocation(line: 957, column: 3, scope: !1033, inlinedAt: !1427)
!1434 = !DILocation(line: 958, column: 13, scope: !1033, inlinedAt: !1427)
!1435 = !DILocation(line: 958, column: 3, scope: !1033, inlinedAt: !1427)
!1436 = !DILocation(line: 959, column: 37, scope: !1033, inlinedAt: !1427)
!1437 = !DILocation(line: 959, column: 3, scope: !1033, inlinedAt: !1427)
!1438 = !DILocation(line: 312, column: 32, scope: !1221)
!1439 = !DILocation(line: 312, column: 32, scope: !1221, atomGroup: 89, atomRank: 2)
!1440 = !DILocation(line: 0, scope: !1221)
!1441 = !DILocation(line: 313, column: 27, scope: !1442, atomGroup: 90, atomRank: 2)
!1442 = distinct !DILexicalBlock(scope: !1221, file: !2, line: 313, column: 23)
!1443 = !DILocation(line: 313, column: 27, scope: !1442, atomGroup: 90, atomRank: 1)
!1444 = !DILocation(line: 315, column: 38, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1442, file: !2, line: 314, column: 21)
!1446 = !DILocation(line: 315, column: 54, scope: !1445)
!1447 = !DILocation(line: 315, column: 61, scope: !1445)
!1448 = !DILocalVariable(name: "__dest", arg: 1, scope: !1449, file: !837, line: 26, type: !840)
!1449 = distinct !DISubprogram(name: "memcpy", scope: !837, file: !837, line: 26, type: !838, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1450, keyInstructions: true)
!1450 = !{!1448, !1451, !1452}
!1451 = !DILocalVariable(name: "__src", arg: 2, scope: !1449, file: !837, line: 26, type: !841)
!1452 = !DILocalVariable(name: "__len", arg: 3, scope: !1449, file: !837, line: 27, type: !140)
!1453 = !DILocation(line: 0, scope: !1449, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 315, column: 23, scope: !1445)
!1455 = !DILocation(line: 29, column: 10, scope: !1449, inlinedAt: !1454, atomGroup: 1, atomRank: 2)
!1456 = !DILocation(line: 316, column: 36, scope: !1445, atomGroup: 91, atomRank: 2)
!1457 = !DILocation(line: 317, column: 21, scope: !1445)
!1458 = !DILocation(line: 318, column: 28, scope: !1221, atomGroup: 92, atomRank: 2)
!1459 = !DILocation(line: 319, column: 23, scope: !1460, atomGroup: 93, atomRank: 2)
!1460 = distinct !DILexicalBlock(scope: !1221, file: !2, line: 319, column: 23)
!1461 = !DILocation(line: 319, column: 37, scope: !1460)
!1462 = !DILocation(line: 319, column: 34, scope: !1460, atomGroup: 94, atomRank: 2)
!1463 = !DILocation(line: 319, column: 34, scope: !1460, atomGroup: 94, atomRank: 1)
!1464 = !DILocation(line: 325, column: 13, scope: !1216)
!1465 = !DILocation(line: 332, column: 21, scope: !1224)
!1466 = !DILocation(line: 332, column: 25, scope: !1224, atomGroup: 98, atomRank: 2)
!1467 = !DILocation(line: 332, column: 25, scope: !1224, atomGroup: 98, atomRank: 1)
!1468 = !DILocation(line: 334, column: 30, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !2, line: 334, column: 23)
!1470 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 333, column: 17)
!1471 = !DILocation(line: 334, column: 27, scope: !1469, atomGroup: 99, atomRank: 2)
!1472 = !DILocation(line: 334, column: 41, scope: !1469, atomGroup: 99, atomRank: 1)
!1473 = !DILocation(line: 0, scope: !1055, inlinedAt: !1474)
!1474 = distinct !DILocation(line: 335, column: 21, scope: !1469)
!1475 = !DILocation(line: 0, scope: !1062, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 166, column: 7, scope: !1068, inlinedAt: !1474)
!1477 = !DILocation(line: 110, column: 37, scope: !1062, inlinedAt: !1476)
!1478 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1476)
!1479 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1476, atomGroup: 2, atomRank: 1)
!1480 = !DILocation(line: 335, column: 31, scope: !1469)
!1481 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1476, atomGroup: 4, atomRank: 2)
!1482 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1476, atomGroup: 4, atomRank: 1)
!1483 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1476, atomGroup: 3, atomRank: 1)
!1484 = !DILocation(line: 166, column: 19, scope: !1068, inlinedAt: !1474, atomGroup: 169, atomRank: 1)
!1485 = !DILocation(line: 166, column: 19, scope: !1068, inlinedAt: !1474, atomGroup: 1, atomRank: 2)
!1486 = !DILocation(line: 166, column: 19, scope: !1068, inlinedAt: !1474, atomGroup: 1, atomRank: 1)
!1487 = !DILocation(line: 955, column: 21, scope: !1033, inlinedAt: !1488, atomGroup: 1, atomRank: 2)
!1488 = distinct !DILocation(line: 167, column: 5, scope: !1068, inlinedAt: !1474)
!1489 = !DILocation(line: 0, scope: !1033, inlinedAt: !1488)
!1490 = !DILocation(line: 956, column: 11, scope: !1033, inlinedAt: !1488)
!1491 = !DILocation(line: 956, column: 3, scope: !1033, inlinedAt: !1488)
!1492 = !DILocation(line: 957, column: 11, scope: !1033, inlinedAt: !1488)
!1493 = !DILocation(line: 957, column: 3, scope: !1033, inlinedAt: !1488)
!1494 = !DILocation(line: 958, column: 13, scope: !1033, inlinedAt: !1488)
!1495 = !DILocation(line: 958, column: 3, scope: !1033, inlinedAt: !1488)
!1496 = !DILocation(line: 959, column: 37, scope: !1033, inlinedAt: !1488)
!1497 = !DILocation(line: 959, column: 3, scope: !1033, inlinedAt: !1488)
!1498 = !DILocation(line: 336, column: 52, scope: !1470)
!1499 = !DILocation(line: 0, scope: !1011, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 336, column: 19, scope: !1470)
!1501 = !DILocation(line: 176, column: 11, scope: !1018, inlinedAt: !1500, atomGroup: 1, atomRank: 2)
!1502 = !DILocation(line: 176, column: 15, scope: !1018, inlinedAt: !1500, atomGroup: 1, atomRank: 1)
!1503 = !DILocation(line: 336, column: 33, scope: !1470)
!1504 = !DILocation(line: 336, column: 40, scope: !1470)
!1505 = !DILocation(line: 176, column: 44, scope: !1018, inlinedAt: !1500, atomGroup: 5, atomRank: 2)
!1506 = !DILocation(line: 176, column: 18, scope: !1018, inlinedAt: !1500)
!1507 = !DILocation(line: 176, column: 52, scope: !1018, inlinedAt: !1500, atomGroup: 16, atomRank: 2)
!1508 = !DILocation(line: 176, column: 15, scope: !1018, inlinedAt: !1500, atomGroup: 16, atomRank: 1)
!1509 = !DILocation(line: 337, column: 31, scope: !1470)
!1510 = !DILocation(line: 955, column: 21, scope: !1033, inlinedAt: !1511, atomGroup: 1, atomRank: 2)
!1511 = distinct !DILocation(line: 177, column: 5, scope: !1018, inlinedAt: !1500)
!1512 = !DILocation(line: 0, scope: !1033, inlinedAt: !1511)
!1513 = !DILocation(line: 956, column: 11, scope: !1033, inlinedAt: !1511)
!1514 = !DILocation(line: 956, column: 3, scope: !1033, inlinedAt: !1511)
!1515 = !DILocation(line: 957, column: 11, scope: !1033, inlinedAt: !1511)
!1516 = !DILocation(line: 957, column: 3, scope: !1033, inlinedAt: !1511)
!1517 = !DILocation(line: 958, column: 13, scope: !1033, inlinedAt: !1511)
!1518 = !DILocation(line: 958, column: 3, scope: !1033, inlinedAt: !1511)
!1519 = !DILocation(line: 959, column: 37, scope: !1033, inlinedAt: !1511)
!1520 = !DILocation(line: 959, column: 3, scope: !1033, inlinedAt: !1511)
!1521 = !DILocation(line: 337, column: 28, scope: !1470, atomGroup: 101, atomRank: 2)
!1522 = !DILocation(line: 338, column: 23, scope: !1523, atomGroup: 102, atomRank: 2)
!1523 = distinct !DILexicalBlock(scope: !1470, file: !2, line: 338, column: 23)
!1524 = !DILocation(line: 338, column: 37, scope: !1523)
!1525 = !DILocation(line: 338, column: 34, scope: !1523, atomGroup: 103, atomRank: 2)
!1526 = !DILocation(line: 338, column: 34, scope: !1523, atomGroup: 103, atomRank: 1)
!1527 = !DILocation(line: 348, column: 33, scope: !1223, atomGroup: 107, atomRank: 2)
!1528 = !DILocation(line: 348, column: 29, scope: !1223, atomGroup: 107, atomRank: 1)
!1529 = !DILocation(line: 0, scope: !1223)
!1530 = !DILocation(line: 0, scope: !1055, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 349, column: 19, scope: !1223)
!1532 = !DILocation(line: 0, scope: !1062, inlinedAt: !1533)
!1533 = distinct !DILocation(line: 166, column: 7, scope: !1068, inlinedAt: !1531)
!1534 = !DILocation(line: 110, column: 37, scope: !1062, inlinedAt: !1533)
!1535 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1533)
!1536 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1533, atomGroup: 2, atomRank: 1)
!1537 = !DILocation(line: 348, column: 28, scope: !1223, atomGroup: 106, atomRank: 2)
!1538 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1533, atomGroup: 4, atomRank: 2)
!1539 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1533, atomGroup: 4, atomRank: 1)
!1540 = !DILocation(line: 110, column: 10, scope: !1062, inlinedAt: !1533, atomGroup: 3, atomRank: 1)
!1541 = !DILocation(line: 166, column: 19, scope: !1068, inlinedAt: !1531, atomGroup: 169, atomRank: 1)
!1542 = !DILocation(line: 166, column: 16, scope: !1068, inlinedAt: !1531)
!1543 = !DILocation(line: 166, column: 19, scope: !1068, inlinedAt: !1531, atomGroup: 1, atomRank: 2)
!1544 = !DILocation(line: 166, column: 19, scope: !1068, inlinedAt: !1531, atomGroup: 1, atomRank: 1)
!1545 = !DILocation(line: 955, column: 21, scope: !1033, inlinedAt: !1546, atomGroup: 1, atomRank: 2)
!1546 = distinct !DILocation(line: 167, column: 5, scope: !1068, inlinedAt: !1531)
!1547 = !DILocation(line: 0, scope: !1033, inlinedAt: !1546)
!1548 = !DILocation(line: 956, column: 11, scope: !1033, inlinedAt: !1546)
!1549 = !DILocation(line: 956, column: 3, scope: !1033, inlinedAt: !1546)
!1550 = !DILocation(line: 957, column: 11, scope: !1033, inlinedAt: !1546)
!1551 = !DILocation(line: 957, column: 3, scope: !1033, inlinedAt: !1546)
!1552 = !DILocation(line: 958, column: 13, scope: !1033, inlinedAt: !1546)
!1553 = !DILocation(line: 958, column: 3, scope: !1033, inlinedAt: !1546)
!1554 = !DILocation(line: 959, column: 37, scope: !1033, inlinedAt: !1546)
!1555 = !DILocation(line: 959, column: 3, scope: !1033, inlinedAt: !1546)
!1556 = !DILocation(line: 241, column: 53, scope: !1195, atomGroup: 108, atomRank: 2)
!1557 = !DILocation(line: 241, column: 28, scope: !1195, atomGroup: 26, atomRank: 2)
!1558 = !DILocation(line: 241, column: 37, scope: !1195, atomGroup: 26, atomRank: 1)
!1559 = !DILocation(line: 241, column: 7, scope: !1192, atomGroup: 27, atomRank: 1)
!1560 = distinct !{!1560, !1561, !1562, !563}
!1561 = !DILocation(line: 233, column: 3, scope: !1176)
!1562 = !DILocation(line: 353, column: 5, scope: !1176)
!1563 = !DILocation(line: 354, column: 3, scope: !1176)
!1564 = !DILocation(line: 355, column: 3, scope: !1176)
!1565 = !DILocation(line: 356, column: 3, scope: !1176, atomGroup: 111, atomRank: 1)
!1566 = !DISubprogram(name: "free", scope: !898, file: !898, line: 555, type: !1567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{null, !138}
!1569 = !DISubprogram(name: "rpl_fclose", scope: !503, file: !503, line: 959, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1570 = !DISubprogram(name: "__errno_location", scope: !1571, file: !1571, line: 37, type: !1572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1571 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!390}
!1574 = !DISubprogram(name: "getenv", scope: !898, file: !898, line: 641, type: !895, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1575 = !DISubprogram(name: "strspn", scope: !1576, file: !1576, line: 297, type: !1577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1576 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!142, !143, !143}
!1579 = !DISubprogram(name: "strchr", scope: !1576, file: !1576, line: 246, type: !1580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!137, !143, !83}
!1582 = !DISubprogram(name: "__ctype_b_loc", scope: !103, file: !103, line: 79, type: !1583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!1585}
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!1588 = !DISubprogram(name: "strcspn", scope: !1576, file: !1576, line: 293, type: !1577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1589 = !DISubprogram(name: "fwrite_unlocked", scope: !507, file: !507, line: 704, type: !1590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!140, !841, !140, !140, !496}
!1592 = !DISubprogram(name: "strncmp", scope: !1576, file: !1576, line: 159, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!83, !143, !143, !140}
!1595 = !DISubprogram(name: "strcmp", scope: !1576, file: !1576, line: 156, type: !1596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!83, !143, !143}
!1598 = !DISubprogram(name: "__overflow", scope: !507, file: !507, line: 886, type: !1599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!83, !213, !83}
!1601 = !DISubprogram(name: "emit_bug_reporting_address", scope: !909, file: !909, line: 77, type: !448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1602 = !DISubprogram(name: "xstrdup", scope: !1603, file: !1603, line: 103, type: !895, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1603 = !DIFile(filename: "./lib/xalloc.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!1604 = !DISubprogram(name: "xnmalloc", scope: !1603, file: !1603, line: 136, type: !1605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!138, !140, !140}
!1607 = !DISubprogram(name: "strlen", scope: !1576, file: !1576, line: 407, type: !1608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!142, !143}
!1610 = !DISubprogram(name: "rpl_mbrtoc32", scope: !1611, file: !1611, line: 1276, type: !1612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1611 = !DIFile(filename: "./lib/uchar.h", directory: "/workspaces/Thesis/.build/coreutils")
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!140, !1614, !143, !140, !1615}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!1616 = !DISubprogram(name: "rpl_fopen", scope: !503, file: !503, line: 1158, type: !1617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!213, !497, !497}
!1619 = !DISubprogram(name: "fadvise", scope: !128, file: !128, line: 71, type: !1620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{null, !213, !1622}
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !128, line: 51, baseType: !127)
!1623 = !DISubprogram(name: "clearerr_unlocked", scope: !507, file: !507, line: 794, type: !1624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !213}
!1626 = !DISubprogram(name: "__uflow", scope: !507, file: !507, line: 885, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1627 = !DISubprogram(name: "fflush_unlocked", scope: !507, file: !507, line: 239, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1628 = !DISubprogram(name: "fpurge", scope: !503, file: !503, line: 1266, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1629 = !DISubprogram(name: "xmalloc", scope: !1603, file: !1603, line: 59, type: !1630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!138, !140}
!1632 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !898, file: !898, line: 98, type: !1633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!140}
!1635 = !DISubprogram(name: "fileno_unlocked", scope: !507, file: !507, line: 814, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
