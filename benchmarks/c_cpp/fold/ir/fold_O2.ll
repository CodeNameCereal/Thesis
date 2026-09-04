; ModuleID = 'src/fold.c'
source_filename = "src/fold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.mbbuf_t = type { ptr, ptr, i64, i64, i64, i8 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [60 x i8] c"Wrap input lines in each FILE, writing to standard output.\0A\00", align 1, !dbg !12
@stdout = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"fold\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [56 x i8] c"  -b, --bytes\0A         count bytes rather than columns\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [66 x i8] c"  -c, --characters\0A         count characters rather than columns\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [76 x i8] c"  -s, --spaces\0A         break after blanks, or in words greater than WIDTH\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [62 x i8] c"  -w, --width=WIDTH\0A         use WIDTH columns instead of 80\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !49
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !54
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !59
@shortopts = internal constant [36 x i8] c"bcsw:0::1::2::3::4::5::6::7::8::9::\00", align 16, !dbg !64
@counting_mode = internal unnamed_addr global i32 0, align 4, !dbg !392
@break_spaces = internal unnamed_addr global i1 false, align 1, !dbg !476
@optarg = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"invalid number of columns\00", align 1, !dbg !146
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !151
@Version = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !156
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !161
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !477
@stdin = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !171
@.str.18 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !173
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !178
@.str.19 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !260
@.str.20 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !262
@.str.21 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !264
@.str.22 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !269
@.str.36 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !309
@.str.37 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !311
@.str.38 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !313
@.str.39 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !318
@.str.40 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !323
@.str.41 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !328
@.str.42 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !333
@.str.43 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !335
@.str.44 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !337
@.str.45 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !339
@.str.49 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !350
@.str.50 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !355
@.str.51 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !360
@.str.52 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1, !dbg !365
@.str.53 = private unnamed_addr constant [11 x i8] c"characters\00", align 1, !dbg !367
@.str.54 = private unnamed_addr constant [7 x i8] c"spaces\00", align 1, !dbg !372
@.str.55 = private unnamed_addr constant [6 x i8] c"width\00", align 1, !dbg !374
@.str.56 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !376
@.str.57 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !378
@longopts = internal constant [7 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.52, i32 0, [4 x i8] zeroinitializer, ptr null, i32 98, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.53, i32 0, [4 x i8] zeroinitializer, ptr null, i32 99, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.54, i32 0, [4 x i8] zeroinitializer, ptr null, i32 115, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.55, i32 1, [4 x i8] zeroinitializer, ptr null, i32 119, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.56, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -130, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.57, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -131, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16, !dbg !380
@fold_file.line_out = internal global [262144 x i8] zeroinitializer, align 16, !dbg !394
@fold_file.line_in = internal global [262144 x i8] zeroinitializer, align 16, !dbg !451
@.str.59 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !453
@.str.60 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !455
@.str.61 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !457
@.str.62 = private unnamed_addr constant [14 x i8] c"./lib/mbbuf.h\00", align 1, !dbg !459
@.str.63 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !464
@last_character_width = internal unnamed_addr global i32 0, align 4, !dbg !466
@__PRETTY_FUNCTION__.mbbuf_char_offset = private unnamed_addr constant [43 x i8] c"char *mbbuf_char_offset(mbbuf_t *, mcel_t)\00", align 1, !dbg !468

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !490 {
    #dbg_value(i32 %0, !494, !DIExpression(), !495)
  %2 = icmp eq i32 %0, 0, !dbg !496
  br i1 %2, label %8, label %3, !dbg !498

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !499, !tbaa !501
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #16, !dbg !499
  %6 = load ptr, ptr @program_name, align 8, !dbg !499, !tbaa !504
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #16, !dbg !499
  br label %31, !dbg !499

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #16, !dbg !506
  %10 = load ptr, ptr @program_name, align 8, !dbg !508, !tbaa !504
  %11 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %9, ptr noundef %10) #16, !dbg !509
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #16, !dbg !510
  %13 = load ptr, ptr @stdout, align 8, !dbg !511, !tbaa !501
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !512
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #16, !dbg !513
  %16 = load ptr, ptr @stdout, align 8, !dbg !518, !tbaa !501
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !519
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #16, !dbg !520
  %19 = load ptr, ptr @stdout, align 8, !dbg !523, !tbaa !501
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !524
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #16, !dbg !525
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !526
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #16, !dbg !527
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !528
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #16, !dbg !529
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !530
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #16, !dbg !531
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !532
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #16, !dbg !533
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !534
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #16, !dbg !535
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !536
    #dbg_value(ptr @.str.3, !537, !DIExpression(), !553)
    #dbg_value(ptr poison, !550, !DIExpression(), !553)
    #dbg_value(ptr @.str.3, !549, !DIExpression(), !553)
  tail call void @emit_bug_reporting_address() #16, !dbg !555
    #dbg_value(ptr @.str.3, !552, !DIExpression(), !553)
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #16, !dbg !556
  %28 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %27, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3) #16, !dbg !557
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #16, !dbg !558
  %30 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.51) #16, !dbg !559
  br label %31

31:                                               ; preds = %8, %3
  tail call void @exit(i32 noundef %0) #17, !dbg !560
  unreachable, !dbg !560
}

declare !dbg !561 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !567 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !571 i32 @rpl_printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare !dbg !575 noundef i32 @fputs_unlocked(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !180 {
    #dbg_value(ptr @.str.3, !184, !DIExpression(), !579)
    #dbg_value(ptr %0, !185, !DIExpression(), !579)
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !580, !tbaa !486
  %3 = icmp eq i32 %2, -1, !dbg !581
  br i1 %3, label %4, label %16, !dbg !582

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.19) #16, !dbg !583
    #dbg_value(ptr %5, !186, !DIExpression(), !584)
  %6 = icmp eq ptr %5, null, !dbg !585
  br i1 %6, label %14, label %7, !dbg !586

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !587, !tbaa !588
  %9 = icmp eq i8 %8, 0, !dbg !589
  br i1 %9, label %14, label %10, !dbg !590

10:                                               ; preds = %7
    #dbg_value(ptr %5, !591, !DIExpression(), !598)
    #dbg_value(ptr @.str.20, !597, !DIExpression(), !598)
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.20) #18, !dbg !600
  %12 = icmp eq i32 %11, 0, !dbg !601
  %13 = zext i1 %12 to i32, !dbg !602
  br label %14, !dbg !603

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !604, !tbaa !486
  br label %16, !dbg !605

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !606
  %18 = icmp eq i32 %17, 0, !dbg !608
  br i1 %18, label %19, label %114, !dbg !609

19:                                               ; preds = %16
    #dbg_value(i8 1, !189, !DIExpression(), !579)
  %20 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.21) #18, !dbg !610
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 %20, !dbg !611
    #dbg_value(ptr %21, !190, !DIExpression(), !579)
  %22 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #18, !dbg !612
    #dbg_value(ptr %22, !191, !DIExpression(), !579)
  %23 = icmp eq ptr %22, null, !dbg !613
  br i1 %23, label %48, label %24, !dbg !614

24:                                               ; preds = %19
    #dbg_value(ptr %21, !192, !DIExpression(), !615)
    #dbg_value(i64 0, !196, !DIExpression(), !615)
  %25 = icmp ult ptr %21, %22
  br i1 %25, label %26, label %48, !dbg !616

26:                                               ; preds = %24
  %27 = tail call ptr @__ctype_b_loc() #19, !dbg !579
  %28 = load ptr, ptr %27, align 8, !tbaa !617
  br label %29, !dbg !619

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %21, %26 ], [ %32, %29 ]
  %31 = phi i64 [ 0, %26 ], [ %41, %29 ]
    #dbg_value(ptr %30, !192, !DIExpression(), !615)
    #dbg_value(i64 %31, !196, !DIExpression(), !615)
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 1, !dbg !620
    #dbg_value(ptr %32, !192, !DIExpression(), !615)
  %33 = load i8, ptr %30, align 1, !dbg !621, !tbaa !588
  %34 = sext i8 %33 to i64, !dbg !622
  %35 = getelementptr inbounds i16, ptr %28, i64 %34, !dbg !622
  %36 = load i16, ptr %35, align 2, !dbg !622, !tbaa !623
  %37 = freeze i16 %36, !dbg !625
  %38 = lshr i16 %37, 13, !dbg !625
  %39 = and i16 %38, 1, !dbg !625
  %40 = zext nneg i16 %39 to i64, !dbg !625
  %41 = add i64 %31, %40, !dbg !626
    #dbg_value(i64 %41, !196, !DIExpression(), !615)
  %42 = icmp ult ptr %32, %22, !dbg !627
  %43 = icmp samesign ult i64 %41, 2, !dbg !628
  %44 = select i1 %42, i1 %43, i1 false, !dbg !628
  br i1 %44, label %29, label %45, !dbg !629, !llvm.loop !630

45:                                               ; preds = %29
  %46 = icmp ne i64 %41, 2, !dbg !633
  %47 = select i1 %46, ptr %22, ptr %21, !dbg !635
  br label %48, !dbg !635

48:                                               ; preds = %45, %19, %24
  %49 = phi ptr [ %21, %19 ], [ %22, %24 ], [ %47, %45 ], !dbg !579
  %50 = phi i1 [ false, %19 ], [ true, %24 ], [ %46, %45 ], !dbg !579
    #dbg_value(i8 poison, !189, !DIExpression(), !579)
    #dbg_value(ptr %49, !191, !DIExpression(), !579)
  %51 = tail call i64 @strcspn(ptr noundef nonnull %49, ptr noundef nonnull @.str.22) #18, !dbg !636
    #dbg_value(i64 %51, !197, !DIExpression(), !579)
  %52 = getelementptr inbounds nuw i8, ptr %49, i64 %51, !dbg !637
    #dbg_value(ptr %52, !198, !DIExpression(), !579)
  br label %53, !dbg !638

53:                                               ; preds = %84, %48
  %54 = phi ptr [ %52, %48 ], [ %85, %84 ], !dbg !579
  %55 = phi i1 [ %50, %48 ], [ %63, %84 ], !dbg !579
    #dbg_value(i8 poison, !189, !DIExpression(), !579)
    #dbg_value(ptr %54, !198, !DIExpression(), !579)
  %56 = load i8, ptr %54, align 1, !dbg !639, !tbaa !588
  switch i8 %56, label %62 [
    i8 0, label %86
    i8 10, label %86
    i8 45, label %57
  ], !dbg !640

57:                                               ; preds = %53
  %58 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !641
  %59 = load i8, ptr %58, align 1, !dbg !641, !tbaa !588
  %60 = icmp ne i8 %59, 45, !dbg !644
  %61 = select i1 %60, i1 %55, i1 false, !dbg !645
  br label %62, !dbg !645

62:                                               ; preds = %57, %53
  %63 = phi i1 [ %55, %53 ], [ %61, %57 ], !dbg !579
    #dbg_value(i8 poison, !189, !DIExpression(), !579)
  %64 = tail call ptr @__ctype_b_loc() #19, !dbg !646
  %65 = load ptr, ptr %64, align 8, !dbg !646, !tbaa !617
  %66 = sext i8 %56 to i64, !dbg !646
  %67 = getelementptr inbounds i16, ptr %65, i64 %66, !dbg !646
  %68 = load i16, ptr %67, align 2, !dbg !646, !tbaa !623
  %69 = and i16 %68, 8192, !dbg !646
  %70 = icmp eq i16 %69, 0, !dbg !648
  br i1 %70, label %84, label %71, !dbg !649

71:                                               ; preds = %62
  %72 = icmp eq i8 %56, 9, !dbg !650
  br i1 %72, label %86, label %73, !dbg !653

73:                                               ; preds = %71
  %74 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !654
  %75 = load i8, ptr %74, align 1, !dbg !654, !tbaa !588
  %76 = sext i8 %75 to i64, !dbg !655
  %77 = getelementptr inbounds i16, ptr %65, i64 %76, !dbg !655
  %78 = load i16, ptr %77, align 2, !dbg !655, !tbaa !623
  %79 = and i16 %78, 8192, !dbg !655
  %80 = icmp eq i16 %79, 0, !dbg !656
  %81 = icmp eq i8 %75, 45
  %82 = or i1 %63, %81
  %83 = select i1 %80, i1 %82, i1 false, !dbg !657
  br i1 %83, label %84, label %86, !dbg !657

84:                                               ; preds = %73, %62
  %85 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !658
    #dbg_value(ptr %85, !198, !DIExpression(), !579)
  br label %53, !dbg !638, !llvm.loop !659

86:                                               ; preds = %53, %53, %71, %73
  %87 = ptrtoint ptr %21 to i64, !dbg !661
  %88 = load ptr, ptr @stdout, align 8, !dbg !662, !tbaa !501
  %89 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %0, i64 noundef 1, i64 noundef %20, ptr noundef %88), !dbg !663
    #dbg_value(ptr @.str.3, !591, !DIExpression(), !664)
    #dbg_value(ptr poison, !597, !DIExpression(), !664)
    #dbg_value(ptr @.str.3, !591, !DIExpression(), !666)
    #dbg_value(ptr poison, !597, !DIExpression(), !666)
    #dbg_value(ptr @.str.3, !591, !DIExpression(), !668)
    #dbg_value(ptr poison, !597, !DIExpression(), !668)
    #dbg_value(ptr @.str.3, !591, !DIExpression(), !670)
    #dbg_value(ptr poison, !597, !DIExpression(), !670)
    #dbg_value(ptr @.str.3, !591, !DIExpression(), !672)
    #dbg_value(ptr poison, !597, !DIExpression(), !672)
    #dbg_value(ptr @.str.3, !591, !DIExpression(), !674)
    #dbg_value(ptr poison, !597, !DIExpression(), !674)
    #dbg_value(ptr @.str.3, !591, !DIExpression(), !676)
    #dbg_value(ptr poison, !597, !DIExpression(), !676)
    #dbg_value(ptr @.str.3, !591, !DIExpression(), !678)
    #dbg_value(ptr poison, !597, !DIExpression(), !678)
    #dbg_value(ptr @.str.3, !591, !DIExpression(), !680)
    #dbg_value(ptr poison, !597, !DIExpression(), !680)
    #dbg_value(ptr @.str.3, !591, !DIExpression(), !682)
    #dbg_value(ptr poison, !597, !DIExpression(), !682)
    #dbg_value(ptr @.str.3, !255, !DIExpression(), !579)
  %90 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(7) @.str.36, i64 noundef 6) #18, !dbg !684
  %91 = icmp eq i32 %90, 0, !dbg !686
  br i1 %91, label %95, label %92, !dbg !687

92:                                               ; preds = %86
  %93 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(10) @.str.37, i64 noundef 9) #18, !dbg !688
  %94 = icmp eq i32 %93, 0, !dbg !689
  br i1 %94, label %95, label %98, !dbg !690

95:                                               ; preds = %92, %86
  %96 = trunc i64 %51 to i32, !dbg !691
  %97 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %96, ptr noundef nonnull %49) #16, !dbg !693
  br label %101, !dbg !694

98:                                               ; preds = %92
  %99 = trunc i64 %51 to i32, !dbg !695
  %100 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3, i32 noundef %99, ptr noundef nonnull %49) #16, !dbg !697
  br label %101

101:                                              ; preds = %98, %95
  %102 = load ptr, ptr @stdout, align 8, !dbg !698, !tbaa !501
  %103 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %102), !dbg !699
  %104 = load ptr, ptr @stdout, align 8, !dbg !700, !tbaa !501
  %105 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %104), !dbg !701
  %106 = ptrtoint ptr %54 to i64, !dbg !702
  %107 = sub i64 %106, %87, !dbg !702
  %108 = load ptr, ptr @stdout, align 8, !dbg !703, !tbaa !501
  %109 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %21, i64 noundef 1, i64 noundef %107, ptr noundef %108), !dbg !704
  %110 = load ptr, ptr @stdout, align 8, !dbg !705, !tbaa !501
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %110), !dbg !706
  %112 = load ptr, ptr @stdout, align 8, !dbg !707, !tbaa !501
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %112), !dbg !708
  br label %114, !dbg !709

114:                                              ; preds = %16, %101
  %115 = phi ptr [ %54, %101 ], [ %0, %16 ]
  %116 = load ptr, ptr @stdout, align 8, !dbg !579, !tbaa !501
  %117 = tail call i32 @fputs_unlocked(ptr noundef %115, ptr noundef %116), !dbg !579
  ret void, !dbg !710
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #6 !dbg !711 {
  %3 = alloca [2 x i8], align 1, !DIAssignID !727
    #dbg_assign(i1 poison, !721, !DIExpression(), !727, ptr %3, !DIExpression(), !728)
    #dbg_value(i32 %0, !716, !DIExpression(), !729)
    #dbg_value(ptr %1, !717, !DIExpression(), !729)
    #dbg_value(i64 80, !718, !DIExpression(), !729)
  %4 = load ptr, ptr %1, align 8, !dbg !730, !tbaa !504
  tail call void @set_program_name(ptr noundef %4) #16, !dbg !731
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.10) #16, !dbg !732
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #16, !dbg !733
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.11) #16, !dbg !734
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #16, !dbg !735
  %9 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @shortopts, ptr noundef nonnull @longopts, ptr noundef null) #16, !dbg !736
  %10 = icmp eq i32 %9, -1, !dbg !737
  br i1 %10, label %42, label %11, !dbg !738

11:                                               ; preds = %2
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 1
  br label %13, !dbg !738

13:                                               ; preds = %11, %38
  %14 = phi i32 [ %9, %11 ], [ %40, %38 ]
  %15 = phi i64 [ 80, %11 ], [ %39, %38 ]
    #dbg_value(i64 %15, !718, !DIExpression(), !729)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !dbg !739
  switch i32 %14, label %37 [
    i32 98, label %18
    i32 99, label %19
    i32 115, label %20
    i32 48, label %21
    i32 49, label %21
    i32 50, label %21
    i32 51, label %21
    i32 52, label %21
    i32 53, label %21
    i32 54, label %21
    i32 55, label %21
    i32 56, label %21
    i32 57, label %21
    i32 119, label %16
    i32 -130, label %32
    i32 -131, label %33
  ], !dbg !740

16:                                               ; preds = %13
  %17 = load ptr, ptr @optarg, align 8, !dbg !741, !tbaa !504
  br label %28, !dbg !740

18:                                               ; preds = %13
  store i32 1, ptr @counting_mode, align 4, !dbg !743, !tbaa !486
  br label %38, !dbg !744

19:                                               ; preds = %13
  store i32 2, ptr @counting_mode, align 4, !dbg !745, !tbaa !486
  br label %38, !dbg !746

20:                                               ; preds = %13
  store i1 true, ptr @break_spaces, align 1, !dbg !747
  br label %38, !dbg !748

21:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %22 = load ptr, ptr @optarg, align 8, !dbg !749, !tbaa !504
  %23 = icmp eq ptr %22, null, !dbg !751
  br i1 %23, label %26, label %24, !dbg !752

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %22, i64 -1, !dbg !753
  store ptr %25, ptr @optarg, align 8, !dbg !754, !tbaa !504
  br label %28, !dbg !755

26:                                               ; preds = %21
  %27 = trunc nuw nsw i32 %14 to i8, !dbg !756
  store i8 %27, ptr %3, align 1, !dbg !758, !tbaa !588, !DIAssignID !759
    #dbg_assign(i8 %27, !721, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !759, ptr %3, !DIExpression(), !728)
  store i8 0, ptr %12, align 1, !dbg !760, !tbaa !588, !DIAssignID !761
    #dbg_assign(i8 0, !721, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !761, ptr %12, !DIExpression(), !728)
  store ptr %3, ptr @optarg, align 8, !dbg !762, !tbaa !504
  br label %28

28:                                               ; preds = %16, %24, %26
  %29 = phi ptr [ %17, %16 ], [ %25, %24 ], [ %3, %26 ], !dbg !741
  %30 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #16, !dbg !763
  %31 = call i64 @xnumtoumax(ptr noundef %29, i32 noundef 10, i64 noundef 1, i64 noundef -10, ptr noundef nonnull @.str.10, ptr noundef %30, i32 noundef 0, i32 noundef 12) #16, !dbg !764
    #dbg_value(i64 %31, !718, !DIExpression(), !729)
  br label %38, !dbg !765

32:                                               ; preds = %13
  call void @usage(i32 noundef 0) #20, !dbg !766
  unreachable, !dbg !766

33:                                               ; preds = %13
  %34 = load ptr, ptr @stdout, align 8, !dbg !767, !tbaa !501
  %35 = load ptr, ptr @Version, align 8, !dbg !767, !tbaa !504
  %36 = call ptr @proper_name_lite(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15) #16, !dbg !768
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %34, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14, ptr noundef %35, ptr noundef %36, ptr noundef null) #16, !dbg !767
  call void @exit(i32 noundef 0) #17, !dbg !767
  unreachable, !dbg !767

