; ModuleID = 'src/mkdir.c'
source_filename = "src/mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mkdir_options = type { ptr, i32, i32, i32, i32, ptr, ptr }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Usage: %s [OPTION]... DIRECTORY...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [58 x i8] c"Create the DIRECTORY(ies), if they do not already exist.\0A\00", align 1, !dbg !12
@stdout = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [75 x i8] c"  -m, --mode=MODE\0A         set file mode (as in chmod), not a=rwx - umask\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [142 x i8] c"  -p, --parents\0A         no error if existing, make parent directories as needed,\0A         with their file modes unaffected by any -m option\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [69 x i8] c"  -v, --verbose\0A         print a message for each created directory\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [99 x i8] c"  -Z\0A         set SELinux security context of each created directory\0A         to the default type\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [127 x i8] c"      --context[=CTX]\0A         like -Z, or if CTX is specified then set the\0A         SELinux or SMACK security context to CTX\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !57
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !67
@.str.14 = private unnamed_addr constant [6 x i8] c"pm:vZ\00", align 1, !dbg !72
@optarg = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [21 x i8] c"created directory %s\00", align 1, !dbg !74
@.str.16 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1, !dbg !79
@.str.17 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !84
@Version = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !89
@optind = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !94
@.str.21 = private unnamed_addr constant [16 x i8] c"invalid mode %s\00", align 1, !dbg !96
@.str.22 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !98
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !101
@.str.23 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !182
@.str.24 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !187
@.str.25 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !189
@.str.26 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !194
@.str.40 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !234
@.str.41 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !236
@.str.42 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !238
@.str.43 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !243
@.str.44 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !248
@.str.45 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !253
@.str.46 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !258
@.str.47 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !260
@.str.48 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !262
@.str.49 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !264
@.str.53 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !275
@.str.54 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !280
@.str.55 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !285
@.str.56 = private unnamed_addr constant [8 x i8] c"context\00", align 1, !dbg !290
@.str.57 = private unnamed_addr constant [5 x i8] c"mode\00", align 1, !dbg !292
@.str.58 = private unnamed_addr constant [8 x i8] c"parents\00", align 1, !dbg !294
@.str.59 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1, !dbg !296
@.str.60 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !298
@.str.61 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !300
@longopts = internal constant [7 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.56, i32 2, [4 x i8] zeroinitializer, ptr null, i32 90, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.57, i32 1, [4 x i8] zeroinitializer, ptr null, i32 109, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.58, i32 0, [4 x i8] zeroinitializer, ptr null, i32 112, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.59, i32 0, [4 x i8] zeroinitializer, ptr null, i32 118, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.60, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -130, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.61, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -131, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16, !dbg !302

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !413 {
    #dbg_value(i32 %0, !417, !DIExpression(), !418)
  %2 = icmp eq i32 %0, 0, !dbg !419
  br i1 %2, label %8, label %3, !dbg !421

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !422, !tbaa !424
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #13, !dbg !422
  %6 = load ptr, ptr @program_name, align 8, !dbg !422, !tbaa !427
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #13, !dbg !422
  br label %29, !dbg !422

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #13, !dbg !429
  %10 = load ptr, ptr @program_name, align 8, !dbg !431, !tbaa !427
  %11 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %9, ptr noundef %10) #13, !dbg !432
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #13, !dbg !433
  %13 = load ptr, ptr @stdout, align 8, !dbg !434, !tbaa !424
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !435
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #13, !dbg !436
  %16 = load ptr, ptr @stdout, align 8, !dbg !441, !tbaa !424
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !442
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #13, !dbg !443
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !444
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #13, !dbg !445
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !446
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #13, !dbg !447
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !448
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #13, !dbg !449
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !450
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #13, !dbg !451
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !452
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #13, !dbg !453
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !454
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #13, !dbg !455
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !456
    #dbg_value(ptr @.str.3, !457, !DIExpression(), !473)
    #dbg_value(ptr poison, !470, !DIExpression(), !473)
    #dbg_value(ptr @.str.3, !469, !DIExpression(), !473)
  tail call void @emit_bug_reporting_address() #13, !dbg !475
    #dbg_value(ptr @.str.3, !472, !DIExpression(), !473)
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #13, !dbg !476
  %26 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %25, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3) #13, !dbg !477
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #13, !dbg !478
  %28 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %27, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.55) #13, !dbg !479
  br label %29

29:                                               ; preds = %8, %3
  tail call void @exit(i32 noundef %0) #14, !dbg !480
  unreachable, !dbg !480
}

declare !dbg !481 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !487 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !491 i32 @rpl_printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare !dbg !495 noundef i32 @fputs_unlocked(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !103 {
    #dbg_value(ptr @.str.3, !325, !DIExpression(), !499)
    #dbg_value(ptr %0, !326, !DIExpression(), !499)
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !500, !tbaa !409
  %3 = icmp eq i32 %2, -1, !dbg !501
  br i1 %3, label %4, label %16, !dbg !502

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.23) #13, !dbg !503
    #dbg_value(ptr %5, !327, !DIExpression(), !504)
  %6 = icmp eq ptr %5, null, !dbg !505
  br i1 %6, label %14, label %7, !dbg !506

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !507, !tbaa !508
  %9 = icmp eq i8 %8, 0, !dbg !509
  br i1 %9, label %14, label %10, !dbg !510

10:                                               ; preds = %7
    #dbg_value(ptr %5, !511, !DIExpression(), !518)
    #dbg_value(ptr @.str.24, !517, !DIExpression(), !518)
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.24) #15, !dbg !520
  %12 = icmp eq i32 %11, 0, !dbg !521
  %13 = zext i1 %12 to i32, !dbg !522
  br label %14, !dbg !523

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !524, !tbaa !409
  br label %16, !dbg !525

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !526
  %18 = icmp eq i32 %17, 0, !dbg !528
  br i1 %18, label %19, label %114, !dbg !529

19:                                               ; preds = %16
    #dbg_value(i8 1, !330, !DIExpression(), !499)
  %20 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.25) #15, !dbg !530
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 %20, !dbg !531
    #dbg_value(ptr %21, !332, !DIExpression(), !499)
  %22 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #15, !dbg !532
    #dbg_value(ptr %22, !333, !DIExpression(), !499)
  %23 = icmp eq ptr %22, null, !dbg !533
  br i1 %23, label %48, label %24, !dbg !534

24:                                               ; preds = %19
    #dbg_value(ptr %21, !334, !DIExpression(), !535)
    #dbg_value(i64 0, !338, !DIExpression(), !535)
  %25 = icmp ult ptr %21, %22
  br i1 %25, label %26, label %48, !dbg !536

26:                                               ; preds = %24
  %27 = tail call ptr @__ctype_b_loc() #16, !dbg !499
  %28 = load ptr, ptr %27, align 8, !tbaa !537
  br label %29, !dbg !539

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %21, %26 ], [ %32, %29 ]
  %31 = phi i64 [ 0, %26 ], [ %41, %29 ]
    #dbg_value(ptr %30, !334, !DIExpression(), !535)
    #dbg_value(i64 %31, !338, !DIExpression(), !535)
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 1, !dbg !540
    #dbg_value(ptr %32, !334, !DIExpression(), !535)
  %33 = load i8, ptr %30, align 1, !dbg !541, !tbaa !508
  %34 = sext i8 %33 to i64, !dbg !542
  %35 = getelementptr inbounds i16, ptr %28, i64 %34, !dbg !542
  %36 = load i16, ptr %35, align 2, !dbg !542, !tbaa !543
  %37 = freeze i16 %36, !dbg !545
  %38 = lshr i16 %37, 13, !dbg !545
  %39 = and i16 %38, 1, !dbg !545
  %40 = zext nneg i16 %39 to i64, !dbg !545
  %41 = add i64 %31, %40, !dbg !546
    #dbg_value(i64 %41, !338, !DIExpression(), !535)
  %42 = icmp ult ptr %32, %22, !dbg !547
  %43 = icmp samesign ult i64 %41, 2, !dbg !548
  %44 = select i1 %42, i1 %43, i1 false, !dbg !548
  br i1 %44, label %29, label %45, !dbg !549, !llvm.loop !550

45:                                               ; preds = %29
  %46 = icmp ne i64 %41, 2, !dbg !553
  %47 = select i1 %46, ptr %22, ptr %21, !dbg !555
  br label %48, !dbg !555

48:                                               ; preds = %45, %19, %24
  %49 = phi ptr [ %21, %19 ], [ %22, %24 ], [ %47, %45 ], !dbg !499
  %50 = phi i1 [ false, %19 ], [ true, %24 ], [ %46, %45 ], !dbg !499
    #dbg_value(i8 poison, !330, !DIExpression(), !499)
    #dbg_value(ptr %49, !333, !DIExpression(), !499)
  %51 = tail call i64 @strcspn(ptr noundef nonnull %49, ptr noundef nonnull @.str.26) #15, !dbg !556
    #dbg_value(i64 %51, !339, !DIExpression(), !499)
  %52 = getelementptr inbounds nuw i8, ptr %49, i64 %51, !dbg !557
    #dbg_value(ptr %52, !340, !DIExpression(), !499)
  br label %53, !dbg !558

53:                                               ; preds = %84, %48
  %54 = phi ptr [ %52, %48 ], [ %85, %84 ], !dbg !499
  %55 = phi i1 [ %50, %48 ], [ %63, %84 ], !dbg !499
    #dbg_value(i8 poison, !330, !DIExpression(), !499)
    #dbg_value(ptr %54, !340, !DIExpression(), !499)
  %56 = load i8, ptr %54, align 1, !dbg !559, !tbaa !508
  switch i8 %56, label %62 [
    i8 0, label %86
    i8 10, label %86
    i8 45, label %57
  ], !dbg !560

57:                                               ; preds = %53
  %58 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !561
  %59 = load i8, ptr %58, align 1, !dbg !561, !tbaa !508
  %60 = icmp ne i8 %59, 45, !dbg !564
  %61 = select i1 %60, i1 %55, i1 false, !dbg !565
  br label %62, !dbg !565

62:                                               ; preds = %57, %53
  %63 = phi i1 [ %55, %53 ], [ %61, %57 ], !dbg !499
    #dbg_value(i8 poison, !330, !DIExpression(), !499)
  %64 = tail call ptr @__ctype_b_loc() #16, !dbg !566
  %65 = load ptr, ptr %64, align 8, !dbg !566, !tbaa !537
  %66 = sext i8 %56 to i64, !dbg !566
  %67 = getelementptr inbounds i16, ptr %65, i64 %66, !dbg !566
  %68 = load i16, ptr %67, align 2, !dbg !566, !tbaa !543
  %69 = and i16 %68, 8192, !dbg !566
  %70 = icmp eq i16 %69, 0, !dbg !568
  br i1 %70, label %84, label %71, !dbg !569

71:                                               ; preds = %62
  %72 = icmp eq i8 %56, 9, !dbg !570
  br i1 %72, label %86, label %73, !dbg !573

73:                                               ; preds = %71
  %74 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !574
  %75 = load i8, ptr %74, align 1, !dbg !574, !tbaa !508
  %76 = sext i8 %75 to i64, !dbg !575
  %77 = getelementptr inbounds i16, ptr %65, i64 %76, !dbg !575
  %78 = load i16, ptr %77, align 2, !dbg !575, !tbaa !543
  %79 = and i16 %78, 8192, !dbg !575
  %80 = icmp eq i16 %79, 0, !dbg !576
  %81 = icmp eq i8 %75, 45
  %82 = or i1 %63, %81
  %83 = select i1 %80, i1 %82, i1 false, !dbg !577
  br i1 %83, label %84, label %86, !dbg !577

