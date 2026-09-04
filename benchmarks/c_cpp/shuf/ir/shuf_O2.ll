; ModuleID = 'src/shuf.c'
source_filename = "src/shuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.linebuffer = type { i64, i64, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [95 x i8] c"Usage: %s [OPTION]... [FILE]\0A  or:  %s -e [OPTION]... [ARG]...\0A  or:  %s -i LO-HI [OPTION]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [67 x i8] c"Write a random permutation of the input lines to standard output.\0A\00", align 1, !dbg !12
@stdout = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"shuf\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [61 x i8] c"  -e, --echo                treat each ARG as an input line\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [78 x i8] c"  -i, --input-range=LO-HI   treat each number LO through HI as an input line\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [56 x i8] c"  -n, --head-count=COUNT    output at most COUNT lines\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [77 x i8] c"  -o, --output=FILE         write result to FILE instead of standard output\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [56 x i8] c"      --random-source=FILE  get random bytes from FILE\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [58 x i8] c"  -r, --repeat              output lines can be repeated\0A\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [64 x i8] c"  -z, --zero-terminated     line delimiter is NUL, not newline\0A\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !54
@.str.12 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !59
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !64
@.str.14 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !69
@.str.15 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !74
@.str.16 = private unnamed_addr constant [10 x i8] c"ei:n:o:rz\00", align 1, !dbg !79
@.str.17 = private unnamed_addr constant [30 x i8] c"multiple -i options specified\00", align 1, !dbg !81
@optarg = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !86
@.str.19 = private unnamed_addr constant [20 x i8] c"invalid input range\00", align 1, !dbg !91
@.str.20 = private unnamed_addr constant [23 x i8] c"invalid line count: %s\00", align 1, !dbg !96
@.str.21 = private unnamed_addr constant [32 x i8] c"multiple output files specified\00", align 1, !dbg !101
@.str.22 = private unnamed_addr constant [34 x i8] c"multiple random sources specified\00", align 1, !dbg !106
@.str.23 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !111
@Version = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1, !dbg !116
@optind = external local_unnamed_addr global i32, align 4
@.str.25 = private unnamed_addr constant [33 x i8] c"cannot combine -e and -i options\00", align 1, !dbg !121
@.str.26 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !126
@.str.28 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !131
@stdin = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !136
@.str.30 = private unnamed_addr constant [10 x i8] c"getrandom\00", align 1, !dbg !141
@.str.31 = private unnamed_addr constant [11 x i8] c"read error\00", align 1, !dbg !143
@.str.32 = private unnamed_addr constant [2 x i8] c"w\00", align 1, !dbg !148
@.str.33 = private unnamed_addr constant [19 x i8] c"no lines to repeat\00", align 1, !dbg !150
@.str.34 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !155
@.str.35 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !158
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !163
@.str.36 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !246
@.str.37 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !248
@.str.38 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !250
@.str.39 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !255
@.str.53 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !289
@.str.54 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !291
@.str.55 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !293
@.str.56 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !295
@.str.57 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !300
@.str.58 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !305
@.str.59 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !307
@.str.60 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !309
@.str.61 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !311
@.str.62 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !313
@.str.66 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !327
@.str.67 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !332
@.str.68 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !337
@.str.69 = private unnamed_addr constant [5 x i8] c"echo\00", align 1, !dbg !339
@.str.70 = private unnamed_addr constant [12 x i8] c"input-range\00", align 1, !dbg !341
@.str.71 = private unnamed_addr constant [11 x i8] c"head-count\00", align 1, !dbg !343
@.str.72 = private unnamed_addr constant [7 x i8] c"output\00", align 1, !dbg !345
@.str.73 = private unnamed_addr constant [14 x i8] c"random-source\00", align 1, !dbg !347
@.str.74 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1, !dbg !349
@.str.75 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1, !dbg !351
@.str.76 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !353
@.str.77 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !355
@long_opts = internal constant [10 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.69, i32 0, [4 x i8] zeroinitializer, ptr null, i32 101, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.70, i32 1, [4 x i8] zeroinitializer, ptr null, i32 105, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.71, i32 1, [4 x i8] zeroinitializer, ptr null, i32 110, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.72, i32 1, [4 x i8] zeroinitializer, ptr null, i32 111, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.73, i32 1, [4 x i8] zeroinitializer, ptr null, i32 128, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.74, i32 0, [4 x i8] zeroinitializer, ptr null, i32 114, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.75, i32 0, [4 x i8] zeroinitializer, ptr null, i32 122, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.76, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -130, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.77, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -131, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16, !dbg !357
@.str.79 = private unnamed_addr constant [21 x i8] c"too many input lines\00", align 1, !dbg !369
@.str.80 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !374

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !460 {
    #dbg_value(i32 %0, !464, !DIExpression(), !465)
  %2 = icmp eq i32 %0, 0, !dbg !466
  br i1 %2, label %8, label %3, !dbg !468

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !469, !tbaa !471
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #17, !dbg !469
  %6 = load ptr, ptr @program_name, align 8, !dbg !469, !tbaa !474
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #17, !dbg !469
  br label %34, !dbg !469

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #17, !dbg !476
  %10 = load ptr, ptr @program_name, align 8, !dbg !478, !tbaa !474
  %11 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %9, ptr noundef %10, ptr noundef %10, ptr noundef %10) #17, !dbg !479
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #17, !dbg !480
  %13 = load ptr, ptr @stdout, align 8, !dbg !481, !tbaa !471
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !482
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #17, !dbg !483
  %16 = load ptr, ptr @stdout, align 8, !dbg !488, !tbaa !471
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !489
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #17, !dbg !490
  %19 = load ptr, ptr @stdout, align 8, !dbg !493, !tbaa !471
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !494
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #17, !dbg !495
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !496
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #17, !dbg !497
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !498
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #17, !dbg !499
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !500
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #17, !dbg !501
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !502
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #17, !dbg !503
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !504
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #17, !dbg !505
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !506
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #17, !dbg !507
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !508
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #17, !dbg !509
  tail call fastcc void @oputs_(ptr noundef %28), !dbg !510
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #17, !dbg !511
  tail call fastcc void @oputs_(ptr noundef %29), !dbg !512
    #dbg_value(ptr @.str.3, !513, !DIExpression(), !529)
    #dbg_value(ptr poison, !526, !DIExpression(), !529)
    #dbg_value(ptr @.str.3, !525, !DIExpression(), !529)
  tail call void @emit_bug_reporting_address() #17, !dbg !531
    #dbg_value(ptr @.str.3, !528, !DIExpression(), !529)
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #17, !dbg !532
  %31 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %30, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.3) #17, !dbg !533
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #17, !dbg !534
  %33 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.68) #17, !dbg !535
  br label %34

34:                                               ; preds = %8, %3
  tail call void @exit(i32 noundef %0) #18, !dbg !536
  unreachable, !dbg !536
}

declare !dbg !537 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !543 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !547 i32 @rpl_printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare !dbg !551 noundef i32 @fputs_unlocked(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !165 {
    #dbg_value(ptr @.str.3, !377, !DIExpression(), !555)
    #dbg_value(ptr %0, !378, !DIExpression(), !555)
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !556, !tbaa !456
  %3 = icmp eq i32 %2, -1, !dbg !557
  br i1 %3, label %4, label %16, !dbg !558

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.36) #17, !dbg !559
    #dbg_value(ptr %5, !379, !DIExpression(), !560)
  %6 = icmp eq ptr %5, null, !dbg !561
  br i1 %6, label %14, label %7, !dbg !562

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !563, !tbaa !564
  %9 = icmp eq i8 %8, 0, !dbg !565
  br i1 %9, label %14, label %10, !dbg !566

10:                                               ; preds = %7
    #dbg_value(ptr %5, !567, !DIExpression(), !574)
    #dbg_value(ptr @.str.37, !573, !DIExpression(), !574)
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.37) #19, !dbg !576
  %12 = icmp eq i32 %11, 0, !dbg !577
  %13 = zext i1 %12 to i32, !dbg !578
  br label %14, !dbg !579

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !580, !tbaa !456
  br label %16, !dbg !581

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !582
  %18 = icmp eq i32 %17, 0, !dbg !584
  br i1 %18, label %19, label %114, !dbg !585

19:                                               ; preds = %16
    #dbg_value(i8 1, !382, !DIExpression(), !555)
  %20 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.38) #19, !dbg !586
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 %20, !dbg !587
    #dbg_value(ptr %21, !384, !DIExpression(), !555)
  %22 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #19, !dbg !588
    #dbg_value(ptr %22, !385, !DIExpression(), !555)
  %23 = icmp eq ptr %22, null, !dbg !589
  br i1 %23, label %48, label %24, !dbg !590

24:                                               ; preds = %19
    #dbg_value(ptr %21, !386, !DIExpression(), !591)
    #dbg_value(i64 0, !390, !DIExpression(), !591)
  %25 = icmp ult ptr %21, %22
  br i1 %25, label %26, label %48, !dbg !592

26:                                               ; preds = %24
  %27 = tail call ptr @__ctype_b_loc() #20, !dbg !555
  %28 = load ptr, ptr %27, align 8, !tbaa !593
  br label %29, !dbg !595

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %21, %26 ], [ %32, %29 ]
  %31 = phi i64 [ 0, %26 ], [ %41, %29 ]
    #dbg_value(ptr %30, !386, !DIExpression(), !591)
    #dbg_value(i64 %31, !390, !DIExpression(), !591)
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 1, !dbg !596
    #dbg_value(ptr %32, !386, !DIExpression(), !591)
  %33 = load i8, ptr %30, align 1, !dbg !597, !tbaa !564
  %34 = sext i8 %33 to i64, !dbg !598
  %35 = getelementptr inbounds i16, ptr %28, i64 %34, !dbg !598
  %36 = load i16, ptr %35, align 2, !dbg !598, !tbaa !599
  %37 = freeze i16 %36, !dbg !601
  %38 = lshr i16 %37, 13, !dbg !601
  %39 = and i16 %38, 1, !dbg !601
  %40 = zext nneg i16 %39 to i64, !dbg !601
  %41 = add i64 %31, %40, !dbg !602
    #dbg_value(i64 %41, !390, !DIExpression(), !591)
  %42 = icmp ult ptr %32, %22, !dbg !603
  %43 = icmp samesign ult i64 %41, 2, !dbg !604
  %44 = select i1 %42, i1 %43, i1 false, !dbg !604
  br i1 %44, label %29, label %45, !dbg !605, !llvm.loop !606

45:                                               ; preds = %29
  %46 = icmp ne i64 %41, 2, !dbg !609
  %47 = select i1 %46, ptr %22, ptr %21, !dbg !611
  br label %48, !dbg !611

48:                                               ; preds = %45, %19, %24
  %49 = phi ptr [ %21, %19 ], [ %22, %24 ], [ %47, %45 ], !dbg !555
  %50 = phi i1 [ false, %19 ], [ true, %24 ], [ %46, %45 ], !dbg !555
    #dbg_value(i8 poison, !382, !DIExpression(), !555)
    #dbg_value(ptr %49, !385, !DIExpression(), !555)
  %51 = tail call i64 @strcspn(ptr noundef nonnull %49, ptr noundef nonnull @.str.39) #19, !dbg !612
    #dbg_value(i64 %51, !391, !DIExpression(), !555)
  %52 = getelementptr inbounds nuw i8, ptr %49, i64 %51, !dbg !613
    #dbg_value(ptr %52, !392, !DIExpression(), !555)
  br label %53, !dbg !614

53:                                               ; preds = %84, %48
  %54 = phi ptr [ %52, %48 ], [ %85, %84 ], !dbg !555
  %55 = phi i1 [ %50, %48 ], [ %63, %84 ], !dbg !555
    #dbg_value(i8 poison, !382, !DIExpression(), !555)
    #dbg_value(ptr %54, !392, !DIExpression(), !555)
  %56 = load i8, ptr %54, align 1, !dbg !615, !tbaa !564
  switch i8 %56, label %62 [
    i8 0, label %86
    i8 10, label %86
    i8 45, label %57
  ], !dbg !616

57:                                               ; preds = %53
  %58 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !617
  %59 = load i8, ptr %58, align 1, !dbg !617, !tbaa !564
  %60 = icmp ne i8 %59, 45, !dbg !620
  %61 = select i1 %60, i1 %55, i1 false, !dbg !621
  br label %62, !dbg !621

62:                                               ; preds = %57, %53
  %63 = phi i1 [ %55, %53 ], [ %61, %57 ], !dbg !555
    #dbg_value(i8 poison, !382, !DIExpression(), !555)
  %64 = tail call ptr @__ctype_b_loc() #20, !dbg !622
  %65 = load ptr, ptr %64, align 8, !dbg !622, !tbaa !593
  %66 = sext i8 %56 to i64, !dbg !622
  %67 = getelementptr inbounds i16, ptr %65, i64 %66, !dbg !622
  %68 = load i16, ptr %67, align 2, !dbg !622, !tbaa !599
  %69 = and i16 %68, 8192, !dbg !622
  %70 = icmp eq i16 %69, 0, !dbg !624
  br i1 %70, label %84, label %71, !dbg !625

71:                                               ; preds = %62
  %72 = icmp eq i8 %56, 9, !dbg !626
  br i1 %72, label %86, label %73, !dbg !629

73:                                               ; preds = %71
  %74 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !630
  %75 = load i8, ptr %74, align 1, !dbg !630, !tbaa !564
  %76 = sext i8 %75 to i64, !dbg !631
  %77 = getelementptr inbounds i16, ptr %65, i64 %76, !dbg !631
  %78 = load i16, ptr %77, align 2, !dbg !631, !tbaa !599
  %79 = and i16 %78, 8192, !dbg !631
  %80 = icmp eq i16 %79, 0, !dbg !632
  %81 = icmp eq i8 %75, 45
  %82 = or i1 %63, %81
  %83 = select i1 %80, i1 %82, i1 false, !dbg !633
  br i1 %83, label %84, label %86, !dbg !633

84:                                               ; preds = %73, %62
  %85 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !634
    #dbg_value(ptr %85, !392, !DIExpression(), !555)
  br label %53, !dbg !614, !llvm.loop !635

86:                                               ; preds = %53, %53, %71, %73
  %87 = ptrtoint ptr %21 to i64, !dbg !637
  %88 = load ptr, ptr @stdout, align 8, !dbg !638, !tbaa !471
  %89 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %0, i64 noundef 1, i64 noundef %20, ptr noundef %88), !dbg !639
    #dbg_value(ptr @.str.3, !567, !DIExpression(), !640)
    #dbg_value(ptr poison, !573, !DIExpression(), !640)
    #dbg_value(ptr @.str.3, !567, !DIExpression(), !642)
    #dbg_value(ptr poison, !573, !DIExpression(), !642)
    #dbg_value(ptr @.str.3, !567, !DIExpression(), !644)
    #dbg_value(ptr poison, !573, !DIExpression(), !644)
    #dbg_value(ptr @.str.3, !567, !DIExpression(), !646)
    #dbg_value(ptr poison, !573, !DIExpression(), !646)
    #dbg_value(ptr @.str.3, !567, !DIExpression(), !648)
    #dbg_value(ptr poison, !573, !DIExpression(), !648)
    #dbg_value(ptr @.str.3, !567, !DIExpression(), !650)
    #dbg_value(ptr poison, !573, !DIExpression(), !650)
    #dbg_value(ptr @.str.3, !567, !DIExpression(), !652)
    #dbg_value(ptr poison, !573, !DIExpression(), !652)
    #dbg_value(ptr @.str.3, !567, !DIExpression(), !654)
    #dbg_value(ptr poison, !573, !DIExpression(), !654)
    #dbg_value(ptr @.str.3, !567, !DIExpression(), !656)
    #dbg_value(ptr poison, !573, !DIExpression(), !656)
    #dbg_value(ptr @.str.3, !567, !DIExpression(), !658)
    #dbg_value(ptr poison, !573, !DIExpression(), !658)
    #dbg_value(ptr @.str.3, !443, !DIExpression(), !555)
  %90 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(7) @.str.53, i64 noundef 6) #19, !dbg !660
  %91 = icmp eq i32 %90, 0, !dbg !662
  br i1 %91, label %95, label %92, !dbg !663

92:                                               ; preds = %86
  %93 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(10) @.str.54, i64 noundef 9) #19, !dbg !664
  %94 = icmp eq i32 %93, 0, !dbg !665
  br i1 %94, label %95, label %98, !dbg !666

95:                                               ; preds = %92, %86
  %96 = trunc i64 %51 to i32, !dbg !667
  %97 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %96, ptr noundef nonnull %49) #17, !dbg !669
  br label %101, !dbg !670

98:                                               ; preds = %92
  %99 = trunc i64 %51 to i32, !dbg !671
  %100 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.3, i32 noundef %99, ptr noundef nonnull %49) #17, !dbg !673
  br label %101

101:                                              ; preds = %98, %95
  %102 = load ptr, ptr @stdout, align 8, !dbg !674, !tbaa !471
  %103 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.59, ptr noundef %102), !dbg !675
  %104 = load ptr, ptr @stdout, align 8, !dbg !676, !tbaa !471
  %105 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.60, ptr noundef %104), !dbg !677
  %106 = ptrtoint ptr %54 to i64, !dbg !678
  %107 = sub i64 %106, %87, !dbg !678
  %108 = load ptr, ptr @stdout, align 8, !dbg !679, !tbaa !471
  %109 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %21, i64 noundef 1, i64 noundef %107, ptr noundef %108), !dbg !680
  %110 = load ptr, ptr @stdout, align 8, !dbg !681, !tbaa !471
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.61, ptr noundef %110), !dbg !682
  %112 = load ptr, ptr @stdout, align 8, !dbg !683, !tbaa !471
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.62, ptr noundef %112), !dbg !684
  br label %114, !dbg !685

114:                                              ; preds = %16, %101
  %115 = phi ptr [ %54, %101 ], [ %0, %16 ]
  %116 = load ptr, ptr @stdout, align 8, !dbg !555, !tbaa !471
  %117 = tail call i32 @fputs_unlocked(ptr noundef %115, ptr noundef %116), !dbg !555
  ret void, !dbg !686
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #6 !dbg !687 {
  %3 = alloca [21 x i8], align 16, !DIAssignID !740
  %4 = alloca [21 x i8], align 16, !DIAssignID !741
  %5 = alloca i64, align 8, !DIAssignID !742
    #dbg_assign(i1 poison, !743, !DIExpression(), !742, ptr %5, !DIExpression(), !769)
  %6 = alloca %struct.linebuffer, align 8, !DIAssignID !773
  %7 = alloca i64, align 8, !DIAssignID !774
  %8 = alloca %struct.stat, align 8, !DIAssignID !775
  %9 = alloca i64, align 8, !DIAssignID !776
    #dbg_assign(i1 poison, !727, !DIExpression(), !776, ptr %9, !DIExpression(), !777)
  %10 = alloca ptr, align 8, !DIAssignID !778
    #dbg_assign(i1 poison, !733, !DIExpression(), !778, ptr %10, !DIExpression(), !777)
  %11 = alloca i64, align 8, !DIAssignID !779
    #dbg_assign(i1 poison, !736, !DIExpression(), !779, ptr %11, !DIExpression(), !780)
    #dbg_value(i32 %0, !692, !DIExpression(), !781)
    #dbg_value(ptr %1, !693, !DIExpression(), !781)
    #dbg_value(i8 0, !694, !DIExpression(), !781)
    #dbg_value(i8 0, !695, !DIExpression(), !781)
    #dbg_value(i64 -1, !696, !DIExpression(), !781)
    #dbg_value(i64 0, !697, !DIExpression(), !781)
    #dbg_value(i64 9223372036854775807, !698, !DIExpression(), !781)
    #dbg_value(ptr null, !701, !DIExpression(), !781)
    #dbg_value(ptr null, !702, !DIExpression(), !781)
    #dbg_value(i8 10, !703, !DIExpression(), !781)
    #dbg_value(ptr null, !704, !DIExpression(), !781)
    #dbg_value(i8 0, !705, !DIExpression(), !781)
    #dbg_value(i8 0, !706, !DIExpression(), !781)
    #dbg_value(ptr null, !711, !DIExpression(), !781)
    #dbg_value(ptr null, !712, !DIExpression(), !781)
    #dbg_value(ptr null, !724, !DIExpression(), !781)
  %12 = load ptr, ptr %1, align 8, !dbg !782, !tbaa !474
  tail call void @set_program_name(ptr noundef %12) #17, !dbg !783
  %13 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.13) #17, !dbg !784
  %14 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #17, !dbg !785
  %15 = tail call ptr @textdomain(ptr noundef nonnull @.str.14) #17, !dbg !786
  %16 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #17, !dbg !787
  br label %17, !dbg !788

17:                                               ; preds = %88, %2
  %18 = phi ptr [ null, %2 ], [ %89, %88 ], !dbg !789
  %19 = phi ptr [ null, %2 ], [ %90, %88 ], !dbg !790
  %20 = phi i8 [ 10, %2 ], [ %91, %88 ], !dbg !791
  %21 = phi i8 [ 0, %2 ], [ %92, %88 ], !dbg !792
  %22 = phi i64 [ 9223372036854775807, %2 ], [ %93, %88 ], !dbg !793
  %23 = phi i64 [ 0, %2 ], [ %94, %88 ], !dbg !794
  %24 = phi i64 [ -1, %2 ], [ %95, %88 ], !dbg !795
  %25 = phi i64 [ undef, %2 ], [ %96, %88 ]
  %26 = phi i8 [ 0, %2 ], [ %97, %88 ], !dbg !796
  %27 = phi i1 [ false, %2 ], [ %98, %88 ], !dbg !781
    #dbg_value(i8 poison, !694, !DIExpression(), !781)
    #dbg_value(i8 %26, !695, !DIExpression(), !781)
    #dbg_value(i64 %25, !710, !DIExpression(), !781)
    #dbg_value(i64 %24, !696, !DIExpression(), !781)
    #dbg_value(i64 %23, !697, !DIExpression(), !781)
    #dbg_value(i64 %22, !698, !DIExpression(), !781)
    #dbg_value(i8 poison, !706, !DIExpression(), !781)
    #dbg_value(i8 %20, !703, !DIExpression(), !781)
    #dbg_value(ptr %19, !702, !DIExpression(), !781)
    #dbg_value(ptr %18, !701, !DIExpression(), !781)
  %28 = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.16, ptr noundef nonnull @long_opts, ptr noundef null) #17, !dbg !797
    #dbg_value(i32 %28, !707, !DIExpression(), !781)
  switch i32 %28, label %111 [
    i32 -1, label %112
    i32 101, label %88
    i32 105, label %29
    i32 110, label %65
    i32 111, label %77
    i32 128, label %85
    i32 114, label %104
    i32 122, label %105
    i32 -130, label %106
    i32 -131, label %107
  ], !dbg !798

29:                                               ; preds = %17
  %30 = trunc nuw i8 %26 to i1, !dbg !799
  br i1 %30, label %31, label %33, !dbg !801

31:                                               ; preds = %29
  %32 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #17, !dbg !802
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %32) #17, !dbg !803
  unreachable, !dbg !803

33:                                               ; preds = %29
    #dbg_value(i8 1, !695, !DIExpression(), !781)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17, !dbg !804
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17, !dbg !805
  %34 = load ptr, ptr @optarg, align 8, !dbg !806, !tbaa !474
  %35 = call i32 @xstrtoumax(ptr noundef %34, ptr noundef nonnull %10, i32 noundef 10, ptr noundef nonnull %9, ptr noundef null) #17, !dbg !807
    #dbg_value(i32 %35, !734, !DIExpression(), !777)
  %36 = icmp eq i32 %35, 0, !dbg !808
  br i1 %36, label %37, label %54, !dbg !810

37:                                               ; preds = %33
  %38 = load i64, ptr %9, align 8, !dbg !811, !tbaa !813
    #dbg_value(i64 %38, !696, !DIExpression(), !781)
  %39 = load ptr, ptr %10, align 8, !dbg !815, !tbaa !474
  %40 = load i8, ptr %39, align 1, !dbg !818, !tbaa !564
  %41 = icmp eq i8 %40, 45, !dbg !819
  br i1 %41, label %42, label %59, !dbg !820

42:                                               ; preds = %37
  %43 = getelementptr inbounds nuw i8, ptr %39, i64 1, !dbg !821
  %44 = call i32 @xstrtoumax(ptr noundef nonnull %43, ptr noundef null, i32 noundef 10, ptr noundef nonnull %9, ptr noundef nonnull @.str.13) #17, !dbg !823
    #dbg_value(i32 %44, !734, !DIExpression(), !777)
  %45 = icmp eq i32 %44, 0, !dbg !824
  %46 = load i64, ptr %9, align 8
  %47 = select i1 %45, i64 %46, i64 %23, !dbg !826
    #dbg_value(i64 %38, !696, !DIExpression(), !781)
    #dbg_value(i64 %47, !697, !DIExpression(), !781)
  %48 = sub i64 %47, %38, !dbg !827
  %49 = add i64 %48, 1, !dbg !828
    #dbg_value(i64 %49, !710, !DIExpression(), !781)
  br i1 %45, label %50, label %54, !dbg !829