37:                                               ; preds = %13
  call void @usage(i32 noundef 1) #20, !dbg !769
  unreachable, !dbg !769

38:                                               ; preds = %28, %20, %19, %18
  %39 = phi i64 [ %15, %18 ], [ %15, %19 ], [ %15, %20 ], [ %31, %28 ], !dbg !729
    #dbg_value(i64 %39, !718, !DIExpression(), !729)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !dbg !770
  %40 = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @shortopts, ptr noundef nonnull @longopts, ptr noundef null) #16, !dbg !771
    #dbg_value(i32 %40, !719, !DIExpression(), !729)
  %41 = icmp eq i32 %40, -1, !dbg !772
  br i1 %41, label %42, label %13, !dbg !773, !llvm.loop !774

42:                                               ; preds = %38, %2
  %43 = phi i64 [ 80, %2 ], [ %39, %38 ], !dbg !776
  %44 = load i32, ptr @optind, align 4, !dbg !777, !tbaa !486
  %45 = icmp eq i32 %0, %44, !dbg !778
  br i1 %45, label %50, label %46, !dbg !779

46:                                               ; preds = %42
    #dbg_value(i32 %44, !723, !DIExpression(), !780)
    #dbg_value(i8 1, !720, !DIExpression(), !729)
  %47 = icmp slt i32 %44, %0, !dbg !781
  br i1 %47, label %48, label %62, !dbg !783

48:                                               ; preds = %46
  %49 = sext i32 %44 to i64, !dbg !784
  br label %52, !dbg !784

50:                                               ; preds = %42
  %51 = call fastcc zeroext i1 @fold_file(ptr noundef nonnull @.str.16, i64 noundef %43), !dbg !785
    #dbg_value(i1 %51, !720, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !729)
  br label %62, !dbg !786

52:                                               ; preds = %48, %52
  %53 = phi i64 [ %49, %48 ], [ %59, %52 ]
  %54 = phi i1 [ true, %48 ], [ %58, %52 ]
    #dbg_value(i64 %53, !723, !DIExpression(), !780)
    #dbg_value(i8 poison, !720, !DIExpression(), !729)
  %55 = getelementptr inbounds ptr, ptr %1, i64 %53, !dbg !787
  %56 = load ptr, ptr %55, align 8, !dbg !787, !tbaa !504
  %57 = call fastcc zeroext i1 @fold_file(ptr noundef %56, i64 noundef %43), !dbg !788
  %58 = select i1 %57, i1 %54, i1 false, !dbg !789
    #dbg_value(i1 %58, !720, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !729)
  %59 = add nsw i64 %53, 1, !dbg !790
    #dbg_value(i64 %59, !723, !DIExpression(), !780)
  %60 = trunc i64 %59 to i32, !dbg !791
  %61 = icmp eq i32 %0, %60, !dbg !791
  br i1 %61, label %62, label %52, !dbg !792, !llvm.loop !793

62:                                               ; preds = %52, %46, %50
  %63 = phi i1 [ %51, %50 ], [ true, %46 ], [ %58, %52 ], !dbg !795
    #dbg_value(i8 poison, !720, !DIExpression(), !729)
  %64 = load i1, ptr @have_read_stdin, align 1, !dbg !796
  br i1 %64, label %65, label %72, !dbg !798

65:                                               ; preds = %62
  %66 = load ptr, ptr @stdin, align 8, !dbg !799, !tbaa !501
  %67 = call i32 @rpl_fclose(ptr noundef %66) #16, !dbg !800
  %68 = icmp eq i32 %67, -1, !dbg !801
  br i1 %68, label %69, label %72, !dbg !802

69:                                               ; preds = %65
  %70 = tail call ptr @__errno_location() #19, !dbg !803
  %71 = load i32, ptr %70, align 4, !dbg !803, !tbaa !486
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %71, ptr noundef nonnull @.str.16) #16, !dbg !804
  unreachable, !dbg !804

72:                                               ; preds = %65, %62
  %73 = xor i1 %63, true, !dbg !805
  %74 = zext i1 %73 to i32, !dbg !805
  ret i32 %74, !dbg !806
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

declare !dbg !807 void @set_program_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !809 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !813 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !816 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !819 i32 @atexit(ptr noundef) local_unnamed_addr #3

declare void @close_stdout() #1

; Function Attrs: nounwind
declare !dbg !824 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !830 i64 @xnumtoumax(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !836 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !840 ptr @proper_name_lite(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @fold_file(ptr noundef %0, i64 noundef %1) unnamed_addr #6 !dbg !396 {
  %3 = alloca %struct.__mbstate_t, align 4, !DIAssignID !844
    #dbg_assign(i1 poison, !845, !DIExpression(), !844, ptr %3, !DIExpression(), !867)
  %4 = alloca i32, align 4, !DIAssignID !871
  %5 = alloca %struct.__mbstate_t, align 4, !DIAssignID !872
    #dbg_assign(i1 poison, !845, !DIExpression(), !872, ptr %5, !DIExpression(), !873)
  %6 = alloca i32, align 4, !DIAssignID !877
  %7 = alloca %struct.__mbstate_t, align 4, !DIAssignID !878
    #dbg_assign(i1 poison, !845, !DIExpression(), !878, ptr %7, !DIExpression(), !879)
  %8 = alloca i32, align 4, !DIAssignID !890
  %9 = alloca %struct.mbbuf_t, align 8, !DIAssignID !891
    #dbg_assign(i1 poison, !407, !DIExpression(), !891, ptr %9, !DIExpression(), !892)
    #dbg_value(ptr %0, !400, !DIExpression(), !892)
    #dbg_value(i64 %1, !401, !DIExpression(), !892)
    #dbg_value(i64 0, !403, !DIExpression(), !892)
    #dbg_value(i64 0, !404, !DIExpression(), !892)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16, !dbg !893
    #dbg_value(ptr %0, !591, !DIExpression(), !894)
    #dbg_value(ptr @.str.16, !597, !DIExpression(), !894)
  %10 = load i8, ptr %0, align 1, !dbg !897
  %11 = icmp eq i8 %10, 45, !dbg !897
  br i1 %11, label %12, label %18, !dbg !897

12:                                               ; preds = %2
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !897
  %14 = load i8, ptr %13, align 1, !dbg !897
  %15 = icmp eq i8 %14, 0, !dbg !898
  br i1 %15, label %16, label %18, !dbg !899

16:                                               ; preds = %12
  %17 = load ptr, ptr @stdin, align 8, !dbg !900, !tbaa !501
    #dbg_value(ptr %17, !402, !DIExpression(), !892)
  store i1 true, ptr @have_read_stdin, align 1, !dbg !902
  br label %20, !dbg !903

18:                                               ; preds = %2, %12
  %19 = tail call noalias ptr @rpl_fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.59) #16, !dbg !904
    #dbg_value(ptr %19, !402, !DIExpression(), !892)
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %17, %16 ], [ %19, %18 ], !dbg !905
    #dbg_value(ptr %21, !402, !DIExpression(), !892)
  %22 = icmp eq ptr %21, null, !dbg !906
  br i1 %22, label %23, label %27, !dbg !908

23:                                               ; preds = %20
  %24 = tail call ptr @__errno_location() #19, !dbg !909
  %25 = load i32, ptr %24, align 4, !dbg !909, !tbaa !486
  %26 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef nonnull %0) #16, !dbg !911
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %25, ptr noundef nonnull @.str.60, ptr noundef %26) #16, !dbg !912
  br label %294, !dbg !913

27:                                               ; preds = %20
  tail call void @fadvise(ptr noundef nonnull %21, i32 noundef 2) #16, !dbg !914
    #dbg_value(ptr %9, !915, !DIExpression(), !923)
    #dbg_value(ptr @fold_file.line_in, !920, !DIExpression(), !923)
    #dbg_value(i64 262144, !921, !DIExpression(), !923)
    #dbg_value(ptr %21, !922, !DIExpression(), !923)
  store ptr @fold_file.line_in, ptr %9, align 8, !dbg !925, !tbaa !926, !DIAssignID !930
    #dbg_assign(ptr @fold_file.line_in, !407, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !930, ptr %9, !DIExpression(), !892)
  %28 = getelementptr inbounds nuw i8, ptr %9, i64 8, !dbg !931
  store ptr %21, ptr %28, align 8, !dbg !932, !tbaa !933, !DIAssignID !934
    #dbg_assign(ptr %21, !407, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !934, ptr %28, !DIExpression(), !892)
  %29 = getelementptr inbounds nuw i8, ptr %9, i64 16, !dbg !935
  store i64 262144, ptr %29, align 8, !dbg !936, !tbaa !937, !DIAssignID !938
    #dbg_assign(i64 262144, !407, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !938, ptr %29, !DIExpression(), !892)
  %30 = getelementptr inbounds nuw i8, ptr %9, i64 24, !dbg !939
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %30, i8 0, i64 17, i1 false), !dbg !940, !DIAssignID !941
    #dbg_assign(i8 0, !407, !DIExpression(DW_OP_LLVM_fragment, 192, 136), !941, ptr %30, !DIExpression(), !892)
    #dbg_value(i64 0, !403, !DIExpression(), !892)
    #dbg_value(i64 0, !404, !DIExpression(), !892)
    #dbg_value(ptr %9, !886, !DIExpression(), !942)
  %31 = call i64 @mbbuf_fill(ptr noundef nonnull %9), !dbg !943
  %32 = icmp slt i64 %31, 1, !dbg !944
  br i1 %32, label %264, label %33, !dbg !946

33:                                               ; preds = %27
  %34 = getelementptr inbounds nuw i8, ptr %9, i64 32
  br label %35, !dbg !946

35:                                               ; preds = %33, %86
  %36 = phi i64 [ 0, %33 ], [ %88, %86 ]
  %37 = phi i64 [ 0, %33 ], [ %87, %86 ]
    #dbg_value(i64 %36, !403, !DIExpression(), !892)
    #dbg_value(i64 %37, !404, !DIExpression(), !892)
  %38 = load ptr, ptr %9, align 8, !dbg !947, !tbaa !926
  %39 = load i64, ptr %34, align 8, !dbg !948, !tbaa !949
  %40 = getelementptr inbounds i8, ptr %38, i64 %39, !dbg !950
    #dbg_assign(i1 poison, !853, !DIExpression(), !890, ptr %8, !DIExpression(), !879)
    #dbg_value(ptr %40, !850, !DIExpression(), !879)
    #dbg_value(!DIArgList(ptr poison, i64 poison), !851, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !879)
  %41 = load i8, ptr %40, align 1, !dbg !951, !tbaa !588
    #dbg_value(i8 %41, !852, !DIExpression(), !879)
    #dbg_value(i8 %41, !952, !DIExpression(), !957)
  %42 = icmp sgt i8 %41, -1, !dbg !960
  br i1 %42, label %43, label %46, !dbg !961

43:                                               ; preds = %35
    #dbg_value(i64 1, !962, !DIExpression(), !968)
  %44 = zext nneg i8 %41 to i64, !dbg !970
    #dbg_value(i64 %44, !967, !DIExpression(), !968)
  %45 = or disjoint i64 %44, 1099511627776, !dbg !970
  br label %66, !dbg !971

46:                                               ; preds = %35
  %47 = load i64, ptr %30, align 8, !dbg !972, !tbaa !973
    #dbg_value(!DIArgList(ptr %38, i64 %47), !851, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !879)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16, !dbg !974
  store i32 0, ptr %7, align 4, !dbg !975, !tbaa !976, !DIAssignID !978
    #dbg_assign(i32 0, !845, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !978, ptr %7, !DIExpression(), !879)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16, !dbg !979
  %48 = sub nsw i64 %47, %39, !dbg !980
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %8, ptr noundef nonnull %40, i64 noundef %48, ptr noundef nonnull %7) #16, !dbg !981
    #dbg_value(i64 %49, !854, !DIExpression(), !879)
  %50 = icmp slt i64 %49, 0, !dbg !982
  br i1 %50, label %51, label %55, !dbg !984, !prof !985

51:                                               ; preds = %46
    #dbg_value(i8 %41, !986, !DIExpression(), !991)
  %52 = zext i8 %41 to i64, !dbg !993
  %53 = shl nuw nsw i64 %52, 32, !dbg !993
  %54 = or disjoint i64 %53, 1099511627776, !dbg !993
  br label %63, !dbg !994

55:                                               ; preds = %46
  %56 = load i32, ptr %8, align 4, !dbg !995, !tbaa !486
    #dbg_value(i32 %56, !967, !DIExpression(), !996)
    #dbg_value(i64 %49, !962, !DIExpression(), !996)
  %57 = icmp ne i64 %49, 0, !dbg !998
  call void @llvm.assume(i1 %57), !dbg !999
  %58 = icmp samesign ult i64 %49, 5, !dbg !1000
  call void @llvm.assume(i1 %58), !dbg !1001
  %59 = icmp ult i32 %56, 1114112, !dbg !1002
  call void @llvm.assume(i1 %59), !dbg !1003
  %60 = shl nuw nsw i64 %49, 40, !dbg !1004
  %61 = zext nneg i32 %56 to i64, !dbg !1004
  %62 = or disjoint i64 %60, %61, !dbg !1004
  br label %63, !dbg !1005

63:                                               ; preds = %55, %51
  %64 = phi i64 [ %54, %51 ], [ %62, %55 ], !dbg !879
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16, !dbg !1006
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16, !dbg !1006
  %65 = load i64, ptr %34, align 8, !dbg !1007, !tbaa !949
  br label %66

66:                                               ; preds = %63, %43
  %67 = phi i64 [ %39, %43 ], [ %65, %63 ], !dbg !1007
  %68 = phi i64 [ %45, %43 ], [ %64, %63 ], !dbg !879
    #dbg_value(i64 %68, !888, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !942)
    #dbg_value(i64 %68, !888, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8), !942)
    #dbg_value(i64 %68, !888, !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8), !942)
    #dbg_value(i64 %68, !888, !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16), !942)
  %69 = and i64 %68, 1095216660480, !dbg !1009
  %70 = icmp eq i64 %69, 0, !dbg !1009
  br i1 %70, label %71, label %74, !dbg !1010

71:                                               ; preds = %66
  %72 = lshr i64 %68, 40, !dbg !1011
    #dbg_value(i64 %72, !888, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8), !942)
    #dbg_value(i64 %68, !888, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !942)
  %73 = add nsw i64 %67, %72, !dbg !1012
  store i64 %73, ptr %34, align 8, !dbg !1013, !tbaa !949, !DIAssignID !1014
    #dbg_assign(i64 %73, !407, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !1014, ptr %34, !DIExpression(), !892)
  br label %81, !dbg !1015

74:                                               ; preds = %66
  %75 = load ptr, ptr %9, align 8, !dbg !1016, !tbaa !926
  %76 = add nsw i64 %67, 1, !dbg !1018
  store i64 %76, ptr %34, align 8, !dbg !1019, !tbaa !949, !DIAssignID !1020
    #dbg_assign(i64 %76, !407, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !1020, ptr %34, !DIExpression(), !892)
  %77 = getelementptr inbounds i8, ptr %75, i64 %67, !dbg !1021
  %78 = load i8, ptr %77, align 1, !dbg !1022, !tbaa !588
  %79 = zext i8 %78 to i64, !dbg !1023
    #dbg_value(i8 %78, !888, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !942)
  %80 = lshr i64 %68, 40, !dbg !1024
  br label %81

81:                                               ; preds = %71, %74
  %82 = phi i64 [ %72, %71 ], [ %80, %74 ], !dbg !1024
  %83 = phi i64 [ %68, %71 ], [ %79, %74 ], !dbg !942
    #dbg_value(i64 poison, !888, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !942)
    #dbg_value(i64 poison, !888, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !942)
    #dbg_value(i64 poison, !888, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !942)
    #dbg_value(i64 poison, !888, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !942)
  %84 = trunc i64 %83 to i32, !dbg !1024
    #dbg_value(i32 %84, !419, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !892)
    #dbg_value(!DIArgList(i64 %83, i64 %68), !419, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8), !892)
    #dbg_value(i64 %82, !419, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8), !892)
    #dbg_value(!DIArgList(i64 %83, i64 %68), !419, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16), !892)
  switch i32 %84, label %91 [
    i32 1114112, label %264
    i32 10, label %85
  ], !dbg !1025

85:                                               ; preds = %81
  call fastcc void @write_out(i64 noundef %37, i1 noundef zeroext true), !dbg !1026
    #dbg_value(i64 0, !404, !DIExpression(), !892)
    #dbg_value(i64 0, !403, !DIExpression(), !892)
  br label %86, !dbg !1029

86:                                               ; preds = %85, %242, %258
  %87 = phi i64 [ 0, %85 ], [ %82, %242 ], [ %263, %258 ]
  %88 = phi i64 [ 0, %85 ], [ %119, %242 ], [ %249, %258 ]
    #dbg_value(i64 %88, !403, !DIExpression(), !892)
    #dbg_value(i64 %87, !404, !DIExpression(), !892)
    #dbg_value(ptr %9, !886, !DIExpression(), !942)
  %89 = call i64 @mbbuf_fill(ptr noundef nonnull %9), !dbg !1030
    #dbg_value(i64 %89, !887, !DIExpression(), !942)
  %90 = icmp slt i64 %89, 1, !dbg !1031
  br i1 %90, label %264, label %35, !dbg !1032, !llvm.loop !1033

91:                                               ; preds = %81, %176
  %92 = phi i64 [ %177, %176 ], [ %37, %81 ], !dbg !892
  %93 = phi i64 [ %178, %176 ], [ %36, %81 ], !dbg !892
    #dbg_value(i64 %93, !403, !DIExpression(), !892)
    #dbg_value(i64 %92, !404, !DIExpression(), !892)
    #dbg_label(!430, !1036)
    #dbg_value(i32 %84, !1037, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !1052)
    #dbg_value(i64 poison, !1037, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8), !1052)
    #dbg_value(i64 poison, !1037, !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8), !1052)
    #dbg_value(i64 poison, !1037, !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16), !1052)
    #dbg_value(i64 %93, !1042, !DIExpression(), !1052)
  %94 = load i32, ptr @counting_mode, align 4, !dbg !1054, !tbaa !486
  %95 = icmp eq i32 %94, 1, !dbg !1055
  br i1 %95, label %116, label %96, !dbg !1056

96:                                               ; preds = %91
  switch i32 %84, label %106 [
    i32 8, label %97
    i32 13, label %248
    i32 9, label %103
  ], !dbg !1057

97:                                               ; preds = %96
  %98 = icmp eq i64 %93, 0, !dbg !1058
  br i1 %98, label %248, label %99, !dbg !1061

99:                                               ; preds = %97
  %100 = load i32, ptr @last_character_width, align 4, !dbg !1062, !tbaa !486
  %101 = sext i32 %100 to i64, !dbg !1062
  %102 = sub i64 %93, %101, !dbg !1063
    #dbg_value(i64 %102, !1042, !DIExpression(), !1052)
  br label %118, !dbg !1064

103:                                              ; preds = %96
  %104 = and i64 %93, -8, !dbg !1065
  %105 = add i64 %104, 8, !dbg !1065
    #dbg_value(i64 %105, !1042, !DIExpression(), !1052)
  br label %118, !dbg !1066

106:                                              ; preds = %96
  %107 = icmp eq i32 %94, 2, !dbg !1067
  br i1 %107, label %112, label %108, !dbg !1068

108:                                              ; preds = %106
    #dbg_value(i32 %84, !1069, !DIExpression(), !1075)
  %109 = call i32 @wcwidth(i32 noundef %84) #16, !dbg !1077
    #dbg_value(i32 %109, !1043, !DIExpression(), !1078)
  %110 = icmp slt i32 %109, 0, !dbg !1079
  %111 = select i1 %110, i32 1, i32 %109, !dbg !1080
  br label %112

112:                                              ; preds = %108, %106
  %113 = phi i32 [ %111, %108 ], [ 1, %106 ], !dbg !1081
  store i32 %113, ptr @last_character_width, align 4, !dbg !1081, !tbaa !486
  %114 = sext i32 %113 to i64, !dbg !1082
  %115 = add i64 %93, %114, !dbg !1083
    #dbg_value(i64 %115, !1042, !DIExpression(), !1052)
  br label %118

116:                                              ; preds = %91
    #dbg_value(i64 %82, !1037, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !1052)
  %117 = add i64 %93, %82, !dbg !1084
    #dbg_value(i64 %117, !1042, !DIExpression(), !1052)
  br label %118