84:                                               ; preds = %73, %62
  %85 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !578
    #dbg_value(ptr %85, !340, !DIExpression(), !499)
  br label %53, !dbg !558, !llvm.loop !579

86:                                               ; preds = %53, %53, %71, %73
  %87 = ptrtoint ptr %21 to i64, !dbg !581
  %88 = load ptr, ptr @stdout, align 8, !dbg !582, !tbaa !424
  %89 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %0, i64 noundef 1, i64 noundef %20, ptr noundef %88), !dbg !583
    #dbg_value(ptr @.str.3, !511, !DIExpression(), !584)
    #dbg_value(ptr poison, !517, !DIExpression(), !584)
    #dbg_value(ptr @.str.3, !511, !DIExpression(), !586)
    #dbg_value(ptr poison, !517, !DIExpression(), !586)
    #dbg_value(ptr @.str.3, !511, !DIExpression(), !588)
    #dbg_value(ptr poison, !517, !DIExpression(), !588)
    #dbg_value(ptr @.str.3, !511, !DIExpression(), !590)
    #dbg_value(ptr poison, !517, !DIExpression(), !590)
    #dbg_value(ptr @.str.3, !511, !DIExpression(), !592)
    #dbg_value(ptr poison, !517, !DIExpression(), !592)
    #dbg_value(ptr @.str.3, !511, !DIExpression(), !594)
    #dbg_value(ptr poison, !517, !DIExpression(), !594)
    #dbg_value(ptr @.str.3, !511, !DIExpression(), !596)
    #dbg_value(ptr poison, !517, !DIExpression(), !596)
    #dbg_value(ptr @.str.3, !511, !DIExpression(), !598)
    #dbg_value(ptr poison, !517, !DIExpression(), !598)
    #dbg_value(ptr @.str.3, !511, !DIExpression(), !600)
    #dbg_value(ptr poison, !517, !DIExpression(), !600)
    #dbg_value(ptr @.str.3, !511, !DIExpression(), !602)
    #dbg_value(ptr poison, !517, !DIExpression(), !602)
    #dbg_value(ptr @.str.3, !396, !DIExpression(), !499)
  %90 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(7) @.str.40, i64 noundef 6) #15, !dbg !604
  %91 = icmp eq i32 %90, 0, !dbg !606
  br i1 %91, label %95, label %92, !dbg !607

92:                                               ; preds = %86
  %93 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(10) @.str.41, i64 noundef 9) #15, !dbg !608
  %94 = icmp eq i32 %93, 0, !dbg !609
  br i1 %94, label %95, label %98, !dbg !610

95:                                               ; preds = %92, %86
  %96 = trunc i64 %51 to i32, !dbg !611
  %97 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %96, ptr noundef nonnull %49) #13, !dbg !613
  br label %101, !dbg !614

98:                                               ; preds = %92
  %99 = trunc i64 %51 to i32, !dbg !615
  %100 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.3, i32 noundef %99, ptr noundef nonnull %49) #13, !dbg !617
  br label %101

101:                                              ; preds = %98, %95
  %102 = load ptr, ptr @stdout, align 8, !dbg !618, !tbaa !424
  %103 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %102), !dbg !619
  %104 = load ptr, ptr @stdout, align 8, !dbg !620, !tbaa !424
  %105 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %104), !dbg !621
  %106 = ptrtoint ptr %54 to i64, !dbg !622
  %107 = sub i64 %106, %87, !dbg !622
  %108 = load ptr, ptr @stdout, align 8, !dbg !623, !tbaa !424
  %109 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %21, i64 noundef 1, i64 noundef %107, ptr noundef %108), !dbg !624
  %110 = load ptr, ptr @stdout, align 8, !dbg !625, !tbaa !424
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %110), !dbg !626
  %112 = load ptr, ptr @stdout, align 8, !dbg !627, !tbaa !424
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.49, ptr noundef %112), !dbg !628
  br label %114, !dbg !629

114:                                              ; preds = %16, %101
  %115 = phi ptr [ %54, %101 ], [ %0, %16 ]
  %116 = load ptr, ptr @stdout, align 8, !dbg !499, !tbaa !424
  %117 = tail call i32 @fputs_unlocked(ptr noundef %115, ptr noundef %116), !dbg !499
  ret void, !dbg !630
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #6 !dbg !631 {
  %3 = alloca %struct.mkdir_options, align 8, !DIAssignID !671
    #dbg_assign(i1 poison, !641, !DIExpression(), !671, ptr %3, !DIExpression(), !672)
    #dbg_value(i32 %0, !636, !DIExpression(), !672)
    #dbg_value(ptr %1, !637, !DIExpression(), !672)
    #dbg_value(ptr null, !638, !DIExpression(), !672)
    #dbg_value(ptr null, !640, !DIExpression(), !672)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13, !dbg !673
    #dbg_assign(ptr null, !641, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !674, ptr %3, !DIExpression(), !672)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !675
  store i32 511, ptr %4, align 8, !dbg !676, !tbaa !677, !DIAssignID !680
    #dbg_assign(i32 511, !641, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !680, ptr %4, !DIExpression(), !672)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 20, !dbg !681
    #dbg_assign(i32 0, !641, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !682, ptr %5, !DIExpression(), !672)
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !683
    #dbg_assign(ptr null, !641, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !682, ptr %6, !DIExpression(), !672)
    #dbg_assign(ptr null, !641, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !682, ptr %3, !DIExpression(DW_OP_plus_uconst, 24), !672)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false), !dbg !684, !DIAssignID !682
  %7 = load ptr, ptr %1, align 8, !dbg !685, !tbaa !427
  tail call void @set_program_name(ptr noundef %7) #13, !dbg !686
  %8 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #13, !dbg !687
  %9 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #13, !dbg !688
  %10 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #13, !dbg !689
  %11 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #13, !dbg !690
  br label %12, !dbg !691

12:                                               ; preds = %22, %2
  %13 = phi i1 [ false, %2 ], [ true, %22 ]
  %14 = phi ptr [ null, %2 ], [ @make_ancestor, %22 ]
  %15 = phi ptr [ null, %2 ], [ %18, %22 ]
  %16 = phi ptr [ null, %2 ], [ %21, %22 ]
  br label %17, !dbg !691

17:                                               ; preds = %12, %26
  %18 = phi ptr [ %15, %12 ], [ %27, %26 ]
  %19 = phi ptr [ %16, %12 ], [ %21, %26 ]
  br label %20, !dbg !691

20:                                               ; preds = %17, %24
  %21 = phi ptr [ %19, %17 ], [ %25, %24 ]
  br label %22, !dbg !691

22:                                               ; preds = %33, %20
    #dbg_value(ptr %21, !638, !DIExpression(), !672)
    #dbg_value(ptr null, !640, !DIExpression(), !672)
  %23 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @longopts, ptr noundef null) #13, !dbg !692
    #dbg_value(i32 %23, !639, !DIExpression(), !672)
  switch i32 %23, label %39 [
    i32 -1, label %40
    i32 112, label %12
    i32 109, label %24
    i32 118, label %26
    i32 90, label %28
    i32 -130, label %34
    i32 -131, label %35
  ], !dbg !693, !llvm.loop !694

24:                                               ; preds = %22
  %25 = load ptr, ptr @optarg, align 8, !dbg !696, !tbaa !427
    #dbg_value(ptr %25, !638, !DIExpression(), !672)
  br label %20, !dbg !699, !llvm.loop !694

26:                                               ; preds = %22
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #13, !dbg !700
    #dbg_assign(ptr %27, !641, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !701, ptr %6, !DIExpression(), !672)
  br label %17, !dbg !702, !llvm.loop !694

28:                                               ; preds = %22
  %29 = load ptr, ptr @optarg, align 8, !dbg !703, !tbaa !427
  %30 = icmp eq ptr %29, null, !dbg !707
  br i1 %30, label %33, label %31, !dbg !708

31:                                               ; preds = %28
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #13, !dbg !709
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %32) #13, !dbg !711
  br label %33, !dbg !712

33:                                               ; preds = %31, %28
  br label %22, !dbg !692, !llvm.loop !694

34:                                               ; preds = %22
  tail call void @usage(i32 noundef 0) #17, !dbg !713
  unreachable, !dbg !713

35:                                               ; preds = %22
  %36 = load ptr, ptr @stdout, align 8, !dbg !714, !tbaa !424
  %37 = load ptr, ptr @Version, align 8, !dbg !714, !tbaa !427
  %38 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.18) #13, !dbg !715
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.17, ptr noundef %37, ptr noundef %38, ptr noundef null) #13, !dbg !714
  tail call void @exit(i32 noundef 0) #14, !dbg !714
  unreachable, !dbg !714

39:                                               ; preds = %22
  tail call void @usage(i32 noundef 1) #17, !dbg !716
  unreachable, !dbg !716

40:                                               ; preds = %22
  store ptr %18, ptr %6, align 8, !dbg !717, !DIAssignID !701
  store ptr %14, ptr %3, align 8, !dbg !718, !DIAssignID !719
  %41 = load i32, ptr @optind, align 4, !dbg !720, !tbaa !409
  %42 = icmp eq i32 %41, %0, !dbg !722
  br i1 %42, label %43, label %45, !dbg !723

43:                                               ; preds = %40
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #13, !dbg !724
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %44) #13, !dbg !726
  tail call void @usage(i32 noundef 1) #17, !dbg !727
  unreachable, !dbg !727

45:                                               ; preds = %40
  %46 = icmp ne ptr %21, null
  %47 = select i1 %13, i1 true, i1 %46, !dbg !728
  br i1 %47, label %48, label %69, !dbg !728

48:                                               ; preds = %45
  %49 = tail call i32 @umask(i32 noundef 0) #13, !dbg !729
    #dbg_value(i32 %49, !662, !DIExpression(), !730)
  %50 = and i32 %49, -193, !dbg !731
  %51 = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !732
  store i32 %50, ptr %51, align 8, !dbg !733, !tbaa !734, !DIAssignID !735
    #dbg_assign(i32 %50, !641, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !735, ptr %51, !DIExpression(), !672)
  br i1 %46, label %52, label %63, !dbg !736

52:                                               ; preds = %48
  %53 = tail call noalias ptr @mode_compile(ptr noundef nonnull %21) #13, !dbg !737
    #dbg_value(ptr %53, !665, !DIExpression(), !738)
  %54 = icmp eq ptr %53, null, !dbg !739
  br i1 %54, label %55, label %58, !dbg !741

55:                                               ; preds = %52
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #13, !dbg !742
  %57 = tail call ptr @quote(ptr noundef nonnull %21) #13, !dbg !743
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %56, ptr noundef %57) #13, !dbg !744
  unreachable, !dbg !744

58:                                               ; preds = %52
  %59 = call i32 @mode_adjust(i32 noundef 511, i1 noundef zeroext true, i32 noundef %49, ptr noundef nonnull %53, ptr noundef nonnull %5) #13, !dbg !745
  store i32 %59, ptr %4, align 8, !dbg !746, !tbaa !677, !DIAssignID !747
    #dbg_assign(i32 %59, !641, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !747, ptr %4, !DIExpression(), !672)
  %60 = xor i32 %59, -1, !dbg !748
  %61 = and i32 %49, %60, !dbg !749
  %62 = getelementptr inbounds nuw i8, ptr %3, i64 12, !dbg !750
  store i32 %61, ptr %62, align 4, !dbg !751, !tbaa !752, !DIAssignID !753
    #dbg_assign(i32 %61, !641, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !753, ptr %62, !DIExpression(), !672)
  call void @free(ptr noundef nonnull %53) #13, !dbg !754
  br label %65, !dbg !755

