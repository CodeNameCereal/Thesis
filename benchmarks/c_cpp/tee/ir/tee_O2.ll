; ModuleID = 'src/tee.c'
source_filename = "src/tee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [65 x i8] c"Copy standard input to each FILE, and also to standard output.\0A\0A\00", align 1, !dbg !12
@stdout = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"tee\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [69 x i8] c"  -a, --append\0A         append to the given FILEs, do not overwrite\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [61 x i8] c"  -i, --ignore-interrupts\0A         ignore interrupt signals\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [61 x i8] c"  -p\0A         operate in a more appropriate MODE with pipes\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [83 x i8] c"      --output-error[=MODE]\0A         set behavior on write error.  See MODE below\0A\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [586 x i8] c"\0AMODE determines behavior with write errors on the outputs:\0A  warn           diagnose errors writing to any output\0A  warn-nopipe    diagnose errors writing to any output not a pipe\0A  exit           exit on error writing to any output\0A  exit-nopipe    exit on error writing to any output not a pipe\0AThe default MODE for the -p option is 'warn-nopipe'.\0AWith \22nopipe\22 MODEs, exit immediately if all outputs become broken pipes.\0AThe default operation when --output-error is not specified, is to\0Aexit immediately on error writing to a pipe, and diagnose errors\0Awriting to non pipe outputs.\0A\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !54
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !59
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !64
@.str.14 = private unnamed_addr constant [4 x i8] c"aip\00", align 1, !dbg !69
@append = internal unnamed_addr global i1 false, align 1, !dbg !71
@ignore_interrupts = internal unnamed_addr global i1 false, align 1, !dbg !411
@optarg = external local_unnamed_addr global ptr, align 8
@output_error_types = internal constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16, !dbg !386
@.str.15 = private unnamed_addr constant [15 x i8] c"--output-error\00", align 1, !dbg !145
@output_error_args = internal constant [5 x ptr] [ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr null], align 16, !dbg !398
@argmatch_die = external local_unnamed_addr global ptr, align 8
@output_error = internal unnamed_addr global i32 0, align 4, !dbg !181
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !150
@Version = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [12 x i8] c"Mike Parker\00", align 1, !dbg !155
@.str.18 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1, !dbg !160
@.str.19 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !165
@optind = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !170
@.str.21 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1, !dbg !175
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !183
@.str.22 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !262
@.str.23 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !267
@.str.24 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !269
@.str.25 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !271
@.str.39 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !311
@.str.40 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !313
@.str.41 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !315
@.str.42 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !320
@.str.43 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !325
@.str.44 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !327
@.str.45 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !329
@.str.46 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !331
@.str.47 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !333
@.str.48 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !335
@.str.52 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !346
@.str.53 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !351
@.str.54 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !356
@.str.55 = private unnamed_addr constant [7 x i8] c"append\00", align 1, !dbg !358
@.str.56 = private unnamed_addr constant [18 x i8] c"ignore-interrupts\00", align 1, !dbg !360
@.str.57 = private unnamed_addr constant [13 x i8] c"output-error\00", align 1, !dbg !365
@.str.58 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !370
@.str.59 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !372
@long_options = internal constant [6 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.55, i32 0, [4 x i8] zeroinitializer, ptr null, i32 97, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.56, i32 0, [4 x i8] zeroinitializer, ptr null, i32 105, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.57, i32 2, [4 x i8] zeroinitializer, ptr null, i32 112, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.58, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -130, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.59, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -131, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16, !dbg !374
@.str.61 = private unnamed_addr constant [5 x i8] c"warn\00", align 1, !dbg !390
@.str.62 = private unnamed_addr constant [12 x i8] c"warn-nopipe\00", align 1, !dbg !392
@.str.63 = private unnamed_addr constant [5 x i8] c"exit\00", align 1, !dbg !394
@.str.64 = private unnamed_addr constant [12 x i8] c"exit-nopipe\00", align 1, !dbg !396
@stdin = external local_unnamed_addr global ptr, align 8
@.str.65 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1, !dbg !402
@.str.66 = private unnamed_addr constant [13 x i8] c"iopoll error\00", align 1, !dbg !404
@.str.67 = private unnamed_addr constant [11 x i8] c"read error\00", align 1, !dbg !406

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !424 {
    #dbg_value(i32 %0, !426, !DIExpression(), !427)
  %2 = icmp eq i32 %0, 0, !dbg !428
  br i1 %2, label %8, label %3, !dbg !430

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !431, !tbaa !433
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #16, !dbg !431
  %6 = load ptr, ptr @program_name, align 8, !dbg !431, !tbaa !436
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #16, !dbg !431
  br label %28, !dbg !431

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #16, !dbg !438
  %10 = load ptr, ptr @program_name, align 8, !dbg !440, !tbaa !436
  %11 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %9, ptr noundef %10) #16, !dbg !441
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #16, !dbg !442
  %13 = load ptr, ptr @stdout, align 8, !dbg !443, !tbaa !433
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !444
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #16, !dbg !445
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !446
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #16, !dbg !447
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !448
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #16, !dbg !449
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !450
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #16, !dbg !451
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !452
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #16, !dbg !453
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !454
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #16, !dbg !455
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !456
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #16, !dbg !457
  %22 = load ptr, ptr @stdout, align 8, !dbg !458, !tbaa !433
  %23 = tail call i32 @fputs_unlocked(ptr noundef %21, ptr noundef %22), !dbg !459
    #dbg_value(ptr @.str.3, !460, !DIExpression(), !476)
    #dbg_value(ptr poison, !473, !DIExpression(), !476)
    #dbg_value(ptr @.str.3, !472, !DIExpression(), !476)
  tail call void @emit_bug_reporting_address() #16, !dbg !478
    #dbg_value(ptr @.str.3, !475, !DIExpression(), !476)
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #16, !dbg !479
  %25 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %24, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3) #16, !dbg !480
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #16, !dbg !481
  %27 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %26, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.54) #16, !dbg !482
  br label %28

28:                                               ; preds = %8, %3
  tail call void @exit(i32 noundef %0) #17, !dbg !483
  unreachable, !dbg !483
}

declare !dbg !484 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !490 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !494 i32 @rpl_printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare !dbg !498 noundef i32 @fputs_unlocked(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !185 {
    #dbg_value(ptr @.str.3, !189, !DIExpression(), !502)
    #dbg_value(ptr %0, !190, !DIExpression(), !502)
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !503, !tbaa !420
  %3 = icmp eq i32 %2, -1, !dbg !504
  br i1 %3, label %4, label %16, !dbg !505

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.22) #16, !dbg !506
    #dbg_value(ptr %5, !191, !DIExpression(), !507)
  %6 = icmp eq ptr %5, null, !dbg !508
  br i1 %6, label %14, label %7, !dbg !509

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !510, !tbaa !511
  %9 = icmp eq i8 %8, 0, !dbg !512
  br i1 %9, label %14, label %10, !dbg !513

10:                                               ; preds = %7
    #dbg_value(ptr %5, !514, !DIExpression(), !521)
    #dbg_value(ptr @.str.23, !520, !DIExpression(), !521)
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.23) #18, !dbg !523
  %12 = icmp eq i32 %11, 0, !dbg !524
  %13 = zext i1 %12 to i32, !dbg !525
  br label %14, !dbg !526

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !527, !tbaa !420
  br label %16, !dbg !528

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !529
  %18 = icmp eq i32 %17, 0, !dbg !531
  br i1 %18, label %19, label %114, !dbg !532

19:                                               ; preds = %16
    #dbg_value(i8 1, !194, !DIExpression(), !502)
  %20 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.24) #18, !dbg !533
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 %20, !dbg !534
    #dbg_value(ptr %21, !195, !DIExpression(), !502)
  %22 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #18, !dbg !535
    #dbg_value(ptr %22, !196, !DIExpression(), !502)
  %23 = icmp eq ptr %22, null, !dbg !536
  br i1 %23, label %48, label %24, !dbg !537

24:                                               ; preds = %19
    #dbg_value(ptr %21, !197, !DIExpression(), !538)
    #dbg_value(i64 0, !201, !DIExpression(), !538)
  %25 = icmp ult ptr %21, %22
  br i1 %25, label %26, label %48, !dbg !539

26:                                               ; preds = %24
  %27 = tail call ptr @__ctype_b_loc() #19, !dbg !502
  %28 = load ptr, ptr %27, align 8, !tbaa !540
  br label %29, !dbg !542

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %21, %26 ], [ %32, %29 ]
  %31 = phi i64 [ 0, %26 ], [ %41, %29 ]
    #dbg_value(ptr %30, !197, !DIExpression(), !538)
    #dbg_value(i64 %31, !201, !DIExpression(), !538)
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 1, !dbg !543
    #dbg_value(ptr %32, !197, !DIExpression(), !538)
  %33 = load i8, ptr %30, align 1, !dbg !544, !tbaa !511
  %34 = sext i8 %33 to i64, !dbg !545
  %35 = getelementptr inbounds i16, ptr %28, i64 %34, !dbg !545
  %36 = load i16, ptr %35, align 2, !dbg !545, !tbaa !546
  %37 = freeze i16 %36, !dbg !548
  %38 = lshr i16 %37, 13, !dbg !548
  %39 = and i16 %38, 1, !dbg !548
  %40 = zext nneg i16 %39 to i64, !dbg !548
  %41 = add i64 %31, %40, !dbg !549
    #dbg_value(i64 %41, !201, !DIExpression(), !538)
  %42 = icmp ult ptr %32, %22, !dbg !550
  %43 = icmp samesign ult i64 %41, 2, !dbg !551
  %44 = select i1 %42, i1 %43, i1 false, !dbg !551
  br i1 %44, label %29, label %45, !dbg !552, !llvm.loop !553

45:                                               ; preds = %29
  %46 = icmp ne i64 %41, 2, !dbg !556
  %47 = select i1 %46, ptr %22, ptr %21, !dbg !558
  br label %48, !dbg !558

48:                                               ; preds = %45, %19, %24
  %49 = phi ptr [ %21, %19 ], [ %22, %24 ], [ %47, %45 ], !dbg !502
  %50 = phi i1 [ false, %19 ], [ true, %24 ], [ %46, %45 ], !dbg !502
    #dbg_value(i8 poison, !194, !DIExpression(), !502)
    #dbg_value(ptr %49, !196, !DIExpression(), !502)
  %51 = tail call i64 @strcspn(ptr noundef nonnull %49, ptr noundef nonnull @.str.25) #18, !dbg !559
    #dbg_value(i64 %51, !202, !DIExpression(), !502)
  %52 = getelementptr inbounds nuw i8, ptr %49, i64 %51, !dbg !560
    #dbg_value(ptr %52, !203, !DIExpression(), !502)
  br label %53, !dbg !561

53:                                               ; preds = %84, %48
  %54 = phi ptr [ %52, %48 ], [ %85, %84 ], !dbg !502
  %55 = phi i1 [ %50, %48 ], [ %63, %84 ], !dbg !502
    #dbg_value(i8 poison, !194, !DIExpression(), !502)
    #dbg_value(ptr %54, !203, !DIExpression(), !502)
  %56 = load i8, ptr %54, align 1, !dbg !562, !tbaa !511
  switch i8 %56, label %62 [
    i8 0, label %86
    i8 10, label %86
    i8 45, label %57
  ], !dbg !563

57:                                               ; preds = %53
  %58 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !564
  %59 = load i8, ptr %58, align 1, !dbg !564, !tbaa !511
  %60 = icmp ne i8 %59, 45, !dbg !567
  %61 = select i1 %60, i1 %55, i1 false, !dbg !568
  br label %62, !dbg !568

62:                                               ; preds = %57, %53
  %63 = phi i1 [ %55, %53 ], [ %61, %57 ], !dbg !502
    #dbg_value(i8 poison, !194, !DIExpression(), !502)
  %64 = tail call ptr @__ctype_b_loc() #19, !dbg !569
  %65 = load ptr, ptr %64, align 8, !dbg !569, !tbaa !540
  %66 = sext i8 %56 to i64, !dbg !569
  %67 = getelementptr inbounds i16, ptr %65, i64 %66, !dbg !569
  %68 = load i16, ptr %67, align 2, !dbg !569, !tbaa !546
  %69 = and i16 %68, 8192, !dbg !569
  %70 = icmp eq i16 %69, 0, !dbg !571
  br i1 %70, label %84, label %71, !dbg !572

71:                                               ; preds = %62
  %72 = icmp eq i8 %56, 9, !dbg !573
  br i1 %72, label %86, label %73, !dbg !576

73:                                               ; preds = %71
  %74 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !577
  %75 = load i8, ptr %74, align 1, !dbg !577, !tbaa !511
  %76 = sext i8 %75 to i64, !dbg !578
  %77 = getelementptr inbounds i16, ptr %65, i64 %76, !dbg !578
  %78 = load i16, ptr %77, align 2, !dbg !578, !tbaa !546
  %79 = and i16 %78, 8192, !dbg !578
  %80 = icmp eq i16 %79, 0, !dbg !579
  %81 = icmp eq i8 %75, 45
  %82 = or i1 %63, %81
  %83 = select i1 %80, i1 %82, i1 false, !dbg !580
  br i1 %83, label %84, label %86, !dbg !580

84:                                               ; preds = %73, %62
  %85 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !581
    #dbg_value(ptr %85, !203, !DIExpression(), !502)
  br label %53, !dbg !561, !llvm.loop !582

86:                                               ; preds = %53, %53, %71, %73
  %87 = ptrtoint ptr %21 to i64, !dbg !584
  %88 = load ptr, ptr @stdout, align 8, !dbg !585, !tbaa !433
  %89 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %0, i64 noundef 1, i64 noundef %20, ptr noundef %88), !dbg !586
    #dbg_value(ptr @.str.3, !514, !DIExpression(), !587)
    #dbg_value(ptr poison, !520, !DIExpression(), !587)
    #dbg_value(ptr @.str.3, !514, !DIExpression(), !589)
    #dbg_value(ptr poison, !520, !DIExpression(), !589)
    #dbg_value(ptr @.str.3, !514, !DIExpression(), !591)
    #dbg_value(ptr poison, !520, !DIExpression(), !591)
    #dbg_value(ptr @.str.3, !514, !DIExpression(), !593)
    #dbg_value(ptr poison, !520, !DIExpression(), !593)
    #dbg_value(ptr @.str.3, !514, !DIExpression(), !595)
    #dbg_value(ptr poison, !520, !DIExpression(), !595)
    #dbg_value(ptr @.str.3, !514, !DIExpression(), !597)
    #dbg_value(ptr poison, !520, !DIExpression(), !597)
    #dbg_value(ptr @.str.3, !514, !DIExpression(), !599)
    #dbg_value(ptr poison, !520, !DIExpression(), !599)
    #dbg_value(ptr @.str.3, !514, !DIExpression(), !601)
    #dbg_value(ptr poison, !520, !DIExpression(), !601)
    #dbg_value(ptr @.str.3, !514, !DIExpression(), !603)
    #dbg_value(ptr poison, !520, !DIExpression(), !603)
    #dbg_value(ptr @.str.3, !514, !DIExpression(), !605)
    #dbg_value(ptr poison, !520, !DIExpression(), !605)
    #dbg_value(ptr @.str.3, !257, !DIExpression(), !502)
  %90 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(7) @.str.39, i64 noundef 6) #18, !dbg !607
  %91 = icmp eq i32 %90, 0, !dbg !609
  br i1 %91, label %95, label %92, !dbg !610