118:                                              ; preds = %99, %103, %112, %116
  %119 = phi i64 [ %102, %99 ], [ %115, %112 ], [ %117, %116 ], [ %105, %103 ]
    #dbg_value(i64 %119, !1042, !DIExpression(), !1052)
    #dbg_value(i64 %119, !403, !DIExpression(), !892)
  %120 = icmp ugt i64 %119, %1, !dbg !1085
  br i1 %120, label %121, label %248, !dbg !1086

121:                                              ; preds = %118
  %122 = load i1, ptr @break_spaces, align 1, !dbg !1087
  br i1 %122, label %123, label %236, !dbg !1088

123:                                              ; preds = %121
    #dbg_value(i32 0, !432, !DIExpression(), !1089)
    #dbg_value(i64 %92, !437, !DIExpression(), !1089)
    #dbg_value(ptr @fold_file.line_out, !438, !DIExpression(), !1089)
  %124 = getelementptr inbounds i8, ptr @fold_file.line_out, i64 %92, !dbg !1090
    #dbg_value(ptr %124, !439, !DIExpression(), !1089)
  %125 = icmp sgt i64 %92, 0, !dbg !1091
  br i1 %125, label %126, label %236, !dbg !1092

126:                                              ; preds = %123
  %127 = ptrtoint ptr %124 to i64
  br label %130, !dbg !1092

128:                                              ; preds = %155
  %129 = icmp eq i32 %165, 0, !dbg !1093
  br i1 %129, label %236, label %168, !dbg !1094

130:                                              ; preds = %126, %155
  %131 = phi i32 [ 0, %126 ], [ %165, %155 ]
  %132 = phi i64 [ %92, %126 ], [ %164, %155 ]
  %133 = phi ptr [ @fold_file.line_out, %126 ], [ %166, %155 ]
    #dbg_value(i32 %131, !432, !DIExpression(), !1089)
    #dbg_value(i64 %132, !437, !DIExpression(), !1089)
    #dbg_value(ptr %133, !438, !DIExpression(), !1089)
    #dbg_assign(i1 poison, !853, !DIExpression(), !877, ptr %6, !DIExpression(), !873)
    #dbg_value(ptr %133, !850, !DIExpression(), !873)
    #dbg_value(ptr %124, !851, !DIExpression(), !873)
  %134 = load i8, ptr %133, align 1, !dbg !1095, !tbaa !588
    #dbg_value(i8 %134, !852, !DIExpression(), !873)
    #dbg_value(i8 %134, !952, !DIExpression(), !1096)
  %135 = icmp sgt i8 %134, -1, !dbg !1098
  br i1 %135, label %136, label %140, !dbg !1099

136:                                              ; preds = %130
    #dbg_value(i64 1, !962, !DIExpression(), !1100)
  %137 = zext nneg i8 %134 to i64, !dbg !1102
    #dbg_value(i64 %137, !967, !DIExpression(), !1100)
  %138 = or disjoint i64 %137, 1099511627776, !dbg !1102
  %139 = ptrtoint ptr %133 to i64, !dbg !1103
  br label %155, !dbg !1105

140:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16, !dbg !1106
  store i32 0, ptr %5, align 4, !dbg !1107, !tbaa !976, !DIAssignID !1108
    #dbg_assign(i32 0, !845, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !1108, ptr %5, !DIExpression(), !873)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16, !dbg !1109
  %141 = ptrtoint ptr %133 to i64, !dbg !1110
  %142 = sub i64 %127, %141, !dbg !1110
  %143 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %6, ptr noundef nonnull %133, i64 noundef %142, ptr noundef nonnull %5) #16, !dbg !1111
    #dbg_value(i64 %143, !854, !DIExpression(), !873)
  %144 = icmp slt i64 %143, 0, !dbg !1112
  br i1 %144, label %153, label %145, !dbg !1113, !prof !985

145:                                              ; preds = %140
  %146 = load i32, ptr %6, align 4, !dbg !1114, !tbaa !486
    #dbg_value(i32 %146, !967, !DIExpression(), !1115)
    #dbg_value(i64 %143, !962, !DIExpression(), !1115)
  %147 = icmp ne i64 %143, 0, !dbg !1117
  call void @llvm.assume(i1 %147), !dbg !1118
  %148 = icmp samesign ult i64 %143, 5, !dbg !1119
  call void @llvm.assume(i1 %148), !dbg !1120
  %149 = icmp ult i32 %146, 1114112, !dbg !1121
  call void @llvm.assume(i1 %149), !dbg !1122
  %150 = shl nuw nsw i64 %143, 40, !dbg !1123
  %151 = zext nneg i32 %146 to i64, !dbg !1123
  %152 = or disjoint i64 %150, %151, !dbg !1123
  br label %153, !dbg !1124

153:                                              ; preds = %140, %145
  %154 = phi i64 [ %152, %145 ], [ 1099511627776, %140 ], !dbg !873
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16, !dbg !1125
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !dbg !1125
  br label %155

155:                                              ; preds = %136, %153
  %156 = phi i64 [ %139, %136 ], [ %141, %153 ], !dbg !1103
  %157 = phi i64 [ %138, %136 ], [ %154, %153 ], !dbg !873
  %158 = trunc i64 %157 to i32, !dbg !1126
  %159 = lshr i64 %157, 40, !dbg !1126
    #dbg_value(i32 %158, !440, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !1127)
    #dbg_value(i64 %157, !440, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8), !1127)
    #dbg_value(i64 %159, !440, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8), !1127)
    #dbg_value(i64 %157, !440, !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16), !1127)
    #dbg_value(i32 %158, !1128, !DIExpression(), !1133)
    #dbg_value(i32 %158, !1135, !DIExpression(), !1142)
  %160 = call i32 @iswblank(i32 noundef %158) #16, !dbg !1144
  %161 = icmp eq i32 %160, 0, !dbg !1145
  %162 = trunc nuw nsw i64 %159 to i32, !dbg !1103
  %163 = sub i64 %156, ptrtoint (ptr @fold_file.line_out to i64), !dbg !1103
  %164 = select i1 %161, i64 %132, i64 %163, !dbg !1103
  %165 = select i1 %161, i32 %131, i32 %162, !dbg !1103
    #dbg_value(i32 %165, !432, !DIExpression(), !1089)
    #dbg_value(i64 %164, !437, !DIExpression(), !1089)
  %166 = getelementptr inbounds nuw i8, ptr %133, i64 %159, !dbg !1146
    #dbg_value(ptr %166, !438, !DIExpression(), !1089)
  %167 = icmp ult ptr %166, %124, !dbg !1147
  br i1 %167, label %130, label %128, !dbg !1148, !llvm.loop !1149

168:                                              ; preds = %128
  %169 = zext nneg i32 %165 to i64, !dbg !1152
  %170 = add nsw i64 %164, %169, !dbg !1153
    #dbg_value(i64 %170, !437, !DIExpression(), !1089)
  call fastcc void @write_out(i64 noundef %170, i1 noundef zeroext true), !dbg !1154
  %171 = getelementptr inbounds i8, ptr @fold_file.line_out, i64 %170, !dbg !1155
  %172 = sub nsw i64 %92, %170, !dbg !1156
    #dbg_value(ptr @fold_file.line_out, !1157, !DIExpression(), !1167)
    #dbg_value(ptr %171, !1165, !DIExpression(), !1167)
    #dbg_value(i64 %172, !1166, !DIExpression(), !1167)
  %173 = call ptr @__memmove_chk(ptr noundef nonnull @fold_file.line_out, ptr noundef nonnull %171, i64 noundef %172, i64 noundef 262144) #16, !dbg !1169
    #dbg_value(i64 %172, !404, !DIExpression(), !892)
    #dbg_value(i64 0, !403, !DIExpression(), !892)
    #dbg_value(ptr @fold_file.line_out, !442, !DIExpression(), !1170)
  %174 = getelementptr inbounds i8, ptr @fold_file.line_out, i64 %172, !dbg !1171
    #dbg_value(ptr %174, !445, !DIExpression(), !1170)
  %175 = icmp sgt i64 %172, 0, !dbg !1172
  br i1 %175, label %179, label %176, !dbg !1173

176:                                              ; preds = %232, %168, %247
  %177 = phi i64 [ %172, %168 ], [ 0, %247 ], [ %172, %232 ]
  %178 = phi i64 [ 0, %168 ], [ 0, %247 ], [ %233, %232 ]
  br label %91, !dbg !1054

179:                                              ; preds = %168
  %180 = ptrtoint ptr %174 to i64
  br label %181, !dbg !1173

181:                                              ; preds = %179, %232
  %182 = phi i64 [ 0, %179 ], [ %233, %232 ]
  %183 = phi ptr [ @fold_file.line_out, %179 ], [ %234, %232 ]
    #dbg_value(i64 %182, !403, !DIExpression(), !892)
    #dbg_value(ptr %183, !442, !DIExpression(), !1170)
    #dbg_assign(i1 poison, !853, !DIExpression(), !871, ptr %4, !DIExpression(), !867)
    #dbg_value(ptr %183, !850, !DIExpression(), !867)
    #dbg_value(ptr %174, !851, !DIExpression(), !867)
  %184 = load i8, ptr %183, align 1, !dbg !1174, !tbaa !588
    #dbg_value(i8 %184, !852, !DIExpression(), !867)
    #dbg_value(i8 %184, !952, !DIExpression(), !1175)
  %185 = icmp sgt i8 %184, -1, !dbg !1177
  br i1 %185, label %186, label %189, !dbg !1178

186:                                              ; preds = %181
    #dbg_value(i64 1, !962, !DIExpression(), !1179)
  %187 = zext nneg i8 %184 to i64, !dbg !1181
    #dbg_value(i64 %187, !967, !DIExpression(), !1179)
  %188 = or disjoint i64 %187, 1099511627776, !dbg !1181
  br label %204, !dbg !1182

189:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !dbg !1183
  store i32 0, ptr %3, align 4, !dbg !1184, !tbaa !976, !DIAssignID !1185
    #dbg_assign(i32 0, !845, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !1185, ptr %3, !DIExpression(), !867)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !dbg !1186
  %190 = ptrtoint ptr %183 to i64, !dbg !1187
  %191 = sub i64 %180, %190, !dbg !1187
  %192 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %183, i64 noundef %191, ptr noundef nonnull %3) #16, !dbg !1188
    #dbg_value(i64 %192, !854, !DIExpression(), !867)
  %193 = icmp slt i64 %192, 0, !dbg !1189
  br i1 %193, label %202, label %194, !dbg !1190, !prof !985

194:                                              ; preds = %189
  %195 = load i32, ptr %4, align 4, !dbg !1191, !tbaa !486
    #dbg_value(i32 %195, !967, !DIExpression(), !1192)
    #dbg_value(i64 %192, !962, !DIExpression(), !1192)
  %196 = icmp ne i64 %192, 0, !dbg !1194
  call void @llvm.assume(i1 %196), !dbg !1195
  %197 = icmp samesign ult i64 %192, 5, !dbg !1196
  call void @llvm.assume(i1 %197), !dbg !1197
  %198 = icmp ult i32 %195, 1114112, !dbg !1198
  call void @llvm.assume(i1 %198), !dbg !1199
  %199 = shl nuw nsw i64 %192, 40, !dbg !1200
  %200 = zext nneg i32 %195 to i64, !dbg !1200
  %201 = or disjoint i64 %199, %200, !dbg !1200
  br label %202, !dbg !1201

202:                                              ; preds = %189, %194
  %203 = phi i64 [ %201, %194 ], [ 1099511627776, %189 ], !dbg !867
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !dbg !1202
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !dbg !1202
  br label %204

204:                                              ; preds = %186, %202
  %205 = phi i64 [ %188, %186 ], [ %203, %202 ], !dbg !867
  %206 = lshr i64 %205, 40, !dbg !1203
    #dbg_value(i64 %205, !446, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40), !1204)
    #dbg_value(i64 %206, !446, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8), !1204)
    #dbg_value(i64 %205, !446, !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16), !1204)
  %207 = trunc i64 %205 to i32
    #dbg_value(i32 %207, !1037, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !1205)
    #dbg_value(i64 %205, !1037, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8), !1205)
    #dbg_value(i64 %205, !1037, !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8), !1205)
    #dbg_value(i64 %205, !1037, !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16), !1205)
    #dbg_value(i64 %182, !1042, !DIExpression(), !1205)
  %208 = load i32, ptr @counting_mode, align 4, !dbg !1207, !tbaa !486
  %209 = icmp eq i32 %208, 1, !dbg !1208
  br i1 %209, label %230, label %210, !dbg !1209

210:                                              ; preds = %204
  switch i32 %207, label %220 [
    i32 8, label %211
    i32 13, label %232
    i32 9, label %217
  ], !dbg !1210

211:                                              ; preds = %210
  %212 = icmp eq i64 %182, 0, !dbg !1211
  br i1 %212, label %232, label %213, !dbg !1212

213:                                              ; preds = %211
  %214 = load i32, ptr @last_character_width, align 4, !dbg !1213, !tbaa !486
  %215 = sext i32 %214 to i64, !dbg !1213
  %216 = sub i64 %182, %215, !dbg !1214
    #dbg_value(i64 %216, !1042, !DIExpression(), !1205)
  br label %232, !dbg !1215

217:                                              ; preds = %210
  %218 = and i64 %182, -8, !dbg !1216
  %219 = add i64 %218, 8, !dbg !1216
    #dbg_value(i64 %219, !1042, !DIExpression(), !1205)
  br label %232, !dbg !1217

220:                                              ; preds = %210
  %221 = icmp eq i32 %208, 2, !dbg !1218
  br i1 %221, label %226, label %222, !dbg !1219

222:                                              ; preds = %220
    #dbg_value(i32 %207, !1069, !DIExpression(), !1220)
  %223 = call i32 @wcwidth(i32 noundef %207) #16, !dbg !1222
    #dbg_value(i32 %223, !1043, !DIExpression(), !1223)
  %224 = icmp slt i32 %223, 0, !dbg !1224
  %225 = select i1 %224, i32 1, i32 %223, !dbg !1225
  br label %226

226:                                              ; preds = %222, %220
  %227 = phi i32 [ %225, %222 ], [ 1, %220 ], !dbg !1226
  store i32 %227, ptr @last_character_width, align 4, !dbg !1226, !tbaa !486
  %228 = sext i32 %227 to i64, !dbg !1227
  %229 = add i64 %182, %228, !dbg !1228
    #dbg_value(i64 %229, !1042, !DIExpression(), !1205)
  br label %232

230:                                              ; preds = %204
    #dbg_value(i64 %206, !1037, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !1205)
  %231 = add i64 %206, %182, !dbg !1229
    #dbg_value(i64 %231, !1042, !DIExpression(), !1205)
  br label %232

232:                                              ; preds = %210, %211, %213, %217, %226, %230
  %233 = phi i64 [ %216, %213 ], [ 0, %211 ], [ %231, %230 ], [ %219, %217 ], [ %229, %226 ], [ 0, %210 ]
    #dbg_value(i64 %233, !1042, !DIExpression(), !1205)
    #dbg_value(i64 %233, !403, !DIExpression(), !892)
  %234 = getelementptr inbounds nuw i8, ptr %183, i64 %206, !dbg !1230
    #dbg_value(ptr %234, !442, !DIExpression(), !1170)
  %235 = icmp ult ptr %234, %174, !dbg !1231
  br i1 %235, label %181, label %176, !dbg !1232, !llvm.loop !1233

236:                                              ; preds = %123, %128, %121
    #dbg_value(i64 %119, !403, !DIExpression(), !892)
    #dbg_value(i64 %92, !404, !DIExpression(), !892)
  %237 = icmp eq i64 %92, 0, !dbg !1236
  br i1 %237, label %238, label %247, !dbg !1238

238:                                              ; preds = %236
    #dbg_value(i64 poison, !1239, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40), !1245)
    #dbg_value(i64 %82, !1239, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8), !1245)
    #dbg_value(i64 poison, !1239, !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16), !1245)
    #dbg_value(ptr %9, !1244, !DIExpression(), !1245)
  %239 = load i64, ptr %34, align 8, !dbg !1248, !tbaa !949
  %240 = icmp slt i64 %239, %82, !dbg !1250
  br i1 %240, label %241, label %242, !dbg !1251

241:                                              ; preds = %238
  call void @__assert_fail(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 176, ptr noundef nonnull @__PRETTY_FUNCTION__.mbbuf_char_offset) #17, !dbg !1252
  unreachable, !dbg !1252

242:                                              ; preds = %238
  %243 = load ptr, ptr %9, align 8, !dbg !1255, !tbaa !926
  %244 = sub nsw i64 %239, %82, !dbg !1256
  %245 = getelementptr inbounds nuw i8, ptr %243, i64 %244, !dbg !1257
    #dbg_value(ptr @fold_file.line_out, !1258, !DIExpression(), !1267)
    #dbg_value(ptr %245, !1265, !DIExpression(), !1267)
    #dbg_value(i64 %82, !1266, !DIExpression(), !1267)
  %246 = call ptr @__memcpy_chk(ptr noundef nonnull @fold_file.line_out, ptr noundef nonnull %245, i64 noundef range(i64 0, 256) %82, i64 noundef 262144) #16, !dbg !1269, !alias.scope !1270
    #dbg_value(i64 %82, !404, !DIExpression(), !892)
  br label %86, !dbg !1274

247:                                              ; preds = %236
  call fastcc void @write_out(i64 noundef %92, i1 noundef zeroext true), !dbg !1275
    #dbg_value(i64 0, !404, !DIExpression(), !892)
    #dbg_value(i64 0, !403, !DIExpression(), !892)
  br label %176, !dbg !1276

248:                                              ; preds = %96, %97, %118
  %249 = phi i64 [ %119, %118 ], [ 0, %97 ], [ 0, %96 ]
  %250 = add nsw i64 %92, %82, !dbg !1277
  %251 = icmp ugt i64 %250, 262143, !dbg !1279
  br i1 %251, label %252, label %253, !dbg !1280

252:                                              ; preds = %248
  call fastcc void @write_out(i64 noundef %92, i1 noundef zeroext false), !dbg !1281
    #dbg_value(i64 0, !404, !DIExpression(), !892)
  br label %253, !dbg !1283

253:                                              ; preds = %252, %248
  %254 = phi i64 [ 0, %252 ], [ %92, %248 ], !dbg !892
    #dbg_value(i64 %254, !404, !DIExpression(), !892)
    #dbg_value(i64 poison, !1239, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40), !1284)
    #dbg_value(i64 poison, !1239, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8), !1284)
    #dbg_value(i64 poison, !1239, !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16), !1284)
    #dbg_value(ptr %9, !1244, !DIExpression(), !1284)
  %255 = load i64, ptr %34, align 8, !dbg !1286, !tbaa !949
  %256 = icmp slt i64 %255, %82, !dbg !1287
  br i1 %256, label %257, label %258, !dbg !1288

257:                                              ; preds = %253
  call void @__assert_fail(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 176, ptr noundef nonnull @__PRETTY_FUNCTION__.mbbuf_char_offset) #17, !dbg !1289
  unreachable, !dbg !1289

258:                                              ; preds = %253
  %259 = getelementptr inbounds i8, ptr @fold_file.line_out, i64 %254, !dbg !1290
  %260 = load ptr, ptr %9, align 8, !dbg !1291, !tbaa !926
  %261 = sub nsw i64 %255, %82, !dbg !1292
  %262 = getelementptr inbounds nuw i8, ptr %260, i64 %261, !dbg !1293
    #dbg_value(ptr %259, !1258, !DIExpression(), !1294)
    #dbg_value(ptr %262, !1265, !DIExpression(), !1294)
    #dbg_value(i64 %82, !1266, !DIExpression(), !1294)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %259, ptr noundef nonnull align 1 %262, i64 noundef range(i64 0, 256) %82, i1 noundef false) #16, !dbg !1296
  %263 = add nsw i64 %254, %82, !dbg !1297
    #dbg_value(i64 %263, !404, !DIExpression(), !892)
  br label %86, !dbg !1034

264:                                              ; preds = %81, %86, %27
  %265 = phi i64 [ 0, %27 ], [ %87, %86 ], [ %37, %81 ], !dbg !892
  %266 = tail call ptr @__errno_location() #19, !dbg !1298
  %267 = load i32, ptr %266, align 4, !dbg !1299, !tbaa !486
    #dbg_value(i32 %267, !418, !DIExpression(), !892)
    #dbg_value(ptr %21, !1300, !DIExpression(), !1306)
  %268 = load i32, ptr %21, align 8, !dbg !1309, !tbaa !1310
  %269 = and i32 %268, 32, !dbg !1315
  %270 = icmp eq i32 %269, 0, !dbg !1315
  %271 = select i1 %270, i32 0, i32 %267, !dbg !1316
    #dbg_value(i32 %271, !418, !DIExpression(), !892)
  %272 = icmp eq i64 %265, 0, !dbg !1317
  br i1 %272, label %274, label %273, !dbg !1319