50:                                               ; preds = %42
  %51 = icmp ule i64 %38, %46, !dbg !831
  %52 = icmp ne i64 %49, 0, !dbg !832
  %53 = xor i1 %51, %52, !dbg !832
  br i1 %53, label %59, label %64, !dbg !833

54:                                               ; preds = %33, %42
  %55 = phi i32 [ %44, %42 ], [ %35, %33 ]
  %56 = freeze i32 %55, !dbg !834
  %57 = icmp eq i32 %56, 1, !dbg !834
  %58 = select i1 %57, i32 75, i32 0, !dbg !835
  br label %59, !dbg !835

59:                                               ; preds = %37, %50, %54
  %60 = phi i32 [ %58, %54 ], [ 0, %50 ], [ 0, %37 ], !dbg !835
  %61 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #17, !dbg !836
  %62 = load ptr, ptr @optarg, align 8, !dbg !837, !tbaa !474
  %63 = call ptr @quote(ptr noundef %62) #17, !dbg !838
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %60, ptr noundef nonnull @.str.18, ptr noundef %61, ptr noundef %63) #17, !dbg !839
  unreachable, !dbg !839

64:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17, !dbg !840
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17, !dbg !840
  br label %88, !dbg !841

65:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17, !dbg !842
  %66 = load ptr, ptr @optarg, align 8, !dbg !843, !tbaa !474
  %67 = call i32 @xstrtoumax(ptr noundef %66, ptr noundef null, i32 noundef 10, ptr noundef nonnull %11, ptr noundef nonnull @.str.13) #17, !dbg !844
    #dbg_value(i32 %67, !738, !DIExpression(), !780)
  switch i32 %67, label %71 [
    i32 0, label %68
    i32 1, label %75
  ], !dbg !845

68:                                               ; preds = %65
  %69 = load i64, ptr %11, align 8, !dbg !847, !tbaa !813
  %70 = call i64 @llvm.umin.i64(i64 %22, i64 %69), !dbg !848
    #dbg_value(i64 %70, !698, !DIExpression(), !781)
  br label %75, !dbg !849

71:                                               ; preds = %65
  %72 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #17, !dbg !850
  %73 = load ptr, ptr @optarg, align 8, !dbg !852, !tbaa !474
  %74 = call ptr @quote(ptr noundef %73) #17, !dbg !853
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %72, ptr noundef %74) #17, !dbg !854
  unreachable, !dbg !854

75:                                               ; preds = %65, %68
  %76 = phi i64 [ %70, %68 ], [ %22, %65 ], !dbg !781
    #dbg_value(i64 %76, !698, !DIExpression(), !781)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17, !dbg !855
  br label %88, !dbg !856

77:                                               ; preds = %17
  %78 = icmp eq ptr %18, null, !dbg !857
  %79 = load ptr, ptr @optarg, align 8, !dbg !859, !tbaa !474
  br i1 %78, label %88, label %80, !dbg !860

80:                                               ; preds = %77
    #dbg_value(ptr %18, !567, !DIExpression(), !861)
    #dbg_value(ptr %79, !573, !DIExpression(), !861)
  %81 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) %79) #19, !dbg !863
  %82 = icmp eq i32 %81, 0, !dbg !864
  br i1 %82, label %88, label %83, !dbg !865

83:                                               ; preds = %80
  %84 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #17, !dbg !866
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %84) #17, !dbg !867
  unreachable, !dbg !867

85:                                               ; preds = %17
  %86 = icmp eq ptr %19, null, !dbg !868
  %87 = load ptr, ptr @optarg, align 8, !dbg !870, !tbaa !474
  br i1 %86, label %88, label %99, !dbg !871

88:                                               ; preds = %85, %99, %77, %80, %17, %105, %104, %75, %64
  %89 = phi ptr [ %18, %105 ], [ %18, %64 ], [ %18, %75 ], [ %18, %17 ], [ %79, %77 ], [ %18, %104 ], [ %79, %80 ], [ %18, %99 ], [ %18, %85 ]
  %90 = phi ptr [ %19, %105 ], [ %19, %64 ], [ %19, %75 ], [ %19, %17 ], [ %19, %77 ], [ %19, %104 ], [ %19, %80 ], [ %87, %99 ], [ %87, %85 ]
  %91 = phi i8 [ 0, %105 ], [ %20, %64 ], [ %20, %75 ], [ %20, %17 ], [ %20, %77 ], [ %20, %104 ], [ %20, %80 ], [ %20, %99 ], [ %20, %85 ]
  %92 = phi i8 [ %21, %105 ], [ %21, %64 ], [ %21, %75 ], [ %21, %17 ], [ %21, %77 ], [ 1, %104 ], [ %21, %80 ], [ %21, %99 ], [ %21, %85 ]
  %93 = phi i64 [ %22, %105 ], [ %22, %64 ], [ %76, %75 ], [ %22, %17 ], [ %22, %77 ], [ %22, %104 ], [ %22, %80 ], [ %22, %99 ], [ %22, %85 ]
  %94 = phi i64 [ %23, %105 ], [ %46, %64 ], [ %23, %75 ], [ %23, %17 ], [ %23, %77 ], [ %23, %104 ], [ %23, %80 ], [ %23, %99 ], [ %23, %85 ]
  %95 = phi i64 [ %24, %105 ], [ %38, %64 ], [ %24, %75 ], [ %24, %17 ], [ %24, %77 ], [ %24, %104 ], [ %24, %80 ], [ %24, %99 ], [ %24, %85 ]
  %96 = phi i64 [ %25, %105 ], [ %49, %64 ], [ %25, %75 ], [ %25, %17 ], [ %25, %77 ], [ %25, %104 ], [ %25, %80 ], [ %25, %99 ], [ %25, %85 ]
  %97 = phi i8 [ %26, %105 ], [ 1, %64 ], [ %26, %75 ], [ %26, %17 ], [ %26, %77 ], [ %26, %104 ], [ %26, %80 ], [ %26, %99 ], [ %26, %85 ]
  %98 = phi i1 [ %27, %105 ], [ %27, %64 ], [ %27, %75 ], [ true, %17 ], [ %27, %77 ], [ %27, %104 ], [ %27, %80 ], [ %27, %99 ], [ %27, %85 ]
  br label %17, !dbg !797, !llvm.loop !872

99:                                               ; preds = %85
    #dbg_value(ptr %19, !567, !DIExpression(), !874)
    #dbg_value(ptr %87, !573, !DIExpression(), !874)
  %100 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %87) #19, !dbg !876
  %101 = icmp eq i32 %100, 0, !dbg !877
  br i1 %101, label %88, label %102, !dbg !878

102:                                              ; preds = %99
  %103 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #17, !dbg !879
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %103) #17, !dbg !880
  unreachable, !dbg !880

104:                                              ; preds = %17
    #dbg_value(i8 1, !706, !DIExpression(), !781)
  br label %88, !dbg !881

105:                                              ; preds = %17
    #dbg_value(i8 0, !703, !DIExpression(), !781)
  br label %88, !dbg !882

106:                                              ; preds = %17
  call void @usage(i32 noundef 0) #21, !dbg !883
  unreachable, !dbg !883

107:                                              ; preds = %17
  %108 = load ptr, ptr @stdout, align 8, !dbg !884, !tbaa !471
  %109 = load ptr, ptr @Version, align 8, !dbg !884, !tbaa !474
  %110 = call ptr @proper_name_lite(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.24) #17, !dbg !885
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %108, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23, ptr noundef %109, ptr noundef %110, ptr noundef null) #17, !dbg !884
  call void @exit(i32 noundef 0) #18, !dbg !884
  unreachable, !dbg !884

111:                                              ; preds = %17
  call void @usage(i32 noundef 1) #21, !dbg !886
  unreachable, !dbg !886

112:                                              ; preds = %17
  %113 = load i32, ptr @optind, align 4, !dbg !887, !tbaa !456
  %114 = sub nsw i32 %0, %113, !dbg !888
    #dbg_value(i32 %114, !708, !DIExpression(), !781)
  %115 = sext i32 %113 to i64, !dbg !889
  %116 = getelementptr inbounds ptr, ptr %1, i64 %115, !dbg !890
    #dbg_value(ptr %116, !709, !DIExpression(), !781)
  %117 = trunc nuw i8 %26 to i1
  %118 = select i1 %27, i1 %117, i1 false, !dbg !891
  br i1 %118, label %119, label %121, !dbg !891

119:                                              ; preds = %112
  %120 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #17, !dbg !893
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %120) #17, !dbg !895
  call void @usage(i32 noundef 1) #21, !dbg !896
  unreachable, !dbg !896

121:                                              ; preds = %112
  br i1 %117, label %122, label %124, !dbg !897

122:                                              ; preds = %121
  %123 = icmp sgt i32 %114, 0, !dbg !899
  br i1 %123, label %127, label %134, !dbg !900

124:                                              ; preds = %121
  %125 = icmp slt i32 %114, 2
  %126 = select i1 %27, i1 true, i1 %125, !dbg !901
  br i1 %126, label %134, label %127, !dbg !901

127:                                              ; preds = %124, %122
  %128 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #17, !dbg !902
  %129 = xor i1 %117, true, !dbg !904
  %130 = zext i1 %129 to i64, !dbg !905
  %131 = getelementptr inbounds nuw ptr, ptr %116, i64 %130, !dbg !905
  %132 = load ptr, ptr %131, align 8, !dbg !905, !tbaa !474
  %133 = call ptr @quote(ptr noundef %132) #17, !dbg !906
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %128, ptr noundef %133) #17, !dbg !907
  call void @usage(i32 noundef 1) #21, !dbg !908
  unreachable, !dbg !908

134:                                              ; preds = %124, %122
  %135 = icmp eq i64 %22, 0, !dbg !909
  br i1 %135, label %256, label %136, !dbg !911

136:                                              ; preds = %134
  br i1 %27, label %137, label %167, !dbg !912

137:                                              ; preds = %136
    #dbg_value(ptr %116, !914, !DIExpression(), !928)
    #dbg_value(i32 %114, !919, !DIExpression(), !928)
    #dbg_value(i8 %20, !920, !DIExpression(), !928)
  %138 = sext i32 %114 to i64, !dbg !931
    #dbg_value(i64 %138, !922, !DIExpression(), !928)
    #dbg_value(i32 0, !923, !DIExpression(), !928)
  %139 = icmp sgt i32 %114, 0, !dbg !932
  br i1 %139, label %140, label %151, !dbg !935

140:                                              ; preds = %137
  %141 = zext nneg i32 %114 to i64, !dbg !936
  br label %142, !dbg !937

142:                                              ; preds = %142, %140
  %143 = phi i64 [ 0, %140 ], [ %149, %142 ]
  %144 = phi i64 [ %138, %140 ], [ %148, %142 ]
    #dbg_value(i64 %143, !923, !DIExpression(), !928)
    #dbg_value(i64 %144, !922, !DIExpression(), !928)
  %145 = getelementptr inbounds nuw ptr, ptr %116, i64 %143, !dbg !938
  %146 = load ptr, ptr %145, align 8, !dbg !938, !tbaa !474
  %147 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %146) #19, !dbg !939
  %148 = add i64 %147, %144, !dbg !940
    #dbg_value(i64 %148, !922, !DIExpression(), !928)
  %149 = add nuw nsw i64 %143, 1, !dbg !941
    #dbg_value(i64 %149, !923, !DIExpression(), !928)
  %150 = icmp eq i64 %149, %141, !dbg !936
  br i1 %150, label %153, label %142, !dbg !942, !llvm.loop !943

151:                                              ; preds = %137
  %152 = call noalias nonnull ptr @xmalloc(i64 noundef %138) #22, !dbg !945
    #dbg_value(ptr %152, !921, !DIExpression(), !928)
    #dbg_value(i32 0, !923, !DIExpression(), !928)
  br label %164, !dbg !946

153:                                              ; preds = %142
  %154 = call noalias nonnull ptr @xmalloc(i64 noundef %148) #22, !dbg !947
    #dbg_value(ptr %154, !921, !DIExpression(), !928)
    #dbg_value(i32 0, !923, !DIExpression(), !928)
  br label %155, !dbg !948

155:                                              ; preds = %155, %153
  %156 = phi i64 [ 0, %153 ], [ %162, %155 ]
  %157 = phi ptr [ %154, %153 ], [ %161, %155 ]
    #dbg_value(ptr %157, !921, !DIExpression(), !928)
    #dbg_value(i64 %156, !923, !DIExpression(), !928)
  %158 = getelementptr inbounds nuw ptr, ptr %116, i64 %156, !dbg !949
  %159 = load ptr, ptr %158, align 8, !dbg !949, !tbaa !474
    #dbg_value(ptr %157, !950, !DIExpression(), !958)
    #dbg_value(ptr %159, !957, !DIExpression(), !958)
  %160 = call ptr @stpcpy(ptr nonnull %157, ptr %159), !dbg !960
    #dbg_value(ptr %160, !924, !DIExpression(), !961)
  store ptr %157, ptr %158, align 8, !dbg !962, !tbaa !474
    #dbg_value(ptr %160, !921, !DIExpression(), !928)
  %161 = getelementptr inbounds nuw i8, ptr %160, i64 1, !dbg !963
    #dbg_value(ptr %161, !921, !DIExpression(), !928)
  store i8 %20, ptr %160, align 1, !dbg !964, !tbaa !564
  %162 = add nuw nsw i64 %156, 1, !dbg !965
    #dbg_value(i64 %162, !923, !DIExpression(), !928)
  %163 = icmp eq i64 %162, %141, !dbg !966
  br i1 %163, label %164, label %155, !dbg !967, !llvm.loop !968

164:                                              ; preds = %155, %151
  %165 = phi ptr [ %152, %151 ], [ %161, %155 ], !dbg !928
  %166 = getelementptr inbounds ptr, ptr %116, i64 %138, !dbg !970
  store ptr %165, ptr %166, align 8, !dbg !971, !tbaa !474
    #dbg_value(i64 %138, !710, !DIExpression(), !781)
    #dbg_value(ptr %116, !711, !DIExpression(), !781)
  br label %256, !dbg !972

167:                                              ; preds = %136
  br i1 %117, label %256, label %168, !dbg !973

168:                                              ; preds = %167
  %169 = icmp eq i32 %114, 1, !dbg !975
  br i1 %169, label %170, label %187, !dbg !978

170:                                              ; preds = %168
  %171 = load ptr, ptr %116, align 8, !dbg !979, !tbaa !474
    #dbg_value(ptr %171, !567, !DIExpression(), !980)
    #dbg_value(ptr poison, !573, !DIExpression(), !980)
  %172 = load i8, ptr %171, align 1, !dbg !982
  %173 = icmp eq i8 %172, 45, !dbg !982
  br i1 %173, label %174, label %178, !dbg !982

174:                                              ; preds = %170
  %175 = getelementptr inbounds nuw i8, ptr %171, i64 1, !dbg !982
  %176 = load i8, ptr %175, align 1, !dbg !982
  %177 = icmp eq i8 %176, 0, !dbg !983
  br i1 %177, label %187, label %178, !dbg !984

178:                                              ; preds = %170, %174
  %179 = load ptr, ptr @stdin, align 8, !dbg !985, !tbaa !471
  %180 = call ptr @freopen_safer(ptr noundef nonnull %171, ptr noundef nonnull @.str.28, ptr noundef %179) #17, !dbg !986
  %181 = icmp eq ptr %180, null, !dbg !987
  br i1 %181, label %182, label %187, !dbg !988

182:                                              ; preds = %178
  %183 = tail call ptr @__errno_location() #20, !dbg !989
  %184 = load i32, ptr %183, align 4, !dbg !989, !tbaa !456
  %185 = load ptr, ptr %116, align 8, !dbg !990, !tbaa !474
  %186 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %185) #17, !dbg !991
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %184, ptr noundef nonnull @.str.29, ptr noundef %186) #17, !dbg !992
  unreachable, !dbg !992

187:                                              ; preds = %178, %174, %168
  %188 = load ptr, ptr @stdin, align 8, !dbg !993, !tbaa !471
  call void @fadvise(ptr noundef %188, i32 noundef 2) #17, !dbg !994
  %189 = trunc nuw i8 %21 to i1, !dbg !995
  %190 = icmp eq i64 %22, 9223372036854775807
  %191 = select i1 %189, i1 true, i1 %190, !dbg !997
  br i1 %191, label %209, label %192, !dbg !997

192:                                              ; preds = %187
    #dbg_assign(i1 poison, !998, !DIExpression(), !775, ptr %8, !DIExpression(), !1039)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17, !dbg !1041
  %193 = call i32 @fstat(i32 noundef 0, ptr noundef nonnull %8) #17, !dbg !1042
  %194 = icmp eq i32 %193, 0, !dbg !1044
  br i1 %194, label %195, label %205, !dbg !1045

195:                                              ; preds = %192
    #dbg_value(ptr %8, !1046, !DIExpression(), !1053)
  %196 = getelementptr inbounds nuw i8, ptr %8, i64 24, !dbg !1056
  %197 = load i32, ptr %196, align 8, !dbg !1056, !tbaa !1057
  %198 = and i32 %197, 53248, !dbg !1060
  %199 = icmp eq i32 %198, 32768, !dbg !1060
  br i1 %199, label %200, label %205, !dbg !1061

200:                                              ; preds = %195
  %201 = getelementptr inbounds nuw i8, ptr %8, i64 48, !dbg !1062
  %202 = load i64, ptr %201, align 8, !dbg !1063, !tbaa !1064
    #dbg_value(i64 %202, !1003, !DIExpression(), !1039)
  %203 = call i64 @lseek(i32 noundef 0, i64 noundef 0, i32 noundef 1) #17, !dbg !1065
    #dbg_value(i64 %203, !1004, !DIExpression(), !1039)
  %204 = icmp slt i64 %203, 0, !dbg !1066
  br i1 %204, label %205, label %206

205:                                              ; preds = %192, %195, %200
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17, !dbg !1068
  br label %268, !dbg !1069

206:                                              ; preds = %200
  %207 = sub nsw i64 %202, %203, !dbg !1070
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17, !dbg !1068
  %208 = icmp slt i64 %207, 8388609, !dbg !1071
  br i1 %208, label %209, label %268, !dbg !1072

209:                                              ; preds = %206, %187
  %210 = load ptr, ptr @stdin, align 8, !dbg !1073, !tbaa !471
    #dbg_assign(i1 poison, !1075, !DIExpression(), !774, ptr %7, !DIExpression(), !1091)
    #dbg_value(ptr %210, !1081, !DIExpression(), !1091)
    #dbg_value(i8 %20, !1082, !DIExpression(), !1091)
    #dbg_value(ptr poison, !1083, !DIExpression(), !1091)
    #dbg_value(ptr null, !1085, !DIExpression(), !1091)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17, !dbg !1093
  %211 = call noalias ptr @fread_file(ptr noundef %210, i32 noundef 0, ptr noundef nonnull %7) #17, !dbg !1094
    #dbg_value(ptr %211, !1085, !DIExpression(), !1091)
  %212 = icmp eq ptr %211, null, !dbg !1096
  br i1 %212, label %213, label %217, !dbg !1097

213:                                              ; preds = %209
  %214 = tail call ptr @__errno_location() #20, !dbg !1098
  %215 = load i32, ptr %214, align 4, !dbg !1098, !tbaa !456
  %216 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #17, !dbg !1099
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %215, ptr noundef %216) #17, !dbg !1100
  unreachable, !dbg !1100

217:                                              ; preds = %209
  %218 = load i64, ptr %7, align 8, !dbg !1101, !tbaa !813
  %219 = icmp eq i64 %218, 0, !dbg !1103
  br i1 %219, label %239, label %220, !dbg !1104

220:                                              ; preds = %217
  %221 = getelementptr i8, ptr %211, i64 %218, !dbg !1105
  %222 = getelementptr i8, ptr %221, i64 -1, !dbg !1105
  %223 = load i8, ptr %222, align 1, !dbg !1105, !tbaa !564
  %224 = icmp eq i8 %223, %20, !dbg !1106
  br i1 %224, label %228, label %225, !dbg !1107

225:                                              ; preds = %220
  %226 = add i64 %218, 1, !dbg !1108
  store i64 %226, ptr %7, align 8, !dbg !1109, !tbaa !813, !DIAssignID !1110
    #dbg_assign(i64 %226, !1075, !DIExpression(), !1110, ptr %7, !DIExpression(), !1091)
  store i8 %20, ptr %221, align 1, !dbg !1111, !tbaa !564
    #dbg_value(!DIArgList(ptr %211, i64 %226), !1086, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1091)
    #dbg_value(i64 0, !1088, !DIExpression(), !1091)
    #dbg_value(ptr %211, !1084, !DIExpression(), !1091)
  %227 = icmp eq i64 %226, 0, !dbg !1112
  br i1 %227, label %239, label %228, !dbg !1115

228:                                              ; preds = %220, %225
  %229 = phi i64 [ %226, %225 ], [ %218, %220 ]
  %230 = getelementptr inbounds nuw i8, ptr %211, i64 %229, !dbg !1116
  %231 = zext nneg i8 %20 to i32
  br label %232, !dbg !1115

232:                                              ; preds = %232, %228
  %233 = phi i64 [ 0, %228 ], [ %235, %232 ]
  %234 = phi ptr [ %211, %228 ], [ %237, %232 ]
    #dbg_value(i64 %233, !1088, !DIExpression(), !1091)
    #dbg_value(ptr %234, !1084, !DIExpression(), !1091)
  %235 = add i64 %233, 1, !dbg !1117
    #dbg_value(i64 %235, !1088, !DIExpression(), !1091)
    #dbg_value(ptr %234, !1118, !DIExpression(), !1125)
    #dbg_value(i8 %20, !1123, !DIExpression(), !1125)
  %236 = call ptr @rawmemchr(ptr noundef nonnull readonly %234, i32 noundef %231) #19, !dbg !1127
    #dbg_value(ptr %236, !1124, !DIExpression(), !1125)
  %237 = getelementptr inbounds nuw i8, ptr %236, i64 1, !dbg !1128
    #dbg_value(ptr %237, !1084, !DIExpression(), !1091)
  %238 = icmp ult ptr %237, %230, !dbg !1129
  br i1 %238, label %232, label %239, !dbg !1130, !llvm.loop !1131

239:                                              ; preds = %232, %225, %217
  %240 = phi i64 [ 0, %225 ], [ 0, %217 ], [ %235, %232 ], !dbg !1091
  %241 = add i64 %240, 1, !dbg !1134
  %242 = call noalias nonnull ptr @xnmalloc(i64 noundef %241, i64 noundef 8) #23, !dbg !1135
    #dbg_value(ptr %242, !1087, !DIExpression(), !1091)
    #dbg_value(ptr %242, !704, !DIExpression(), !781)
    #dbg_value(ptr %211, !1084, !DIExpression(), !1091)
  store ptr %211, ptr %242, align 8, !dbg !1136, !tbaa !474
    #dbg_value(i64 1, !1089, !DIExpression(), !1137)
  %243 = icmp eq i64 %240, 0, !dbg !1138
  br i1 %243, label %255, label %244, !dbg !1140

244:                                              ; preds = %239
  %245 = zext nneg i8 %20 to i32
  %246 = call i64 @llvm.umax.i64(i64 %241, i64 2), !dbg !1140
  br label %247, !dbg !1140

247:                                              ; preds = %247, %244
  %248 = phi i64 [ 1, %244 ], [ %253, %247 ]
  %249 = phi ptr [ %211, %244 ], [ %251, %247 ]
    #dbg_value(i64 %248, !1089, !DIExpression(), !1137)
    #dbg_value(ptr %249, !1084, !DIExpression(), !1091)
    #dbg_value(ptr %249, !1118, !DIExpression(), !1141)
    #dbg_value(i8 %20, !1123, !DIExpression(), !1141)
  %250 = call ptr @rawmemchr(ptr noundef nonnull readonly %249, i32 noundef %245) #19, !dbg !1143
    #dbg_value(ptr %250, !1124, !DIExpression(), !1141)
  %251 = getelementptr inbounds nuw i8, ptr %250, i64 1, !dbg !1144
    #dbg_value(ptr %251, !1084, !DIExpression(), !1091)
  %252 = getelementptr inbounds nuw ptr, ptr %242, i64 %248, !dbg !1145
  store ptr %251, ptr %252, align 8, !dbg !1146, !tbaa !474
  %253 = add nuw i64 %248, 1, !dbg !1147
    #dbg_value(i64 %253, !1089, !DIExpression(), !1137)
  %254 = icmp eq i64 %253, %246, !dbg !1148
  br i1 %254, label %255, label %247, !dbg !1149, !llvm.loop !1150