92:                                               ; preds = %86
  %93 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(10) @.str.40, i64 noundef 9) #18, !dbg !611
  %94 = icmp eq i32 %93, 0, !dbg !612
  br i1 %94, label %95, label %98, !dbg !613

95:                                               ; preds = %92, %86
  %96 = trunc i64 %51 to i32, !dbg !614
  %97 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %96, ptr noundef nonnull %49) #16, !dbg !616
  br label %101, !dbg !617

98:                                               ; preds = %92
  %99 = trunc i64 %51 to i32, !dbg !618
  %100 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, i32 noundef %99, ptr noundef nonnull %49) #16, !dbg !620
  br label %101

101:                                              ; preds = %98, %95
  %102 = load ptr, ptr @stdout, align 8, !dbg !621, !tbaa !433
  %103 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %102), !dbg !622
  %104 = load ptr, ptr @stdout, align 8, !dbg !623, !tbaa !433
  %105 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %104), !dbg !624
  %106 = ptrtoint ptr %54 to i64, !dbg !625
  %107 = sub i64 %106, %87, !dbg !625
  %108 = load ptr, ptr @stdout, align 8, !dbg !626, !tbaa !433
  %109 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %21, i64 noundef 1, i64 noundef %107, ptr noundef %108), !dbg !627
  %110 = load ptr, ptr @stdout, align 8, !dbg !628, !tbaa !433
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %110), !dbg !629
  %112 = load ptr, ptr @stdout, align 8, !dbg !630, !tbaa !433
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %112), !dbg !631
  br label %114, !dbg !632

114:                                              ; preds = %16, %101
  %115 = phi ptr [ %54, %101 ], [ %0, %16 ]
  %116 = load ptr, ptr @stdout, align 8, !dbg !502, !tbaa !433
  %117 = tail call i32 @fputs_unlocked(ptr noundef %115, ptr noundef %116), !dbg !502
  ret void, !dbg !633
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #6 !dbg !634 {
  %3 = alloca [8192 x i8], align 16, !DIAssignID !644
    #dbg_value(i32 %0, !639, !DIExpression(), !645)
    #dbg_value(ptr %1, !640, !DIExpression(), !645)
  %4 = load ptr, ptr %1, align 8, !dbg !646, !tbaa !436
  tail call void @set_program_name(ptr noundef %4) #16, !dbg !647
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #16, !dbg !648
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #16, !dbg !649
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #16, !dbg !650
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #16, !dbg !651
  br label %9, !dbg !652

9:                                                ; preds = %21, %2
  %10 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @long_options, ptr noundef null) #16, !dbg !653
    #dbg_value(i32 %10, !641, !DIExpression(), !645)
  switch i32 %10, label %30 [
    i32 -1, label %31
    i32 97, label %11
    i32 105, label %12
    i32 112, label %13
    i32 -130, label %23
    i32 -131, label %24
  ], !dbg !654

11:                                               ; preds = %9
  store i1 true, ptr @append, align 1, !dbg !655
  br label %21, !dbg !658

12:                                               ; preds = %9
  store i1 true, ptr @ignore_interrupts, align 1, !dbg !659
  br label %21, !dbg !660

13:                                               ; preds = %9
  %14 = load ptr, ptr @optarg, align 8, !dbg !661, !tbaa !436
  %15 = icmp eq ptr %14, null, !dbg !663
  br i1 %15, label %22, label %16, !dbg !664

16:                                               ; preds = %13
  %17 = load ptr, ptr @argmatch_die, align 8, !dbg !665, !tbaa !666
  %18 = tail call i64 @__xargmatch_internal(ptr noundef nonnull @.str.15, ptr noundef nonnull %14, ptr noundef nonnull @output_error_args, ptr noundef nonnull @output_error_types, i64 noundef 4, ptr noundef %17, i1 noundef zeroext true) #16, !dbg !665
  %19 = getelementptr inbounds i32, ptr @output_error_types, i64 %18, !dbg !665
  %20 = load i32, ptr %19, align 4, !dbg !667, !tbaa !420
  store i32 %20, ptr @output_error, align 4, !dbg !668, !tbaa !420
  br label %21, !dbg !669

21:                                               ; preds = %16, %22, %12, %11
  br label %9, !dbg !653, !llvm.loop !670

22:                                               ; preds = %13
  store i32 2, ptr @output_error, align 4, !dbg !672, !tbaa !420
  br label %21

23:                                               ; preds = %9
  tail call void @usage(i32 noundef 0) #20, !dbg !673
  unreachable, !dbg !673

24:                                               ; preds = %9
  %25 = load ptr, ptr @stdout, align 8, !dbg !674, !tbaa !433
  %26 = load ptr, ptr @Version, align 8, !dbg !674, !tbaa !436
  %27 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #16, !dbg !675
  %28 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.18) #16, !dbg !675
  %29 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.19) #16, !dbg !675
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.16, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef null) #16, !dbg !674
  tail call void @exit(i32 noundef 0) #17, !dbg !674
  unreachable, !dbg !674

30:                                               ; preds = %9
  tail call void @usage(i32 noundef 1) #20, !dbg !676
  unreachable, !dbg !676

31:                                               ; preds = %9
  %32 = load i1, ptr @ignore_interrupts, align 1, !dbg !677
  br i1 %32, label %33, label %35, !dbg !679

33:                                               ; preds = %31
  %34 = tail call ptr @signal(i32 noundef 2, ptr noundef nonnull inttoptr (i64 1 to ptr)) #16, !dbg !680
  br label %35, !dbg !680

35:                                               ; preds = %33, %31
  %36 = load i32, ptr @output_error, align 4, !dbg !681, !tbaa !420
  %37 = icmp eq i32 %36, 0, !dbg !683
  br i1 %37, label %43, label %38, !dbg !684

38:                                               ; preds = %35
  %39 = tail call ptr @signal(i32 noundef 13, ptr noundef nonnull inttoptr (i64 1 to ptr)) #16, !dbg !685
  %40 = load i32, ptr @output_error, align 4, !dbg !686, !tbaa !420
  switch i32 %40, label %43 [
    i32 4, label %41
    i32 2, label %41
  ], !dbg !687

41:                                               ; preds = %38, %38
  %42 = tail call zeroext i1 @iopoll_input_ok(i32 noundef 0) #16, !dbg !688
  br label %43

43:                                               ; preds = %35, %38, %41
  %44 = phi i1 [ false, %38 ], [ %42, %41 ], [ false, %35 ], !dbg !645
    #dbg_value(i1 %44, !642, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !645)
  %45 = load i32, ptr @optind, align 4, !dbg !689, !tbaa !420
  %46 = sub nsw i32 %0, %45, !dbg !690
  %47 = sext i32 %45 to i64, !dbg !691
  %48 = getelementptr inbounds ptr, ptr %1, i64 %47, !dbg !691
    #dbg_assign(i1 poison, !692, !DIExpression(), !644, ptr %3, !DIExpression(), !731)
    #dbg_value(i32 %46, !697, !DIExpression(), !731)
    #dbg_value(ptr %48, !698, !DIExpression(), !731)
    #dbg_value(i1 %44, !699, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !731)
    #dbg_value(i64 0, !700, !DIExpression(), !731)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !dbg !733
    #dbg_value(i64 0, !704, !DIExpression(), !731)
    #dbg_value(i32 0, !708, !DIExpression(), !731)
    #dbg_value(i8 1, !709, !DIExpression(), !731)
  %49 = load i1, ptr @append, align 1, !dbg !734
  %50 = select i1 %49, i32 1089, i32 577, !dbg !735
    #dbg_value(i32 %50, !710, !DIExpression(), !731)
  %51 = load ptr, ptr @stdin, align 8, !dbg !736, !tbaa !433
  tail call void @fadvise(ptr noundef %51, i32 noundef 2) #16, !dbg !737
  %52 = add i32 %46, 1, !dbg !738
  %53 = sext i32 %52 to i64, !dbg !739
  %54 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %53, i64 noundef 4) #21, !dbg !740
    #dbg_value(ptr %54, !701, !DIExpression(), !731)
  br i1 %44, label %55, label %59, !dbg !741

55:                                               ; preds = %43
  %56 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %53, i64 noundef 1) #21, !dbg !743
    #dbg_value(ptr %56, !702, !DIExpression(), !731)
    #dbg_value(ptr %48, !698, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !731)
  %57 = tail call zeroext i1 @iopoll_output_ok(i32 noundef 1) #16, !dbg !744
  %58 = zext i1 %57 to i8, !dbg !746
  store i8 %58, ptr %56, align 1, !dbg !747, !tbaa !748
  br label %59, !dbg !750

59:                                               ; preds = %55, %43
  %60 = phi ptr [ %56, %55 ], [ undef, %43 ]
  store i32 1, ptr %54, align 4, !dbg !751, !tbaa !420
  %61 = getelementptr inbounds i8, ptr %48, i64 -8, !dbg !752
  %62 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #16, !dbg !753
  store ptr %62, ptr %61, align 8, !dbg !754, !tbaa !436
    #dbg_value(i64 1, !700, !DIExpression(), !731)
    #dbg_value(i32 1, !711, !DIExpression(), !755)
    #dbg_value(i8 poison, !709, !DIExpression(), !731)
  %63 = icmp slt i32 %46, 1, !dbg !756
  %64 = zext i32 %52 to i64
  br i1 %63, label %67, label %72, !dbg !757

65:                                               ; preds = %101
    #dbg_value(i64 %103, !700, !DIExpression(), !731)
    #dbg_value(i8 poison, !709, !DIExpression(), !731)
    #dbg_value(i32 0, !708, !DIExpression(), !731)
    #dbg_value(i64 0, !704, !DIExpression(), !731)
  %66 = icmp eq i64 %103, 0, !dbg !758
  br i1 %66, label %228, label %67, !dbg !759

67:                                               ; preds = %59, %65
  %68 = phi i64 [ %103, %65 ], [ 1, %59 ]
  %69 = phi i1 [ %102, %65 ], [ true, %59 ]
  %70 = icmp slt i32 %46, 0
  %71 = sext i32 %46 to i64
  br label %107, !dbg !759

72:                                               ; preds = %59, %101
  %73 = phi i64 [ %104, %101 ], [ 1, %59 ]
  %74 = phi i64 [ %103, %101 ], [ 1, %59 ]
  %75 = phi i1 [ %102, %101 ], [ true, %59 ]
    #dbg_value(i64 %74, !700, !DIExpression(), !731)
    #dbg_value(i64 %73, !711, !DIExpression(), !755)
  %76 = getelementptr inbounds nuw ptr, ptr %61, i64 %73, !dbg !760
  %77 = load ptr, ptr %76, align 8, !dbg !760, !tbaa !436
  %78 = tail call i32 (ptr, i32, ...) @open_safer(ptr noundef %77, i32 noundef %50, i32 noundef 438) #16, !dbg !761
  %79 = getelementptr inbounds nuw i32, ptr %54, i64 %73, !dbg !762
  store i32 %78, ptr %79, align 4, !dbg !763, !tbaa !420
  %80 = icmp slt i32 %78, 0, !dbg !764
  br i1 %80, label %81, label %94, !dbg !765

81:                                               ; preds = %72
  br i1 %44, label %82, label %84, !dbg !766

82:                                               ; preds = %81
  %83 = getelementptr inbounds nuw i8, ptr %60, i64 %73, !dbg !768
  store i8 0, ptr %83, align 1, !dbg !769, !tbaa !748
  br label %84, !dbg !768

84:                                               ; preds = %82, %81
  %85 = load i32, ptr @output_error, align 4, !dbg !770, !tbaa !420
  %86 = add i32 %85, -3, !dbg !771
  %87 = icmp ult i32 %86, 2, !dbg !771
  %88 = zext i1 %87 to i32, !dbg !772
  %89 = tail call ptr @__errno_location() #19, !dbg !773
  %90 = load i32, ptr %89, align 4, !dbg !773, !tbaa !420
  %91 = load ptr, ptr %76, align 8, !dbg !774, !tbaa !436
  %92 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %91) #16, !dbg !775
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %88, i32 noundef %90, ptr noundef nonnull @.str.20, ptr noundef %92) #16, !dbg !776
    #dbg_value(i32 %88, !713, !DIExpression(), !777)
  %93 = xor i1 %87, true, !dbg !778
  tail call void @llvm.assume(i1 %93), !dbg !778
  br label %101, !dbg !776

94:                                               ; preds = %72
  br i1 %44, label %95, label %99, !dbg !779

95:                                               ; preds = %94
  %96 = tail call zeroext i1 @iopoll_output_ok(i32 noundef %78) #16, !dbg !782
  %97 = getelementptr inbounds nuw i8, ptr %60, i64 %73, !dbg !783
  %98 = zext i1 %96 to i8, !dbg !784
  store i8 %98, ptr %97, align 1, !dbg !785, !tbaa !748
  br label %99, !dbg !783

99:                                               ; preds = %95, %94
  %100 = add i64 %74, 1, !dbg !786
    #dbg_value(i64 %100, !700, !DIExpression(), !731)
  br label %101

101:                                              ; preds = %99, %84
  %102 = phi i1 [ %75, %99 ], [ false, %84 ], !dbg !731
  %103 = phi i64 [ %100, %99 ], [ %74, %84 ], !dbg !731
    #dbg_value(i64 %103, !700, !DIExpression(), !731)
    #dbg_value(i8 poison, !709, !DIExpression(), !731)
  %104 = add nuw nsw i64 %73, 1, !dbg !787
    #dbg_value(i64 %104, !711, !DIExpression(), !755)
  %105 = icmp eq i64 %104, %64, !dbg !788
  br i1 %105, label %65, label %72, !dbg !789, !llvm.loop !790

106:                                              ; preds = %214
  br label %160, !dbg !793, !llvm.loop !794