273:                                              ; preds = %264
  call fastcc void @write_out(i64 noundef %265, i1 noundef zeroext false), !dbg !1320
  br label %274, !dbg !1320

274:                                              ; preds = %264, %273
    #dbg_value(ptr %0, !591, !DIExpression(), !1321)
    #dbg_value(ptr @.str.16, !597, !DIExpression(), !1321)
  %275 = load i8, ptr %0, align 1, !dbg !1324
  %276 = icmp eq i8 %275, 45, !dbg !1324
  br i1 %276, label %277, label %282, !dbg !1324

277:                                              ; preds = %274
  %278 = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !1324
  %279 = load i8, ptr %278, align 1, !dbg !1324
  %280 = icmp eq i8 %279, 0, !dbg !1325
  br i1 %280, label %281, label %282, !dbg !1326

281:                                              ; preds = %277
  call void @clearerr_unlocked(ptr noundef nonnull %21) #16, !dbg !1327
  br label %289, !dbg !1327

282:                                              ; preds = %274, %277
  %283 = call i32 @rpl_fclose(ptr noundef nonnull %21) #16, !dbg !1328
  %284 = icmp eq i32 %283, 0, !dbg !1330
  %285 = icmp ne i32 %271, 0
  %286 = select i1 %284, i1 true, i1 %285, !dbg !1331
  br i1 %286, label %289, label %287, !dbg !1331

287:                                              ; preds = %282
  %288 = load i32, ptr %266, align 4, !dbg !1332, !tbaa !486
    #dbg_value(i32 %288, !418, !DIExpression(), !892)
  br label %289, !dbg !1333

289:                                              ; preds = %282, %287, %281
  %290 = phi i32 [ %271, %281 ], [ %271, %282 ], [ %288, %287 ], !dbg !892
    #dbg_value(i32 %290, !418, !DIExpression(), !892)
  %291 = icmp eq i32 %290, 0, !dbg !1334
  br i1 %291, label %294, label %292, !dbg !1336

292:                                              ; preds = %289
  %293 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef nonnull %0) #16, !dbg !1337
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %290, ptr noundef nonnull @.str.60, ptr noundef %293) #16, !dbg !1339
  br label %294, !dbg !1340

294:                                              ; preds = %292, %289, %23
  %295 = phi i1 [ false, %23 ], [ true, %289 ], [ false, %292 ], !dbg !892
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16, !dbg !1341
  ret i1 %295, !dbg !1342
}

declare !dbg !1343 i32 @rpl_fclose(ptr noundef) local_unnamed_addr #1

