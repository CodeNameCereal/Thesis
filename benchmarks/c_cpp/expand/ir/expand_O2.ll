; ModuleID = 'src/expand.c'
source_filename = "src/expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.mbbuf_t = type { ptr, ptr, i64, i64, i64, i8 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [66 x i8] c"Convert tabs in each FILE to spaces, writing to standard output.\0A\00", align 1, !dbg !12
@stdout = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"expand\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [63 x i8] c"  -i, --initial\0A         do not convert tabs after non blanks\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [61 x i8] c"  -t, --tabs=N\0A         have tabs N characters apart, not 8\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !42
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !52
@convert_entire_line = external local_unnamed_addr global i8, align 1
@shortopts = internal constant [34 x i8] c"it:0::1::2::3::4::5::6::7::8::9::\00", align 16, !dbg !57
@optarg = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !105
@Version = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !110
@optind = external local_unnamed_addr global i32, align 4
@exit_status = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !115
@.str.14 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !120
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !125
@.str.15 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !207
@.str.16 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !212
@.str.17 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !214
@.str.18 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !219
@.str.32 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !259
@.str.33 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !261
@.str.34 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !263
@.str.35 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !268
@.str.36 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !273
@.str.37 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !278
@.str.38 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !280
@.str.39 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !282
@.str.40 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !284
@.str.41 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !286
@.str.45 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !297
@.str.46 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !302
@.str.47 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !307
@.str.48 = private unnamed_addr constant [5 x i8] c"tabs\00", align 1, !dbg !312
@.str.49 = private unnamed_addr constant [8 x i8] c"initial\00", align 1, !dbg !314
@.str.50 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !316
@.str.51 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !318
@longopts = internal constant [5 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.48, i32 1, [4 x i8] zeroinitializer, ptr null, i32 116, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.49, i32 0, [4 x i8] zeroinitializer, ptr null, i32 105, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.50, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -130, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.51, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -131, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16, !dbg !320
@expand.line_in = internal global [262144 x i8] zeroinitializer, align 16, !dbg !332
@.str.53 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1, !dbg !389
@.str.54 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !394
@.str.55 = private unnamed_addr constant [14 x i8] c"./lib/mbbuf.h\00", align 1, !dbg !396
@.str.56 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !401
@__PRETTY_FUNCTION__.mbbuf_char_offset = private unnamed_addr constant [43 x i8] c"char *mbbuf_char_offset(mbbuf_t *, mcel_t)\00", align 1, !dbg !403

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !423 {
    #dbg_value(i32 %0, !427, !DIExpression(), !428)
  %2 = icmp eq i32 %0, 0, !dbg !429
  br i1 %2, label %8, label %3, !dbg !431

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !432, !tbaa !434
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #15, !dbg !432
  %6 = load ptr, ptr @program_name, align 8, !dbg !432, !tbaa !437
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #15, !dbg !432
  br label %29, !dbg !432

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #15, !dbg !439
  %10 = load ptr, ptr @program_name, align 8, !dbg !441, !tbaa !437
  %11 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %9, ptr noundef %10) #15, !dbg !442
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #15, !dbg !443
  %13 = load ptr, ptr @stdout, align 8, !dbg !444, !tbaa !434
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !445
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #15, !dbg !446
  %16 = load ptr, ptr @stdout, align 8, !dbg !449, !tbaa !434
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !450
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #15, !dbg !451
  %19 = load ptr, ptr @stdout, align 8, !dbg !454, !tbaa !434
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !455
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #15, !dbg !456
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !457
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #15, !dbg !458
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !459
  tail call void @emit_tab_list_info(ptr noundef nonnull @.str.3) #15, !dbg !460
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #15, !dbg !461
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !462
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #15, !dbg !463
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !464
    #dbg_value(ptr @.str.3, !465, !DIExpression(), !481)
    #dbg_value(ptr poison, !478, !DIExpression(), !481)
    #dbg_value(ptr @.str.3, !477, !DIExpression(), !481)
  tail call void @emit_bug_reporting_address() #15, !dbg !483
    #dbg_value(ptr @.str.3, !480, !DIExpression(), !481)
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #15, !dbg !484
  %26 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %25, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3) #15, !dbg !485
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #15, !dbg !486
  %28 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %27, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.47) #15, !dbg !487
  br label %29

29:                                               ; preds = %8, %3
  tail call void @exit(i32 noundef %0) #16, !dbg !488
  unreachable, !dbg !488
}

declare !dbg !489 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !495 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !499 i32 @rpl_printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare !dbg !503 noundef i32 @fputs_unlocked(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !127 {
    #dbg_value(ptr @.str.3, !131, !DIExpression(), !507)
    #dbg_value(ptr %0, !132, !DIExpression(), !507)
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !508, !tbaa !419
  %3 = icmp eq i32 %2, -1, !dbg !509
  br i1 %3, label %4, label %16, !dbg !510

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.15) #15, !dbg !511
    #dbg_value(ptr %5, !133, !DIExpression(), !512)
  %6 = icmp eq ptr %5, null, !dbg !513
  br i1 %6, label %14, label %7, !dbg !514

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !515, !tbaa !516
  %9 = icmp eq i8 %8, 0, !dbg !517
  br i1 %9, label %14, label %10, !dbg !518

10:                                               ; preds = %7
    #dbg_value(ptr %5, !519, !DIExpression(), !526)
    #dbg_value(ptr @.str.16, !525, !DIExpression(), !526)
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.16) #17, !dbg !528
  %12 = icmp eq i32 %11, 0, !dbg !529
  %13 = zext i1 %12 to i32, !dbg !530
  br label %14, !dbg !531

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !532, !tbaa !419
  br label %16, !dbg !533

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !534
  %18 = icmp eq i32 %17, 0, !dbg !536
  br i1 %18, label %19, label %114, !dbg !537

19:                                               ; preds = %16
    #dbg_value(i8 1, !136, !DIExpression(), !507)
  %20 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.17) #17, !dbg !538
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 %20, !dbg !539
    #dbg_value(ptr %21, !137, !DIExpression(), !507)
  %22 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #17, !dbg !540
    #dbg_value(ptr %22, !138, !DIExpression(), !507)
  %23 = icmp eq ptr %22, null, !dbg !541
  br i1 %23, label %48, label %24, !dbg !542

24:                                               ; preds = %19
    #dbg_value(ptr %21, !139, !DIExpression(), !543)
    #dbg_value(i64 0, !143, !DIExpression(), !543)
  %25 = icmp ult ptr %21, %22
  br i1 %25, label %26, label %48, !dbg !544

26:                                               ; preds = %24
  %27 = tail call ptr @__ctype_b_loc() #18, !dbg !507
  %28 = load ptr, ptr %27, align 8, !tbaa !545
  br label %29, !dbg !547

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %21, %26 ], [ %32, %29 ]
  %31 = phi i64 [ 0, %26 ], [ %41, %29 ]
    #dbg_value(ptr %30, !139, !DIExpression(), !543)
    #dbg_value(i64 %31, !143, !DIExpression(), !543)
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 1, !dbg !548
    #dbg_value(ptr %32, !139, !DIExpression(), !543)
  %33 = load i8, ptr %30, align 1, !dbg !549, !tbaa !516
  %34 = sext i8 %33 to i64, !dbg !550
  %35 = getelementptr inbounds i16, ptr %28, i64 %34, !dbg !550
  %36 = load i16, ptr %35, align 2, !dbg !550, !tbaa !551
  %37 = freeze i16 %36, !dbg !553
  %38 = lshr i16 %37, 13, !dbg !553
  %39 = and i16 %38, 1, !dbg !553
  %40 = zext nneg i16 %39 to i64, !dbg !553
  %41 = add i64 %31, %40, !dbg !554
    #dbg_value(i64 %41, !143, !DIExpression(), !543)
  %42 = icmp ult ptr %32, %22, !dbg !555
  %43 = icmp samesign ult i64 %41, 2, !dbg !556
  %44 = select i1 %42, i1 %43, i1 false, !dbg !556
  br i1 %44, label %29, label %45, !dbg !557, !llvm.loop !558

45:                                               ; preds = %29
  %46 = icmp ne i64 %41, 2, !dbg !561
  %47 = select i1 %46, ptr %22, ptr %21, !dbg !563
  br label %48, !dbg !563

48:                                               ; preds = %45, %19, %24
  %49 = phi ptr [ %21, %19 ], [ %22, %24 ], [ %47, %45 ], !dbg !507
  %50 = phi i1 [ false, %19 ], [ true, %24 ], [ %46, %45 ], !dbg !507
    #dbg_value(i8 poison, !136, !DIExpression(), !507)
    #dbg_value(ptr %49, !138, !DIExpression(), !507)
  %51 = tail call i64 @strcspn(ptr noundef nonnull %49, ptr noundef nonnull @.str.18) #17, !dbg !564
    #dbg_value(i64 %51, !144, !DIExpression(), !507)
  %52 = getelementptr inbounds nuw i8, ptr %49, i64 %51, !dbg !565
    #dbg_value(ptr %52, !145, !DIExpression(), !507)
  br label %53, !dbg !566

53:                                               ; preds = %84, %48
  %54 = phi ptr [ %52, %48 ], [ %85, %84 ], !dbg !507
  %55 = phi i1 [ %50, %48 ], [ %63, %84 ], !dbg !507
    #dbg_value(i8 poison, !136, !DIExpression(), !507)
    #dbg_value(ptr %54, !145, !DIExpression(), !507)
  %56 = load i8, ptr %54, align 1, !dbg !567, !tbaa !516
  switch i8 %56, label %62 [
    i8 0, label %86
    i8 10, label %86
    i8 45, label %57
  ], !dbg !568

57:                                               ; preds = %53
  %58 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !569
  %59 = load i8, ptr %58, align 1, !dbg !569, !tbaa !516
  %60 = icmp ne i8 %59, 45, !dbg !572
  %61 = select i1 %60, i1 %55, i1 false, !dbg !573
  br label %62, !dbg !573

62:                                               ; preds = %57, %53
  %63 = phi i1 [ %55, %53 ], [ %61, %57 ], !dbg !507
    #dbg_value(i8 poison, !136, !DIExpression(), !507)
  %64 = tail call ptr @__ctype_b_loc() #18, !dbg !574
  %65 = load ptr, ptr %64, align 8, !dbg !574, !tbaa !545
  %66 = sext i8 %56 to i64, !dbg !574
  %67 = getelementptr inbounds i16, ptr %65, i64 %66, !dbg !574
  %68 = load i16, ptr %67, align 2, !dbg !574, !tbaa !551
  %69 = and i16 %68, 8192, !dbg !574
  %70 = icmp eq i16 %69, 0, !dbg !576
  br i1 %70, label %84, label %71, !dbg !577

71:                                               ; preds = %62
  %72 = icmp eq i8 %56, 9, !dbg !578
  br i1 %72, label %86, label %73, !dbg !581

73:                                               ; preds = %71
  %74 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !582
  %75 = load i8, ptr %74, align 1, !dbg !582, !tbaa !516
  %76 = sext i8 %75 to i64, !dbg !583
  %77 = getelementptr inbounds i16, ptr %65, i64 %76, !dbg !583
  %78 = load i16, ptr %77, align 2, !dbg !583, !tbaa !551
  %79 = and i16 %78, 8192, !dbg !583
  %80 = icmp eq i16 %79, 0, !dbg !584
  %81 = icmp eq i8 %75, 45
  %82 = or i1 %63, %81
  %83 = select i1 %80, i1 %82, i1 false, !dbg !585
  br i1 %83, label %84, label %86, !dbg !585

84:                                               ; preds = %73, %62
  %85 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !586
    #dbg_value(ptr %85, !145, !DIExpression(), !507)
  br label %53, !dbg !566, !llvm.loop !587

86:                                               ; preds = %53, %53, %71, %73
  %87 = ptrtoint ptr %21 to i64, !dbg !589
  %88 = load ptr, ptr @stdout, align 8, !dbg !590, !tbaa !434
  %89 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %0, i64 noundef 1, i64 noundef %20, ptr noundef %88), !dbg !591
    #dbg_value(ptr @.str.3, !519, !DIExpression(), !592)
    #dbg_value(ptr poison, !525, !DIExpression(), !592)
    #dbg_value(ptr @.str.3, !519, !DIExpression(), !594)
    #dbg_value(ptr poison, !525, !DIExpression(), !594)
    #dbg_value(ptr @.str.3, !519, !DIExpression(), !596)
    #dbg_value(ptr poison, !525, !DIExpression(), !596)
    #dbg_value(ptr @.str.3, !519, !DIExpression(), !598)
    #dbg_value(ptr poison, !525, !DIExpression(), !598)
    #dbg_value(ptr @.str.3, !519, !DIExpression(), !600)
    #dbg_value(ptr poison, !525, !DIExpression(), !600)
    #dbg_value(ptr @.str.3, !519, !DIExpression(), !602)
    #dbg_value(ptr poison, !525, !DIExpression(), !602)
    #dbg_value(ptr @.str.3, !519, !DIExpression(), !604)
    #dbg_value(ptr poison, !525, !DIExpression(), !604)
    #dbg_value(ptr @.str.3, !519, !DIExpression(), !606)
    #dbg_value(ptr poison, !525, !DIExpression(), !606)
    #dbg_value(ptr @.str.3, !519, !DIExpression(), !608)
    #dbg_value(ptr poison, !525, !DIExpression(), !608)
    #dbg_value(ptr @.str.3, !519, !DIExpression(), !610)
    #dbg_value(ptr poison, !525, !DIExpression(), !610)
    #dbg_value(ptr @.str.3, !202, !DIExpression(), !507)
  %90 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(7) @.str.32, i64 noundef 6) #17, !dbg !612
  %91 = icmp eq i32 %90, 0, !dbg !614
  br i1 %91, label %95, label %92, !dbg !615

92:                                               ; preds = %86
  %93 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(10) @.str.33, i64 noundef 9) #17, !dbg !616
  %94 = icmp eq i32 %93, 0, !dbg !617
  br i1 %94, label %95, label %98, !dbg !618

95:                                               ; preds = %92, %86
  %96 = trunc i64 %51 to i32, !dbg !619
  %97 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %96, ptr noundef nonnull %49) #15, !dbg !621
  br label %101, !dbg !622

98:                                               ; preds = %92
  %99 = trunc i64 %51 to i32, !dbg !623
  %100 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, i32 noundef %99, ptr noundef nonnull %49) #15, !dbg !625
  br label %101

101:                                              ; preds = %98, %95
  %102 = load ptr, ptr @stdout, align 8, !dbg !626, !tbaa !434
  %103 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %102), !dbg !627
  %104 = load ptr, ptr @stdout, align 8, !dbg !628, !tbaa !434
  %105 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %104), !dbg !629
  %106 = ptrtoint ptr %54 to i64, !dbg !630
  %107 = sub i64 %106, %87, !dbg !630
  %108 = load ptr, ptr @stdout, align 8, !dbg !631, !tbaa !434
  %109 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %21, i64 noundef 1, i64 noundef %107, ptr noundef %108), !dbg !632
  %110 = load ptr, ptr @stdout, align 8, !dbg !633, !tbaa !434
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %110), !dbg !634
  %112 = load ptr, ptr @stdout, align 8, !dbg !635, !tbaa !434
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %112), !dbg !636
  br label %114, !dbg !637