107:                                              ; preds = %160, %67
  %108 = phi i64 [ %68, %67 ], [ %164, %160 ]
  %109 = phi i1 [ %69, %67 ], [ %163, %160 ]
  %110 = phi i32 [ 0, %67 ], [ %162, %160 ]
  %111 = phi i64 [ 0, %67 ], [ %161, %160 ]
    #dbg_value(i64 %108, !700, !DIExpression(), !731)
    #dbg_value(i32 %110, !708, !DIExpression(), !731)
    #dbg_value(i64 %111, !704, !DIExpression(), !731)
  br i1 %44, label %112, label %152, !dbg !797

112:                                              ; preds = %107
  %113 = sext i32 %110 to i64, !dbg !798
  %114 = getelementptr inbounds i8, ptr %60, i64 %113, !dbg !798
  %115 = load i8, ptr %114, align 1, !dbg !799, !tbaa !748, !range !800, !noundef !801
  %116 = trunc nuw i8 %115 to i1, !dbg !802
  br i1 %116, label %117, label %152, !dbg !803

117:                                              ; preds = %112
  %118 = getelementptr inbounds i32, ptr %54, i64 %113, !dbg !804
  %119 = load i32, ptr %118, align 4, !dbg !804, !tbaa !420
  %120 = call i32 @iopoll(i32 noundef 0, i32 noundef %119, i1 noundef zeroext true) #16, !dbg !805
    #dbg_value(i32 %120, !720, !DIExpression(), !806)
  switch i32 %120, label %152 [
    i32 -2, label %121
    i32 -3, label %148
  ], !dbg !807

121:                                              ; preds = %117
  %122 = tail call ptr @__errno_location() #19, !dbg !809
  store i32 32, ptr %122, align 4, !dbg !811, !tbaa !420
    #dbg_value(ptr %54, !812, !DIExpression(), !825)
    #dbg_value(ptr %61, !817, !DIExpression(), !825)
    #dbg_value(i32 %110, !818, !DIExpression(), !825)
    #dbg_value(i32 32, !819, !DIExpression(), !825)
  %123 = load i32, ptr @output_error, align 4
    #dbg_value(i1 poison, !820, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !825)
  switch i32 %123, label %131 [
    i32 3, label %124
    i32 1, label %124
  ], !dbg !828

124:                                              ; preds = %121, %121
  %125 = add nsw i32 %123, -3, !dbg !829
  %126 = icmp ult i32 %125, 2, !dbg !829
  %127 = zext i1 %126 to i32, !dbg !830
  %128 = getelementptr inbounds ptr, ptr %61, i64 %113, !dbg !831
  %129 = load ptr, ptr %128, align 8, !dbg !831, !tbaa !436
  %130 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %129) #16, !dbg !832
  call void (i32, i32, ptr, ...) @error(i32 noundef %127, i32 noundef 32, ptr noundef nonnull @.str.20, ptr noundef %130) #16, !dbg !833
    #dbg_value(i32 %127, !821, !DIExpression(), !834)
  br label %131, !dbg !835

131:                                              ; preds = %124, %121
  %132 = and i32 %123, -3, !dbg !835
  %133 = icmp ne i32 %132, 1, !dbg !835
    #dbg_value(i1 %133, !820, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !825)
  store i32 -1, ptr %118, align 4, !dbg !836, !tbaa !420
  %134 = select i1 %133, i1 %109, i1 false, !dbg !837
    #dbg_value(i8 poison, !709, !DIExpression(), !731)
  %135 = add i64 %108, -1, !dbg !838
    #dbg_value(i64 %135, !700, !DIExpression(), !731)
    #dbg_value(ptr %54, !839, !DIExpression(), !846)
    #dbg_value(i32 %46, !844, !DIExpression(), !846)
    #dbg_value(i32 %110, !845, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !846)
  %136 = call i32 @llvm.smax.i32(i32 %110, i32 %46), !dbg !848
  %137 = sext i32 %136 to i64, !dbg !850
  br label %138, !dbg !848

138:                                              ; preds = %141, %131
  %139 = phi i64 [ %142, %141 ], [ %113, %131 ]
    #dbg_value(i64 %139, !845, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !846)
  %140 = icmp eq i64 %139, %137, !dbg !850
  br i1 %140, label %160, label %141, !dbg !852, !llvm.loop !853

141:                                              ; preds = %138
  %142 = add nsw i64 %139, 1, !dbg !854
    #dbg_value(i64 %142, !845, !DIExpression(), !846)
  %143 = getelementptr inbounds i32, ptr %54, i64 %142, !dbg !855
  %144 = load i32, ptr %143, align 4, !dbg !855, !tbaa !420
  %145 = icmp sgt i32 %144, -1, !dbg !857
  br i1 %145, label %146, label %138, !dbg !858, !llvm.loop !859

146:                                              ; preds = %141
  %147 = trunc nsw i64 %142 to i32
  br label %160, !dbg !862, !llvm.loop !863

148:                                              ; preds = %117
  %149 = tail call ptr @__errno_location() #19, !dbg !864
  %150 = load i32, ptr %149, align 4, !dbg !864, !tbaa !420
  %151 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #16, !dbg !867
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %150, ptr noundef %151) #16, !dbg !868
    #dbg_value(i8 0, !709, !DIExpression(), !731)
  br label %152, !dbg !869

152:                                              ; preds = %148, %117, %112, %107
  %153 = phi i1 [ %109, %107 ], [ %109, %112 ], [ false, %148 ], [ %109, %117 ], !dbg !731
    #dbg_value(i64 %108, !700, !DIExpression(), !731)
    #dbg_value(i8 poison, !709, !DIExpression(), !731)
    #dbg_value(i32 %110, !708, !DIExpression(), !731)
  %154 = call i64 @read(i32 noundef 0, ptr noundef nonnull %3, i64 noundef 8192) #16, !dbg !870
    #dbg_value(i64 %154, !704, !DIExpression(), !731)
  %155 = icmp slt i64 %154, 0, !dbg !871
  br i1 %155, label %156, label %166, !dbg !873

156:                                              ; preds = %152
  %157 = tail call ptr @__errno_location() #19, !dbg !874
  %158 = load i32, ptr %157, align 4, !dbg !874, !tbaa !420
  %159 = icmp eq i32 %158, 4, !dbg !875
  br i1 %159, label %160, label %220, !dbg !876

160:                                              ; preds = %138, %168, %156, %146, %106
  %161 = phi i64 [ %154, %168 ], [ %154, %156 ], [ %154, %106 ], [ %111, %146 ], [ %111, %138 ]
  %162 = phi i32 [ %110, %168 ], [ %110, %156 ], [ %215, %106 ], [ %147, %146 ], [ -1, %138 ]
  %163 = phi i1 [ %153, %168 ], [ %153, %156 ], [ %216, %106 ], [ %134, %146 ], [ %134, %138 ]
  %164 = phi i64 [ %108, %168 ], [ %108, %156 ], [ %217, %106 ], [ %135, %146 ], [ %135, %138 ]
    #dbg_value(i64 %164, !700, !DIExpression(), !731)
    #dbg_value(i8 poison, !709, !DIExpression(), !731)
    #dbg_value(i32 %162, !708, !DIExpression(), !731)
    #dbg_value(i64 %161, !704, !DIExpression(), !731)
  %165 = icmp eq i64 %164, 0, !dbg !877
  br i1 %165, label %220, label %107, !dbg !878, !llvm.loop !879

166:                                              ; preds = %152
  %167 = icmp eq i64 %154, 0, !dbg !880
  br i1 %167, label %228, label %168, !dbg !882

168:                                              ; preds = %166
    #dbg_value(i32 0, !724, !DIExpression(), !883)
    #dbg_value(i64 %108, !700, !DIExpression(), !731)
    #dbg_value(i8 poison, !709, !DIExpression(), !731)
    #dbg_value(i32 %110, !708, !DIExpression(), !731)
  br i1 %70, label %160, label %169, !dbg !884, !llvm.loop !885

169:                                              ; preds = %168
  br label %170, !dbg !884, !llvm.loop !886

170:                                              ; preds = %214, %169
  %171 = phi i64 [ 0, %169 ], [ %218, %214 ]
  %172 = phi i64 [ %108, %169 ], [ %217, %214 ]
  %173 = phi i1 [ %153, %169 ], [ %216, %214 ]
  %174 = phi i32 [ %110, %169 ], [ %215, %214 ]
    #dbg_value(i64 %171, !724, !DIExpression(), !883)
    #dbg_value(i64 %172, !700, !DIExpression(), !731)
    #dbg_value(i32 %174, !708, !DIExpression(), !731)
  %175 = getelementptr inbounds nuw i32, ptr %54, i64 %171, !dbg !887
  %176 = load i32, ptr %175, align 4, !dbg !887, !tbaa !420
  %177 = icmp sgt i32 %176, -1, !dbg !890
  br i1 %177, label %178, label %214, !dbg !891

178:                                              ; preds = %170
  %179 = call zeroext i1 @write_wait(i32 noundef %176, ptr noundef nonnull %3, i64 noundef %154) #16, !dbg !892
  br i1 %179, label %214, label %180, !dbg !893

180:                                              ; preds = %178
    #dbg_value(ptr %54, !812, !DIExpression(), !894)
    #dbg_value(ptr %61, !817, !DIExpression(), !894)
    #dbg_value(i64 %171, !818, !DIExpression(), !894)
  %181 = tail call ptr @__errno_location() #19, !dbg !898
  %182 = load i32, ptr %181, align 4, !dbg !899, !tbaa !420
    #dbg_value(i32 %182, !819, !DIExpression(), !894)
  %183 = freeze i32 %182, !dbg !900
  %184 = icmp eq i32 %183, 32, !dbg !900
  %185 = load i32, ptr @output_error, align 4
    #dbg_value(i1 poison, !820, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !894)
  br i1 %184, label %186, label %187, !dbg !901

186:                                              ; preds = %180
  switch i32 %185, label %194 [
    i32 3, label %187
    i32 1, label %187
  ], !dbg !902

187:                                              ; preds = %186, %186, %180
  %188 = add i32 %185, -3, !dbg !903
  %189 = icmp ult i32 %188, 2, !dbg !903
  %190 = zext i1 %189 to i32, !dbg !904
  %191 = getelementptr inbounds nuw ptr, ptr %61, i64 %171, !dbg !905
  %192 = load ptr, ptr %191, align 8, !dbg !905, !tbaa !436
  %193 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %192) #16, !dbg !906
  call void (i32, i32, ptr, ...) @error(i32 noundef %190, i32 noundef %183, ptr noundef nonnull @.str.20, ptr noundef %193) #16, !dbg !907
    #dbg_value(i32 %190, !821, !DIExpression(), !908)
  br label %194, !dbg !909

194:                                              ; preds = %187, %186
  %195 = and i32 %185, -3, !dbg !909
  %196 = icmp ne i32 %195, 1, !dbg !909
  %197 = select i1 %184, i1 %196, i1 false, !dbg !910
    #dbg_value(i1 %197, !820, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !894)
  store i32 -1, ptr %175, align 4, !dbg !911, !tbaa !420
  %198 = select i1 %197, i1 %173, i1 false, !dbg !912
    #dbg_value(i8 poison, !709, !DIExpression(), !731)
  %199 = add i64 %172, -1, !dbg !913
    #dbg_value(i64 %199, !700, !DIExpression(), !731)
  %200 = zext i32 %174 to i64, !dbg !914
  %201 = icmp eq i64 %171, %200, !dbg !914
  br i1 %201, label %202, label %214, !dbg !916

202:                                              ; preds = %194
    #dbg_value(ptr %54, !839, !DIExpression(), !917)
    #dbg_value(i32 %46, !844, !DIExpression(), !917)
    #dbg_value(i32 %174, !845, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !917)
  %203 = sext i32 %174 to i64, !dbg !919
  br label %204, !dbg !919

204:                                              ; preds = %207, %202
  %205 = phi i64 [ %208, %207 ], [ %203, %202 ]
    #dbg_value(i64 %205, !845, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !917)
  %206 = icmp eq i64 %205, %71, !dbg !920
  br i1 %206, label %214, label %207, !dbg !921

207:                                              ; preds = %204
  %208 = add nsw i64 %205, 1, !dbg !922
    #dbg_value(i64 %208, !845, !DIExpression(), !917)
  %209 = getelementptr inbounds i32, ptr %54, i64 %208, !dbg !923
  %210 = load i32, ptr %209, align 4, !dbg !923, !tbaa !420
  %211 = icmp sgt i32 %210, -1, !dbg !924
  br i1 %211, label %212, label %204, !dbg !925, !llvm.loop !926

212:                                              ; preds = %207
  %213 = trunc nsw i64 %208 to i32
  br label %214, !dbg !929

214:                                              ; preds = %204, %212, %194, %178, %170
  %215 = phi i32 [ %174, %178 ], [ %174, %170 ], [ %174, %194 ], [ %213, %212 ], [ -1, %204 ], !dbg !930
  %216 = phi i1 [ %173, %178 ], [ %173, %170 ], [ %198, %194 ], [ %198, %212 ], [ %198, %204 ], !dbg !930
  %217 = phi i64 [ %172, %178 ], [ %172, %170 ], [ %199, %194 ], [ %199, %212 ], [ %199, %204 ], !dbg !930
    #dbg_value(i64 %217, !700, !DIExpression(), !731)
    #dbg_value(i8 poison, !709, !DIExpression(), !731)
    #dbg_value(i32 %215, !708, !DIExpression(), !731)
  %218 = add nuw nsw i64 %171, 1, !dbg !931
    #dbg_value(i64 %218, !724, !DIExpression(), !883)
  %219 = icmp eq i64 %218, %64, !dbg !932
  br i1 %219, label %106, label %170, !dbg !793, !llvm.loop !933

220:                                              ; preds = %160, %156
  %221 = phi i64 [ %161, %160 ], [ %154, %156 ]
  %222 = phi i1 [ %163, %160 ], [ %153, %156 ]
  %223 = icmp eq i64 %221, -1, !dbg !936
    #dbg_value(i8 poison, !709, !DIExpression(), !731)
    #dbg_value(i64 poison, !704, !DIExpression(), !731)
  br i1 %223, label %224, label %228, !dbg !938

224:                                              ; preds = %220
  %225 = tail call ptr @__errno_location() #19, !dbg !939
  %226 = load i32, ptr %225, align 4, !dbg !939, !tbaa !420
  %227 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #16, !dbg !941
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %226, ptr noundef %227) #16, !dbg !942
    #dbg_value(i8 0, !709, !DIExpression(), !731)
  br label %228, !dbg !943

228:                                              ; preds = %166, %224, %220, %65
  %229 = phi i1 [ false, %224 ], [ %222, %220 ], [ %102, %65 ], [ %153, %166 ], !dbg !731
    #dbg_value(i8 poison, !709, !DIExpression(), !731)
    #dbg_value(i32 1, !726, !DIExpression(), !944)
  br i1 %63, label %232, label %230, !dbg !945