255:                                              ; preds = %247, %239
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !dbg !1153
    #dbg_value(i64 %240, !710, !DIExpression(), !781)
    #dbg_value(ptr %242, !711, !DIExpression(), !781)
  br label %256, !dbg !1154

256:                                              ; preds = %167, %134, %164, %255
  %257 = phi i64 [ %25, %167 ], [ %138, %164 ], [ 0, %134 ], [ %240, %255 ]
  %258 = phi ptr [ null, %167 ], [ %116, %164 ], [ null, %134 ], [ %242, %255 ], !dbg !781
    #dbg_value(ptr %258, !711, !DIExpression(), !781)
    #dbg_value(i64 %257, !710, !DIExpression(), !781)
    #dbg_value(i8 poison, !705, !DIExpression(), !781)
  %259 = trunc nuw i8 %21 to i1, !dbg !1155
  %260 = call i64 @llvm.umin.i64(i64 %22, i64 %257), !dbg !1156
  %261 = select i1 %259, i64 %22, i64 %260, !dbg !1156
    #dbg_value(i64 %261, !739, !DIExpression(), !781)
  br i1 %259, label %264, label %262, !dbg !1157

262:                                              ; preds = %256
  %263 = call i64 @randperm_bound(i64 noundef %260, i64 noundef %257) #20, !dbg !1158
  br label %264, !dbg !1159

264:                                              ; preds = %256, %262
  %265 = phi i64 [ %263, %262 ], [ -1, %256 ], !dbg !1159
  %266 = call noalias ptr @randint_all_new(ptr noundef %19, i64 noundef %265) #17, !dbg !1160
    #dbg_value(ptr %266, !720, !DIExpression(), !781)
  %267 = icmp eq ptr %266, null, !dbg !1161
  br i1 %267, label %271, label %327, !dbg !1163

268:                                              ; preds = %205, %206
    #dbg_value(ptr null, !711, !DIExpression(), !781)
    #dbg_value(i64 -1, !710, !DIExpression(), !781)
    #dbg_value(i8 poison, !705, !DIExpression(), !781)
    #dbg_value(i64 %22, !739, !DIExpression(), !781)
  %269 = call noalias ptr @randint_all_new(ptr noundef %19, i64 noundef -1) #17, !dbg !1164
    #dbg_value(ptr %269, !720, !DIExpression(), !781)
  %270 = icmp eq ptr %269, null, !dbg !1165
  br i1 %270, label %271, label %277, !dbg !1166

271:                                              ; preds = %268, %264
  %272 = tail call ptr @__errno_location() #20, !dbg !1167
  %273 = load i32, ptr %272, align 4, !dbg !1167, !tbaa !456
  %274 = icmp eq ptr %19, null, !dbg !1168
  %275 = select i1 %274, ptr @.str.30, ptr %19, !dbg !1169
  %276 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef nonnull %275) #17, !dbg !1170
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %273, ptr noundef nonnull @.str.29, ptr noundef %276) #17, !dbg !1171
  unreachable, !dbg !1171

277:                                              ; preds = %268
  %278 = load ptr, ptr @stdin, align 8, !dbg !1172, !tbaa !471
    #dbg_assign(i1 poison, !764, !DIExpression(), !773, ptr %6, !DIExpression(), !1173)
    #dbg_value(ptr %278, !749, !DIExpression(), !769)
    #dbg_value(i8 %20, !750, !DIExpression(), !769)
    #dbg_value(i64 %22, !751, !DIExpression(), !769)
    #dbg_value(ptr %269, !752, !DIExpression(), !769)
    #dbg_value(ptr poison, !753, !DIExpression(), !769)
    #dbg_value(i64 0, !754, !DIExpression(), !769)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !dbg !1174
  store i64 0, ptr %5, align 8, !dbg !1175, !tbaa !813, !DIAssignID !1176
    #dbg_assign(i64 0, !743, !DIExpression(), !1176, ptr %5, !DIExpression(), !769)
    #dbg_value(ptr null, !757, !DIExpression(), !769)
    #dbg_value(ptr poison, !756, !DIExpression(), !769)
  br label %279, !dbg !1177

279:                                              ; preds = %277, %295
  %280 = phi i64 [ %296, %295 ], [ 0, %277 ]
  %281 = phi ptr [ %291, %295 ], [ null, %277 ]
    #dbg_value(i64 %280, !754, !DIExpression(), !769)
    #dbg_value(ptr %281, !757, !DIExpression(), !769)
  %282 = load i64, ptr %5, align 8, !dbg !1178, !tbaa !813
  %283 = icmp eq i64 %280, %282, !dbg !1179
  br i1 %283, label %284, label %290, !dbg !1180

284:                                              ; preds = %279
    #dbg_value(i64 %282, !758, !DIExpression(), !1181)
  %285 = call nonnull ptr @xpalloc(ptr noundef %281, ptr noundef nonnull %5, i64 noundef 1, i64 noundef %22, i64 noundef 24) #17, !dbg !1182
    #dbg_value(ptr %285, !757, !DIExpression(), !769)
  %286 = getelementptr inbounds nuw %struct.linebuffer, ptr %285, i64 %280, !dbg !1183
  %287 = load i64, ptr %5, align 8, !dbg !1184, !tbaa !813
  %288 = sub nsw i64 %287, %280, !dbg !1185
  %289 = mul i64 %288, 24, !dbg !1186
    #dbg_value(ptr %286, !1187, !DIExpression(), !1194)
    #dbg_value(i32 0, !1192, !DIExpression(), !1194)
    #dbg_value(i64 %289, !1193, !DIExpression(), !1194)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %286, i8 noundef 0, i64 noundef %289, i1 noundef false) #17, !dbg !1196
  br label %290, !dbg !1197

290:                                              ; preds = %284, %279
  %291 = phi ptr [ %285, %284 ], [ %281, %279 ], !dbg !769
    #dbg_value(ptr %291, !757, !DIExpression(), !769)
  %292 = getelementptr inbounds nuw %struct.linebuffer, ptr %291, i64 %280, !dbg !1198
  %293 = call ptr @readlinebuffer_delim(ptr noundef %292, ptr noundef %278, i8 noundef signext range(i8 0, 11) %20) #17, !dbg !1199
    #dbg_value(ptr %293, !756, !DIExpression(), !769)
  %294 = icmp eq ptr %293, null, !dbg !1200
  br i1 %294, label %316, label %295, !dbg !1202

295:                                              ; preds = %290
  %296 = add nuw i64 %280, 1, !dbg !1203
    #dbg_value(i64 %296, !754, !DIExpression(), !769)
    #dbg_value(ptr poison, !756, !DIExpression(), !769)
    #dbg_value(ptr %291, !757, !DIExpression(), !769)
  %297 = icmp eq i64 %296, %22, !dbg !1204
  br i1 %297, label %298, label %279, !dbg !1205, !llvm.loop !1206

298:                                              ; preds = %295
    #dbg_value(ptr poison, !756, !DIExpression(), !769)
    #dbg_value(ptr %291, !757, !DIExpression(), !769)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !dbg !1209
  call void @initbuffer(ptr noundef nonnull %6) #17, !dbg !1210
  br label %299, !dbg !1211

299:                                              ; preds = %307, %298
  %300 = phi i64 [ %22, %298 ], [ %308, %307 ], !dbg !769
    #dbg_value(i64 %300, !754, !DIExpression(), !769)
    #dbg_value(ptr %269, !1212, !DIExpression(), !1218)
    #dbg_value(i64 %300, !1217, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1218)
  %301 = call i64 @randint_genmax(ptr noundef nonnull %269, i64 noundef %300) #17, !dbg !1220
    #dbg_value(i64 %301, !767, !DIExpression(), !1221)
  %302 = icmp ult i64 %301, %22, !dbg !1222
  %303 = getelementptr inbounds nuw %struct.linebuffer, ptr %291, i64 %301, !dbg !1223
  %304 = select i1 %302, ptr %303, ptr %6, !dbg !1223
    #dbg_value(ptr %304, !756, !DIExpression(), !769)
  %305 = call ptr @readlinebuffer_delim(ptr noundef %304, ptr noundef %278, i8 noundef signext range(i8 0, 11) %20) #17, !dbg !1224
  %306 = icmp eq ptr %305, null, !dbg !1225
  br i1 %306, label %310, label %307, !dbg !1226

307:                                              ; preds = %299
  %308 = add i64 %300, 1, !dbg !1227
    #dbg_value(i64 %308, !1217, !DIExpression(), !1218)
    #dbg_value(i64 %308, !754, !DIExpression(), !769)
  %309 = icmp eq i64 %300, 0, !dbg !1228
  br i1 %309, label %314, label %299, !dbg !1229, !llvm.loop !1230

310:                                              ; preds = %299
    #dbg_value(i64 %300, !754, !DIExpression(), !769)
  %311 = icmp eq i64 %300, 0, !dbg !1232
  br i1 %311, label %312, label %314, !dbg !1234

312:                                              ; preds = %310
  %313 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.79, i32 noundef 5) #17, !dbg !1235
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 75, ptr noundef %313) #17, !dbg !1236
  unreachable, !dbg !1236

314:                                              ; preds = %307, %310
  %315 = phi i64 [ %300, %310 ], [ 1, %307 ]
  call void @freebuffer(ptr noundef nonnull %6) #17, !dbg !1237
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !dbg !1238
  br label %316, !dbg !1239

316:                                              ; preds = %290, %314
  %317 = phi i64 [ %315, %314 ], [ %280, %290 ], !dbg !769
    #dbg_value(i64 %317, !754, !DIExpression(), !769)
    #dbg_value(ptr %278, !1240, !DIExpression(), !1246)
  %318 = load i32, ptr %278, align 8, !dbg !1249, !tbaa !1250
  %319 = and i32 %318, 32, !dbg !1255
  %320 = icmp eq i32 %319, 0, !dbg !1255
  br i1 %320, label %325, label %321, !dbg !1256

321:                                              ; preds = %316
  %322 = tail call ptr @__errno_location() #20, !dbg !1257
  %323 = load i32, ptr %322, align 4, !dbg !1257, !tbaa !456
  %324 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #17, !dbg !1258
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %323, ptr noundef %324) #17, !dbg !1259
  unreachable, !dbg !1259

325:                                              ; preds = %316
    #dbg_value(ptr %291, !712, !DIExpression(), !781)
  %326 = call i64 @llvm.umin.i64(i64 %22, i64 %317), !dbg !1260
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !dbg !1261
    #dbg_value(i64 %326, !710, !DIExpression(), !781)
    #dbg_value(i64 %326, !739, !DIExpression(), !781)
  br label %327, !dbg !1262

327:                                              ; preds = %264, %325
  %328 = phi i1 [ false, %325 ], [ %27, %264 ]
  %329 = phi i1 [ false, %325 ], [ %259, %264 ]
  %330 = phi ptr [ null, %325 ], [ %258, %264 ]
  %331 = phi i1 [ true, %325 ], [ false, %264 ]
  %332 = phi ptr [ %269, %325 ], [ %266, %264 ]
  %333 = phi ptr [ %291, %325 ], [ null, %264 ], !dbg !781
  %334 = phi i64 [ %326, %325 ], [ %257, %264 ], !dbg !781
  %335 = phi i64 [ %326, %325 ], [ %261, %264 ], !dbg !781
    #dbg_value(ptr %333, !712, !DIExpression(), !781)
    #dbg_value(i64 %335, !739, !DIExpression(), !781)
    #dbg_value(i64 %334, !710, !DIExpression(), !781)
  %336 = or i1 %135, %328, !dbg !1263
  %337 = select i1 %336, i1 true, i1 %117, !dbg !1263
  br i1 %337, label %346, label %338, !dbg !1263

338:                                              ; preds = %327
  %339 = load ptr, ptr @stdin, align 8, !dbg !1265, !tbaa !471
  %340 = call i32 @rpl_fclose(ptr noundef %339) #17, !dbg !1266
  %341 = icmp eq i32 %340, 0, !dbg !1267
  br i1 %341, label %346, label %342, !dbg !1268

342:                                              ; preds = %338
  %343 = tail call ptr @__errno_location() #20, !dbg !1269
  %344 = load i32, ptr %343, align 4, !dbg !1269, !tbaa !456
  %345 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #17, !dbg !1270
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %344, ptr noundef %345) #17, !dbg !1271
  unreachable, !dbg !1271

346:                                              ; preds = %338, %327
  br i1 %329, label %349, label %347, !dbg !1272

347:                                              ; preds = %346
  %348 = call noalias ptr @randperm_new(ptr noundef nonnull %332, i64 noundef %335, i64 noundef %334) #17, !dbg !1274
    #dbg_value(ptr %348, !724, !DIExpression(), !781)
  br label %349, !dbg !1275

349:                                              ; preds = %347, %346
  %350 = phi ptr [ null, %346 ], [ %348, %347 ], !dbg !781
    #dbg_value(ptr %350, !724, !DIExpression(), !781)
  %351 = icmp eq ptr %18, null, !dbg !1276
  br i1 %351, label %360, label %352, !dbg !1278

352:                                              ; preds = %349
  %353 = load ptr, ptr @stdout, align 8, !dbg !1279, !tbaa !471
  %354 = call ptr @freopen_safer(ptr noundef nonnull %18, ptr noundef nonnull @.str.32, ptr noundef %353) #17, !dbg !1280
  %355 = icmp eq ptr %354, null, !dbg !1281
  br i1 %355, label %356, label %360, !dbg !1282

356:                                              ; preds = %352
  %357 = tail call ptr @__errno_location() #20, !dbg !1283
  %358 = load i32, ptr %357, align 4, !dbg !1283, !tbaa !456
  %359 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef nonnull %18) #17, !dbg !1284
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %358, ptr noundef nonnull @.str.29, ptr noundef %359) #17, !dbg !1285
  unreachable, !dbg !1285

360:                                              ; preds = %352, %349
  br i1 %329, label %361, label %416, !dbg !1286

361:                                              ; preds = %360
  br i1 %135, label %492, label %362, !dbg !1288

362:                                              ; preds = %361
  %363 = icmp eq i64 %334, 0, !dbg !1291
  br i1 %363, label %364, label %366, !dbg !1294

364:                                              ; preds = %362
  %365 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #17, !dbg !1295
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %365) #17, !dbg !1296
  unreachable, !dbg !1296

366:                                              ; preds = %362
  br i1 %117, label %367, label %396, !dbg !1297

367:                                              ; preds = %366
    #dbg_value(ptr %332, !1299, !DIExpression(), !1315)
    #dbg_value(i64 %335, !1304, !DIExpression(), !1315)
    #dbg_value(i64 %24, !1305, !DIExpression(), !1315)
    #dbg_value(i64 %23, !1306, !DIExpression(), !1315)
    #dbg_value(i8 %20, !1307, !DIExpression(), !1315)
  %368 = sub i64 %23, %24, !dbg !1317
    #dbg_value(i64 %368, !1308, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1315)
    #dbg_value(i64 0, !1310, !DIExpression(), !1318)
  %369 = icmp eq i64 %335, 0, !dbg !1319
  br i1 %369, label %492, label %370, !dbg !1320

370:                                              ; preds = %367
  %371 = getelementptr inbounds nuw i8, ptr %4, i64 20
  %372 = getelementptr inbounds nuw i8, ptr %4, i64 21
  %373 = ptrtoint ptr %372 to i64
  br label %377, !dbg !1320

374:                                              ; preds = %390
  %375 = add nuw i64 %378, 1, !dbg !1321
    #dbg_value(i64 %375, !1310, !DIExpression(), !1318)
  %376 = icmp eq i64 %375, %335, !dbg !1322
  br i1 %376, label %492, label %377, !dbg !1323, !llvm.loop !1324

377:                                              ; preds = %374, %370
  %378 = phi i64 [ 0, %370 ], [ %375, %374 ]
    #dbg_value(i64 %378, !1310, !DIExpression(), !1318)
    #dbg_value(ptr %332, !1212, !DIExpression(), !1327)
    #dbg_value(i64 %368, !1217, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1327)
  %379 = call i64 @randint_genmax(ptr noundef nonnull %332, i64 noundef %368) #17, !dbg !1329
  %380 = add i64 %379, %24, !dbg !1330
    #dbg_value(i64 %380, !1312, !DIExpression(), !1331)
    #dbg_assign(i1 poison, !1332, !DIExpression(), !741, ptr %4, !DIExpression(), !1345)
    #dbg_value(i64 %380, !1337, !DIExpression(), !1345)
    #dbg_value(i8 %20, !1338, !DIExpression(), !1345)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !dbg !1348
    #dbg_value(ptr %371, !1339, !DIExpression(), !1345)
  store i8 %20, ptr %371, align 4, !dbg !1349, !tbaa !564
  br label %381, !dbg !1350

381:                                              ; preds = %381, %377
  %382 = phi ptr [ %371, %377 ], [ %387, %381 ], !dbg !1345
  %383 = phi i64 [ %380, %377 ], [ %388, %381 ]
    #dbg_value(i64 %383, !1337, !DIExpression(), !1345)
    #dbg_value(ptr %382, !1339, !DIExpression(), !1345)
  %384 = urem i64 %383, 10, !dbg !1351
  %385 = trunc nuw nsw i64 %384 to i8, !dbg !1352
  %386 = or disjoint i8 %385, 48, !dbg !1352
  %387 = getelementptr inbounds i8, ptr %382, i64 -1, !dbg !1353
    #dbg_value(ptr %387, !1339, !DIExpression(), !1345)
  store i8 %386, ptr %387, align 1, !dbg !1354, !tbaa !564
  %388 = udiv i64 %383, 10, !dbg !1355
    #dbg_value(i64 %388, !1337, !DIExpression(), !1345)
  %389 = icmp ult i64 %383, 10, !dbg !1356
  br i1 %389, label %390, label %381, !dbg !1357, !llvm.loop !1358

390:                                              ; preds = %381
  %391 = ptrtoint ptr %387 to i64, !dbg !1360
  %392 = sub i64 %373, %391, !dbg !1361
    #dbg_value(i64 %392, !1340, !DIExpression(), !1345)
  %393 = load ptr, ptr @stdout, align 8, !dbg !1362, !tbaa !471
  %394 = call i64 @fwrite_unlocked(ptr noundef nonnull %387, i64 noundef 1, i64 noundef %392, ptr noundef %393), !dbg !1363
  %395 = icmp eq i64 %394, %392, !dbg !1364
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !dbg !1365
    #dbg_value(i64 %378, !1310, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1318)
  br i1 %395, label %374, label %483

396:                                              ; preds = %366
    #dbg_value(ptr %332, !1366, !DIExpression(), !1388)
    #dbg_value(i64 %335, !1373, !DIExpression(), !1388)
    #dbg_value(ptr %330, !1374, !DIExpression(), !1388)
    #dbg_value(i64 %334, !1375, !DIExpression(), !1388)
    #dbg_value(i64 0, !1376, !DIExpression(), !1390)
  %397 = icmp eq i64 %335, 0, !dbg !1391
  br i1 %397, label %492, label %398, !dbg !1392

398:                                              ; preds = %396
  %399 = add i64 %334, -1
  br label %403, !dbg !1392

400:                                              ; preds = %403
  %401 = add nuw i64 %404, 1, !dbg !1393
    #dbg_value(i64 %401, !1376, !DIExpression(), !1390)
  %402 = icmp eq i64 %401, %335, !dbg !1394
  br i1 %402, label %492, label %403, !dbg !1395, !llvm.loop !1396

403:                                              ; preds = %400, %398
  %404 = phi i64 [ 0, %398 ], [ %401, %400 ]
    #dbg_value(i64 %404, !1376, !DIExpression(), !1390)
    #dbg_value(ptr %332, !1212, !DIExpression(), !1399)
    #dbg_value(i64 %334, !1217, !DIExpression(), !1399)
  %405 = call i64 @randint_genmax(ptr noundef nonnull %332, i64 noundef %399) #17, !dbg !1401
    #dbg_value(i64 %405, !1378, !DIExpression(), !1402)
  %406 = getelementptr inbounds nuw ptr, ptr %330, i64 %405, !dbg !1403
    #dbg_value(ptr %406, !1381, !DIExpression(), !1402)
  %407 = getelementptr inbounds nuw i8, ptr %406, i64 8, !dbg !1404
  %408 = load ptr, ptr %407, align 8, !dbg !1404, !tbaa !474
  %409 = load ptr, ptr %406, align 8, !dbg !1405, !tbaa !474
  %410 = ptrtoint ptr %408 to i64, !dbg !1406
  %411 = ptrtoint ptr %409 to i64, !dbg !1406
  %412 = sub i64 %410, %411, !dbg !1407
    #dbg_value(i64 %412, !1382, !DIExpression(), !1402)
  %413 = load ptr, ptr @stdout, align 8, !dbg !1408, !tbaa !471
  %414 = call i64 @fwrite_unlocked(ptr noundef %409, i64 noundef 1, i64 noundef %412, ptr noundef %413), !dbg !1409
  %415 = icmp eq i64 %414, %412, !dbg !1410
    #dbg_value(i64 %404, !1376, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1390)
  br i1 %415, label %400, label %483

416:                                              ; preds = %360
  br i1 %331, label %417, label %435, !dbg !1411

417:                                              ; preds = %416
    #dbg_value(i64 %334, !1414, !DIExpression(), !1435)
    #dbg_value(ptr %333, !1421, !DIExpression(), !1435)
    #dbg_value(ptr %350, !1422, !DIExpression(), !1435)
    #dbg_value(i64 0, !1423, !DIExpression(), !1437)
  %418 = icmp eq i64 %334, 0, !dbg !1438
  br i1 %418, label %492, label %422, !dbg !1439

419:                                              ; preds = %422
  %420 = add nuw i64 %423, 1, !dbg !1440
    #dbg_value(i64 %420, !1423, !DIExpression(), !1437)
  %421 = icmp eq i64 %420, %334, !dbg !1441
  br i1 %421, label %492, label %422, !dbg !1442, !llvm.loop !1443

422:                                              ; preds = %417, %419
  %423 = phi i64 [ %420, %419 ], [ 0, %417 ]
    #dbg_value(i64 %423, !1423, !DIExpression(), !1437)
  %424 = getelementptr inbounds nuw i64, ptr %350, i64 %423, !dbg !1446
  %425 = load i64, ptr %424, align 8, !dbg !1446, !tbaa !813
  %426 = getelementptr inbounds nuw %struct.linebuffer, ptr %333, i64 %425, !dbg !1447
    #dbg_value(ptr %426, !1425, !DIExpression(), !1448)
  %427 = getelementptr inbounds nuw i8, ptr %426, i64 8, !dbg !1449
  %428 = load i64, ptr %427, align 8, !dbg !1449, !tbaa !1450
  %429 = getelementptr inbounds nuw i8, ptr %426, i64 16, !dbg !1452
  %430 = load ptr, ptr %429, align 8, !dbg !1452, !tbaa !1453
  %431 = load ptr, ptr @stdout, align 8, !dbg !1454, !tbaa !471
  %432 = call i64 @fwrite_unlocked(ptr noundef %430, i64 noundef 1, i64 noundef %428, ptr noundef %431), !dbg !1455
  %433 = load i64, ptr %427, align 8, !dbg !1456, !tbaa !1450
  %434 = icmp eq i64 %432, %433, !dbg !1457
    #dbg_value(i64 %423, !1423, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1437)
  br i1 %434, label %419, label %483

435:                                              ; preds = %416
  %436 = icmp eq i64 %335, 0, !dbg !1458
  br i1 %117, label %437, label %465, !dbg !1460

437:                                              ; preds = %435
    #dbg_value(i64 %335, !1461, !DIExpression(), !1474)
    #dbg_value(i64 %24, !1466, !DIExpression(), !1474)
    #dbg_value(ptr %350, !1467, !DIExpression(), !1474)
    #dbg_value(i8 %20, !1468, !DIExpression(), !1474)
    #dbg_value(i64 0, !1469, !DIExpression(), !1476)
  br i1 %436, label %492, label %438, !dbg !1477

438:                                              ; preds = %437
  %439 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %440 = getelementptr inbounds nuw i8, ptr %3, i64 21
  %441 = ptrtoint ptr %440 to i64
  br label %445, !dbg !1477

442:                                              ; preds = %459
  %443 = add nuw i64 %446, 1, !dbg !1478
    #dbg_value(i64 %443, !1469, !DIExpression(), !1476)
  %444 = icmp eq i64 %443, %335, !dbg !1479
  br i1 %444, label %492, label %445, !dbg !1480, !llvm.loop !1481