114:                                              ; preds = %16, %101
  %115 = phi ptr [ %54, %101 ], [ %0, %16 ]
  %116 = load ptr, ptr @stdout, align 8, !dbg !507, !tbaa !434
  %117 = tail call i32 @fputs_unlocked(ptr noundef %115, ptr noundef %116), !dbg !507
  ret void, !dbg !638
}

declare !dbg !639 void @emit_tab_list_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #6 !dbg !640 {
  %3 = alloca %struct.__mbstate_t, align 4, !DIAssignID !653
    #dbg_assign(i1 poison, !654, !DIExpression(), !653, ptr %3, !DIExpression(), !676)
  %4 = alloca i32, align 4, !DIAssignID !688
  %5 = alloca %struct.mbbuf_t, align 8, !DIAssignID !689
    #dbg_assign(i1 poison, !339, !DIExpression(), !689, ptr %5, !DIExpression(), !690)
  %6 = alloca i64, align 8, !DIAssignID !691
    #dbg_assign(i1 poison, !371, !DIExpression(), !691, ptr %6, !DIExpression(), !692)
  %7 = alloca i8, align 1, !DIAssignID !693
  %8 = alloca [2 x i8], align 1, !DIAssignID !694
    #dbg_assign(i1 poison, !648, !DIExpression(), !694, ptr %8, !DIExpression(), !695)
    #dbg_value(i32 %0, !645, !DIExpression(), !696)
    #dbg_value(ptr %1, !646, !DIExpression(), !696)
  %9 = load ptr, ptr %1, align 8, !dbg !697, !tbaa !437
  tail call void @set_program_name(ptr noundef %9) #15, !dbg !698
  %10 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #15, !dbg !699
  %11 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #15, !dbg !700
  %12 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #15, !dbg !701
  %13 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #15, !dbg !702
  store i8 1, ptr @convert_entire_line, align 1, !dbg !703, !tbaa !704
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 1
  br label %15, !dbg !706

15:                                               ; preds = %25, %2
  %16 = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @shortopts, ptr noundef nonnull @longopts, ptr noundef null) #15, !dbg !707
    #dbg_value(i32 %16, !647, !DIExpression(), !696)
  switch i32 %16, label %33 [
    i32 -1, label %34
    i32 105, label %17
    i32 116, label %18
    i32 48, label %20
    i32 49, label %20
    i32 50, label %20
    i32 51, label %20
    i32 52, label %20
    i32 53, label %20
    i32 54, label %20
    i32 55, label %20
    i32 56, label %20
    i32 57, label %20
    i32 -130, label %28
    i32 -131, label %29
  ], !dbg !708

17:                                               ; preds = %15
  store i8 0, ptr @convert_entire_line, align 1, !dbg !709, !tbaa !704
  br label %25, !dbg !710

18:                                               ; preds = %15
  %19 = load ptr, ptr @optarg, align 8, !dbg !711, !tbaa !437
  call void @parse_tab_stops(ptr noundef %19) #15, !dbg !712
  br label %25, !dbg !713

20:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15, %15, %15
  %21 = load ptr, ptr @optarg, align 8, !dbg !714, !tbaa !437
  %22 = icmp eq ptr %21, null, !dbg !715
  br i1 %22, label %26, label %23, !dbg !716

23:                                               ; preds = %20
  %24 = getelementptr inbounds i8, ptr %21, i64 -1, !dbg !717
  call void @parse_tab_stops(ptr noundef nonnull %24) #15, !dbg !718
  br label %25, !dbg !718

25:                                               ; preds = %23, %26, %18, %17
  br label %15, !dbg !707, !llvm.loop !719

26:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15, !dbg !721
  %27 = trunc nuw nsw i32 %16 to i8, !dbg !722
  store i8 %27, ptr %8, align 1, !dbg !723, !tbaa !516, !DIAssignID !724
    #dbg_assign(i8 %27, !648, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !724, ptr %8, !DIExpression(), !695)
  store i8 0, ptr %14, align 1, !dbg !725, !tbaa !516, !DIAssignID !726
    #dbg_assign(i8 0, !648, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !726, ptr %14, !DIExpression(), !695)
  call void @parse_tab_stops(ptr noundef nonnull %8) #15, !dbg !727
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15, !dbg !728
  br label %25

28:                                               ; preds = %15
  call void @usage(i32 noundef 0) #19, !dbg !729
  unreachable, !dbg !729

29:                                               ; preds = %15
  %30 = load ptr, ptr @stdout, align 8, !dbg !730, !tbaa !434
  %31 = load ptr, ptr @Version, align 8, !dbg !730, !tbaa !437
  %32 = call ptr @proper_name_lite(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #15, !dbg !731
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %30, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, ptr noundef %31, ptr noundef %32, ptr noundef null) #15, !dbg !730
  call void @exit(i32 noundef 0) #16, !dbg !730
  unreachable, !dbg !730

33:                                               ; preds = %15
  call void @usage(i32 noundef 1) #19, !dbg !732
  unreachable, !dbg !732

34:                                               ; preds = %15
  call void @finalize_tab_stops() #15, !dbg !733
  %35 = load i32, ptr @optind, align 4, !dbg !734, !tbaa !419
  %36 = icmp slt i32 %35, %0, !dbg !735
  %37 = sext i32 %35 to i64, !dbg !736
  %38 = getelementptr inbounds ptr, ptr %1, i64 %37, !dbg !736
  %39 = select i1 %36, ptr %38, ptr null, !dbg !736
  call void @set_file_list(ptr noundef %39) #15, !dbg !737
    #dbg_assign(i1 poison, !372, !DIExpression(), !693, ptr %7, !DIExpression(), !738)
  %40 = call ptr @next_file(ptr noundef null) #15, !dbg !739
    #dbg_value(ptr %40, !338, !DIExpression(), !690)
  %41 = icmp eq ptr %40, null, !dbg !740
  br i1 %41, label %228, label %42, !dbg !742

42:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !dbg !743
    #dbg_value(ptr %5, !744, !DIExpression(), !752)
    #dbg_value(ptr @expand.line_in, !749, !DIExpression(), !752)
    #dbg_value(i64 262144, !750, !DIExpression(), !752)
    #dbg_value(ptr %40, !751, !DIExpression(), !752)
  store ptr @expand.line_in, ptr %5, align 8, !dbg !754, !tbaa !755, !DIAssignID !758
    #dbg_assign(ptr @expand.line_in, !339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !758, ptr %5, !DIExpression(), !690)
  %43 = getelementptr inbounds nuw i8, ptr %5, i64 8, !dbg !759
  store ptr %40, ptr %43, align 8, !dbg !760, !tbaa !761, !DIAssignID !762
    #dbg_assign(ptr %40, !339, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !762, ptr %43, !DIExpression(), !690)
  %44 = getelementptr inbounds nuw i8, ptr %5, i64 16, !dbg !763
  store i64 262144, ptr %44, align 8, !dbg !764, !tbaa !765, !DIAssignID !766
    #dbg_assign(i64 262144, !339, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !766, ptr %44, !DIExpression(), !690)
  %45 = getelementptr inbounds nuw i8, ptr %5, i64 24, !dbg !767
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %45, i8 0, i64 17, i1 false), !dbg !768, !DIAssignID !769
    #dbg_assign(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 192, 136), !769, ptr %45, !DIExpression(), !690)
  %46 = getelementptr inbounds nuw i8, ptr %5, i64 32
  br label %47, !dbg !770

47:                                               ; preds = %226, %42
  %48 = phi ptr [ %40, %42 ], [ %113, %226 ], !dbg !690
    #dbg_value(ptr %48, !338, !DIExpression(), !690)
    #dbg_value(i8 1, !364, !DIExpression(), !692)
    #dbg_value(i64 0, !365, !DIExpression(), !692)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !dbg !771
  store i64 0, ptr %6, align 8, !dbg !772, !tbaa !773, !DIAssignID !774
    #dbg_assign(i64 0, !371, !DIExpression(), !774, ptr %6, !DIExpression(), !692)
  br label %49, !dbg !775

49:                                               ; preds = %222, %47
  %50 = phi i64 [ 0, %47 ], [ %223, %222 ], !dbg !692
  %51 = phi i1 [ true, %47 ], [ %224, %222 ], !dbg !692
  %52 = phi ptr [ %48, %47 ], [ %113, %222 ], !dbg !690
    #dbg_value(ptr %52, !338, !DIExpression(), !690)
    #dbg_value(i8 poison, !364, !DIExpression(), !692)
    #dbg_value(i64 %50, !365, !DIExpression(), !692)
  br label %53, !dbg !776

53:                                               ; preds = %108, %49
  %54 = phi ptr [ %52, %49 ], [ %106, %108 ], !dbg !690
    #dbg_value(ptr %54, !338, !DIExpression(), !690)
    #dbg_value(ptr %5, !683, !DIExpression(), !777)
  %55 = call i64 @mbbuf_fill(ptr noundef nonnull %5), !dbg !778
    #dbg_value(i64 %55, !684, !DIExpression(), !777)
  %56 = icmp slt i64 %55, 1, !dbg !779
  br i1 %56, label %104, label %57, !dbg !781

57:                                               ; preds = %53
  %58 = load ptr, ptr %5, align 8, !dbg !782, !tbaa !755
  %59 = load i64, ptr %46, align 8, !dbg !783, !tbaa !784
  %60 = getelementptr inbounds i8, ptr %58, i64 %59, !dbg !785
    #dbg_assign(i1 poison, !662, !DIExpression(), !688, ptr %4, !DIExpression(), !676)
    #dbg_value(ptr %60, !659, !DIExpression(), !676)
    #dbg_value(!DIArgList(ptr poison, i64 poison), !660, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !676)
  %61 = load i8, ptr %60, align 1, !dbg !786, !tbaa !516
    #dbg_value(i8 %61, !661, !DIExpression(), !676)
    #dbg_value(i8 %61, !787, !DIExpression(), !792)
  %62 = icmp sgt i8 %61, -1, !dbg !795
  br i1 %62, label %63, label %66, !dbg !796

63:                                               ; preds = %57
    #dbg_value(i64 1, !797, !DIExpression(), !803)
  %64 = zext nneg i8 %61 to i64, !dbg !805
    #dbg_value(i64 %64, !802, !DIExpression(), !803)
  %65 = or disjoint i64 %64, 1099511627776, !dbg !805
  br label %86, !dbg !806

66:                                               ; preds = %57
  %67 = load i64, ptr %45, align 8, !dbg !807, !tbaa !808
    #dbg_value(!DIArgList(ptr %58, i64 %67), !660, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !676)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !dbg !809
  store i32 0, ptr %3, align 4, !dbg !810, !tbaa !811, !DIAssignID !813
    #dbg_assign(i32 0, !654, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !813, ptr %3, !DIExpression(), !676)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15, !dbg !814
  %68 = sub nsw i64 %67, %59, !dbg !815
  %69 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %60, i64 noundef %68, ptr noundef nonnull %3) #15, !dbg !816
    #dbg_value(i64 %69, !663, !DIExpression(), !676)
  %70 = icmp slt i64 %69, 0, !dbg !817
  br i1 %70, label %71, label %75, !dbg !819, !prof !820

71:                                               ; preds = %66
    #dbg_value(i8 %61, !821, !DIExpression(), !826)
  %72 = zext i8 %61 to i64, !dbg !828
  %73 = shl nuw nsw i64 %72, 32, !dbg !828
  %74 = or disjoint i64 %73, 1099511627776, !dbg !828
  br label %83, !dbg !829

75:                                               ; preds = %66
  %76 = load i32, ptr %4, align 4, !dbg !830, !tbaa !419
    #dbg_value(i32 %76, !802, !DIExpression(), !831)
    #dbg_value(i64 %69, !797, !DIExpression(), !831)
  %77 = icmp ne i64 %69, 0, !dbg !833
  call void @llvm.assume(i1 %77), !dbg !834
  %78 = icmp samesign ult i64 %69, 5, !dbg !835
  call void @llvm.assume(i1 %78), !dbg !836
  %79 = icmp ult i32 %76, 1114112, !dbg !837
  call void @llvm.assume(i1 %79), !dbg !838
  %80 = shl nuw nsw i64 %69, 40, !dbg !839
  %81 = zext nneg i32 %76 to i64, !dbg !839
  %82 = or disjoint i64 %80, %81, !dbg !839
  br label %83, !dbg !840

83:                                               ; preds = %75, %71
  %84 = phi i64 [ %74, %71 ], [ %82, %75 ], !dbg !676
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !dbg !841
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !dbg !841
  %85 = load i64, ptr %46, align 8, !dbg !842, !tbaa !784
  br label %86

86:                                               ; preds = %83, %63
  %87 = phi i64 [ %59, %63 ], [ %85, %83 ], !dbg !842
  %88 = phi i64 [ %65, %63 ], [ %84, %83 ], !dbg !676
    #dbg_value(i64 %88, !685, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !777)
    #dbg_value(i64 %88, !685, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8), !777)
    #dbg_value(i64 %88, !685, !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8), !777)
    #dbg_value(i64 %88, !685, !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16), !777)
  %89 = and i64 %88, 1095216660480, !dbg !844
  %90 = icmp eq i64 %89, 0, !dbg !844
  br i1 %90, label %91, label %94, !dbg !845

91:                                               ; preds = %86
  %92 = lshr i64 %88, 40, !dbg !846
    #dbg_value(i64 %92, !685, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8), !777)
    #dbg_value(i64 %88, !685, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !777)
  %93 = add nsw i64 %92, %87, !dbg !847
  store i64 %93, ptr %46, align 8, !dbg !848, !tbaa !784, !DIAssignID !849
    #dbg_assign(i64 %93, !339, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !849, ptr %46, !DIExpression(), !690)
  br label %100, !dbg !850

94:                                               ; preds = %86
  %95 = load ptr, ptr %5, align 8, !dbg !851, !tbaa !755
  %96 = add nsw i64 %87, 1, !dbg !853
  store i64 %96, ptr %46, align 8, !dbg !854, !tbaa !784, !DIAssignID !855
    #dbg_assign(i64 %96, !339, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !855, ptr %46, !DIExpression(), !690)
  %97 = getelementptr inbounds i8, ptr %95, i64 %87, !dbg !856
  %98 = load i8, ptr %97, align 1, !dbg !857, !tbaa !516
  %99 = zext i8 %98 to i64, !dbg !858
    #dbg_value(i8 %98, !685, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !777)
  br label %100