230:                                              ; preds = %228
  %231 = zext i32 %52 to i64, !dbg !946
  br label %234, !dbg !948

232:                                              ; preds = %249, %228
  %233 = phi i1 [ %229, %228 ], [ %250, %249 ], !dbg !731
  call void @free(ptr noundef nonnull %54) #16, !dbg !949
  br i1 %44, label %253, label %254, !dbg !950

234:                                              ; preds = %249, %230
  %235 = phi i64 [ 1, %230 ], [ %251, %249 ]
  %236 = phi i1 [ %229, %230 ], [ %250, %249 ]
    #dbg_value(i64 %235, !726, !DIExpression(), !944)
  %237 = getelementptr inbounds nuw i32, ptr %54, i64 %235, !dbg !952
  %238 = load i32, ptr %237, align 4, !dbg !952, !tbaa !420
  %239 = icmp sgt i32 %238, -1, !dbg !954
  br i1 %239, label %240, label %249, !dbg !955

240:                                              ; preds = %234
  %241 = call i32 @close(i32 noundef %238) #16, !dbg !956
  %242 = icmp slt i32 %241, 0, !dbg !957
  br i1 %242, label %243, label %249, !dbg !958

243:                                              ; preds = %240
  %244 = tail call ptr @__errno_location() #19, !dbg !959
  %245 = load i32, ptr %244, align 4, !dbg !959, !tbaa !420
  %246 = getelementptr inbounds nuw ptr, ptr %61, i64 %235, !dbg !961
  %247 = load ptr, ptr %246, align 8, !dbg !961, !tbaa !436
  %248 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %247) #16, !dbg !962
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %245, ptr noundef nonnull @.str.20, ptr noundef %248) #16, !dbg !963
    #dbg_value(i8 0, !709, !DIExpression(), !731)
  br label %249, !dbg !964

249:                                              ; preds = %243, %240, %234
  %250 = phi i1 [ false, %243 ], [ %236, %240 ], [ %236, %234 ], !dbg !731
    #dbg_value(i8 poison, !709, !DIExpression(), !731)
  %251 = add nuw nsw i64 %235, 1, !dbg !965
    #dbg_value(i64 %251, !726, !DIExpression(), !944)
  %252 = icmp eq i64 %251, %231, !dbg !946
  br i1 %252, label %232, label %234, !dbg !966, !llvm.loop !967

253:                                              ; preds = %232
  call void @free(ptr noundef %60) #16, !dbg !969
  br label %254, !dbg !969

254:                                              ; preds = %232, %253
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !dbg !970
    #dbg_value(i1 %233, !643, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !645)
  %255 = call i32 @close(i32 noundef 0) #16, !dbg !971
  %256 = icmp eq i32 %255, 0, !dbg !973
  br i1 %256, label %261, label %257, !dbg !974

257:                                              ; preds = %254
  %258 = tail call ptr @__errno_location() #19, !dbg !975
  %259 = load i32, ptr %258, align 4, !dbg !975, !tbaa !420
  %260 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #16, !dbg !976
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %259, ptr noundef nonnull @.str.20, ptr noundef %260) #16, !dbg !977
  unreachable, !dbg !977

261:                                              ; preds = %254
  %262 = xor i1 %233, true, !dbg !978
  %263 = zext i1 %262 to i32, !dbg !978
  ret i32 %263, !dbg !979
}

declare !dbg !980 void @set_program_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !982 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !986 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !989 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !992 i32 @atexit(ptr noundef) local_unnamed_addr #3