445:                                              ; preds = %442, %438
  %446 = phi i64 [ 0, %438 ], [ %443, %442 ]
    #dbg_value(i64 %446, !1469, !DIExpression(), !1476)
  %447 = getelementptr inbounds nuw i64, ptr %350, i64 %446, !dbg !1484
  %448 = load i64, ptr %447, align 8, !dbg !1484, !tbaa !813
  %449 = add i64 %448, %24, !dbg !1485
    #dbg_value(i64 %449, !1471, !DIExpression(), !1486)
    #dbg_assign(i1 poison, !1332, !DIExpression(), !740, ptr %3, !DIExpression(), !1487)
    #dbg_value(i64 %449, !1337, !DIExpression(), !1487)
    #dbg_value(i8 %20, !1338, !DIExpression(), !1487)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !dbg !1490
    #dbg_value(ptr %439, !1339, !DIExpression(), !1487)
  store i8 %20, ptr %439, align 4, !dbg !1491, !tbaa !564
  br label %450, !dbg !1492

450:                                              ; preds = %450, %445
  %451 = phi ptr [ %439, %445 ], [ %456, %450 ], !dbg !1487
  %452 = phi i64 [ %449, %445 ], [ %457, %450 ]
    #dbg_value(i64 %452, !1337, !DIExpression(), !1487)
    #dbg_value(ptr %451, !1339, !DIExpression(), !1487)
  %453 = urem i64 %452, 10, !dbg !1493
  %454 = trunc nuw nsw i64 %453 to i8, !dbg !1494
  %455 = or disjoint i8 %454, 48, !dbg !1494
  %456 = getelementptr inbounds i8, ptr %451, i64 -1, !dbg !1495
    #dbg_value(ptr %456, !1339, !DIExpression(), !1487)
  store i8 %455, ptr %456, align 1, !dbg !1496, !tbaa !564
  %457 = udiv i64 %452, 10, !dbg !1497
    #dbg_value(i64 %457, !1337, !DIExpression(), !1487)
  %458 = icmp ult i64 %452, 10, !dbg !1498
  br i1 %458, label %459, label %450, !dbg !1499, !llvm.loop !1500

459:                                              ; preds = %450
  %460 = ptrtoint ptr %456 to i64, !dbg !1502
  %461 = sub i64 %441, %460, !dbg !1503
    #dbg_value(i64 %461, !1340, !DIExpression(), !1487)
  %462 = load ptr, ptr @stdout, align 8, !dbg !1504, !tbaa !471
  %463 = call i64 @fwrite_unlocked(ptr noundef nonnull %456, i64 noundef 1, i64 noundef %461, ptr noundef %462), !dbg !1505
  %464 = icmp eq i64 %463, %461, !dbg !1506
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !dbg !1507
    #dbg_value(i64 %446, !1469, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1476)
  br i1 %464, label %442, label %483

465:                                              ; preds = %435
    #dbg_value(i64 %335, !1508, !DIExpression(), !1526)
    #dbg_value(ptr %330, !1513, !DIExpression(), !1526)
    #dbg_value(ptr %350, !1514, !DIExpression(), !1526)
    #dbg_value(i64 0, !1515, !DIExpression(), !1528)
  br i1 %436, label %492, label %469, !dbg !1529

466:                                              ; preds = %469
  %467 = add nuw i64 %470, 1, !dbg !1530
    #dbg_value(i64 %467, !1515, !DIExpression(), !1528)
  %468 = icmp eq i64 %467, %335, !dbg !1531
  br i1 %468, label %492, label %469, !dbg !1532, !llvm.loop !1533

469:                                              ; preds = %465, %466
  %470 = phi i64 [ %467, %466 ], [ 0, %465 ]
    #dbg_value(i64 %470, !1515, !DIExpression(), !1528)
  %471 = getelementptr inbounds nuw i64, ptr %350, i64 %470, !dbg !1536
  %472 = load i64, ptr %471, align 8, !dbg !1536, !tbaa !813
  %473 = getelementptr inbounds nuw ptr, ptr %330, i64 %472, !dbg !1537
    #dbg_value(ptr %473, !1517, !DIExpression(), !1538)
  %474 = getelementptr inbounds nuw i8, ptr %473, i64 8, !dbg !1539
  %475 = load ptr, ptr %474, align 8, !dbg !1539, !tbaa !474
  %476 = load ptr, ptr %473, align 8, !dbg !1540, !tbaa !474
  %477 = ptrtoint ptr %475 to i64, !dbg !1541
  %478 = ptrtoint ptr %476 to i64, !dbg !1541
  %479 = sub i64 %477, %478, !dbg !1542
    #dbg_value(i64 %479, !1520, !DIExpression(), !1538)
  %480 = load ptr, ptr @stdout, align 8, !dbg !1543, !tbaa !471
  %481 = call i64 @fwrite_unlocked(ptr noundef %476, i64 noundef 1, i64 noundef %479, ptr noundef %480), !dbg !1544
  %482 = icmp eq i64 %481, %479, !dbg !1545
    #dbg_value(i64 %470, !1515, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1528)
  br i1 %482, label %466, label %483

483:                                              ; preds = %469, %459, %422, %403, %390
    #dbg_value(i32 -1, !726, !DIExpression(), !781)
  %484 = tail call ptr @__errno_location() #20, !dbg !1546
  %485 = load i32, ptr %484, align 4, !dbg !1552, !tbaa !456
    #dbg_value(i32 %485, !1549, !DIExpression(), !1553)
  %486 = load ptr, ptr @stdout, align 8, !dbg !1554, !tbaa !471
  %487 = call i32 @fflush_unlocked(ptr noundef %486) #17, !dbg !1555
  %488 = load ptr, ptr @stdout, align 8, !dbg !1556, !tbaa !471
  %489 = call i32 @fpurge(ptr noundef %488) #17, !dbg !1557
  %490 = load ptr, ptr @stdout, align 8, !dbg !1558, !tbaa !471
  call void @clearerr_unlocked(ptr noundef %490) #17, !dbg !1559
  %491 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.80, i32 noundef 5) #17, !dbg !1560
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %485, ptr noundef %491) #17, !dbg !1561
  unreachable, !dbg !1561

492:                                              ; preds = %466, %442, %419, %400, %374, %465, %437, %417, %396, %367, %361
  ret i32 0, !dbg !1562
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

declare !dbg !1563 void @set_program_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !1565 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1569 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1572 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1575 i32 @atexit(ptr noundef) local_unnamed_addr #3

declare void @close_stdout() #1