63:                                               ; preds = %48
  store i32 511, ptr %4, align 8, !dbg !756, !tbaa !677, !DIAssignID !758
    #dbg_assign(i32 511, !641, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !758, ptr %4, !DIExpression(), !672)
  %64 = getelementptr inbounds nuw i8, ptr %3, i64 12, !dbg !759
  store i32 %49, ptr %64, align 4, !dbg !760, !tbaa !752, !DIAssignID !761
    #dbg_assign(i32 %49, !641, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !761, ptr %64, !DIExpression(), !672)
  br label %65

65:                                               ; preds = %63, %58
  %66 = phi i32 [ %49, %63 ], [ %61, %58 ], !dbg !762
  %67 = call i32 @umask(i32 noundef %66) #13, !dbg !763
  %68 = load i32, ptr @optind, align 4, !dbg !764, !tbaa !409
  br label %69, !dbg !765

69:                                               ; preds = %45, %65
  %70 = phi i32 [ %41, %45 ], [ %68, %65 ], !dbg !764
  %71 = sub nsw i32 %0, %70, !dbg !766
  %72 = sext i32 %70 to i64, !dbg !767
  %73 = getelementptr inbounds ptr, ptr %1, i64 %72, !dbg !767
  %74 = call i32 @savewd_process_files(i32 noundef %71, ptr noundef nonnull %73, ptr noundef nonnull @process_dir, ptr noundef nonnull %3) #13, !dbg !768
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13, !dbg !769
  ret i32 %74, !dbg !770
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

declare !dbg !771 void @set_program_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !773 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !777 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !780 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !783 i32 @atexit(ptr noundef) local_unnamed_addr #3

declare void @close_stdout() #1

; Function Attrs: nounwind
declare !dbg !788 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @make_ancestor(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) #6 !dbg !794 {
    #dbg_value(ptr %0, !796, !DIExpression(), !806)
    #dbg_value(ptr %1, !797, !DIExpression(), !806)
    #dbg_value(ptr %2, !798, !DIExpression(), !806)
    #dbg_value(ptr %2, !799, !DIExpression(), !806)
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !807
  %5 = load ptr, ptr %4, align 8, !dbg !807, !tbaa !809
  %6 = icmp eq ptr %5, null, !dbg !810
  br i1 %6, label %9, label %7, !dbg !811

7:                                                ; preds = %3
    #dbg_value(ptr %5, !812, !DIExpression(), !820)
    #dbg_value(ptr %1, !818, !DIExpression(), !820)
    #dbg_value(i32 16384, !819, !DIExpression(), !820)
  %8 = tail call ptr @__errno_location() #16, !dbg !822
  store i32 95, ptr %8, align 4, !dbg !823, !tbaa !409
  br label %9, !dbg !824

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !825
  %11 = load i32, ptr %10, align 8, !dbg !825, !tbaa !734
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 12, !dbg !827
  %13 = load i32, ptr %12, align 4, !dbg !827, !tbaa !752
  %14 = icmp eq i32 %11, %13, !dbg !828
  br i1 %14, label %17, label %15, !dbg !829

15:                                               ; preds = %9
  %16 = tail call i32 @umask(i32 noundef %11) #13, !dbg !830
  br label %17, !dbg !830

17:                                               ; preds = %15, %9
  %18 = tail call i32 @mkdir(ptr noundef %1, i32 noundef 511) #13, !dbg !831
    #dbg_value(i32 %18, !802, !DIExpression(), !806)
  %19 = load i32, ptr %10, align 8, !dbg !832, !tbaa !734
  %20 = load i32, ptr %12, align 4, !dbg !833, !tbaa !752
  %21 = icmp eq i32 %19, %20, !dbg !834
  br i1 %21, label %26, label %22, !dbg !835

22:                                               ; preds = %17
  %23 = tail call ptr @__errno_location() #16, !dbg !836
  %24 = load i32, ptr %23, align 4, !dbg !837, !tbaa !409
    #dbg_value(i32 %24, !803, !DIExpression(), !838)
  %25 = tail call i32 @umask(i32 noundef %20) #13, !dbg !839
  store i32 %24, ptr %23, align 4, !dbg !840, !tbaa !409
  br label %26, !dbg !841

26:                                               ; preds = %22, %17
  %27 = icmp eq i32 %18, 0, !dbg !842
  br i1 %27, label %28, label %38, !dbg !844

28:                                               ; preds = %26
  %29 = load i32, ptr %10, align 8, !dbg !845, !tbaa !734
  %30 = lshr i32 %29, 8, !dbg !847
  %31 = and i32 %30, 1, !dbg !847
    #dbg_value(i32 %31, !802, !DIExpression(), !806)
    #dbg_value(ptr %0, !848, !DIExpression(), !855)
    #dbg_value(ptr %2, !853, !DIExpression(), !855)
    #dbg_value(ptr %2, !854, !DIExpression(), !855)
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !857
  %33 = load ptr, ptr %32, align 8, !dbg !857, !tbaa !859
  %34 = icmp eq ptr %33, null, !dbg !860
  br i1 %34, label %38, label %35, !dbg !861

35:                                               ; preds = %28
  %36 = load ptr, ptr @stdout, align 8, !dbg !862, !tbaa !424
  %37 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %0) #13, !dbg !863
  tail call void (ptr, ptr, ...) @prog_fprintf(ptr noundef %36, ptr noundef nonnull %33, ptr noundef %37) #13, !dbg !864
  br label %38, !dbg !864

38:                                               ; preds = %35, %28, %26
  %39 = phi i32 [ %18, %26 ], [ %31, %28 ], [ %31, %35 ], !dbg !806
    #dbg_value(i32 %39, !802, !DIExpression(), !806)
  ret i32 %39, !dbg !865
}