declare void @close_stdout() #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nounwind
declare !dbg !999 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1005 i64 @__xargmatch_internal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare !dbg !1013 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !1017 ptr @proper_name_lite(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !1021 ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1024 zeroext i1 @iopoll_input_ok(i32 noundef) local_unnamed_addr #1

declare !dbg !1028 i32 @close(i32 noundef) local_unnamed_addr #1

declare !dbg !1032 void @error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1036 ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1040 noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1041 i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1045 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1048 ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1054 i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare !dbg !1055 noundef i64 @fwrite_unlocked(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1059 i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1062 i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

declare !dbg !1065 void @emit_bug_reporting_address() local_unnamed_addr #1

declare !dbg !1066 void @fadvise(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare !dbg !1070 noalias nonnull ptr @xnmalloc(i64 noundef, i64 noundef) local_unnamed_addr #11

declare !dbg !1074 zeroext i1 @iopoll_output_ok(i32 noundef) local_unnamed_addr #1

declare !dbg !1075 i32 @open_safer(ptr noundef, i32 noundef, ...) local_unnamed_addr #1

declare !dbg !1079 ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1082 i32 @iopoll(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

declare !dbg !1085 zeroext i1 @write_wait(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1088 void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

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
attributes #11 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind willreturn memory(none) }
attributes #20 = { noreturn }
attributes #21 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!73}
!llvm.module.flags = !{!412, !413, !414, !415, !416, !417, !418}
!llvm.ident = !{!419}
!llvm.errno.tbaa = !{!420}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/tee.c", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "779a9b4a9ee952ca6b502dccb9bbcd65")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 65)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 4)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 69)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 61)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !29, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 664, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 83)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 50)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 62)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4688, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 586)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 1)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 10)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 24)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 140, type: !19, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!72 = distinct !DIGlobalVariable(name: "append", scope: !73, file: !2, line: 43, type: !180, isLocal: true, isDefinition: true)
!73 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !74, retainedTypes: !127, globals: !144, splitDebugInlining: false, nameTableKind: None)
!74 = !{!75, !83, !89, !104, !113}
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "output_error", file: !2, line: 48, baseType: !76, size: 32, elements: !77)
!76 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!77 = !{!78, !79, !80, !81, !82}
!78 = !DIEnumerator(name: "output_error_sigpipe", value: 0)
!79 = !DIEnumerator(name: "output_error_warn", value: 1)
!80 = !DIEnumerator(name: "output_error_warn_nopipe", value: 2)
!81 = !DIEnumerator(name: "output_error_exit", value: 3)
!82 = !DIEnumerator(name: "output_error_exit_nopipe", value: 4)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !84, line: 356, baseType: !85, size: 32, elements: !86)
!84 = !DIFile(filename: "src/system.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "6a9c30566098770bfb4561b49834f302")
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !{!87, !88}
!87 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!88 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !90, line: 46, baseType: !76, size: 32, elements: !91)
!90 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103}
!92 = !DIEnumerator(name: "_ISupper", value: 256)
!93 = !DIEnumerator(name: "_ISlower", value: 512)
!94 = !DIEnumerator(name: "_ISalpha", value: 1024)
!95 = !DIEnumerator(name: "_ISdigit", value: 2048)
!96 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!97 = !DIEnumerator(name: "_ISspace", value: 8192)
!98 = !DIEnumerator(name: "_ISprint", value: 16384)
!99 = !DIEnumerator(name: "_ISgraph", value: 32768)
!100 = !DIEnumerator(name: "_ISblank", value: 1)
!101 = !DIEnumerator(name: "_IScntrl", value: 2)
!102 = !DIEnumerator(name: "_ISpunct", value: 4)
!103 = !DIEnumerator(name: "_ISalnum", value: 8)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !105, line: 44, baseType: !76, size: 32, elements: !106)
!105 = !DIFile(filename: "./lib/fadvise.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!106 = !{!107, !108, !109, !110, !111, !112}
!107 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!108 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!109 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!110 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!111 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!112 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !114, line: 42, baseType: !76, size: 32, elements: !115)
!114 = !DIFile(filename: "./lib/quotearg.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126}
!116 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!117 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!118 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!119 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!120 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!121 = !DIEnumerator(name: "c_quoting_style", value: 5)
!122 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!123 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!124 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!125 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!126 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!127 = !{!128, !130, !131, !132, !85, !137, !138, !141, !143}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !133, line: 72, baseType: !134)
!133 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !85}
!137 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !139, line: 18, baseType: !140)
!139 = !DIFile(filename: "/usr/lib/llvm-22/lib/clang/22/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!140 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!143 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!144 = !{!0, !7, !12, !17, !22, !27, !32, !34, !39, !44, !49, !54, !59, !64, !69, !145, !150, !155, !160, !165, !170, !175, !177, !178, !181, !183, !262, !267, !269, !271, !276, !281, !283, !285, !287, !289, !291, !293, !298, !303, !305, !307, !309, !311, !313, !315, !320, !325, !327, !329, !331, !333, !335, !337, !339, !344, !346, !351, !356, !358, !360, !365, !370, !372, !374, !386, !390, !392, !394, !396, !398, !402, !404, !406}
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 15)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !152, isLocal: true, isDefinition: true)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 14)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 12)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 20)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 16)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !172, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 3)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !147, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "ignore_interrupts", scope: !73, file: !2, line: 46, type: !180, isLocal: true, isDefinition: true)
!180 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "output_error", scope: !73, file: !2, line: 57, type: !75, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !185, file: !84, line: 594, type: !85, isLocal: true, isDefinition: true)
!185 = distinct !DISubprogram(name: "oputs_", scope: !84, file: !84, line: 592, type: !186, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !188, keyInstructions: true)
!186 = !DISubroutineType(cc: DW_CC_nocall, types: !187)
!187 = !{null, !141, !141}
!188 = !{!189, !190, !191, !194, !195, !196, !197, !201, !202, !203, !204, !206, !256, !257, !258, !260, !261}
!189 = !DILocalVariable(name: "program", arg: 1, scope: !185, file: !84, line: 592, type: !141)
!190 = !DILocalVariable(name: "option", arg: 2, scope: !185, file: !84, line: 592, type: !141)
!191 = !DILocalVariable(name: "term", scope: !192, file: !84, line: 604, type: !141)
!192 = distinct !DILexicalBlock(scope: !193, file: !84, line: 601, column: 5)
!193 = distinct !DILexicalBlock(scope: !185, file: !84, line: 600, column: 7)
!194 = !DILocalVariable(name: "double_space", scope: !185, file: !84, line: 613, type: !180)
!195 = !DILocalVariable(name: "first_word", scope: !185, file: !84, line: 614, type: !141)
!196 = !DILocalVariable(name: "option_text", scope: !185, file: !84, line: 615, type: !141)
!197 = !DILocalVariable(name: "s", scope: !198, file: !84, line: 627, type: !141)
!198 = distinct !DILexicalBlock(scope: !199, file: !84, line: 624, column: 5)
!199 = distinct !DILexicalBlock(scope: !200, file: !84, line: 623, column: 12)
!200 = distinct !DILexicalBlock(scope: !185, file: !84, line: 616, column: 7)
!201 = !DILocalVariable(name: "spaces", scope: !198, file: !84, line: 628, type: !138)
!202 = !DILocalVariable(name: "anchor_len", scope: !185, file: !84, line: 639, type: !138)
!203 = !DILocalVariable(name: "desc_text", scope: !185, file: !84, line: 644, type: !141)
!204 = !DILocalVariable(name: "__ptr", scope: !205, file: !84, line: 663, type: !141)
!205 = distinct !DILexicalBlock(scope: !185, file: !84, line: 663, column: 3)
!206 = !DILocalVariable(name: "__stream", scope: !205, file: !84, line: 663, type: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !209, line: 7, baseType: !210)
!209 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !211, line: 49, size: 1728, elements: !212)
!211 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!212 = !{!213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !228, !230, !231, !232, !236, !237, !239, !240, !243, !245, !248, !251, !252, !253, !254, !255}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !210, file: !211, line: 51, baseType: !85, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !210, file: !211, line: 54, baseType: !130, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !210, file: !211, line: 55, baseType: !130, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !210, file: !211, line: 56, baseType: !130, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !210, file: !211, line: 57, baseType: !130, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !210, file: !211, line: 58, baseType: !130, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !210, file: !211, line: 59, baseType: !130, size: 64, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !210, file: !211, line: 60, baseType: !130, size: 64, offset: 448)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !210, file: !211, line: 61, baseType: !130, size: 64, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !210, file: !211, line: 64, baseType: !130, size: 64, offset: 576)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !210, file: !211, line: 65, baseType: !130, size: 64, offset: 640)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !210, file: !211, line: 66, baseType: !130, size: 64, offset: 704)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !210, file: !211, line: 68, baseType: !226, size: 64, offset: 768)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !211, line: 36, flags: DIFlagFwdDecl)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !210, file: !211, line: 70, baseType: !229, size: 64, offset: 832)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !210, file: !211, line: 72, baseType: !85, size: 32, offset: 896)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !210, file: !211, line: 73, baseType: !85, size: 32, offset: 928)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !210, file: !211, line: 74, baseType: !233, size: 64, offset: 960)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !234, line: 152, baseType: !235)
!234 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!235 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !210, file: !211, line: 77, baseType: !137, size: 16, offset: 1024)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !210, file: !211, line: 78, baseType: !238, size: 8, offset: 1040)
!238 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !210, file: !211, line: 79, baseType: !56, size: 8, offset: 1048)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !210, file: !211, line: 81, baseType: !241, size: 64, offset: 1088)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !211, line: 43, baseType: null)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !210, file: !211, line: 89, baseType: !244, size: 64, offset: 1152)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !234, line: 153, baseType: !235)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !210, file: !211, line: 91, baseType: !246, size: 64, offset: 1216)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !211, line: 37, flags: DIFlagFwdDecl)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !210, file: !211, line: 92, baseType: !249, size: 64, offset: 1280)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !211, line: 38, flags: DIFlagFwdDecl)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !210, file: !211, line: 93, baseType: !229, size: 64, offset: 1344)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !210, file: !211, line: 94, baseType: !131, size: 64, offset: 1408)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !210, file: !211, line: 95, baseType: !138, size: 64, offset: 1472)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !210, file: !211, line: 96, baseType: !85, size: 32, offset: 1536)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !210, file: !211, line: 98, baseType: !162, size: 160, offset: 1568)
!256 = !DILocalVariable(name: "__cnt", scope: !205, file: !84, line: 663, type: !138)
!257 = !DILocalVariable(name: "url_program", scope: !185, file: !84, line: 667, type: !141)
!258 = !DILocalVariable(name: "__ptr", scope: !259, file: !84, line: 705, type: !141)
!259 = distinct !DILexicalBlock(scope: !185, file: !84, line: 705, column: 3)
!260 = !DILocalVariable(name: "__stream", scope: !259, file: !84, line: 705, type: !207)
!261 = !DILocalVariable(name: "__cnt", scope: !259, file: !84, line: 705, type: !138)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !84, line: 604, type: !264, isLocal: true, isDefinition: true)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 5)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !84, line: 605, type: !264, isLocal: true, isDefinition: true)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !84, line: 614, type: !19, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !84, line: 639, type: !273, isLocal: true, isDefinition: true)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 6)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !84, line: 667, type: !278, isLocal: true, isDefinition: true)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 2)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !84, line: 667, type: !264, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !84, line: 668, type: !19, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !84, line: 668, type: !172, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !84, line: 669, type: !264, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !84, line: 670, type: !273, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !84, line: 670, type: !273, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !84, line: 671, type: !295, isLocal: true, isDefinition: true)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 7)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !84, line: 672, type: !300, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 8)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !84, line: 673, type: !61, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !84, line: 674, type: !61, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !84, line: 675, type: !61, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !84, line: 676, type: !61, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !84, line: 682, type: !295, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !84, line: 683, type: !61, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !84, line: 688, type: !317, isLocal: true, isDefinition: true)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 17)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !84, line: 688, type: !322, isLocal: true, isDefinition: true)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 40)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !84, line: 695, type: !147, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !84, line: 695, type: !29, isLocal: true, isDefinition: true)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !84, line: 698, type: !172, isLocal: true, isDefinition: true)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !84, line: 702, type: !264, isLocal: true, isDefinition: true)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !84, line: 707, type: !264, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !84, line: 710, type: !300, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !84, line: 858, type: !167, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !84, line: 859, type: !341, isLocal: true, isDefinition: true)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 22)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !84, line: 860, type: !147, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !84, line: 882, type: !348, isLocal: true, isDefinition: true)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 27)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !84, line: 884, type: !353, isLocal: true, isDefinition: true)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 51)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !84, line: 885, type: !157, isLocal: true, isDefinition: true)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !295, isLocal: true, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !362, isLocal: true, isDefinition: true)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 18)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !367, isLocal: true, isDefinition: true)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 13)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !264, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !300, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "long_options", scope: !73, file: !2, line: 59, type: !376, isLocal: true, isDefinition: true)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 1536, elements: !274)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !379, line: 50, size: 256, elements: !380)
!379 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!380 = !{!381, !382, !383, !385}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !378, file: !379, line: 52, baseType: !141, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !378, file: !379, line: 55, baseType: !85, size: 32, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !378, file: !379, line: 56, baseType: !384, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !378, file: !379, line: 57, baseType: !85, size: 32, offset: 192)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(name: "output_error_types", scope: !73, file: !2, line: 73, type: !388, isLocal: true, isDefinition: true)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 128, elements: !20)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !264, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !157, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !264, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !157, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(name: "output_error_args", scope: !73, file: !2, line: 69, type: !400, isLocal: true, isDefinition: true)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 320, elements: !265)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !2, line: 256, type: !167, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !2, line: 299, type: !367, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !2, line: 326, type: !408, isLocal: true, isDefinition: true)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 11)
!411 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!412 = !{i32 7, !"Dwarf Version", i32 5}
!413 = !{i32 2, !"Debug Info Version", i32 3}
!414 = !{i32 1, !"wchar_size", i32 4}
!415 = !{i32 8, !"PIC Level", i32 2}
!416 = !{i32 7, !"PIE Level", i32 2}
!417 = !{i32 7, !"uwtable", i32 2}
!418 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!419 = !{!"Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)"}
!420 = !{!421, !421, i64 0}
!421 = !{!"int", !422, i64 0}
!422 = !{!"omnipotent char", !423, i64 0}
!423 = !{!"Simple C/C++ TBAA"}
!424 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 81, type: !135, scopeLine: 82, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !425, keyInstructions: true)
!425 = !{!426}
!426 = !DILocalVariable(name: "status", arg: 1, scope: !424, file: !2, line: 81, type: !85)
!427 = !DILocation(line: 0, scope: !424)
!428 = !DILocation(line: 83, column: 14, scope: !429, atomGroup: 1, atomRank: 2)
!429 = distinct !DILexicalBlock(scope: !424, file: !2, line: 83, column: 7)
!430 = !DILocation(line: 83, column: 14, scope: !429, atomGroup: 1, atomRank: 1)
!431 = !DILocation(line: 84, column: 5, scope: !432)
!432 = distinct !DILexicalBlock(scope: !429, file: !2, line: 84, column: 5)
!433 = !{!434, !434, i64 0}
!434 = !{!"p1 _ZTS8_IO_FILE", !435, i64 0}
!435 = !{!"any pointer", !422, i64 0}
!436 = !{!437, !437, i64 0}
!437 = !{!"p1 omnipotent char", !435, i64 0}
!438 = !DILocation(line: 87, column: 15, scope: !439)
!439 = distinct !DILexicalBlock(scope: !429, file: !2, line: 86, column: 5)
!440 = !DILocation(line: 87, column: 55, scope: !439)
!441 = !DILocation(line: 87, column: 7, scope: !439)
!442 = !DILocation(line: 88, column: 14, scope: !439)
!443 = !DILocation(line: 91, column: 5, scope: !439)
!444 = !DILocation(line: 88, column: 7, scope: !439)
!445 = !DILocation(line: 92, column: 14, scope: !439)
!446 = !DILocation(line: 92, column: 7, scope: !439)
!447 = !DILocation(line: 96, column: 14, scope: !439)
!448 = !DILocation(line: 96, column: 7, scope: !439)
!449 = !DILocation(line: 100, column: 14, scope: !439)
!450 = !DILocation(line: 100, column: 7, scope: !439)
!451 = !DILocation(line: 104, column: 14, scope: !439)
!452 = !DILocation(line: 104, column: 7, scope: !439)
!453 = !DILocation(line: 108, column: 14, scope: !439)
!454 = !DILocation(line: 108, column: 7, scope: !439)
!455 = !DILocation(line: 109, column: 14, scope: !439)
!456 = !DILocation(line: 109, column: 7, scope: !439)
!457 = !DILocation(line: 110, column: 14, scope: !439)
!458 = !DILocation(line: 122, column: 5, scope: !439)
!459 = !DILocation(line: 110, column: 7, scope: !439)
!460 = !DILocalVariable(name: "program", arg: 1, scope: !461, file: !84, line: 855, type: !141)
!461 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !84, file: !84, line: 855, type: !462, scopeLine: 856, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !464, keyInstructions: true)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !141}
!464 = !{!460, !465, !472, !473, !475}
!465 = !DILocalVariable(name: "infomap", scope: !461, file: !84, line: 857, type: !466)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 896, elements: !296)
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !461, file: !84, line: 857, size: 128, elements: !469)
!469 = !{!470, !471}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !468, file: !84, line: 857, baseType: !141, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !468, file: !84, line: 857, baseType: !141, size: 64, offset: 64)
!472 = !DILocalVariable(name: "node", scope: !461, file: !84, line: 867, type: !141)
!473 = !DILocalVariable(name: "map_prog", scope: !461, file: !84, line: 868, type: !474)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!475 = !DILocalVariable(name: "url_program", scope: !461, file: !84, line: 881, type: !141)
!476 = !DILocation(line: 0, scope: !461, inlinedAt: !477)
!477 = distinct !DILocation(line: 123, column: 7, scope: !439)
!478 = !DILocation(line: 876, column: 3, scope: !461, inlinedAt: !477)
!479 = !DILocation(line: 882, column: 11, scope: !461, inlinedAt: !477)
!480 = !DILocation(line: 882, column: 3, scope: !461, inlinedAt: !477)
!481 = !DILocation(line: 884, column: 11, scope: !461, inlinedAt: !477)
!482 = !DILocation(line: 884, column: 3, scope: !461, inlinedAt: !477)
!483 = !DILocation(line: 125, column: 3, scope: !424)
!484 = !DISubprogram(name: "__fprintf_chk", scope: !485, file: !485, line: 93, type: !486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!485 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!486 = !DISubroutineType(types: !487)
!487 = !{!85, !488, !85, !489, null}
!488 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !207)
!489 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !141)
!490 = !DISubprogram(name: "dcgettext", scope: !491, file: !491, line: 51, type: !492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!491 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!492 = !DISubroutineType(types: !493)
!493 = !{!130, !141, !141, !85}
!494 = !DISubprogram(name: "__printf__", linkageName: "rpl_printf", scope: !495, file: !495, line: 1944, type: !496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!495 = !DIFile(filename: "./lib/stdio.h", directory: "/workspaces/Thesis/.build/coreutils")
!496 = !DISubroutineType(types: !497)
!497 = !{!85, !489, null}
!498 = !DISubprogram(name: "fputs_unlocked", scope: !499, file: !499, line: 691, type: !500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!499 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!500 = !DISubroutineType(types: !501)
!501 = !{!85, !489, !488}
!502 = !DILocation(line: 0, scope: !185)
!503 = !DILocation(line: 600, column: 7, scope: !193)
!504 = !DILocation(line: 600, column: 19, scope: !193, atomGroup: 1, atomRank: 2)
!505 = !DILocation(line: 600, column: 19, scope: !193, atomGroup: 1, atomRank: 1)
!506 = !DILocation(line: 604, column: 26, scope: !192, atomGroup: 2, atomRank: 2)
!507 = !DILocation(line: 0, scope: !192)
!508 = !DILocation(line: 605, column: 23, scope: !192, atomGroup: 4, atomRank: 2)
!509 = !DILocation(line: 605, column: 28, scope: !192, atomGroup: 4, atomRank: 1)
!510 = !DILocation(line: 605, column: 32, scope: !192)
!511 = !{!422, !422, i64 0}
!512 = !DILocation(line: 605, column: 32, scope: !192, atomGroup: 5, atomRank: 2)
!513 = !DILocation(line: 605, column: 38, scope: !192, atomGroup: 5, atomRank: 1)
!514 = !DILocalVariable(name: "__s1", arg: 1, scope: !515, file: !516, line: 1368, type: !141)
!515 = distinct !DISubprogram(name: "streq", scope: !516, file: !516, line: 1368, type: !517, scopeLine: 1369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !519, keyInstructions: true)
!516 = !DIFile(filename: "./lib/string.h", directory: "/workspaces/Thesis/.build/coreutils")
!517 = !DISubroutineType(types: !518)
!518 = !{!180, !141, !141}
!519 = !{!514, !520}
!520 = !DILocalVariable(name: "__s2", arg: 2, scope: !515, file: !516, line: 1368, type: !141)
!521 = !DILocation(line: 0, scope: !515, inlinedAt: !522)
!522 = distinct !DILocation(line: 605, column: 41, scope: !192)
!523 = !DILocation(line: 1370, column: 11, scope: !515, inlinedAt: !522)
!524 = !DILocation(line: 1370, column: 10, scope: !515, inlinedAt: !522)
!525 = !DILocation(line: 605, column: 38, scope: !192, atomGroup: 3, atomRank: 2)
!526 = !DILocation(line: 605, column: 38, scope: !192)
!527 = !DILocation(line: 605, column: 19, scope: !192, atomGroup: 3, atomRank: 1)
!528 = !DILocation(line: 606, column: 5, scope: !192)
!529 = !DILocation(line: 607, column: 7, scope: !530)
!530 = distinct !DILexicalBlock(scope: !185, file: !84, line: 607, column: 7)
!531 = !DILocation(line: 607, column: 7, scope: !530, atomGroup: 6, atomRank: 2)
!532 = !DILocation(line: 607, column: 7, scope: !530, atomGroup: 6, atomRank: 1)
!533 = !DILocation(line: 614, column: 37, scope: !185)
!534 = !DILocation(line: 614, column: 35, scope: !185, atomGroup: 9, atomRank: 2)
!535 = !DILocation(line: 615, column: 29, scope: !185, atomGroup: 10, atomRank: 2)
!536 = !DILocation(line: 616, column: 8, scope: !200, atomGroup: 11, atomRank: 2)
!537 = !DILocation(line: 616, column: 7, scope: !200, atomGroup: 11, atomRank: 1)
!538 = !DILocation(line: 0, scope: !198)
!539 = !DILocation(line: 623, column: 24, scope: !199, atomGroup: 14, atomRank: 1)
!540 = !{!541, !541, i64 0}
!541 = !{!"p1 short", !435, i64 0}
!542 = !DILocation(line: 629, column: 7, scope: !198, atomGroup: 90, atomRank: 1)
!543 = !DILocation(line: 630, column: 32, scope: !198, atomGroup: 20, atomRank: 2)
!544 = !DILocation(line: 630, column: 30, scope: !198)
!545 = !DILocation(line: 630, column: 21, scope: !198)
!546 = !{!547, !547, i64 0}
!547 = !{!"short", !422, i64 0}
!548 = !DILocation(line: 630, column: 19, scope: !198)
!549 = !DILocation(line: 630, column: 16, scope: !198, atomGroup: 19, atomRank: 2)
!550 = !DILocation(line: 629, column: 16, scope: !198, atomGroup: 17, atomRank: 2)
!551 = !DILocation(line: 629, column: 30, scope: !198, atomGroup: 17, atomRank: 1)
!552 = !DILocation(line: 629, column: 7, scope: !198, atomGroup: 18, atomRank: 1)
!553 = distinct !{!553, !554, !545, !555}
!554 = !DILocation(line: 629, column: 7, scope: !198)
!555 = !{!"llvm.loop.mustprogress"}
!556 = !DILocation(line: 631, column: 18, scope: !557, atomGroup: 21, atomRank: 2)
!557 = distinct !DILexicalBlock(scope: !198, file: !84, line: 631, column: 11)
!558 = !DILocation(line: 631, column: 18, scope: !557)
!559 = !DILocation(line: 639, column: 23, scope: !185, atomGroup: 24, atomRank: 2)
!560 = !DILocation(line: 644, column: 39, scope: !185, atomGroup: 25, atomRank: 2)
!561 = !DILocation(line: 645, column: 3, scope: !185)
!562 = !DILocation(line: 645, column: 10, scope: !185)
!563 = !DILocation(line: 645, column: 21, scope: !185, atomGroup: 26, atomRank: 1)
!564 = !DILocation(line: 647, column: 32, scope: !565)
!565 = distinct !DILexicalBlock(scope: !566, file: !84, line: 647, column: 11)
!566 = distinct !DILexicalBlock(scope: !185, file: !84, line: 646, column: 5)
!567 = !DILocation(line: 647, column: 49, scope: !565, atomGroup: 29, atomRank: 2)
!568 = !DILocation(line: 647, column: 29, scope: !565, atomGroup: 29, atomRank: 1)
!569 = !DILocation(line: 649, column: 11, scope: !570)
!570 = distinct !DILexicalBlock(scope: !566, file: !84, line: 649, column: 11)
!571 = !DILocation(line: 649, column: 11, scope: !570, atomGroup: 31, atomRank: 2)
!572 = !DILocation(line: 649, column: 11, scope: !570, atomGroup: 31, atomRank: 1)
!573 = !DILocation(line: 651, column: 26, scope: !574, atomGroup: 32, atomRank: 2)
!574 = distinct !DILexicalBlock(scope: !575, file: !84, line: 651, column: 15)
!575 = distinct !DILexicalBlock(scope: !570, file: !84, line: 650, column: 9)
!576 = !DILocation(line: 651, column: 34, scope: !574, atomGroup: 32, atomRank: 1)
!577 = !DILocation(line: 651, column: 46, scope: !574)
!578 = !DILocation(line: 651, column: 37, scope: !574)
!579 = !DILocation(line: 651, column: 37, scope: !574, atomGroup: 33, atomRank: 2)
!580 = !DILocation(line: 651, column: 34, scope: !574, atomGroup: 33, atomRank: 1)
!581 = !DILocation(line: 659, column: 16, scope: !566, atomGroup: 38, atomRank: 2)
!582 = distinct !{!582, !561, !583, !555}
!583 = !DILocation(line: 660, column: 5, scope: !185)
!584 = !DILocation(line: 663, column: 33, scope: !185)
!585 = !DILocation(line: 663, column: 43, scope: !185)
!586 = !DILocation(line: 663, column: 3, scope: !185)
!587 = !DILocation(line: 0, scope: !515, inlinedAt: !588)
!588 = distinct !DILocation(line: 667, column: 31, scope: !185)
!589 = !DILocation(line: 0, scope: !515, inlinedAt: !590)
!590 = distinct !DILocation(line: 668, column: 31, scope: !185)
!591 = !DILocation(line: 0, scope: !515, inlinedAt: !592)
!592 = distinct !DILocation(line: 669, column: 31, scope: !185)
!593 = !DILocation(line: 0, scope: !515, inlinedAt: !594)
!594 = distinct !DILocation(line: 670, column: 31, scope: !185)
!595 = !DILocation(line: 0, scope: !515, inlinedAt: !596)
!596 = distinct !DILocation(line: 671, column: 31, scope: !185)
!597 = !DILocation(line: 0, scope: !515, inlinedAt: !598)
!598 = distinct !DILocation(line: 672, column: 31, scope: !185)
!599 = !DILocation(line: 0, scope: !515, inlinedAt: !600)
!600 = distinct !DILocation(line: 673, column: 31, scope: !185)
!601 = !DILocation(line: 0, scope: !515, inlinedAt: !602)
!602 = distinct !DILocation(line: 674, column: 31, scope: !185)
!603 = !DILocation(line: 0, scope: !515, inlinedAt: !604)
!604 = distinct !DILocation(line: 675, column: 31, scope: !185)
!605 = !DILocation(line: 0, scope: !515, inlinedAt: !606)
!606 = distinct !DILocation(line: 676, column: 31, scope: !185)
!607 = !DILocation(line: 682, column: 7, scope: !608)
!608 = distinct !DILexicalBlock(scope: !185, file: !84, line: 682, column: 7)
!609 = !DILocation(line: 682, column: 7, scope: !608, atomGroup: 64, atomRank: 2)
!610 = !DILocation(line: 683, column: 7, scope: !608, atomGroup: 64, atomRank: 1)
!611 = !DILocation(line: 683, column: 10, scope: !608)
!612 = !DILocation(line: 683, column: 10, scope: !608, atomGroup: 65, atomRank: 2)
!613 = !DILocation(line: 683, column: 7, scope: !608, atomGroup: 65, atomRank: 1)
!614 = !DILocation(line: 689, column: 41, scope: !615)
!615 = distinct !DILexicalBlock(scope: !608, file: !84, line: 684, column: 5)
!616 = !DILocation(line: 688, column: 7, scope: !615)
!617 = !DILocation(line: 690, column: 5, scope: !615)
!618 = !DILocation(line: 696, column: 15, scope: !619)
!619 = distinct !DILexicalBlock(scope: !608, file: !84, line: 692, column: 5)
!620 = !DILocation(line: 695, column: 7, scope: !619)
!621 = !DILocation(line: 698, column: 20, scope: !185)
!622 = !DILocation(line: 698, column: 3, scope: !185)
!623 = !DILocation(line: 702, column: 21, scope: !185)
!624 = !DILocation(line: 702, column: 3, scope: !185)
!625 = !DILocation(line: 705, column: 36, scope: !185)
!626 = !DILocation(line: 705, column: 50, scope: !185)
!627 = !DILocation(line: 705, column: 3, scope: !185)
!628 = !DILocation(line: 707, column: 21, scope: !185)
!629 = !DILocation(line: 707, column: 3, scope: !185)
!630 = !DILocation(line: 710, column: 28, scope: !185)
!631 = !DILocation(line: 710, column: 3, scope: !185)
!632 = !DILocation(line: 715, column: 1, scope: !185)
!633 = !DILocation(line: 715, column: 1, scope: !185, atomGroup: 80, atomRank: 1)
!634 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 129, type: !635, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !638, keyInstructions: true)
!635 = !DISubroutineType(types: !636)
!636 = !{!85, !85, !637}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!638 = !{!639, !640, !641, !642, !643}
!639 = !DILocalVariable(name: "argc", arg: 1, scope: !634, file: !2, line: 129, type: !85)
!640 = !DILocalVariable(name: "argv", arg: 2, scope: !634, file: !2, line: 129, type: !637)
!641 = !DILocalVariable(name: "optc", scope: !634, file: !2, line: 139, type: !85)
!642 = !DILocalVariable(name: "pipe_check", scope: !634, file: !2, line: 177, type: !180)
!643 = !DILocalVariable(name: "ok", scope: !634, file: !2, line: 184, type: !180)
!644 = distinct !DIAssignID()
!645 = !DILocation(line: 0, scope: !634)
!646 = !DILocation(line: 132, column: 21, scope: !634)
!647 = !DILocation(line: 132, column: 3, scope: !634)
!648 = !DILocation(line: 133, column: 3, scope: !634)
!649 = !DILocation(line: 134, column: 3, scope: !634)
!650 = !DILocation(line: 135, column: 3, scope: !634)
!651 = !DILocation(line: 137, column: 3, scope: !634)
!652 = !DILocation(line: 140, column: 3, scope: !634)
!653 = !DILocation(line: 140, column: 18, scope: !634, atomGroup: 1, atomRank: 2)
!654 = !DILocation(line: 140, column: 3, scope: !634, atomGroup: 3, atomRank: 1)
!655 = !DILocation(line: 145, column: 18, scope: !656, atomGroup: 5, atomRank: 1)
!656 = distinct !DILexicalBlock(scope: !657, file: !2, line: 143, column: 9)
!657 = distinct !DILexicalBlock(scope: !634, file: !2, line: 141, column: 5)
!658 = !DILocation(line: 146, column: 11, scope: !656, atomGroup: 6, atomRank: 1)
!659 = !DILocation(line: 149, column: 29, scope: !656, atomGroup: 7, atomRank: 1)
!660 = !DILocation(line: 150, column: 11, scope: !656, atomGroup: 8, atomRank: 1)
!661 = !DILocation(line: 153, column: 15, scope: !662)
!662 = distinct !DILexicalBlock(scope: !656, file: !2, line: 153, column: 15)
!663 = !DILocation(line: 153, column: 15, scope: !662, atomGroup: 9, atomRank: 2)
!664 = !DILocation(line: 153, column: 15, scope: !662, atomGroup: 9, atomRank: 1)
!665 = !DILocation(line: 154, column: 28, scope: !662)
!666 = !{!435, !435, i64 0}
!667 = !DILocation(line: 154, column: 28, scope: !662, atomGroup: 10, atomRank: 2)
!668 = !DILocation(line: 154, column: 26, scope: !662, atomGroup: 10, atomRank: 1)
!669 = !DILocation(line: 154, column: 13, scope: !662)
!670 = distinct !{!670, !652, !671, !555}
!671 = !DILocation(line: 167, column: 5, scope: !634)
!672 = !DILocation(line: 157, column: 26, scope: !662, atomGroup: 11, atomRank: 1)
!673 = !DILocation(line: 160, column: 9, scope: !656)
!674 = !DILocation(line: 162, column: 9, scope: !656)
!675 = !DILocation(line: 162, column: 49, scope: !656)
!676 = !DILocation(line: 165, column: 11, scope: !656)
!677 = !DILocation(line: 169, column: 7, scope: !678, atomGroup: 13, atomRank: 3)
!678 = distinct !DILexicalBlock(scope: !634, file: !2, line: 169, column: 7)
!679 = !DILocation(line: 169, column: 7, scope: !678, atomGroup: 13, atomRank: 1)
!680 = !DILocation(line: 170, column: 5, scope: !678)
!681 = !DILocation(line: 172, column: 7, scope: !682)
!682 = distinct !DILexicalBlock(scope: !634, file: !2, line: 172, column: 7)
!683 = !DILocation(line: 172, column: 20, scope: !682, atomGroup: 14, atomRank: 2)
!684 = !DILocation(line: 172, column: 20, scope: !682, atomGroup: 14, atomRank: 1)
!685 = !DILocation(line: 173, column: 5, scope: !682)
!686 = !DILocation(line: 177, column: 23, scope: !634)
!687 = !DILocation(line: 178, column: 23, scope: !634, atomGroup: 16, atomRank: 1)
!688 = !DILocation(line: 179, column: 25, scope: !634)
!689 = !DILocation(line: 184, column: 31, scope: !634)
!690 = !DILocation(line: 184, column: 29, scope: !634)
!691 = !DILocation(line: 184, column: 40, scope: !634)
!692 = !DILocalVariable(name: "buffer", scope: !693, file: !2, line: 236, type: !728)
!693 = distinct !DISubprogram(name: "tee_files", scope: !2, file: !2, line: 231, type: !694, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !696, keyInstructions: true)
!694 = !DISubroutineType(types: !695)
!695 = !{!180, !85, !637, !180}
!696 = !{!697, !698, !699, !700, !701, !702, !692, !704, !708, !709, !710, !711, !713, !720, !724, !726}
!697 = !DILocalVariable(name: "nfiles", arg: 1, scope: !693, file: !2, line: 231, type: !85)
!698 = !DILocalVariable(name: "files", arg: 2, scope: !693, file: !2, line: 231, type: !637)
!699 = !DILocalVariable(name: "pipe_check", arg: 3, scope: !693, file: !2, line: 231, type: !180)
!700 = !DILocalVariable(name: "n_outputs", scope: !693, file: !2, line: 233, type: !138)
!701 = !DILocalVariable(name: "descriptors", scope: !693, file: !2, line: 234, type: !384)
!702 = !DILocalVariable(name: "out_pollable", scope: !693, file: !2, line: 235, type: !703)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!704 = !DILocalVariable(name: "bytes_read", scope: !693, file: !2, line: 237, type: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !706, line: 108, baseType: !707)
!706 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !234, line: 194, baseType: !235)
!708 = !DILocalVariable(name: "first_out", scope: !693, file: !2, line: 238, type: !85)
!709 = !DILocalVariable(name: "ok", scope: !693, file: !2, line: 239, type: !180)
!710 = !DILocalVariable(name: "flags", scope: !693, file: !2, line: 240, type: !85)
!711 = !DILocalVariable(name: "i", scope: !712, file: !2, line: 259, type: !85)
!712 = distinct !DILexicalBlock(scope: !693, file: !2, line: 259, column: 3)
!713 = !DILocalVariable(name: "__errstatus", scope: !714, file: !2, line: 267, type: !719)
!714 = distinct !DILexicalBlock(scope: !715, file: !2, line: 267, column: 11)
!715 = distinct !DILexicalBlock(scope: !716, file: !2, line: 264, column: 9)
!716 = distinct !DILexicalBlock(scope: !717, file: !2, line: 263, column: 11)
!717 = distinct !DILexicalBlock(scope: !718, file: !2, line: 260, column: 5)
!718 = distinct !DILexicalBlock(scope: !712, file: !2, line: 259, column: 3)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!720 = !DILocalVariable(name: "err", scope: !721, file: !2, line: 285, type: !85)
!721 = distinct !DILexicalBlock(scope: !722, file: !2, line: 283, column: 9)
!722 = distinct !DILexicalBlock(scope: !723, file: !2, line: 282, column: 11)
!723 = distinct !DILexicalBlock(scope: !693, file: !2, line: 281, column: 5)
!724 = !DILocalVariable(name: "i", scope: !725, file: !2, line: 312, type: !85)
!725 = distinct !DILexicalBlock(scope: !723, file: !2, line: 312, column: 7)
!726 = !DILocalVariable(name: "i", scope: !727, file: !2, line: 331, type: !85)
!727 = distinct !DILexicalBlock(scope: !693, file: !2, line: 331, column: 3)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 65536, elements: !729)
!729 = !{!730}
!730 = !DISubrange(count: 8192)
!731 = !DILocation(line: 0, scope: !693, inlinedAt: !732)
!732 = distinct !DILocation(line: 184, column: 13, scope: !634)
!733 = !DILocation(line: 236, column: 3, scope: !693, inlinedAt: !732)
!734 = !DILocation(line: 240, column: 48, scope: !693, inlinedAt: !732)
!735 = !DILocation(line: 240, column: 45, scope: !693, inlinedAt: !732, atomGroup: 5, atomRank: 2)
!736 = !DILocation(line: 244, column: 12, scope: !693, inlinedAt: !732)
!737 = !DILocation(line: 244, column: 3, scope: !693, inlinedAt: !732)
!738 = !DILocation(line: 249, column: 34, scope: !693, inlinedAt: !732)
!739 = !DILocation(line: 249, column: 27, scope: !693, inlinedAt: !732)
!740 = !DILocation(line: 249, column: 17, scope: !693, inlinedAt: !732, atomGroup: 6, atomRank: 2)
!741 = !DILocation(line: 250, column: 7, scope: !742, inlinedAt: !732, atomGroup: 7, atomRank: 1)
!742 = distinct !DILexicalBlock(scope: !693, file: !2, line: 250, column: 7)
!743 = !DILocation(line: 251, column: 20, scope: !742, inlinedAt: !732, atomGroup: 8, atomRank: 2)
!744 = !DILocation(line: 255, column: 23, scope: !745, inlinedAt: !732, atomGroup: 12, atomRank: 3)
!745 = distinct !DILexicalBlock(scope: !693, file: !2, line: 254, column: 7)
!746 = !DILocation(line: 255, column: 21, scope: !745, inlinedAt: !732, atomGroup: 12, atomRank: 2)
!747 = !DILocation(line: 255, column: 21, scope: !745, inlinedAt: !732, atomGroup: 12, atomRank: 1)
!748 = !{!749, !749, i64 0}
!749 = !{!"_Bool", !422, i64 0}
!750 = !DILocation(line: 255, column: 5, scope: !745, inlinedAt: !732)
!751 = !DILocation(line: 253, column: 18, scope: !693, inlinedAt: !732, atomGroup: 10, atomRank: 1)
!752 = !DILocation(line: 252, column: 8, scope: !693, inlinedAt: !732, atomGroup: 9, atomRank: 2)
!753 = !DILocation(line: 256, column: 24, scope: !693, inlinedAt: !732)
!754 = !DILocation(line: 256, column: 12, scope: !693, inlinedAt: !732, atomGroup: 13, atomRank: 1)
!755 = !DILocation(line: 0, scope: !712, inlinedAt: !732)
!756 = !DILocation(line: 259, column: 21, scope: !718, inlinedAt: !732, atomGroup: 117, atomRank: 1)
!757 = !DILocation(line: 259, column: 3, scope: !712, inlinedAt: !732, atomGroup: 118, atomRank: 1)
!758 = !DILocation(line: 280, column: 3, scope: !693, inlinedAt: !732, atomGroup: 121, atomRank: 1)
!759 = !DILocation(line: 280, column: 3, scope: !693, inlinedAt: !732, atomGroup: 122, atomRank: 1)
!760 = !DILocation(line: 262, column: 30, scope: !717, inlinedAt: !732)
!761 = !DILocation(line: 262, column: 24, scope: !717, inlinedAt: !732, atomGroup: 18, atomRank: 2)
!762 = !DILocation(line: 262, column: 7, scope: !717, inlinedAt: !732)
!763 = !DILocation(line: 262, column: 22, scope: !717, inlinedAt: !732, atomGroup: 18, atomRank: 1)
!764 = !DILocation(line: 263, column: 26, scope: !716, inlinedAt: !732, atomGroup: 19, atomRank: 2)
!765 = !DILocation(line: 263, column: 26, scope: !716, inlinedAt: !732, atomGroup: 19, atomRank: 1)
!766 = !DILocation(line: 265, column: 15, scope: !767, inlinedAt: !732, atomGroup: 20, atomRank: 1)
!767 = distinct !DILexicalBlock(scope: !715, file: !2, line: 265, column: 15)
!768 = !DILocation(line: 266, column: 13, scope: !767, inlinedAt: !732)
!769 = !DILocation(line: 266, column: 29, scope: !767, inlinedAt: !732, atomGroup: 21, atomRank: 1)
!770 = !DILocation(line: 267, column: 18, scope: !715, inlinedAt: !732)
!771 = !DILocation(line: 268, column: 18, scope: !715, inlinedAt: !732, atomGroup: 22, atomRank: 1)
!772 = !DILocation(line: 268, column: 18, scope: !715, inlinedAt: !732)
!773 = !DILocation(line: 269, column: 18, scope: !715, inlinedAt: !732)
!774 = !DILocation(line: 269, column: 39, scope: !715, inlinedAt: !732)
!775 = !DILocation(line: 269, column: 31, scope: !715, inlinedAt: !732)
!776 = !DILocation(line: 267, column: 11, scope: !715, inlinedAt: !732)
!777 = !DILocation(line: 0, scope: !714, inlinedAt: !732)
!778 = !DILocation(line: 267, column: 11, scope: !714, inlinedAt: !732, atomGroup: 29, atomRank: 1)
!779 = !DILocation(line: 274, column: 15, scope: !780, inlinedAt: !732, atomGroup: 31, atomRank: 1)
!780 = distinct !DILexicalBlock(scope: !781, file: !2, line: 274, column: 15)
!781 = distinct !DILexicalBlock(scope: !716, file: !2, line: 273, column: 9)
!782 = !DILocation(line: 275, column: 31, scope: !780, inlinedAt: !732, atomGroup: 32, atomRank: 3)
!783 = !DILocation(line: 275, column: 13, scope: !780, inlinedAt: !732)
!784 = !DILocation(line: 275, column: 29, scope: !780, inlinedAt: !732, atomGroup: 32, atomRank: 2)
!785 = !DILocation(line: 275, column: 29, scope: !780, inlinedAt: !732, atomGroup: 32, atomRank: 1)
!786 = !DILocation(line: 276, column: 20, scope: !781, inlinedAt: !732, atomGroup: 33, atomRank: 2)
!787 = !DILocation(line: 259, column: 33, scope: !718, inlinedAt: !732, atomGroup: 34, atomRank: 2)
!788 = !DILocation(line: 259, column: 21, scope: !718, inlinedAt: !732, atomGroup: 16, atomRank: 1)
!789 = !DILocation(line: 259, column: 3, scope: !712, inlinedAt: !732, atomGroup: 17, atomRank: 1)
!790 = distinct !{!790, !791, !792, !555}
!791 = !DILocation(line: 259, column: 3, scope: !712, inlinedAt: !732)
!792 = !DILocation(line: 278, column: 5, scope: !712, inlinedAt: !732)
!793 = !DILocation(line: 312, column: 7, scope: !725, inlinedAt: !732, atomGroup: 58, atomRank: 1)
!794 = distinct !{!794, !795, !796, !555}
!795 = !DILocation(line: 280, column: 3, scope: !693, inlinedAt: !732)
!796 = !DILocation(line: 322, column: 5, scope: !693, inlinedAt: !732)
!797 = !DILocation(line: 282, column: 22, scope: !722, inlinedAt: !732, atomGroup: 38, atomRank: 1)
!798 = !DILocation(line: 282, column: 25, scope: !722, inlinedAt: !732)
!799 = !DILocation(line: 282, column: 25, scope: !722, inlinedAt: !732, atomGroup: 39, atomRank: 3)
!800 = !{i8 0, i8 2}
!801 = !{}
!802 = !DILocation(line: 282, column: 25, scope: !722, inlinedAt: !732, atomGroup: 39, atomRank: 2)
!803 = !DILocation(line: 282, column: 22, scope: !722, inlinedAt: !732, atomGroup: 39, atomRank: 1)
!804 = !DILocation(line: 285, column: 43, scope: !721, inlinedAt: !732)
!805 = !DILocation(line: 285, column: 21, scope: !721, inlinedAt: !732, atomGroup: 40, atomRank: 2)
!806 = !DILocation(line: 0, scope: !721, inlinedAt: !732)
!807 = !DILocation(line: 288, column: 19, scope: !808, inlinedAt: !732, atomGroup: 41, atomRank: 1)
!808 = distinct !DILexicalBlock(scope: !721, file: !2, line: 288, column: 15)
!809 = !DILocation(line: 290, column: 15, scope: !810, inlinedAt: !732)
!810 = distinct !DILexicalBlock(scope: !808, file: !2, line: 289, column: 13)
!811 = !DILocation(line: 290, column: 21, scope: !810, inlinedAt: !732, atomGroup: 42, atomRank: 1)
!812 = !DILocalVariable(name: "descriptors", arg: 1, scope: !813, file: !2, line: 209, type: !384)
!813 = distinct !DISubprogram(name: "fail_output", scope: !2, file: !2, line: 209, type: !814, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !816, keyInstructions: true)
!814 = !DISubroutineType(types: !815)
!815 = !{!180, !384, !637, !85}
!816 = !{!812, !817, !818, !819, !820, !821}
!817 = !DILocalVariable(name: "files", arg: 2, scope: !813, file: !2, line: 209, type: !637)
!818 = !DILocalVariable(name: "i", arg: 3, scope: !813, file: !2, line: 209, type: !85)
!819 = !DILocalVariable(name: "w_errno", scope: !813, file: !2, line: 211, type: !85)
!820 = !DILocalVariable(name: "fail", scope: !813, file: !2, line: 212, type: !180)
!821 = !DILocalVariable(name: "__errstatus", scope: !822, file: !2, line: 217, type: !719)
!822 = distinct !DILexicalBlock(scope: !823, file: !2, line: 217, column: 7)
!823 = distinct !DILexicalBlock(scope: !824, file: !2, line: 216, column: 5)
!824 = distinct !DILexicalBlock(scope: !813, file: !2, line: 215, column: 7)
!825 = !DILocation(line: 0, scope: !813, inlinedAt: !826)
!826 = distinct !DILocation(line: 291, column: 19, scope: !827, inlinedAt: !732)
!827 = distinct !DILexicalBlock(scope: !810, file: !2, line: 291, column: 19)
!828 = !DILocation(line: 215, column: 7, scope: !824, inlinedAt: !826, atomGroup: 5, atomRank: 1)
!829 = !DILocation(line: 218, column: 14, scope: !823, inlinedAt: !826, atomGroup: 6, atomRank: 1)
!830 = !DILocation(line: 218, column: 14, scope: !823, inlinedAt: !826)
!831 = !DILocation(line: 219, column: 37, scope: !823, inlinedAt: !826)
!832 = !DILocation(line: 219, column: 29, scope: !823, inlinedAt: !826)
!833 = !DILocation(line: 217, column: 7, scope: !823, inlinedAt: !826)
!834 = !DILocation(line: 0, scope: !822, inlinedAt: !826)
!835 = !DILocation(line: 213, column: 15, scope: !813, inlinedAt: !826, atomGroup: 3, atomRank: 1)
!836 = !DILocation(line: 221, column: 18, scope: !813, inlinedAt: !826, atomGroup: 14, atomRank: 1)
!837 = !DILocation(line: 291, column: 19, scope: !827, inlinedAt: !732, atomGroup: 43, atomRank: 1)
!838 = !DILocation(line: 293, column: 24, scope: !810, inlinedAt: !732, atomGroup: 45, atomRank: 2)
!839 = !DILocalVariable(name: "descriptors", arg: 1, scope: !840, file: !2, line: 197, type: !384)
!840 = distinct !DISubprogram(name: "get_next_out", scope: !2, file: !2, line: 197, type: !841, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !843, keyInstructions: true)
!841 = !DISubroutineType(types: !842)
!842 = !{!85, !384, !85, !85}
!843 = !{!839, !844, !845}
!844 = !DILocalVariable(name: "nfiles", arg: 2, scope: !840, file: !2, line: 197, type: !85)
!845 = !DILocalVariable(name: "idx", arg: 3, scope: !840, file: !2, line: 197, type: !85)
!846 = !DILocation(line: 0, scope: !840, inlinedAt: !847)
!847 = distinct !DILocation(line: 294, column: 27, scope: !810, inlinedAt: !732)
!848 = !DILocation(line: 199, column: 8, scope: !849, inlinedAt: !847)
!849 = distinct !DILexicalBlock(scope: !840, file: !2, line: 199, column: 3)
!850 = !DILocation(line: 199, column: 19, scope: !851, inlinedAt: !847, atomGroup: 2, atomRank: 1)
!851 = distinct !DILexicalBlock(scope: !849, file: !2, line: 199, column: 3)
!852 = !DILocation(line: 199, column: 3, scope: !849, inlinedAt: !847, atomGroup: 3, atomRank: 1)
!853 = distinct !{!853, !795, !796, !555}
!854 = !DILocation(line: 199, scope: !849, inlinedAt: !847, atomGroup: 1, atomRank: 2)
!855 = !DILocation(line: 200, column: 14, scope: !856, inlinedAt: !847)
!856 = distinct !DILexicalBlock(scope: !851, file: !2, line: 200, column: 9)
!857 = !DILocation(line: 200, column: 11, scope: !856, inlinedAt: !847, atomGroup: 4, atomRank: 2)
!858 = !DILocation(line: 200, column: 11, scope: !856, inlinedAt: !847, atomGroup: 4, atomRank: 1)
!859 = distinct !{!859, !860, !861, !555}
!860 = !DILocation(line: 199, column: 3, scope: !849, inlinedAt: !847)
!861 = !DILocation(line: 201, column: 14, scope: !849, inlinedAt: !847)
!862 = !DILocation(line: 203, column: 1, scope: !840, inlinedAt: !847, atomGroup: 9, atomRank: 1)
!863 = distinct !{!863, !795, !796, !555}
!864 = !DILocation(line: 299, column: 25, scope: !865, inlinedAt: !732)
!865 = distinct !DILexicalBlock(scope: !866, file: !2, line: 298, column: 13)
!866 = distinct !DILexicalBlock(scope: !808, file: !2, line: 297, column: 20)
!867 = !DILocation(line: 299, column: 32, scope: !865, inlinedAt: !732)
!868 = !DILocation(line: 299, column: 15, scope: !865, inlinedAt: !732)
!869 = !DILocation(line: 301, column: 13, scope: !865, inlinedAt: !732)
!870 = !DILocation(line: 304, column: 20, scope: !723, inlinedAt: !732, atomGroup: 50, atomRank: 2)
!871 = !DILocation(line: 305, column: 22, scope: !872, inlinedAt: !732, atomGroup: 51, atomRank: 2)
!872 = distinct !DILexicalBlock(scope: !723, file: !2, line: 305, column: 11)
!873 = !DILocation(line: 305, column: 26, scope: !872, inlinedAt: !732, atomGroup: 51, atomRank: 1)
!874 = !DILocation(line: 305, column: 29, scope: !872, inlinedAt: !732)
!875 = !DILocation(line: 305, column: 35, scope: !872, inlinedAt: !732, atomGroup: 52, atomRank: 2)
!876 = !DILocation(line: 305, column: 26, scope: !872, inlinedAt: !732, atomGroup: 52, atomRank: 1)
!877 = !DILocation(line: 280, column: 3, scope: !693, inlinedAt: !732, atomGroup: 36, atomRank: 1)
!878 = !DILocation(line: 280, column: 3, scope: !693, inlinedAt: !732, atomGroup: 37, atomRank: 1)
!879 = distinct !{!879, !795, !796, !555}
!880 = !DILocation(line: 307, column: 22, scope: !881, inlinedAt: !732, atomGroup: 54, atomRank: 2)
!881 = distinct !DILexicalBlock(scope: !723, file: !2, line: 307, column: 11)
!882 = !DILocation(line: 307, column: 22, scope: !881, inlinedAt: !732, atomGroup: 54, atomRank: 1)
!883 = !DILocation(line: 0, scope: !725, inlinedAt: !732)
!884 = !DILocation(line: 312, column: 7, scope: !725, inlinedAt: !732, atomGroup: 120, atomRank: 1)
!885 = distinct !{!885, !795, !796, !555}
!886 = distinct !{!886, !795, !796, !555}
!887 = !DILocation(line: 313, column: 18, scope: !888, inlinedAt: !732)
!888 = distinct !DILexicalBlock(scope: !889, file: !2, line: 313, column: 13)
!889 = distinct !DILexicalBlock(scope: !725, file: !2, line: 312, column: 7)
!890 = !DILocation(line: 313, column: 15, scope: !888, inlinedAt: !732, atomGroup: 59, atomRank: 2)
!891 = !DILocation(line: 314, column: 13, scope: !888, inlinedAt: !732, atomGroup: 59, atomRank: 1)
!892 = !DILocation(line: 314, column: 18, scope: !888, inlinedAt: !732, atomGroup: 60, atomRank: 2)
!893 = !DILocation(line: 314, column: 13, scope: !888, inlinedAt: !732, atomGroup: 60, atomRank: 1)
!894 = !DILocation(line: 0, scope: !813, inlinedAt: !895)
!895 = distinct !DILocation(line: 316, column: 17, scope: !896, inlinedAt: !732)
!896 = distinct !DILexicalBlock(scope: !897, file: !2, line: 316, column: 17)
!897 = distinct !DILexicalBlock(scope: !888, file: !2, line: 315, column: 11)
!898 = !DILocation(line: 211, column: 17, scope: !813, inlinedAt: !895)
!899 = !DILocation(line: 211, column: 17, scope: !813, inlinedAt: !895, atomGroup: 1, atomRank: 2)
!900 = !DILocation(line: 212, column: 21, scope: !813, inlinedAt: !895, atomGroup: 3, atomRank: 2)
!901 = !DILocation(line: 215, column: 7, scope: !824, inlinedAt: !895)
!902 = !DILocation(line: 215, column: 7, scope: !824, inlinedAt: !895, atomGroup: 5, atomRank: 1)
!903 = !DILocation(line: 218, column: 14, scope: !823, inlinedAt: !895, atomGroup: 6, atomRank: 1)
!904 = !DILocation(line: 218, column: 14, scope: !823, inlinedAt: !895)
!905 = !DILocation(line: 219, column: 37, scope: !823, inlinedAt: !895)
!906 = !DILocation(line: 219, column: 29, scope: !823, inlinedAt: !895)
!907 = !DILocation(line: 217, column: 7, scope: !823, inlinedAt: !895)
!908 = !DILocation(line: 0, scope: !822, inlinedAt: !895)
!909 = !DILocation(line: 213, column: 15, scope: !813, inlinedAt: !895, atomGroup: 3, atomRank: 1)
!910 = !DILocation(line: 221, column: 3, scope: !813, inlinedAt: !895)
!911 = !DILocation(line: 221, column: 18, scope: !813, inlinedAt: !895, atomGroup: 14, atomRank: 1)
!912 = !DILocation(line: 316, column: 17, scope: !896, inlinedAt: !732, atomGroup: 61, atomRank: 1)
!913 = !DILocation(line: 318, column: 22, scope: !897, inlinedAt: !732, atomGroup: 63, atomRank: 2)
!914 = !DILocation(line: 319, column: 19, scope: !915, inlinedAt: !732, atomGroup: 64, atomRank: 2)
!915 = distinct !DILexicalBlock(scope: !897, file: !2, line: 319, column: 17)
!916 = !DILocation(line: 319, column: 19, scope: !915, inlinedAt: !732, atomGroup: 64, atomRank: 1)
!917 = !DILocation(line: 0, scope: !840, inlinedAt: !918)
!918 = distinct !DILocation(line: 320, column: 27, scope: !915, inlinedAt: !732)
!919 = !DILocation(line: 199, column: 8, scope: !849, inlinedAt: !918)
!920 = !DILocation(line: 199, column: 19, scope: !851, inlinedAt: !918, atomGroup: 2, atomRank: 1)
!921 = !DILocation(line: 199, column: 3, scope: !849, inlinedAt: !918, atomGroup: 3, atomRank: 1)
!922 = !DILocation(line: 199, scope: !849, inlinedAt: !918, atomGroup: 1, atomRank: 2)
!923 = !DILocation(line: 200, column: 14, scope: !856, inlinedAt: !918)
!924 = !DILocation(line: 200, column: 11, scope: !856, inlinedAt: !918, atomGroup: 4, atomRank: 2)
!925 = !DILocation(line: 200, column: 11, scope: !856, inlinedAt: !918, atomGroup: 4, atomRank: 1)
!926 = distinct !{!926, !927, !928, !555}
!927 = !DILocation(line: 199, column: 3, scope: !849, inlinedAt: !918)
!928 = !DILocation(line: 201, column: 14, scope: !849, inlinedAt: !918)
!929 = !DILocation(line: 203, column: 1, scope: !840, inlinedAt: !918, atomGroup: 9, atomRank: 1)
!930 = !DILocation(line: 0, scope: !723, inlinedAt: !732)
!931 = !DILocation(line: 312, column: 37, scope: !889, inlinedAt: !732, atomGroup: 66, atomRank: 2)
!932 = !DILocation(line: 312, column: 25, scope: !889, inlinedAt: !732, atomGroup: 57, atomRank: 1)
!933 = distinct !{!933, !934, !935, !555}
!934 = !DILocation(line: 312, column: 7, scope: !725, inlinedAt: !732)
!935 = !DILocation(line: 321, column: 11, scope: !725, inlinedAt: !732)
!936 = !DILocation(line: 324, column: 18, scope: !937, inlinedAt: !732, atomGroup: 68, atomRank: 2)
!937 = distinct !DILexicalBlock(scope: !693, file: !2, line: 324, column: 7)
!938 = !DILocation(line: 324, column: 18, scope: !937, inlinedAt: !732, atomGroup: 68, atomRank: 1)
!939 = !DILocation(line: 326, column: 17, scope: !940, inlinedAt: !732)
!940 = distinct !DILexicalBlock(scope: !937, file: !2, line: 325, column: 5)
!941 = !DILocation(line: 326, column: 24, scope: !940, inlinedAt: !732)
!942 = !DILocation(line: 326, column: 7, scope: !940, inlinedAt: !732)
!943 = !DILocation(line: 328, column: 5, scope: !940, inlinedAt: !732)
!944 = !DILocation(line: 0, scope: !727, inlinedAt: !732)
!945 = !DILocation(line: 331, column: 3, scope: !727, inlinedAt: !732, atomGroup: 124, atomRank: 1)
!946 = !DILocation(line: 331, column: 21, scope: !947, inlinedAt: !732, atomGroup: 71, atomRank: 1)
!947 = distinct !DILexicalBlock(scope: !727, file: !2, line: 331, column: 3)
!948 = !DILocation(line: 331, column: 3, scope: !727, inlinedAt: !732)
!949 = !DILocation(line: 338, column: 3, scope: !693, inlinedAt: !732)
!950 = !DILocation(line: 339, column: 7, scope: !951, inlinedAt: !732, atomGroup: 78, atomRank: 1)
!951 = distinct !DILexicalBlock(scope: !693, file: !2, line: 339, column: 7)
!952 = !DILocation(line: 332, column: 14, scope: !953, inlinedAt: !732)
!953 = distinct !DILexicalBlock(scope: !947, file: !2, line: 332, column: 9)
!954 = !DILocation(line: 332, column: 11, scope: !953, inlinedAt: !732, atomGroup: 73, atomRank: 2)
!955 = !DILocation(line: 332, column: 29, scope: !953, inlinedAt: !732, atomGroup: 73, atomRank: 1)
!956 = !DILocation(line: 332, column: 32, scope: !953, inlinedAt: !732)
!957 = !DILocation(line: 332, column: 55, scope: !953, inlinedAt: !732, atomGroup: 74, atomRank: 2)
!958 = !DILocation(line: 332, column: 29, scope: !953, inlinedAt: !732, atomGroup: 74, atomRank: 1)
!959 = !DILocation(line: 334, column: 19, scope: !960, inlinedAt: !732)
!960 = distinct !DILexicalBlock(scope: !953, file: !2, line: 333, column: 7)
!961 = !DILocation(line: 334, column: 40, scope: !960, inlinedAt: !732)
!962 = !DILocation(line: 334, column: 32, scope: !960, inlinedAt: !732)
!963 = !DILocation(line: 334, column: 9, scope: !960, inlinedAt: !732)
!964 = !DILocation(line: 336, column: 7, scope: !960, inlinedAt: !732)
!965 = !DILocation(line: 331, column: 33, scope: !947, inlinedAt: !732, atomGroup: 76, atomRank: 2)
!966 = !DILocation(line: 331, column: 3, scope: !727, inlinedAt: !732, atomGroup: 72, atomRank: 1)
!967 = distinct !{!967, !948, !968, !555}
!968 = !DILocation(line: 336, column: 7, scope: !727, inlinedAt: !732)
!969 = !DILocation(line: 340, column: 5, scope: !951, inlinedAt: !732)
!970 = !DILocation(line: 343, column: 1, scope: !693, inlinedAt: !732)
!971 = !DILocation(line: 185, column: 7, scope: !972)
!972 = distinct !DILexicalBlock(scope: !634, file: !2, line: 185, column: 7)
!973 = !DILocation(line: 185, column: 28, scope: !972, atomGroup: 19, atomRank: 2)
!974 = !DILocation(line: 185, column: 28, scope: !972, atomGroup: 19, atomRank: 1)
!975 = !DILocation(line: 186, column: 26, scope: !972)
!976 = !DILocation(line: 186, column: 39, scope: !972)
!977 = !DILocation(line: 186, column: 5, scope: !972)
!978 = !DILocation(line: 188, column: 10, scope: !634, atomGroup: 21, atomRank: 2)
!979 = !DILocation(line: 188, column: 3, scope: !634, atomGroup: 21, atomRank: 1)
!980 = !DISubprogram(name: "set_program_name", scope: !981, file: !981, line: 38, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!981 = !DIFile(filename: "./lib/progname.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3e5536ae3756d6a65acb8e248212c2ee")
!982 = !DISubprogram(name: "setlocale", scope: !983, file: !983, line: 122, type: !984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!983 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!984 = !DISubroutineType(types: !985)
!985 = !{!130, !85, !141}
!986 = !DISubprogram(name: "bindtextdomain", scope: !491, file: !491, line: 86, type: !987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!987 = !DISubroutineType(types: !988)
!988 = !{!130, !141, !141}
!989 = !DISubprogram(name: "textdomain", scope: !491, file: !491, line: 82, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!990 = !DISubroutineType(types: !991)
!991 = !{!130, !141}
!992 = !DISubprogram(name: "atexit", scope: !993, file: !993, line: 602, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!993 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!994 = !DISubroutineType(types: !995)
!995 = !{!85, !996}
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{null}
!999 = !DISubprogram(name: "getopt_long", scope: !379, file: !379, line: 66, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!85, !85, !1002, !141, !1004, !384}
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!1005 = !DISubprogram(name: "__xargmatch_internal", scope: !1006, file: !1006, line: 97, type: !1007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1006 = !DIFile(filename: "./lib/argmatch.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "0538d47ac978b3f52562dc3536aacea1")
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!1009, !141, !141, !1011, !128, !138, !1012, !180}
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !1010, line: 18, baseType: !235)
!1010 = !DIFile(filename: "/usr/lib/llvm-22/lib/clang/22/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !1006, line: 69, baseType: !996)
!1013 = !DISubprogram(name: "version_etc", scope: !1014, file: !1014, line: 70, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1014 = !DIFile(filename: "./lib/version-etc.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "7242964c9dbfa69ef19b57250c13e279")
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !207, !141, !141, !141, null}
!1017 = !DISubprogram(name: "proper_name_lite", scope: !1018, file: !1018, line: 126, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1018 = !DIFile(filename: "./lib/propername.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "fdc444d0083bc592737160d9365ffa54")
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!141, !141, !141}
!1021 = !DISubprogram(name: "signal", scope: !133, file: !133, line: 88, type: !1022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!132, !85, !132}
!1024 = !DISubprogram(name: "iopoll_input_ok", scope: !1025, file: !1025, line: 5, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1025 = !DIFile(filename: "src/iopoll.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "96902f8d318cee0af343b2be40a295c5")
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!180, !85}
!1028 = !DISubprogram(name: "close", scope: !1029, file: !1029, line: 358, type: !1030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1029 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!85, !85}
!1032 = !DISubprogram(name: "error", scope: !1033, file: !1033, line: 31, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1033 = !DIFile(filename: "/usr/include/error.h", directory: "", checksumkind: CSK_MD5, checksum: "0bac552e7426506dc6623c11568834e0")
!1034 = !DISubroutineType(types: !1035)
!1035 = !{null, !85, !85, !141, null}
!1036 = !DISubprogram(name: "__errno_location", scope: !1037, file: !1037, line: 37, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1037 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!384}
!1040 = !DISubprogram(name: "getenv", scope: !993, file: !993, line: 641, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1041 = !DISubprogram(name: "strspn", scope: !1042, file: !1042, line: 297, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1042 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!140, !141, !141}
!1045 = !DISubprogram(name: "strchr", scope: !1042, file: !1042, line: 246, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!130, !141, !85}
!1048 = !DISubprogram(name: "__ctype_b_loc", scope: !90, file: !90, line: 79, type: !1049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!1051}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!1054 = !DISubprogram(name: "strcspn", scope: !1042, file: !1042, line: 293, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1055 = !DISubprogram(name: "fwrite_unlocked", scope: !499, file: !499, line: 704, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!138, !1058, !138, !138, !488}
!1058 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !128)
!1059 = !DISubprogram(name: "strncmp", scope: !1042, file: !1042, line: 159, type: !1060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!85, !141, !141, !138}
!1062 = !DISubprogram(name: "strcmp", scope: !1042, file: !1042, line: 156, type: !1063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!85, !141, !141}
!1065 = !DISubprogram(name: "emit_bug_reporting_address", scope: !1014, file: !1014, line: 77, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1066 = !DISubprogram(name: "fadvise", scope: !105, file: !105, line: 71, type: !1067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{null, !207, !1069}
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !105, line: 51, baseType: !104)
!1070 = !DISubprogram(name: "xnmalloc", scope: !1071, file: !1071, line: 136, type: !1072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1071 = !DIFile(filename: "./lib/xalloc.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!131, !138, !138}
!1074 = !DISubprogram(name: "iopoll_output_ok", scope: !1025, file: !1025, line: 6, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1075 = !DISubprogram(name: "open_safer", scope: !1076, file: !1076, line: 27, type: !1077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1076 = !DIFile(filename: "./lib/fcntl-safer.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "7d7ffba0b8226630097c6e386de18acb")
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!85, !141, !85, null}
!1079 = !DISubprogram(name: "quotearg_n_style_colon", scope: !114, file: !114, line: 419, type: !1080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!130, !85, !113, !141}
!1082 = !DISubprogram(name: "iopoll", scope: !1025, file: !1025, line: 4, type: !1083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!85, !85, !85, !180}
!1085 = !DISubprogram(name: "write_wait", scope: !1025, file: !1025, line: 8, type: !1086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!180, !85, !128, !138}
!1088 = !DISubprogram(name: "free", scope: !495, file: !495, line: 819, type: !1089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{null, !131}