; Function Attrs: nounwind
declare !dbg !1580 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1584 void @error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !1588 i32 @xstrtoumax(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1594 ptr @quote(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

declare !dbg !1598 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !1602 ptr @proper_name_lite(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1606 ptr @freopen_safer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1610 ptr @__errno_location() local_unnamed_addr #8

declare !dbg !1614 ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1617 void @fadvise(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !1621 noalias ptr @randint_all_new(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1624 i64 @randperm_bound(i64 noundef, i64 noundef) local_unnamed_addr #8

declare !dbg !1628 i32 @rpl_fclose(ptr noundef) local_unnamed_addr #1

declare !dbg !1629 noalias ptr @randperm_new(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1632 noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1633 i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1637 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1640 ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1646 i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare !dbg !1647 noundef i64 @fwrite_unlocked(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1653 i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

declare !dbg !1656 void @emit_bug_reporting_address() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1657 i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1660 i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: allocsize(0)
declare !dbg !1663 noalias nonnull ptr @xmalloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare !dbg !1667 noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1672 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1676 noalias ptr @fread_file(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare !dbg !1680 noalias nonnull ptr @xnmalloc(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !1683 ptr @rawmemchr(ptr noundef, i32 noundef) local_unnamed_addr #13

declare !dbg !1686 nonnull ptr @xpalloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !1692 ptr @readlinebuffer_delim(ptr noundef, ptr noundef, i8 noundef signext) local_unnamed_addr #1

declare !dbg !1695 void @initbuffer(ptr noundef) local_unnamed_addr #1

declare !dbg !1698 void @freebuffer(ptr noundef) local_unnamed_addr #1

declare !dbg !1699 i64 @randint_genmax(ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !1700 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #1

declare !dbg !1701 i32 @fpurge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !1702 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias readonly captures(none)) #16

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { noreturn }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!170}
!llvm.module.flags = !{!448, !449, !450, !451, !452, !453, !454}
!llvm.ident = !{!455}
!llvm.errno.tbaa = !{!456}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/shuf.c", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "e4402916bdf8bdb1cc4d59b5beb82415")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 760, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 95)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 536, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 67)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 5)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 61)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 624, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 78)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 56)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 616, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 77)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !34, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 58)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 64)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 50)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 62)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 414, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 415, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 10)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 415, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 24)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 420, type: !71, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 431, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 30)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !2, line: 460, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 7)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !2, line: 460, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 20)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !2, line: 472, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 23)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !2, line: 479, type: !103, isLocal: true, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 32)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !2, line: 485, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 34)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 498, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 14)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 498, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 12)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 509, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 33)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 514, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 17)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 540, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 2)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !2, line: 541, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 3)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !2, line: 568, type: !71, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !2, line: 583, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 11)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !2, line: 588, type: !133, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !2, line: 599, type: !152, isLocal: true, isDefinition: true)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 19)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !157, line: 748, type: !34, isLocal: true, isDefinition: true)
!157 = !DIFile(filename: "src/system.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "6a9c30566098770bfb4561b49834f302")
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !157, line: 755, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 75)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !165, file: !157, line: 594, type: !185, isLocal: true, isDefinition: true)
!165 = distinct !DISubprogram(name: "oputs_", scope: !157, file: !157, line: 592, type: !166, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !376, keyInstructions: true)
!166 = !DISubroutineType(cc: DW_CC_nocall, types: !167)
!167 = !{null, !168, !168}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!170 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !171, retainedTypes: !230, globals: !243, splitDebugInlining: false, nameTableKind: None)
!171 = !{!172, !181, !184, !189, !203, !212, !215}
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !173, line: 30, baseType: !174, size: 32, elements: !175)
!173 = !DIFile(filename: "./lib/xstrtol.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!174 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!175 = !{!176, !177, !178, !179, !180}
!176 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!177 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!178 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!179 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!180 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 100, baseType: !174, size: 32, elements: !182)
!182 = !{!183}
!183 = !DIEnumerator(name: "RANDOM_SOURCE_OPTION", value: 128)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !157, line: 356, baseType: !185, size: 32, elements: !186)
!185 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!186 = !{!187, !188}
!187 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!188 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !190, line: 42, baseType: !174, size: 32, elements: !191)
!190 = !DIFile(filename: "./lib/quotearg.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202}
!192 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!193 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!194 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!195 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!196 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!197 = !DIEnumerator(name: "c_quoting_style", value: 5)
!198 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!199 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!200 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!201 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!202 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !204, line: 44, baseType: !174, size: 32, elements: !205)
!204 = !DIFile(filename: "./lib/fadvise.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!205 = !{!206, !207, !208, !209, !210, !211}
!206 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!207 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!208 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!209 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!210 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!211 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 46, baseType: !174, size: 32, elements: !213)
!213 = !{!214}
!214 = !DIEnumerator(name: "RESERVOIR_MIN_INPUT", value: 8388608)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !216, line: 46, baseType: !174, size: 32, elements: !217)
!216 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229}
!218 = !DIEnumerator(name: "_ISupper", value: 256)
!219 = !DIEnumerator(name: "_ISlower", value: 512)
!220 = !DIEnumerator(name: "_ISalpha", value: 1024)
!221 = !DIEnumerator(name: "_ISdigit", value: 2048)
!222 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!223 = !DIEnumerator(name: "_ISspace", value: 8192)
!224 = !DIEnumerator(name: "_ISprint", value: 16384)
!225 = !DIEnumerator(name: "_ISgraph", value: 32768)
!226 = !DIEnumerator(name: "_ISblank", value: 1)
!227 = !DIEnumerator(name: "_IScntrl", value: 2)
!228 = !DIEnumerator(name: "_ISpunct", value: 4)
!229 = !DIEnumerator(name: "_ISalnum", value: 8)
!230 = !{!231, !232, !185, !233, !234, !168, !237, !238, !236}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!233 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !235, line: 18, baseType: !236)
!235 = !DIFile(filename: "/usr/lib/llvm-22/lib/clang/22/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!236 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!237 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !239, line: 85, baseType: !240)
!239 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !241, line: 152, baseType: !242)
!241 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!242 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!243 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !44, !49, !54, !59, !64, !69, !74, !79, !81, !86, !91, !96, !101, !106, !111, !116, !121, !126, !244, !131, !136, !141, !143, !148, !150, !155, !158, !163, !246, !248, !250, !255, !260, !262, !264, !266, !268, !270, !272, !274, !276, !281, !283, !285, !287, !289, !291, !293, !295, !300, !305, !307, !309, !311, !313, !315, !320, !325, !327, !332, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !369, !374}
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !2, line: 539, type: !133, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !157, line: 604, type: !19, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !157, line: 605, type: !19, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !157, line: 614, type: !252, isLocal: true, isDefinition: true)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 4)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !157, line: 639, type: !257, isLocal: true, isDefinition: true)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 6)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !157, line: 667, type: !133, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !157, line: 667, type: !19, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !157, line: 668, type: !252, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !157, line: 668, type: !138, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !157, line: 669, type: !19, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !157, line: 670, type: !257, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !157, line: 670, type: !257, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !157, line: 671, type: !88, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !157, line: 672, type: !278, isLocal: true, isDefinition: true)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 8)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !157, line: 673, type: !71, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !157, line: 674, type: !71, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !157, line: 675, type: !71, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !157, line: 676, type: !71, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !157, line: 682, type: !88, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !157, line: 683, type: !71, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !157, line: 688, type: !128, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !157, line: 688, type: !297, isLocal: true, isDefinition: true)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 40)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !157, line: 695, type: !302, isLocal: true, isDefinition: true)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 15)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !157, line: 695, type: !24, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !157, line: 698, type: !138, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !157, line: 702, type: !19, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !157, line: 707, type: !19, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !157, line: 710, type: !278, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !157, line: 858, type: !317, isLocal: true, isDefinition: true)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 16)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !157, line: 859, type: !322, isLocal: true, isDefinition: true)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 22)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !157, line: 860, type: !302, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !157, line: 882, type: !329, isLocal: true, isDefinition: true)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 27)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !157, line: 884, type: !334, isLocal: true, isDefinition: true)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 51)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !157, line: 885, type: !118, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !19, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !118, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !145, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !88, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !113, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !88, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !317, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !19, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !278, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(name: "long_opts", scope: !170, file: !2, line: 105, type: !359, isLocal: true, isDefinition: true)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 2560, elements: !72)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !362, line: 50, size: 256, elements: !363)
!362 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!363 = !{!364, !365, !366, !368}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !361, file: !362, line: 52, baseType: !168, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !361, file: !362, line: 55, baseType: !185, size: 32, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !361, file: !362, line: 56, baseType: !367, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !361, file: !362, line: 57, baseType: !185, size: 32, offset: 192)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !371, isLocal: true, isDefinition: true)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 21)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !157, line: 959, type: !118, isLocal: true, isDefinition: true)
!376 = !{!377, !378, !379, !382, !384, !385, !386, !390, !391, !392, !393, !395, !442, !443, !444, !446, !447}
!377 = !DILocalVariable(name: "program", arg: 1, scope: !165, file: !157, line: 592, type: !168)
!378 = !DILocalVariable(name: "option", arg: 2, scope: !165, file: !157, line: 592, type: !168)
!379 = !DILocalVariable(name: "term", scope: !380, file: !157, line: 604, type: !168)
!380 = distinct !DILexicalBlock(scope: !381, file: !157, line: 601, column: 5)
!381 = distinct !DILexicalBlock(scope: !165, file: !157, line: 600, column: 7)
!382 = !DILocalVariable(name: "double_space", scope: !165, file: !157, line: 613, type: !383)
!383 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!384 = !DILocalVariable(name: "first_word", scope: !165, file: !157, line: 614, type: !168)
!385 = !DILocalVariable(name: "option_text", scope: !165, file: !157, line: 615, type: !168)
!386 = !DILocalVariable(name: "s", scope: !387, file: !157, line: 627, type: !168)
!387 = distinct !DILexicalBlock(scope: !388, file: !157, line: 624, column: 5)
!388 = distinct !DILexicalBlock(scope: !389, file: !157, line: 623, column: 12)
!389 = distinct !DILexicalBlock(scope: !165, file: !157, line: 616, column: 7)
!390 = !DILocalVariable(name: "spaces", scope: !387, file: !157, line: 628, type: !234)
!391 = !DILocalVariable(name: "anchor_len", scope: !165, file: !157, line: 639, type: !234)
!392 = !DILocalVariable(name: "desc_text", scope: !165, file: !157, line: 644, type: !168)
!393 = !DILocalVariable(name: "__ptr", scope: !394, file: !157, line: 663, type: !168)
!394 = distinct !DILexicalBlock(scope: !165, file: !157, line: 663, column: 3)
!395 = !DILocalVariable(name: "__stream", scope: !394, file: !157, line: 663, type: !396)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !398, line: 7, baseType: !399)
!398 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !400, line: 49, size: 1728, elements: !401)
!400 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!401 = !{!402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !417, !419, !420, !421, !422, !423, !425, !426, !429, !431, !434, !437, !438, !439, !440, !441}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !399, file: !400, line: 51, baseType: !185, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !399, file: !400, line: 54, baseType: !231, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !399, file: !400, line: 55, baseType: !231, size: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !399, file: !400, line: 56, baseType: !231, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !399, file: !400, line: 57, baseType: !231, size: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !399, file: !400, line: 58, baseType: !231, size: 64, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !399, file: !400, line: 59, baseType: !231, size: 64, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !399, file: !400, line: 60, baseType: !231, size: 64, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !399, file: !400, line: 61, baseType: !231, size: 64, offset: 512)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !399, file: !400, line: 64, baseType: !231, size: 64, offset: 576)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !399, file: !400, line: 65, baseType: !231, size: 64, offset: 640)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !399, file: !400, line: 66, baseType: !231, size: 64, offset: 704)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !399, file: !400, line: 68, baseType: !415, size: 64, offset: 768)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !400, line: 36, flags: DIFlagFwdDecl)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !399, file: !400, line: 70, baseType: !418, size: 64, offset: 832)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !399, file: !400, line: 72, baseType: !185, size: 32, offset: 896)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !399, file: !400, line: 73, baseType: !185, size: 32, offset: 928)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !399, file: !400, line: 74, baseType: !240, size: 64, offset: 960)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !399, file: !400, line: 77, baseType: !233, size: 16, offset: 1024)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !399, file: !400, line: 78, baseType: !424, size: 8, offset: 1040)
!424 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !399, file: !400, line: 79, baseType: !66, size: 8, offset: 1048)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !399, file: !400, line: 81, baseType: !427, size: 64, offset: 1088)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !400, line: 43, baseType: null)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !399, file: !400, line: 89, baseType: !430, size: 64, offset: 1152)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !241, line: 153, baseType: !242)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !399, file: !400, line: 91, baseType: !432, size: 64, offset: 1216)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !400, line: 37, flags: DIFlagFwdDecl)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !399, file: !400, line: 92, baseType: !435, size: 64, offset: 1280)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !400, line: 38, flags: DIFlagFwdDecl)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !399, file: !400, line: 93, baseType: !418, size: 64, offset: 1344)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !399, file: !400, line: 94, baseType: !232, size: 64, offset: 1408)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !399, file: !400, line: 95, baseType: !234, size: 64, offset: 1472)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !399, file: !400, line: 96, baseType: !185, size: 32, offset: 1536)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !399, file: !400, line: 98, baseType: !93, size: 160, offset: 1568)
!442 = !DILocalVariable(name: "__cnt", scope: !394, file: !157, line: 663, type: !234)
!443 = !DILocalVariable(name: "url_program", scope: !165, file: !157, line: 667, type: !168)
!444 = !DILocalVariable(name: "__ptr", scope: !445, file: !157, line: 705, type: !168)
!445 = distinct !DILexicalBlock(scope: !165, file: !157, line: 705, column: 3)
!446 = !DILocalVariable(name: "__stream", scope: !445, file: !157, line: 705, type: !396)
!447 = !DILocalVariable(name: "__cnt", scope: !445, file: !157, line: 705, type: !234)
!448 = !{i32 7, !"Dwarf Version", i32 5}
!449 = !{i32 2, !"Debug Info Version", i32 3}
!450 = !{i32 1, !"wchar_size", i32 4}
!451 = !{i32 8, !"PIC Level", i32 2}
!452 = !{i32 7, !"PIE Level", i32 2}
!453 = !{i32 7, !"uwtable", i32 2}
!454 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!455 = !{!"Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)"}
!456 = !{!457, !457, i64 0}
!457 = !{!"int", !458, i64 0}
!458 = !{!"omnipotent char", !459, i64 0}
!459 = !{!"Simple C/C++ TBAA"}
!460 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 50, type: !461, scopeLine: 51, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !463, keyInstructions: true)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !185}
!463 = !{!464}
!464 = !DILocalVariable(name: "status", arg: 1, scope: !460, file: !2, line: 50, type: !185)
!465 = !DILocation(line: 0, scope: !460)
!466 = !DILocation(line: 52, column: 14, scope: !467, atomGroup: 1, atomRank: 2)
!467 = distinct !DILexicalBlock(scope: !460, file: !2, line: 52, column: 7)
!468 = !DILocation(line: 52, column: 14, scope: !467, atomGroup: 1, atomRank: 1)
!469 = !DILocation(line: 53, column: 5, scope: !470)
!470 = distinct !DILexicalBlock(scope: !467, file: !2, line: 53, column: 5)
!471 = !{!472, !472, i64 0}
!472 = !{!"p1 _ZTS8_IO_FILE", !473, i64 0}
!473 = !{!"any pointer", !458, i64 0}
!474 = !{!475, !475, i64 0}
!475 = !{!"p1 omnipotent char", !473, i64 0}
!476 = !DILocation(line: 56, column: 15, scope: !477)
!477 = distinct !DILexicalBlock(scope: !467, file: !2, line: 55, column: 5)
!478 = !DILocation(line: 61, column: 15, scope: !477)
!479 = !DILocation(line: 56, column: 7, scope: !477)
!480 = !DILocation(line: 62, column: 14, scope: !477)
!481 = !DILocation(line: 64, column: 5, scope: !477)
!482 = !DILocation(line: 62, column: 7, scope: !477)
!483 = !DILocation(line: 748, column: 10, scope: !484, inlinedAt: !487)
!484 = distinct !DISubprogram(name: "emit_stdin_note", scope: !157, file: !157, line: 746, type: !485, scopeLine: 747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, keyInstructions: true)
!485 = !DISubroutineType(types: !486)
!486 = !{null}
!487 = distinct !DILocation(line: 66, column: 7, scope: !477)
!488 = !DILocation(line: 750, column: 5, scope: !484, inlinedAt: !487)
!489 = !DILocation(line: 748, column: 3, scope: !484, inlinedAt: !487)
!490 = !DILocation(line: 755, column: 10, scope: !491, inlinedAt: !492)
!491 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !157, file: !157, line: 753, type: !485, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, keyInstructions: true)
!492 = distinct !DILocation(line: 67, column: 7, scope: !477)
!493 = !DILocation(line: 757, column: 5, scope: !491, inlinedAt: !492)
!494 = !DILocation(line: 755, column: 3, scope: !491, inlinedAt: !492)
!495 = !DILocation(line: 69, column: 14, scope: !477)
!496 = !DILocation(line: 69, column: 7, scope: !477)
!497 = !DILocation(line: 72, column: 14, scope: !477)
!498 = !DILocation(line: 72, column: 7, scope: !477)
!499 = !DILocation(line: 75, column: 14, scope: !477)
!500 = !DILocation(line: 75, column: 7, scope: !477)
!501 = !DILocation(line: 78, column: 14, scope: !477)
!502 = !DILocation(line: 78, column: 7, scope: !477)
!503 = !DILocation(line: 81, column: 14, scope: !477)
!504 = !DILocation(line: 81, column: 7, scope: !477)
!505 = !DILocation(line: 84, column: 14, scope: !477)
!506 = !DILocation(line: 84, column: 7, scope: !477)
!507 = !DILocation(line: 87, column: 14, scope: !477)
!508 = !DILocation(line: 87, column: 7, scope: !477)
!509 = !DILocation(line: 90, column: 14, scope: !477)
!510 = !DILocation(line: 90, column: 7, scope: !477)
!511 = !DILocation(line: 91, column: 14, scope: !477)
!512 = !DILocation(line: 91, column: 7, scope: !477)
!513 = !DILocalVariable(name: "program", arg: 1, scope: !514, file: !157, line: 855, type: !168)
!514 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !157, file: !157, line: 855, type: !515, scopeLine: 856, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !517, keyInstructions: true)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !168}
!517 = !{!513, !518, !525, !526, !528}
!518 = !DILocalVariable(name: "infomap", scope: !514, file: !157, line: 857, type: !519)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 896, elements: !89)
!520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !514, file: !157, line: 857, size: 128, elements: !522)
!522 = !{!523, !524}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !521, file: !157, line: 857, baseType: !168, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !521, file: !157, line: 857, baseType: !168, size: 64, offset: 64)
!525 = !DILocalVariable(name: "node", scope: !514, file: !157, line: 867, type: !168)
!526 = !DILocalVariable(name: "map_prog", scope: !514, file: !157, line: 868, type: !527)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!528 = !DILocalVariable(name: "url_program", scope: !514, file: !157, line: 881, type: !168)
!529 = !DILocation(line: 0, scope: !514, inlinedAt: !530)
!530 = distinct !DILocation(line: 92, column: 7, scope: !477)
!531 = !DILocation(line: 876, column: 3, scope: !514, inlinedAt: !530)
!532 = !DILocation(line: 882, column: 11, scope: !514, inlinedAt: !530)
!533 = !DILocation(line: 882, column: 3, scope: !514, inlinedAt: !530)
!534 = !DILocation(line: 884, column: 11, scope: !514, inlinedAt: !530)
!535 = !DILocation(line: 884, column: 3, scope: !514, inlinedAt: !530)
!536 = !DILocation(line: 95, column: 3, scope: !460)
!537 = !DISubprogram(name: "__fprintf_chk", scope: !538, file: !538, line: 93, type: !539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!538 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!539 = !DISubroutineType(types: !540)
!540 = !{!185, !541, !185, !542, null}
!541 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !396)
!542 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !168)
!543 = !DISubprogram(name: "dcgettext", scope: !544, file: !544, line: 51, type: !545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!544 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!545 = !DISubroutineType(types: !546)
!546 = !{!231, !168, !168, !185}
!547 = !DISubprogram(name: "__printf__", linkageName: "rpl_printf", scope: !548, file: !548, line: 1944, type: !549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!548 = !DIFile(filename: "./lib/stdio.h", directory: "/workspaces/Thesis/.build/coreutils")
!549 = !DISubroutineType(types: !550)
!550 = !{!185, !542, null}
!551 = !DISubprogram(name: "fputs_unlocked", scope: !552, file: !552, line: 691, type: !553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!552 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!553 = !DISubroutineType(types: !554)
!554 = !{!185, !542, !541}
!555 = !DILocation(line: 0, scope: !165)
!556 = !DILocation(line: 600, column: 7, scope: !381)
!557 = !DILocation(line: 600, column: 19, scope: !381, atomGroup: 1, atomRank: 2)
!558 = !DILocation(line: 600, column: 19, scope: !381, atomGroup: 1, atomRank: 1)
!559 = !DILocation(line: 604, column: 26, scope: !380, atomGroup: 2, atomRank: 2)
!560 = !DILocation(line: 0, scope: !380)
!561 = !DILocation(line: 605, column: 23, scope: !380, atomGroup: 4, atomRank: 2)
!562 = !DILocation(line: 605, column: 28, scope: !380, atomGroup: 4, atomRank: 1)
!563 = !DILocation(line: 605, column: 32, scope: !380)
!564 = !{!458, !458, i64 0}
!565 = !DILocation(line: 605, column: 32, scope: !380, atomGroup: 5, atomRank: 2)
!566 = !DILocation(line: 605, column: 38, scope: !380, atomGroup: 5, atomRank: 1)
!567 = !DILocalVariable(name: "__s1", arg: 1, scope: !568, file: !569, line: 1368, type: !168)
!568 = distinct !DISubprogram(name: "streq", scope: !569, file: !569, line: 1368, type: !570, scopeLine: 1369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !572, keyInstructions: true)
!569 = !DIFile(filename: "./lib/string.h", directory: "/workspaces/Thesis/.build/coreutils")
!570 = !DISubroutineType(types: !571)
!571 = !{!383, !168, !168}
!572 = !{!567, !573}
!573 = !DILocalVariable(name: "__s2", arg: 2, scope: !568, file: !569, line: 1368, type: !168)
!574 = !DILocation(line: 0, scope: !568, inlinedAt: !575)
!575 = distinct !DILocation(line: 605, column: 41, scope: !380)
!576 = !DILocation(line: 1370, column: 11, scope: !568, inlinedAt: !575)
!577 = !DILocation(line: 1370, column: 10, scope: !568, inlinedAt: !575)
!578 = !DILocation(line: 605, column: 38, scope: !380, atomGroup: 3, atomRank: 2)
!579 = !DILocation(line: 605, column: 38, scope: !380)
!580 = !DILocation(line: 605, column: 19, scope: !380, atomGroup: 3, atomRank: 1)
!581 = !DILocation(line: 606, column: 5, scope: !380)
!582 = !DILocation(line: 607, column: 7, scope: !583)
!583 = distinct !DILexicalBlock(scope: !165, file: !157, line: 607, column: 7)
!584 = !DILocation(line: 607, column: 7, scope: !583, atomGroup: 6, atomRank: 2)
!585 = !DILocation(line: 607, column: 7, scope: !583, atomGroup: 6, atomRank: 1)
!586 = !DILocation(line: 614, column: 37, scope: !165)
!587 = !DILocation(line: 614, column: 35, scope: !165, atomGroup: 9, atomRank: 2)
!588 = !DILocation(line: 615, column: 29, scope: !165, atomGroup: 10, atomRank: 2)
!589 = !DILocation(line: 616, column: 8, scope: !389, atomGroup: 11, atomRank: 2)
!590 = !DILocation(line: 616, column: 7, scope: !389, atomGroup: 11, atomRank: 1)
!591 = !DILocation(line: 0, scope: !387)
!592 = !DILocation(line: 623, column: 24, scope: !388, atomGroup: 14, atomRank: 1)
!593 = !{!594, !594, i64 0}
!594 = !{!"p1 short", !473, i64 0}
!595 = !DILocation(line: 629, column: 7, scope: !387, atomGroup: 134, atomRank: 1)
!596 = !DILocation(line: 630, column: 32, scope: !387, atomGroup: 20, atomRank: 2)
!597 = !DILocation(line: 630, column: 30, scope: !387)
!598 = !DILocation(line: 630, column: 21, scope: !387)
!599 = !{!600, !600, i64 0}
!600 = !{!"short", !458, i64 0}
!601 = !DILocation(line: 630, column: 19, scope: !387)
!602 = !DILocation(line: 630, column: 16, scope: !387, atomGroup: 19, atomRank: 2)
!603 = !DILocation(line: 629, column: 16, scope: !387, atomGroup: 17, atomRank: 2)
!604 = !DILocation(line: 629, column: 30, scope: !387, atomGroup: 17, atomRank: 1)
!605 = !DILocation(line: 629, column: 7, scope: !387, atomGroup: 18, atomRank: 1)
!606 = distinct !{!606, !607, !598, !608}
!607 = !DILocation(line: 629, column: 7, scope: !387)
!608 = !{!"llvm.loop.mustprogress"}
!609 = !DILocation(line: 631, column: 18, scope: !610, atomGroup: 21, atomRank: 2)
!610 = distinct !DILexicalBlock(scope: !387, file: !157, line: 631, column: 11)
!611 = !DILocation(line: 631, column: 18, scope: !610)
!612 = !DILocation(line: 639, column: 23, scope: !165, atomGroup: 24, atomRank: 2)
!613 = !DILocation(line: 644, column: 39, scope: !165, atomGroup: 25, atomRank: 2)
!614 = !DILocation(line: 645, column: 3, scope: !165)
!615 = !DILocation(line: 645, column: 10, scope: !165)
!616 = !DILocation(line: 645, column: 21, scope: !165, atomGroup: 26, atomRank: 1)
!617 = !DILocation(line: 647, column: 32, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !157, line: 647, column: 11)
!619 = distinct !DILexicalBlock(scope: !165, file: !157, line: 646, column: 5)
!620 = !DILocation(line: 647, column: 49, scope: !618, atomGroup: 29, atomRank: 2)
!621 = !DILocation(line: 647, column: 29, scope: !618, atomGroup: 29, atomRank: 1)
!622 = !DILocation(line: 649, column: 11, scope: !623)
!623 = distinct !DILexicalBlock(scope: !619, file: !157, line: 649, column: 11)
!624 = !DILocation(line: 649, column: 11, scope: !623, atomGroup: 31, atomRank: 2)
!625 = !DILocation(line: 649, column: 11, scope: !623, atomGroup: 31, atomRank: 1)
!626 = !DILocation(line: 651, column: 26, scope: !627, atomGroup: 32, atomRank: 2)
!627 = distinct !DILexicalBlock(scope: !628, file: !157, line: 651, column: 15)
!628 = distinct !DILexicalBlock(scope: !623, file: !157, line: 650, column: 9)
!629 = !DILocation(line: 651, column: 34, scope: !627, atomGroup: 32, atomRank: 1)
!630 = !DILocation(line: 651, column: 46, scope: !627)
!631 = !DILocation(line: 651, column: 37, scope: !627)
!632 = !DILocation(line: 651, column: 37, scope: !627, atomGroup: 33, atomRank: 2)
!633 = !DILocation(line: 651, column: 34, scope: !627, atomGroup: 33, atomRank: 1)
!634 = !DILocation(line: 659, column: 16, scope: !619, atomGroup: 38, atomRank: 2)
!635 = distinct !{!635, !614, !636, !608}
!636 = !DILocation(line: 660, column: 5, scope: !165)
!637 = !DILocation(line: 663, column: 33, scope: !165)
!638 = !DILocation(line: 663, column: 43, scope: !165)
!639 = !DILocation(line: 663, column: 3, scope: !165)
!640 = !DILocation(line: 0, scope: !568, inlinedAt: !641)
!641 = distinct !DILocation(line: 667, column: 31, scope: !165)
!642 = !DILocation(line: 0, scope: !568, inlinedAt: !643)
!643 = distinct !DILocation(line: 668, column: 31, scope: !165)
!644 = !DILocation(line: 0, scope: !568, inlinedAt: !645)
!645 = distinct !DILocation(line: 669, column: 31, scope: !165)
!646 = !DILocation(line: 0, scope: !568, inlinedAt: !647)
!647 = distinct !DILocation(line: 670, column: 31, scope: !165)
!648 = !DILocation(line: 0, scope: !568, inlinedAt: !649)
!649 = distinct !DILocation(line: 671, column: 31, scope: !165)
!650 = !DILocation(line: 0, scope: !568, inlinedAt: !651)
!651 = distinct !DILocation(line: 672, column: 31, scope: !165)
!652 = !DILocation(line: 0, scope: !568, inlinedAt: !653)
!653 = distinct !DILocation(line: 673, column: 31, scope: !165)
!654 = !DILocation(line: 0, scope: !568, inlinedAt: !655)
!655 = distinct !DILocation(line: 674, column: 31, scope: !165)
!656 = !DILocation(line: 0, scope: !568, inlinedAt: !657)
!657 = distinct !DILocation(line: 675, column: 31, scope: !165)
!658 = !DILocation(line: 0, scope: !568, inlinedAt: !659)
!659 = distinct !DILocation(line: 676, column: 31, scope: !165)
!660 = !DILocation(line: 682, column: 7, scope: !661)
!661 = distinct !DILexicalBlock(scope: !165, file: !157, line: 682, column: 7)
!662 = !DILocation(line: 682, column: 7, scope: !661, atomGroup: 64, atomRank: 2)
!663 = !DILocation(line: 683, column: 7, scope: !661, atomGroup: 64, atomRank: 1)
!664 = !DILocation(line: 683, column: 10, scope: !661)
!665 = !DILocation(line: 683, column: 10, scope: !661, atomGroup: 65, atomRank: 2)
!666 = !DILocation(line: 683, column: 7, scope: !661, atomGroup: 65, atomRank: 1)
!667 = !DILocation(line: 689, column: 41, scope: !668)
!668 = distinct !DILexicalBlock(scope: !661, file: !157, line: 684, column: 5)
!669 = !DILocation(line: 688, column: 7, scope: !668)
!670 = !DILocation(line: 690, column: 5, scope: !668)
!671 = !DILocation(line: 696, column: 15, scope: !672)
!672 = distinct !DILexicalBlock(scope: !661, file: !157, line: 692, column: 5)
!673 = !DILocation(line: 695, column: 7, scope: !672)
!674 = !DILocation(line: 698, column: 20, scope: !165)
!675 = !DILocation(line: 698, column: 3, scope: !165)
!676 = !DILocation(line: 702, column: 21, scope: !165)
!677 = !DILocation(line: 702, column: 3, scope: !165)
!678 = !DILocation(line: 705, column: 36, scope: !165)
!679 = !DILocation(line: 705, column: 50, scope: !165)
!680 = !DILocation(line: 705, column: 3, scope: !165)
!681 = !DILocation(line: 707, column: 21, scope: !165)
!682 = !DILocation(line: 707, column: 3, scope: !165)
!683 = !DILocation(line: 710, column: 28, scope: !165)
!684 = !DILocation(line: 710, column: 3, scope: !165)
!685 = !DILocation(line: 715, column: 1, scope: !165)
!686 = !DILocation(line: 715, column: 1, scope: !165, atomGroup: 80, atomRank: 1)
!687 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 388, type: !688, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !691, keyInstructions: true)
!688 = !DISubroutineType(types: !689)
!689 = !{!185, !185, !690}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !720, !724, !726, !727, !733, !734, !736, !738, !739}
!692 = !DILocalVariable(name: "argc", arg: 1, scope: !687, file: !2, line: 388, type: !185)
!693 = !DILocalVariable(name: "argv", arg: 2, scope: !687, file: !2, line: 388, type: !690)
!694 = !DILocalVariable(name: "echo", scope: !687, file: !2, line: 390, type: !383)
!695 = !DILocalVariable(name: "input_range", scope: !687, file: !2, line: 391, type: !383)
!696 = !DILocalVariable(name: "lo_input", scope: !687, file: !2, line: 392, type: !234)
!697 = !DILocalVariable(name: "hi_input", scope: !687, file: !2, line: 393, type: !234)
!698 = !DILocalVariable(name: "head_lines", scope: !687, file: !2, line: 394, type: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !700, line: 137, baseType: !242)
!700 = !DIFile(filename: "./lib/idx.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "a342c053ede588630cf36a09403114d3")
!701 = !DILocalVariable(name: "outfile", scope: !687, file: !2, line: 395, type: !168)
!702 = !DILocalVariable(name: "random_source", scope: !687, file: !2, line: 396, type: !231)
!703 = !DILocalVariable(name: "eolbyte", scope: !687, file: !2, line: 397, type: !4)
!704 = !DILocalVariable(name: "input_lines", scope: !687, file: !2, line: 398, type: !690)
!705 = !DILocalVariable(name: "use_reservoir_sampling", scope: !687, file: !2, line: 399, type: !383)
!706 = !DILocalVariable(name: "repeat", scope: !687, file: !2, line: 400, type: !383)
!707 = !DILocalVariable(name: "optc", scope: !687, file: !2, line: 402, type: !185)
!708 = !DILocalVariable(name: "n_operands", scope: !687, file: !2, line: 403, type: !185)
!709 = !DILocalVariable(name: "operand", scope: !687, file: !2, line: 404, type: !690)
!710 = !DILocalVariable(name: "n_lines", scope: !687, file: !2, line: 405, type: !234)
!711 = !DILocalVariable(name: "line", scope: !687, file: !2, line: 406, type: !690)
!712 = !DILocalVariable(name: "reservoir", scope: !687, file: !2, line: 407, type: !713)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !715, line: 32, size: 192, elements: !716)
!715 = !DIFile(filename: "./lib/linebuffer.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "e2597f62c7d5286d9e09d95cf657d3bc")
!716 = !{!717, !718, !719}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !714, file: !715, line: 34, baseType: !699, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !714, file: !715, line: 35, baseType: !699, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !714, file: !715, line: 36, baseType: !231, size: 64, offset: 128)
!720 = !DILocalVariable(name: "randint_source", scope: !687, file: !2, line: 408, type: !721)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_structure_type, name: "randint_source", file: !723, line: 33, flags: DIFlagFwdDecl)
!723 = !DIFile(filename: "./lib/randint.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "28ec191ae1fe18b14ea27fd20962a86a")
!724 = !DILocalVariable(name: "permutation", scope: !687, file: !2, line: 409, type: !725)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!726 = !DILocalVariable(name: "i", scope: !687, file: !2, line: 410, type: !185)
!727 = !DILocalVariable(name: "u", scope: !728, file: !2, line: 434, type: !730)
!728 = distinct !DILexicalBlock(scope: !729, file: !2, line: 429, column: 9)
!729 = distinct !DILexicalBlock(scope: !687, file: !2, line: 423, column: 7)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !731, line: 102, baseType: !732)
!731 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !241, line: 73, baseType: !236)
!733 = !DILocalVariable(name: "lo_end", scope: !728, file: !2, line: 435, type: !231)
!734 = !DILocalVariable(name: "err", scope: !728, file: !2, line: 436, type: !735)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !173, line: 43, baseType: !172)
!736 = !DILocalVariable(name: "argval", scope: !737, file: !2, line: 466, type: !730)
!737 = distinct !DILexicalBlock(scope: !729, file: !2, line: 465, column: 9)
!738 = !DILocalVariable(name: "e", scope: !737, file: !2, line: 467, type: !735)
!739 = !DILocalVariable(name: "ahead_lines", scope: !687, file: !2, line: 560, type: !699)
!740 = distinct !DIAssignID()
!741 = distinct !DIAssignID()
!742 = distinct !DIAssignID()
!743 = !DILocalVariable(name: "n_alloc_lines", scope: !744, file: !2, line: 184, type: !699)
!744 = distinct !DISubprogram(name: "read_input_reservoir_sampling", scope: !2, file: !2, line: 179, type: !745, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !748, keyInstructions: true)
!745 = !DISubroutineType(types: !746)
!746 = !{!699, !396, !4, !699, !721, !747}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!748 = !{!749, !750, !751, !752, !753, !754, !743, !756, !757, !758, !764, !767}
!749 = !DILocalVariable(name: "in", arg: 1, scope: !744, file: !2, line: 179, type: !396)
!750 = !DILocalVariable(name: "eolbyte", arg: 2, scope: !744, file: !2, line: 179, type: !4)
!751 = !DILocalVariable(name: "k", arg: 3, scope: !744, file: !2, line: 179, type: !699)
!752 = !DILocalVariable(name: "s", arg: 4, scope: !744, file: !2, line: 180, type: !721)
!753 = !DILocalVariable(name: "out_rsrv", arg: 5, scope: !744, file: !2, line: 181, type: !747)
!754 = !DILocalVariable(name: "n_lines", scope: !744, file: !2, line: 183, type: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "randint", file: !723, line: 30, baseType: !730)
!756 = !DILocalVariable(name: "line", scope: !744, file: !2, line: 185, type: !713)
!757 = !DILocalVariable(name: "rsrv", scope: !744, file: !2, line: 186, type: !713)
!758 = !DILocalVariable(name: "old", scope: !759, file: !2, line: 194, type: !699)
!759 = distinct !DILexicalBlock(scope: !760, file: !2, line: 193, column: 9)
!760 = distinct !DILexicalBlock(scope: !761, file: !2, line: 192, column: 11)
!761 = distinct !DILexicalBlock(scope: !762, file: !2, line: 190, column: 5)
!762 = distinct !DILexicalBlock(scope: !763, file: !2, line: 189, column: 3)
!763 = distinct !DILexicalBlock(scope: !744, file: !2, line: 189, column: 3)
!764 = !DILocalVariable(name: "dummy", scope: !765, file: !2, line: 207, type: !714)
!765 = distinct !DILexicalBlock(scope: !766, file: !2, line: 206, column: 5)
!766 = distinct !DILexicalBlock(scope: !744, file: !2, line: 205, column: 7)
!767 = !DILocalVariable(name: "j", scope: !768, file: !2, line: 221, type: !755)
!768 = distinct !DILexicalBlock(scope: !765, file: !2, line: 220, column: 9)
!769 = !DILocation(line: 0, scope: !744, inlinedAt: !770)
!770 = distinct !DILocation(line: 574, column: 17, scope: !771)
!771 = distinct !DILexicalBlock(scope: !772, file: !2, line: 571, column: 5)
!772 = distinct !DILexicalBlock(scope: !687, file: !2, line: 570, column: 7)
!773 = distinct !DIAssignID()
!774 = distinct !DIAssignID()
!775 = distinct !DIAssignID()
!776 = distinct !DIAssignID()
!777 = !DILocation(line: 0, scope: !728)
!778 = distinct !DIAssignID()
!779 = distinct !DIAssignID()
!780 = !DILocation(line: 0, scope: !737)
!781 = !DILocation(line: 0, scope: !687)
!782 = !DILocation(line: 413, column: 21, scope: !687)
!783 = !DILocation(line: 413, column: 3, scope: !687)
!784 = !DILocation(line: 414, column: 3, scope: !687)
!785 = !DILocation(line: 415, column: 3, scope: !687)
!786 = !DILocation(line: 416, column: 3, scope: !687)
!787 = !DILocation(line: 418, column: 3, scope: !687)
!788 = !DILocation(line: 420, column: 3, scope: !687)
!789 = !DILocation(line: 395, column: 15, scope: !687, atomGroup: 6, atomRank: 1)
!790 = !DILocation(line: 396, column: 9, scope: !687, atomGroup: 7, atomRank: 1)
!791 = !DILocation(line: 397, column: 8, scope: !687, atomGroup: 8, atomRank: 1)
!792 = !DILocation(line: 400, column: 8, scope: !687, atomGroup: 11, atomRank: 1)
!793 = !DILocation(line: 394, column: 9, scope: !687, atomGroup: 5, atomRank: 1)
!794 = !DILocation(line: 393, column: 10, scope: !687, atomGroup: 4, atomRank: 1)
!795 = !DILocation(line: 392, column: 10, scope: !687, atomGroup: 3, atomRank: 1)
!796 = !DILocation(line: 391, column: 8, scope: !687, atomGroup: 2, atomRank: 1)
!797 = !DILocation(line: 420, column: 18, scope: !687, atomGroup: 15, atomRank: 2)
!798 = !DILocation(line: 420, column: 3, scope: !687, atomGroup: 17, atomRank: 1)
!799 = !DILocation(line: 430, column: 15, scope: !800, atomGroup: 21, atomRank: 2)
!800 = distinct !DILexicalBlock(scope: !728, file: !2, line: 430, column: 15)
!801 = !DILocation(line: 430, column: 15, scope: !800, atomGroup: 21, atomRank: 1)
!802 = !DILocation(line: 431, column: 37, scope: !800)
!803 = !DILocation(line: 431, column: 13, scope: !800)
!804 = !DILocation(line: 434, column: 11, scope: !728)
!805 = !DILocation(line: 435, column: 11, scope: !728)
!806 = !DILocation(line: 436, column: 42, scope: !728)
!807 = !DILocation(line: 436, column: 30, scope: !728, atomGroup: 23, atomRank: 2)
!808 = !DILocation(line: 437, column: 19, scope: !809, atomGroup: 24, atomRank: 2)
!809 = distinct !DILexicalBlock(scope: !728, file: !2, line: 437, column: 15)
!810 = !DILocation(line: 437, column: 19, scope: !809, atomGroup: 24, atomRank: 1)
!811 = !DILocation(line: 439, column: 26, scope: !812, atomGroup: 25, atomRank: 2)
!812 = distinct !DILexicalBlock(scope: !809, file: !2, line: 438, column: 13)
!813 = !{!814, !814, i64 0}
!814 = !{!"long", !458, i64 0}
!815 = !DILocation(line: 442, column: 25, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !2, line: 442, column: 24)
!817 = distinct !DILexicalBlock(scope: !812, file: !2, line: 440, column: 19)
!818 = !DILocation(line: 442, column: 24, scope: !816)
!819 = !DILocation(line: 442, column: 32, scope: !816, atomGroup: 28, atomRank: 2)
!820 = !DILocation(line: 442, column: 32, scope: !816, atomGroup: 28, atomRank: 1)
!821 = !DILocation(line: 446, column: 44, scope: !822)
!822 = distinct !DILexicalBlock(scope: !816, file: !2, line: 445, column: 17)
!823 = !DILocation(line: 446, column: 25, scope: !822, atomGroup: 30, atomRank: 2)
!824 = !DILocation(line: 447, column: 27, scope: !825, atomGroup: 31, atomRank: 2)
!825 = distinct !DILexicalBlock(scope: !822, file: !2, line: 447, column: 23)
!826 = !DILocation(line: 447, column: 27, scope: !825, atomGroup: 31, atomRank: 1)
!827 = !DILocation(line: 456, column: 30, scope: !728)
!828 = !DILocation(line: 456, column: 41, scope: !728, atomGroup: 35, atomRank: 2)
!829 = !DILocation(line: 458, column: 33, scope: !830, atomGroup: 36, atomRank: 1)
!830 = distinct !DILexicalBlock(scope: !728, file: !2, line: 458, column: 15)
!831 = !DILocation(line: 458, column: 46, scope: !830)
!832 = !DILocation(line: 458, column: 59, scope: !830, atomGroup: 37, atomRank: 2)
!833 = !DILocation(line: 458, column: 33, scope: !830, atomGroup: 37, atomRank: 1)
!834 = !DILocation(line: 459, column: 38, scope: !830)
!835 = !DILocation(line: 459, column: 34, scope: !830)
!836 = !DILocation(line: 460, column: 30, scope: !830)
!837 = !DILocation(line: 460, column: 63, scope: !830)
!838 = !DILocation(line: 460, column: 56, scope: !830)
!839 = !DILocation(line: 459, column: 13, scope: !830)
!840 = !DILocation(line: 461, column: 9, scope: !729)
!841 = !DILocation(line: 462, column: 9, scope: !729, atomGroup: 38, atomRank: 1)
!842 = !DILocation(line: 466, column: 11, scope: !737)
!843 = !DILocation(line: 467, column: 40, scope: !737)
!844 = !DILocation(line: 467, column: 28, scope: !737, atomGroup: 39, atomRank: 2)
!845 = !DILocation(line: 469, column: 17, scope: !846, atomGroup: 40, atomRank: 1)
!846 = distinct !DILexicalBlock(scope: !737, file: !2, line: 469, column: 15)
!847 = !DILocation(line: 470, column: 43, scope: !846)
!848 = !DILocation(line: 470, column: 26, scope: !846, atomGroup: 42, atomRank: 1)
!849 = !DILocation(line: 470, column: 13, scope: !846)
!850 = !DILocation(line: 472, column: 37, scope: !851)
!851 = distinct !DILexicalBlock(scope: !846, file: !2, line: 471, column: 20)
!852 = !DILocation(line: 473, column: 27, scope: !851)
!853 = !DILocation(line: 473, column: 20, scope: !851)
!854 = !DILocation(line: 472, column: 13, scope: !851)
!855 = !DILocation(line: 474, column: 9, scope: !729)
!856 = !DILocation(line: 475, column: 9, scope: !729, atomGroup: 44, atomRank: 1)
!857 = !DILocation(line: 478, column: 13, scope: !858, atomGroup: 45, atomRank: 2)
!858 = distinct !DILexicalBlock(scope: !729, file: !2, line: 478, column: 13)
!859 = !DILocation(line: 480, column: 19, scope: !729, atomGroup: 47, atomRank: 2)
!860 = !DILocation(line: 478, column: 21, scope: !858, atomGroup: 45, atomRank: 1)
!861 = !DILocation(line: 0, scope: !568, inlinedAt: !862)
!862 = distinct !DILocation(line: 478, column: 25, scope: !858)
!863 = !DILocation(line: 1370, column: 11, scope: !568, inlinedAt: !862)
!864 = !DILocation(line: 1370, column: 10, scope: !568, inlinedAt: !862)
!865 = !DILocation(line: 478, column: 21, scope: !858, atomGroup: 46, atomRank: 1)
!866 = !DILocation(line: 479, column: 35, scope: !858)
!867 = !DILocation(line: 479, column: 11, scope: !858)
!868 = !DILocation(line: 484, column: 13, scope: !869, atomGroup: 49, atomRank: 2)
!869 = distinct !DILexicalBlock(scope: !729, file: !2, line: 484, column: 13)
!870 = !DILocation(line: 486, column: 25, scope: !729, atomGroup: 51, atomRank: 2)
!871 = !DILocation(line: 484, column: 27, scope: !869, atomGroup: 49, atomRank: 1)
!872 = distinct !{!872, !788, !873, !608}
!873 = !DILocation(line: 501, column: 7, scope: !687)
!874 = !DILocation(line: 0, scope: !568, inlinedAt: !875)
!875 = distinct !DILocation(line: 484, column: 31, scope: !869)
!876 = !DILocation(line: 1370, column: 11, scope: !568, inlinedAt: !875)
!877 = !DILocation(line: 1370, column: 10, scope: !568, inlinedAt: !875)
!878 = !DILocation(line: 484, column: 27, scope: !869, atomGroup: 50, atomRank: 1)
!879 = !DILocation(line: 485, column: 35, scope: !869)
!880 = !DILocation(line: 485, column: 11, scope: !869)
!881 = !DILocation(line: 491, column: 9, scope: !729, atomGroup: 54, atomRank: 1)
!882 = !DILocation(line: 495, column: 9, scope: !729, atomGroup: 56, atomRank: 1)
!883 = !DILocation(line: 497, column: 7, scope: !729)
!884 = !DILocation(line: 498, column: 7, scope: !729)
!885 = !DILocation(line: 498, column: 47, scope: !729)
!886 = !DILocation(line: 500, column: 9, scope: !729)
!887 = !DILocation(line: 503, column: 23, scope: !687)
!888 = !DILocation(line: 503, column: 21, scope: !687, atomGroup: 57, atomRank: 2)
!889 = !DILocation(line: 504, column: 18, scope: !687)
!890 = !DILocation(line: 504, column: 18, scope: !687, atomGroup: 58, atomRank: 2)
!891 = !DILocation(line: 507, column: 12, scope: !892, atomGroup: 59, atomRank: 1)
!892 = distinct !DILexicalBlock(scope: !687, file: !2, line: 507, column: 7)
!893 = !DILocation(line: 509, column: 20, scope: !894)
!894 = distinct !DILexicalBlock(scope: !892, file: !2, line: 508, column: 5)
!895 = !DILocation(line: 509, column: 7, scope: !894)
!896 = !DILocation(line: 510, column: 7, scope: !894)
!897 = !DILocation(line: 512, column: 7, scope: !898, atomGroup: 61, atomRank: 1)
!898 = distinct !DILexicalBlock(scope: !687, file: !2, line: 512, column: 7)
!899 = !DILocation(line: 512, column: 23, scope: !898, atomGroup: 62, atomRank: 2)
!900 = !DILocation(line: 512, column: 7, scope: !898, atomGroup: 62, atomRank: 1)
!901 = !DILocation(line: 512, column: 44, scope: !898, atomGroup: 63, atomRank: 1)
!902 = !DILocation(line: 514, column: 20, scope: !903)
!903 = distinct !DILexicalBlock(scope: !898, file: !2, line: 513, column: 5)
!904 = !DILocation(line: 514, column: 58, scope: !903)
!905 = !DILocation(line: 514, column: 50, scope: !903)
!906 = !DILocation(line: 514, column: 43, scope: !903)
!907 = !DILocation(line: 514, column: 7, scope: !903)
!908 = !DILocation(line: 515, column: 7, scope: !903)
!909 = !DILocation(line: 519, column: 18, scope: !910, atomGroup: 65, atomRank: 2)
!910 = distinct !DILexicalBlock(scope: !687, file: !2, line: 519, column: 7)
!911 = !DILocation(line: 519, column: 18, scope: !910, atomGroup: 65, atomRank: 1)
!912 = !DILocation(line: 524, column: 12, scope: !913, atomGroup: 68, atomRank: 1)
!913 = distinct !DILexicalBlock(scope: !910, file: !2, line: 524, column: 12)
!914 = !DILocalVariable(name: "operand", arg: 1, scope: !915, file: !2, line: 120, type: !690)
!915 = distinct !DISubprogram(name: "input_from_argv", scope: !2, file: !2, line: 120, type: !916, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !918, keyInstructions: true)
!916 = !DISubroutineType(types: !917)
!917 = !{null, !690, !185, !4}
!918 = !{!914, !919, !920, !921, !922, !923, !924}
!919 = !DILocalVariable(name: "n_operands", arg: 2, scope: !915, file: !2, line: 120, type: !185)
!920 = !DILocalVariable(name: "eolbyte", arg: 3, scope: !915, file: !2, line: 120, type: !4)
!921 = !DILocalVariable(name: "p", scope: !915, file: !2, line: 122, type: !231)
!922 = !DILocalVariable(name: "size", scope: !915, file: !2, line: 123, type: !234)
!923 = !DILocalVariable(name: "i", scope: !915, file: !2, line: 124, type: !185)
!924 = !DILocalVariable(name: "p1", scope: !925, file: !2, line: 132, type: !231)
!925 = distinct !DILexicalBlock(scope: !926, file: !2, line: 131, column: 5)
!926 = distinct !DILexicalBlock(scope: !927, file: !2, line: 130, column: 3)
!927 = distinct !DILexicalBlock(scope: !915, file: !2, line: 130, column: 3)
!928 = !DILocation(line: 0, scope: !915, inlinedAt: !929)
!929 = distinct !DILocation(line: 526, column: 7, scope: !930)
!930 = distinct !DILexicalBlock(scope: !913, file: !2, line: 525, column: 5)
!931 = !DILocation(line: 123, column: 17, scope: !915, inlinedAt: !929, atomGroup: 1, atomRank: 2)
!932 = !DILocation(line: 126, column: 17, scope: !933, inlinedAt: !929, atomGroup: 157, atomRank: 1)
!933 = distinct !DILexicalBlock(scope: !934, file: !2, line: 126, column: 3)
!934 = distinct !DILexicalBlock(scope: !915, file: !2, line: 126, column: 3)
!935 = !DILocation(line: 126, column: 3, scope: !934, inlinedAt: !929, atomGroup: 158, atomRank: 1)
!936 = !DILocation(line: 126, column: 17, scope: !933, inlinedAt: !929, atomGroup: 3, atomRank: 1)
!937 = !DILocation(line: 126, column: 3, scope: !934, inlinedAt: !929)
!938 = !DILocation(line: 127, column: 21, scope: !933, inlinedAt: !929)
!939 = !DILocation(line: 127, column: 13, scope: !933, inlinedAt: !929)
!940 = !DILocation(line: 127, column: 10, scope: !933, inlinedAt: !929, atomGroup: 5, atomRank: 2)
!941 = !DILocation(line: 126, column: 32, scope: !933, inlinedAt: !929, atomGroup: 6, atomRank: 2)
!942 = !DILocation(line: 126, column: 3, scope: !934, inlinedAt: !929, atomGroup: 4, atomRank: 1)
!943 = distinct !{!943, !937, !944, !608}
!944 = !DILocation(line: 127, column: 31, scope: !934, inlinedAt: !929)
!945 = !DILocation(line: 128, column: 7, scope: !915, inlinedAt: !929, atomGroup: 8, atomRank: 2)
!946 = !DILocation(line: 130, column: 3, scope: !927, inlinedAt: !929, atomGroup: 160, atomRank: 1)
!947 = !DILocation(line: 128, column: 7, scope: !915, inlinedAt: !929, atomGroup: 161, atomRank: 2)
!948 = !DILocation(line: 130, column: 3, scope: !927, inlinedAt: !929)
!949 = !DILocation(line: 132, column: 29, scope: !925, inlinedAt: !929)
!950 = !DILocalVariable(name: "__dest", arg: 1, scope: !951, file: !952, line: 84, type: !955)
!951 = distinct !DISubprogram(name: "stpcpy", scope: !952, file: !952, line: 84, type: !953, scopeLine: 85, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !956, keyInstructions: true)
!952 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!953 = !DISubroutineType(types: !954)
!954 = !{!231, !955, !542}
!955 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !231)
!956 = !{!950, !957}
!957 = !DILocalVariable(name: "__src", arg: 2, scope: !951, file: !952, line: 84, type: !542)
!958 = !DILocation(line: 0, scope: !951, inlinedAt: !959)
!959 = distinct !DILocation(line: 132, column: 18, scope: !925, inlinedAt: !929)
!960 = !DILocation(line: 86, column: 10, scope: !951, inlinedAt: !959, atomGroup: 1, atomRank: 2)
!961 = !DILocation(line: 0, scope: !925, inlinedAt: !929)
!962 = !DILocation(line: 133, column: 18, scope: !925, inlinedAt: !929, atomGroup: 13, atomRank: 1)
!963 = !DILocation(line: 135, column: 9, scope: !925, inlinedAt: !929, atomGroup: 16, atomRank: 2)
!964 = !DILocation(line: 135, column: 12, scope: !925, inlinedAt: !929, atomGroup: 15, atomRank: 1)
!965 = !DILocation(line: 130, column: 32, scope: !926, inlinedAt: !929, atomGroup: 17, atomRank: 2)
!966 = !DILocation(line: 130, column: 17, scope: !926, inlinedAt: !929, atomGroup: 10, atomRank: 1)
!967 = !DILocation(line: 130, column: 3, scope: !927, inlinedAt: !929, atomGroup: 11, atomRank: 1)
!968 = distinct !{!968, !948, !969, !608}
!969 = !DILocation(line: 136, column: 5, scope: !927, inlinedAt: !929)
!970 = !DILocation(line: 138, column: 3, scope: !915, inlinedAt: !929)
!971 = !DILocation(line: 138, column: 23, scope: !915, inlinedAt: !929, atomGroup: 19, atomRank: 1)
!972 = !DILocation(line: 529, column: 5, scope: !930)
!973 = !DILocation(line: 530, column: 12, scope: !974, atomGroup: 71, atomRank: 1)
!974 = distinct !DILexicalBlock(scope: !913, file: !2, line: 530, column: 12)
!975 = !DILocation(line: 538, column: 22, scope: !976, atomGroup: 73, atomRank: 2)
!976 = distinct !DILexicalBlock(scope: !977, file: !2, line: 538, column: 11)
!977 = distinct !DILexicalBlock(scope: !974, file: !2, line: 536, column: 5)
!978 = !DILocation(line: 539, column: 11, scope: !976, atomGroup: 73, atomRank: 1)
!979 = !DILocation(line: 539, column: 24, scope: !976)
!980 = !DILocation(line: 0, scope: !568, inlinedAt: !981)
!981 = distinct !DILocation(line: 539, column: 17, scope: !976)
!982 = !DILocation(line: 1370, column: 11, scope: !568, inlinedAt: !981)
!983 = !DILocation(line: 1370, column: 10, scope: !568, inlinedAt: !981)
!984 = !DILocation(line: 540, column: 17, scope: !976, atomGroup: 74, atomRank: 1)
!985 = !DILocation(line: 540, column: 46, scope: !976)
!986 = !DILocation(line: 540, column: 20, scope: !976)
!987 = !DILocation(line: 540, column: 20, scope: !976, atomGroup: 75, atomRank: 2)
!988 = !DILocation(line: 539, column: 11, scope: !976, atomGroup: 75, atomRank: 1)
!989 = !DILocation(line: 541, column: 30, scope: !976)
!990 = !DILocation(line: 541, column: 51, scope: !976)
!991 = !DILocation(line: 541, column: 43, scope: !976)
!992 = !DILocation(line: 541, column: 9, scope: !976)
!993 = !DILocation(line: 543, column: 16, scope: !977)
!994 = !DILocation(line: 543, column: 7, scope: !977)
!995 = !DILocation(line: 545, column: 11, scope: !996, atomGroup: 76, atomRank: 2)
!996 = distinct !DILexicalBlock(scope: !977, file: !2, line: 545, column: 11)
!997 = !DILocation(line: 545, column: 18, scope: !996, atomGroup: 76, atomRank: 1)
!998 = !DILocalVariable(name: "stat_buf", scope: !999, file: !2, line: 158, type: !1005)
!999 = distinct !DISubprogram(name: "input_size", scope: !2, file: !2, line: 154, type: !1000, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !1002, keyInstructions: true)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!238}
!1002 = !{!1003, !998, !1004}
!1003 = !DILocalVariable(name: "file_size", scope: !999, file: !2, line: 156, type: !238)
!1004 = !DILocalVariable(name: "input_offset", scope: !999, file: !2, line: 166, type: !238)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1006, line: 26, size: 1152, elements: !1007)
!1006 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1007 = !{!1008, !1010, !1012, !1014, !1016, !1018, !1020, !1021, !1022, !1023, !1025, !1027, !1035, !1036, !1037}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1005, file: !1006, line: 31, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !241, line: 145, baseType: !236)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1005, file: !1006, line: 36, baseType: !1011, size: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !241, line: 148, baseType: !236)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1005, file: !1006, line: 44, baseType: !1013, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !241, line: 151, baseType: !236)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1005, file: !1006, line: 45, baseType: !1015, size: 32, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !241, line: 150, baseType: !174)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1005, file: !1006, line: 47, baseType: !1017, size: 32, offset: 224)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !241, line: 146, baseType: !174)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1005, file: !1006, line: 48, baseType: !1019, size: 32, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !241, line: 147, baseType: !174)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1005, file: !1006, line: 50, baseType: !185, size: 32, offset: 288)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1005, file: !1006, line: 52, baseType: !1009, size: 64, offset: 320)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1005, file: !1006, line: 57, baseType: !240, size: 64, offset: 384)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1005, file: !1006, line: 61, baseType: !1024, size: 64, offset: 448)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !241, line: 175, baseType: !242)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1005, file: !1006, line: 63, baseType: !1026, size: 64, offset: 512)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !241, line: 180, baseType: !242)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1005, file: !1006, line: 74, baseType: !1028, size: 128, offset: 576)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1029, line: 11, size: 128, elements: !1030)
!1029 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1030 = !{!1031, !1033}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1028, file: !1029, line: 16, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !241, line: 160, baseType: !242)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1028, file: !1029, line: 21, baseType: !1034, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !241, line: 197, baseType: !242)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1005, file: !1006, line: 75, baseType: !1028, size: 128, offset: 704)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1005, file: !1006, line: 76, baseType: !1028, size: 128, offset: 832)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1005, file: !1006, line: 89, baseType: !1038, size: 192, offset: 960)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1034, size: 192, elements: !139)
!1039 = !DILocation(line: 0, scope: !999, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 546, column: 14, scope: !996)
!1041 = !DILocation(line: 158, column: 3, scope: !999, inlinedAt: !1040)
!1042 = !DILocation(line: 159, column: 7, scope: !1043, inlinedAt: !1040)
!1043 = distinct !DILexicalBlock(scope: !999, file: !2, line: 159, column: 7)
!1044 = !DILocation(line: 159, column: 39, scope: !1043, inlinedAt: !1040, atomGroup: 1, atomRank: 2)
!1045 = !DILocation(line: 159, column: 39, scope: !1043, inlinedAt: !1040, atomGroup: 1, atomRank: 1)
!1046 = !DILocalVariable(name: "sb", arg: 1, scope: !1047, file: !157, line: 918, type: !1050)
!1047 = distinct !DISubprogram(name: "usable_st_size", scope: !157, file: !157, line: 918, type: !1048, scopeLine: 919, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !1052, keyInstructions: true)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!383, !1050}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1005)
!1052 = !{!1046}
!1053 = !DILocation(line: 0, scope: !1047, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 161, column: 7, scope: !1055, inlinedAt: !1040)
!1055 = distinct !DILexicalBlock(scope: !999, file: !2, line: 161, column: 7)
!1056 = !DILocation(line: 920, column: 24, scope: !1047, inlinedAt: !1054)
!1057 = !{!1058, !457, i64 24}
!1058 = !{!"stat", !814, i64 0, !814, i64 8, !814, i64 16, !457, i64 24, !457, i64 28, !457, i64 32, !457, i64 36, !814, i64 40, !814, i64 48, !814, i64 56, !814, i64 64, !1059, i64 72, !1059, i64 88, !1059, i64 104, !458, i64 120}
!1059 = !{!"timespec", !814, i64 0, !814, i64 8}
!1060 = !DILocation(line: 920, column: 33, scope: !1047, inlinedAt: !1054, atomGroup: 2, atomRank: 1)
!1061 = !DILocation(line: 161, column: 7, scope: !1055, inlinedAt: !1040, atomGroup: 3, atomRank: 1)
!1062 = !DILocation(line: 162, column: 26, scope: !1055, inlinedAt: !1040)
!1063 = !DILocation(line: 162, column: 26, scope: !1055, inlinedAt: !1040, atomGroup: 4, atomRank: 2)
!1064 = !{!1058, !814, i64 48}
!1065 = !DILocation(line: 166, column: 24, scope: !999, inlinedAt: !1040, atomGroup: 6, atomRank: 2)
!1066 = !DILocation(line: 167, column: 20, scope: !1067, inlinedAt: !1040, atomGroup: 7, atomRank: 2)
!1067 = distinct !DILexicalBlock(scope: !999, file: !2, line: 167, column: 7)
!1068 = !DILocation(line: 173, column: 1, scope: !999, inlinedAt: !1040)
!1069 = !DILocation(line: 546, column: 11, scope: !996, atomGroup: 204, atomRank: 1)
!1070 = !DILocation(line: 167, column: 20, scope: !1067, inlinedAt: !1040, atomGroup: 7, atomRank: 1)
!1071 = !DILocation(line: 546, column: 28, scope: !996, atomGroup: 78, atomRank: 2)
!1072 = !DILocation(line: 546, column: 11, scope: !996, atomGroup: 78, atomRank: 1)
!1073 = !DILocation(line: 548, column: 33, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !996, file: !2, line: 547, column: 9)
!1075 = !DILocalVariable(name: "used", scope: !1076, file: !2, line: 265, type: !234)
!1076 = distinct !DISubprogram(name: "read_input", scope: !2, file: !2, line: 261, type: !1077, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !1080, keyInstructions: true)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!234, !396, !4, !1079}
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!1080 = !{!1081, !1082, !1083, !1084, !1085, !1075, !1086, !1087, !1088, !1089}
!1081 = !DILocalVariable(name: "in", arg: 1, scope: !1076, file: !2, line: 261, type: !396)
!1082 = !DILocalVariable(name: "eolbyte", arg: 2, scope: !1076, file: !2, line: 261, type: !4)
!1083 = !DILocalVariable(name: "pline", arg: 3, scope: !1076, file: !2, line: 261, type: !1079)
!1084 = !DILocalVariable(name: "p", scope: !1076, file: !2, line: 263, type: !231)
!1085 = !DILocalVariable(name: "buf", scope: !1076, file: !2, line: 264, type: !231)
!1086 = !DILocalVariable(name: "lim", scope: !1076, file: !2, line: 266, type: !231)
!1087 = !DILocalVariable(name: "line", scope: !1076, file: !2, line: 267, type: !690)
!1088 = !DILocalVariable(name: "n_lines", scope: !1076, file: !2, line: 268, type: !234)
!1089 = !DILocalVariable(name: "i", scope: !1090, file: !2, line: 294, type: !234)
!1090 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 294, column: 3)
!1091 = !DILocation(line: 0, scope: !1076, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 548, column: 21, scope: !1074)
!1093 = !DILocation(line: 265, column: 3, scope: !1076, inlinedAt: !1092)
!1094 = !DILocation(line: 279, column: 15, scope: !1095, inlinedAt: !1092, atomGroup: 2, atomRank: 2)
!1095 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 279, column: 7)
!1096 = !DILocation(line: 279, column: 13, scope: !1095, inlinedAt: !1092, atomGroup: 3, atomRank: 2)
!1097 = !DILocation(line: 279, column: 7, scope: !1095, inlinedAt: !1092, atomGroup: 3, atomRank: 1)
!1098 = !DILocation(line: 280, column: 26, scope: !1095, inlinedAt: !1092)
!1099 = !DILocation(line: 280, column: 33, scope: !1095, inlinedAt: !1092)
!1100 = !DILocation(line: 280, column: 5, scope: !1095, inlinedAt: !1092)
!1101 = !DILocation(line: 282, column: 7, scope: !1102, inlinedAt: !1092)
!1102 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 282, column: 7)
!1103 = !DILocation(line: 282, column: 7, scope: !1102, inlinedAt: !1092, atomGroup: 4, atomRank: 2)
!1104 = !DILocation(line: 282, column: 12, scope: !1102, inlinedAt: !1092, atomGroup: 4, atomRank: 1)
!1105 = !DILocation(line: 282, column: 15, scope: !1102, inlinedAt: !1092)
!1106 = !DILocation(line: 282, column: 29, scope: !1102, inlinedAt: !1092, atomGroup: 5, atomRank: 2)
!1107 = !DILocation(line: 282, column: 12, scope: !1102, inlinedAt: !1092, atomGroup: 5, atomRank: 1)
!1108 = !DILocation(line: 283, column: 13, scope: !1102, inlinedAt: !1092, atomGroup: 7, atomRank: 2)
!1109 = !DILocation(line: 283, column: 13, scope: !1102, inlinedAt: !1092, atomGroup: 7, atomRank: 1)
!1110 = distinct !DIAssignID()
!1111 = !DILocation(line: 283, column: 17, scope: !1102, inlinedAt: !1092, atomGroup: 6, atomRank: 1)
!1112 = !DILocation(line: 288, column: 19, scope: !1113, inlinedAt: !1092, atomGroup: 162, atomRank: 1)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 288, column: 3)
!1114 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 288, column: 3)
!1115 = !DILocation(line: 288, column: 3, scope: !1114, inlinedAt: !1092, atomGroup: 163, atomRank: 1)
!1116 = !DILocation(line: 285, column: 13, scope: !1076, inlinedAt: !1092, atomGroup: 8, atomRank: 2)
!1117 = !DILocation(line: 289, column: 12, scope: !1113, inlinedAt: !1092, atomGroup: 13, atomRank: 2)
!1118 = !DILocalVariable(name: "line", arg: 1, scope: !1119, file: !2, line: 145, type: !231)
!1119 = distinct !DISubprogram(name: "next_line", scope: !2, file: !2, line: 145, type: !1120, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !1122, keyInstructions: true)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!231, !231, !4}
!1122 = !{!1118, !1123, !1124}
!1123 = !DILocalVariable(name: "eolbyte", arg: 2, scope: !1119, file: !2, line: 145, type: !4)
!1124 = !DILocalVariable(name: "p", scope: !1119, file: !2, line: 147, type: !231)
!1125 = !DILocation(line: 0, scope: !1119, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 288, column: 30, scope: !1113, inlinedAt: !1092)
!1127 = !DILocation(line: 147, column: 13, scope: !1119, inlinedAt: !1126, atomGroup: 1, atomRank: 2)
!1128 = !DILocation(line: 148, column: 12, scope: !1119, inlinedAt: !1126, atomGroup: 3, atomRank: 2)
!1129 = !DILocation(line: 288, column: 19, scope: !1113, inlinedAt: !1092, atomGroup: 11, atomRank: 1)
!1130 = !DILocation(line: 288, column: 3, scope: !1114, inlinedAt: !1092, atomGroup: 12, atomRank: 1)
!1131 = distinct !{!1131, !1132, !1133, !608}
!1132 = !DILocation(line: 288, column: 3, scope: !1114, inlinedAt: !1092)
!1133 = !DILocation(line: 289, column: 12, scope: !1114, inlinedAt: !1092)
!1134 = !DILocation(line: 291, column: 37, scope: !1076, inlinedAt: !1092)
!1135 = !DILocation(line: 291, column: 19, scope: !1076, inlinedAt: !1092, atomGroup: 16, atomRank: 2)
!1136 = !DILocation(line: 293, column: 11, scope: !1076, inlinedAt: !1092, atomGroup: 18, atomRank: 1)
!1137 = !DILocation(line: 0, scope: !1090, inlinedAt: !1092)
!1138 = !DILocation(line: 294, column: 24, scope: !1139, inlinedAt: !1092, atomGroup: 164, atomRank: 1)
!1139 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 294, column: 3)
!1140 = !DILocation(line: 294, column: 3, scope: !1090, inlinedAt: !1092, atomGroup: 165, atomRank: 1)
!1141 = !DILocation(line: 0, scope: !1119, inlinedAt: !1142)
!1142 = distinct !DILocation(line: 295, column: 19, scope: !1139, inlinedAt: !1092)
!1143 = !DILocation(line: 147, column: 13, scope: !1119, inlinedAt: !1142, atomGroup: 1, atomRank: 2)
!1144 = !DILocation(line: 148, column: 12, scope: !1119, inlinedAt: !1142, atomGroup: 3, atomRank: 2)
!1145 = !DILocation(line: 295, column: 5, scope: !1139, inlinedAt: !1092)
!1146 = !DILocation(line: 295, column: 13, scope: !1139, inlinedAt: !1092, atomGroup: 23, atomRank: 1)
!1147 = !DILocation(line: 294, column: 37, scope: !1139, inlinedAt: !1092, atomGroup: 25, atomRank: 2)
!1148 = !DILocation(line: 294, column: 24, scope: !1139, inlinedAt: !1092, atomGroup: 21, atomRank: 1)
!1149 = !DILocation(line: 294, column: 3, scope: !1090, inlinedAt: !1092, atomGroup: 22, atomRank: 1)
!1150 = distinct !{!1150, !1151, !1152, !608}
!1151 = !DILocation(line: 294, column: 3, scope: !1090, inlinedAt: !1092)
!1152 = !DILocation(line: 295, column: 40, scope: !1090, inlinedAt: !1092)
!1153 = !DILocation(line: 298, column: 1, scope: !1076, inlinedAt: !1092)
!1154 = !DILocation(line: 550, column: 9, scope: !1074)
!1155 = !DILocation(line: 560, column: 23, scope: !687, atomGroup: 84, atomRank: 2)
!1156 = !DILocation(line: 560, column: 30, scope: !687, atomGroup: 84, atomRank: 1)
!1157 = !DILocation(line: 563, column: 61, scope: !687, atomGroup: 87, atomRank: 1)
!1158 = !DILocation(line: 565, column: 40, scope: !687)
!1159 = !DILocation(line: 563, column: 38, scope: !687)
!1160 = !DILocation(line: 562, column: 20, scope: !687, atomGroup: 86, atomRank: 2)
!1161 = !DILocation(line: 566, column: 9, scope: !1162, atomGroup: 89, atomRank: 2)
!1162 = distinct !DILexicalBlock(scope: !687, file: !2, line: 566, column: 7)
!1163 = !DILocation(line: 566, column: 7, scope: !1162, atomGroup: 89, atomRank: 1)
!1164 = !DILocation(line: 562, column: 20, scope: !687, atomGroup: 207, atomRank: 2)
!1165 = !DILocation(line: 566, column: 9, scope: !1162, atomGroup: 208, atomRank: 2)
!1166 = !DILocation(line: 566, column: 7, scope: !1162, atomGroup: 208, atomRank: 1)
!1167 = !DILocation(line: 567, column: 26, scope: !1162)
!1168 = !DILocation(line: 568, column: 20, scope: !1162, atomGroup: 90, atomRank: 2)
!1169 = !DILocation(line: 568, column: 20, scope: !1162, atomGroup: 90, atomRank: 1)
!1170 = !DILocation(line: 568, column: 12, scope: !1162)
!1171 = !DILocation(line: 567, column: 5, scope: !1162)
!1172 = !DILocation(line: 574, column: 48, scope: !771)
!1173 = !DILocation(line: 0, scope: !765, inlinedAt: !770)
!1174 = !DILocation(line: 184, column: 3, scope: !744, inlinedAt: !770)
!1175 = !DILocation(line: 184, column: 9, scope: !744, inlinedAt: !770, atomGroup: 2, atomRank: 1)
!1176 = distinct !DIAssignID()
!1177 = !DILocation(line: 189, column: 3, scope: !763, inlinedAt: !770, atomGroup: 173, atomRank: 1)
!1178 = !DILocation(line: 192, column: 22, scope: !760, inlinedAt: !770)
!1179 = !DILocation(line: 192, column: 19, scope: !760, inlinedAt: !770, atomGroup: 8, atomRank: 2)
!1180 = !DILocation(line: 192, column: 19, scope: !760, inlinedAt: !770, atomGroup: 8, atomRank: 1)
!1181 = !DILocation(line: 0, scope: !759, inlinedAt: !770)
!1182 = !DILocation(line: 195, column: 18, scope: !759, inlinedAt: !770, atomGroup: 10, atomRank: 2)
!1183 = !DILocation(line: 196, column: 20, scope: !759, inlinedAt: !770)
!1184 = !DILocation(line: 196, column: 39, scope: !759, inlinedAt: !770)
!1185 = !DILocation(line: 196, column: 53, scope: !759, inlinedAt: !770)
!1186 = !DILocation(line: 196, column: 60, scope: !759, inlinedAt: !770)
!1187 = !DILocalVariable(name: "__dest", arg: 1, scope: !1188, file: !952, line: 57, type: !232)
!1188 = distinct !DISubprogram(name: "memset", scope: !952, file: !952, line: 57, type: !1189, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !1191, keyInstructions: true)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!232, !232, !185, !234}
!1191 = !{!1187, !1192, !1193}
!1192 = !DILocalVariable(name: "__ch", arg: 2, scope: !1188, file: !952, line: 57, type: !185)
!1193 = !DILocalVariable(name: "__len", arg: 3, scope: !1188, file: !952, line: 57, type: !234)
!1194 = !DILocation(line: 0, scope: !1188, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 196, column: 11, scope: !759, inlinedAt: !770)
!1196 = !DILocation(line: 59, column: 10, scope: !1188, inlinedAt: !1195, atomGroup: 1, atomRank: 2)
!1197 = !DILocation(line: 197, column: 9, scope: !759, inlinedAt: !770)
!1198 = !DILocation(line: 199, column: 37, scope: !761, inlinedAt: !770)
!1199 = !DILocation(line: 199, column: 14, scope: !761, inlinedAt: !770, atomGroup: 11, atomRank: 2)
!1200 = !DILocation(line: 200, column: 12, scope: !1201, inlinedAt: !770, atomGroup: 12, atomRank: 2)
!1201 = distinct !DILexicalBlock(scope: !761, file: !2, line: 200, column: 11)
!1202 = !DILocation(line: 200, column: 11, scope: !1201, inlinedAt: !770, atomGroup: 12, atomRank: 1)
!1203 = !DILocation(line: 189, column: 41, scope: !762, inlinedAt: !770, atomGroup: 14, atomRank: 2)
!1204 = !DILocation(line: 189, column: 29, scope: !762, inlinedAt: !770, atomGroup: 6, atomRank: 1)
!1205 = !DILocation(line: 189, column: 3, scope: !763, inlinedAt: !770, atomGroup: 7, atomRank: 1)
!1206 = distinct !{!1206, !1207, !1208, !608}
!1207 = !DILocation(line: 189, column: 3, scope: !763, inlinedAt: !770)
!1208 = !DILocation(line: 202, column: 5, scope: !763, inlinedAt: !770)
!1209 = !DILocation(line: 207, column: 7, scope: !765, inlinedAt: !770)
!1210 = !DILocation(line: 208, column: 7, scope: !765, inlinedAt: !770)
!1211 = !DILocation(line: 219, column: 7, scope: !765, inlinedAt: !770)
!1212 = !DILocalVariable(name: "s", arg: 1, scope: !1213, file: !723, line: 50, type: !721)
!1213 = distinct !DISubprogram(name: "randint_choose", scope: !723, file: !723, line: 50, type: !1214, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !1216, keyInstructions: true)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!755, !721, !755}
!1216 = !{!1212, !1217}
!1217 = !DILocalVariable(name: "choices", arg: 2, scope: !1213, file: !723, line: 50, type: !755)
!1218 = !DILocation(line: 0, scope: !1213, inlinedAt: !1219)
!1219 = distinct !DILocation(line: 221, column: 23, scope: !768, inlinedAt: !770)
!1220 = !DILocation(line: 52, column: 10, scope: !1213, inlinedAt: !1219, atomGroup: 1, atomRank: 2)
!1221 = !DILocation(line: 0, scope: !768, inlinedAt: !770)
!1222 = !DILocation(line: 222, column: 21, scope: !768, inlinedAt: !770, atomGroup: 19, atomRank: 2)
!1223 = !DILocation(line: 222, column: 18, scope: !768, inlinedAt: !770, atomGroup: 19, atomRank: 1)
!1224 = !DILocation(line: 224, column: 14, scope: !765, inlinedAt: !770)
!1225 = !DILocation(line: 224, column: 55, scope: !765, inlinedAt: !770, atomGroup: 20, atomRank: 2)
!1226 = !DILocation(line: 224, column: 63, scope: !765, inlinedAt: !770, atomGroup: 20, atomRank: 1)
!1227 = !DILocation(line: 221, column: 50, scope: !768, inlinedAt: !770)
!1228 = !DILocation(line: 224, column: 63, scope: !765, inlinedAt: !770)
!1229 = !DILocation(line: 223, column: 9, scope: !768, inlinedAt: !770, atomGroup: 22, atomRank: 1)
!1230 = distinct !{!1230, !1211, !1231, !608}
!1231 = !DILocation(line: 224, column: 75, scope: !765, inlinedAt: !770)
!1232 = !DILocation(line: 226, column: 13, scope: !1233, inlinedAt: !770, atomGroup: 23, atomRank: 2)
!1233 = distinct !DILexicalBlock(scope: !765, file: !2, line: 226, column: 11)
!1234 = !DILocation(line: 226, column: 11, scope: !1233, inlinedAt: !770, atomGroup: 23, atomRank: 1)
!1235 = !DILocation(line: 227, column: 41, scope: !1233, inlinedAt: !770)
!1236 = !DILocation(line: 227, column: 9, scope: !1233, inlinedAt: !770)
!1237 = !DILocation(line: 229, column: 7, scope: !765, inlinedAt: !770)
!1238 = !DILocation(line: 230, column: 5, scope: !766, inlinedAt: !770)
!1239 = !DILocation(line: 230, column: 5, scope: !765, inlinedAt: !770)
!1240 = !DILocalVariable(name: "__stream", arg: 1, scope: !1241, file: !1242, line: 135, type: !396)
!1241 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1242, file: !1242, line: 135, type: !1243, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !1245, keyInstructions: true)
!1242 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!185, !396}
!1245 = !{!1240}
!1246 = !DILocation(line: 0, scope: !1241, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 233, column: 7, scope: !1248, inlinedAt: !770)
!1248 = distinct !DILexicalBlock(scope: !744, file: !2, line: 233, column: 7)
!1249 = !DILocation(line: 137, column: 10, scope: !1241, inlinedAt: !1247)
!1250 = !{!1251, !457, i64 0}
!1251 = !{!"_IO_FILE", !457, i64 0, !475, i64 8, !475, i64 16, !475, i64 24, !475, i64 32, !475, i64 40, !475, i64 48, !475, i64 56, !475, i64 64, !475, i64 72, !475, i64 80, !475, i64 88, !1252, i64 96, !472, i64 104, !457, i64 112, !457, i64 116, !814, i64 120, !600, i64 128, !458, i64 130, !458, i64 131, !473, i64 136, !814, i64 144, !1253, i64 152, !1254, i64 160, !472, i64 168, !473, i64 176, !814, i64 184, !457, i64 192, !458, i64 196}
!1252 = !{!"p1 _ZTS10_IO_marker", !473, i64 0}
!1253 = !{!"p1 _ZTS11_IO_codecvt", !473, i64 0}
!1254 = !{!"p1 _ZTS13_IO_wide_data", !473, i64 0}
!1255 = !DILocation(line: 233, column: 7, scope: !1248, inlinedAt: !770, atomGroup: 24, atomRank: 2)
!1256 = !DILocation(line: 233, column: 7, scope: !1248, inlinedAt: !770, atomGroup: 24, atomRank: 1)
!1257 = !DILocation(line: 234, column: 26, scope: !1248, inlinedAt: !770)
!1258 = !DILocation(line: 234, column: 33, scope: !1248, inlinedAt: !770)
!1259 = !DILocation(line: 234, column: 5, scope: !1248, inlinedAt: !770)
!1260 = !DILocation(line: 237, column: 10, scope: !744, inlinedAt: !770, atomGroup: 27, atomRank: 1)
!1261 = !DILocation(line: 238, column: 1, scope: !744, inlinedAt: !770)
!1262 = !DILocation(line: 577, column: 5, scope: !771)
!1263 = !DILocation(line: 582, column: 26, scope: !1264, atomGroup: 94, atomRank: 1)
!1264 = distinct !DILexicalBlock(scope: !687, file: !2, line: 582, column: 7)
!1265 = !DILocation(line: 582, column: 60, scope: !1264)
!1266 = !DILocation(line: 582, column: 52, scope: !1264)
!1267 = !DILocation(line: 582, column: 67, scope: !1264, atomGroup: 97, atomRank: 2)
!1268 = !DILocation(line: 582, column: 7, scope: !1264, atomGroup: 97, atomRank: 1)
!1269 = !DILocation(line: 583, column: 26, scope: !1264)
!1270 = !DILocation(line: 583, column: 33, scope: !1264)
!1271 = !DILocation(line: 583, column: 5, scope: !1264)
!1272 = !DILocation(line: 585, column: 7, scope: !1273, atomGroup: 98, atomRank: 1)
!1273 = distinct !DILexicalBlock(scope: !687, file: !2, line: 585, column: 7)
!1274 = !DILocation(line: 586, column: 19, scope: !1273, atomGroup: 99, atomRank: 2)
!1275 = !DILocation(line: 586, column: 5, scope: !1273)
!1276 = !DILocation(line: 588, column: 7, scope: !1277, atomGroup: 100, atomRank: 2)
!1277 = distinct !DILexicalBlock(scope: !687, file: !2, line: 588, column: 7)
!1278 = !DILocation(line: 588, column: 15, scope: !1277, atomGroup: 100, atomRank: 1)
!1279 = !DILocation(line: 588, column: 43, scope: !1277)
!1280 = !DILocation(line: 588, column: 20, scope: !1277)
!1281 = !DILocation(line: 588, column: 20, scope: !1277, atomGroup: 101, atomRank: 2)
!1282 = !DILocation(line: 588, column: 15, scope: !1277, atomGroup: 101, atomRank: 1)
!1283 = !DILocation(line: 589, column: 26, scope: !1277)
!1284 = !DILocation(line: 589, column: 39, scope: !1277)
!1285 = !DILocation(line: 589, column: 5, scope: !1277)
!1286 = !DILocation(line: 592, column: 7, scope: !1287, atomGroup: 102, atomRank: 1)
!1287 = distinct !DILexicalBlock(scope: !687, file: !2, line: 592, column: 7)
!1288 = !DILocation(line: 594, column: 22, scope: !1289, atomGroup: 103, atomRank: 1)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 594, column: 11)
!1290 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 593, column: 5)
!1291 = !DILocation(line: 598, column: 23, scope: !1292, atomGroup: 105, atomRank: 2)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !2, line: 598, column: 15)
!1293 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 597, column: 9)
!1294 = !DILocation(line: 598, column: 23, scope: !1292, atomGroup: 105, atomRank: 1)
!1295 = !DILocation(line: 599, column: 37, scope: !1292)
!1296 = !DILocation(line: 599, column: 13, scope: !1292)
!1297 = !DILocation(line: 600, column: 15, scope: !1298, atomGroup: 106, atomRank: 1)
!1298 = distinct !DILexicalBlock(scope: !1293, file: !2, line: 600, column: 15)
!1299 = !DILocalVariable(name: "s", arg: 1, scope: !1300, file: !2, line: 353, type: !721)
!1300 = distinct !DISubprogram(name: "write_random_numbers", scope: !2, file: !2, line: 353, type: !1301, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !1303, keyInstructions: true)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!185, !721, !234, !234, !234, !4}
!1303 = !{!1299, !1304, !1305, !1306, !1307, !1308, !1310, !1312}
!1304 = !DILocalVariable(name: "count", arg: 2, scope: !1300, file: !2, line: 353, type: !234)
!1305 = !DILocalVariable(name: "lo_input", arg: 3, scope: !1300, file: !2, line: 354, type: !234)
!1306 = !DILocalVariable(name: "hi_input", arg: 4, scope: !1300, file: !2, line: 354, type: !234)
!1307 = !DILocalVariable(name: "eolbyte", arg: 5, scope: !1300, file: !2, line: 354, type: !4)
!1308 = !DILocalVariable(name: "range", scope: !1300, file: !2, line: 356, type: !1309)
!1309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!1310 = !DILocalVariable(name: "i", scope: !1311, file: !2, line: 358, type: !234)
!1311 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 358, column: 3)
!1312 = !DILocalVariable(name: "j", scope: !1313, file: !2, line: 360, type: !236)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !2, line: 359, column: 5)
!1314 = distinct !DILexicalBlock(scope: !1311, file: !2, line: 358, column: 3)
!1315 = !DILocation(line: 0, scope: !1300, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 601, column: 17, scope: !1298)
!1317 = !DILocation(line: 356, column: 34, scope: !1300, inlinedAt: !1316)
!1318 = !DILocation(line: 0, scope: !1311, inlinedAt: !1316)
!1319 = !DILocation(line: 358, column: 24, scope: !1314, inlinedAt: !1316, atomGroup: 179, atomRank: 1)
!1320 = !DILocation(line: 358, column: 3, scope: !1311, inlinedAt: !1316, atomGroup: 180, atomRank: 1)
!1321 = !DILocation(line: 358, column: 34, scope: !1314, inlinedAt: !1316, atomGroup: 8, atomRank: 2)
!1322 = !DILocation(line: 358, column: 24, scope: !1314, inlinedAt: !1316, atomGroup: 3, atomRank: 1)
!1323 = !DILocation(line: 358, column: 3, scope: !1311, inlinedAt: !1316, atomGroup: 4, atomRank: 1)
!1324 = distinct !{!1324, !1325, !1326, !608}
!1325 = !DILocation(line: 358, column: 3, scope: !1311, inlinedAt: !1316)
!1326 = !DILocation(line: 363, column: 5, scope: !1311, inlinedAt: !1316)
!1327 = !DILocation(line: 0, scope: !1213, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 360, column: 40, scope: !1313, inlinedAt: !1316)
!1329 = !DILocation(line: 52, column: 10, scope: !1213, inlinedAt: !1328, atomGroup: 1, atomRank: 2)
!1330 = !DILocation(line: 360, column: 38, scope: !1313, inlinedAt: !1316, atomGroup: 5, atomRank: 2)
!1331 = !DILocation(line: 0, scope: !1313, inlinedAt: !1316)
!1332 = !DILocalVariable(name: "buf", scope: !1333, file: !2, line: 324, type: !371)
!1333 = distinct !DISubprogram(name: "print_number", scope: !2, file: !2, line: 322, type: !1334, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !1336, keyInstructions: true)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!383, !236, !4}
!1336 = !{!1337, !1338, !1332, !1339, !1340, !1341, !1343, !1344}
!1337 = !DILocalVariable(name: "number", arg: 1, scope: !1333, file: !2, line: 322, type: !236)
!1338 = !DILocalVariable(name: "eolbyte", arg: 2, scope: !1333, file: !2, line: 322, type: !4)
!1339 = !DILocalVariable(name: "p", scope: !1333, file: !2, line: 325, type: !231)
!1340 = !DILocalVariable(name: "len", scope: !1333, file: !2, line: 330, type: !699)
!1341 = !DILocalVariable(name: "__ptr", scope: !1342, file: !2, line: 331, type: !168)
!1342 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 331, column: 10)
!1343 = !DILocalVariable(name: "__stream", scope: !1342, file: !2, line: 331, type: !396)
!1344 = !DILocalVariable(name: "__cnt", scope: !1342, file: !2, line: 331, type: !234)
!1345 = !DILocation(line: 0, scope: !1333, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 361, column: 13, scope: !1347, inlinedAt: !1316)
!1347 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 361, column: 11)
!1348 = !DILocation(line: 324, column: 3, scope: !1333, inlinedAt: !1346)
!1349 = !DILocation(line: 326, column: 6, scope: !1333, inlinedAt: !1346, atomGroup: 2, atomRank: 1)
!1350 = !DILocation(line: 327, column: 3, scope: !1333, inlinedAt: !1346)
!1351 = !DILocation(line: 328, column: 25, scope: !1333, inlinedAt: !1346)
!1352 = !DILocation(line: 328, column: 12, scope: !1333, inlinedAt: !1346, atomGroup: 3, atomRank: 2)
!1353 = !DILocation(line: 328, column: 6, scope: !1333, inlinedAt: !1346, atomGroup: 4, atomRank: 2)
!1354 = !DILocation(line: 328, column: 10, scope: !1333, inlinedAt: !1346, atomGroup: 3, atomRank: 1)
!1355 = !DILocation(line: 329, column: 18, scope: !1333, inlinedAt: !1346, atomGroup: 5, atomRank: 2)
!1356 = !DILocation(line: 329, column: 25, scope: !1333, inlinedAt: !1346, atomGroup: 6, atomRank: 1)
!1357 = !DILocation(line: 328, column: 5, scope: !1333, inlinedAt: !1346, atomGroup: 7, atomRank: 1)
!1358 = distinct !{!1358, !1350, !1359, !608}
!1359 = !DILocation(line: 329, column: 29, scope: !1333, inlinedAt: !1346)
!1360 = !DILocation(line: 330, column: 32, scope: !1333, inlinedAt: !1346)
!1361 = !DILocation(line: 330, column: 32, scope: !1333, inlinedAt: !1346, atomGroup: 8, atomRank: 2)
!1362 = !DILocation(line: 331, column: 29, scope: !1333, inlinedAt: !1346, atomGroup: 13, atomRank: 2)
!1363 = !DILocation(line: 331, column: 10, scope: !1333, inlinedAt: !1346)
!1364 = !DILocation(line: 331, column: 37, scope: !1333, inlinedAt: !1346, atomGroup: 24, atomRank: 2)
!1365 = !DILocation(line: 332, column: 1, scope: !1333, inlinedAt: !1346)
!1366 = !DILocalVariable(name: "s", arg: 1, scope: !1367, file: !2, line: 372, type: !721)
!1367 = distinct !DISubprogram(name: "write_random_lines", scope: !2, file: !2, line: 372, type: !1368, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !1372, keyInstructions: true)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!185, !721, !234, !1370, !234}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!1372 = !{!1366, !1373, !1374, !1375, !1376, !1378, !1381, !1382, !1383, !1386, !1387}
!1373 = !DILocalVariable(name: "count", arg: 2, scope: !1367, file: !2, line: 372, type: !234)
!1374 = !DILocalVariable(name: "lines", arg: 3, scope: !1367, file: !2, line: 373, type: !1370)
!1375 = !DILocalVariable(name: "n_lines", arg: 4, scope: !1367, file: !2, line: 373, type: !234)
!1376 = !DILocalVariable(name: "i", scope: !1377, file: !2, line: 375, type: !234)
!1377 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 375, column: 3)
!1378 = !DILocalVariable(name: "j", scope: !1379, file: !2, line: 377, type: !1309)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 376, column: 5)
!1380 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 375, column: 3)
!1381 = !DILocalVariable(name: "p", scope: !1379, file: !2, line: 378, type: !1370)
!1382 = !DILocalVariable(name: "len", scope: !1379, file: !2, line: 379, type: !234)
!1383 = !DILocalVariable(name: "__ptr", scope: !1384, file: !2, line: 380, type: !168)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !2, line: 380, column: 11)
!1385 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 380, column: 11)
!1386 = !DILocalVariable(name: "__stream", scope: !1384, file: !2, line: 380, type: !396)
!1387 = !DILocalVariable(name: "__cnt", scope: !1384, file: !2, line: 380, type: !234)
!1388 = !DILocation(line: 0, scope: !1367, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 604, column: 17, scope: !1298)
!1390 = !DILocation(line: 0, scope: !1377, inlinedAt: !1389)
!1391 = !DILocation(line: 375, column: 24, scope: !1380, inlinedAt: !1389, atomGroup: 185, atomRank: 1)
!1392 = !DILocation(line: 375, column: 3, scope: !1377, inlinedAt: !1389, atomGroup: 186, atomRank: 1)
!1393 = !DILocation(line: 375, column: 34, scope: !1380, inlinedAt: !1389, atomGroup: 23, atomRank: 2)
!1394 = !DILocation(line: 375, column: 24, scope: !1380, inlinedAt: !1389, atomGroup: 2, atomRank: 1)
!1395 = !DILocation(line: 375, column: 3, scope: !1377, inlinedAt: !1389, atomGroup: 3, atomRank: 1)
!1396 = distinct !{!1396, !1397, !1398, !608}
!1397 = !DILocation(line: 375, column: 3, scope: !1377, inlinedAt: !1389)
!1398 = !DILocation(line: 382, column: 5, scope: !1377, inlinedAt: !1389)
!1399 = !DILocation(line: 0, scope: !1213, inlinedAt: !1400)
!1400 = distinct !DILocation(line: 377, column: 25, scope: !1379, inlinedAt: !1389)
!1401 = !DILocation(line: 52, column: 10, scope: !1213, inlinedAt: !1400, atomGroup: 1, atomRank: 2)
!1402 = !DILocation(line: 0, scope: !1379, inlinedAt: !1389)
!1403 = !DILocation(line: 378, column: 30, scope: !1379, inlinedAt: !1389, atomGroup: 5, atomRank: 2)
!1404 = !DILocation(line: 379, column: 20, scope: !1379, inlinedAt: !1389)
!1405 = !DILocation(line: 379, column: 27, scope: !1379, inlinedAt: !1389)
!1406 = !DILocation(line: 379, column: 25, scope: !1379, inlinedAt: !1389)
!1407 = !DILocation(line: 379, column: 25, scope: !1379, inlinedAt: !1389, atomGroup: 6, atomRank: 2)
!1408 = !DILocation(line: 380, column: 44, scope: !1385, inlinedAt: !1389)
!1409 = !DILocation(line: 380, column: 11, scope: !1385, inlinedAt: !1389)
!1410 = !DILocation(line: 380, column: 52, scope: !1385, inlinedAt: !1389, atomGroup: 21, atomRank: 2)
!1411 = !DILocation(line: 609, column: 11, scope: !1412, atomGroup: 109, atomRank: 1)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !2, line: 609, column: 11)
!1413 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 608, column: 5)
!1414 = !DILocalVariable(name: "n_lines", arg: 1, scope: !1415, file: !2, line: 241, type: !234)
!1415 = distinct !DISubprogram(name: "write_permuted_output_reservoir", scope: !2, file: !2, line: 241, type: !1416, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !1420, keyInstructions: true)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!185, !234, !713, !1418}
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!1420 = !{!1414, !1421, !1422, !1423, !1425, !1430, !1433, !1434}
!1421 = !DILocalVariable(name: "lines", arg: 2, scope: !1415, file: !2, line: 241, type: !713)
!1422 = !DILocalVariable(name: "permutation", arg: 3, scope: !1415, file: !2, line: 242, type: !1418)
!1423 = !DILocalVariable(name: "i", scope: !1424, file: !2, line: 244, type: !234)
!1424 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 244, column: 3)
!1425 = !DILocalVariable(name: "p", scope: !1426, file: !2, line: 246, type: !1428)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !2, line: 245, column: 5)
!1427 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 244, column: 3)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !714)
!1430 = !DILocalVariable(name: "__ptr", scope: !1431, file: !2, line: 247, type: !168)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 247, column: 11)
!1432 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 247, column: 11)
!1433 = !DILocalVariable(name: "__stream", scope: !1431, file: !2, line: 247, type: !396)
!1434 = !DILocalVariable(name: "__cnt", scope: !1431, file: !2, line: 247, type: !234)
!1435 = !DILocation(line: 0, scope: !1415, inlinedAt: !1436)
!1436 = distinct !DILocation(line: 610, column: 13, scope: !1412)
!1437 = !DILocation(line: 0, scope: !1424, inlinedAt: !1436)
!1438 = !DILocation(line: 244, column: 24, scope: !1427, inlinedAt: !1436, atomGroup: 191, atomRank: 1)
!1439 = !DILocation(line: 244, column: 3, scope: !1424, inlinedAt: !1436, atomGroup: 192, atomRank: 1)
!1440 = !DILocation(line: 244, column: 36, scope: !1427, inlinedAt: !1436, atomGroup: 21, atomRank: 2)
!1441 = !DILocation(line: 244, column: 24, scope: !1427, inlinedAt: !1436, atomGroup: 2, atomRank: 1)
!1442 = !DILocation(line: 244, column: 3, scope: !1424, inlinedAt: !1436, atomGroup: 3, atomRank: 1)
!1443 = distinct !{!1443, !1444, !1445, !608}
!1444 = !DILocation(line: 244, column: 3, scope: !1424, inlinedAt: !1436)
!1445 = !DILocation(line: 249, column: 5, scope: !1424, inlinedAt: !1436)
!1446 = !DILocation(line: 246, column: 43, scope: !1426, inlinedAt: !1436)
!1447 = !DILocation(line: 246, column: 37, scope: !1426, inlinedAt: !1436, atomGroup: 4, atomRank: 2)
!1448 = !DILocation(line: 0, scope: !1426, inlinedAt: !1436)
!1449 = !DILocation(line: 247, column: 48, scope: !1432, inlinedAt: !1436)
!1450 = !{!1451, !814, i64 8}
!1451 = !{!"linebuffer", !814, i64 0, !814, i64 8, !475, i64 16}
!1452 = !DILocation(line: 247, column: 22, scope: !1432, inlinedAt: !1436)
!1453 = !{!1451, !475, i64 16}
!1454 = !DILocation(line: 247, column: 56, scope: !1432, inlinedAt: !1436)
!1455 = !DILocation(line: 247, column: 11, scope: !1432, inlinedAt: !1436)
!1456 = !DILocation(line: 247, column: 70, scope: !1432, inlinedAt: !1436)
!1457 = !DILocation(line: 247, column: 64, scope: !1432, inlinedAt: !1436, atomGroup: 19, atomRank: 2)
!1458 = !DILocation(line: 0, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 611, column: 16)
!1460 = !DILocation(line: 611, column: 16, scope: !1459, atomGroup: 111, atomRank: 1)
!1461 = !DILocalVariable(name: "n_lines", arg: 1, scope: !1462, file: !2, line: 337, type: !234)
!1462 = distinct !DISubprogram(name: "write_permuted_numbers", scope: !2, file: !2, line: 337, type: !1463, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !1465, keyInstructions: true)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!185, !234, !234, !1418, !4}
!1465 = !{!1461, !1466, !1467, !1468, !1469, !1471}
!1466 = !DILocalVariable(name: "lo_input", arg: 2, scope: !1462, file: !2, line: 337, type: !234)
!1467 = !DILocalVariable(name: "permutation", arg: 3, scope: !1462, file: !2, line: 338, type: !1418)
!1468 = !DILocalVariable(name: "eolbyte", arg: 4, scope: !1462, file: !2, line: 338, type: !4)
!1469 = !DILocalVariable(name: "i", scope: !1470, file: !2, line: 340, type: !234)
!1470 = distinct !DILexicalBlock(scope: !1462, file: !2, line: 340, column: 3)
!1471 = !DILocalVariable(name: "n", scope: !1472, file: !2, line: 342, type: !236)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !2, line: 341, column: 5)
!1473 = distinct !DILexicalBlock(scope: !1470, file: !2, line: 340, column: 3)
!1474 = !DILocation(line: 0, scope: !1462, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 612, column: 13, scope: !1459)
!1476 = !DILocation(line: 0, scope: !1470, inlinedAt: !1475)
!1477 = !DILocation(line: 340, column: 3, scope: !1470, inlinedAt: !1475, atomGroup: 195, atomRank: 1)
!1478 = !DILocation(line: 340, column: 36, scope: !1473, inlinedAt: !1475, atomGroup: 7, atomRank: 2)
!1479 = !DILocation(line: 340, column: 24, scope: !1473, inlinedAt: !1475, atomGroup: 2, atomRank: 1)
!1480 = !DILocation(line: 340, column: 3, scope: !1470, inlinedAt: !1475, atomGroup: 3, atomRank: 1)
!1481 = distinct !{!1481, !1482, !1483, !608}
!1482 = !DILocation(line: 340, column: 3, scope: !1470, inlinedAt: !1475)
!1483 = !DILocation(line: 345, column: 5, scope: !1470, inlinedAt: !1475)
!1484 = !DILocation(line: 342, column: 40, scope: !1472, inlinedAt: !1475)
!1485 = !DILocation(line: 342, column: 38, scope: !1472, inlinedAt: !1475, atomGroup: 4, atomRank: 2)
!1486 = !DILocation(line: 0, scope: !1472, inlinedAt: !1475)
!1487 = !DILocation(line: 0, scope: !1333, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 343, column: 13, scope: !1489, inlinedAt: !1475)
!1489 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 343, column: 11)
!1490 = !DILocation(line: 324, column: 3, scope: !1333, inlinedAt: !1488)
!1491 = !DILocation(line: 326, column: 6, scope: !1333, inlinedAt: !1488, atomGroup: 2, atomRank: 1)
!1492 = !DILocation(line: 327, column: 3, scope: !1333, inlinedAt: !1488)
!1493 = !DILocation(line: 328, column: 25, scope: !1333, inlinedAt: !1488)
!1494 = !DILocation(line: 328, column: 12, scope: !1333, inlinedAt: !1488, atomGroup: 3, atomRank: 2)
!1495 = !DILocation(line: 328, column: 6, scope: !1333, inlinedAt: !1488, atomGroup: 4, atomRank: 2)
!1496 = !DILocation(line: 328, column: 10, scope: !1333, inlinedAt: !1488, atomGroup: 3, atomRank: 1)
!1497 = !DILocation(line: 329, column: 18, scope: !1333, inlinedAt: !1488, atomGroup: 5, atomRank: 2)
!1498 = !DILocation(line: 329, column: 25, scope: !1333, inlinedAt: !1488, atomGroup: 6, atomRank: 1)
!1499 = !DILocation(line: 328, column: 5, scope: !1333, inlinedAt: !1488, atomGroup: 7, atomRank: 1)
!1500 = distinct !{!1500, !1492, !1501, !608}
!1501 = !DILocation(line: 329, column: 29, scope: !1333, inlinedAt: !1488)
!1502 = !DILocation(line: 330, column: 32, scope: !1333, inlinedAt: !1488)
!1503 = !DILocation(line: 330, column: 32, scope: !1333, inlinedAt: !1488, atomGroup: 8, atomRank: 2)
!1504 = !DILocation(line: 331, column: 29, scope: !1333, inlinedAt: !1488, atomGroup: 13, atomRank: 2)
!1505 = !DILocation(line: 331, column: 10, scope: !1333, inlinedAt: !1488)
!1506 = !DILocation(line: 331, column: 37, scope: !1333, inlinedAt: !1488, atomGroup: 24, atomRank: 2)
!1507 = !DILocation(line: 332, column: 1, scope: !1333, inlinedAt: !1488)
!1508 = !DILocalVariable(name: "n_lines", arg: 1, scope: !1509, file: !2, line: 305, type: !234)
!1509 = distinct !DISubprogram(name: "write_permuted_lines", scope: !2, file: !2, line: 305, type: !1510, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !1512, keyInstructions: true)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!185, !234, !1370, !1418}
!1512 = !{!1508, !1513, !1514, !1515, !1517, !1520, !1521, !1524, !1525}
!1513 = !DILocalVariable(name: "line", arg: 2, scope: !1509, file: !2, line: 305, type: !1370)
!1514 = !DILocalVariable(name: "permutation", arg: 3, scope: !1509, file: !2, line: 306, type: !1418)
!1515 = !DILocalVariable(name: "i", scope: !1516, file: !2, line: 308, type: !234)
!1516 = distinct !DILexicalBlock(scope: !1509, file: !2, line: 308, column: 3)
!1517 = !DILocalVariable(name: "p", scope: !1518, file: !2, line: 310, type: !1370)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 309, column: 5)
!1519 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 308, column: 3)
!1520 = !DILocalVariable(name: "len", scope: !1518, file: !2, line: 311, type: !234)
!1521 = !DILocalVariable(name: "__ptr", scope: !1522, file: !2, line: 312, type: !168)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 312, column: 11)
!1523 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 312, column: 11)
!1524 = !DILocalVariable(name: "__stream", scope: !1522, file: !2, line: 312, type: !396)
!1525 = !DILocalVariable(name: "__cnt", scope: !1522, file: !2, line: 312, type: !234)
!1526 = !DILocation(line: 0, scope: !1509, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 615, column: 13, scope: !1459)
!1528 = !DILocation(line: 0, scope: !1516, inlinedAt: !1527)
!1529 = !DILocation(line: 308, column: 3, scope: !1516, inlinedAt: !1527, atomGroup: 201, atomRank: 1)
!1530 = !DILocation(line: 308, column: 36, scope: !1519, inlinedAt: !1527, atomGroup: 22, atomRank: 2)
!1531 = !DILocation(line: 308, column: 24, scope: !1519, inlinedAt: !1527, atomGroup: 2, atomRank: 1)
!1532 = !DILocation(line: 308, column: 3, scope: !1516, inlinedAt: !1527, atomGroup: 3, atomRank: 1)
!1533 = distinct !{!1533, !1534, !1535, !608}
!1534 = !DILocation(line: 308, column: 3, scope: !1516, inlinedAt: !1527)
!1535 = !DILocation(line: 314, column: 5, scope: !1516, inlinedAt: !1527)
!1536 = !DILocation(line: 310, column: 31, scope: !1518, inlinedAt: !1527)
!1537 = !DILocation(line: 310, column: 29, scope: !1518, inlinedAt: !1527, atomGroup: 4, atomRank: 2)
!1538 = !DILocation(line: 0, scope: !1518, inlinedAt: !1527)
!1539 = !DILocation(line: 311, column: 20, scope: !1518, inlinedAt: !1527)
!1540 = !DILocation(line: 311, column: 27, scope: !1518, inlinedAt: !1527)
!1541 = !DILocation(line: 311, column: 25, scope: !1518, inlinedAt: !1527)
!1542 = !DILocation(line: 311, column: 25, scope: !1518, inlinedAt: !1527, atomGroup: 5, atomRank: 2)
!1543 = !DILocation(line: 312, column: 44, scope: !1523, inlinedAt: !1527)
!1544 = !DILocation(line: 312, column: 11, scope: !1523, inlinedAt: !1527)
!1545 = !DILocation(line: 312, column: 52, scope: !1523, inlinedAt: !1527, atomGroup: 20, atomRank: 2)
!1546 = !DILocation(line: 955, column: 21, scope: !1547, inlinedAt: !1550)
!1547 = distinct !DISubprogram(name: "write_error", scope: !157, file: !157, line: 953, type: !485, scopeLine: 954, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !1548, keyInstructions: true)
!1548 = !{!1549}
!1549 = !DILocalVariable(name: "saved_errno", scope: !1547, file: !157, line: 955, type: !185)
!1550 = distinct !DILocation(line: 619, column: 5, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !687, file: !2, line: 618, column: 7)
!1552 = !DILocation(line: 955, column: 21, scope: !1547, inlinedAt: !1550, atomGroup: 1, atomRank: 2)
!1553 = !DILocation(line: 0, scope: !1547, inlinedAt: !1550)
!1554 = !DILocation(line: 956, column: 11, scope: !1547, inlinedAt: !1550)
!1555 = !DILocation(line: 956, column: 3, scope: !1547, inlinedAt: !1550)
!1556 = !DILocation(line: 957, column: 11, scope: !1547, inlinedAt: !1550)
!1557 = !DILocation(line: 957, column: 3, scope: !1547, inlinedAt: !1550)
!1558 = !DILocation(line: 958, column: 13, scope: !1547, inlinedAt: !1550)
!1559 = !DILocation(line: 958, column: 3, scope: !1547, inlinedAt: !1550)
!1560 = !DILocation(line: 959, column: 37, scope: !1547, inlinedAt: !1550)
!1561 = !DILocation(line: 959, column: 3, scope: !1547, inlinedAt: !1550)
!1562 = !DILocation(line: 623, column: 3, scope: !687, atomGroup: 116, atomRank: 1)
!1563 = !DISubprogram(name: "set_program_name", scope: !1564, file: !1564, line: 38, type: !515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1564 = !DIFile(filename: "./lib/progname.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3e5536ae3756d6a65acb8e248212c2ee")
!1565 = !DISubprogram(name: "setlocale", scope: !1566, file: !1566, line: 122, type: !1567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1566 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!231, !185, !168}
!1569 = !DISubprogram(name: "bindtextdomain", scope: !544, file: !544, line: 86, type: !1570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!231, !168, !168}
!1572 = !DISubprogram(name: "textdomain", scope: !544, file: !544, line: 82, type: !1573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!231, !168}
!1575 = !DISubprogram(name: "atexit", scope: !1576, file: !1576, line: 602, type: !1577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1576 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!185, !1579}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!1580 = !DISubprogram(name: "getopt_long", scope: !362, file: !362, line: 66, type: !1581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!185, !185, !1370, !168, !1583, !367}
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!1584 = !DISubprogram(name: "error", scope: !1585, file: !1585, line: 31, type: !1586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1585 = !DIFile(filename: "/usr/include/error.h", directory: "", checksumkind: CSK_MD5, checksum: "0bac552e7426506dc6623c11568834e0")
!1586 = !DISubroutineType(types: !1587)
!1587 = !{null, !185, !185, !168, null}
!1588 = !DISubprogram(name: "xstrtoumax", scope: !173, file: !173, line: 74, type: !1589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!735, !542, !1591, !185, !1592, !542}
!1591 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !690)
!1592 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!1594 = !DISubprogram(name: "quote", scope: !1595, file: !1595, line: 49, type: !1596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1595 = !DIFile(filename: "./lib/quote.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "4a0796caa167d9859d28846ccf7a0d92")
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!168, !168}
!1598 = !DISubprogram(name: "version_etc", scope: !1599, file: !1599, line: 70, type: !1600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1599 = !DIFile(filename: "./lib/version-etc.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "7242964c9dbfa69ef19b57250c13e279")
!1600 = !DISubroutineType(types: !1601)
!1601 = !{null, !396, !168, !168, !168, null}
!1602 = !DISubprogram(name: "proper_name_lite", scope: !1603, file: !1603, line: 126, type: !1604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1603 = !DIFile(filename: "./lib/propername.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "fdc444d0083bc592737160d9365ffa54")
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!168, !168, !168}
!1606 = !DISubprogram(name: "freopen_safer", scope: !1607, file: !1607, line: 38, type: !1608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1607 = !DIFile(filename: "./lib/stdio-safer.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "da7c848ac45b6b340d78312531e02838")
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!396, !168, !168, !396}
!1610 = !DISubprogram(name: "__errno_location", scope: !1611, file: !1611, line: 37, type: !1612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1611 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!367}
!1614 = !DISubprogram(name: "quotearg_n_style_colon", scope: !190, file: !190, line: 419, type: !1615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!231, !185, !189, !168}
!1617 = !DISubprogram(name: "fadvise", scope: !204, file: !204, line: 71, type: !1618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{null, !396, !1620}
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !204, line: 51, baseType: !203)
!1621 = !DISubprogram(name: "randint_all_new", scope: !723, file: !723, line: 40, type: !1622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!721, !168, !234}
!1624 = !DISubprogram(name: "randperm_bound", scope: !1625, file: !1625, line: 4, type: !1626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1625 = !DIFile(filename: "./lib/randperm.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3696dfcd4159ef17f5ca9638d631e5a5")
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!234, !234, !234}
!1628 = !DISubprogram(name: "rpl_fclose", scope: !548, file: !548, line: 959, type: !1243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1629 = !DISubprogram(name: "randperm_new", scope: !1625, file: !1625, line: 5, type: !1630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!725, !721, !234, !234}
!1632 = !DISubprogram(name: "getenv", scope: !1576, file: !1576, line: 641, type: !1573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1633 = !DISubprogram(name: "strspn", scope: !1634, file: !1634, line: 297, type: !1635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1634 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!236, !168, !168}
!1637 = !DISubprogram(name: "strchr", scope: !1634, file: !1634, line: 246, type: !1638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!231, !168, !185}
!1640 = !DISubprogram(name: "__ctype_b_loc", scope: !216, file: !216, line: 79, type: !1641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!1643}
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!1646 = !DISubprogram(name: "strcspn", scope: !1634, file: !1634, line: 293, type: !1635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1647 = !DISubprogram(name: "fwrite_unlocked", scope: !552, file: !552, line: 704, type: !1648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!234, !1650, !234, !234, !541}
!1650 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1651)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1653 = !DISubprogram(name: "strncmp", scope: !1634, file: !1634, line: 159, type: !1654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!185, !168, !168, !234}
!1656 = !DISubprogram(name: "emit_bug_reporting_address", scope: !1599, file: !1599, line: 77, type: !485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1657 = !DISubprogram(name: "strcmp", scope: !1634, file: !1634, line: 156, type: !1658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!185, !168, !168}
!1660 = !DISubprogram(name: "strlen", scope: !1634, file: !1634, line: 407, type: !1661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!236, !168}
!1663 = !DISubprogram(name: "xmalloc", scope: !1664, file: !1664, line: 59, type: !1665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1664 = !DIFile(filename: "./lib/xalloc.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!232, !234}
!1667 = !DISubprogram(name: "fstat", scope: !1668, file: !1668, line: 210, type: !1669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1668 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!185, !185, !1671}
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1672 = !DISubprogram(name: "lseek", scope: !1673, file: !1673, line: 339, type: !1674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1673 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!240, !185, !240, !185}
!1676 = !DISubprogram(name: "fread_file", scope: !1677, file: !1677, line: 43, type: !1678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1677 = !DIFile(filename: "./lib/read-file.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "7460d7d4721d9aaf6528d6217fcb6e01")
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!231, !396, !185, !725}
!1680 = !DISubprogram(name: "xnmalloc", scope: !1664, file: !1664, line: 136, type: !1681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!232, !234, !234}
!1683 = !DISubprogram(name: "rawmemchr", scope: !1634, file: !1634, line: 120, type: !1684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!232, !1651, !185}
!1686 = !DISubprogram(name: "xpalloc", scope: !1664, file: !1664, line: 92, type: !1687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!232, !232, !1689, !699, !1690, !699}
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !1691, line: 18, baseType: !242)
!1691 = !DIFile(filename: "/usr/lib/llvm-22/lib/clang/22/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!1692 = !DISubprogram(name: "readlinebuffer_delim", scope: !715, file: !715, line: 48, type: !1693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!713, !713, !396, !4}
!1695 = !DISubprogram(name: "initbuffer", scope: !715, file: !715, line: 41, type: !1696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{null, !713}
!1698 = !DISubprogram(name: "freebuffer", scope: !715, file: !715, line: 58, type: !1696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1699 = !DISubprogram(name: "randint_genmax", scope: !723, file: !723, line: 44, type: !1214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1700 = !DISubprogram(name: "fflush_unlocked", scope: !552, file: !552, line: 239, type: !1243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1701 = !DISubprogram(name: "fpurge", scope: !548, file: !548, line: 1266, type: !1243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1702 = !DISubprogram(name: "clearerr_unlocked", scope: !552, file: !552, line: 794, type: !1703, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{null, !396}