declare !dbg !866 void @error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !870 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !874 ptr @proper_name_lite(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !878 ptr @__errno_location() local_unnamed_addr #8

declare !dbg !882 ptr @quote(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nounwind
declare !dbg !886 i32 @umask(i32 noundef) local_unnamed_addr #2

declare !dbg !890 noalias ptr @mode_compile(ptr noundef) local_unnamed_addr #1

declare !dbg !893 i32 @mode_adjust(i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !899 void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare !dbg !902 i32 @savewd_process_files(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @process_dir(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6 !dbg !909 {
    #dbg_value(ptr %0, !911, !DIExpression(), !916)
    #dbg_value(ptr %1, !912, !DIExpression(), !916)
    #dbg_value(ptr %2, !913, !DIExpression(), !916)
    #dbg_value(ptr %2, !914, !DIExpression(), !916)
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !917
  %5 = load ptr, ptr %4, align 8, !dbg !917, !tbaa !809
  %6 = icmp ne ptr %5, null, !dbg !919
  %7 = load ptr, ptr %2, align 8, !dbg !920, !tbaa !921
  %8 = icmp eq ptr %7, null
  %9 = select i1 %6, i1 %8, i1 false, !dbg !922
  br i1 %9, label %10, label %12, !dbg !922

10:                                               ; preds = %3
    #dbg_value(ptr %5, !812, !DIExpression(), !923)
    #dbg_value(ptr %0, !818, !DIExpression(), !923)
    #dbg_value(i32 16384, !819, !DIExpression(), !923)
  %11 = tail call ptr @__errno_location() #16, !dbg !927
  store i32 95, ptr %11, align 4, !dbg !928, !tbaa !409
  br label %12, !dbg !929

12:                                               ; preds = %10, %3
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !930
  %14 = load i32, ptr %13, align 8, !dbg !930, !tbaa !677
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 20, !dbg !931
  %16 = load i32, ptr %15, align 4, !dbg !931, !tbaa !932
  %17 = tail call zeroext i1 @make_dir_parents(ptr noundef %0, ptr noundef %1, ptr noundef %7, ptr noundef nonnull %2, i32 noundef %14, ptr noundef nonnull @announce_mkdir, i32 noundef %16, i32 noundef -1, i32 noundef -1, i1 noundef zeroext true) #13, !dbg !933
    #dbg_value(i32 poison, !915, !DIExpression(), !916)
  br i1 %17, label %18, label %26, !dbg !934

18:                                               ; preds = %12
  %19 = load ptr, ptr %4, align 8, !dbg !936, !tbaa !809
  %20 = icmp eq ptr %19, null, !dbg !937
  br i1 %20, label %26, label %21, !dbg !938

21:                                               ; preds = %18
  %22 = load ptr, ptr %2, align 8, !dbg !939, !tbaa !921
  %23 = icmp eq ptr %22, null, !dbg !940
  br i1 %23, label %26, label %24, !dbg !941

24:                                               ; preds = %21
    #dbg_value(ptr %19, !942, !DIExpression(), !949)
    #dbg_value(ptr poison, !947, !DIExpression(), !949)
    #dbg_value(i1 false, !948, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !949)
  %25 = tail call ptr @__errno_location() #16, !dbg !953
  store i32 95, ptr %25, align 4, !dbg !954, !tbaa !409
  br label %26, !dbg !955

26:                                               ; preds = %24, %21, %18, %12
  %27 = xor i1 %17, true, !dbg !956
  %28 = zext i1 %27 to i32, !dbg !956
    #dbg_value(i32 %28, !915, !DIExpression(), !916)
  ret i32 %28, !dbg !957
}

; Function Attrs: nofree nounwind memory(read)
declare !dbg !958 noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !959 i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !963 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !966 ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !972 i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare !dbg !973 noundef i64 @fwrite_unlocked(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !979 i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !982 i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

declare !dbg !985 void @emit_bug_reporting_address() local_unnamed_addr #1

declare !dbg !986 ptr @quotearg_style(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare !dbg !989 noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @announce_mkdir(ptr noundef %0, ptr noundef readonly captures(none) %1) #6 !dbg !849 {
    #dbg_value(ptr %0, !848, !DIExpression(), !992)
    #dbg_value(ptr %1, !853, !DIExpression(), !992)
    #dbg_value(ptr %1, !854, !DIExpression(), !992)
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !993
  %4 = load ptr, ptr %3, align 8, !dbg !993, !tbaa !859
  %5 = icmp eq ptr %4, null, !dbg !994
  br i1 %5, label %9, label %6, !dbg !995

6:                                                ; preds = %2
  %7 = load ptr, ptr @stdout, align 8, !dbg !996, !tbaa !424
  %8 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %0) #13, !dbg !997
  tail call void (ptr, ptr, ...) @prog_fprintf(ptr noundef %7, ptr noundef nonnull %4, ptr noundef %8) #13, !dbg !998
  br label %9, !dbg !998

9:                                                ; preds = %6, %2
  ret void, !dbg !999
}

declare !dbg !1000 void @prog_fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !1004 zeroext i1 @make_dir_parents(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { noreturn }

!llvm.dbg.cu = !{!108}
!llvm.module.flags = !{!401, !402, !403, !404, !405, !406, !407}
!llvm.ident = !{!408}
!llvm.errno.tbaa = !{!409}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/mkdir.c", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "d793d15b84a01608d40780cfd3f61f54")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 36)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 58)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 6)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 75)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1136, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 142)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 69)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 792, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 99)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1016, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 127)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 50)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 62)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 1)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 218, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 10)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 218, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 24)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 223, type: !19, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 234, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 21)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 257, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 73)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 262, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 14)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 262, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 16)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 270, type: !91, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !91, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !100, line: 755, type: !24, isLocal: true, isDefinition: true)
!100 = !DIFile(filename: "src/system.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "6a9c30566098770bfb4561b49834f302")
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !103, file: !100, line: 594, type: !111, isLocal: true, isDefinition: true)
!103 = distinct !DISubprogram(name: "oputs_", scope: !100, file: !100, line: 592, type: !104, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !324, keyInstructions: true)
!104 = !DISubroutineType(cc: DW_CC_nocall, types: !105)
!105 = !{null, !106, !106}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!108 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !109, retainedTypes: !167, globals: !179, splitDebugInlining: false, nameTableKind: None)
!109 = !{!110, !115, !138, !153}
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !100, line: 356, baseType: !111, size: 32, elements: !112)
!111 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!112 = !{!113, !114}
!113 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!114 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !117, file: !116, line: 45, baseType: !130, size: 32, elements: !131)
!116 = !DIFile(filename: "./lib/savewd.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "ad4dd1c19e06c974b5c544edb9d47f86")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !116, line: 42, size: 64, elements: !118)
!118 = !{!119, !120}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !117, file: !116, line: 73, baseType: !115, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !117, file: !116, line: 81, baseType: !121, size: 32, offset: 32)
!121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !117, file: !116, line: 76, size: 32, elements: !122)
!122 = !{!123, !124, !125}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !121, file: !116, line: 78, baseType: !111, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !121, file: !116, line: 79, baseType: !111, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !121, file: !116, line: 80, baseType: !126, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !127, line: 97, baseType: !128)
!127 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !129, line: 154, baseType: !111)
!129 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!130 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!131 = !{!132, !133, !134, !135, !136, !137}
!132 = !DIEnumerator(name: "INITIAL_STATE", value: 0)
!133 = !DIEnumerator(name: "FD_STATE", value: 1)
!134 = !DIEnumerator(name: "FD_POST_CHDIR_STATE", value: 2)
!135 = !DIEnumerator(name: "FORKING_STATE", value: 3)
!136 = !DIEnumerator(name: "ERROR_STATE", value: 4)
!137 = !DIEnumerator(name: "FINAL_STATE", value: 5)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !139, line: 46, baseType: !130, size: 32, elements: !140)
!139 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152}
!141 = !DIEnumerator(name: "_ISupper", value: 256)
!142 = !DIEnumerator(name: "_ISlower", value: 512)
!143 = !DIEnumerator(name: "_ISalpha", value: 1024)
!144 = !DIEnumerator(name: "_ISdigit", value: 2048)
!145 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!146 = !DIEnumerator(name: "_ISspace", value: 8192)
!147 = !DIEnumerator(name: "_ISprint", value: 16384)
!148 = !DIEnumerator(name: "_ISgraph", value: 32768)
!149 = !DIEnumerator(name: "_ISblank", value: 1)
!150 = !DIEnumerator(name: "_IScntrl", value: 2)
!151 = !DIEnumerator(name: "_ISpunct", value: 4)
!152 = !DIEnumerator(name: "_ISalnum", value: 8)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !154, line: 42, baseType: !130, size: 32, elements: !155)
!154 = !DIFile(filename: "./lib/quotearg.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!156 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!157 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!158 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!159 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!160 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!161 = !DIEnumerator(name: "c_quoting_style", value: 5)
!162 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!163 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!164 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!165 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!166 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!167 = !{!168, !169, !111, !170, !171, !106, !174, !175, !177}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!170 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !172, line: 18, baseType: !173)
!172 = !DIFile(filename: "/usr/lib/llvm-22/lib/clang/22/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!173 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!174 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !127, line: 79, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !129, line: 146, baseType: !130)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !127, line: 64, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !129, line: 147, baseType: !130)
!179 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !72, !74, !79, !84, !89, !94, !180, !96, !98, !101, !182, !187, !189, !194, !196, !201, !203, !205, !210, !212, !214, !216, !221, !226, !228, !230, !232, !234, !236, !238, !243, !248, !253, !258, !260, !262, !264, !266, !268, !273, !275, !280, !285, !290, !292, !294, !296, !298, !300, !302, !314, !319}
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !2, line: 287, type: !49, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !100, line: 604, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 5)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !100, line: 605, type: !184, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !100, line: 614, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 4)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !100, line: 639, type: !19, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !100, line: 667, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 2)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !100, line: 667, type: !184, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !100, line: 668, type: !191, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(scope: null, file: !100, line: 668, type: !207, isLocal: true, isDefinition: true)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 3)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !100, line: 669, type: !184, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !100, line: 670, type: !19, isLocal: true, isDefinition: true)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !100, line: 670, type: !19, isLocal: true, isDefinition: true)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !100, line: 671, type: !218, isLocal: true, isDefinition: true)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 7)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !100, line: 672, type: !223, isLocal: true, isDefinition: true)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 8)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !100, line: 673, type: !64, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !100, line: 674, type: !64, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !100, line: 675, type: !64, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !100, line: 676, type: !64, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !100, line: 682, type: !218, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !100, line: 683, type: !64, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !100, line: 688, type: !240, isLocal: true, isDefinition: true)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 17)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !100, line: 688, type: !245, isLocal: true, isDefinition: true)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 40)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !100, line: 695, type: !250, isLocal: true, isDefinition: true)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 15)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !100, line: 695, type: !255, isLocal: true, isDefinition: true)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 61)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !100, line: 698, type: !207, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !100, line: 702, type: !184, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !100, line: 707, type: !184, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !100, line: 710, type: !223, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !100, line: 858, type: !91, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !100, line: 859, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 22)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !100, line: 860, type: !250, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !100, line: 882, type: !277, isLocal: true, isDefinition: true)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 27)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !100, line: 884, type: !282, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 51)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !100, line: 885, type: !287, isLocal: true, isDefinition: true)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 12)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !223, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !184, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !223, isLocal: true, isDefinition: true)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !223, isLocal: true, isDefinition: true)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !184, isLocal: true, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !223, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "longopts", scope: !108, file: !2, line: 39, type: !304, isLocal: true, isDefinition: true)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 1792, elements: !219)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !307, line: 50, size: 256, elements: !308)
!307 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!308 = !{!309, !310, !311, !313}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !306, file: !307, line: 52, baseType: !106, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !306, file: !307, line: 55, baseType: !111, size: 32, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !306, file: !307, line: 56, baseType: !312, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !306, file: !307, line: 57, baseType: !111, size: 32, offset: 192)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !316, isLocal: true, isDefinition: true)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 46)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !2, line: 194, type: !321, isLocal: true, isDefinition: true)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 33)
!324 = !{!325, !326, !327, !330, !332, !333, !334, !338, !339, !340, !341, !343, !395, !396, !397, !399, !400}
!325 = !DILocalVariable(name: "program", arg: 1, scope: !103, file: !100, line: 592, type: !106)
!326 = !DILocalVariable(name: "option", arg: 2, scope: !103, file: !100, line: 592, type: !106)
!327 = !DILocalVariable(name: "term", scope: !328, file: !100, line: 604, type: !106)
!328 = distinct !DILexicalBlock(scope: !329, file: !100, line: 601, column: 5)
!329 = distinct !DILexicalBlock(scope: !103, file: !100, line: 600, column: 7)
!330 = !DILocalVariable(name: "double_space", scope: !103, file: !100, line: 613, type: !331)
!331 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!332 = !DILocalVariable(name: "first_word", scope: !103, file: !100, line: 614, type: !106)
!333 = !DILocalVariable(name: "option_text", scope: !103, file: !100, line: 615, type: !106)
!334 = !DILocalVariable(name: "s", scope: !335, file: !100, line: 627, type: !106)
!335 = distinct !DILexicalBlock(scope: !336, file: !100, line: 624, column: 5)
!336 = distinct !DILexicalBlock(scope: !337, file: !100, line: 623, column: 12)
!337 = distinct !DILexicalBlock(scope: !103, file: !100, line: 616, column: 7)
!338 = !DILocalVariable(name: "spaces", scope: !335, file: !100, line: 628, type: !171)
!339 = !DILocalVariable(name: "anchor_len", scope: !103, file: !100, line: 639, type: !171)
!340 = !DILocalVariable(name: "desc_text", scope: !103, file: !100, line: 644, type: !106)
!341 = !DILocalVariable(name: "__ptr", scope: !342, file: !100, line: 663, type: !106)
!342 = distinct !DILexicalBlock(scope: !103, file: !100, line: 663, column: 3)
!343 = !DILocalVariable(name: "__stream", scope: !342, file: !100, line: 663, type: !344)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !346, line: 7, baseType: !347)
!346 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !348, line: 49, size: 1728, elements: !349)
!348 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !365, !367, !368, !369, !372, !373, !375, !376, !379, !381, !384, !387, !388, !389, !390, !391}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !347, file: !348, line: 51, baseType: !111, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !347, file: !348, line: 54, baseType: !168, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !347, file: !348, line: 55, baseType: !168, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !347, file: !348, line: 56, baseType: !168, size: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !347, file: !348, line: 57, baseType: !168, size: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !347, file: !348, line: 58, baseType: !168, size: 64, offset: 320)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !347, file: !348, line: 59, baseType: !168, size: 64, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !347, file: !348, line: 60, baseType: !168, size: 64, offset: 448)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !347, file: !348, line: 61, baseType: !168, size: 64, offset: 512)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !347, file: !348, line: 64, baseType: !168, size: 64, offset: 576)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !347, file: !348, line: 65, baseType: !168, size: 64, offset: 640)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !347, file: !348, line: 66, baseType: !168, size: 64, offset: 704)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !347, file: !348, line: 68, baseType: !363, size: 64, offset: 768)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !348, line: 36, flags: DIFlagFwdDecl)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !347, file: !348, line: 70, baseType: !366, size: 64, offset: 832)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !347, file: !348, line: 72, baseType: !111, size: 32, offset: 896)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !347, file: !348, line: 73, baseType: !111, size: 32, offset: 928)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !347, file: !348, line: 74, baseType: !370, size: 64, offset: 960)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !129, line: 152, baseType: !371)
!371 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !347, file: !348, line: 77, baseType: !170, size: 16, offset: 1024)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !347, file: !348, line: 78, baseType: !374, size: 8, offset: 1040)
!374 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !347, file: !348, line: 79, baseType: !59, size: 8, offset: 1048)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !347, file: !348, line: 81, baseType: !377, size: 64, offset: 1088)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !348, line: 43, baseType: null)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !347, file: !348, line: 89, baseType: !380, size: 64, offset: 1152)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !129, line: 153, baseType: !371)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !347, file: !348, line: 91, baseType: !382, size: 64, offset: 1216)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !348, line: 37, flags: DIFlagFwdDecl)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !347, file: !348, line: 92, baseType: !385, size: 64, offset: 1280)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !348, line: 38, flags: DIFlagFwdDecl)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !347, file: !348, line: 93, baseType: !366, size: 64, offset: 1344)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !347, file: !348, line: 94, baseType: !169, size: 64, offset: 1408)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !347, file: !348, line: 95, baseType: !171, size: 64, offset: 1472)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !347, file: !348, line: 96, baseType: !111, size: 32, offset: 1536)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !347, file: !348, line: 98, baseType: !392, size: 160, offset: 1568)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 20)
!395 = !DILocalVariable(name: "__cnt", scope: !342, file: !100, line: 663, type: !171)
!396 = !DILocalVariable(name: "url_program", scope: !103, file: !100, line: 667, type: !106)
!397 = !DILocalVariable(name: "__ptr", scope: !398, file: !100, line: 705, type: !106)
!398 = distinct !DILexicalBlock(scope: !103, file: !100, line: 705, column: 3)
!399 = !DILocalVariable(name: "__stream", scope: !398, file: !100, line: 705, type: !344)
!400 = !DILocalVariable(name: "__cnt", scope: !398, file: !100, line: 705, type: !171)
!401 = !{i32 7, !"Dwarf Version", i32 5}
!402 = !{i32 2, !"Debug Info Version", i32 3}
!403 = !{i32 1, !"wchar_size", i32 4}
!404 = !{i32 8, !"PIC Level", i32 2}
!405 = !{i32 7, !"PIE Level", i32 2}
!406 = !{i32 7, !"uwtable", i32 2}
!407 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!408 = !{!"Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)"}
!409 = !{!410, !410, i64 0}
!410 = !{!"int", !411, i64 0}
!411 = !{!"omnipotent char", !412, i64 0}
!412 = !{!"Simple C/C++ TBAA"}
!413 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 51, type: !414, scopeLine: 52, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !416, keyInstructions: true)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !111}
!416 = !{!417}
!417 = !DILocalVariable(name: "status", arg: 1, scope: !413, file: !2, line: 51, type: !111)
!418 = !DILocation(line: 0, scope: !413)
!419 = !DILocation(line: 53, column: 14, scope: !420, atomGroup: 1, atomRank: 2)
!420 = distinct !DILexicalBlock(scope: !413, file: !2, line: 53, column: 7)
!421 = !DILocation(line: 53, column: 14, scope: !420, atomGroup: 1, atomRank: 1)
!422 = !DILocation(line: 54, column: 5, scope: !423)
!423 = distinct !DILexicalBlock(scope: !420, file: !2, line: 54, column: 5)
!424 = !{!425, !425, i64 0}
!425 = !{!"p1 _ZTS8_IO_FILE", !426, i64 0}
!426 = !{!"any pointer", !411, i64 0}
!427 = !{!428, !428, i64 0}
!428 = !{!"p1 omnipotent char", !426, i64 0}
!429 = !DILocation(line: 57, column: 15, scope: !430)
!430 = distinct !DILexicalBlock(scope: !420, file: !2, line: 56, column: 5)
!431 = !DILocation(line: 57, column: 58, scope: !430)
!432 = !DILocation(line: 57, column: 7, scope: !430)
!433 = !DILocation(line: 58, column: 14, scope: !430)
!434 = !DILocation(line: 60, column: 5, scope: !430)
!435 = !DILocation(line: 58, column: 7, scope: !430)
!436 = !DILocation(line: 755, column: 10, scope: !437, inlinedAt: !440)
!437 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !100, file: !100, line: 753, type: !438, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !108, keyInstructions: true)
!438 = !DISubroutineType(types: !439)
!439 = !{null}
!440 = distinct !DILocation(line: 62, column: 7, scope: !430)
!441 = !DILocation(line: 757, column: 5, scope: !437, inlinedAt: !440)
!442 = !DILocation(line: 755, column: 3, scope: !437, inlinedAt: !440)
!443 = !DILocation(line: 64, column: 14, scope: !430)
!444 = !DILocation(line: 64, column: 7, scope: !430)
!445 = !DILocation(line: 68, column: 14, scope: !430)
!446 = !DILocation(line: 68, column: 7, scope: !430)
!447 = !DILocation(line: 73, column: 14, scope: !430)
!448 = !DILocation(line: 73, column: 7, scope: !430)
!449 = !DILocation(line: 77, column: 14, scope: !430)
!450 = !DILocation(line: 77, column: 7, scope: !430)
!451 = !DILocation(line: 82, column: 14, scope: !430)
!452 = !DILocation(line: 82, column: 7, scope: !430)
!453 = !DILocation(line: 87, column: 14, scope: !430)
!454 = !DILocation(line: 87, column: 7, scope: !430)
!455 = !DILocation(line: 88, column: 14, scope: !430)
!456 = !DILocation(line: 88, column: 7, scope: !430)
!457 = !DILocalVariable(name: "program", arg: 1, scope: !458, file: !100, line: 855, type: !106)
!458 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !100, file: !100, line: 855, type: !459, scopeLine: 856, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !461, keyInstructions: true)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !106}
!461 = !{!457, !462, !469, !470, !472}
!462 = !DILocalVariable(name: "infomap", scope: !458, file: !100, line: 857, type: !463)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 896, elements: !219)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !458, file: !100, line: 857, size: 128, elements: !466)
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !465, file: !100, line: 857, baseType: !106, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !465, file: !100, line: 857, baseType: !106, size: 64, offset: 64)
!469 = !DILocalVariable(name: "node", scope: !458, file: !100, line: 867, type: !106)
!470 = !DILocalVariable(name: "map_prog", scope: !458, file: !100, line: 868, type: !471)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!472 = !DILocalVariable(name: "url_program", scope: !458, file: !100, line: 881, type: !106)
!473 = !DILocation(line: 0, scope: !458, inlinedAt: !474)
!474 = distinct !DILocation(line: 89, column: 7, scope: !430)
!475 = !DILocation(line: 876, column: 3, scope: !458, inlinedAt: !474)
!476 = !DILocation(line: 882, column: 11, scope: !458, inlinedAt: !474)
!477 = !DILocation(line: 882, column: 3, scope: !458, inlinedAt: !474)
!478 = !DILocation(line: 884, column: 11, scope: !458, inlinedAt: !474)
!479 = !DILocation(line: 884, column: 3, scope: !458, inlinedAt: !474)
!480 = !DILocation(line: 91, column: 3, scope: !413)
!481 = !DISubprogram(name: "__fprintf_chk", scope: !482, file: !482, line: 93, type: !483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!482 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!483 = !DISubroutineType(types: !484)
!484 = !{!111, !485, !111, !486, null}
!485 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !344)
!486 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!487 = !DISubprogram(name: "dcgettext", scope: !488, file: !488, line: 51, type: !489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!488 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!489 = !DISubroutineType(types: !490)
!490 = !{!168, !106, !106, !111}
!491 = !DISubprogram(name: "__printf__", linkageName: "rpl_printf", scope: !492, file: !492, line: 1944, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!492 = !DIFile(filename: "./lib/stdio.h", directory: "/workspaces/Thesis/.build/coreutils")
!493 = !DISubroutineType(types: !494)
!494 = !{!111, !486, null}
!495 = !DISubprogram(name: "fputs_unlocked", scope: !496, file: !496, line: 691, type: !497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!496 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!497 = !DISubroutineType(types: !498)
!498 = !{!111, !486, !485}
!499 = !DILocation(line: 0, scope: !103)
!500 = !DILocation(line: 600, column: 7, scope: !329)
!501 = !DILocation(line: 600, column: 19, scope: !329, atomGroup: 1, atomRank: 2)
!502 = !DILocation(line: 600, column: 19, scope: !329, atomGroup: 1, atomRank: 1)
!503 = !DILocation(line: 604, column: 26, scope: !328, atomGroup: 2, atomRank: 2)
!504 = !DILocation(line: 0, scope: !328)
!505 = !DILocation(line: 605, column: 23, scope: !328, atomGroup: 4, atomRank: 2)
!506 = !DILocation(line: 605, column: 28, scope: !328, atomGroup: 4, atomRank: 1)
!507 = !DILocation(line: 605, column: 32, scope: !328)
!508 = !{!411, !411, i64 0}
!509 = !DILocation(line: 605, column: 32, scope: !328, atomGroup: 5, atomRank: 2)
!510 = !DILocation(line: 605, column: 38, scope: !328, atomGroup: 5, atomRank: 1)
!511 = !DILocalVariable(name: "__s1", arg: 1, scope: !512, file: !513, line: 1368, type: !106)
!512 = distinct !DISubprogram(name: "streq", scope: !513, file: !513, line: 1368, type: !514, scopeLine: 1369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !516, keyInstructions: true)
!513 = !DIFile(filename: "./lib/string.h", directory: "/workspaces/Thesis/.build/coreutils")
!514 = !DISubroutineType(types: !515)
!515 = !{!331, !106, !106}
!516 = !{!511, !517}
!517 = !DILocalVariable(name: "__s2", arg: 2, scope: !512, file: !513, line: 1368, type: !106)
!518 = !DILocation(line: 0, scope: !512, inlinedAt: !519)
!519 = distinct !DILocation(line: 605, column: 41, scope: !328)
!520 = !DILocation(line: 1370, column: 11, scope: !512, inlinedAt: !519)
!521 = !DILocation(line: 1370, column: 10, scope: !512, inlinedAt: !519)
!522 = !DILocation(line: 605, column: 38, scope: !328, atomGroup: 3, atomRank: 2)
!523 = !DILocation(line: 605, column: 38, scope: !328)
!524 = !DILocation(line: 605, column: 19, scope: !328, atomGroup: 3, atomRank: 1)
!525 = !DILocation(line: 606, column: 5, scope: !328)
!526 = !DILocation(line: 607, column: 7, scope: !527)
!527 = distinct !DILexicalBlock(scope: !103, file: !100, line: 607, column: 7)
!528 = !DILocation(line: 607, column: 7, scope: !527, atomGroup: 6, atomRank: 2)
!529 = !DILocation(line: 607, column: 7, scope: !527, atomGroup: 6, atomRank: 1)
!530 = !DILocation(line: 614, column: 37, scope: !103)
!531 = !DILocation(line: 614, column: 35, scope: !103, atomGroup: 9, atomRank: 2)
!532 = !DILocation(line: 615, column: 29, scope: !103, atomGroup: 10, atomRank: 2)
!533 = !DILocation(line: 616, column: 8, scope: !337, atomGroup: 11, atomRank: 2)
!534 = !DILocation(line: 616, column: 7, scope: !337, atomGroup: 11, atomRank: 1)
!535 = !DILocation(line: 0, scope: !335)
!536 = !DILocation(line: 623, column: 24, scope: !336, atomGroup: 14, atomRank: 1)
!537 = !{!538, !538, i64 0}
!538 = !{!"p1 short", !426, i64 0}
!539 = !DILocation(line: 629, column: 7, scope: !335, atomGroup: 90, atomRank: 1)
!540 = !DILocation(line: 630, column: 32, scope: !335, atomGroup: 20, atomRank: 2)
!541 = !DILocation(line: 630, column: 30, scope: !335)
!542 = !DILocation(line: 630, column: 21, scope: !335)
!543 = !{!544, !544, i64 0}
!544 = !{!"short", !411, i64 0}
!545 = !DILocation(line: 630, column: 19, scope: !335)
!546 = !DILocation(line: 630, column: 16, scope: !335, atomGroup: 19, atomRank: 2)
!547 = !DILocation(line: 629, column: 16, scope: !335, atomGroup: 17, atomRank: 2)
!548 = !DILocation(line: 629, column: 30, scope: !335, atomGroup: 17, atomRank: 1)
!549 = !DILocation(line: 629, column: 7, scope: !335, atomGroup: 18, atomRank: 1)
!550 = distinct !{!550, !551, !542, !552}
!551 = !DILocation(line: 629, column: 7, scope: !335)
!552 = !{!"llvm.loop.mustprogress"}
!553 = !DILocation(line: 631, column: 18, scope: !554, atomGroup: 21, atomRank: 2)
!554 = distinct !DILexicalBlock(scope: !335, file: !100, line: 631, column: 11)
!555 = !DILocation(line: 631, column: 18, scope: !554)
!556 = !DILocation(line: 639, column: 23, scope: !103, atomGroup: 24, atomRank: 2)
!557 = !DILocation(line: 644, column: 39, scope: !103, atomGroup: 25, atomRank: 2)
!558 = !DILocation(line: 645, column: 3, scope: !103)
!559 = !DILocation(line: 645, column: 10, scope: !103)
!560 = !DILocation(line: 645, column: 21, scope: !103, atomGroup: 26, atomRank: 1)
!561 = !DILocation(line: 647, column: 32, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !100, line: 647, column: 11)
!563 = distinct !DILexicalBlock(scope: !103, file: !100, line: 646, column: 5)
!564 = !DILocation(line: 647, column: 49, scope: !562, atomGroup: 29, atomRank: 2)
!565 = !DILocation(line: 647, column: 29, scope: !562, atomGroup: 29, atomRank: 1)
!566 = !DILocation(line: 649, column: 11, scope: !567)
!567 = distinct !DILexicalBlock(scope: !563, file: !100, line: 649, column: 11)
!568 = !DILocation(line: 649, column: 11, scope: !567, atomGroup: 31, atomRank: 2)
!569 = !DILocation(line: 649, column: 11, scope: !567, atomGroup: 31, atomRank: 1)
!570 = !DILocation(line: 651, column: 26, scope: !571, atomGroup: 32, atomRank: 2)
!571 = distinct !DILexicalBlock(scope: !572, file: !100, line: 651, column: 15)
!572 = distinct !DILexicalBlock(scope: !567, file: !100, line: 650, column: 9)
!573 = !DILocation(line: 651, column: 34, scope: !571, atomGroup: 32, atomRank: 1)
!574 = !DILocation(line: 651, column: 46, scope: !571)
!575 = !DILocation(line: 651, column: 37, scope: !571)
!576 = !DILocation(line: 651, column: 37, scope: !571, atomGroup: 33, atomRank: 2)
!577 = !DILocation(line: 651, column: 34, scope: !571, atomGroup: 33, atomRank: 1)
!578 = !DILocation(line: 659, column: 16, scope: !563, atomGroup: 38, atomRank: 2)
!579 = distinct !{!579, !558, !580, !552}
!580 = !DILocation(line: 660, column: 5, scope: !103)
!581 = !DILocation(line: 663, column: 33, scope: !103)
!582 = !DILocation(line: 663, column: 43, scope: !103)
!583 = !DILocation(line: 663, column: 3, scope: !103)
!584 = !DILocation(line: 0, scope: !512, inlinedAt: !585)
!585 = distinct !DILocation(line: 667, column: 31, scope: !103)
!586 = !DILocation(line: 0, scope: !512, inlinedAt: !587)
!587 = distinct !DILocation(line: 668, column: 31, scope: !103)
!588 = !DILocation(line: 0, scope: !512, inlinedAt: !589)
!589 = distinct !DILocation(line: 669, column: 31, scope: !103)
!590 = !DILocation(line: 0, scope: !512, inlinedAt: !591)
!591 = distinct !DILocation(line: 670, column: 31, scope: !103)
!592 = !DILocation(line: 0, scope: !512, inlinedAt: !593)
!593 = distinct !DILocation(line: 671, column: 31, scope: !103)
!594 = !DILocation(line: 0, scope: !512, inlinedAt: !595)
!595 = distinct !DILocation(line: 672, column: 31, scope: !103)
!596 = !DILocation(line: 0, scope: !512, inlinedAt: !597)
!597 = distinct !DILocation(line: 673, column: 31, scope: !103)
!598 = !DILocation(line: 0, scope: !512, inlinedAt: !599)
!599 = distinct !DILocation(line: 674, column: 31, scope: !103)
!600 = !DILocation(line: 0, scope: !512, inlinedAt: !601)
!601 = distinct !DILocation(line: 675, column: 31, scope: !103)
!602 = !DILocation(line: 0, scope: !512, inlinedAt: !603)
!603 = distinct !DILocation(line: 676, column: 31, scope: !103)
!604 = !DILocation(line: 682, column: 7, scope: !605)
!605 = distinct !DILexicalBlock(scope: !103, file: !100, line: 682, column: 7)
!606 = !DILocation(line: 682, column: 7, scope: !605, atomGroup: 64, atomRank: 2)
!607 = !DILocation(line: 683, column: 7, scope: !605, atomGroup: 64, atomRank: 1)
!608 = !DILocation(line: 683, column: 10, scope: !605)
!609 = !DILocation(line: 683, column: 10, scope: !605, atomGroup: 65, atomRank: 2)
!610 = !DILocation(line: 683, column: 7, scope: !605, atomGroup: 65, atomRank: 1)
!611 = !DILocation(line: 689, column: 41, scope: !612)
!612 = distinct !DILexicalBlock(scope: !605, file: !100, line: 684, column: 5)
!613 = !DILocation(line: 688, column: 7, scope: !612)
!614 = !DILocation(line: 690, column: 5, scope: !612)
!615 = !DILocation(line: 696, column: 15, scope: !616)
!616 = distinct !DILexicalBlock(scope: !605, file: !100, line: 692, column: 5)
!617 = !DILocation(line: 695, column: 7, scope: !616)
!618 = !DILocation(line: 698, column: 20, scope: !103)
!619 = !DILocation(line: 698, column: 3, scope: !103)
!620 = !DILocation(line: 702, column: 21, scope: !103)
!621 = !DILocation(line: 702, column: 3, scope: !103)
!622 = !DILocation(line: 705, column: 36, scope: !103)
!623 = !DILocation(line: 705, column: 50, scope: !103)
!624 = !DILocation(line: 705, column: 3, scope: !103)
!625 = !DILocation(line: 707, column: 21, scope: !103)
!626 = !DILocation(line: 707, column: 3, scope: !103)
!627 = !DILocation(line: 710, column: 28, scope: !103)
!628 = !DILocation(line: 710, column: 3, scope: !103)
!629 = !DILocation(line: 715, column: 1, scope: !103)
!630 = !DILocation(line: 715, column: 1, scope: !103, atomGroup: 80, atomRank: 1)
!631 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 202, type: !632, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !635, keyInstructions: true)
!632 = !DISubroutineType(types: !633)
!633 = !{!111, !111, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!635 = !{!636, !637, !638, !639, !640, !641, !659, !662, !665}
!636 = !DILocalVariable(name: "argc", arg: 1, scope: !631, file: !2, line: 202, type: !111)
!637 = !DILocalVariable(name: "argv", arg: 2, scope: !631, file: !2, line: 202, type: !634)
!638 = !DILocalVariable(name: "specified_mode", scope: !631, file: !2, line: 204, type: !106)
!639 = !DILocalVariable(name: "optc", scope: !631, file: !2, line: 205, type: !111)
!640 = !DILocalVariable(name: "scontext", scope: !631, file: !2, line: 206, type: !106)
!641 = !DILocalVariable(name: "options", scope: !631, file: !2, line: 207, type: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mkdir_options", file: !2, line: 95, size: 320, elements: !643)
!643 = !{!644, !648, !651, !652, !653, !654, !658}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "make_ancestor_function", scope: !642, file: !2, line: 99, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!111, !106, !106, !169}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "umask_ancestor", scope: !642, file: !2, line: 102, baseType: !649, size: 32, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !127, line: 69, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !129, line: 150, baseType: !130)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "umask_self", scope: !642, file: !2, line: 105, baseType: !649, size: 32, offset: 96)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !642, file: !2, line: 108, baseType: !649, size: 32, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "mode_bits", scope: !642, file: !2, line: 111, baseType: !649, size: 32, offset: 160)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "set_security_context", scope: !642, file: !2, line: 114, baseType: !655, size: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DICompositeType(tag: DW_TAG_structure_type, name: "selabel_handle", file: !657, line: 53, flags: DIFlagFwdDecl)
!657 = !DIFile(filename: "./lib/selinux/label.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "a430a70cff1d2c3fd1539e29c9e5e879")
!658 = !DIDerivedType(tag: DW_TAG_member, name: "created_directory_format", scope: !642, file: !2, line: 117, baseType: !106, size: 64, offset: 256)
!659 = !DILocalVariable(name: "ret", scope: !660, file: !2, line: 279, type: !111)
!660 = distinct !DILexicalBlock(scope: !661, file: !2, line: 278, column: 5)
!661 = distinct !DILexicalBlock(scope: !631, file: !2, line: 277, column: 7)
!662 = !DILocalVariable(name: "umask_value", scope: !663, file: !2, line: 294, type: !649)
!663 = distinct !DILexicalBlock(scope: !664, file: !2, line: 293, column: 5)
!664 = distinct !DILexicalBlock(scope: !631, file: !2, line: 292, column: 7)
!665 = !DILocalVariable(name: "change", scope: !666, file: !2, line: 299, type: !668)
!666 = distinct !DILexicalBlock(scope: !667, file: !2, line: 298, column: 9)
!667 = distinct !DILexicalBlock(scope: !663, file: !2, line: 297, column: 11)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !670, line: 35, flags: DIFlagFwdDecl)
!670 = !DIFile(filename: "./lib/modechange.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "9eab5b9bb2ae0bc3e8fcf755a7ffd94e")
!671 = distinct !DIAssignID()
!672 = !DILocation(line: 0, scope: !631)
!673 = !DILocation(line: 207, column: 3, scope: !631)
!674 = distinct !DIAssignID()
!675 = !DILocation(line: 210, column: 11, scope: !631)
!676 = !DILocation(line: 210, column: 16, scope: !631, atomGroup: 4, atomRank: 1)
!677 = !{!678, !410, i64 16}
!678 = !{!"mkdir_options", !426, i64 0, !410, i64 8, !410, i64 12, !410, i64 16, !410, i64 20, !679, i64 24, !428, i64 32}
!679 = !{!"p1 _ZTS14selabel_handle", !426, i64 0}
!680 = distinct !DIAssignID()
!681 = !DILocation(line: 211, column: 11, scope: !631)
!682 = distinct !DIAssignID()
!683 = !DILocation(line: 212, column: 11, scope: !631)
!684 = !DILocation(line: 212, column: 36, scope: !631, atomGroup: 6, atomRank: 1)
!685 = !DILocation(line: 216, column: 21, scope: !631)
!686 = !DILocation(line: 216, column: 3, scope: !631)
!687 = !DILocation(line: 217, column: 3, scope: !631)
!688 = !DILocation(line: 218, column: 3, scope: !631)
!689 = !DILocation(line: 219, column: 3, scope: !631)
!690 = !DILocation(line: 221, column: 3, scope: !631)
!691 = !DILocation(line: 223, column: 3, scope: !631)
!692 = !DILocation(line: 223, column: 18, scope: !631, atomGroup: 8, atomRank: 2)
!693 = !DILocation(line: 223, column: 3, scope: !631, atomGroup: 10, atomRank: 1)
!694 = distinct !{!694, !691, !695, !552}
!695 = !DILocation(line: 266, column: 5, scope: !631)
!696 = !DILocation(line: 231, column: 28, scope: !697, atomGroup: 14, atomRank: 2)
!697 = distinct !DILexicalBlock(scope: !698, file: !2, line: 226, column: 9)
!698 = distinct !DILexicalBlock(scope: !631, file: !2, line: 224, column: 5)
!699 = !DILocation(line: 232, column: 11, scope: !697, atomGroup: 15, atomRank: 1)
!700 = !DILocation(line: 234, column: 46, scope: !697, atomGroup: 16, atomRank: 2)
!701 = distinct !DIAssignID()
!702 = !DILocation(line: 235, column: 11, scope: !697, atomGroup: 17, atomRank: 1)
!703 = !DILocation(line: 254, column: 20, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !2, line: 254, column: 20)
!705 = distinct !DILexicalBlock(scope: !706, file: !2, line: 242, column: 20)
!706 = distinct !DILexicalBlock(scope: !697, file: !2, line: 237, column: 15)
!707 = !DILocation(line: 254, column: 20, scope: !704, atomGroup: 20, atomRank: 2)
!708 = !DILocation(line: 254, column: 20, scope: !704, atomGroup: 20, atomRank: 1)
!709 = !DILocation(line: 257, column: 22, scope: !710)
!710 = distinct !DILexicalBlock(scope: !704, file: !2, line: 255, column: 13)
!711 = !DILocation(line: 256, column: 15, scope: !710)
!712 = !DILocation(line: 259, column: 13, scope: !710)
!713 = !DILocation(line: 261, column: 9, scope: !697)
!714 = !DILocation(line: 262, column: 9, scope: !697)
!715 = !DILocation(line: 262, column: 49, scope: !697)
!716 = !DILocation(line: 264, column: 11, scope: !697)
!717 = !DILocation(line: 234, column: 44, scope: !697, atomGroup: 16, atomRank: 1)
!718 = !DILocation(line: 228, column: 42, scope: !697, atomGroup: 12, atomRank: 1)
!719 = distinct !DIAssignID()
!720 = !DILocation(line: 268, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !631, file: !2, line: 268, column: 7)
!722 = !DILocation(line: 268, column: 14, scope: !721, atomGroup: 22, atomRank: 2)
!723 = !DILocation(line: 268, column: 14, scope: !721, atomGroup: 22, atomRank: 1)
!724 = !DILocation(line: 270, column: 20, scope: !725)
!725 = distinct !DILexicalBlock(scope: !721, file: !2, line: 269, column: 5)
!726 = !DILocation(line: 270, column: 7, scope: !725)
!727 = !DILocation(line: 271, column: 7, scope: !725)
!728 = !DILocation(line: 292, column: 38, scope: !664, atomGroup: 29, atomRank: 1)
!729 = !DILocation(line: 294, column: 28, scope: !663, atomGroup: 31, atomRank: 2)
!730 = !DILocation(line: 0, scope: !663)
!731 = !DILocation(line: 295, column: 44, scope: !663, atomGroup: 32, atomRank: 2)
!732 = !DILocation(line: 295, column: 15, scope: !663)
!733 = !DILocation(line: 295, column: 30, scope: !663, atomGroup: 32, atomRank: 1)
!734 = !{!678, !410, i64 8}
!735 = distinct !DIAssignID()
!736 = !DILocation(line: 297, column: 11, scope: !667, atomGroup: 33, atomRank: 1)
!737 = !DILocation(line: 299, column: 40, scope: !666, atomGroup: 34, atomRank: 2)
!738 = !DILocation(line: 0, scope: !666)
!739 = !DILocation(line: 300, column: 16, scope: !740, atomGroup: 35, atomRank: 2)
!740 = distinct !DILexicalBlock(scope: !666, file: !2, line: 300, column: 15)
!741 = !DILocation(line: 300, column: 15, scope: !740, atomGroup: 35, atomRank: 1)
!742 = !DILocation(line: 301, column: 37, scope: !740)
!743 = !DILocation(line: 302, column: 20, scope: !740)
!744 = !DILocation(line: 301, column: 13, scope: !740)
!745 = !DILocation(line: 303, column: 26, scope: !666, atomGroup: 36, atomRank: 2)
!746 = !DILocation(line: 303, column: 24, scope: !666, atomGroup: 36, atomRank: 1)
!747 = distinct !DIAssignID()
!748 = !DILocation(line: 305, column: 46, scope: !666)
!749 = !DILocation(line: 305, column: 44, scope: !666, atomGroup: 37, atomRank: 2)
!750 = !DILocation(line: 305, column: 19, scope: !666)
!751 = !DILocation(line: 305, column: 30, scope: !666, atomGroup: 37, atomRank: 1)
!752 = !{!678, !410, i64 12}
!753 = distinct !DIAssignID()
!754 = !DILocation(line: 306, column: 11, scope: !666)
!755 = !DILocation(line: 307, column: 9, scope: !666)
!756 = !DILocation(line: 310, column: 24, scope: !757, atomGroup: 38, atomRank: 1)
!757 = distinct !DILexicalBlock(scope: !667, file: !2, line: 309, column: 9)
!758 = distinct !DIAssignID()
!759 = !DILocation(line: 311, column: 19, scope: !757)
!760 = !DILocation(line: 311, column: 30, scope: !757, atomGroup: 39, atomRank: 1)
!761 = distinct !DIAssignID()
!762 = !DILocation(line: 314, column: 22, scope: !663)
!763 = !DILocation(line: 314, column: 7, scope: !663)
!764 = !DILocation(line: 317, column: 39, scope: !631)
!765 = !DILocation(line: 315, column: 5, scope: !663)
!766 = !DILocation(line: 317, column: 37, scope: !631)
!767 = !DILocation(line: 317, column: 52, scope: !631)
!768 = !DILocation(line: 317, column: 10, scope: !631, atomGroup: 41, atomRank: 2)
!769 = !DILocation(line: 319, column: 1, scope: !631)
!770 = !DILocation(line: 317, column: 3, scope: !631, atomGroup: 41, atomRank: 1)
!771 = !DISubprogram(name: "set_program_name", scope: !772, file: !772, line: 38, type: !459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!772 = !DIFile(filename: "./lib/progname.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3e5536ae3756d6a65acb8e248212c2ee")
!773 = !DISubprogram(name: "setlocale", scope: !774, file: !774, line: 122, type: !775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!774 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!775 = !DISubroutineType(types: !776)
!776 = !{!168, !111, !106}
!777 = !DISubprogram(name: "bindtextdomain", scope: !488, file: !488, line: 86, type: !778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!778 = !DISubroutineType(types: !779)
!779 = !{!168, !106, !106}
!780 = !DISubprogram(name: "textdomain", scope: !488, file: !488, line: 82, type: !781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!781 = !DISubroutineType(types: !782)
!782 = !{!168, !106}
!783 = !DISubprogram(name: "atexit", scope: !784, file: !784, line: 602, type: !785, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!784 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!785 = !DISubroutineType(types: !786)
!786 = !{!111, !787}
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!788 = !DISubprogram(name: "getopt_long", scope: !307, file: !307, line: 66, type: !789, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!789 = !DISubroutineType(types: !790)
!790 = !{!111, !111, !791, !106, !793, !312}
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!794 = distinct !DISubprogram(name: "make_ancestor", scope: !2, file: !2, line: 135, type: !646, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !795, keyInstructions: true)
!795 = !{!796, !797, !798, !799, !802, !803}
!796 = !DILocalVariable(name: "dir", arg: 1, scope: !794, file: !2, line: 135, type: !106)
!797 = !DILocalVariable(name: "component", arg: 2, scope: !794, file: !2, line: 135, type: !106)
!798 = !DILocalVariable(name: "options", arg: 3, scope: !794, file: !2, line: 135, type: !169)
!799 = !DILocalVariable(name: "o", scope: !794, file: !2, line: 137, type: !800)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !642)
!802 = !DILocalVariable(name: "r", scope: !794, file: !2, line: 147, type: !111)
!803 = !DILocalVariable(name: "mkdir_errno", scope: !804, file: !2, line: 150, type: !111)
!804 = distinct !DILexicalBlock(scope: !805, file: !2, line: 149, column: 5)
!805 = distinct !DILexicalBlock(scope: !794, file: !2, line: 148, column: 7)
!806 = !DILocation(line: 0, scope: !794)
!807 = !DILocation(line: 139, column: 10, scope: !808)
!808 = distinct !DILexicalBlock(scope: !794, file: !2, line: 139, column: 7)
!809 = !{!678, !679, i64 24}
!810 = !DILocation(line: 139, column: 7, scope: !808, atomGroup: 2, atomRank: 2)
!811 = !DILocation(line: 140, column: 7, scope: !808, atomGroup: 2, atomRank: 1)
!812 = !DILocalVariable(name: "selabel_handle", arg: 1, scope: !813, file: !814, line: 49, type: !655)
!813 = distinct !DISubprogram(name: "defaultcon", scope: !814, file: !814, line: 49, type: !815, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !817, keyInstructions: true)
!814 = !DIFile(filename: "src/selinux.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "13efa93c67c6cc8e1be8195655a2b752")
!815 = !DISubroutineType(types: !816)
!816 = !{!111, !655, !106, !649}
!817 = !{!812, !818, !819}
!818 = !DILocalVariable(name: "path", arg: 2, scope: !813, file: !814, line: 50, type: !106)
!819 = !DILocalVariable(name: "mode", arg: 3, scope: !813, file: !814, line: 50, type: !649)
!820 = !DILocation(line: 0, scope: !813, inlinedAt: !821)
!821 = distinct !DILocation(line: 140, column: 10, scope: !808)
!822 = !DILocation(line: 51, column: 3, scope: !813, inlinedAt: !821)
!823 = !DILocation(line: 51, column: 9, scope: !813, inlinedAt: !821, atomGroup: 1, atomRank: 1)
!824 = !DILocation(line: 141, column: 7, scope: !808, atomGroup: 4, atomRank: 1)
!825 = !DILocation(line: 145, column: 10, scope: !826)
!826 = distinct !DILexicalBlock(scope: !794, file: !2, line: 145, column: 7)
!827 = !DILocation(line: 145, column: 31, scope: !826)
!828 = !DILocation(line: 145, column: 25, scope: !826, atomGroup: 5, atomRank: 2)
!829 = !DILocation(line: 145, column: 25, scope: !826, atomGroup: 5, atomRank: 1)
!830 = !DILocation(line: 146, column: 5, scope: !826)
!831 = !DILocation(line: 147, column: 11, scope: !794, atomGroup: 6, atomRank: 2)
!832 = !DILocation(line: 148, column: 10, scope: !805)
!833 = !DILocation(line: 148, column: 31, scope: !805)
!834 = !DILocation(line: 148, column: 25, scope: !805, atomGroup: 7, atomRank: 2)
!835 = !DILocation(line: 148, column: 25, scope: !805, atomGroup: 7, atomRank: 1)
!836 = !DILocation(line: 150, column: 25, scope: !804)
!837 = !DILocation(line: 150, column: 25, scope: !804, atomGroup: 8, atomRank: 2)
!838 = !DILocation(line: 0, scope: !804)
!839 = !DILocation(line: 151, column: 7, scope: !804)
!840 = !DILocation(line: 152, column: 13, scope: !804, atomGroup: 9, atomRank: 1)
!841 = !DILocation(line: 153, column: 5, scope: !804)
!842 = !DILocation(line: 154, column: 9, scope: !843, atomGroup: 10, atomRank: 2)
!843 = distinct !DILexicalBlock(scope: !794, file: !2, line: 154, column: 7)
!844 = !DILocation(line: 154, column: 9, scope: !843, atomGroup: 10, atomRank: 1)
!845 = !DILocation(line: 156, column: 15, scope: !846)
!846 = distinct !DILexicalBlock(scope: !843, file: !2, line: 155, column: 5)
!847 = !DILocation(line: 156, column: 41, scope: !846, atomGroup: 11, atomRank: 2)
!848 = !DILocalVariable(name: "dir", arg: 1, scope: !849, file: !2, line: 122, type: !106)
!849 = distinct !DISubprogram(name: "announce_mkdir", scope: !2, file: !2, line: 122, type: !850, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !852, keyInstructions: true)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !106, !169}
!852 = !{!848, !853, !854}
!853 = !DILocalVariable(name: "options", arg: 2, scope: !849, file: !2, line: 122, type: !169)
!854 = !DILocalVariable(name: "o", scope: !849, file: !2, line: 124, type: !800)
!855 = !DILocation(line: 0, scope: !849, inlinedAt: !856)
!856 = distinct !DILocation(line: 157, column: 7, scope: !846)
!857 = !DILocation(line: 125, column: 10, scope: !858, inlinedAt: !856)
!858 = distinct !DILexicalBlock(scope: !849, file: !2, line: 125, column: 7)
!859 = !{!678, !428, i64 32}
!860 = !DILocation(line: 125, column: 7, scope: !858, inlinedAt: !856, atomGroup: 2, atomRank: 2)
!861 = !DILocation(line: 125, column: 7, scope: !858, inlinedAt: !856, atomGroup: 2, atomRank: 1)
!862 = !DILocation(line: 126, column: 19, scope: !858, inlinedAt: !856)
!863 = !DILocation(line: 126, column: 56, scope: !858, inlinedAt: !856)
!864 = !DILocation(line: 126, column: 5, scope: !858, inlinedAt: !856)
!865 = !DILocation(line: 159, column: 3, scope: !794, atomGroup: 13, atomRank: 1)
!866 = !DISubprogram(name: "error", scope: !867, file: !867, line: 31, type: !868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!867 = !DIFile(filename: "/usr/include/error.h", directory: "", checksumkind: CSK_MD5, checksum: "0bac552e7426506dc6623c11568834e0")
!868 = !DISubroutineType(types: !869)
!869 = !{null, !111, !111, !106, null}
!870 = !DISubprogram(name: "version_etc", scope: !871, file: !871, line: 70, type: !872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!871 = !DIFile(filename: "./lib/version-etc.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "7242964c9dbfa69ef19b57250c13e279")
!872 = !DISubroutineType(types: !873)
!873 = !{null, !344, !106, !106, !106, null}
!874 = !DISubprogram(name: "proper_name_lite", scope: !875, file: !875, line: 126, type: !876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!875 = !DIFile(filename: "./lib/propername.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "fdc444d0083bc592737160d9365ffa54")
!876 = !DISubroutineType(types: !877)
!877 = !{!106, !106, !106}
!878 = !DISubprogram(name: "__errno_location", scope: !879, file: !879, line: 37, type: !880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!879 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!880 = !DISubroutineType(types: !881)
!881 = !{!312}
!882 = !DISubprogram(name: "quote", scope: !883, file: !883, line: 49, type: !884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!883 = !DIFile(filename: "./lib/quote.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "4a0796caa167d9859d28846ccf7a0d92")
!884 = !DISubroutineType(types: !885)
!885 = !{!106, !106}
!886 = !DISubprogram(name: "umask", scope: !887, file: !887, line: 380, type: !888, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!887 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!888 = !DISubroutineType(types: !889)
!889 = !{!650, !650}
!890 = !DISubprogram(name: "mode_compile", scope: !670, file: !670, line: 35, type: !891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!891 = !DISubroutineType(types: !892)
!892 = !{!668, !106}
!893 = !DISubprogram(name: "mode_adjust", scope: !670, file: !670, line: 39, type: !894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!894 = !DISubroutineType(types: !895)
!895 = !{!649, !649, !331, !649, !896, !898}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !669)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!899 = !DISubprogram(name: "free", scope: !784, file: !784, line: 555, type: !900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!900 = !DISubroutineType(types: !901)
!901 = !{null, !169}
!902 = !DISubprogram(name: "savewd_process_files", scope: !116, file: !116, line: 154, type: !903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!903 = !DISubroutineType(types: !904)
!904 = !{!111, !111, !634, !905, !169}
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{!111, !168, !908, !169}
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!909 = distinct !DISubprogram(name: "process_dir", scope: !2, file: !2, line: 164, type: !906, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !910, keyInstructions: true)
!910 = !{!911, !912, !913, !914, !915}
!911 = !DILocalVariable(name: "dir", arg: 1, scope: !909, file: !2, line: 164, type: !168)
!912 = !DILocalVariable(name: "wd", arg: 2, scope: !909, file: !2, line: 164, type: !908)
!913 = !DILocalVariable(name: "options", arg: 3, scope: !909, file: !2, line: 164, type: !169)
!914 = !DILocalVariable(name: "o", scope: !909, file: !2, line: 166, type: !800)
!915 = !DILocalVariable(name: "ret", scope: !909, file: !2, line: 178, type: !111)
!916 = !DILocation(line: 0, scope: !909)
!917 = !DILocation(line: 169, column: 10, scope: !918)
!918 = distinct !DILexicalBlock(scope: !909, file: !2, line: 169, column: 7)
!919 = !DILocation(line: 169, column: 7, scope: !918, atomGroup: 2, atomRank: 2)
!920 = !DILocation(line: 178, column: 44, scope: !909)
!921 = !{!678, !426, i64 0}
!922 = !DILocation(line: 169, column: 7, scope: !918, atomGroup: 2, atomRank: 1)
!923 = !DILocation(line: 0, scope: !813, inlinedAt: !924)
!924 = distinct !DILocation(line: 172, column: 14, scope: !925)
!925 = distinct !DILexicalBlock(scope: !926, file: !2, line: 171, column: 11)
!926 = distinct !DILexicalBlock(scope: !918, file: !2, line: 170, column: 5)
!927 = !DILocation(line: 51, column: 3, scope: !813, inlinedAt: !924)
!928 = !DILocation(line: 51, column: 9, scope: !813, inlinedAt: !924, atomGroup: 1, atomRank: 1)
!929 = !DILocation(line: 173, column: 11, scope: !925, atomGroup: 5, atomRank: 1)
!930 = !DILocation(line: 179, column: 35, scope: !909)
!931 = !DILocation(line: 180, column: 35, scope: !909)
!932 = !{!678, !410, i64 20}
!933 = !DILocation(line: 178, column: 14, scope: !909)
!934 = !DILocation(line: 189, column: 27, scope: !935, atomGroup: 7, atomRank: 1)
!935 = distinct !DILexicalBlock(scope: !909, file: !2, line: 189, column: 7)
!936 = !DILocation(line: 189, column: 33, scope: !935)
!937 = !DILocation(line: 189, column: 30, scope: !935, atomGroup: 8, atomRank: 2)
!938 = !DILocation(line: 190, column: 7, scope: !935, atomGroup: 8, atomRank: 1)
!939 = !DILocation(line: 190, column: 13, scope: !935)
!940 = !DILocation(line: 190, column: 10, scope: !935, atomGroup: 9, atomRank: 2)
!941 = !DILocation(line: 190, column: 7, scope: !935, atomGroup: 9, atomRank: 1)
!942 = !DILocalVariable(name: "selabel_handle", arg: 1, scope: !943, file: !814, line: 44, type: !655)
!943 = distinct !DISubprogram(name: "restorecon", scope: !814, file: !814, line: 44, type: !944, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !946, keyInstructions: true)
!944 = !DISubroutineType(types: !945)
!945 = !{!331, !655, !106, !331}
!946 = !{!942, !947, !948}
!947 = !DILocalVariable(name: "path", arg: 2, scope: !943, file: !814, line: 45, type: !106)
!948 = !DILocalVariable(name: "recurse", arg: 3, scope: !943, file: !814, line: 45, type: !331)
!949 = !DILocation(line: 0, scope: !943, inlinedAt: !950)
!950 = distinct !DILocation(line: 192, column: 13, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !2, line: 192, column: 11)
!952 = distinct !DILexicalBlock(scope: !935, file: !2, line: 191, column: 5)
!953 = !DILocation(line: 46, column: 3, scope: !943, inlinedAt: !950)
!954 = !DILocation(line: 46, column: 9, scope: !943, inlinedAt: !950, atomGroup: 1, atomRank: 1)
!955 = !DILocation(line: 193, column: 11, scope: !951, atomGroup: 11, atomRank: 1)
!956 = !DILocation(line: 178, column: 14, scope: !909, atomGroup: 6, atomRank: 2)
!957 = !DILocation(line: 198, column: 3, scope: !909, atomGroup: 13, atomRank: 1)
!958 = !DISubprogram(name: "getenv", scope: !784, file: !784, line: 641, type: !781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!959 = !DISubprogram(name: "strspn", scope: !960, file: !960, line: 297, type: !961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!960 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!961 = !DISubroutineType(types: !962)
!962 = !{!173, !106, !106}
!963 = !DISubprogram(name: "strchr", scope: !960, file: !960, line: 246, type: !964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!964 = !DISubroutineType(types: !965)
!965 = !{!168, !106, !111}
!966 = !DISubprogram(name: "__ctype_b_loc", scope: !139, file: !139, line: 79, type: !967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!967 = !DISubroutineType(types: !968)
!968 = !{!969}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!972 = !DISubprogram(name: "strcspn", scope: !960, file: !960, line: 293, type: !961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!973 = !DISubprogram(name: "fwrite_unlocked", scope: !496, file: !496, line: 704, type: !974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!974 = !DISubroutineType(types: !975)
!975 = !{!171, !976, !171, !171, !485}
!976 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !977)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!979 = !DISubprogram(name: "strncmp", scope: !960, file: !960, line: 159, type: !980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!980 = !DISubroutineType(types: !981)
!981 = !{!111, !106, !106, !171}
!982 = !DISubprogram(name: "strcmp", scope: !960, file: !960, line: 156, type: !983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!983 = !DISubroutineType(types: !984)
!984 = !{!111, !106, !106}
!985 = !DISubprogram(name: "emit_bug_reporting_address", scope: !871, file: !871, line: 77, type: !438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!986 = !DISubprogram(name: "quotearg_style", scope: !154, file: !154, line: 399, type: !987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!987 = !DISubroutineType(types: !988)
!988 = !{!168, !153, !106}
!989 = !DISubprogram(name: "mkdir", scope: !887, file: !887, line: 389, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!990 = !DISubroutineType(types: !991)
!991 = !{!111, !106, !650}
!992 = !DILocation(line: 0, scope: !849)
!993 = !DILocation(line: 125, column: 10, scope: !858)
!994 = !DILocation(line: 125, column: 7, scope: !858, atomGroup: 2, atomRank: 2)
!995 = !DILocation(line: 125, column: 7, scope: !858, atomGroup: 2, atomRank: 1)
!996 = !DILocation(line: 126, column: 19, scope: !858)
!997 = !DILocation(line: 126, column: 56, scope: !858)
!998 = !DILocation(line: 126, column: 5, scope: !858)
!999 = !DILocation(line: 127, column: 1, scope: !849, atomGroup: 3, atomRank: 1)
!1000 = !DISubprogram(name: "prog_fprintf", scope: !1001, file: !1001, line: 22, type: !1002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1001 = !DIFile(filename: "src/prog-fprintf.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "b5da295c76763b71c2b5c4e4d1a53e94")
!1002 = !DISubroutineType(types: !1003)
!1003 = !{null, !344, !106, null}
!1004 = !DISubprogram(name: "make_dir_parents", scope: !1005, file: !1005, line: 29, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1005 = !DIFile(filename: "./lib/mkdir-p.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "80070c79d6672de611bc223edfcff821")
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!331, !168, !908, !645, !169, !649, !1008, !649, !175, !177, !331}
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