100:                                              ; preds = %94, %91
  %101 = phi i64 [ %99, %94 ], [ %88, %91 ], !dbg !777
    #dbg_value(i64 poison, !685, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !777)
    #dbg_value(i64 poison, !685, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !777)
    #dbg_value(i64 poison, !685, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !777)
    #dbg_value(i64 poison, !685, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !777)
  %102 = trunc i64 %101 to i32, !dbg !859
    #dbg_value(i32 %102, !352, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !692)
    #dbg_value(!DIArgList(i64 %101, i64 %88), !352, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8), !692)
    #dbg_value(!DIArgList(i64 %101, i64 %88), !352, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8), !692)
    #dbg_value(i64 poison, !352, !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16), !692)
  %103 = icmp eq i32 %102, 1114112, !dbg !860
  br i1 %103, label %104, label %109, !dbg !861

104:                                              ; preds = %100, %53
  %105 = phi i64 [ %88, %100 ], [ 1114112, %53 ]
  %106 = call ptr @next_file(ptr noundef %54) #15, !dbg !862
    #dbg_value(ptr %106, !338, !DIExpression(), !690)
  %107 = icmp eq ptr %106, null, !dbg !863
  br i1 %107, label %109, label %108, !dbg !864

108:                                              ; preds = %104
    #dbg_value(ptr %5, !744, !DIExpression(), !865)
    #dbg_value(ptr @expand.line_in, !749, !DIExpression(), !865)
    #dbg_value(i64 262144, !750, !DIExpression(), !865)
    #dbg_value(ptr %106, !751, !DIExpression(), !865)
  store ptr @expand.line_in, ptr %5, align 8, !dbg !867, !tbaa !755, !DIAssignID !868
    #dbg_assign(ptr @expand.line_in, !339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !868, ptr %5, !DIExpression(), !690)
  store ptr %106, ptr %43, align 8, !dbg !869, !tbaa !761, !DIAssignID !870
    #dbg_assign(ptr %106, !339, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !870, ptr %43, !DIExpression(), !690)
  store i64 262144, ptr %44, align 8, !dbg !871, !tbaa !765, !DIAssignID !872
    #dbg_assign(i64 262144, !339, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !872, ptr %44, !DIExpression(), !690)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %45, i8 0, i64 17, i1 false), !dbg !873, !DIAssignID !874
    #dbg_assign(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 192, 136), !874, ptr %45, !DIExpression(), !690)
  br label %53, !dbg !776, !llvm.loop !875

109:                                              ; preds = %104, %100
  %110 = phi i1 [ false, %100 ], [ true, %104 ]
  %111 = phi i64 [ %88, %100 ], [ %105, %104 ]
  %112 = phi i32 [ %102, %100 ], [ 1114112, %104 ], !dbg !859
  %113 = phi ptr [ %54, %100 ], [ null, %104 ], !dbg !690
  %114 = lshr i64 %111, 40
  %115 = and i64 %114, 255
    #dbg_value(ptr %113, !338, !DIExpression(), !690)
  br i1 %51, label %116, label %195, !dbg !877

116:                                              ; preds = %109
  %117 = load i8, ptr @convert_entire_line, align 1, !dbg !878, !tbaa !704, !range !879, !noundef !880
  %118 = trunc nuw i8 %117 to i1, !dbg !881
  br i1 %118, label %122, label %119, !dbg !882

119:                                              ; preds = %116
    #dbg_value(i32 %112, !883, !DIExpression(), !888)
    #dbg_value(i32 %112, !890, !DIExpression(), !898)
  %120 = call i32 @iswblank(i32 noundef %112) #15, !dbg !900
  %121 = icmp ne i32 %120, 0, !dbg !901
  br label %122, !dbg !902

122:                                              ; preds = %119, %116
  %123 = phi i1 [ true, %116 ], [ %121, %119 ]
    #dbg_value(i8 poison, !364, !DIExpression(), !692)
  switch i32 %112, label %184 [
    i32 9, label %124
    i32 8, label %176
  ], !dbg !903

124:                                              ; preds = %122
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !dbg !904
  %125 = call i64 @get_next_tab_column(i64 noundef %50, ptr noundef nonnull %6, ptr noundef nonnull %7) #15, !dbg !905
    #dbg_value(i64 %125, !378, !DIExpression(), !738)
    #dbg_value(i64 %50, !365, !DIExpression(), !692)
  %126 = add nsw i64 %50, 1, !dbg !906
  %127 = icmp slt i64 %126, %125, !dbg !907
  br i1 %127, label %128, label %153, !dbg !908

128:                                              ; preds = %124, %150
  %129 = phi i64 [ %151, %150 ], [ %126, %124 ]
    #dbg_value(i32 32, !909, !DIExpression(), !915)
  %130 = load ptr, ptr @stdout, align 8, !dbg !918, !tbaa !434
  %131 = getelementptr inbounds nuw i8, ptr %130, i64 40, !dbg !919
  %132 = load ptr, ptr %131, align 8, !dbg !919, !tbaa !920
  %133 = getelementptr inbounds nuw i8, ptr %130, i64 48, !dbg !919
  %134 = load ptr, ptr %133, align 8, !dbg !919, !tbaa !925
  %135 = icmp ult ptr %132, %134, !dbg !919
  br i1 %135, label %136, label %138, !dbg !926, !prof !927

136:                                              ; preds = %128
  %137 = getelementptr inbounds nuw i8, ptr %132, i64 1, !dbg !928
  store ptr %137, ptr %131, align 8, !dbg !929, !tbaa !920
  store i8 32, ptr %132, align 1, !dbg !930, !tbaa !516
  br label %150, !dbg !931

138:                                              ; preds = %128
  %139 = call i32 @__overflow(ptr noundef nonnull %130, i32 noundef 32) #15, !dbg !919
  %140 = icmp slt i32 %139, 0, !dbg !932
  br i1 %140, label %141, label %150, !dbg !933

141:                                              ; preds = %138
  %142 = tail call ptr @__errno_location() #18, !dbg !934
  %143 = load i32, ptr %142, align 4, !dbg !939, !tbaa !419
    #dbg_value(i32 %143, !937, !DIExpression(), !940)
  %144 = load ptr, ptr @stdout, align 8, !dbg !941, !tbaa !434
  %145 = call i32 @fflush_unlocked(ptr noundef %144) #15, !dbg !942
  %146 = load ptr, ptr @stdout, align 8, !dbg !943, !tbaa !434
  %147 = call i32 @fpurge(ptr noundef %146) #15, !dbg !944
  %148 = load ptr, ptr @stdout, align 8, !dbg !945, !tbaa !434
  call void @clearerr_unlocked(ptr noundef %148) #15, !dbg !946
  %149 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #15, !dbg !947
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %143, ptr noundef %149) #15, !dbg !948
  unreachable, !dbg !948

150:                                              ; preds = %138, %136
    #dbg_value(i64 %129, !365, !DIExpression(), !692)
  %151 = add i64 %129, 1, !dbg !949
    #dbg_value(i64 %151, !365, !DIExpression(), !692)
  %152 = icmp eq i64 %151, %125, !dbg !950
  br i1 %152, label %153, label %128, !dbg !951, !llvm.loop !952

153:                                              ; preds = %150, %124
  %154 = phi i64 [ %126, %124 ], [ %125, %150 ], !dbg !949
    #dbg_value(i32 32, !909, !DIExpression(), !955)
  %155 = load ptr, ptr @stdout, align 8, !dbg !958, !tbaa !434
  %156 = getelementptr inbounds nuw i8, ptr %155, i64 40, !dbg !959
  %157 = load ptr, ptr %156, align 8, !dbg !959, !tbaa !920
  %158 = getelementptr inbounds nuw i8, ptr %155, i64 48, !dbg !959
  %159 = load ptr, ptr %158, align 8, !dbg !959, !tbaa !925
  %160 = icmp ult ptr %157, %159, !dbg !959
  br i1 %160, label %161, label %163, !dbg !960, !prof !927

161:                                              ; preds = %153
  %162 = getelementptr inbounds nuw i8, ptr %157, i64 1, !dbg !961
  store ptr %162, ptr %156, align 8, !dbg !962, !tbaa !920
  store i8 32, ptr %157, align 1, !dbg !963, !tbaa !516
  br label %175, !dbg !964

163:                                              ; preds = %153
  %164 = call i32 @__overflow(ptr noundef nonnull %155, i32 noundef 32) #15, !dbg !959
  %165 = icmp slt i32 %164, 0, !dbg !965
  br i1 %165, label %166, label %175, !dbg !966

166:                                              ; preds = %163
  %167 = tail call ptr @__errno_location() #18, !dbg !967
  %168 = load i32, ptr %167, align 4, !dbg !969, !tbaa !419
    #dbg_value(i32 %168, !937, !DIExpression(), !970)
  %169 = load ptr, ptr @stdout, align 8, !dbg !971, !tbaa !434
  %170 = call i32 @fflush_unlocked(ptr noundef %169) #15, !dbg !972
  %171 = load ptr, ptr @stdout, align 8, !dbg !973, !tbaa !434
  %172 = call i32 @fpurge(ptr noundef %171) #15, !dbg !974
  %173 = load ptr, ptr @stdout, align 8, !dbg !975, !tbaa !434
  call void @clearerr_unlocked(ptr noundef %173) #15, !dbg !976
  %174 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #15, !dbg !977
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %168, ptr noundef %174) #15, !dbg !978
  unreachable, !dbg !978

175:                                              ; preds = %163, %161
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !dbg !979
  br label %222

176:                                              ; preds = %122
  %177 = icmp ne i64 %50, 0, !dbg !980
  %178 = sext i1 %177 to i64, !dbg !982
  %179 = add i64 %50, %178, !dbg !983
    #dbg_value(i64 %179, !365, !DIExpression(), !692)
  %180 = load i64, ptr %6, align 8, !dbg !984, !tbaa !773
  %181 = icmp ne i64 %180, 0, !dbg !985
  %182 = sext i1 %181 to i64, !dbg !986
  %183 = add i64 %180, %182, !dbg !987
  store i64 %183, ptr %6, align 8, !dbg !988, !tbaa !773, !DIAssignID !989
    #dbg_assign(i64 %183, !371, !DIExpression(), !989, ptr %6, !DIExpression(), !692)
    #dbg_value(i8 poison, !364, !DIExpression(), !692)
  br label %198, !dbg !990

184:                                              ; preds = %122
    #dbg_value(i32 %112, !992, !DIExpression(), !997)
  %185 = call i32 @wcwidth(i32 noundef %112) #15, !dbg !999
    #dbg_value(i32 %185, !379, !DIExpression(), !1000)
  %186 = icmp slt i32 %185, 0, !dbg !1001
  %187 = select i1 %186, i32 1, i32 %185, !dbg !1003
  %188 = sext i32 %187 to i64, !dbg !1004
  %189 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %50, i64 %188), !dbg !1004
  %190 = extractvalue { i64, i1 } %189, 1, !dbg !1005
    #dbg_value(i64 poison, !365, !DIExpression(), !692)
  br i1 %190, label %191, label %193, !dbg !1006

191:                                              ; preds = %184
  %192 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #15, !dbg !1007
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %192) #15, !dbg !1008
  unreachable, !dbg !1008

193:                                              ; preds = %184
  %194 = extractvalue { i64, i1 } %189, 0, !dbg !1004
    #dbg_value(i64 %194, !365, !DIExpression(), !692)
  br label %195

195:                                              ; preds = %193, %109
  %196 = phi i64 [ %50, %109 ], [ %194, %193 ], !dbg !692
  %197 = phi i1 [ false, %109 ], [ %123, %193 ], !dbg !692
    #dbg_value(i8 poison, !364, !DIExpression(), !692)
    #dbg_value(i64 %196, !365, !DIExpression(), !692)
  br i1 %110, label %227, label %198, !dbg !990

198:                                              ; preds = %195, %176
  %199 = phi i1 [ %123, %176 ], [ %197, %195 ]
  %200 = phi i64 [ %179, %176 ], [ %196, %195 ]
    #dbg_value(!DIArgList(i64 %115, i64 0), !1009, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40), !1015)
    #dbg_value(i64 %115, !1009, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8), !1015)
    #dbg_value(!DIArgList(i64 %115, i64 0), !1009, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16), !1015)
    #dbg_value(ptr %5, !1014, !DIExpression(), !1015)
  %201 = load i64, ptr %46, align 8, !dbg !1017, !tbaa !784
  %202 = icmp slt i64 %201, %115, !dbg !1019
  br i1 %202, label %203, label %204, !dbg !1020

203:                                              ; preds = %198
  call void @__assert_fail(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 176, ptr noundef nonnull @__PRETTY_FUNCTION__.mbbuf_char_offset) #16, !dbg !1021
  unreachable, !dbg !1021

204:                                              ; preds = %198
  %205 = load ptr, ptr %5, align 8, !dbg !1024, !tbaa !755
  %206 = sub nsw i64 %201, %115, !dbg !1025
  %207 = getelementptr inbounds nuw i8, ptr %205, i64 %206, !dbg !1026
  %208 = load ptr, ptr @stdout, align 8, !dbg !1027, !tbaa !434
  %209 = call i64 @fwrite_unlocked(ptr noundef %207, i64 noundef 1, i64 noundef %114, ptr noundef %208), !dbg !1028
  %210 = load ptr, ptr @stdout, align 8, !dbg !1029, !tbaa !434
    #dbg_value(ptr %210, !1031, !DIExpression(), !1036)
  %211 = load i32, ptr %210, align 8, !dbg !1038, !tbaa !1039
  %212 = and i32 %211, 32, !dbg !1040
  %213 = icmp eq i32 %212, 0, !dbg !1040
  br i1 %213, label %222, label %214, !dbg !1041

214:                                              ; preds = %204
  %215 = tail call ptr @__errno_location() #18, !dbg !1042
  %216 = load i32, ptr %215, align 4, !dbg !1044, !tbaa !419
    #dbg_value(i32 %216, !937, !DIExpression(), !1045)
  %217 = call i32 @fflush_unlocked(ptr noundef nonnull %210) #15, !dbg !1046
  %218 = load ptr, ptr @stdout, align 8, !dbg !1047, !tbaa !434
  %219 = call i32 @fpurge(ptr noundef %218) #15, !dbg !1048
  %220 = load ptr, ptr @stdout, align 8, !dbg !1049, !tbaa !434
  call void @clearerr_unlocked(ptr noundef %220) #15, !dbg !1050
  %221 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #15, !dbg !1051
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %216, ptr noundef %221) #15, !dbg !1052
  unreachable, !dbg !1052

222:                                              ; preds = %204, %175
  %223 = phi i64 [ %154, %175 ], [ %200, %204 ], !dbg !1053
  %224 = phi i1 [ %123, %175 ], [ %199, %204 ], !dbg !1054
    #dbg_value(i8 poison, !364, !DIExpression(), !692)
    #dbg_value(i64 %223, !365, !DIExpression(), !692)
  %225 = icmp eq i32 %112, 10, !dbg !1055
  br i1 %225, label %226, label %49, !dbg !1056, !llvm.loop !1057

226:                                              ; preds = %222
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !dbg !1059
  br label %47

227:                                              ; preds = %195
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !dbg !1059
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !dbg !1060
  br label %228