declare !dbg !1344 void @error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1348 ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1352 noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1353 i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1357 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1360 ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1366 i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare !dbg !1367 noundef i64 @fwrite_unlocked(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1370 i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1373 i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

declare !dbg !1376 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !1379 void @emit_bug_reporting_address() local_unnamed_addr #1

declare !dbg !1380 noalias ptr @rpl_fopen(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1383 ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1386 void @fadvise(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @write_out(i64 noundef %0, i1 noundef zeroext %1) unnamed_addr #6 !dbg !1390 {
    #dbg_value(ptr @fold_file.line_out, !1394, !DIExpression(), !1402)
    #dbg_value(i64 %0, !1395, !DIExpression(), !1402)
    #dbg_value(i1 %1, !1396, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1402)
  %3 = load ptr, ptr @stdout, align 8, !dbg !1403, !tbaa !501
  %4 = tail call i64 @fwrite_unlocked(ptr noundef nonnull @fold_file.line_out, i64 noundef 1, i64 noundef %0, ptr noundef %3), !dbg !1404
  %5 = icmp eq i64 %4, %0, !dbg !1405
  br i1 %5, label %6, label %19, !dbg !1406

6:                                                ; preds = %2
  br i1 %1, label %7, label %28, !dbg !1407

7:                                                ; preds = %6
    #dbg_value(i32 10, !1408, !DIExpression(), !1413)
  %8 = load ptr, ptr @stdout, align 8, !dbg !1415, !tbaa !501
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 40, !dbg !1416
  %10 = load ptr, ptr %9, align 8, !dbg !1416, !tbaa !1417
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 48, !dbg !1416
  %12 = load ptr, ptr %11, align 8, !dbg !1416, !tbaa !1418
  %13 = icmp ult ptr %10, %12, !dbg !1416
  br i1 %13, label %14, label %16, !dbg !1419, !prof !1420

14:                                               ; preds = %7
  %15 = getelementptr inbounds nuw i8, ptr %10, i64 1, !dbg !1421
  store ptr %15, ptr %9, align 8, !dbg !1422, !tbaa !1417
  store i8 10, ptr %10, align 1, !dbg !1423, !tbaa !588
  br label %28, !dbg !1424

16:                                               ; preds = %7
  %17 = tail call i32 @__overflow(ptr noundef nonnull %8, i32 noundef 10) #16, !dbg !1416
  %18 = icmp slt i32 %17, 0, !dbg !1425
  br i1 %18, label %19, label %28, !dbg !1426

19:                                               ; preds = %16, %2
  %20 = tail call ptr @__errno_location() #19, !dbg !1427
  %21 = load i32, ptr %20, align 4, !dbg !1432, !tbaa !486
    #dbg_value(i32 %21, !1430, !DIExpression(), !1433)
  %22 = load ptr, ptr @stdout, align 8, !dbg !1434, !tbaa !501
  %23 = tail call i32 @fflush_unlocked(ptr noundef %22) #16, !dbg !1435
  %24 = load ptr, ptr @stdout, align 8, !dbg !1436, !tbaa !501
  %25 = tail call i32 @fpurge(ptr noundef %24) #16, !dbg !1437
  %26 = load ptr, ptr @stdout, align 8, !dbg !1438, !tbaa !501
  tail call void @clearerr_unlocked(ptr noundef %26) #16, !dbg !1439
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #16, !dbg !1440
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %21, ptr noundef %27) #16, !dbg !1441
  unreachable, !dbg !1441

28:                                               ; preds = %14, %16, %6
  ret void, !dbg !1442
}

; Function Attrs: nounwind
declare !dbg !1443 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: inlinehint nounwind uwtable
declare i64 @mbbuf_fill(ptr noundef) local_unnamed_addr #4

declare !dbg !1446 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #1

declare !dbg !1447 i32 @fpurge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !1448 i32 @wcwidth(i32 noundef) local_unnamed_addr #2

declare !dbg !1454 i64 @rpl_mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !1459 i32 @iswblank(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1461 ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind memory(argmem: readwrite)
declare !dbg !1465 ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

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
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind willreturn memory(none) }
attributes #20 = { noreturn }

!llvm.dbg.cu = !{!66}
!llvm.module.flags = !{!478, !479, !480, !481, !482, !483, !484}
!llvm.ident = !{!485}
!llvm.errno.tbaa = !{!486}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/fold.c", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "eee9b3e52e2800e339faad5506a934a5")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 60)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 5)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 56)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 66)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 608, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 76)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 62)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 50)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !39, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 297, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 1)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 298, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 10)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 298, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 24)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "shortopts", scope: !66, file: !2, line: 56, type: !473, isLocal: true, isDefinition: true)
!66 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, retainedTypes: !135, globals: !145, splitDebugInlining: false, nameTableKind: None)
!67 = !{!68, !74, !81, !87, !102, !116, !125, !129, !132}
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 43, baseType: !69, size: 32, elements: !70)
!69 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "COUNT_COLUMNS", value: 0)
!72 = !DIEnumerator(name: "COUNT_BYTES", value: 1)
!73 = !DIEnumerator(name: "COUNT_CHARACTERS", value: 2)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 24, baseType: !69, size: 32, elements: !76)
!75 = !DIFile(filename: "./lib/xdectoint.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "XTOINT_MIN_QUIET", value: 1)
!78 = !DIEnumerator(name: "XTOINT_MAX_QUIET", value: 2)
!79 = !DIEnumerator(name: "XTOINT_MIN_RANGE", value: 4)
!80 = !DIEnumerator(name: "XTOINT_MAX_RANGE", value: 8)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !82, line: 356, baseType: !83, size: 32, elements: !84)
!82 = !DIFile(filename: "src/system.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "6a9c30566098770bfb4561b49834f302")
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !{!85, !86}
!85 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!86 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 46, baseType: !69, size: 32, elements: !89)
!88 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!90 = !DIEnumerator(name: "_ISupper", value: 256)
!91 = !DIEnumerator(name: "_ISlower", value: 512)
!92 = !DIEnumerator(name: "_ISalpha", value: 1024)
!93 = !DIEnumerator(name: "_ISdigit", value: 2048)
!94 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!95 = !DIEnumerator(name: "_ISspace", value: 8192)
!96 = !DIEnumerator(name: "_ISprint", value: 16384)
!97 = !DIEnumerator(name: "_ISgraph", value: 32768)
!98 = !DIEnumerator(name: "_ISblank", value: 1)
!99 = !DIEnumerator(name: "_IScntrl", value: 2)
!100 = !DIEnumerator(name: "_ISpunct", value: 4)
!101 = !DIEnumerator(name: "_ISalnum", value: 8)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !103, line: 42, baseType: !69, size: 32, elements: !104)
!103 = !DIFile(filename: "./lib/quotearg.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115}
!105 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!106 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!107 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!108 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!109 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!110 = !DIEnumerator(name: "c_quoting_style", value: 5)
!111 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!112 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!113 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!114 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!115 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !117, line: 44, baseType: !69, size: 32, elements: !118)
!117 = !DIFile(filename: "./lib/fadvise.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!118 = !{!119, !120, !121, !122, !123, !124}
!119 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!120 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!121 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!122 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!123 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!124 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !126, line: 130, baseType: !69, size: 32, elements: !127)
!126 = !DIFile(filename: "./lib/mcel.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3579582c4826b47e433381dcd966e882")
!127 = !{!128}
!128 = !DIEnumerator(name: "MCEL_CHAR_MAX", value: 1114111)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !126, line: 127, baseType: !69, size: 32, elements: !130)
!130 = !{!131}
!131 = !DIEnumerator(name: "MCEL_LEN_MAX", value: 4)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !126, line: 131, baseType: !69, size: 32, elements: !133)
!133 = !{!134}
!134 = !DIEnumerator(name: "MCEL_ERR_MIN", value: 128)
!135 = !{!136, !137, !83, !138, !139, !142, !144}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!138 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !140, line: 18, baseType: !141)
!140 = !DIFile(filename: "/usr/lib/llvm-22/lib/clang/22/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!141 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!144 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!145 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !49, !54, !59, !146, !151, !156, !161, !166, !169, !171, !173, !178, !260, !262, !264, !269, !274, !276, !278, !280, !285, !287, !289, !291, !296, !301, !303, !305, !307, !309, !311, !313, !318, !323, !328, !333, !335, !337, !339, !341, !343, !348, !350, !355, !360, !64, !365, !367, !372, !374, !376, !378, !380, !392, !394, !451, !453, !455, !457, !459, !461, !464, !466, !468}
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !2, line: 334, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 26)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !2, line: 340, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 14)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !2, line: 340, type: !158, isLocal: true, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 16)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !2, line: 348, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 2)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "break_spaces", scope: !66, file: !2, line: 40, type: !168, isLocal: true, isDefinition: true)
!168 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !66, file: !2, line: 51, type: !168, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !82, line: 748, type: !24, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !82, line: 755, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 75)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !180, file: !82, line: 594, type: !83, isLocal: true, isDefinition: true)
!180 = distinct !DISubprogram(name: "oputs_", scope: !82, file: !82, line: 592, type: !181, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !183, keyInstructions: true)
!181 = !DISubroutineType(cc: DW_CC_nocall, types: !182)
!182 = !{null, !142, !142}
!183 = !{!184, !185, !186, !189, !190, !191, !192, !196, !197, !198, !199, !201, !254, !255, !256, !258, !259}
!184 = !DILocalVariable(name: "program", arg: 1, scope: !180, file: !82, line: 592, type: !142)
!185 = !DILocalVariable(name: "option", arg: 2, scope: !180, file: !82, line: 592, type: !142)
!186 = !DILocalVariable(name: "term", scope: !187, file: !82, line: 604, type: !142)
!187 = distinct !DILexicalBlock(scope: !188, file: !82, line: 601, column: 5)
!188 = distinct !DILexicalBlock(scope: !180, file: !82, line: 600, column: 7)
!189 = !DILocalVariable(name: "double_space", scope: !180, file: !82, line: 613, type: !168)
!190 = !DILocalVariable(name: "first_word", scope: !180, file: !82, line: 614, type: !142)
!191 = !DILocalVariable(name: "option_text", scope: !180, file: !82, line: 615, type: !142)
!192 = !DILocalVariable(name: "s", scope: !193, file: !82, line: 627, type: !142)
!193 = distinct !DILexicalBlock(scope: !194, file: !82, line: 624, column: 5)
!194 = distinct !DILexicalBlock(scope: !195, file: !82, line: 623, column: 12)
!195 = distinct !DILexicalBlock(scope: !180, file: !82, line: 616, column: 7)
!196 = !DILocalVariable(name: "spaces", scope: !193, file: !82, line: 628, type: !139)
!197 = !DILocalVariable(name: "anchor_len", scope: !180, file: !82, line: 639, type: !139)
!198 = !DILocalVariable(name: "desc_text", scope: !180, file: !82, line: 644, type: !142)
!199 = !DILocalVariable(name: "__ptr", scope: !200, file: !82, line: 663, type: !142)
!200 = distinct !DILexicalBlock(scope: !180, file: !82, line: 663, column: 3)
!201 = !DILocalVariable(name: "__stream", scope: !200, file: !82, line: 663, type: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !205)
!204 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !207)
!206 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !223, !225, !226, !227, !231, !232, !234, !235, !238, !240, !243, !246, !247, !248, !249, !250}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !205, file: !206, line: 51, baseType: !83, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !205, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !205, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !205, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !205, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !205, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !205, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !205, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !205, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !205, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !205, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !205, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !205, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !206, line: 36, flags: DIFlagFwdDecl)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !205, file: !206, line: 70, baseType: !224, size: 64, offset: 832)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !205, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !205, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !205, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !229, line: 152, baseType: !230)
!229 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!230 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !205, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !205, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!233 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !205, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !205, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !206, line: 43, baseType: null)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !205, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !229, line: 153, baseType: !230)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !205, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !206, line: 37, flags: DIFlagFwdDecl)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !205, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !206, line: 38, flags: DIFlagFwdDecl)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !205, file: !206, line: 93, baseType: !224, size: 64, offset: 1344)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !205, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !205, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !205, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !205, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 20)
!254 = !DILocalVariable(name: "__cnt", scope: !200, file: !82, line: 663, type: !139)
!255 = !DILocalVariable(name: "url_program", scope: !180, file: !82, line: 667, type: !142)
!256 = !DILocalVariable(name: "__ptr", scope: !257, file: !82, line: 705, type: !142)
!257 = distinct !DILexicalBlock(scope: !180, file: !82, line: 705, column: 3)
!258 = !DILocalVariable(name: "__stream", scope: !257, file: !82, line: 705, type: !202)
!259 = !DILocalVariable(name: "__cnt", scope: !257, file: !82, line: 705, type: !139)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !82, line: 604, type: !19, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !82, line: 605, type: !19, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !82, line: 614, type: !266, isLocal: true, isDefinition: true)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 4)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !82, line: 639, type: !271, isLocal: true, isDefinition: true)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 6)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !82, line: 667, type: !163, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !82, line: 667, type: !19, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !82, line: 668, type: !266, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !82, line: 668, type: !282, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 3)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !82, line: 669, type: !19, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !82, line: 670, type: !271, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !82, line: 670, type: !271, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !82, line: 671, type: !293, isLocal: true, isDefinition: true)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 7)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !82, line: 672, type: !298, isLocal: true, isDefinition: true)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 8)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !82, line: 673, type: !56, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !82, line: 674, type: !56, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !82, line: 675, type: !56, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !82, line: 676, type: !56, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !82, line: 682, type: !293, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !82, line: 683, type: !56, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !82, line: 688, type: !315, isLocal: true, isDefinition: true)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 17)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !82, line: 688, type: !320, isLocal: true, isDefinition: true)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 40)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !82, line: 695, type: !325, isLocal: true, isDefinition: true)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 15)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !82, line: 695, type: !330, isLocal: true, isDefinition: true)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 61)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !82, line: 698, type: !282, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !82, line: 702, type: !19, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !82, line: 707, type: !19, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !82, line: 710, type: !298, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !82, line: 858, type: !158, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !82, line: 859, type: !345, isLocal: true, isDefinition: true)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 22)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !82, line: 860, type: !325, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !82, line: 882, type: !352, isLocal: true, isDefinition: true)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 27)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !82, line: 884, type: !357, isLocal: true, isDefinition: true)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 51)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !82, line: 885, type: !362, isLocal: true, isDefinition: true)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 12)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !271, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !369, isLocal: true, isDefinition: true)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 11)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !293, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !271, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !19, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !298, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(name: "longopts", scope: !66, file: !2, line: 58, type: !382, isLocal: true, isDefinition: true)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 1792, elements: !294)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !385, line: 50, size: 256, elements: !386)
!385 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!386 = !{!387, !388, !389, !391}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !384, file: !385, line: 52, baseType: !142, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !384, file: !385, line: 55, baseType: !83, size: 32, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !384, file: !385, line: 56, baseType: !390, size: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !384, file: !385, line: 57, baseType: !83, size: 32, offset: 192)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "counting_mode", scope: !66, file: !2, line: 48, type: !68, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "line_out", scope: !396, file: !2, line: 164, type: !448, isLocal: true, isDefinition: true)
!396 = distinct !DISubprogram(name: "fold_file", scope: !2, file: !2, line: 159, type: !397, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !399, keyInstructions: true)
!397 = !DISubroutineType(types: !398)
!398 = !{!168, !142, !139}
!399 = !{!400, !401, !402, !403, !404, !407, !418, !419, !430, !432, !437, !438, !439, !440, !442, !445, !446}
!400 = !DILocalVariable(name: "filename", arg: 1, scope: !396, file: !2, line: 159, type: !142)
!401 = !DILocalVariable(name: "width", arg: 2, scope: !396, file: !2, line: 159, type: !139)
!402 = !DILocalVariable(name: "istream", scope: !396, file: !2, line: 161, type: !202)
!403 = !DILocalVariable(name: "column", scope: !396, file: !2, line: 162, type: !139)
!404 = !DILocalVariable(name: "offset_out", scope: !396, file: !2, line: 163, type: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !406, line: 137, baseType: !230)
!406 = !DIFile(filename: "./lib/idx.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "a342c053ede588630cf36a09403114d3")
!407 = !DILocalVariable(name: "mbbuf", scope: !396, file: !2, line: 166, type: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbbuf_t", file: !409, line: 55, baseType: !410)
!409 = !DIFile(filename: "./lib/mbbuf.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "867c2b5cbb0e5fe89cf43ca8d008516b")
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 47, size: 384, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !417}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !410, file: !409, line: 49, baseType: !136, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !410, file: !409, line: 50, baseType: !202, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !410, file: !409, line: 51, baseType: !405, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !410, file: !409, line: 52, baseType: !405, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !410, file: !409, line: 53, baseType: !405, size: 64, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !410, file: !409, line: 54, baseType: !168, size: 8, offset: 320)
!418 = !DILocalVariable(name: "saved_errno", scope: !396, file: !2, line: 167, type: !83)
!419 = !DILocalVariable(name: "g", scope: !396, file: !2, line: 186, type: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !126, line: 143, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 138, size: 64, elements: !422)
!422 = !{!423, !428, !429}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !421, file: !126, line: 140, baseType: !424, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !425, line: 37, baseType: !426)
!425 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !229, line: 57, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !229, line: 42, baseType: !69)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !421, file: !126, line: 141, baseType: !144, size: 8, offset: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !421, file: !126, line: 142, baseType: !144, size: 8, offset: 40)
!430 = !DILabel(scope: !431, name: "rescan", file: !2, line: 195, column: 5)
!431 = distinct !DILexicalBlock(scope: !396, file: !2, line: 188, column: 5)
!432 = !DILocalVariable(name: "space_length", scope: !433, file: !2, line: 205, type: !83)
!433 = distinct !DILexicalBlock(scope: !434, file: !2, line: 204, column: 13)
!434 = distinct !DILexicalBlock(scope: !435, file: !2, line: 203, column: 15)
!435 = distinct !DILexicalBlock(scope: !436, file: !2, line: 199, column: 9)
!436 = distinct !DILexicalBlock(scope: !431, file: !2, line: 198, column: 11)
!437 = !DILocalVariable(name: "logical_end", scope: !433, file: !2, line: 206, type: !405)
!438 = !DILocalVariable(name: "logical_p", scope: !433, file: !2, line: 207, type: !136)
!439 = !DILocalVariable(name: "logical_lim", scope: !433, file: !2, line: 208, type: !136)
!440 = !DILocalVariable(name: "g2", scope: !441, file: !2, line: 210, type: !420)
!441 = distinct !DILexicalBlock(scope: !433, file: !2, line: 210, column: 15)
!442 = !DILocalVariable(name: "printed_p", scope: !443, file: !2, line: 231, type: !136)
!443 = distinct !DILexicalBlock(scope: !444, file: !2, line: 221, column: 17)
!444 = distinct !DILexicalBlock(scope: !433, file: !2, line: 220, column: 19)
!445 = !DILocalVariable(name: "printed_lim", scope: !443, file: !2, line: 232, type: !136)
!446 = !DILocalVariable(name: "g2", scope: !447, file: !2, line: 233, type: !420)
!447 = distinct !DILexicalBlock(scope: !443, file: !2, line: 233, column: 19)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2097152, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 262144)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(name: "line_in", scope: !396, file: !2, line: 165, type: !448, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !163, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !282, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !409, line: 70, type: !163, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !409, line: 70, type: !153, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !409, line: 70, type: !463, isLocal: true, isDefinition: true)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 400, elements: !45)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !82, line: 959, type: !362, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(name: "last_character_width", scope: !66, file: !2, line: 54, type: !83, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !409, line: 176, type: !470, isLocal: true, isDefinition: true)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 344, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 43)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 288, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 36)
!476 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!477 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!478 = !{i32 7, !"Dwarf Version", i32 5}
!479 = !{i32 2, !"Debug Info Version", i32 3}
!480 = !{i32 1, !"wchar_size", i32 4}
!481 = !{i32 8, !"PIC Level", i32 2}
!482 = !{i32 7, !"PIE Level", i32 2}
!483 = !{i32 7, !"uwtable", i32 2}
!484 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!485 = !{!"Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)"}
!486 = !{!487, !487, i64 0}
!487 = !{!"int", !488, i64 0}
!488 = !{!"omnipotent char", !489, i64 0}
!489 = !{!"Simple C/C++ TBAA"}
!490 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 70, type: !491, scopeLine: 71, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !493, keyInstructions: true)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !83}
!493 = !{!494}
!494 = !DILocalVariable(name: "status", arg: 1, scope: !490, file: !2, line: 70, type: !83)
!495 = !DILocation(line: 0, scope: !490)
!496 = !DILocation(line: 72, column: 14, scope: !497, atomGroup: 1, atomRank: 2)
!497 = distinct !DILexicalBlock(scope: !490, file: !2, line: 72, column: 7)
!498 = !DILocation(line: 72, column: 14, scope: !497, atomGroup: 1, atomRank: 1)
!499 = !DILocation(line: 73, column: 5, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !2, line: 73, column: 5)
!501 = !{!502, !502, i64 0}
!502 = !{!"p1 _ZTS8_IO_FILE", !503, i64 0}
!503 = !{!"any pointer", !488, i64 0}
!504 = !{!505, !505, i64 0}
!505 = !{!"p1 omnipotent char", !503, i64 0}
!506 = !DILocation(line: 76, column: 15, scope: !507)
!507 = distinct !DILexicalBlock(scope: !497, file: !2, line: 75, column: 5)
!508 = !DILocation(line: 79, column: 15, scope: !507)
!509 = !DILocation(line: 76, column: 7, scope: !507)
!510 = !DILocation(line: 80, column: 14, scope: !507)
!511 = !DILocation(line: 82, column: 5, scope: !507)
!512 = !DILocation(line: 80, column: 7, scope: !507)
!513 = !DILocation(line: 748, column: 10, scope: !514, inlinedAt: !517)
!514 = distinct !DISubprogram(name: "emit_stdin_note", scope: !82, file: !82, line: 746, type: !515, scopeLine: 747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, keyInstructions: true)
!515 = !DISubroutineType(types: !516)
!516 = !{null}
!517 = distinct !DILocation(line: 84, column: 7, scope: !507)
!518 = !DILocation(line: 750, column: 5, scope: !514, inlinedAt: !517)
!519 = !DILocation(line: 748, column: 3, scope: !514, inlinedAt: !517)
!520 = !DILocation(line: 755, column: 10, scope: !521, inlinedAt: !522)
!521 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !82, file: !82, line: 753, type: !515, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, keyInstructions: true)
!522 = distinct !DILocation(line: 85, column: 7, scope: !507)
!523 = !DILocation(line: 757, column: 5, scope: !521, inlinedAt: !522)
!524 = !DILocation(line: 755, column: 3, scope: !521, inlinedAt: !522)
!525 = !DILocation(line: 87, column: 14, scope: !507)
!526 = !DILocation(line: 87, column: 7, scope: !507)
!527 = !DILocation(line: 91, column: 14, scope: !507)
!528 = !DILocation(line: 91, column: 7, scope: !507)
!529 = !DILocation(line: 95, column: 14, scope: !507)
!530 = !DILocation(line: 95, column: 7, scope: !507)
!531 = !DILocation(line: 99, column: 14, scope: !507)
!532 = !DILocation(line: 99, column: 7, scope: !507)
!533 = !DILocation(line: 103, column: 14, scope: !507)
!534 = !DILocation(line: 103, column: 7, scope: !507)
!535 = !DILocation(line: 104, column: 14, scope: !507)
!536 = !DILocation(line: 104, column: 7, scope: !507)
!537 = !DILocalVariable(name: "program", arg: 1, scope: !538, file: !82, line: 855, type: !142)
!538 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !82, file: !82, line: 855, type: !539, scopeLine: 856, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !541, keyInstructions: true)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !142}
!541 = !{!537, !542, !549, !550, !552}
!542 = !DILocalVariable(name: "infomap", scope: !538, file: !82, line: 857, type: !543)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 896, elements: !294)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !538, file: !82, line: 857, size: 128, elements: !546)
!546 = !{!547, !548}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !545, file: !82, line: 857, baseType: !142, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !545, file: !82, line: 857, baseType: !142, size: 64, offset: 64)
!549 = !DILocalVariable(name: "node", scope: !538, file: !82, line: 867, type: !142)
!550 = !DILocalVariable(name: "map_prog", scope: !538, file: !82, line: 868, type: !551)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!552 = !DILocalVariable(name: "url_program", scope: !538, file: !82, line: 881, type: !142)
!553 = !DILocation(line: 0, scope: !538, inlinedAt: !554)
!554 = distinct !DILocation(line: 105, column: 7, scope: !507)
!555 = !DILocation(line: 876, column: 3, scope: !538, inlinedAt: !554)
!556 = !DILocation(line: 882, column: 11, scope: !538, inlinedAt: !554)
!557 = !DILocation(line: 882, column: 3, scope: !538, inlinedAt: !554)
!558 = !DILocation(line: 884, column: 11, scope: !538, inlinedAt: !554)
!559 = !DILocation(line: 884, column: 3, scope: !538, inlinedAt: !554)
!560 = !DILocation(line: 107, column: 3, scope: !490)
!561 = !DISubprogram(name: "__fprintf_chk", scope: !562, file: !562, line: 93, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!562 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!563 = !DISubroutineType(types: !564)
!564 = !{!83, !565, !83, !566, null}
!565 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !202)
!566 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !142)
!567 = !DISubprogram(name: "dcgettext", scope: !568, file: !568, line: 51, type: !569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!568 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!569 = !DISubroutineType(types: !570)
!570 = !{!136, !142, !142, !83}
!571 = !DISubprogram(name: "__printf__", linkageName: "rpl_printf", scope: !572, file: !572, line: 1944, type: !573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!572 = !DIFile(filename: "./lib/stdio.h", directory: "/workspaces/Thesis/.build/coreutils")
!573 = !DISubroutineType(types: !574)
!574 = !{!83, !566, null}
!575 = !DISubprogram(name: "fputs_unlocked", scope: !576, file: !576, line: 691, type: !577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!576 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!577 = !DISubroutineType(types: !578)
!578 = !{!83, !566, !565}
!579 = !DILocation(line: 0, scope: !180)
!580 = !DILocation(line: 600, column: 7, scope: !188)
!581 = !DILocation(line: 600, column: 19, scope: !188, atomGroup: 1, atomRank: 2)
!582 = !DILocation(line: 600, column: 19, scope: !188, atomGroup: 1, atomRank: 1)
!583 = !DILocation(line: 604, column: 26, scope: !187, atomGroup: 2, atomRank: 2)
!584 = !DILocation(line: 0, scope: !187)
!585 = !DILocation(line: 605, column: 23, scope: !187, atomGroup: 4, atomRank: 2)
!586 = !DILocation(line: 605, column: 28, scope: !187, atomGroup: 4, atomRank: 1)
!587 = !DILocation(line: 605, column: 32, scope: !187)
!588 = !{!488, !488, i64 0}
!589 = !DILocation(line: 605, column: 32, scope: !187, atomGroup: 5, atomRank: 2)
!590 = !DILocation(line: 605, column: 38, scope: !187, atomGroup: 5, atomRank: 1)
!591 = !DILocalVariable(name: "__s1", arg: 1, scope: !592, file: !593, line: 1368, type: !142)
!592 = distinct !DISubprogram(name: "streq", scope: !593, file: !593, line: 1368, type: !594, scopeLine: 1369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !596, keyInstructions: true)
!593 = !DIFile(filename: "./lib/string.h", directory: "/workspaces/Thesis/.build/coreutils")
!594 = !DISubroutineType(types: !595)
!595 = !{!168, !142, !142}
!596 = !{!591, !597}
!597 = !DILocalVariable(name: "__s2", arg: 2, scope: !592, file: !593, line: 1368, type: !142)
!598 = !DILocation(line: 0, scope: !592, inlinedAt: !599)
!599 = distinct !DILocation(line: 605, column: 41, scope: !187)
!600 = !DILocation(line: 1370, column: 11, scope: !592, inlinedAt: !599)
!601 = !DILocation(line: 1370, column: 10, scope: !592, inlinedAt: !599)
!602 = !DILocation(line: 605, column: 38, scope: !187, atomGroup: 3, atomRank: 2)
!603 = !DILocation(line: 605, column: 38, scope: !187)
!604 = !DILocation(line: 605, column: 19, scope: !187, atomGroup: 3, atomRank: 1)
!605 = !DILocation(line: 606, column: 5, scope: !187)
!606 = !DILocation(line: 607, column: 7, scope: !607)
!607 = distinct !DILexicalBlock(scope: !180, file: !82, line: 607, column: 7)
!608 = !DILocation(line: 607, column: 7, scope: !607, atomGroup: 6, atomRank: 2)
!609 = !DILocation(line: 607, column: 7, scope: !607, atomGroup: 6, atomRank: 1)
!610 = !DILocation(line: 614, column: 37, scope: !180)
!611 = !DILocation(line: 614, column: 35, scope: !180, atomGroup: 9, atomRank: 2)
!612 = !DILocation(line: 615, column: 29, scope: !180, atomGroup: 10, atomRank: 2)
!613 = !DILocation(line: 616, column: 8, scope: !195, atomGroup: 11, atomRank: 2)
!614 = !DILocation(line: 616, column: 7, scope: !195, atomGroup: 11, atomRank: 1)
!615 = !DILocation(line: 0, scope: !193)
!616 = !DILocation(line: 623, column: 24, scope: !194, atomGroup: 14, atomRank: 1)
!617 = !{!618, !618, i64 0}
!618 = !{!"p1 short", !503, i64 0}
!619 = !DILocation(line: 629, column: 7, scope: !193, atomGroup: 92, atomRank: 1)
!620 = !DILocation(line: 630, column: 32, scope: !193, atomGroup: 20, atomRank: 2)
!621 = !DILocation(line: 630, column: 30, scope: !193)
!622 = !DILocation(line: 630, column: 21, scope: !193)
!623 = !{!624, !624, i64 0}
!624 = !{!"short", !488, i64 0}
!625 = !DILocation(line: 630, column: 19, scope: !193)
!626 = !DILocation(line: 630, column: 16, scope: !193, atomGroup: 19, atomRank: 2)
!627 = !DILocation(line: 629, column: 16, scope: !193, atomGroup: 17, atomRank: 2)
!628 = !DILocation(line: 629, column: 30, scope: !193, atomGroup: 17, atomRank: 1)
!629 = !DILocation(line: 629, column: 7, scope: !193, atomGroup: 18, atomRank: 1)
!630 = distinct !{!630, !631, !622, !632}
!631 = !DILocation(line: 629, column: 7, scope: !193)
!632 = !{!"llvm.loop.mustprogress"}
!633 = !DILocation(line: 631, column: 18, scope: !634, atomGroup: 21, atomRank: 2)
!634 = distinct !DILexicalBlock(scope: !193, file: !82, line: 631, column: 11)
!635 = !DILocation(line: 631, column: 18, scope: !634)
!636 = !DILocation(line: 639, column: 23, scope: !180, atomGroup: 24, atomRank: 2)
!637 = !DILocation(line: 644, column: 39, scope: !180, atomGroup: 25, atomRank: 2)
!638 = !DILocation(line: 645, column: 3, scope: !180)
!639 = !DILocation(line: 645, column: 10, scope: !180)
!640 = !DILocation(line: 645, column: 21, scope: !180, atomGroup: 26, atomRank: 1)
!641 = !DILocation(line: 647, column: 32, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !82, line: 647, column: 11)
!643 = distinct !DILexicalBlock(scope: !180, file: !82, line: 646, column: 5)
!644 = !DILocation(line: 647, column: 49, scope: !642, atomGroup: 29, atomRank: 2)
!645 = !DILocation(line: 647, column: 29, scope: !642, atomGroup: 29, atomRank: 1)
!646 = !DILocation(line: 649, column: 11, scope: !647)
!647 = distinct !DILexicalBlock(scope: !643, file: !82, line: 649, column: 11)
!648 = !DILocation(line: 649, column: 11, scope: !647, atomGroup: 31, atomRank: 2)
!649 = !DILocation(line: 649, column: 11, scope: !647, atomGroup: 31, atomRank: 1)
!650 = !DILocation(line: 651, column: 26, scope: !651, atomGroup: 32, atomRank: 2)
!651 = distinct !DILexicalBlock(scope: !652, file: !82, line: 651, column: 15)
!652 = distinct !DILexicalBlock(scope: !647, file: !82, line: 650, column: 9)
!653 = !DILocation(line: 651, column: 34, scope: !651, atomGroup: 32, atomRank: 1)
!654 = !DILocation(line: 651, column: 46, scope: !651)
!655 = !DILocation(line: 651, column: 37, scope: !651)
!656 = !DILocation(line: 651, column: 37, scope: !651, atomGroup: 33, atomRank: 2)
!657 = !DILocation(line: 651, column: 34, scope: !651, atomGroup: 33, atomRank: 1)
!658 = !DILocation(line: 659, column: 16, scope: !643, atomGroup: 38, atomRank: 2)
!659 = distinct !{!659, !638, !660, !632}
!660 = !DILocation(line: 660, column: 5, scope: !180)
!661 = !DILocation(line: 663, column: 33, scope: !180)
!662 = !DILocation(line: 663, column: 43, scope: !180)
!663 = !DILocation(line: 663, column: 3, scope: !180)
!664 = !DILocation(line: 0, scope: !592, inlinedAt: !665)
!665 = distinct !DILocation(line: 667, column: 31, scope: !180)
!666 = !DILocation(line: 0, scope: !592, inlinedAt: !667)
!667 = distinct !DILocation(line: 668, column: 31, scope: !180)
!668 = !DILocation(line: 0, scope: !592, inlinedAt: !669)
!669 = distinct !DILocation(line: 669, column: 31, scope: !180)
!670 = !DILocation(line: 0, scope: !592, inlinedAt: !671)
!671 = distinct !DILocation(line: 670, column: 31, scope: !180)
!672 = !DILocation(line: 0, scope: !592, inlinedAt: !673)
!673 = distinct !DILocation(line: 671, column: 31, scope: !180)
!674 = !DILocation(line: 0, scope: !592, inlinedAt: !675)
!675 = distinct !DILocation(line: 672, column: 31, scope: !180)
!676 = !DILocation(line: 0, scope: !592, inlinedAt: !677)
!677 = distinct !DILocation(line: 673, column: 31, scope: !180)
!678 = !DILocation(line: 0, scope: !592, inlinedAt: !679)
!679 = distinct !DILocation(line: 674, column: 31, scope: !180)
!680 = !DILocation(line: 0, scope: !592, inlinedAt: !681)
!681 = distinct !DILocation(line: 675, column: 31, scope: !180)
!682 = !DILocation(line: 0, scope: !592, inlinedAt: !683)
!683 = distinct !DILocation(line: 676, column: 31, scope: !180)
!684 = !DILocation(line: 682, column: 7, scope: !685)
!685 = distinct !DILexicalBlock(scope: !180, file: !82, line: 682, column: 7)
!686 = !DILocation(line: 682, column: 7, scope: !685, atomGroup: 64, atomRank: 2)
!687 = !DILocation(line: 683, column: 7, scope: !685, atomGroup: 64, atomRank: 1)
!688 = !DILocation(line: 683, column: 10, scope: !685)
!689 = !DILocation(line: 683, column: 10, scope: !685, atomGroup: 65, atomRank: 2)
!690 = !DILocation(line: 683, column: 7, scope: !685, atomGroup: 65, atomRank: 1)
!691 = !DILocation(line: 689, column: 41, scope: !692)
!692 = distinct !DILexicalBlock(scope: !685, file: !82, line: 684, column: 5)
!693 = !DILocation(line: 688, column: 7, scope: !692)
!694 = !DILocation(line: 690, column: 5, scope: !692)
!695 = !DILocation(line: 696, column: 15, scope: !696)
!696 = distinct !DILexicalBlock(scope: !685, file: !82, line: 692, column: 5)
!697 = !DILocation(line: 695, column: 7, scope: !696)
!698 = !DILocation(line: 698, column: 20, scope: !180)
!699 = !DILocation(line: 698, column: 3, scope: !180)
!700 = !DILocation(line: 702, column: 21, scope: !180)
!701 = !DILocation(line: 702, column: 3, scope: !180)
!702 = !DILocation(line: 705, column: 36, scope: !180)
!703 = !DILocation(line: 705, column: 50, scope: !180)
!704 = !DILocation(line: 705, column: 3, scope: !180)
!705 = !DILocation(line: 707, column: 21, scope: !180)
!706 = !DILocation(line: 707, column: 3, scope: !180)
!707 = !DILocation(line: 710, column: 28, scope: !180)
!708 = !DILocation(line: 710, column: 3, scope: !180)
!709 = !DILocation(line: 715, column: 1, scope: !180)
!710 = !DILocation(line: 715, column: 1, scope: !180, atomGroup: 80, atomRank: 1)
!711 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 289, type: !712, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !715, keyInstructions: true)
!712 = !DISubroutineType(types: !713)
!713 = !{!83, !83, !714}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!715 = !{!716, !717, !718, !719, !720, !721, !723}
!716 = !DILocalVariable(name: "argc", arg: 1, scope: !711, file: !2, line: 289, type: !83)
!717 = !DILocalVariable(name: "argv", arg: 2, scope: !711, file: !2, line: 289, type: !714)
!718 = !DILocalVariable(name: "width", scope: !711, file: !2, line: 291, type: !139)
!719 = !DILocalVariable(name: "optc", scope: !711, file: !2, line: 292, type: !83)
!720 = !DILocalVariable(name: "ok", scope: !711, file: !2, line: 293, type: !168)
!721 = !DILocalVariable(name: "optargbuf", scope: !722, file: !2, line: 305, type: !163)
!722 = distinct !DILexicalBlock(scope: !711, file: !2, line: 304, column: 5)
!723 = !DILocalVariable(name: "i", scope: !724, file: !2, line: 352, type: !83)
!724 = distinct !DILexicalBlock(scope: !725, file: !2, line: 352, column: 7)
!725 = distinct !DILexicalBlock(scope: !726, file: !2, line: 350, column: 5)
!726 = distinct !DILexicalBlock(scope: !711, file: !2, line: 347, column: 7)
!727 = distinct !DIAssignID()
!728 = !DILocation(line: 0, scope: !722)
!729 = !DILocation(line: 0, scope: !711)
!730 = !DILocation(line: 296, column: 21, scope: !711)
!731 = !DILocation(line: 296, column: 3, scope: !711)
!732 = !DILocation(line: 297, column: 3, scope: !711)
!733 = !DILocation(line: 298, column: 3, scope: !711)
!734 = !DILocation(line: 299, column: 3, scope: !711)
!735 = !DILocation(line: 301, column: 3, scope: !711)
!736 = !DILocation(line: 303, column: 18, scope: !711, atomGroup: 132, atomRank: 2)
!737 = !DILocation(line: 303, column: 71, scope: !711, atomGroup: 133, atomRank: 1)
!738 = !DILocation(line: 303, column: 3, scope: !711, atomGroup: 134, atomRank: 1)
!739 = !DILocation(line: 305, column: 7, scope: !722)
!740 = !DILocation(line: 307, column: 7, scope: !722, atomGroup: 5, atomRank: 1)
!741 = !DILocation(line: 333, column: 31, scope: !742)
!742 = distinct !DILexicalBlock(scope: !722, file: !2, line: 308, column: 9)
!743 = !DILocation(line: 310, column: 25, scope: !742, atomGroup: 6, atomRank: 1)
!744 = !DILocation(line: 311, column: 11, scope: !742, atomGroup: 7, atomRank: 1)
!745 = !DILocation(line: 314, column: 25, scope: !742, atomGroup: 8, atomRank: 1)
!746 = !DILocation(line: 315, column: 11, scope: !742, atomGroup: 9, atomRank: 1)
!747 = !DILocation(line: 318, column: 24, scope: !742, atomGroup: 10, atomRank: 1)
!748 = !DILocation(line: 319, column: 11, scope: !742, atomGroup: 11, atomRank: 1)
!749 = !DILocation(line: 323, column: 15, scope: !750)
!750 = distinct !DILexicalBlock(scope: !742, file: !2, line: 323, column: 15)
!751 = !DILocation(line: 323, column: 15, scope: !750, atomGroup: 12, atomRank: 2)
!752 = !DILocation(line: 323, column: 15, scope: !750, atomGroup: 12, atomRank: 1)
!753 = !DILocation(line: 324, column: 19, scope: !750, atomGroup: 13, atomRank: 2)
!754 = !DILocation(line: 324, column: 19, scope: !750, atomGroup: 13, atomRank: 1)
!755 = !DILocation(line: 324, column: 13, scope: !750)
!756 = !DILocation(line: 327, column: 30, scope: !757, atomGroup: 14, atomRank: 2)
!757 = distinct !DILexicalBlock(scope: !750, file: !2, line: 326, column: 13)
!758 = !DILocation(line: 327, column: 28, scope: !757, atomGroup: 14, atomRank: 1)
!759 = distinct !DIAssignID()
!760 = !DILocation(line: 328, column: 28, scope: !757, atomGroup: 15, atomRank: 1)
!761 = distinct !DIAssignID()
!762 = !DILocation(line: 329, column: 22, scope: !757, atomGroup: 16, atomRank: 1)
!763 = !DILocation(line: 334, column: 31, scope: !742)
!764 = !DILocation(line: 333, column: 19, scope: !742, atomGroup: 17, atomRank: 2)
!765 = !DILocation(line: 336, column: 11, scope: !742, atomGroup: 18, atomRank: 1)
!766 = !DILocation(line: 338, column: 9, scope: !742)
!767 = !DILocation(line: 340, column: 9, scope: !742)
!768 = !DILocation(line: 340, column: 49, scope: !742)
!769 = !DILocation(line: 343, column: 11, scope: !742)
!770 = !DILocation(line: 345, column: 5, scope: !711)
!771 = !DILocation(line: 303, column: 18, scope: !711, atomGroup: 2, atomRank: 2)
!772 = !DILocation(line: 303, column: 71, scope: !711, atomGroup: 3, atomRank: 1)
!773 = !DILocation(line: 303, column: 3, scope: !711, atomGroup: 4, atomRank: 1)
!774 = distinct !{!774, !775, !770, !632}
!775 = !DILocation(line: 303, column: 3, scope: !711)
!776 = !DILocation(line: 291, column: 10, scope: !711, atomGroup: 1, atomRank: 1)
!777 = !DILocation(line: 347, column: 15, scope: !726)
!778 = !DILocation(line: 347, column: 12, scope: !726, atomGroup: 19, atomRank: 2)
!779 = !DILocation(line: 347, column: 12, scope: !726, atomGroup: 19, atomRank: 1)
!780 = !DILocation(line: 0, scope: !724)
!781 = !DILocation(line: 352, column: 30, scope: !782, atomGroup: 135, atomRank: 1)
!782 = distinct !DILexicalBlock(scope: !724, file: !2, line: 352, column: 7)
!783 = !DILocation(line: 352, column: 7, scope: !724, atomGroup: 136, atomRank: 1)
!784 = !DILocation(line: 352, column: 7, scope: !724)
!785 = !DILocation(line: 348, column: 10, scope: !726, atomGroup: 20, atomRank: 3)
!786 = !DILocation(line: 348, column: 5, scope: !726)
!787 = !DILocation(line: 353, column: 26, scope: !782)
!788 = !DILocation(line: 353, column: 15, scope: !782)
!789 = !DILocation(line: 353, column: 12, scope: !782, atomGroup: 25, atomRank: 3)
!790 = !DILocation(line: 352, column: 39, scope: !782, atomGroup: 26, atomRank: 2)
!791 = !DILocation(line: 352, column: 30, scope: !782, atomGroup: 23, atomRank: 1)
!792 = !DILocation(line: 352, column: 7, scope: !724, atomGroup: 24, atomRank: 1)
!793 = distinct !{!793, !784, !794, !632}
!794 = !DILocation(line: 353, column: 40, scope: !724)
!795 = !DILocation(line: 0, scope: !726)
!796 = !DILocation(line: 356, column: 7, scope: !797, atomGroup: 28, atomRank: 3)
!797 = distinct !DILexicalBlock(scope: !711, file: !2, line: 356, column: 7)
!798 = !DILocation(line: 356, column: 23, scope: !797, atomGroup: 28, atomRank: 1)
!799 = !DILocation(line: 356, column: 34, scope: !797)
!800 = !DILocation(line: 356, column: 26, scope: !797)
!801 = !DILocation(line: 356, column: 41, scope: !797, atomGroup: 29, atomRank: 2)
!802 = !DILocation(line: 356, column: 23, scope: !797, atomGroup: 29, atomRank: 1)
!803 = !DILocation(line: 357, column: 26, scope: !797)
!804 = !DILocation(line: 357, column: 5, scope: !797)
!805 = !DILocation(line: 359, column: 10, scope: !711, atomGroup: 31, atomRank: 2)
!806 = !DILocation(line: 359, column: 3, scope: !711, atomGroup: 31, atomRank: 1)
!807 = !DISubprogram(name: "set_program_name", scope: !808, file: !808, line: 38, type: !539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!808 = !DIFile(filename: "./lib/progname.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3e5536ae3756d6a65acb8e248212c2ee")
!809 = !DISubprogram(name: "setlocale", scope: !810, file: !810, line: 122, type: !811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!810 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!811 = !DISubroutineType(types: !812)
!812 = !{!136, !83, !142}
!813 = !DISubprogram(name: "bindtextdomain", scope: !568, file: !568, line: 86, type: !814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!814 = !DISubroutineType(types: !815)
!815 = !{!136, !142, !142}
!816 = !DISubprogram(name: "textdomain", scope: !568, file: !568, line: 82, type: !817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!817 = !DISubroutineType(types: !818)
!818 = !{!136, !142}
!819 = !DISubprogram(name: "atexit", scope: !820, file: !820, line: 602, type: !821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!820 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!821 = !DISubroutineType(types: !822)
!822 = !{!83, !823}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!824 = !DISubprogram(name: "getopt_long", scope: !385, file: !385, line: 66, type: !825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!825 = !DISubroutineType(types: !826)
!826 = !{!83, !83, !827, !142, !829, !390}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!830 = !DISubprogram(name: "xnumtoumax", scope: !75, file: !75, line: 55, type: !831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!831 = !DISubroutineType(types: !832)
!832 = !{!833, !142, !83, !833, !833, !142, !142, !83, !83}
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !834, line: 102, baseType: !835)
!834 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !229, line: 73, baseType: !141)
!836 = !DISubprogram(name: "version_etc", scope: !837, file: !837, line: 70, type: !838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!837 = !DIFile(filename: "./lib/version-etc.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "7242964c9dbfa69ef19b57250c13e279")
!838 = !DISubroutineType(types: !839)
!839 = !{null, !202, !142, !142, !142, null}
!840 = !DISubprogram(name: "proper_name_lite", scope: !841, file: !841, line: 126, type: !842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!841 = !DIFile(filename: "./lib/propername.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "fdc444d0083bc592737160d9365ffa54")
!842 = !DISubroutineType(types: !843)
!843 = !{!142, !142, !142}
!844 = distinct !DIAssignID()
!845 = !DILocalVariable(name: "mbs", scope: !846, file: !126, line: 237, type: !855)
!846 = distinct !DISubprogram(name: "mcel_scan", scope: !126, file: !126, line: 223, type: !847, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !849, keyInstructions: true)
!847 = !DISubroutineType(types: !848)
!848 = !{!420, !142, !142}
!849 = !{!850, !851, !852, !845, !853, !854}
!850 = !DILocalVariable(name: "p", arg: 1, scope: !846, file: !126, line: 223, type: !142)
!851 = !DILocalVariable(name: "lim", arg: 2, scope: !846, file: !126, line: 223, type: !142)
!852 = !DILocalVariable(name: "c", scope: !846, file: !126, line: 228, type: !4)
!853 = !DILocalVariable(name: "ch", scope: !846, file: !126, line: 260, type: !424)
!854 = !DILocalVariable(name: "len", scope: !846, file: !126, line: 261, type: !139)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !856, line: 6, baseType: !857)
!856 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !858, line: 21, baseType: !859)
!858 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !858, line: 13, size: 64, elements: !860)
!860 = !{!861, !862}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !859, file: !858, line: 15, baseType: !83, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !859, file: !858, line: 20, baseType: !863, size: 32, offset: 32)
!863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !859, file: !858, line: 16, size: 32, elements: !864)
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !863, file: !858, line: 18, baseType: !69, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !863, file: !858, line: 19, baseType: !266, size: 32)
!867 = !DILocation(line: 0, scope: !846, inlinedAt: !868)
!868 = distinct !DILocation(line: 236, column: 28, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !2, line: 235, column: 21)
!870 = distinct !DILexicalBlock(scope: !447, file: !2, line: 233, column: 19)
!871 = distinct !DIAssignID()
!872 = distinct !DIAssignID()
!873 = !DILocation(line: 0, scope: !846, inlinedAt: !874)
!874 = distinct !DILocation(line: 212, column: 24, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !2, line: 211, column: 17)
!876 = distinct !DILexicalBlock(scope: !441, file: !2, line: 210, column: 15)
!877 = distinct !DIAssignID()
!878 = distinct !DIAssignID()
!879 = !DILocation(line: 0, scope: !846, inlinedAt: !880)
!880 = distinct !DILocation(line: 158, column: 14, scope: !881, inlinedAt: !889)
!881 = distinct !DISubprogram(name: "mbbuf_get_char", scope: !409, file: !409, line: 153, type: !882, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !885, keyInstructions: true)
!882 = !DISubroutineType(types: !883)
!883 = !{!420, !884}
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!885 = !{!886, !887, !888}
!886 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !881, file: !409, line: 153, type: !884)
!887 = !DILocalVariable(name: "available", scope: !881, file: !409, line: 155, type: !405)
!888 = !DILocalVariable(name: "g", scope: !881, file: !409, line: 158, type: !420)
!889 = distinct !DILocation(line: 187, column: 15, scope: !396)
!890 = distinct !DIAssignID()
!891 = distinct !DIAssignID()
!892 = !DILocation(line: 0, scope: !396)
!893 = !DILocation(line: 166, column: 3, scope: !396)
!894 = !DILocation(line: 0, scope: !592, inlinedAt: !895)
!895 = distinct !DILocation(line: 169, column: 7, scope: !896)
!896 = distinct !DILexicalBlock(scope: !396, file: !2, line: 169, column: 7)
!897 = !DILocation(line: 1370, column: 11, scope: !592, inlinedAt: !895)
!898 = !DILocation(line: 1370, column: 10, scope: !592, inlinedAt: !895)
!899 = !DILocation(line: 169, column: 7, scope: !896, atomGroup: 3, atomRank: 1)
!900 = !DILocation(line: 171, column: 17, scope: !901, atomGroup: 4, atomRank: 2)
!901 = distinct !DILexicalBlock(scope: !896, file: !2, line: 170, column: 5)
!902 = !DILocation(line: 172, column: 23, scope: !901, atomGroup: 5, atomRank: 1)
!903 = !DILocation(line: 173, column: 5, scope: !901)
!904 = !DILocation(line: 175, column: 15, scope: !896, atomGroup: 6, atomRank: 2)
!905 = !DILocation(line: 0, scope: !896)
!906 = !DILocation(line: 177, column: 15, scope: !907, atomGroup: 7, atomRank: 2)
!907 = distinct !DILexicalBlock(scope: !396, file: !2, line: 177, column: 7)
!908 = !DILocation(line: 177, column: 15, scope: !907, atomGroup: 7, atomRank: 1)
!909 = !DILocation(line: 179, column: 17, scope: !910)
!910 = distinct !DILexicalBlock(scope: !907, file: !2, line: 178, column: 5)
!911 = !DILocation(line: 179, column: 30, scope: !910)
!912 = !DILocation(line: 179, column: 7, scope: !910)
!913 = !DILocation(line: 180, column: 7, scope: !910, atomGroup: 8, atomRank: 1)
!914 = !DILocation(line: 183, column: 3, scope: !396)
!915 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !916, file: !409, line: 67, type: !884)
!916 = distinct !DISubprogram(name: "mbbuf_init", scope: !409, file: !409, line: 67, type: !917, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !919, keyInstructions: true)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !884, !136, !405, !202}
!919 = !{!915, !920, !921, !922}
!920 = !DILocalVariable(name: "buffer", arg: 2, scope: !916, file: !409, line: 67, type: !136)
!921 = !DILocalVariable(name: "size", arg: 3, scope: !916, file: !409, line: 67, type: !405)
!922 = !DILocalVariable(name: "fp", arg: 4, scope: !916, file: !409, line: 67, type: !202)
!923 = !DILocation(line: 0, scope: !916, inlinedAt: !924)
!924 = distinct !DILocation(line: 184, column: 3, scope: !396)
!925 = !DILocation(line: 71, column: 17, scope: !916, inlinedAt: !924, atomGroup: 2, atomRank: 1)
!926 = !{!927, !505, i64 0}
!927 = !{!"", !505, i64 0, !502, i64 8, !928, i64 16, !928, i64 24, !928, i64 32, !929, i64 40}
!928 = !{!"long", !488, i64 0}
!929 = !{!"_Bool", !488, i64 0}
!930 = distinct !DIAssignID()
!931 = !DILocation(line: 72, column: 10, scope: !916, inlinedAt: !924)
!932 = !DILocation(line: 72, column: 13, scope: !916, inlinedAt: !924, atomGroup: 3, atomRank: 1)
!933 = !{!927, !502, i64 8}
!934 = distinct !DIAssignID()
!935 = !DILocation(line: 73, column: 10, scope: !916, inlinedAt: !924)
!936 = !DILocation(line: 73, column: 15, scope: !916, inlinedAt: !924, atomGroup: 4, atomRank: 1)
!937 = !{!927, !928, i64 16}
!938 = distinct !DIAssignID()
!939 = !DILocation(line: 74, column: 10, scope: !916, inlinedAt: !924)
!940 = !DILocation(line: 75, column: 17, scope: !916, inlinedAt: !924, atomGroup: 6, atomRank: 1)
!941 = distinct !DIAssignID()
!942 = !DILocation(line: 0, scope: !881, inlinedAt: !889)
!943 = !DILocation(line: 155, column: 21, scope: !881, inlinedAt: !889, atomGroup: 129, atomRank: 2)
!944 = !DILocation(line: 156, column: 17, scope: !945, inlinedAt: !889, atomGroup: 130, atomRank: 2)
!945 = distinct !DILexicalBlock(scope: !881, file: !409, line: 156, column: 7)
!946 = !DILocation(line: 156, column: 17, scope: !945, inlinedAt: !889, atomGroup: 130, atomRank: 1)
!947 = !DILocation(line: 158, column: 32, scope: !881, inlinedAt: !889)
!948 = !DILocation(line: 158, column: 48, scope: !881, inlinedAt: !889)
!949 = !{!927, !928, i64 32}
!950 = !DILocation(line: 158, column: 39, scope: !881, inlinedAt: !889)
!951 = !DILocation(line: 228, column: 12, scope: !846, inlinedAt: !880, atomGroup: 1, atomRank: 2)
!952 = !DILocalVariable(name: "c", arg: 1, scope: !953, file: !126, line: 215, type: !4)
!953 = distinct !DISubprogram(name: "mcel_isbasic", scope: !126, file: !126, line: 215, type: !954, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !956, keyInstructions: true)
!954 = !DISubroutineType(types: !955)
!955 = !{!168, !4}
!956 = !{!952}
!957 = !DILocation(line: 0, scope: !953, inlinedAt: !958)
!958 = distinct !DILocation(line: 229, column: 7, scope: !959, inlinedAt: !880)
!959 = distinct !DILexicalBlock(scope: !846, file: !126, line: 229, column: 7)
!960 = !DILocation(line: 217, column: 24, scope: !953, inlinedAt: !958, atomGroup: 2, atomRank: 2)
!961 = !DILocation(line: 229, column: 7, scope: !959, inlinedAt: !880, atomGroup: 2, atomRank: 1)
!962 = !DILocalVariable(name: "len", arg: 2, scope: !963, file: !126, line: 167, type: !139)
!963 = distinct !DISubprogram(name: "mcel_ch", scope: !126, file: !126, line: 167, type: !964, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !966, keyInstructions: true)
!964 = !DISubroutineType(types: !965)
!965 = !{!420, !424, !139}
!966 = !{!967, !962}
!967 = !DILocalVariable(name: "ch", arg: 1, scope: !963, file: !126, line: 167, type: !424)
!968 = !DILocation(line: 0, scope: !963, inlinedAt: !969)
!969 = distinct !DILocation(line: 230, column: 12, scope: !959, inlinedAt: !880)
!970 = !DILocation(line: 172, column: 3, scope: !963, inlinedAt: !969, atomGroup: 4, atomRank: 1)
!971 = !DILocation(line: 230, column: 5, scope: !959, inlinedAt: !880, atomGroup: 3, atomRank: 1)
!972 = !DILocation(line: 159, column: 48, scope: !881, inlinedAt: !889)
!973 = !{!927, !928, i64 24}
!974 = !DILocation(line: 237, column: 3, scope: !846, inlinedAt: !880)
!975 = !DILocation(line: 237, column: 30, scope: !846, inlinedAt: !880, atomGroup: 4, atomRank: 1)
!976 = !{!977, !487, i64 0}
!977 = !{!"", !487, i64 0, !488, i64 4}
!978 = distinct !DIAssignID()
!979 = !DILocation(line: 260, column: 3, scope: !846, inlinedAt: !880)
!980 = !DILocation(line: 261, column: 38, scope: !846, inlinedAt: !880)
!981 = !DILocation(line: 261, column: 16, scope: !846, inlinedAt: !880, atomGroup: 5, atomRank: 2)
!982 = !DILocation(line: 267, column: 37, scope: !983, inlinedAt: !880)
!983 = distinct !DILexicalBlock(scope: !846, file: !126, line: 267, column: 7)
!984 = !DILocation(line: 267, column: 7, scope: !983, inlinedAt: !880, atomGroup: 6, atomRank: 1)
!985 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!986 = !DILocalVariable(name: "err", arg: 1, scope: !987, file: !126, line: 175, type: !144)
!987 = distinct !DISubprogram(name: "mcel_err", scope: !126, file: !126, line: 175, type: !988, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !990, keyInstructions: true)
!988 = !DISubroutineType(types: !989)
!989 = !{!420, !144}
!990 = !{!986}
!991 = !DILocation(line: 0, scope: !987, inlinedAt: !992)
!992 = distinct !DILocation(line: 268, column: 12, scope: !983, inlinedAt: !880)
!993 = !DILocation(line: 178, column: 3, scope: !987, inlinedAt: !992, atomGroup: 2, atomRank: 1)
!994 = !DILocation(line: 268, column: 5, scope: !983, inlinedAt: !880, atomGroup: 7, atomRank: 1)
!995 = !DILocation(line: 272, column: 19, scope: !846, inlinedAt: !880)
!996 = !DILocation(line: 0, scope: !963, inlinedAt: !997)
!997 = distinct !DILocation(line: 272, column: 10, scope: !846, inlinedAt: !880)
!998 = !DILocation(line: 169, column: 13, scope: !963, inlinedAt: !997, atomGroup: 1, atomRank: 2)
!999 = !DILocation(line: 169, column: 3, scope: !963, inlinedAt: !997, atomGroup: 1, atomRank: 1)
!1000 = !DILocation(line: 170, column: 15, scope: !963, inlinedAt: !997, atomGroup: 2, atomRank: 2)
!1001 = !DILocation(line: 170, column: 3, scope: !963, inlinedAt: !997, atomGroup: 2, atomRank: 1)
!1002 = !DILocation(line: 171, column: 14, scope: !963, inlinedAt: !997, atomGroup: 3, atomRank: 2)
!1003 = !DILocation(line: 171, column: 3, scope: !963, inlinedAt: !997, atomGroup: 3, atomRank: 1)
!1004 = !DILocation(line: 172, column: 3, scope: !963, inlinedAt: !997, atomGroup: 4, atomRank: 1)
!1005 = !DILocation(line: 272, column: 3, scope: !846, inlinedAt: !880, atomGroup: 8, atomRank: 1)
!1006 = !DILocation(line: 273, column: 1, scope: !846, inlinedAt: !880)
!1007 = !DILocation(line: 0, scope: !1008, inlinedAt: !889)
!1008 = distinct !DILexicalBlock(scope: !881, file: !409, line: 160, column: 7)
!1009 = !DILocation(line: 160, column: 9, scope: !1008, inlinedAt: !889, atomGroup: 5, atomRank: 2)
!1010 = !DILocation(line: 160, column: 7, scope: !1008, inlinedAt: !889, atomGroup: 5, atomRank: 1)
!1011 = !DILocation(line: 158, column: 14, scope: !881, inlinedAt: !889, atomGroup: 4, atomRank: 1)
!1012 = !DILocation(line: 161, column: 19, scope: !1008, inlinedAt: !889, atomGroup: 6, atomRank: 2)
!1013 = !DILocation(line: 161, column: 19, scope: !1008, inlinedAt: !889, atomGroup: 6, atomRank: 1)
!1014 = distinct !DIAssignID()
!1015 = !DILocation(line: 161, column: 5, scope: !1008, inlinedAt: !889)
!1016 = !DILocation(line: 165, column: 37, scope: !1017, inlinedAt: !889)
!1017 = distinct !DILexicalBlock(scope: !1008, file: !409, line: 163, column: 5)
!1018 = !DILocation(line: 165, column: 57, scope: !1017, inlinedAt: !889, atomGroup: 8, atomRank: 2)
!1019 = !DILocation(line: 165, column: 57, scope: !1017, inlinedAt: !889, atomGroup: 8, atomRank: 1)
!1020 = distinct !DIAssignID()
!1021 = !DILocation(line: 165, column: 30, scope: !1017, inlinedAt: !889)
!1022 = !DILocation(line: 165, column: 30, scope: !1017, inlinedAt: !889, atomGroup: 7, atomRank: 3)
!1023 = !DILocation(line: 165, column: 14, scope: !1017, inlinedAt: !889, atomGroup: 7, atomRank: 2)
!1024 = !DILocation(line: 187, column: 15, scope: !396, atomGroup: 9, atomRank: 1)
!1025 = !DILocation(line: 187, column: 3, scope: !396, atomGroup: 11, atomRank: 1)
!1026 = !DILocation(line: 191, column: 11, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !2, line: 190, column: 9)
!1028 = distinct !DILexicalBlock(scope: !431, file: !2, line: 189, column: 11)
!1029 = !DILocation(line: 193, column: 11, scope: !1027, atomGroup: 15, atomRank: 1)
!1030 = !DILocation(line: 155, column: 21, scope: !881, inlinedAt: !889, atomGroup: 1, atomRank: 2)
!1031 = !DILocation(line: 156, column: 17, scope: !945, inlinedAt: !889, atomGroup: 2, atomRank: 2)
!1032 = !DILocation(line: 156, column: 17, scope: !945, inlinedAt: !889, atomGroup: 2, atomRank: 1)
!1033 = distinct !{!1033, !1034, !1035, !632}
!1034 = !DILocation(line: 187, column: 3, scope: !396)
!1035 = !DILocation(line: 265, column: 5, scope: !396)
!1036 = !DILocation(line: 195, column: 5, scope: !431)
!1037 = !DILocalVariable(name: "g", arg: 2, scope: !1038, file: !2, line: 115, type: !420)
!1038 = distinct !DISubprogram(name: "adjust_column", scope: !2, file: !2, line: 115, type: !1039, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1041, keyInstructions: true)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!139, !139, !420}
!1041 = !{!1042, !1037, !1043}
!1042 = !DILocalVariable(name: "column", arg: 1, scope: !1038, file: !2, line: 115, type: !139)
!1043 = !DILocalVariable(name: "width", scope: !1044, file: !2, line: 134, type: !83)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 133, column: 13)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !2, line: 130, column: 15)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !2, line: 129, column: 9)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 126, column: 16)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 124, column: 16)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 119, column: 11)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 118, column: 5)
!1051 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 117, column: 7)
!1052 = !DILocation(line: 0, scope: !1038, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 196, column: 16, scope: !431)
!1054 = !DILocation(line: 117, column: 7, scope: !1051, inlinedAt: !1053)
!1055 = !DILocation(line: 117, column: 21, scope: !1051, inlinedAt: !1053, atomGroup: 1, atomRank: 2)
!1056 = !DILocation(line: 117, column: 21, scope: !1051, inlinedAt: !1053, atomGroup: 1, atomRank: 1)
!1057 = !DILocation(line: 119, column: 16, scope: !1049, inlinedAt: !1053, atomGroup: 2, atomRank: 1)
!1058 = !DILocation(line: 121, column: 22, scope: !1059, inlinedAt: !1053, atomGroup: 3, atomRank: 2)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 121, column: 15)
!1060 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 120, column: 9)
!1061 = !DILocation(line: 121, column: 22, scope: !1059, inlinedAt: !1053, atomGroup: 3, atomRank: 1)
!1062 = !DILocation(line: 122, column: 23, scope: !1059, inlinedAt: !1053)
!1063 = !DILocation(line: 122, column: 20, scope: !1059, inlinedAt: !1053, atomGroup: 4, atomRank: 2)
!1064 = !DILocation(line: 122, column: 13, scope: !1059, inlinedAt: !1053)
!1065 = !DILocation(line: 127, column: 16, scope: !1047, inlinedAt: !1053, atomGroup: 8, atomRank: 2)
!1066 = !DILocation(line: 127, column: 9, scope: !1047, inlinedAt: !1053)
!1067 = !DILocation(line: 130, column: 29, scope: !1045, inlinedAt: !1053, atomGroup: 9, atomRank: 2)
!1068 = !DILocation(line: 130, column: 29, scope: !1045, inlinedAt: !1053, atomGroup: 9, atomRank: 1)
!1069 = !DILocalVariable(name: "wc", arg: 1, scope: !1070, file: !1071, line: 1083, type: !424)
!1070 = distinct !DISubprogram(name: "c32width", scope: !1071, file: !1071, line: 1083, type: !1072, scopeLine: 1084, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1074, keyInstructions: true)
!1071 = !DIFile(filename: "./lib/uchar.h", directory: "/workspaces/Thesis/.build/coreutils")
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!83, !424}
!1074 = !{!1069}
!1075 = !DILocation(line: 0, scope: !1070, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 134, column: 27, scope: !1044, inlinedAt: !1053)
!1077 = !DILocation(line: 1089, column: 10, scope: !1070, inlinedAt: !1076, atomGroup: 1, atomRank: 2)
!1078 = !DILocation(line: 0, scope: !1044, inlinedAt: !1053)
!1079 = !DILocation(line: 136, column: 44, scope: !1044, inlinedAt: !1053, atomGroup: 13, atomRank: 2)
!1080 = !DILocation(line: 136, column: 38, scope: !1044, inlinedAt: !1053, atomGroup: 13, atomRank: 1)
!1081 = !DILocation(line: 0, scope: !1045, inlinedAt: !1053)
!1082 = !DILocation(line: 138, column: 21, scope: !1046, inlinedAt: !1053)
!1083 = !DILocation(line: 138, column: 18, scope: !1046, inlinedAt: !1053, atomGroup: 14, atomRank: 2)
!1084 = !DILocation(line: 142, column: 12, scope: !1051, inlinedAt: !1053, atomGroup: 15, atomRank: 2)
!1085 = !DILocation(line: 198, column: 18, scope: !436, atomGroup: 17, atomRank: 2)
!1086 = !DILocation(line: 198, column: 18, scope: !436, atomGroup: 17, atomRank: 1)
!1087 = !DILocation(line: 203, column: 15, scope: !434, atomGroup: 18, atomRank: 3)
!1088 = !DILocation(line: 203, column: 15, scope: !434, atomGroup: 18, atomRank: 1)
!1089 = !DILocation(line: 0, scope: !433)
!1090 = !DILocation(line: 208, column: 45, scope: !433, atomGroup: 22, atomRank: 2)
!1091 = !DILocation(line: 210, column: 41, scope: !876, atomGroup: 125, atomRank: 1)
!1092 = !DILocation(line: 210, column: 15, scope: !441, atomGroup: 126, atomRank: 1)
!1093 = !DILocation(line: 220, column: 19, scope: !444, atomGroup: 31, atomRank: 2)
!1094 = !DILocation(line: 220, column: 19, scope: !444, atomGroup: 31, atomRank: 1)
!1095 = !DILocation(line: 228, column: 12, scope: !846, inlinedAt: !874, atomGroup: 1, atomRank: 2)
!1096 = !DILocation(line: 0, scope: !953, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 229, column: 7, scope: !959, inlinedAt: !874)
!1098 = !DILocation(line: 217, column: 24, scope: !953, inlinedAt: !1097, atomGroup: 2, atomRank: 2)
!1099 = !DILocation(line: 229, column: 7, scope: !959, inlinedAt: !874, atomGroup: 2, atomRank: 1)
!1100 = !DILocation(line: 0, scope: !963, inlinedAt: !1101)
!1101 = distinct !DILocation(line: 230, column: 12, scope: !959, inlinedAt: !874)
!1102 = !DILocation(line: 172, column: 3, scope: !963, inlinedAt: !1101, atomGroup: 4, atomRank: 1)
!1103 = !DILocation(line: 213, column: 23, scope: !1104, atomGroup: 26, atomRank: 1)
!1104 = distinct !DILexicalBlock(scope: !875, file: !2, line: 213, column: 23)
!1105 = !DILocation(line: 230, column: 5, scope: !959, inlinedAt: !874, atomGroup: 3, atomRank: 1)
!1106 = !DILocation(line: 237, column: 3, scope: !846, inlinedAt: !874)
!1107 = !DILocation(line: 237, column: 30, scope: !846, inlinedAt: !874, atomGroup: 4, atomRank: 1)
!1108 = distinct !DIAssignID()
!1109 = !DILocation(line: 260, column: 3, scope: !846, inlinedAt: !874)
!1110 = !DILocation(line: 261, column: 38, scope: !846, inlinedAt: !874)
!1111 = !DILocation(line: 261, column: 16, scope: !846, inlinedAt: !874, atomGroup: 5, atomRank: 2)
!1112 = !DILocation(line: 267, column: 37, scope: !983, inlinedAt: !874)
!1113 = !DILocation(line: 267, column: 7, scope: !983, inlinedAt: !874, atomGroup: 6, atomRank: 1)
!1114 = !DILocation(line: 272, column: 19, scope: !846, inlinedAt: !874)
!1115 = !DILocation(line: 0, scope: !963, inlinedAt: !1116)
!1116 = distinct !DILocation(line: 272, column: 10, scope: !846, inlinedAt: !874)
!1117 = !DILocation(line: 169, column: 13, scope: !963, inlinedAt: !1116, atomGroup: 1, atomRank: 2)
!1118 = !DILocation(line: 169, column: 3, scope: !963, inlinedAt: !1116, atomGroup: 1, atomRank: 1)
!1119 = !DILocation(line: 170, column: 15, scope: !963, inlinedAt: !1116, atomGroup: 2, atomRank: 2)
!1120 = !DILocation(line: 170, column: 3, scope: !963, inlinedAt: !1116, atomGroup: 2, atomRank: 1)
!1121 = !DILocation(line: 171, column: 14, scope: !963, inlinedAt: !1116, atomGroup: 3, atomRank: 2)
!1122 = !DILocation(line: 171, column: 3, scope: !963, inlinedAt: !1116, atomGroup: 3, atomRank: 1)
!1123 = !DILocation(line: 172, column: 3, scope: !963, inlinedAt: !1116, atomGroup: 4, atomRank: 1)
!1124 = !DILocation(line: 272, column: 3, scope: !846, inlinedAt: !874, atomGroup: 8, atomRank: 1)
!1125 = !DILocation(line: 273, column: 1, scope: !846, inlinedAt: !874)
!1126 = !DILocation(line: 212, column: 24, scope: !875, atomGroup: 25, atomRank: 1)
!1127 = !DILocation(line: 0, scope: !441)
!1128 = !DILocalVariable(name: "wc", arg: 1, scope: !1129, file: !82, line: 183, type: !424)
!1129 = distinct !DISubprogram(name: "c32issep", scope: !82, file: !82, line: 183, type: !1130, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1132, keyInstructions: true)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!168, !424}
!1132 = !{!1128}
!1133 = !DILocation(line: 0, scope: !1129, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 213, column: 23, scope: !1104)
!1135 = !DILocalVariable(name: "wc", arg: 1, scope: !1136, file: !1071, line: 813, type: !1139)
!1136 = distinct !DISubprogram(name: "c32isblank", scope: !1071, file: !1071, line: 813, type: !1137, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1141, keyInstructions: true)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!83, !1139}
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1140, line: 20, baseType: !69)
!1140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1141 = !{!1135}
!1142 = !DILocation(line: 0, scope: !1136, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 186, column: 13, scope: !1129, inlinedAt: !1134)
!1144 = !DILocation(line: 819, column: 10, scope: !1136, inlinedAt: !1143, atomGroup: 1, atomRank: 2)
!1145 = !DILocation(line: 186, column: 11, scope: !1129, inlinedAt: !1134)
!1146 = !DILocation(line: 210, column: 66, scope: !876, atomGroup: 29, atomRank: 2)
!1147 = !DILocation(line: 210, column: 41, scope: !876, atomGroup: 23, atomRank: 1)
!1148 = !DILocation(line: 210, column: 15, scope: !441, atomGroup: 24, atomRank: 1)
!1149 = distinct !{!1149, !1150, !1151, !632}
!1150 = !DILocation(line: 210, column: 15, scope: !441)
!1151 = !DILocation(line: 218, column: 17, scope: !441)
!1152 = !DILocation(line: 222, column: 34, scope: !443)
!1153 = !DILocation(line: 222, column: 31, scope: !443, atomGroup: 32, atomRank: 2)
!1154 = !DILocation(line: 224, column: 19, scope: !443)
!1155 = !DILocation(line: 227, column: 47, scope: !443)
!1156 = !DILocation(line: 228, column: 39, scope: !443)
!1157 = !DILocalVariable(name: "__dest", arg: 1, scope: !1158, file: !1159, line: 34, type: !137)
!1158 = distinct !DISubprogram(name: "memmove", scope: !1159, file: !1159, line: 34, type: !1160, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1164, keyInstructions: true)
!1159 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!137, !137, !1162, !139}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1164 = !{!1157, !1165, !1166}
!1165 = !DILocalVariable(name: "__src", arg: 2, scope: !1158, file: !1159, line: 34, type: !1162)
!1166 = !DILocalVariable(name: "__len", arg: 3, scope: !1158, file: !1159, line: 34, type: !139)
!1167 = !DILocation(line: 0, scope: !1158, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 227, column: 19, scope: !443)
!1169 = !DILocation(line: 36, column: 10, scope: !1158, inlinedAt: !1168, atomGroup: 1, atomRank: 2)
!1170 = !DILocation(line: 0, scope: !443)
!1171 = !DILocation(line: 232, column: 49, scope: !443, atomGroup: 36, atomRank: 2)
!1172 = !DILocation(line: 233, column: 45, scope: !870, atomGroup: 127, atomRank: 1)
!1173 = !DILocation(line: 233, column: 19, scope: !447, atomGroup: 128, atomRank: 1)
!1174 = !DILocation(line: 228, column: 12, scope: !846, inlinedAt: !868, atomGroup: 1, atomRank: 2)
!1175 = !DILocation(line: 0, scope: !953, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 229, column: 7, scope: !959, inlinedAt: !868)
!1177 = !DILocation(line: 217, column: 24, scope: !953, inlinedAt: !1176, atomGroup: 2, atomRank: 2)
!1178 = !DILocation(line: 229, column: 7, scope: !959, inlinedAt: !868, atomGroup: 2, atomRank: 1)
!1179 = !DILocation(line: 0, scope: !963, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 230, column: 12, scope: !959, inlinedAt: !868)
!1181 = !DILocation(line: 172, column: 3, scope: !963, inlinedAt: !1180, atomGroup: 4, atomRank: 1)
!1182 = !DILocation(line: 230, column: 5, scope: !959, inlinedAt: !868, atomGroup: 3, atomRank: 1)
!1183 = !DILocation(line: 237, column: 3, scope: !846, inlinedAt: !868)
!1184 = !DILocation(line: 237, column: 30, scope: !846, inlinedAt: !868, atomGroup: 4, atomRank: 1)
!1185 = distinct !DIAssignID()
!1186 = !DILocation(line: 260, column: 3, scope: !846, inlinedAt: !868)
!1187 = !DILocation(line: 261, column: 38, scope: !846, inlinedAt: !868)
!1188 = !DILocation(line: 261, column: 16, scope: !846, inlinedAt: !868, atomGroup: 5, atomRank: 2)
!1189 = !DILocation(line: 267, column: 37, scope: !983, inlinedAt: !868)
!1190 = !DILocation(line: 267, column: 7, scope: !983, inlinedAt: !868, atomGroup: 6, atomRank: 1)
!1191 = !DILocation(line: 272, column: 19, scope: !846, inlinedAt: !868)
!1192 = !DILocation(line: 0, scope: !963, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 272, column: 10, scope: !846, inlinedAt: !868)
!1194 = !DILocation(line: 169, column: 13, scope: !963, inlinedAt: !1193, atomGroup: 1, atomRank: 2)
!1195 = !DILocation(line: 169, column: 3, scope: !963, inlinedAt: !1193, atomGroup: 1, atomRank: 1)
!1196 = !DILocation(line: 170, column: 15, scope: !963, inlinedAt: !1193, atomGroup: 2, atomRank: 2)
!1197 = !DILocation(line: 170, column: 3, scope: !963, inlinedAt: !1193, atomGroup: 2, atomRank: 1)
!1198 = !DILocation(line: 171, column: 14, scope: !963, inlinedAt: !1193, atomGroup: 3, atomRank: 2)
!1199 = !DILocation(line: 171, column: 3, scope: !963, inlinedAt: !1193, atomGroup: 3, atomRank: 1)
!1200 = !DILocation(line: 172, column: 3, scope: !963, inlinedAt: !1193, atomGroup: 4, atomRank: 1)
!1201 = !DILocation(line: 272, column: 3, scope: !846, inlinedAt: !868, atomGroup: 8, atomRank: 1)
!1202 = !DILocation(line: 273, column: 1, scope: !846, inlinedAt: !868)
!1203 = !DILocation(line: 236, column: 28, scope: !869, atomGroup: 39, atomRank: 1)
!1204 = !DILocation(line: 0, scope: !447)
!1205 = !DILocation(line: 0, scope: !1038, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 237, column: 32, scope: !869)
!1207 = !DILocation(line: 117, column: 7, scope: !1051, inlinedAt: !1206)
!1208 = !DILocation(line: 117, column: 21, scope: !1051, inlinedAt: !1206, atomGroup: 1, atomRank: 2)
!1209 = !DILocation(line: 117, column: 21, scope: !1051, inlinedAt: !1206, atomGroup: 1, atomRank: 1)
!1210 = !DILocation(line: 119, column: 16, scope: !1049, inlinedAt: !1206, atomGroup: 2, atomRank: 1)
!1211 = !DILocation(line: 121, column: 22, scope: !1059, inlinedAt: !1206, atomGroup: 3, atomRank: 2)
!1212 = !DILocation(line: 121, column: 22, scope: !1059, inlinedAt: !1206, atomGroup: 3, atomRank: 1)
!1213 = !DILocation(line: 122, column: 23, scope: !1059, inlinedAt: !1206)
!1214 = !DILocation(line: 122, column: 20, scope: !1059, inlinedAt: !1206, atomGroup: 4, atomRank: 2)
!1215 = !DILocation(line: 122, column: 13, scope: !1059, inlinedAt: !1206)
!1216 = !DILocation(line: 127, column: 16, scope: !1047, inlinedAt: !1206, atomGroup: 8, atomRank: 2)
!1217 = !DILocation(line: 127, column: 9, scope: !1047, inlinedAt: !1206)
!1218 = !DILocation(line: 130, column: 29, scope: !1045, inlinedAt: !1206, atomGroup: 9, atomRank: 2)
!1219 = !DILocation(line: 130, column: 29, scope: !1045, inlinedAt: !1206, atomGroup: 9, atomRank: 1)
!1220 = !DILocation(line: 0, scope: !1070, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 134, column: 27, scope: !1044, inlinedAt: !1206)
!1222 = !DILocation(line: 1089, column: 10, scope: !1070, inlinedAt: !1221, atomGroup: 1, atomRank: 2)
!1223 = !DILocation(line: 0, scope: !1044, inlinedAt: !1206)
!1224 = !DILocation(line: 136, column: 44, scope: !1044, inlinedAt: !1206, atomGroup: 13, atomRank: 2)
!1225 = !DILocation(line: 136, column: 38, scope: !1044, inlinedAt: !1206, atomGroup: 13, atomRank: 1)
!1226 = !DILocation(line: 0, scope: !1045, inlinedAt: !1206)
!1227 = !DILocation(line: 138, column: 21, scope: !1046, inlinedAt: !1206)
!1228 = !DILocation(line: 138, column: 18, scope: !1046, inlinedAt: !1206, atomGroup: 14, atomRank: 2)
!1229 = !DILocation(line: 142, column: 12, scope: !1051, inlinedAt: !1206, atomGroup: 15, atomRank: 2)
!1230 = !DILocation(line: 234, column: 34, scope: !870, atomGroup: 41, atomRank: 2)
!1231 = !DILocation(line: 233, column: 45, scope: !870, atomGroup: 37, atomRank: 1)
!1232 = !DILocation(line: 233, column: 19, scope: !447, atomGroup: 38, atomRank: 1)
!1233 = distinct !{!1233, !1234, !1235, !632}
!1234 = !DILocation(line: 233, column: 19, scope: !447)
!1235 = !DILocation(line: 238, column: 21, scope: !447)
!1236 = !DILocation(line: 243, column: 26, scope: !1237, atomGroup: 44, atomRank: 2)
!1237 = distinct !DILexicalBlock(scope: !435, file: !2, line: 243, column: 15)
!1238 = !DILocation(line: 243, column: 26, scope: !1237, atomGroup: 44, atomRank: 1)
!1239 = !DILocalVariable(name: "g", arg: 2, scope: !1240, file: !409, line: 173, type: !420)
!1240 = distinct !DISubprogram(name: "mbbuf_char_offset", scope: !409, file: !409, line: 173, type: !1241, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1243, keyInstructions: true)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!136, !884, !420}
!1243 = !{!1244, !1239}
!1244 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1240, file: !409, line: 173, type: !884)
!1245 = !DILocation(line: 0, scope: !1240, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 245, column: 33, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 244, column: 13)
!1248 = !DILocation(line: 175, column: 14, scope: !1249, inlinedAt: !1246)
!1249 = distinct !DILexicalBlock(scope: !1240, file: !409, line: 175, column: 7)
!1250 = !DILocation(line: 175, column: 21, scope: !1249, inlinedAt: !1246, atomGroup: 1, atomRank: 2)
!1251 = !DILocation(line: 175, column: 21, scope: !1249, inlinedAt: !1246, atomGroup: 1, atomRank: 1)
!1252 = !DILocation(line: 176, column: 5, scope: !1253, inlinedAt: !1246)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !409, line: 176, column: 13)
!1254 = distinct !DILexicalBlock(scope: !1249, file: !409, line: 176, column: 5)
!1255 = !DILocation(line: 177, column: 17, scope: !1240, inlinedAt: !1246)
!1256 = !DILocation(line: 177, column: 41, scope: !1240, inlinedAt: !1246)
!1257 = !DILocation(line: 177, column: 24, scope: !1240, inlinedAt: !1246, atomGroup: 2, atomRank: 2)
!1258 = !DILocalVariable(name: "__dest", arg: 1, scope: !1259, file: !1159, line: 26, type: !1262)
!1259 = distinct !DISubprogram(name: "memcpy", scope: !1159, file: !1159, line: 26, type: !1260, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1264, keyInstructions: true)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!137, !1262, !1263, !139}
!1262 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !137)
!1263 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1162)
!1264 = !{!1258, !1265, !1266}
!1265 = !DILocalVariable(name: "__src", arg: 2, scope: !1259, file: !1159, line: 26, type: !1263)
!1266 = !DILocalVariable(name: "__len", arg: 3, scope: !1259, file: !1159, line: 27, type: !139)
!1267 = !DILocation(line: 0, scope: !1259, inlinedAt: !1268)
!1268 = distinct !DILocation(line: 245, column: 15, scope: !1247)
!1269 = !DILocation(line: 29, column: 10, scope: !1259, inlinedAt: !1268, atomGroup: 1, atomRank: 2)
!1270 = !{!1271, !1273}
!1271 = distinct !{!1271, !1272, !"memcpy.inline: argument 0"}
!1272 = distinct !{!1272, !"memcpy.inline"}
!1273 = distinct !{!1273, !1272, !"memcpy.inline: argument 1"}
!1274 = !DILocation(line: 247, column: 15, scope: !1247, atomGroup: 46, atomRank: 1)
!1275 = !DILocation(line: 250, column: 11, scope: !435)
!1276 = !DILocation(line: 252, column: 11, scope: !435, atomGroup: 49, atomRank: 1)
!1277 = !DILocation(line: 257, column: 41, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !431, file: !2, line: 257, column: 11)
!1279 = !DILocation(line: 257, column: 27, scope: !1278, atomGroup: 50, atomRank: 2)
!1280 = !DILocation(line: 257, column: 27, scope: !1278, atomGroup: 50, atomRank: 1)
!1281 = !DILocation(line: 259, column: 11, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 258, column: 9)
!1283 = !DILocation(line: 261, column: 9, scope: !1282)
!1284 = !DILocation(line: 0, scope: !1240, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 263, column: 38, scope: !431)
!1286 = !DILocation(line: 175, column: 14, scope: !1249, inlinedAt: !1285)
!1287 = !DILocation(line: 175, column: 21, scope: !1249, inlinedAt: !1285, atomGroup: 1, atomRank: 2)
!1288 = !DILocation(line: 175, column: 21, scope: !1249, inlinedAt: !1285, atomGroup: 1, atomRank: 1)
!1289 = !DILocation(line: 176, column: 5, scope: !1253, inlinedAt: !1285)
!1290 = !DILocation(line: 263, column: 24, scope: !431)
!1291 = !DILocation(line: 177, column: 17, scope: !1240, inlinedAt: !1285)
!1292 = !DILocation(line: 177, column: 41, scope: !1240, inlinedAt: !1285)
!1293 = !DILocation(line: 177, column: 24, scope: !1240, inlinedAt: !1285, atomGroup: 2, atomRank: 2)
!1294 = !DILocation(line: 0, scope: !1259, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 263, column: 7, scope: !431)
!1296 = !DILocation(line: 29, column: 10, scope: !1259, inlinedAt: !1295, atomGroup: 1, atomRank: 2)
!1297 = !DILocation(line: 264, column: 18, scope: !431, atomGroup: 52, atomRank: 2)
!1298 = !DILocation(line: 267, column: 17, scope: !396)
!1299 = !DILocation(line: 267, column: 17, scope: !396, atomGroup: 53, atomRank: 2)
!1300 = !DILocalVariable(name: "__stream", arg: 1, scope: !1301, file: !1302, line: 135, type: !202)
!1301 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1302, file: !1302, line: 135, type: !1303, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1305, keyInstructions: true)
!1302 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!83, !202}
!1305 = !{!1300}
!1306 = !DILocation(line: 0, scope: !1301, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 268, column: 8, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !396, file: !2, line: 268, column: 7)
!1309 = !DILocation(line: 137, column: 10, scope: !1301, inlinedAt: !1307)
!1310 = !{!1311, !487, i64 0}
!1311 = !{!"_IO_FILE", !487, i64 0, !505, i64 8, !505, i64 16, !505, i64 24, !505, i64 32, !505, i64 40, !505, i64 48, !505, i64 56, !505, i64 64, !505, i64 72, !505, i64 80, !505, i64 88, !1312, i64 96, !502, i64 104, !487, i64 112, !487, i64 116, !928, i64 120, !624, i64 128, !488, i64 130, !488, i64 131, !503, i64 136, !928, i64 144, !1313, i64 152, !1314, i64 160, !502, i64 168, !503, i64 176, !928, i64 184, !487, i64 192, !488, i64 196}
!1312 = !{!"p1 _ZTS10_IO_marker", !503, i64 0}
!1313 = !{!"p1 _ZTS11_IO_codecvt", !503, i64 0}
!1314 = !{!"p1 _ZTS13_IO_wide_data", !503, i64 0}
!1315 = !DILocation(line: 268, column: 8, scope: !1308, atomGroup: 54, atomRank: 2)
!1316 = !DILocation(line: 268, column: 7, scope: !1308, atomGroup: 54, atomRank: 1)
!1317 = !DILocation(line: 271, column: 7, scope: !1318, atomGroup: 56, atomRank: 2)
!1318 = distinct !DILexicalBlock(scope: !396, file: !2, line: 271, column: 7)
!1319 = !DILocation(line: 271, column: 7, scope: !1318, atomGroup: 56, atomRank: 1)
!1320 = !DILocation(line: 272, column: 5, scope: !1318)
!1321 = !DILocation(line: 0, scope: !592, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 274, column: 7, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !396, file: !2, line: 274, column: 7)
!1324 = !DILocation(line: 1370, column: 11, scope: !592, inlinedAt: !1322)
!1325 = !DILocation(line: 1370, column: 10, scope: !592, inlinedAt: !1322)
!1326 = !DILocation(line: 274, column: 7, scope: !1323, atomGroup: 57, atomRank: 1)
!1327 = !DILocation(line: 275, column: 5, scope: !1323)
!1328 = !DILocation(line: 276, column: 12, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 276, column: 12)
!1330 = !DILocation(line: 276, column: 29, scope: !1329, atomGroup: 58, atomRank: 2)
!1331 = !DILocation(line: 276, column: 34, scope: !1329, atomGroup: 58, atomRank: 1)
!1332 = !DILocation(line: 277, column: 19, scope: !1329, atomGroup: 60, atomRank: 2)
!1333 = !DILocation(line: 277, column: 5, scope: !1329)
!1334 = !DILocation(line: 279, column: 7, scope: !1335, atomGroup: 61, atomRank: 2)
!1335 = distinct !DILexicalBlock(scope: !396, file: !2, line: 279, column: 7)
!1336 = !DILocation(line: 279, column: 7, scope: !1335, atomGroup: 61, atomRank: 1)
!1337 = !DILocation(line: 281, column: 36, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 280, column: 5)
!1339 = !DILocation(line: 281, column: 7, scope: !1338)
!1340 = !DILocation(line: 282, column: 7, scope: !1338, atomGroup: 62, atomRank: 1)
!1341 = !DILocation(line: 286, column: 1, scope: !396)
!1342 = !DILocation(line: 286, column: 1, scope: !396, atomGroup: 64, atomRank: 1)
!1343 = !DISubprogram(name: "rpl_fclose", scope: !572, file: !572, line: 959, type: !1303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1344 = !DISubprogram(name: "error", scope: !1345, file: !1345, line: 31, type: !1346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1345 = !DIFile(filename: "/usr/include/error.h", directory: "", checksumkind: CSK_MD5, checksum: "0bac552e7426506dc6623c11568834e0")
!1346 = !DISubroutineType(types: !1347)
!1347 = !{null, !83, !83, !142, null}
!1348 = !DISubprogram(name: "__errno_location", scope: !1349, file: !1349, line: 37, type: !1350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1349 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!390}
!1352 = !DISubprogram(name: "getenv", scope: !820, file: !820, line: 641, type: !817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1353 = !DISubprogram(name: "strspn", scope: !1354, file: !1354, line: 297, type: !1355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1354 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!141, !142, !142}
!1357 = !DISubprogram(name: "strchr", scope: !1354, file: !1354, line: 246, type: !1358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!136, !142, !83}
!1360 = !DISubprogram(name: "__ctype_b_loc", scope: !88, file: !88, line: 79, type: !1361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!1363}
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!1366 = !DISubprogram(name: "strcspn", scope: !1354, file: !1354, line: 293, type: !1355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1367 = !DISubprogram(name: "fwrite_unlocked", scope: !576, file: !576, line: 704, type: !1368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!139, !1263, !139, !139, !565}
!1370 = !DISubprogram(name: "strncmp", scope: !1354, file: !1354, line: 159, type: !1371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!83, !142, !142, !139}
!1373 = !DISubprogram(name: "strcmp", scope: !1354, file: !1354, line: 156, type: !1374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!83, !142, !142}
!1376 = !DISubprogram(name: "__overflow", scope: !576, file: !576, line: 886, type: !1377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!83, !202, !83}
!1379 = !DISubprogram(name: "emit_bug_reporting_address", scope: !837, file: !837, line: 77, type: !515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1380 = !DISubprogram(name: "rpl_fopen", scope: !572, file: !572, line: 1158, type: !1381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!202, !566, !566}
!1383 = !DISubprogram(name: "quotearg_n_style_colon", scope: !103, file: !103, line: 419, type: !1384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!136, !83, !102, !142}
!1386 = !DISubprogram(name: "fadvise", scope: !117, file: !117, line: 71, type: !1387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{null, !202, !1389}
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !117, line: 51, baseType: !116)
!1390 = distinct !DISubprogram(name: "write_out", scope: !2, file: !2, line: 147, type: !1391, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1393, keyInstructions: true)
!1391 = !DISubroutineType(cc: DW_CC_nocall, types: !1392)
!1392 = !{null, !142, !139, !168}
!1393 = !{!1394, !1395, !1396, !1397, !1400, !1401}
!1394 = !DILocalVariable(name: "line", arg: 1, scope: !1390, file: !2, line: 147, type: !142)
!1395 = !DILocalVariable(name: "line_len", arg: 2, scope: !1390, file: !2, line: 147, type: !139)
!1396 = !DILocalVariable(name: "newline", arg: 3, scope: !1390, file: !2, line: 147, type: !168)
!1397 = !DILocalVariable(name: "__ptr", scope: !1398, file: !2, line: 149, type: !142)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 149, column: 7)
!1399 = distinct !DILexicalBlock(scope: !1390, file: !2, line: 149, column: 7)
!1400 = !DILocalVariable(name: "__stream", scope: !1398, file: !2, line: 149, type: !202)
!1401 = !DILocalVariable(name: "__cnt", scope: !1398, file: !2, line: 149, type: !139)
!1402 = !DILocation(line: 0, scope: !1390)
!1403 = !DILocation(line: 149, column: 46, scope: !1399)
!1404 = !DILocation(line: 149, column: 7, scope: !1399)
!1405 = !DILocation(line: 149, column: 54, scope: !1399, atomGroup: 15, atomRank: 2)
!1406 = !DILocation(line: 150, column: 7, scope: !1399, atomGroup: 15, atomRank: 1)
!1407 = !DILocation(line: 150, column: 19, scope: !1399, atomGroup: 16, atomRank: 1)
!1408 = !DILocalVariable(name: "__c", arg: 1, scope: !1409, file: !1302, line: 108, type: !83)
!1409 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1302, file: !1302, line: 108, type: !1410, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1412, keyInstructions: true)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!83, !83}
!1412 = !{!1408}
!1413 = !DILocation(line: 0, scope: !1409, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 150, column: 22, scope: !1399)
!1415 = !DILocation(line: 110, column: 37, scope: !1409, inlinedAt: !1414)
!1416 = !DILocation(line: 110, column: 10, scope: !1409, inlinedAt: !1414)
!1417 = !{!1311, !505, i64 40}
!1418 = !{!1311, !505, i64 48}
!1419 = !DILocation(line: 110, column: 10, scope: !1409, inlinedAt: !1414, atomGroup: 2, atomRank: 1)
!1420 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1421 = !DILocation(line: 110, column: 10, scope: !1409, inlinedAt: !1414, atomGroup: 4, atomRank: 2)
!1422 = !DILocation(line: 110, column: 10, scope: !1409, inlinedAt: !1414, atomGroup: 4, atomRank: 1)
!1423 = !DILocation(line: 110, column: 10, scope: !1409, inlinedAt: !1414, atomGroup: 3, atomRank: 1)
!1424 = !DILocation(line: 150, column: 7, scope: !1399, atomGroup: 119, atomRank: 1)
!1425 = !DILocation(line: 150, column: 37, scope: !1399, atomGroup: 17, atomRank: 2)
!1426 = !DILocation(line: 150, column: 7, scope: !1399, atomGroup: 17, atomRank: 1)
!1427 = !DILocation(line: 955, column: 21, scope: !1428, inlinedAt: !1431)
!1428 = distinct !DISubprogram(name: "write_error", scope: !82, file: !82, line: 953, type: !515, scopeLine: 954, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1429, keyInstructions: true)
!1429 = !{!1430}
!1430 = !DILocalVariable(name: "saved_errno", scope: !1428, file: !82, line: 955, type: !83)
!1431 = distinct !DILocation(line: 151, column: 5, scope: !1399)
!1432 = !DILocation(line: 955, column: 21, scope: !1428, inlinedAt: !1431, atomGroup: 1, atomRank: 2)
!1433 = !DILocation(line: 0, scope: !1428, inlinedAt: !1431)
!1434 = !DILocation(line: 956, column: 11, scope: !1428, inlinedAt: !1431)
!1435 = !DILocation(line: 956, column: 3, scope: !1428, inlinedAt: !1431)
!1436 = !DILocation(line: 957, column: 11, scope: !1428, inlinedAt: !1431)
!1437 = !DILocation(line: 957, column: 3, scope: !1428, inlinedAt: !1431)
!1438 = !DILocation(line: 958, column: 13, scope: !1428, inlinedAt: !1431)
!1439 = !DILocation(line: 958, column: 3, scope: !1428, inlinedAt: !1431)
!1440 = !DILocation(line: 959, column: 37, scope: !1428, inlinedAt: !1431)
!1441 = !DILocation(line: 959, column: 3, scope: !1428, inlinedAt: !1431)
!1442 = !DILocation(line: 152, column: 1, scope: !1390, atomGroup: 18, atomRank: 1)
!1443 = !DISubprogram(name: "clearerr_unlocked", scope: !576, file: !576, line: 794, type: !1444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{null, !202}
!1446 = !DISubprogram(name: "fflush_unlocked", scope: !576, file: !576, line: 239, type: !1303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1447 = !DISubprogram(name: "fpurge", scope: !572, file: !572, line: 1266, type: !1303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1448 = !DISubprogram(name: "wcwidth", scope: !1449, file: !1449, line: 368, type: !1450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1449 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!83, !1452}
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !1453, line: 24, baseType: !83)
!1453 = !DIFile(filename: "/usr/lib/llvm-22/lib/clang/22/include/__stddef_wchar_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1bf0c51e90dd5eb05cdcc01afdea587a")
!1454 = !DISubprogram(name: "rpl_mbrtoc32", scope: !1071, file: !1071, line: 1276, type: !1455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!139, !1457, !142, !139, !1458}
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!1459 = !DISubprogram(name: "iswblank", scope: !1460, file: !1460, line: 146, type: !1137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1460 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1461 = !DISubprogram(name: "__builtin___memmove_chk", scope: !1462, file: !1462, line: 25, type: !1463, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1462 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/strings_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "2c53309439f074d781ca95a346401d78")
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!137, !137, !1162, !141, !141}
!1465 = !DISubprogram(name: "__builtin___memcpy_chk", scope: !1159, file: !1159, line: 29, type: !1463, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