228:                                              ; preds = %34, %227
  call void @cleanup_file_list_stdin() #15, !dbg !1061
  %229 = load i32, ptr @exit_status, align 4, !dbg !1062, !tbaa !419
  ret i32 %229, !dbg !1063
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

declare !dbg !1064 void @set_program_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !1066 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1070 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1073 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1076 i32 @atexit(ptr noundef) local_unnamed_addr #3

declare void @close_stdout() #1

; Function Attrs: nounwind
declare !dbg !1081 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1087 void @parse_tab_stops(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

declare !dbg !1088 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !1092 ptr @proper_name_lite(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1096 void @finalize_tab_stops() local_unnamed_addr #1

declare !dbg !1097 void @set_file_list(ptr noundef) local_unnamed_addr #1

declare !dbg !1100 void @cleanup_file_list_stdin() local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1101 noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1102 i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1106 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1109 ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1115 i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !1116 noundef i64 @fwrite_unlocked(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1122 i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1125 i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

declare !dbg !1128 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !1131 void @emit_bug_reporting_address() local_unnamed_addr #1

declare !dbg !1132 ptr @next_file(ptr noundef) local_unnamed_addr #1

declare !dbg !1135 i64 @get_next_tab_column(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #11

declare !dbg !1141 void @error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: inlinehint nounwind uwtable
declare i64 @mbbuf_fill(ptr noundef) local_unnamed_addr #4

declare !dbg !1145 i64 @rpl_mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !1150 i32 @iswblank(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1152 ptr @__errno_location() local_unnamed_addr #10

declare !dbg !1156 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #1

declare !dbg !1157 i32 @fpurge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !1158 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1161 i32 @wcwidth(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { noreturn }

!llvm.dbg.cu = !{!59}
!llvm.module.flags = !{!411, !412, !413, !414, !415, !416, !417}
!llvm.ident = !{!418}
!llvm.errno.tbaa = !{!419}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/expand.c", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "c80215ff64ab09027a1b86db960a2307")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 66)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 7)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 63)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 61)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 50)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 62)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 1)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 196, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 10)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 196, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 24)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "shortopts", scope: !59, file: !2, line: 52, type: !408, isLocal: true, isDefinition: true)
!59 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !60, retainedTypes: !93, globals: !104, splitDebugInlining: false, nameTableKind: None)
!60 = !{!61, !67, !83, !87, !90}
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !62, line: 356, baseType: !63, size: 32, elements: !64)
!62 = !DIFile(filename: "src/system.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "6a9c30566098770bfb4561b49834f302")
!63 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!64 = !{!65, !66}
!65 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!66 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !68, line: 46, baseType: !69, size: 32, elements: !70)
!68 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!69 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!70 = !{!71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82}
!71 = !DIEnumerator(name: "_ISupper", value: 256)
!72 = !DIEnumerator(name: "_ISlower", value: 512)
!73 = !DIEnumerator(name: "_ISalpha", value: 1024)
!74 = !DIEnumerator(name: "_ISdigit", value: 2048)
!75 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!76 = !DIEnumerator(name: "_ISspace", value: 8192)
!77 = !DIEnumerator(name: "_ISprint", value: 16384)
!78 = !DIEnumerator(name: "_ISgraph", value: 32768)
!79 = !DIEnumerator(name: "_ISblank", value: 1)
!80 = !DIEnumerator(name: "_IScntrl", value: 2)
!81 = !DIEnumerator(name: "_ISpunct", value: 4)
!82 = !DIEnumerator(name: "_ISalnum", value: 8)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !84, line: 130, baseType: !69, size: 32, elements: !85)
!84 = !DIFile(filename: "./lib/mcel.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3579582c4826b47e433381dcd966e882")
!85 = !{!86}
!86 = !DIEnumerator(name: "MCEL_CHAR_MAX", value: 1114111)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !84, line: 127, baseType: !69, size: 32, elements: !88)
!88 = !{!89}
!89 = !DIEnumerator(name: "MCEL_LEN_MAX", value: 4)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !84, line: 131, baseType: !69, size: 32, elements: !91)
!91 = !{!92}
!92 = !DIEnumerator(name: "MCEL_ERR_MIN", value: 128)
!93 = !{!94, !95, !63, !96, !97, !100, !102, !103}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!96 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !98, line: 18, baseType: !99)
!98 = !DIFile(filename: "/usr/lib/llvm-22/lib/clang/22/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!99 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!102 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!103 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!104 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !105, !110, !115, !120, !125, !207, !212, !214, !219, !224, !229, !231, !233, !238, !240, !242, !244, !246, !251, !253, !255, !257, !259, !261, !263, !268, !273, !278, !280, !282, !284, !286, !288, !290, !295, !297, !302, !307, !57, !312, !314, !316, !318, !320, !332, !389, !394, !396, !398, !401, !403}
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 229, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 14)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !2, line: 229, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 16)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !62, line: 748, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 56)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !62, line: 755, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 75)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !127, file: !62, line: 594, type: !63, isLocal: true, isDefinition: true)
!127 = distinct !DISubprogram(name: "oputs_", scope: !62, file: !62, line: 592, type: !128, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !130, keyInstructions: true)
!128 = !DISubroutineType(cc: DW_CC_nocall, types: !129)
!129 = !{null, !100, !100}
!130 = !{!131, !132, !133, !136, !137, !138, !139, !143, !144, !145, !146, !148, !201, !202, !203, !205, !206}
!131 = !DILocalVariable(name: "program", arg: 1, scope: !127, file: !62, line: 592, type: !100)
!132 = !DILocalVariable(name: "option", arg: 2, scope: !127, file: !62, line: 592, type: !100)
!133 = !DILocalVariable(name: "term", scope: !134, file: !62, line: 604, type: !100)
!134 = distinct !DILexicalBlock(scope: !135, file: !62, line: 601, column: 5)
!135 = distinct !DILexicalBlock(scope: !127, file: !62, line: 600, column: 7)
!136 = !DILocalVariable(name: "double_space", scope: !127, file: !62, line: 613, type: !103)
!137 = !DILocalVariable(name: "first_word", scope: !127, file: !62, line: 614, type: !100)
!138 = !DILocalVariable(name: "option_text", scope: !127, file: !62, line: 615, type: !100)
!139 = !DILocalVariable(name: "s", scope: !140, file: !62, line: 627, type: !100)
!140 = distinct !DILexicalBlock(scope: !141, file: !62, line: 624, column: 5)
!141 = distinct !DILexicalBlock(scope: !142, file: !62, line: 623, column: 12)
!142 = distinct !DILexicalBlock(scope: !127, file: !62, line: 616, column: 7)
!143 = !DILocalVariable(name: "spaces", scope: !140, file: !62, line: 628, type: !97)
!144 = !DILocalVariable(name: "anchor_len", scope: !127, file: !62, line: 639, type: !97)
!145 = !DILocalVariable(name: "desc_text", scope: !127, file: !62, line: 644, type: !100)
!146 = !DILocalVariable(name: "__ptr", scope: !147, file: !62, line: 663, type: !100)
!147 = distinct !DILexicalBlock(scope: !127, file: !62, line: 663, column: 3)
!148 = !DILocalVariable(name: "__stream", scope: !147, file: !62, line: 663, type: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !152)
!151 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !154)
!153 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !170, !172, !173, !174, !178, !179, !181, !182, !185, !187, !190, !193, !194, !195, !196, !197}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !152, file: !153, line: 51, baseType: !63, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !152, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !152, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !152, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !152, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !152, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !152, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !152, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !152, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !152, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !152, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !152, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !152, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !153, line: 36, flags: DIFlagFwdDecl)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !152, file: !153, line: 70, baseType: !171, size: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !152, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !152, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !152, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !176, line: 152, baseType: !177)
!176 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!177 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !152, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !152, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!180 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !152, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !152, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !153, line: 43, baseType: null)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !152, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !176, line: 153, baseType: !177)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !152, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !153, line: 37, flags: DIFlagFwdDecl)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !152, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !153, line: 38, flags: DIFlagFwdDecl)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !152, file: !153, line: 93, baseType: !171, size: 64, offset: 1344)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !152, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !152, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !152, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !152, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 20)
!201 = !DILocalVariable(name: "__cnt", scope: !147, file: !62, line: 663, type: !97)
!202 = !DILocalVariable(name: "url_program", scope: !127, file: !62, line: 667, type: !100)
!203 = !DILocalVariable(name: "__ptr", scope: !204, file: !62, line: 705, type: !100)
!204 = distinct !DILexicalBlock(scope: !127, file: !62, line: 705, column: 3)
!205 = !DILocalVariable(name: "__stream", scope: !204, file: !62, line: 705, type: !149)
!206 = !DILocalVariable(name: "__cnt", scope: !204, file: !62, line: 705, type: !97)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !62, line: 604, type: !209, isLocal: true, isDefinition: true)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 5)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !62, line: 605, type: !209, isLocal: true, isDefinition: true)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !62, line: 614, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 4)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !62, line: 639, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 6)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !62, line: 667, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 2)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !62, line: 667, type: !209, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !62, line: 668, type: !216, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !62, line: 668, type: !235, isLocal: true, isDefinition: true)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 3)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !62, line: 669, type: !209, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !62, line: 670, type: !221, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !62, line: 670, type: !221, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !62, line: 671, type: !19, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !62, line: 672, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 8)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !62, line: 673, type: !49, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !62, line: 674, type: !49, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !62, line: 675, type: !49, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !62, line: 676, type: !49, isLocal: true, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !62, line: 682, type: !19, isLocal: true, isDefinition: true)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !62, line: 683, type: !49, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !62, line: 688, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 17)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !62, line: 688, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 40)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !62, line: 695, type: !275, isLocal: true, isDefinition: true)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 15)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !62, line: 695, type: !29, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !62, line: 698, type: !235, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !62, line: 702, type: !209, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !62, line: 707, type: !209, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !62, line: 710, type: !248, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !62, line: 858, type: !112, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !62, line: 859, type: !292, isLocal: true, isDefinition: true)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 22)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !62, line: 860, type: !275, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !62, line: 882, type: !299, isLocal: true, isDefinition: true)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 27)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !62, line: 884, type: !304, isLocal: true, isDefinition: true)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 51)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !62, line: 885, type: !309, isLocal: true, isDefinition: true)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 12)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !209, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !248, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !209, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !248, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "longopts", scope: !59, file: !2, line: 54, type: !322, isLocal: true, isDefinition: true)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 1280, elements: !210)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !325, line: 50, size: 256, elements: !326)
!325 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!326 = !{!327, !328, !329, !331}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !324, file: !325, line: 52, baseType: !100, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !324, file: !325, line: 55, baseType: !63, size: 32, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !324, file: !325, line: 56, baseType: !330, size: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !324, file: !325, line: 57, baseType: !63, size: 32, offset: 192)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(name: "line_in", scope: !334, file: !2, line: 110, type: !386, isLocal: true, isDefinition: true)
!334 = distinct !DISubprogram(name: "expand", scope: !2, file: !2, line: 102, type: !335, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !337, keyInstructions: true)
!335 = !DISubroutineType(types: !336)
!336 = !{null}
!337 = !{!338, !339, !352, !364, !365, !371, !372, !378, !379, !382, !384, !385}
!338 = !DILocalVariable(name: "fp", scope: !334, file: !2, line: 105, type: !149)
!339 = !DILocalVariable(name: "mbbuf", scope: !334, file: !2, line: 111, type: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbbuf_t", file: !341, line: 55, baseType: !342)
!341 = !DIFile(filename: "./lib/mbbuf.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "867c2b5cbb0e5fe89cf43ca8d008516b")
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !341, line: 47, size: 384, elements: !343)
!343 = !{!344, !345, !346, !349, !350, !351}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !342, file: !341, line: 49, baseType: !94, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !342, file: !341, line: 50, baseType: !149, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !342, file: !341, line: 51, baseType: !347, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !348, line: 137, baseType: !177)
!348 = !DIFile(filename: "./lib/idx.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "a342c053ede588630cf36a09403114d3")
!349 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !342, file: !341, line: 52, baseType: !347, size: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !342, file: !341, line: 53, baseType: !347, size: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !342, file: !341, line: 54, baseType: !103, size: 8, offset: 320)
!352 = !DILocalVariable(name: "g", scope: !353, file: !2, line: 117, type: !354)
!353 = distinct !DILexicalBlock(scope: !334, file: !2, line: 115, column: 5)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !84, line: 143, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !84, line: 138, size: 64, elements: !356)
!356 = !{!357, !362, !363}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !355, file: !84, line: 140, baseType: !358, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !359, line: 37, baseType: !360)
!359 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !176, line: 57, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !176, line: 42, baseType: !69)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !355, file: !84, line: 141, baseType: !102, size: 8, offset: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !355, file: !84, line: 142, baseType: !102, size: 8, offset: 40)
!364 = !DILocalVariable(name: "convert", scope: !353, file: !2, line: 120, type: !103)
!365 = !DILocalVariable(name: "column", scope: !353, file: !2, line: 127, type: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "colno", file: !367, line: 20, baseType: !368)
!367 = !DIFile(filename: "src/expand-common.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "a812a23c6054c0178c7555c3090cc098")
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !369, line: 101, baseType: !370)
!369 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !176, line: 72, baseType: !177)
!371 = !DILocalVariable(name: "tab_index", scope: !353, file: !2, line: 130, type: !347)
!372 = !DILocalVariable(name: "last_tab", scope: !373, file: !2, line: 148, type: !103)
!373 = distinct !DILexicalBlock(scope: !374, file: !2, line: 146, column: 17)
!374 = distinct !DILexicalBlock(scope: !375, file: !2, line: 145, column: 19)
!375 = distinct !DILexicalBlock(scope: !376, file: !2, line: 142, column: 13)
!376 = distinct !DILexicalBlock(scope: !377, file: !2, line: 141, column: 15)
!377 = distinct !DILexicalBlock(scope: !353, file: !2, line: 136, column: 9)
!378 = !DILocalVariable(name: "next_tab_column", scope: !373, file: !2, line: 149, type: !366)
!379 = !DILocalVariable(name: "width", scope: !380, file: !2, line: 170, type: !63)
!380 = distinct !DILexicalBlock(scope: !381, file: !2, line: 169, column: 17)
!381 = distinct !DILexicalBlock(scope: !374, file: !2, line: 161, column: 24)
!382 = !DILocalVariable(name: "__ptr", scope: !383, file: !2, line: 180, type: !100)
!383 = distinct !DILexicalBlock(scope: !377, file: !2, line: 180, column: 11)
!384 = !DILocalVariable(name: "__stream", scope: !383, file: !2, line: 180, type: !149)
!385 = !DILocalVariable(name: "__cnt", scope: !383, file: !2, line: 180, type: !97)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2097152, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 262144)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !2, line: 172, type: !391, isLocal: true, isDefinition: true)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 23)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !341, line: 70, type: !226, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !341, line: 70, type: !107, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !341, line: 70, type: !400, isLocal: true, isDefinition: true)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 400, elements: !35)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !62, line: 959, type: !309, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !341, line: 176, type: !405, isLocal: true, isDefinition: true)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 344, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 43)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 272, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 34)
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
!423 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 64, type: !424, scopeLine: 65, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !426, keyInstructions: true)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !63}
!426 = !{!427}
!427 = !DILocalVariable(name: "status", arg: 1, scope: !423, file: !2, line: 64, type: !63)
!428 = !DILocation(line: 0, scope: !423)
!429 = !DILocation(line: 66, column: 14, scope: !430, atomGroup: 1, atomRank: 2)
!430 = distinct !DILexicalBlock(scope: !423, file: !2, line: 66, column: 7)
!431 = !DILocation(line: 66, column: 14, scope: !430, atomGroup: 1, atomRank: 1)
!432 = !DILocation(line: 67, column: 5, scope: !433)
!433 = distinct !DILexicalBlock(scope: !430, file: !2, line: 67, column: 5)
!434 = !{!435, !435, i64 0}
!435 = !{!"p1 _ZTS8_IO_FILE", !436, i64 0}
!436 = !{!"any pointer", !421, i64 0}
!437 = !{!438, !438, i64 0}
!438 = !{!"p1 omnipotent char", !436, i64 0}
!439 = !DILocation(line: 70, column: 15, scope: !440)
!440 = distinct !DILexicalBlock(scope: !430, file: !2, line: 69, column: 5)
!441 = !DILocation(line: 73, column: 15, scope: !440)
!442 = !DILocation(line: 70, column: 7, scope: !440)
!443 = !DILocation(line: 74, column: 14, scope: !440)
!444 = !DILocation(line: 76, column: 5, scope: !440)
!445 = !DILocation(line: 74, column: 7, scope: !440)
!446 = !DILocation(line: 748, column: 10, scope: !447, inlinedAt: !448)
!447 = distinct !DISubprogram(name: "emit_stdin_note", scope: !62, file: !62, line: 746, type: !335, scopeLine: 747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, keyInstructions: true)
!448 = distinct !DILocation(line: 78, column: 7, scope: !440)
!449 = !DILocation(line: 750, column: 5, scope: !447, inlinedAt: !448)
!450 = !DILocation(line: 748, column: 3, scope: !447, inlinedAt: !448)
!451 = !DILocation(line: 755, column: 10, scope: !452, inlinedAt: !453)
!452 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !62, file: !62, line: 753, type: !335, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, keyInstructions: true)
!453 = distinct !DILocation(line: 79, column: 7, scope: !440)
!454 = !DILocation(line: 757, column: 5, scope: !452, inlinedAt: !453)
!455 = !DILocation(line: 755, column: 3, scope: !452, inlinedAt: !453)
!456 = !DILocation(line: 81, column: 14, scope: !440)
!457 = !DILocation(line: 81, column: 7, scope: !440)
!458 = !DILocation(line: 85, column: 14, scope: !440)
!459 = !DILocation(line: 85, column: 7, scope: !440)
!460 = !DILocation(line: 89, column: 7, scope: !440)
!461 = !DILocation(line: 90, column: 14, scope: !440)
!462 = !DILocation(line: 90, column: 7, scope: !440)
!463 = !DILocation(line: 91, column: 14, scope: !440)
!464 = !DILocation(line: 91, column: 7, scope: !440)
!465 = !DILocalVariable(name: "program", arg: 1, scope: !466, file: !62, line: 855, type: !100)
!466 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !62, file: !62, line: 855, type: !467, scopeLine: 856, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !469, keyInstructions: true)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !100}
!469 = !{!465, !470, !477, !478, !480}
!470 = !DILocalVariable(name: "infomap", scope: !466, file: !62, line: 857, type: !471)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 896, elements: !20)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !466, file: !62, line: 857, size: 128, elements: !474)
!474 = !{!475, !476}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !473, file: !62, line: 857, baseType: !100, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !473, file: !62, line: 857, baseType: !100, size: 64, offset: 64)
!477 = !DILocalVariable(name: "node", scope: !466, file: !62, line: 867, type: !100)
!478 = !DILocalVariable(name: "map_prog", scope: !466, file: !62, line: 868, type: !479)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!480 = !DILocalVariable(name: "url_program", scope: !466, file: !62, line: 881, type: !100)
!481 = !DILocation(line: 0, scope: !466, inlinedAt: !482)
!482 = distinct !DILocation(line: 92, column: 7, scope: !440)
!483 = !DILocation(line: 876, column: 3, scope: !466, inlinedAt: !482)
!484 = !DILocation(line: 882, column: 11, scope: !466, inlinedAt: !482)
!485 = !DILocation(line: 882, column: 3, scope: !466, inlinedAt: !482)
!486 = !DILocation(line: 884, column: 11, scope: !466, inlinedAt: !482)
!487 = !DILocation(line: 884, column: 3, scope: !466, inlinedAt: !482)
!488 = !DILocation(line: 94, column: 3, scope: !423)
!489 = !DISubprogram(name: "__fprintf_chk", scope: !490, file: !490, line: 93, type: !491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!490 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!491 = !DISubroutineType(types: !492)
!492 = !{!63, !493, !63, !494, null}
!493 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !149)
!494 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!495 = !DISubprogram(name: "dcgettext", scope: !496, file: !496, line: 51, type: !497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!496 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!497 = !DISubroutineType(types: !498)
!498 = !{!94, !100, !100, !63}
!499 = !DISubprogram(name: "__printf__", linkageName: "rpl_printf", scope: !500, file: !500, line: 1944, type: !501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!500 = !DIFile(filename: "./lib/stdio.h", directory: "/workspaces/Thesis/.build/coreutils")
!501 = !DISubroutineType(types: !502)
!502 = !{!63, !494, null}
!503 = !DISubprogram(name: "fputs_unlocked", scope: !504, file: !504, line: 691, type: !505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!504 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!505 = !DISubroutineType(types: !506)
!506 = !{!63, !494, !493}
!507 = !DILocation(line: 0, scope: !127)
!508 = !DILocation(line: 600, column: 7, scope: !135)
!509 = !DILocation(line: 600, column: 19, scope: !135, atomGroup: 1, atomRank: 2)
!510 = !DILocation(line: 600, column: 19, scope: !135, atomGroup: 1, atomRank: 1)
!511 = !DILocation(line: 604, column: 26, scope: !134, atomGroup: 2, atomRank: 2)
!512 = !DILocation(line: 0, scope: !134)
!513 = !DILocation(line: 605, column: 23, scope: !134, atomGroup: 4, atomRank: 2)
!514 = !DILocation(line: 605, column: 28, scope: !134, atomGroup: 4, atomRank: 1)
!515 = !DILocation(line: 605, column: 32, scope: !134)
!516 = !{!421, !421, i64 0}
!517 = !DILocation(line: 605, column: 32, scope: !134, atomGroup: 5, atomRank: 2)
!518 = !DILocation(line: 605, column: 38, scope: !134, atomGroup: 5, atomRank: 1)
!519 = !DILocalVariable(name: "__s1", arg: 1, scope: !520, file: !521, line: 1368, type: !100)
!520 = distinct !DISubprogram(name: "streq", scope: !521, file: !521, line: 1368, type: !522, scopeLine: 1369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !524, keyInstructions: true)
!521 = !DIFile(filename: "./lib/string.h", directory: "/workspaces/Thesis/.build/coreutils")
!522 = !DISubroutineType(types: !523)
!523 = !{!103, !100, !100}
!524 = !{!519, !525}
!525 = !DILocalVariable(name: "__s2", arg: 2, scope: !520, file: !521, line: 1368, type: !100)
!526 = !DILocation(line: 0, scope: !520, inlinedAt: !527)
!527 = distinct !DILocation(line: 605, column: 41, scope: !134)
!528 = !DILocation(line: 1370, column: 11, scope: !520, inlinedAt: !527)
!529 = !DILocation(line: 1370, column: 10, scope: !520, inlinedAt: !527)
!530 = !DILocation(line: 605, column: 38, scope: !134, atomGroup: 3, atomRank: 2)
!531 = !DILocation(line: 605, column: 38, scope: !134)
!532 = !DILocation(line: 605, column: 19, scope: !134, atomGroup: 3, atomRank: 1)
!533 = !DILocation(line: 606, column: 5, scope: !134)
!534 = !DILocation(line: 607, column: 7, scope: !535)
!535 = distinct !DILexicalBlock(scope: !127, file: !62, line: 607, column: 7)
!536 = !DILocation(line: 607, column: 7, scope: !535, atomGroup: 6, atomRank: 2)
!537 = !DILocation(line: 607, column: 7, scope: !535, atomGroup: 6, atomRank: 1)
!538 = !DILocation(line: 614, column: 37, scope: !127)
!539 = !DILocation(line: 614, column: 35, scope: !127, atomGroup: 9, atomRank: 2)
!540 = !DILocation(line: 615, column: 29, scope: !127, atomGroup: 10, atomRank: 2)
!541 = !DILocation(line: 616, column: 8, scope: !142, atomGroup: 11, atomRank: 2)
!542 = !DILocation(line: 616, column: 7, scope: !142, atomGroup: 11, atomRank: 1)
!543 = !DILocation(line: 0, scope: !140)
!544 = !DILocation(line: 623, column: 24, scope: !141, atomGroup: 14, atomRank: 1)
!545 = !{!546, !546, i64 0}
!546 = !{!"p1 short", !436, i64 0}
!547 = !DILocation(line: 629, column: 7, scope: !140, atomGroup: 91, atomRank: 1)
!548 = !DILocation(line: 630, column: 32, scope: !140, atomGroup: 20, atomRank: 2)
!549 = !DILocation(line: 630, column: 30, scope: !140)
!550 = !DILocation(line: 630, column: 21, scope: !140)
!551 = !{!552, !552, i64 0}
!552 = !{!"short", !421, i64 0}
!553 = !DILocation(line: 630, column: 19, scope: !140)
!554 = !DILocation(line: 630, column: 16, scope: !140, atomGroup: 19, atomRank: 2)
!555 = !DILocation(line: 629, column: 16, scope: !140, atomGroup: 17, atomRank: 2)
!556 = !DILocation(line: 629, column: 30, scope: !140, atomGroup: 17, atomRank: 1)
!557 = !DILocation(line: 629, column: 7, scope: !140, atomGroup: 18, atomRank: 1)
!558 = distinct !{!558, !559, !550, !560}
!559 = !DILocation(line: 629, column: 7, scope: !140)
!560 = !{!"llvm.loop.mustprogress"}
!561 = !DILocation(line: 631, column: 18, scope: !562, atomGroup: 21, atomRank: 2)
!562 = distinct !DILexicalBlock(scope: !140, file: !62, line: 631, column: 11)
!563 = !DILocation(line: 631, column: 18, scope: !562)
!564 = !DILocation(line: 639, column: 23, scope: !127, atomGroup: 24, atomRank: 2)
!565 = !DILocation(line: 644, column: 39, scope: !127, atomGroup: 25, atomRank: 2)
!566 = !DILocation(line: 645, column: 3, scope: !127)
!567 = !DILocation(line: 645, column: 10, scope: !127)
!568 = !DILocation(line: 645, column: 21, scope: !127, atomGroup: 26, atomRank: 1)
!569 = !DILocation(line: 647, column: 32, scope: !570)
!570 = distinct !DILexicalBlock(scope: !571, file: !62, line: 647, column: 11)
!571 = distinct !DILexicalBlock(scope: !127, file: !62, line: 646, column: 5)
!572 = !DILocation(line: 647, column: 49, scope: !570, atomGroup: 29, atomRank: 2)
!573 = !DILocation(line: 647, column: 29, scope: !570, atomGroup: 29, atomRank: 1)
!574 = !DILocation(line: 649, column: 11, scope: !575)
!575 = distinct !DILexicalBlock(scope: !571, file: !62, line: 649, column: 11)
!576 = !DILocation(line: 649, column: 11, scope: !575, atomGroup: 31, atomRank: 2)
!577 = !DILocation(line: 649, column: 11, scope: !575, atomGroup: 31, atomRank: 1)
!578 = !DILocation(line: 651, column: 26, scope: !579, atomGroup: 32, atomRank: 2)
!579 = distinct !DILexicalBlock(scope: !580, file: !62, line: 651, column: 15)
!580 = distinct !DILexicalBlock(scope: !575, file: !62, line: 650, column: 9)
!581 = !DILocation(line: 651, column: 34, scope: !579, atomGroup: 32, atomRank: 1)
!582 = !DILocation(line: 651, column: 46, scope: !579)
!583 = !DILocation(line: 651, column: 37, scope: !579)
!584 = !DILocation(line: 651, column: 37, scope: !579, atomGroup: 33, atomRank: 2)
!585 = !DILocation(line: 651, column: 34, scope: !579, atomGroup: 33, atomRank: 1)
!586 = !DILocation(line: 659, column: 16, scope: !571, atomGroup: 38, atomRank: 2)
!587 = distinct !{!587, !566, !588, !560}
!588 = !DILocation(line: 660, column: 5, scope: !127)
!589 = !DILocation(line: 663, column: 33, scope: !127)
!590 = !DILocation(line: 663, column: 43, scope: !127)
!591 = !DILocation(line: 663, column: 3, scope: !127)
!592 = !DILocation(line: 0, scope: !520, inlinedAt: !593)
!593 = distinct !DILocation(line: 667, column: 31, scope: !127)
!594 = !DILocation(line: 0, scope: !520, inlinedAt: !595)
!595 = distinct !DILocation(line: 668, column: 31, scope: !127)
!596 = !DILocation(line: 0, scope: !520, inlinedAt: !597)
!597 = distinct !DILocation(line: 669, column: 31, scope: !127)
!598 = !DILocation(line: 0, scope: !520, inlinedAt: !599)
!599 = distinct !DILocation(line: 670, column: 31, scope: !127)
!600 = !DILocation(line: 0, scope: !520, inlinedAt: !601)
!601 = distinct !DILocation(line: 671, column: 31, scope: !127)
!602 = !DILocation(line: 0, scope: !520, inlinedAt: !603)
!603 = distinct !DILocation(line: 672, column: 31, scope: !127)
!604 = !DILocation(line: 0, scope: !520, inlinedAt: !605)
!605 = distinct !DILocation(line: 673, column: 31, scope: !127)
!606 = !DILocation(line: 0, scope: !520, inlinedAt: !607)
!607 = distinct !DILocation(line: 674, column: 31, scope: !127)
!608 = !DILocation(line: 0, scope: !520, inlinedAt: !609)
!609 = distinct !DILocation(line: 675, column: 31, scope: !127)
!610 = !DILocation(line: 0, scope: !520, inlinedAt: !611)
!611 = distinct !DILocation(line: 676, column: 31, scope: !127)
!612 = !DILocation(line: 682, column: 7, scope: !613)
!613 = distinct !DILexicalBlock(scope: !127, file: !62, line: 682, column: 7)
!614 = !DILocation(line: 682, column: 7, scope: !613, atomGroup: 64, atomRank: 2)
!615 = !DILocation(line: 683, column: 7, scope: !613, atomGroup: 64, atomRank: 1)
!616 = !DILocation(line: 683, column: 10, scope: !613)
!617 = !DILocation(line: 683, column: 10, scope: !613, atomGroup: 65, atomRank: 2)
!618 = !DILocation(line: 683, column: 7, scope: !613, atomGroup: 65, atomRank: 1)
!619 = !DILocation(line: 689, column: 41, scope: !620)
!620 = distinct !DILexicalBlock(scope: !613, file: !62, line: 684, column: 5)
!621 = !DILocation(line: 688, column: 7, scope: !620)
!622 = !DILocation(line: 690, column: 5, scope: !620)
!623 = !DILocation(line: 696, column: 15, scope: !624)
!624 = distinct !DILexicalBlock(scope: !613, file: !62, line: 692, column: 5)
!625 = !DILocation(line: 695, column: 7, scope: !624)
!626 = !DILocation(line: 698, column: 20, scope: !127)
!627 = !DILocation(line: 698, column: 3, scope: !127)
!628 = !DILocation(line: 702, column: 21, scope: !127)
!629 = !DILocation(line: 702, column: 3, scope: !127)
!630 = !DILocation(line: 705, column: 36, scope: !127)
!631 = !DILocation(line: 705, column: 50, scope: !127)
!632 = !DILocation(line: 705, column: 3, scope: !127)
!633 = !DILocation(line: 707, column: 21, scope: !127)
!634 = !DILocation(line: 707, column: 3, scope: !127)
!635 = !DILocation(line: 710, column: 28, scope: !127)
!636 = !DILocation(line: 710, column: 3, scope: !127)
!637 = !DILocation(line: 715, column: 1, scope: !127)
!638 = !DILocation(line: 715, column: 1, scope: !127, atomGroup: 80, atomRank: 1)
!639 = !DISubprogram(name: "emit_tab_list_info", scope: !367, file: !367, line: 76, type: !467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!640 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 189, type: !641, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !644, keyInstructions: true)
!641 = !DISubroutineType(types: !642)
!642 = !{!63, !63, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!644 = !{!645, !646, !647, !648}
!645 = !DILocalVariable(name: "argc", arg: 1, scope: !640, file: !2, line: 189, type: !63)
!646 = !DILocalVariable(name: "argv", arg: 2, scope: !640, file: !2, line: 189, type: !643)
!647 = !DILocalVariable(name: "c", scope: !640, file: !2, line: 191, type: !63)
!648 = !DILocalVariable(name: "tab_stop", scope: !649, file: !2, line: 220, type: !226)
!649 = distinct !DILexicalBlock(scope: !650, file: !2, line: 219, column: 13)
!650 = distinct !DILexicalBlock(scope: !651, file: !2, line: 216, column: 15)
!651 = distinct !DILexicalBlock(scope: !652, file: !2, line: 205, column: 9)
!652 = distinct !DILexicalBlock(scope: !640, file: !2, line: 203, column: 5)
!653 = distinct !DIAssignID()
!654 = !DILocalVariable(name: "mbs", scope: !655, file: !84, line: 237, type: !664)
!655 = distinct !DISubprogram(name: "mcel_scan", scope: !84, file: !84, line: 223, type: !656, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !658, keyInstructions: true)
!656 = !DISubroutineType(types: !657)
!657 = !{!354, !100, !100}
!658 = !{!659, !660, !661, !654, !662, !663}
!659 = !DILocalVariable(name: "p", arg: 1, scope: !655, file: !84, line: 223, type: !100)
!660 = !DILocalVariable(name: "lim", arg: 2, scope: !655, file: !84, line: 223, type: !100)
!661 = !DILocalVariable(name: "c", scope: !655, file: !84, line: 228, type: !4)
!662 = !DILocalVariable(name: "ch", scope: !655, file: !84, line: 260, type: !358)
!663 = !DILocalVariable(name: "len", scope: !655, file: !84, line: 261, type: !97)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !665, line: 6, baseType: !666)
!665 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !667, line: 21, baseType: !668)
!667 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !667, line: 13, size: 64, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !668, file: !667, line: 15, baseType: !63, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !668, file: !667, line: 20, baseType: !672, size: 32, offset: 32)
!672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !668, file: !667, line: 16, size: 32, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !672, file: !667, line: 18, baseType: !69, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !672, file: !667, line: 19, baseType: !216, size: 32)
!676 = !DILocation(line: 0, scope: !655, inlinedAt: !677)
!677 = distinct !DILocation(line: 158, column: 14, scope: !678, inlinedAt: !686)
!678 = distinct !DISubprogram(name: "mbbuf_get_char", scope: !341, file: !341, line: 153, type: !679, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !682, keyInstructions: true)
!679 = !DISubroutineType(types: !680)
!680 = !{!354, !681}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!682 = !{!683, !684, !685}
!683 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !678, file: !341, line: 153, type: !681)
!684 = !DILocalVariable(name: "available", scope: !678, file: !341, line: 155, type: !347)
!685 = !DILocalVariable(name: "g", scope: !678, file: !341, line: 158, type: !354)
!686 = distinct !DILocation(line: 137, column: 23, scope: !377, inlinedAt: !687)
!687 = distinct !DILocation(line: 240, column: 3, scope: !640)
!688 = distinct !DIAssignID()
!689 = distinct !DIAssignID()
!690 = !DILocation(line: 0, scope: !334, inlinedAt: !687)
!691 = distinct !DIAssignID()
!692 = !DILocation(line: 0, scope: !353, inlinedAt: !687)
!693 = distinct !DIAssignID()
!694 = distinct !DIAssignID()
!695 = !DILocation(line: 0, scope: !649)
!696 = !DILocation(line: 0, scope: !640)
!697 = !DILocation(line: 194, column: 21, scope: !640)
!698 = !DILocation(line: 194, column: 3, scope: !640)
!699 = !DILocation(line: 195, column: 3, scope: !640)
!700 = !DILocation(line: 196, column: 3, scope: !640)
!701 = !DILocation(line: 197, column: 3, scope: !640)
!702 = !DILocation(line: 199, column: 3, scope: !640)
!703 = !DILocation(line: 200, column: 23, scope: !640, atomGroup: 1, atomRank: 1)
!704 = !{!705, !705, i64 0}
!705 = !{!"_Bool", !421, i64 0}
!706 = !DILocation(line: 202, column: 3, scope: !640)
!707 = !DILocation(line: 202, column: 15, scope: !640, atomGroup: 2, atomRank: 2)
!708 = !DILocation(line: 202, column: 3, scope: !640, atomGroup: 4, atomRank: 1)
!709 = !DILocation(line: 207, column: 31, scope: !651, atomGroup: 6, atomRank: 1)
!710 = !DILocation(line: 208, column: 11, scope: !651, atomGroup: 7, atomRank: 1)
!711 = !DILocation(line: 211, column: 28, scope: !651)
!712 = !DILocation(line: 211, column: 11, scope: !651)
!713 = !DILocation(line: 212, column: 11, scope: !651, atomGroup: 8, atomRank: 1)
!714 = !DILocation(line: 216, column: 15, scope: !650)
!715 = !DILocation(line: 216, column: 15, scope: !650, atomGroup: 9, atomRank: 2)
!716 = !DILocation(line: 216, column: 15, scope: !650, atomGroup: 9, atomRank: 1)
!717 = !DILocation(line: 217, column: 37, scope: !650)
!718 = !DILocation(line: 217, column: 13, scope: !650)
!719 = distinct !{!719, !706, !720, !560}
!720 = !DILocation(line: 234, column: 5, scope: !640)
!721 = !DILocation(line: 220, column: 15, scope: !649)
!722 = !DILocation(line: 221, column: 29, scope: !649, atomGroup: 10, atomRank: 2)
!723 = !DILocation(line: 221, column: 27, scope: !649, atomGroup: 10, atomRank: 1)
!724 = distinct !DIAssignID()
!725 = !DILocation(line: 222, column: 27, scope: !649, atomGroup: 11, atomRank: 1)
!726 = distinct !DIAssignID()
!727 = !DILocation(line: 223, column: 15, scope: !649)
!728 = !DILocation(line: 224, column: 13, scope: !650)
!729 = !DILocation(line: 227, column: 9, scope: !651)
!730 = !DILocation(line: 229, column: 9, scope: !651)
!731 = !DILocation(line: 229, column: 49, scope: !651)
!732 = !DILocation(line: 232, column: 11, scope: !651)
!733 = !DILocation(line: 236, column: 3, scope: !640)
!734 = !DILocation(line: 238, column: 18, scope: !640)
!735 = !DILocation(line: 238, column: 25, scope: !640, atomGroup: 13, atomRank: 2)
!736 = !DILocation(line: 238, column: 18, scope: !640, atomGroup: 13, atomRank: 1)
!737 = !DILocation(line: 238, column: 3, scope: !640)
!738 = !DILocation(line: 0, scope: !373, inlinedAt: !687)
!739 = !DILocation(line: 105, column: 14, scope: !334, inlinedAt: !687, atomGroup: 1, atomRank: 2)
!740 = !DILocation(line: 107, column: 8, scope: !741, inlinedAt: !687, atomGroup: 2, atomRank: 2)
!741 = distinct !DILexicalBlock(scope: !334, file: !2, line: 107, column: 7)
!742 = !DILocation(line: 107, column: 7, scope: !741, inlinedAt: !687, atomGroup: 2, atomRank: 1)
!743 = !DILocation(line: 111, column: 3, scope: !334, inlinedAt: !687)
!744 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !745, file: !341, line: 67, type: !681)
!745 = distinct !DISubprogram(name: "mbbuf_init", scope: !341, file: !341, line: 67, type: !746, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !748, keyInstructions: true)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !681, !94, !347, !149}
!748 = !{!744, !749, !750, !751}
!749 = !DILocalVariable(name: "buffer", arg: 2, scope: !745, file: !341, line: 67, type: !94)
!750 = !DILocalVariable(name: "size", arg: 3, scope: !745, file: !341, line: 67, type: !347)
!751 = !DILocalVariable(name: "fp", arg: 4, scope: !745, file: !341, line: 67, type: !149)
!752 = !DILocation(line: 0, scope: !745, inlinedAt: !753)
!753 = distinct !DILocation(line: 112, column: 3, scope: !334, inlinedAt: !687)
!754 = !DILocation(line: 71, column: 17, scope: !745, inlinedAt: !753, atomGroup: 2, atomRank: 1)
!755 = !{!756, !438, i64 0}
!756 = !{!"", !438, i64 0, !435, i64 8, !757, i64 16, !757, i64 24, !757, i64 32, !705, i64 40}
!757 = !{!"long", !421, i64 0}
!758 = distinct !DIAssignID()
!759 = !DILocation(line: 72, column: 10, scope: !745, inlinedAt: !753)
!760 = !DILocation(line: 72, column: 13, scope: !745, inlinedAt: !753, atomGroup: 3, atomRank: 1)
!761 = !{!756, !435, i64 8}
!762 = distinct !DIAssignID()
!763 = !DILocation(line: 73, column: 10, scope: !745, inlinedAt: !753)
!764 = !DILocation(line: 73, column: 15, scope: !745, inlinedAt: !753, atomGroup: 4, atomRank: 1)
!765 = !{!756, !757, i64 16}
!766 = distinct !DIAssignID()
!767 = !DILocation(line: 74, column: 10, scope: !745, inlinedAt: !753)
!768 = !DILocation(line: 75, column: 17, scope: !745, inlinedAt: !753, atomGroup: 6, atomRank: 1)
!769 = distinct !DIAssignID()
!770 = !DILocation(line: 114, column: 3, scope: !334, inlinedAt: !687)
!771 = !DILocation(line: 130, column: 7, scope: !353, inlinedAt: !687)
!772 = !DILocation(line: 130, column: 13, scope: !353, inlinedAt: !687, atomGroup: 6, atomRank: 1)
!773 = !{!757, !757, i64 0}
!774 = distinct !DIAssignID()
!775 = !DILocation(line: 135, column: 7, scope: !353, inlinedAt: !687)
!776 = !DILocation(line: 137, column: 11, scope: !377, inlinedAt: !687)
!777 = !DILocation(line: 0, scope: !678, inlinedAt: !686)
!778 = !DILocation(line: 155, column: 21, scope: !678, inlinedAt: !686, atomGroup: 1, atomRank: 2)
!779 = !DILocation(line: 156, column: 17, scope: !780, inlinedAt: !686, atomGroup: 2, atomRank: 2)
!780 = distinct !DILexicalBlock(scope: !678, file: !341, line: 156, column: 7)
!781 = !DILocation(line: 156, column: 17, scope: !780, inlinedAt: !686, atomGroup: 2, atomRank: 1)
!782 = !DILocation(line: 158, column: 32, scope: !678, inlinedAt: !686)
!783 = !DILocation(line: 158, column: 48, scope: !678, inlinedAt: !686)
!784 = !{!756, !757, i64 32}
!785 = !DILocation(line: 158, column: 39, scope: !678, inlinedAt: !686)
!786 = !DILocation(line: 228, column: 12, scope: !655, inlinedAt: !677, atomGroup: 1, atomRank: 2)
!787 = !DILocalVariable(name: "c", arg: 1, scope: !788, file: !84, line: 215, type: !4)
!788 = distinct !DISubprogram(name: "mcel_isbasic", scope: !84, file: !84, line: 215, type: !789, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !791, keyInstructions: true)
!789 = !DISubroutineType(types: !790)
!790 = !{!103, !4}
!791 = !{!787}
!792 = !DILocation(line: 0, scope: !788, inlinedAt: !793)
!793 = distinct !DILocation(line: 229, column: 7, scope: !794, inlinedAt: !677)
!794 = distinct !DILexicalBlock(scope: !655, file: !84, line: 229, column: 7)
!795 = !DILocation(line: 217, column: 24, scope: !788, inlinedAt: !793, atomGroup: 2, atomRank: 2)
!796 = !DILocation(line: 229, column: 7, scope: !794, inlinedAt: !677, atomGroup: 2, atomRank: 1)
!797 = !DILocalVariable(name: "len", arg: 2, scope: !798, file: !84, line: 167, type: !97)
!798 = distinct !DISubprogram(name: "mcel_ch", scope: !84, file: !84, line: 167, type: !799, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !801, keyInstructions: true)
!799 = !DISubroutineType(types: !800)
!800 = !{!354, !358, !97}
!801 = !{!802, !797}
!802 = !DILocalVariable(name: "ch", arg: 1, scope: !798, file: !84, line: 167, type: !358)
!803 = !DILocation(line: 0, scope: !798, inlinedAt: !804)
!804 = distinct !DILocation(line: 230, column: 12, scope: !794, inlinedAt: !677)
!805 = !DILocation(line: 172, column: 3, scope: !798, inlinedAt: !804, atomGroup: 4, atomRank: 1)
!806 = !DILocation(line: 230, column: 5, scope: !794, inlinedAt: !677, atomGroup: 3, atomRank: 1)
!807 = !DILocation(line: 159, column: 48, scope: !678, inlinedAt: !686)
!808 = !{!756, !757, i64 24}
!809 = !DILocation(line: 237, column: 3, scope: !655, inlinedAt: !677)
!810 = !DILocation(line: 237, column: 30, scope: !655, inlinedAt: !677, atomGroup: 4, atomRank: 1)
!811 = !{!812, !420, i64 0}
!812 = !{!"", !420, i64 0, !421, i64 4}
!813 = distinct !DIAssignID()
!814 = !DILocation(line: 260, column: 3, scope: !655, inlinedAt: !677)
!815 = !DILocation(line: 261, column: 38, scope: !655, inlinedAt: !677)
!816 = !DILocation(line: 261, column: 16, scope: !655, inlinedAt: !677, atomGroup: 5, atomRank: 2)
!817 = !DILocation(line: 267, column: 37, scope: !818, inlinedAt: !677)
!818 = distinct !DILexicalBlock(scope: !655, file: !84, line: 267, column: 7)
!819 = !DILocation(line: 267, column: 7, scope: !818, inlinedAt: !677, atomGroup: 6, atomRank: 1)
!820 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!821 = !DILocalVariable(name: "err", arg: 1, scope: !822, file: !84, line: 175, type: !102)
!822 = distinct !DISubprogram(name: "mcel_err", scope: !84, file: !84, line: 175, type: !823, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !825, keyInstructions: true)
!823 = !DISubroutineType(types: !824)
!824 = !{!354, !102}
!825 = !{!821}
!826 = !DILocation(line: 0, scope: !822, inlinedAt: !827)
!827 = distinct !DILocation(line: 268, column: 12, scope: !818, inlinedAt: !677)
!828 = !DILocation(line: 178, column: 3, scope: !822, inlinedAt: !827, atomGroup: 2, atomRank: 1)
!829 = !DILocation(line: 268, column: 5, scope: !818, inlinedAt: !677, atomGroup: 7, atomRank: 1)
!830 = !DILocation(line: 272, column: 19, scope: !655, inlinedAt: !677)
!831 = !DILocation(line: 0, scope: !798, inlinedAt: !832)
!832 = distinct !DILocation(line: 272, column: 10, scope: !655, inlinedAt: !677)
!833 = !DILocation(line: 169, column: 13, scope: !798, inlinedAt: !832, atomGroup: 1, atomRank: 2)
!834 = !DILocation(line: 169, column: 3, scope: !798, inlinedAt: !832, atomGroup: 1, atomRank: 1)
!835 = !DILocation(line: 170, column: 15, scope: !798, inlinedAt: !832, atomGroup: 2, atomRank: 2)
!836 = !DILocation(line: 170, column: 3, scope: !798, inlinedAt: !832, atomGroup: 2, atomRank: 1)
!837 = !DILocation(line: 171, column: 14, scope: !798, inlinedAt: !832, atomGroup: 3, atomRank: 2)
!838 = !DILocation(line: 171, column: 3, scope: !798, inlinedAt: !832, atomGroup: 3, atomRank: 1)
!839 = !DILocation(line: 172, column: 3, scope: !798, inlinedAt: !832, atomGroup: 4, atomRank: 1)
!840 = !DILocation(line: 272, column: 3, scope: !655, inlinedAt: !677, atomGroup: 8, atomRank: 1)
!841 = !DILocation(line: 273, column: 1, scope: !655, inlinedAt: !677)
!842 = !DILocation(line: 0, scope: !843, inlinedAt: !686)
!843 = distinct !DILexicalBlock(scope: !678, file: !341, line: 160, column: 7)
!844 = !DILocation(line: 160, column: 9, scope: !843, inlinedAt: !686, atomGroup: 5, atomRank: 2)
!845 = !DILocation(line: 160, column: 7, scope: !843, inlinedAt: !686, atomGroup: 5, atomRank: 1)
!846 = !DILocation(line: 158, column: 14, scope: !678, inlinedAt: !686, atomGroup: 4, atomRank: 1)
!847 = !DILocation(line: 161, column: 19, scope: !843, inlinedAt: !686, atomGroup: 6, atomRank: 2)
!848 = !DILocation(line: 161, column: 19, scope: !843, inlinedAt: !686, atomGroup: 6, atomRank: 1)
!849 = distinct !DIAssignID()
!850 = !DILocation(line: 161, column: 5, scope: !843, inlinedAt: !686)
!851 = !DILocation(line: 165, column: 37, scope: !852, inlinedAt: !686)
!852 = distinct !DILexicalBlock(scope: !843, file: !341, line: 163, column: 5)
!853 = !DILocation(line: 165, column: 57, scope: !852, inlinedAt: !686, atomGroup: 8, atomRank: 2)
!854 = !DILocation(line: 165, column: 57, scope: !852, inlinedAt: !686, atomGroup: 8, atomRank: 1)
!855 = distinct !DIAssignID()
!856 = !DILocation(line: 165, column: 30, scope: !852, inlinedAt: !686)
!857 = !DILocation(line: 165, column: 30, scope: !852, inlinedAt: !686, atomGroup: 7, atomRank: 3)
!858 = !DILocation(line: 165, column: 14, scope: !852, inlinedAt: !686, atomGroup: 7, atomRank: 2)
!859 = !DILocation(line: 137, column: 23, scope: !377, inlinedAt: !687, atomGroup: 7, atomRank: 1)
!860 = !DILocation(line: 137, column: 51, scope: !377, inlinedAt: !687, atomGroup: 8, atomRank: 2)
!861 = !DILocation(line: 138, column: 18, scope: !377, inlinedAt: !687, atomGroup: 8, atomRank: 1)
!862 = !DILocation(line: 138, column: 27, scope: !377, inlinedAt: !687, atomGroup: 9, atomRank: 2)
!863 = !DILocation(line: 138, column: 18, scope: !377, inlinedAt: !687)
!864 = !DILocation(line: 137, column: 11, scope: !377, inlinedAt: !687, atomGroup: 10, atomRank: 1)
!865 = !DILocation(line: 0, scope: !745, inlinedAt: !866)
!866 = distinct !DILocation(line: 139, column: 13, scope: !377, inlinedAt: !687)
!867 = !DILocation(line: 71, column: 17, scope: !745, inlinedAt: !866, atomGroup: 2, atomRank: 1)
!868 = distinct !DIAssignID()
!869 = !DILocation(line: 72, column: 13, scope: !745, inlinedAt: !866, atomGroup: 3, atomRank: 1)
!870 = distinct !DIAssignID()
!871 = !DILocation(line: 73, column: 15, scope: !745, inlinedAt: !866, atomGroup: 4, atomRank: 1)
!872 = distinct !DIAssignID()
!873 = !DILocation(line: 75, column: 17, scope: !745, inlinedAt: !866, atomGroup: 6, atomRank: 1)
!874 = distinct !DIAssignID()
!875 = distinct !{!875, !776, !876, !560}
!876 = !DILocation(line: 139, column: 60, scope: !377, inlinedAt: !687)
!877 = !DILocation(line: 141, column: 15, scope: !376, inlinedAt: !687, atomGroup: 11, atomRank: 1)
!878 = !DILocation(line: 143, column: 26, scope: !375, inlinedAt: !687, atomGroup: 13, atomRank: 3)
!879 = !{i8 0, i8 2}
!880 = !{}
!881 = !DILocation(line: 143, column: 26, scope: !375, inlinedAt: !687, atomGroup: 13, atomRank: 2)
!882 = !DILocation(line: 143, column: 46, scope: !375, inlinedAt: !687, atomGroup: 13, atomRank: 1)
!883 = !DILocalVariable(name: "wc", arg: 1, scope: !884, file: !62, line: 183, type: !358)
!884 = distinct !DISubprogram(name: "c32issep", scope: !62, file: !62, line: 183, type: !885, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !887, keyInstructions: true)
!885 = !DISubroutineType(types: !886)
!886 = !{!103, !358}
!887 = !{!883}
!888 = !DILocation(line: 0, scope: !884, inlinedAt: !889)
!889 = distinct !DILocation(line: 143, column: 49, scope: !375, inlinedAt: !687)
!890 = !DILocalVariable(name: "wc", arg: 1, scope: !891, file: !892, line: 813, type: !895)
!891 = distinct !DISubprogram(name: "c32isblank", scope: !892, file: !892, line: 813, type: !893, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !897, keyInstructions: true)
!892 = !DIFile(filename: "./lib/uchar.h", directory: "/workspaces/Thesis/.build/coreutils")
!893 = !DISubroutineType(types: !894)
!894 = !{!63, !895}
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !896, line: 20, baseType: !69)
!896 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!897 = !{!890}
!898 = !DILocation(line: 0, scope: !891, inlinedAt: !899)
!899 = distinct !DILocation(line: 186, column: 13, scope: !884, inlinedAt: !889)
!900 = !DILocation(line: 819, column: 10, scope: !891, inlinedAt: !899, atomGroup: 1, atomRank: 2)
!901 = !DILocation(line: 186, column: 11, scope: !884, inlinedAt: !889)
!902 = !DILocation(line: 143, column: 46, scope: !375, inlinedAt: !687)
!903 = !DILocation(line: 145, column: 24, scope: !374, inlinedAt: !687, atomGroup: 14, atomRank: 1)
!904 = !DILocation(line: 148, column: 19, scope: !373, inlinedAt: !687)
!905 = !DILocation(line: 150, column: 23, scope: !373, inlinedAt: !687, atomGroup: 15, atomRank: 2)
!906 = !DILocation(line: 152, column: 26, scope: !373, inlinedAt: !687, atomGroup: 121, atomRank: 2)
!907 = !DILocation(line: 152, column: 35, scope: !373, inlinedAt: !687, atomGroup: 122, atomRank: 1)
!908 = !DILocation(line: 152, column: 19, scope: !373, inlinedAt: !687, atomGroup: 123, atomRank: 1)
!909 = !DILocalVariable(name: "__c", arg: 1, scope: !910, file: !911, line: 108, type: !63)
!910 = distinct !DISubprogram(name: "putchar_unlocked", scope: !911, file: !911, line: 108, type: !912, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !914, keyInstructions: true)
!911 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!912 = !DISubroutineType(types: !913)
!913 = !{!63, !63}
!914 = !{!909}
!915 = !DILocation(line: 0, scope: !910, inlinedAt: !916)
!916 = distinct !DILocation(line: 153, column: 25, scope: !917, inlinedAt: !687)
!917 = distinct !DILexicalBlock(scope: !373, file: !2, line: 153, column: 25)
!918 = !DILocation(line: 110, column: 37, scope: !910, inlinedAt: !916)
!919 = !DILocation(line: 110, column: 10, scope: !910, inlinedAt: !916)
!920 = !{!921, !438, i64 40}
!921 = !{!"_IO_FILE", !420, i64 0, !438, i64 8, !438, i64 16, !438, i64 24, !438, i64 32, !438, i64 40, !438, i64 48, !438, i64 56, !438, i64 64, !438, i64 72, !438, i64 80, !438, i64 88, !922, i64 96, !435, i64 104, !420, i64 112, !420, i64 116, !757, i64 120, !552, i64 128, !421, i64 130, !421, i64 131, !436, i64 136, !757, i64 144, !923, i64 152, !924, i64 160, !435, i64 168, !436, i64 176, !757, i64 184, !420, i64 192, !421, i64 196}
!922 = !{!"p1 _ZTS10_IO_marker", !436, i64 0}
!923 = !{!"p1 _ZTS11_IO_codecvt", !436, i64 0}
!924 = !{!"p1 _ZTS13_IO_wide_data", !436, i64 0}
!925 = !{!921, !438, i64 48}
!926 = !DILocation(line: 110, column: 10, scope: !910, inlinedAt: !916, atomGroup: 2, atomRank: 1)
!927 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!928 = !DILocation(line: 110, column: 10, scope: !910, inlinedAt: !916, atomGroup: 4, atomRank: 2)
!929 = !DILocation(line: 110, column: 10, scope: !910, inlinedAt: !916, atomGroup: 4, atomRank: 1)
!930 = !DILocation(line: 110, column: 10, scope: !910, inlinedAt: !916, atomGroup: 3, atomRank: 1)
!931 = !DILocation(line: 153, column: 39, scope: !917, inlinedAt: !687, atomGroup: 116, atomRank: 1)
!932 = !DILocation(line: 153, column: 39, scope: !917, inlinedAt: !687, atomGroup: 19, atomRank: 2)
!933 = !DILocation(line: 153, column: 39, scope: !917, inlinedAt: !687, atomGroup: 19, atomRank: 1)
!934 = !DILocation(line: 955, column: 21, scope: !935, inlinedAt: !938)
!935 = distinct !DISubprogram(name: "write_error", scope: !62, file: !62, line: 953, type: !335, scopeLine: 954, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !936, keyInstructions: true)
!936 = !{!937}
!937 = !DILocalVariable(name: "saved_errno", scope: !935, file: !62, line: 955, type: !63)
!938 = distinct !DILocation(line: 154, column: 23, scope: !917, inlinedAt: !687)
!939 = !DILocation(line: 955, column: 21, scope: !935, inlinedAt: !938, atomGroup: 1, atomRank: 2)
!940 = !DILocation(line: 0, scope: !935, inlinedAt: !938)
!941 = !DILocation(line: 956, column: 11, scope: !935, inlinedAt: !938)
!942 = !DILocation(line: 956, column: 3, scope: !935, inlinedAt: !938)
!943 = !DILocation(line: 957, column: 11, scope: !935, inlinedAt: !938)
!944 = !DILocation(line: 957, column: 3, scope: !935, inlinedAt: !938)
!945 = !DILocation(line: 958, column: 13, scope: !935, inlinedAt: !938)
!946 = !DILocation(line: 958, column: 3, scope: !935, inlinedAt: !938)
!947 = !DILocation(line: 959, column: 37, scope: !935, inlinedAt: !938)
!948 = !DILocation(line: 959, column: 3, scope: !935, inlinedAt: !938)
!949 = !DILocation(line: 152, column: 26, scope: !373, inlinedAt: !687, atomGroup: 16, atomRank: 2)
!950 = !DILocation(line: 152, column: 35, scope: !373, inlinedAt: !687, atomGroup: 17, atomRank: 1)
!951 = !DILocation(line: 152, column: 19, scope: !373, inlinedAt: !687, atomGroup: 18, atomRank: 1)
!952 = distinct !{!952, !953, !954, !560}
!953 = !DILocation(line: 152, column: 19, scope: !373, inlinedAt: !687)
!954 = !DILocation(line: 154, column: 36, scope: !373, inlinedAt: !687)
!955 = !DILocation(line: 0, scope: !910, inlinedAt: !956)
!956 = distinct !DILocation(line: 156, column: 23, scope: !957, inlinedAt: !687)
!957 = distinct !DILexicalBlock(scope: !373, file: !2, line: 156, column: 23)
!958 = !DILocation(line: 110, column: 37, scope: !910, inlinedAt: !956)
!959 = !DILocation(line: 110, column: 10, scope: !910, inlinedAt: !956)
!960 = !DILocation(line: 110, column: 10, scope: !910, inlinedAt: !956, atomGroup: 2, atomRank: 1)
!961 = !DILocation(line: 110, column: 10, scope: !910, inlinedAt: !956, atomGroup: 4, atomRank: 2)
!962 = !DILocation(line: 110, column: 10, scope: !910, inlinedAt: !956, atomGroup: 4, atomRank: 1)
!963 = !DILocation(line: 110, column: 10, scope: !910, inlinedAt: !956, atomGroup: 3, atomRank: 1)
!964 = !DILocation(line: 156, column: 37, scope: !957, inlinedAt: !687, atomGroup: 118, atomRank: 1)
!965 = !DILocation(line: 156, column: 37, scope: !957, inlinedAt: !687, atomGroup: 20, atomRank: 2)
!966 = !DILocation(line: 156, column: 37, scope: !957, inlinedAt: !687, atomGroup: 20, atomRank: 1)
!967 = !DILocation(line: 955, column: 21, scope: !935, inlinedAt: !968)
!968 = distinct !DILocation(line: 157, column: 21, scope: !957, inlinedAt: !687)
!969 = !DILocation(line: 955, column: 21, scope: !935, inlinedAt: !968, atomGroup: 1, atomRank: 2)
!970 = !DILocation(line: 0, scope: !935, inlinedAt: !968)
!971 = !DILocation(line: 956, column: 11, scope: !935, inlinedAt: !968)
!972 = !DILocation(line: 956, column: 3, scope: !935, inlinedAt: !968)
!973 = !DILocation(line: 957, column: 11, scope: !935, inlinedAt: !968)
!974 = !DILocation(line: 957, column: 3, scope: !935, inlinedAt: !968)
!975 = !DILocation(line: 958, column: 13, scope: !935, inlinedAt: !968)
!976 = !DILocation(line: 958, column: 3, scope: !935, inlinedAt: !968)
!977 = !DILocation(line: 959, column: 37, scope: !935, inlinedAt: !968)
!978 = !DILocation(line: 959, column: 3, scope: !935, inlinedAt: !968)
!979 = !DILocation(line: 160, column: 17, scope: !374, inlinedAt: !687)
!980 = !DILocation(line: 165, column: 30, scope: !981, inlinedAt: !687)
!981 = distinct !DILexicalBlock(scope: !381, file: !2, line: 162, column: 17)
!982 = !DILocation(line: 165, column: 29, scope: !981, inlinedAt: !687)
!983 = !DILocation(line: 165, column: 26, scope: !981, inlinedAt: !687, atomGroup: 23, atomRank: 2)
!984 = !DILocation(line: 166, column: 34, scope: !981, inlinedAt: !687)
!985 = !DILocation(line: 166, column: 33, scope: !981, inlinedAt: !687)
!986 = !DILocation(line: 166, column: 32, scope: !981, inlinedAt: !687)
!987 = !DILocation(line: 166, column: 29, scope: !981, inlinedAt: !687, atomGroup: 24, atomRank: 2)
!988 = !DILocation(line: 166, column: 29, scope: !981, inlinedAt: !687, atomGroup: 24, atomRank: 1)
!989 = distinct !DIAssignID()
!990 = !DILocation(line: 177, column: 20, scope: !991, inlinedAt: !687, atomGroup: 28, atomRank: 1)
!991 = distinct !DILexicalBlock(scope: !377, file: !2, line: 177, column: 15)
!992 = !DILocalVariable(name: "wc", arg: 1, scope: !993, file: !892, line: 1083, type: !358)
!993 = distinct !DISubprogram(name: "c32width", scope: !892, file: !892, line: 1083, type: !994, scopeLine: 1084, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !996, keyInstructions: true)
!994 = !DISubroutineType(types: !995)
!995 = !{!63, !358}
!996 = !{!992}
!997 = !DILocation(line: 0, scope: !993, inlinedAt: !998)
!998 = distinct !DILocation(line: 170, column: 31, scope: !380, inlinedAt: !687)
!999 = !DILocation(line: 1089, column: 10, scope: !993, inlinedAt: !998, atomGroup: 1, atomRank: 2)
!1000 = !DILocation(line: 0, scope: !380, inlinedAt: !687)
!1001 = !DILocation(line: 171, column: 55, scope: !1002, inlinedAt: !687, atomGroup: 26, atomRank: 2)
!1002 = distinct !DILexicalBlock(scope: !380, file: !2, line: 171, column: 23)
!1003 = !DILocation(line: 171, column: 49, scope: !1002, inlinedAt: !687, atomGroup: 26, atomRank: 1)
!1004 = !DILocation(line: 171, column: 23, scope: !1002, inlinedAt: !687)
!1005 = !DILocation(line: 171, column: 23, scope: !1002, inlinedAt: !687, atomGroup: 27, atomRank: 2)
!1006 = !DILocation(line: 171, column: 23, scope: !1002, inlinedAt: !687, atomGroup: 27, atomRank: 1)
!1007 = !DILocation(line: 172, column: 45, scope: !1002, inlinedAt: !687)
!1008 = !DILocation(line: 172, column: 21, scope: !1002, inlinedAt: !687)
!1009 = !DILocalVariable(name: "g", arg: 2, scope: !1010, file: !341, line: 173, type: !354)
!1010 = distinct !DISubprogram(name: "mbbuf_char_offset", scope: !341, file: !341, line: 173, type: !1011, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1013, keyInstructions: true)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!94, !681, !354}
!1013 = !{!1014, !1009}
!1014 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1010, file: !341, line: 173, type: !681)
!1015 = !DILocation(line: 0, scope: !1010, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 180, column: 19, scope: !377, inlinedAt: !687)
!1017 = !DILocation(line: 175, column: 14, scope: !1018, inlinedAt: !1016)
!1018 = distinct !DILexicalBlock(scope: !1010, file: !341, line: 175, column: 7)
!1019 = !DILocation(line: 175, column: 21, scope: !1018, inlinedAt: !1016, atomGroup: 1, atomRank: 2)
!1020 = !DILocation(line: 175, column: 21, scope: !1018, inlinedAt: !1016, atomGroup: 1, atomRank: 1)
!1021 = !DILocation(line: 176, column: 5, scope: !1022, inlinedAt: !1016)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !341, line: 176, column: 13)
!1023 = distinct !DILexicalBlock(scope: !1018, file: !341, line: 176, column: 5)
!1024 = !DILocation(line: 177, column: 17, scope: !1010, inlinedAt: !1016)
!1025 = !DILocation(line: 177, column: 41, scope: !1010, inlinedAt: !1016)
!1026 = !DILocation(line: 177, column: 24, scope: !1010, inlinedAt: !1016, atomGroup: 2, atomRank: 2)
!1027 = !DILocation(line: 180, column: 72, scope: !377, inlinedAt: !687)
!1028 = !DILocation(line: 180, column: 11, scope: !377, inlinedAt: !687)
!1029 = !DILocation(line: 181, column: 23, scope: !1030, inlinedAt: !687)
!1030 = distinct !DILexicalBlock(scope: !377, file: !2, line: 181, column: 15)
!1031 = !DILocalVariable(name: "__stream", arg: 1, scope: !1032, file: !911, line: 135, type: !149)
!1032 = distinct !DISubprogram(name: "ferror_unlocked", scope: !911, file: !911, line: 135, type: !1033, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1035, keyInstructions: true)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!63, !149}
!1035 = !{!1031}
!1036 = !DILocation(line: 0, scope: !1032, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 181, column: 15, scope: !1030, inlinedAt: !687)
!1038 = !DILocation(line: 137, column: 10, scope: !1032, inlinedAt: !1037)
!1039 = !{!921, !420, i64 0}
!1040 = !DILocation(line: 181, column: 15, scope: !1030, inlinedAt: !687, atomGroup: 44, atomRank: 2)
!1041 = !DILocation(line: 181, column: 15, scope: !1030, inlinedAt: !687, atomGroup: 44, atomRank: 1)
!1042 = !DILocation(line: 955, column: 21, scope: !935, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 182, column: 13, scope: !1030, inlinedAt: !687)
!1044 = !DILocation(line: 955, column: 21, scope: !935, inlinedAt: !1043, atomGroup: 1, atomRank: 2)
!1045 = !DILocation(line: 0, scope: !935, inlinedAt: !1043)
!1046 = !DILocation(line: 956, column: 3, scope: !935, inlinedAt: !1043)
!1047 = !DILocation(line: 957, column: 11, scope: !935, inlinedAt: !1043)
!1048 = !DILocation(line: 957, column: 3, scope: !935, inlinedAt: !1043)
!1049 = !DILocation(line: 958, column: 13, scope: !935, inlinedAt: !1043)
!1050 = !DILocation(line: 958, column: 3, scope: !935, inlinedAt: !1043)
!1051 = !DILocation(line: 959, column: 37, scope: !935, inlinedAt: !1043)
!1052 = !DILocation(line: 959, column: 3, scope: !935, inlinedAt: !1043)
!1053 = !DILocation(line: 0, scope: !374, inlinedAt: !687)
!1054 = !DILocation(line: 143, column: 23, scope: !375, inlinedAt: !687, atomGroup: 12, atomRank: 1)
!1055 = !DILocation(line: 184, column: 19, scope: !353, inlinedAt: !687, atomGroup: 45, atomRank: 1)
!1056 = !DILocation(line: 183, column: 9, scope: !377, inlinedAt: !687, atomGroup: 46, atomRank: 1)
!1057 = distinct !{!1057, !775, !1058, !560}
!1058 = !DILocation(line: 184, column: 26, scope: !353, inlinedAt: !687)
!1059 = !DILocation(line: 185, column: 5, scope: !334, inlinedAt: !687)
!1060 = !DILocation(line: 186, column: 1, scope: !334, inlinedAt: !687)
!1061 = !DILocation(line: 242, column: 3, scope: !640)
!1062 = !DILocation(line: 244, column: 10, scope: !640, atomGroup: 15, atomRank: 2)
!1063 = !DILocation(line: 244, column: 3, scope: !640, atomGroup: 15, atomRank: 1)
!1064 = !DISubprogram(name: "set_program_name", scope: !1065, file: !1065, line: 38, type: !467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1065 = !DIFile(filename: "./lib/progname.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3e5536ae3756d6a65acb8e248212c2ee")
!1066 = !DISubprogram(name: "setlocale", scope: !1067, file: !1067, line: 122, type: !1068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1067 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!94, !63, !100}
!1070 = !DISubprogram(name: "bindtextdomain", scope: !496, file: !496, line: 86, type: !1071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!94, !100, !100}
!1073 = !DISubprogram(name: "textdomain", scope: !496, file: !496, line: 82, type: !1074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!94, !100}
!1076 = !DISubprogram(name: "atexit", scope: !1077, file: !1077, line: 602, type: !1078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1077 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!63, !1080}
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!1081 = !DISubprogram(name: "getopt_long", scope: !325, file: !325, line: 66, type: !1082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!63, !63, !1084, !100, !1086, !330}
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!1087 = !DISubprogram(name: "parse_tab_stops", scope: !367, file: !367, line: 39, type: !467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1088 = !DISubprogram(name: "version_etc", scope: !1089, file: !1089, line: 70, type: !1090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1089 = !DIFile(filename: "./lib/version-etc.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "7242964c9dbfa69ef19b57250c13e279")
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !149, !100, !100, !100, null}
!1092 = !DISubprogram(name: "proper_name_lite", scope: !1093, file: !1093, line: 126, type: !1094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1093 = !DIFile(filename: "./lib/propername.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "fdc444d0083bc592737160d9365ffa54")
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!100, !100, !100}
!1096 = !DISubprogram(name: "finalize_tab_stops", scope: !367, file: !367, line: 53, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1097 = !DISubprogram(name: "set_file_list", scope: !367, file: !367, line: 60, type: !1098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null, !643}
!1100 = !DISubprogram(name: "cleanup_file_list_stdin", scope: !367, file: !367, line: 71, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1101 = !DISubprogram(name: "getenv", scope: !1077, file: !1077, line: 641, type: !1074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1102 = !DISubprogram(name: "strspn", scope: !1103, file: !1103, line: 297, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1103 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!99, !100, !100}
!1106 = !DISubprogram(name: "strchr", scope: !1103, file: !1103, line: 246, type: !1107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!94, !100, !63}
!1109 = !DISubprogram(name: "__ctype_b_loc", scope: !68, file: !68, line: 79, type: !1110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!1112}
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!1115 = !DISubprogram(name: "strcspn", scope: !1103, file: !1103, line: 293, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1116 = !DISubprogram(name: "fwrite_unlocked", scope: !504, file: !504, line: 704, type: !1117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!97, !1119, !97, !97, !493}
!1119 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1120)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1122 = !DISubprogram(name: "strncmp", scope: !1103, file: !1103, line: 159, type: !1123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!63, !100, !100, !97}
!1125 = !DISubprogram(name: "strcmp", scope: !1103, file: !1103, line: 156, type: !1126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!63, !100, !100}
!1128 = !DISubprogram(name: "__overflow", scope: !504, file: !504, line: 886, type: !1129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!63, !149, !63}
!1131 = !DISubprogram(name: "emit_bug_reporting_address", scope: !1089, file: !1089, line: 77, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1132 = !DISubprogram(name: "next_file", scope: !367, file: !367, line: 67, type: !1133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!149, !149}
!1135 = !DISubprogram(name: "get_next_tab_column", scope: !367, file: !367, line: 46, type: !1136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!366, !1138, !1139, !1140}
!1138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1141 = !DISubprogram(name: "error", scope: !1142, file: !1142, line: 31, type: !1143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1142 = !DIFile(filename: "/usr/include/error.h", directory: "", checksumkind: CSK_MD5, checksum: "0bac552e7426506dc6623c11568834e0")
!1143 = !DISubroutineType(types: !1144)
!1144 = !{null, !63, !63, !100, null}
!1145 = !DISubprogram(name: "rpl_mbrtoc32", scope: !892, file: !892, line: 1276, type: !1146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!97, !1148, !100, !97, !1149}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!1150 = !DISubprogram(name: "iswblank", scope: !1151, file: !1151, line: 146, type: !893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1151 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1152 = !DISubprogram(name: "__errno_location", scope: !1153, file: !1153, line: 37, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1153 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!330}
!1156 = !DISubprogram(name: "fflush_unlocked", scope: !504, file: !504, line: 239, type: !1033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1157 = !DISubprogram(name: "fpurge", scope: !500, file: !500, line: 1266, type: !1033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1158 = !DISubprogram(name: "clearerr_unlocked", scope: !504, file: !504, line: 794, type: !1159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !149}
!1161 = !DISubprogram(name: "wcwidth", scope: !1162, file: !1162, line: 368, type: !1163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1162 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!63, !1165}
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !1166, line: 24, baseType: !63)
!1166 = !DIFile(filename: "/usr/lib/llvm-22/lib/clang/22/include/__stddef_wchar_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1bf0c51e90dd5eb05cdcc01afdea587a")
