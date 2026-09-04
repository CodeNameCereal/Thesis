; ModuleID = 'src/echo.c'
source_filename = "src/echo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"status == 0\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"src/echo.c\00", align 1, !dbg !7
@__PRETTY_FUNCTION__.usage = private unnamed_addr constant [16 x i8] c"void usage(int)\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [63 x i8] c"Usage: %s [SHORT-OPTION]... [STRING]...\0A  or:  %s LONG-OPTION\0A\00", align 1, !dbg !18
@program_name = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"Echo the STRING(s) to standard output.\0A\0A\00", align 1, !dbg !23
@stdout = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"echo\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [45 x i8] c"  -n     do not output the trailing newline\0A\00", align 1, !dbg !33
@.str.6 = private unnamed_addr constant [53 x i8] c"  -e     enable interpretation of backslash escapes\0A\00", align 1, !dbg !38
@.str.7 = private unnamed_addr constant [64 x i8] c"  -E     disable interpretation of backslash escapes (default)\0A\00", align 1, !dbg !43
@.str.8 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !48
@.str.9 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !53
@.str.10 = private unnamed_addr constant [63 x i8] c"\0AIf -e is in effect, the following sequences are recognized:\0A\0A\00", align 1, !dbg !58
@.str.11 = private unnamed_addr constant [230 x i8] c"  \\\\      backslash\0A  \\a      alert (bell)\0A  \\b      backspace\0A  \\c      produce no further output\0A  \\e      escape\0A  \\f      form feed\0A  \\n      new line\0A  \\r      carriage return\0A  \\t      horizontal tab\0A  \\v      vertical tab\0A\00", align 1, !dbg !60
@.str.12 = private unnamed_addr constant [110 x i8] c"  \\0NNN   byte with octal value NNN (1 to 3 digits)\0A  \\xHH    byte with hexadecimal value HH (1 to 2 digits)\0A\00", align 1, !dbg !65
@.str.13 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1, !dbg !70
@.str.14 = private unnamed_addr constant [107 x i8] c"\0AConsider using the printf(1) command instead,\0Aas it avoids problems when outputting option-like strings.\0A\00", align 1, !dbg !75
@.str.15 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1, !dbg !80
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !83
@.str.18 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !88
@.str.19 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !93
@.str.20 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !98
@.str.21 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !103
@.str.22 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !105
@Version = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [10 x i8] c"Brian Fox\00", align 1, !dbg !110
@.str.24 = private unnamed_addr constant [11 x i8] c"Chet Ramey\00", align 1, !dbg !112
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !114
@.str.25 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !157
@.str.26 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !159
@.str.27 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !161
@.str.28 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !166
@.str.42 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !203
@.str.43 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !208
@.str.44 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !213
@.str.45 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !218
@.str.46 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !223
@.str.47 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !225
@.str.48 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !227
@.str.49 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !229
@.str.53 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !240
@.str.54 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !245
@.str.55 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !250

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !342 {
    #dbg_value(i32 %0, !346, !DIExpression(), !347)
  %2 = icmp eq i32 %0, 0, !dbg !348
  br i1 %2, label %4, label %3, !dbg !351

3:                                                ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 41, ptr noundef nonnull @__PRETTY_FUNCTION__.usage) #11, !dbg !352
  unreachable, !dbg !352

4:                                                ; preds = %1
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #12, !dbg !353
  %6 = load ptr, ptr @program_name, align 8, !dbg !354, !tbaa !355
  %7 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %5, ptr noundef %6, ptr noundef %6) #12, !dbg !358
  %8 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #12, !dbg !359
  %9 = load ptr, ptr @stdout, align 8, !dbg !360, !tbaa !361
  %10 = tail call i32 @fputs_unlocked(ptr noundef %8, ptr noundef %9), !dbg !363
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #12, !dbg !364
  tail call fastcc void @oputs_(ptr noundef %11), !dbg !365
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #12, !dbg !366
  tail call fastcc void @oputs_(ptr noundef %12), !dbg !367
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #12, !dbg !368
  tail call fastcc void @oputs_(ptr noundef %13), !dbg !369
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #12, !dbg !370
  tail call fastcc void @oputs_(ptr noundef %14), !dbg !371
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #12, !dbg !372
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !373
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #12, !dbg !374
  %17 = load ptr, ptr @stdout, align 8, !dbg !375, !tbaa !361
  %18 = tail call i32 @fputs_unlocked(ptr noundef %16, ptr noundef %17), !dbg !376
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #12, !dbg !377
  %20 = load ptr, ptr @stdout, align 8, !dbg !378, !tbaa !361
  %21 = tail call i32 @fputs_unlocked(ptr noundef %19, ptr noundef %20), !dbg !379
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #12, !dbg !380
  %23 = load ptr, ptr @stdout, align 8, !dbg !381, !tbaa !361
  %24 = tail call i32 @fputs_unlocked(ptr noundef %22, ptr noundef %23), !dbg !382
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #12, !dbg !383
  %26 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %25, ptr noundef nonnull @.str.4) #12, !dbg !384
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #12, !dbg !385
  %28 = load ptr, ptr @stdout, align 8, !dbg !386, !tbaa !361
  %29 = tail call i32 @fputs_unlocked(ptr noundef %27, ptr noundef %28), !dbg !387
  tail call fastcc void @emit_ancillary_info(), !dbg !388
  tail call void @exit(i32 noundef 0) #11, !dbg !389
  unreachable, !dbg !389
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !390 i32 @rpl_printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !395 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !399 noundef i32 @fputs_unlocked(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !116 {
    #dbg_value(ptr @.str.4, !253, !DIExpression(), !404)
    #dbg_value(ptr %0, !254, !DIExpression(), !404)
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !405, !tbaa !338
  %3 = icmp eq i32 %2, -1, !dbg !406
  br i1 %3, label %4, label %16, !dbg !407

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.25) #12, !dbg !408
    #dbg_value(ptr %5, !255, !DIExpression(), !409)
  %6 = icmp eq ptr %5, null, !dbg !410
  br i1 %6, label %14, label %7, !dbg !411

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !412, !tbaa !413
  %9 = icmp eq i8 %8, 0, !dbg !414
  br i1 %9, label %14, label %10, !dbg !415

10:                                               ; preds = %7
    #dbg_value(ptr %5, !416, !DIExpression(), !423)
    #dbg_value(ptr @.str.26, !422, !DIExpression(), !423)
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.26) #13, !dbg !425
  %12 = icmp eq i32 %11, 0, !dbg !426
  %13 = zext i1 %12 to i32, !dbg !427
  br label %14, !dbg !428

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !429, !tbaa !338
  br label %16, !dbg !430

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !431
  %18 = icmp eq i32 %17, 0, !dbg !433
  br i1 %18, label %19, label %114, !dbg !434

19:                                               ; preds = %16
    #dbg_value(i8 1, !258, !DIExpression(), !404)
  %20 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.27) #13, !dbg !435
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 %20, !dbg !436
    #dbg_value(ptr %21, !260, !DIExpression(), !404)
  %22 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #13, !dbg !437
    #dbg_value(ptr %22, !261, !DIExpression(), !404)
  %23 = icmp eq ptr %22, null, !dbg !438
  br i1 %23, label %48, label %24, !dbg !439

24:                                               ; preds = %19
    #dbg_value(ptr %21, !262, !DIExpression(), !440)
    #dbg_value(i64 0, !266, !DIExpression(), !440)
  %25 = icmp ult ptr %21, %22
  br i1 %25, label %26, label %48, !dbg !441

26:                                               ; preds = %24
  %27 = tail call ptr @__ctype_b_loc() #14, !dbg !404
  %28 = load ptr, ptr %27, align 8, !tbaa !442
  br label %29, !dbg !444

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %21, %26 ], [ %32, %29 ]
  %31 = phi i64 [ 0, %26 ], [ %41, %29 ]
    #dbg_value(ptr %30, !262, !DIExpression(), !440)
    #dbg_value(i64 %31, !266, !DIExpression(), !440)
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 1, !dbg !445
    #dbg_value(ptr %32, !262, !DIExpression(), !440)
  %33 = load i8, ptr %30, align 1, !dbg !446, !tbaa !413
  %34 = sext i8 %33 to i64, !dbg !447
  %35 = getelementptr inbounds i16, ptr %28, i64 %34, !dbg !447
  %36 = load i16, ptr %35, align 2, !dbg !447, !tbaa !448
  %37 = freeze i16 %36, !dbg !450
  %38 = lshr i16 %37, 13, !dbg !450
  %39 = and i16 %38, 1, !dbg !450
  %40 = zext nneg i16 %39 to i64, !dbg !450
  %41 = add i64 %31, %40, !dbg !451
    #dbg_value(i64 %41, !266, !DIExpression(), !440)
  %42 = icmp ult ptr %32, %22, !dbg !452
  %43 = icmp samesign ult i64 %41, 2, !dbg !453
  %44 = select i1 %42, i1 %43, i1 false, !dbg !453
  br i1 %44, label %29, label %45, !dbg !454, !llvm.loop !455

45:                                               ; preds = %29
  %46 = icmp ne i64 %41, 2, !dbg !458
  %47 = select i1 %46, ptr %22, ptr %21, !dbg !460
  br label %48, !dbg !460

48:                                               ; preds = %45, %19, %24
  %49 = phi ptr [ %21, %19 ], [ %22, %24 ], [ %47, %45 ], !dbg !404
  %50 = phi i1 [ false, %19 ], [ true, %24 ], [ %46, %45 ], !dbg !404
    #dbg_value(i8 poison, !258, !DIExpression(), !404)
    #dbg_value(ptr %49, !261, !DIExpression(), !404)
  %51 = tail call i64 @strcspn(ptr noundef nonnull %49, ptr noundef nonnull @.str.28) #13, !dbg !461
    #dbg_value(i64 %51, !267, !DIExpression(), !404)
  %52 = getelementptr inbounds nuw i8, ptr %49, i64 %51, !dbg !462
    #dbg_value(ptr %52, !268, !DIExpression(), !404)
  br label %53, !dbg !463

53:                                               ; preds = %84, %48
  %54 = phi ptr [ %52, %48 ], [ %85, %84 ], !dbg !404
  %55 = phi i1 [ %50, %48 ], [ %63, %84 ], !dbg !404
    #dbg_value(i8 poison, !258, !DIExpression(), !404)
    #dbg_value(ptr %54, !268, !DIExpression(), !404)
  %56 = load i8, ptr %54, align 1, !dbg !464, !tbaa !413
  switch i8 %56, label %62 [
    i8 0, label %86
    i8 10, label %86
    i8 45, label %57
  ], !dbg !465

57:                                               ; preds = %53
  %58 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !466
  %59 = load i8, ptr %58, align 1, !dbg !466, !tbaa !413
  %60 = icmp ne i8 %59, 45, !dbg !469
  %61 = select i1 %60, i1 %55, i1 false, !dbg !470
  br label %62, !dbg !470

62:                                               ; preds = %57, %53
  %63 = phi i1 [ %55, %53 ], [ %61, %57 ], !dbg !404
    #dbg_value(i8 poison, !258, !DIExpression(), !404)
  %64 = tail call ptr @__ctype_b_loc() #14, !dbg !471
  %65 = load ptr, ptr %64, align 8, !dbg !471, !tbaa !442
  %66 = sext i8 %56 to i64, !dbg !471
  %67 = getelementptr inbounds i16, ptr %65, i64 %66, !dbg !471
  %68 = load i16, ptr %67, align 2, !dbg !471, !tbaa !448
  %69 = and i16 %68, 8192, !dbg !471
  %70 = icmp eq i16 %69, 0, !dbg !473
  br i1 %70, label %84, label %71, !dbg !474

71:                                               ; preds = %62
  %72 = icmp eq i8 %56, 9, !dbg !475
  br i1 %72, label %86, label %73, !dbg !478

73:                                               ; preds = %71
  %74 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !479
  %75 = load i8, ptr %74, align 1, !dbg !479, !tbaa !413
  %76 = sext i8 %75 to i64, !dbg !480
  %77 = getelementptr inbounds i16, ptr %65, i64 %76, !dbg !480
  %78 = load i16, ptr %77, align 2, !dbg !480, !tbaa !448
  %79 = and i16 %78, 8192, !dbg !480
  %80 = icmp eq i16 %79, 0, !dbg !481
  %81 = icmp eq i8 %75, 45
  %82 = or i1 %63, %81
  %83 = select i1 %80, i1 %82, i1 false, !dbg !482
  br i1 %83, label %84, label %86, !dbg !482

84:                                               ; preds = %73, %62
  %85 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !483
    #dbg_value(ptr %85, !268, !DIExpression(), !404)
  br label %53, !dbg !463, !llvm.loop !484

86:                                               ; preds = %53, %53, %71, %73
  %87 = ptrtoint ptr %21 to i64, !dbg !486
  %88 = load ptr, ptr @stdout, align 8, !dbg !487, !tbaa !361
  %89 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %0, i64 noundef 1, i64 noundef %20, ptr noundef %88), !dbg !488
    #dbg_value(ptr @.str.4, !416, !DIExpression(), !489)
    #dbg_value(ptr poison, !422, !DIExpression(), !489)
    #dbg_value(ptr @.str.4, !416, !DIExpression(), !491)
    #dbg_value(ptr poison, !422, !DIExpression(), !491)
    #dbg_value(ptr @.str.4, !416, !DIExpression(), !493)
    #dbg_value(ptr poison, !422, !DIExpression(), !493)
    #dbg_value(ptr @.str.4, !416, !DIExpression(), !495)
    #dbg_value(ptr poison, !422, !DIExpression(), !495)
    #dbg_value(ptr @.str.4, !416, !DIExpression(), !497)
    #dbg_value(ptr poison, !422, !DIExpression(), !497)
    #dbg_value(ptr @.str.4, !416, !DIExpression(), !499)
    #dbg_value(ptr poison, !422, !DIExpression(), !499)
    #dbg_value(ptr @.str.4, !416, !DIExpression(), !501)
    #dbg_value(ptr poison, !422, !DIExpression(), !501)
    #dbg_value(ptr @.str.4, !416, !DIExpression(), !503)
    #dbg_value(ptr poison, !422, !DIExpression(), !503)
    #dbg_value(ptr @.str.4, !416, !DIExpression(), !505)
    #dbg_value(ptr poison, !422, !DIExpression(), !505)
    #dbg_value(ptr @.str.4, !416, !DIExpression(), !507)
    #dbg_value(ptr poison, !422, !DIExpression(), !507)
    #dbg_value(ptr @.str.4, !325, !DIExpression(), !404)
  %90 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(7) @.str.20, i64 noundef 6) #13, !dbg !509
  %91 = icmp eq i32 %90, 0, !dbg !511
  br i1 %91, label %95, label %92, !dbg !512

92:                                               ; preds = %86
  %93 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(10) @.str.21, i64 noundef 9) #13, !dbg !513
  %94 = icmp eq i32 %93, 0, !dbg !514
  br i1 %94, label %95, label %98, !dbg !515

95:                                               ; preds = %92, %86
  %96 = trunc i64 %51 to i32, !dbg !516
  %97 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, i32 noundef %96, ptr noundef nonnull %49) #12, !dbg !518
  br label %101, !dbg !519

98:                                               ; preds = %92
  %99 = trunc i64 %51 to i32, !dbg !520
  %100 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.4, i32 noundef %99, ptr noundef nonnull %49) #12, !dbg !522
  br label %101

101:                                              ; preds = %98, %95
  %102 = load ptr, ptr @stdout, align 8, !dbg !523, !tbaa !361
  %103 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %102), !dbg !524
  %104 = load ptr, ptr @stdout, align 8, !dbg !525, !tbaa !361
  %105 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %104), !dbg !526
  %106 = ptrtoint ptr %54 to i64, !dbg !527
  %107 = sub i64 %106, %87, !dbg !527
  %108 = load ptr, ptr @stdout, align 8, !dbg !528, !tbaa !361
  %109 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %21, i64 noundef 1, i64 noundef %107, ptr noundef %108), !dbg !529
  %110 = load ptr, ptr @stdout, align 8, !dbg !530, !tbaa !361
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %110), !dbg !531
  %112 = load ptr, ptr @stdout, align 8, !dbg !532, !tbaa !361
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.49, ptr noundef %112), !dbg !533
  br label %114, !dbg !534

114:                                              ; preds = %16, %101
  %115 = phi ptr [ %54, %101 ], [ %0, %16 ]
  %116 = load ptr, ptr @stdout, align 8, !dbg !404, !tbaa !361
  %117 = tail call i32 @fputs_unlocked(ptr noundef %115, ptr noundef %116), !dbg !404
  ret void, !dbg !535
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #5 !dbg !536 {
    #dbg_value(ptr @.str.4, !540, !DIExpression(), !552)
    #dbg_value(ptr poison, !549, !DIExpression(), !552)
    #dbg_value(ptr @.str.4, !548, !DIExpression(), !552)
  tail call void @emit_bug_reporting_address() #12, !dbg !553
    #dbg_value(ptr @.str.4, !551, !DIExpression(), !552)
  %1 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #12, !dbg !554
  %2 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.4) #12, !dbg !555
  %3 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #12, !dbg !556
  %4 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.55) #12, !dbg !557
  ret void, !dbg !558
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #7 !dbg !559 {
    #dbg_value(i32 %0, !564, !DIExpression(), !587)
    #dbg_value(ptr %1, !565, !DIExpression(), !587)
    #dbg_value(i8 1, !566, !DIExpression(), !587)
  %3 = tail call ptr @getenv(ptr noundef nonnull @.str.15) #12, !dbg !588
  %4 = icmp ne ptr %3, null, !dbg !589
    #dbg_value(i1 %4, !567, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !587)
  br i1 %4, label %5, label %20, !dbg !590

5:                                                ; preds = %2
  %6 = icmp sgt i32 %0, 1, !dbg !591
  br i1 %6, label %7, label %20, !dbg !592

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !593
  %9 = load ptr, ptr %8, align 8, !dbg !593, !tbaa !355
    #dbg_value(ptr %9, !416, !DIExpression(), !594)
    #dbg_value(ptr poison, !422, !DIExpression(), !594)
  %10 = load i8, ptr %9, align 1, !dbg !596
  %11 = icmp eq i8 %10, 45, !dbg !596
  br i1 %11, label %12, label %20, !dbg !596

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 1, !dbg !596
  %14 = load i8, ptr %13, align 1, !dbg !596
  %15 = icmp eq i8 %14, 110, !dbg !596
  br i1 %15, label %16, label %20, !dbg !596

16:                                               ; preds = %12
  %17 = getelementptr inbounds nuw i8, ptr %9, i64 2, !dbg !596
  %18 = load i8, ptr %17, align 1, !dbg !596
  %19 = icmp eq i8 %18, 0, !dbg !597
  br label %20, !dbg !596

20:                                               ; preds = %16, %12, %7, %5, %2
  %21 = phi i1 [ true, %2 ], [ false, %5 ], [ false, %7 ], [ false, %12 ], [ %19, %16 ]
    #dbg_value(i1 %21, !568, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !587)
    #dbg_value(i8 0, !569, !DIExpression(), !587)
  %22 = load ptr, ptr %1, align 8, !dbg !598, !tbaa !355
  tail call void @set_program_name(ptr noundef %22) #12, !dbg !599
  %23 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.17) #12, !dbg !600
  %24 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #12, !dbg !601
  %25 = tail call ptr @textdomain(ptr noundef nonnull @.str.18) #12, !dbg !602
  %26 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #12, !dbg !603
  %27 = icmp eq i32 %0, 2
  %28 = and i1 %27, %21, !dbg !604
  br i1 %28, label %29, label %43, !dbg !604

29:                                               ; preds = %20
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !606
  %31 = load ptr, ptr %30, align 8, !dbg !606, !tbaa !355
    #dbg_value(ptr %31, !416, !DIExpression(), !609)
    #dbg_value(ptr @.str.20, !422, !DIExpression(), !609)
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(7) @.str.20) #13, !dbg !611
  %33 = icmp eq i32 %32, 0, !dbg !612
  br i1 %33, label %34, label %35, !dbg !613

34:                                               ; preds = %29
  tail call void @usage(i32 noundef 0) #15, !dbg !614
  unreachable, !dbg !614

35:                                               ; preds = %29
    #dbg_value(ptr %31, !416, !DIExpression(), !615)
    #dbg_value(ptr @.str.21, !422, !DIExpression(), !615)
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(10) @.str.21) #13, !dbg !618
  %37 = icmp eq i32 %36, 0, !dbg !619
  br i1 %37, label %38, label %43, !dbg !620

38:                                               ; preds = %35
  %39 = load ptr, ptr @stdout, align 8, !dbg !621, !tbaa !361
  %40 = load ptr, ptr @Version, align 8, !dbg !623, !tbaa !355
  %41 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.23) #12, !dbg !624
  %42 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.24) #12, !dbg !624
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %39, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.22, ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef null) #12, !dbg !625
  br label %255, !dbg !626

43:                                               ; preds = %35, %20
  %44 = add nsw i32 %0, -1, !dbg !627
    #dbg_value(i32 %44, !564, !DIExpression(), !587)
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !628
    #dbg_value(ptr %45, !565, !DIExpression(), !587)
  %46 = icmp sgt i32 %0, 1
  %47 = and i1 %46, %21, !dbg !629
  br i1 %47, label %54, label %89, !dbg !629

48:                                               ; preds = %84, %72
  %49 = phi i1 [ %56, %72 ], [ %85, %84 ], !dbg !630
  %50 = phi i1 [ %58, %72 ], [ %86, %84 ], !dbg !631
  %51 = add nsw i32 %57, -1, !dbg !632
    #dbg_value(i32 %51, !564, !DIExpression(), !587)
  %52 = getelementptr inbounds nuw i8, ptr %55, i64 8, !dbg !633
    #dbg_value(i8 poison, !569, !DIExpression(), !587)
    #dbg_value(i8 poison, !566, !DIExpression(), !587)
    #dbg_value(ptr %52, !565, !DIExpression(), !587)
  %53 = icmp sgt i32 %57, 1, !dbg !634
  br i1 %53, label %54, label %96, !dbg !635

54:                                               ; preds = %43, %48
  %55 = phi ptr [ %52, %48 ], [ %45, %43 ], !dbg !636
  %56 = phi i1 [ %49, %48 ], [ true, %43 ], !dbg !630
  %57 = phi i32 [ %51, %48 ], [ %44, %43 ], !dbg !637
  %58 = phi i1 [ %50, %48 ], [ false, %43 ], !dbg !631
    #dbg_value(i8 poison, !569, !DIExpression(), !587)
    #dbg_value(i32 %57, !564, !DIExpression(), !587)
    #dbg_value(i8 poison, !566, !DIExpression(), !587)
    #dbg_value(ptr %55, !565, !DIExpression(), !587)
  %59 = load ptr, ptr %55, align 8, !dbg !638, !tbaa !355
  %60 = load i8, ptr %59, align 1, !dbg !639, !tbaa !413
  %61 = icmp eq i8 %60, 45, !dbg !640
  br i1 %61, label %62, label %89, !dbg !641

62:                                               ; preds = %54
  %63 = getelementptr inbounds nuw i8, ptr %59, i64 1, !dbg !642
    #dbg_value(ptr %63, !570, !DIExpression(), !643)
    #dbg_value(i64 0, !573, !DIExpression(), !643)
  br label %64, !dbg !644

64:                                               ; preds = %68, %62
  %65 = phi i64 [ 0, %62 ], [ %69, %68 ], !dbg !646
    #dbg_value(i64 %65, !573, !DIExpression(), !643)
  %66 = getelementptr inbounds nuw i8, ptr %63, i64 %65, !dbg !647
  %67 = load i8, ptr %66, align 1, !dbg !647, !tbaa !413
  switch i8 %67, label %89 [
    i8 0, label %70
    i8 101, label %68
    i8 69, label %68
    i8 110, label %68
  ], !dbg !649

68:                                               ; preds = %64, %64, %64
  %69 = add i64 %65, 1, !dbg !650
    #dbg_value(i64 %69, !573, !DIExpression(), !643)
  br label %64, !dbg !651, !llvm.loop !652

70:                                               ; preds = %64
  %71 = icmp eq i64 %65, 0, !dbg !655
  br i1 %71, label %89, label %72, !dbg !657

72:                                               ; preds = %70
    #dbg_value(ptr %63, !570, !DIExpression(), !643)
    #dbg_value(i8 poison, !569, !DIExpression(), !587)
    #dbg_value(i8 poison, !566, !DIExpression(), !587)
  %73 = load i8, ptr %63, align 1, !dbg !658, !tbaa !413
  %74 = icmp eq i8 %73, 0, !dbg !659
  br i1 %74, label %48, label %75, !dbg !660

75:                                               ; preds = %72, %84
  %76 = phi i8 [ %87, %84 ], [ %73, %72 ]
  %77 = phi ptr [ %80, %84 ], [ %63, %72 ]
  %78 = phi i1 [ %86, %84 ], [ %58, %72 ]
  %79 = phi i1 [ %85, %84 ], [ %56, %72 ]
    #dbg_value(ptr %77, !570, !DIExpression(), !643)
  %80 = getelementptr inbounds nuw i8, ptr %77, i64 1, !dbg !661
    #dbg_value(ptr %80, !570, !DIExpression(), !643)
  switch i8 %76, label %84 [
    i8 101, label %81
    i8 69, label %82
    i8 110, label %83
  ], !dbg !662

81:                                               ; preds = %75
    #dbg_value(i8 1, !569, !DIExpression(), !587)
  br label %84, !dbg !663

82:                                               ; preds = %75
    #dbg_value(i8 0, !569, !DIExpression(), !587)
  br label %84, !dbg !665

83:                                               ; preds = %75
    #dbg_value(i8 0, !566, !DIExpression(), !587)
  br label %84, !dbg !666

84:                                               ; preds = %75, %83, %82, %81
  %85 = phi i1 [ %79, %75 ], [ %79, %81 ], [ %79, %82 ], [ false, %83 ], !dbg !587
  %86 = phi i1 [ %78, %75 ], [ true, %81 ], [ false, %82 ], [ %78, %83 ], !dbg !587
    #dbg_value(ptr %80, !570, !DIExpression(), !643)
    #dbg_value(i8 poison, !569, !DIExpression(), !587)
    #dbg_value(i8 poison, !566, !DIExpression(), !587)
  %87 = load i8, ptr %80, align 1, !dbg !658, !tbaa !413
  %88 = icmp eq i8 %87, 0, !dbg !667
  br i1 %88, label %48, label %75, !dbg !668, !llvm.loop !669

89:                                               ; preds = %70, %54, %64, %43
  %90 = phi ptr [ %55, %64 ], [ %45, %43 ], [ %55, %54 ], [ %55, %70 ], !dbg !636
  %91 = phi i1 [ %56, %64 ], [ true, %43 ], [ %56, %54 ], [ %56, %70 ], !dbg !630
  %92 = phi i32 [ %57, %64 ], [ %44, %43 ], [ %57, %54 ], [ %57, %70 ], !dbg !637
  %93 = phi i1 [ %58, %64 ], [ false, %43 ], [ %58, %54 ], [ %58, %70 ], !dbg !631
    #dbg_value(i8 poison, !569, !DIExpression(), !587)
    #dbg_value(i32 %92, !564, !DIExpression(), !587)
    #dbg_value(i8 poison, !566, !DIExpression(), !587)
    #dbg_value(ptr %90, !565, !DIExpression(), !587)
    #dbg_label(!574, !672)
  %94 = or i1 %4, %93, !dbg !673
    #dbg_value(i32 %92, !564, !DIExpression(), !587)
    #dbg_value(i32 %92, !564, !DIExpression(), !587)
    #dbg_value(ptr %90, !565, !DIExpression(), !587)
    #dbg_value(ptr %90, !565, !DIExpression(), !587)
  %95 = icmp sgt i32 %92, 0, !dbg !674
  br i1 %94, label %103, label %97, !dbg !673

96:                                               ; preds = %48
    #dbg_value(i8 poison, !569, !DIExpression(), !587)
    #dbg_value(i32 0, !564, !DIExpression(), !587)
    #dbg_value(i8 poison, !566, !DIExpression(), !587)
    #dbg_value(ptr %52, !565, !DIExpression(), !587)
    #dbg_label(!574, !672)
    #dbg_value(i32 0, !564, !DIExpression(), !587)
    #dbg_value(i32 0, !564, !DIExpression(), !587)
    #dbg_value(ptr poison, !565, !DIExpression(), !587)
    #dbg_value(ptr poison, !565, !DIExpression(), !587)
  br i1 %49, label %244, label %255, !dbg !675

97:                                               ; preds = %89
  br i1 %95, label %98, label %243, !dbg !677

98:                                               ; preds = %97
    #dbg_value(i32 %92, !564, !DIExpression(), !587)
    #dbg_value(ptr %90, !565, !DIExpression(), !587)
  %99 = load ptr, ptr %90, align 8, !dbg !679, !tbaa !355
  %100 = load ptr, ptr @stdout, align 8, !dbg !681, !tbaa !361
  %101 = tail call i32 @fputs_unlocked(ptr noundef %99, ptr noundef %100), !dbg !682
  %102 = icmp eq i32 %92, 1, !dbg !683
  br i1 %102, label %243, label %223, !dbg !685

103:                                              ; preds = %89
  br i1 %95, label %104, label %243, !dbg !686

104:                                              ; preds = %103, %221
  %105 = phi i32 [ %206, %221 ], [ %92, %103 ]
  %106 = phi ptr [ %207, %221 ], [ %90, %103 ]
    #dbg_value(i32 %105, !564, !DIExpression(), !587)
    #dbg_value(ptr %106, !565, !DIExpression(), !587)
  %107 = load ptr, ptr %106, align 8, !dbg !687, !tbaa !355
    #dbg_value(ptr %107, !575, !DIExpression(), !688)
  br label %108, !dbg !689

108:                                              ; preds = %202, %104
  %109 = phi ptr [ %107, %104 ], [ %191, %202 ], !dbg !688
    #dbg_value(ptr %109, !575, !DIExpression(), !688)
  %110 = getelementptr inbounds nuw i8, ptr %109, i64 1, !dbg !690
    #dbg_value(ptr %110, !575, !DIExpression(), !688)
  %111 = load i8, ptr %109, align 1, !dbg !691, !tbaa !413
    #dbg_value(i8 %111, !579, !DIExpression(), !688)
  switch i8 %111, label %190 [
    i8 0, label %205
    i8 92, label %112
  ], !dbg !692

112:                                              ; preds = %108
  %113 = load i8, ptr %110, align 1, !dbg !693, !tbaa !413
  %114 = icmp eq i8 %113, 0, !dbg !694
  br i1 %114, label %190, label %115, !dbg !695

115:                                              ; preds = %112
  %116 = getelementptr inbounds nuw i8, ptr %109, i64 2, !dbg !696
    #dbg_value(ptr %116, !575, !DIExpression(), !688)
    #dbg_value(i8 %113, !579, !DIExpression(), !688)
  switch i8 %113, label %179 [
    i8 97, label %117
    i8 98, label %118
    i8 99, label %255
    i8 101, label %119
    i8 102, label %120
    i8 110, label %121
    i8 114, label %122
    i8 116, label %123
    i8 118, label %124
    i8 120, label %125
    i8 48, label %152
    i8 49, label %158
    i8 50, label %158
    i8 51, label %158
    i8 52, label %158
    i8 53, label %158
    i8 54, label %158
    i8 55, label %158
    i8 92, label %190
  ], !dbg !697

117:                                              ; preds = %115
    #dbg_value(i8 7, !579, !DIExpression(), !688)
  br label %190, !dbg !698

118:                                              ; preds = %115
    #dbg_value(i8 8, !579, !DIExpression(), !688)
  br label %190, !dbg !699

119:                                              ; preds = %115
    #dbg_value(i8 27, !579, !DIExpression(), !688)
  br label %190, !dbg !700

120:                                              ; preds = %115
    #dbg_value(i8 12, !579, !DIExpression(), !688)
  br label %190, !dbg !701

121:                                              ; preds = %115
    #dbg_value(i8 10, !579, !DIExpression(), !688)
  br label %190, !dbg !702

122:                                              ; preds = %115
    #dbg_value(i8 13, !579, !DIExpression(), !688)
  br label %190, !dbg !703

123:                                              ; preds = %115
    #dbg_value(i8 9, !579, !DIExpression(), !688)
  br label %190, !dbg !704

124:                                              ; preds = %115
    #dbg_value(i8 11, !579, !DIExpression(), !688)
  br label %190, !dbg !705

125:                                              ; preds = %115
  %126 = load i8, ptr %116, align 1, !dbg !706, !tbaa !413
    #dbg_value(i8 %126, !580, !DIExpression(), !707)
    #dbg_value(i8 %126, !708, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !714)
  switch i8 %126, label %179 [
    i8 48, label %127
    i8 49, label %127
    i8 50, label %127
    i8 51, label %127
    i8 52, label %127
    i8 53, label %127
    i8 54, label %127
    i8 55, label %127
    i8 56, label %127
    i8 57, label %127
    i8 97, label %127
    i8 98, label %127
    i8 99, label %127
    i8 100, label %127
    i8 101, label %127
    i8 102, label %127
    i8 65, label %127
    i8 66, label %127
    i8 67, label %127
    i8 68, label %127
    i8 69, label %127
    i8 70, label %127
  ], !dbg !717

127:                                              ; preds = %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125
  %128 = getelementptr inbounds nuw i8, ptr %109, i64 3, !dbg !718
    #dbg_value(ptr %128, !575, !DIExpression(), !688)
    #dbg_value(i8 %126, !719, !DIExpression(), !724)
  switch i8 %126, label %129 [
    i8 97, label %136
    i8 65, label %136
    i8 98, label %131
    i8 66, label %131
    i8 99, label %132
    i8 67, label %132
    i8 100, label %133
    i8 68, label %133
    i8 101, label %134
    i8 69, label %134
    i8 102, label %135
    i8 70, label %135
  ], !dbg !726

129:                                              ; preds = %127
  %130 = add nsw i8 %126, -48, !dbg !727
  br label %136, !dbg !729

131:                                              ; preds = %127, %127
  br label %136, !dbg !730

132:                                              ; preds = %127, %127
  br label %136, !dbg !731

133:                                              ; preds = %127, %127
  br label %136, !dbg !732

134:                                              ; preds = %127, %127
  br label %136, !dbg !733

135:                                              ; preds = %127, %127
  br label %136, !dbg !734

136:                                              ; preds = %127, %127, %129, %131, %132, %133, %134, %135
  %137 = phi i8 [ %130, %129 ], [ 15, %135 ], [ 11, %131 ], [ 12, %132 ], [ 13, %133 ], [ 14, %134 ], [ 10, %127 ], [ 10, %127 ], !dbg !735
    #dbg_value(i32 poison, !579, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !688)
  %138 = load i8, ptr %128, align 1, !dbg !736, !tbaa !413
    #dbg_value(i8 %138, !580, !DIExpression(), !707)
    #dbg_value(i8 %138, !708, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !737)
  switch i8 %138, label %190 [
    i8 48, label %139
    i8 49, label %139
    i8 50, label %139
    i8 51, label %139
    i8 52, label %139
    i8 53, label %139
    i8 54, label %139
    i8 55, label %139
    i8 56, label %139
    i8 57, label %139
    i8 97, label %139
    i8 98, label %139
    i8 99, label %139
    i8 100, label %139
    i8 101, label %139
    i8 102, label %139
    i8 65, label %139
    i8 66, label %139
    i8 67, label %139
    i8 68, label %139
    i8 69, label %139
    i8 70, label %139
  ], !dbg !740

139:                                              ; preds = %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136
  %140 = getelementptr inbounds nuw i8, ptr %109, i64 4, !dbg !741
    #dbg_value(ptr %140, !575, !DIExpression(), !688)
  %141 = shl i8 %137, 4, !dbg !743
    #dbg_value(i8 %138, !719, !DIExpression(), !744)
  switch i8 %138, label %142 [
    i8 97, label %149
    i8 65, label %149
    i8 98, label %144
    i8 66, label %144
    i8 99, label %145
    i8 67, label %145
    i8 100, label %146
    i8 68, label %146
    i8 101, label %147
    i8 69, label %147
    i8 102, label %148
    i8 70, label %148
  ], !dbg !746

142:                                              ; preds = %139
  %143 = add nsw i8 %138, -48, !dbg !747
  br label %149, !dbg !748

144:                                              ; preds = %139, %139
  br label %149, !dbg !749

145:                                              ; preds = %139, %139
  br label %149, !dbg !750

146:                                              ; preds = %139, %139
  br label %149, !dbg !751

147:                                              ; preds = %139, %139
  br label %149, !dbg !752

148:                                              ; preds = %139, %139
  br label %149, !dbg !753

149:                                              ; preds = %139, %139, %142, %144, %145, %146, %147, %148
  %150 = phi i8 [ %143, %142 ], [ 15, %148 ], [ 11, %144 ], [ 12, %145 ], [ 13, %146 ], [ 14, %147 ], [ 10, %139 ], [ 10, %139 ], !dbg !754
  %151 = add i8 %150, %141, !dbg !755
    #dbg_value(!DIArgList(i32 poison, i32 poison), !579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !688)
  br label %190, !dbg !756

152:                                              ; preds = %115
    #dbg_value(i8 0, !579, !DIExpression(), !688)
  %153 = load i8, ptr %116, align 1, !dbg !757, !tbaa !413
  %154 = and i8 %153, -8, !dbg !759
  %155 = icmp eq i8 %154, 48, !dbg !759
  br i1 %155, label %156, label %190, !dbg !759

156:                                              ; preds = %152
  %157 = getelementptr inbounds nuw i8, ptr %109, i64 3, !dbg !760
    #dbg_value(ptr %157, !575, !DIExpression(), !688)
    #dbg_value(i8 %153, !579, !DIExpression(), !688)
  br label %158, !dbg !761

158:                                              ; preds = %115, %115, %115, %115, %115, %115, %115, %156
  %159 = phi ptr [ %157, %156 ], [ %116, %115 ], [ %116, %115 ], [ %116, %115 ], [ %116, %115 ], [ %116, %115 ], [ %116, %115 ], [ %116, %115 ], !dbg !762
  %160 = phi i8 [ %153, %156 ], [ %113, %115 ], [ %113, %115 ], [ %113, %115 ], [ %113, %115 ], [ %113, %115 ], [ %113, %115 ], [ %113, %115 ], !dbg !762
    #dbg_value(i8 %160, !579, !DIExpression(), !688)
    #dbg_value(ptr %159, !575, !DIExpression(), !688)
  %161 = add nsw i8 %160, -48, !dbg !763
    #dbg_value(i8 %161, !579, !DIExpression(), !688)
  %162 = load i8, ptr %159, align 1, !dbg !764, !tbaa !413
  %163 = and i8 %162, -8, !dbg !766
  %164 = icmp eq i8 %163, 48, !dbg !766
  %165 = shl nuw nsw i8 %161, 3, !dbg !766
  %166 = add nsw i8 %162, -48, !dbg !766
  %167 = add i8 %166, %165, !dbg !766
  %168 = zext i1 %164 to i64, !dbg !766
  %169 = getelementptr inbounds nuw i8, ptr %159, i64 %168, !dbg !766
  %170 = select i1 %164, i8 %167, i8 %161, !dbg !766
    #dbg_value(i8 %170, !579, !DIExpression(), !688)
    #dbg_value(ptr %169, !575, !DIExpression(), !688)
  %171 = load i8, ptr %169, align 1, !dbg !767, !tbaa !413
  %172 = and i8 %171, -8, !dbg !769
  %173 = icmp eq i8 %172, 48, !dbg !769
  br i1 %173, label %174, label %190, !dbg !769

174:                                              ; preds = %158
  %175 = shl i8 %170, 3, !dbg !770
  %176 = getelementptr inbounds nuw i8, ptr %169, i64 1, !dbg !771
    #dbg_value(ptr %176, !575, !DIExpression(), !688)
  %177 = add nsw i8 %171, -48, !dbg !772
  %178 = or disjoint i8 %175, %177, !dbg !773
    #dbg_value(i8 %178, !579, !DIExpression(), !688)
  br label %190, !dbg !774

179:                                              ; preds = %125, %115
    #dbg_value(i8 %113, !579, !DIExpression(), !688)
    #dbg_value(ptr %116, !575, !DIExpression(), !688)
    #dbg_value(i32 92, !775, !DIExpression(), !781)
  %180 = load ptr, ptr @stdout, align 8, !dbg !783, !tbaa !361
  %181 = getelementptr inbounds nuw i8, ptr %180, i64 40, !dbg !784
  %182 = load ptr, ptr %181, align 8, !dbg !784, !tbaa !785
  %183 = getelementptr inbounds nuw i8, ptr %180, i64 48, !dbg !784
  %184 = load ptr, ptr %183, align 8, !dbg !784, !tbaa !791
  %185 = icmp ult ptr %182, %184, !dbg !784
  br i1 %185, label %188, label %186, !dbg !792, !prof !793

186:                                              ; preds = %179
  %187 = tail call i32 @__overflow(ptr noundef nonnull %180, i32 noundef 92) #12, !dbg !784
  br label %190, !dbg !784

188:                                              ; preds = %179
  %189 = getelementptr inbounds nuw i8, ptr %182, i64 1, !dbg !794
  store ptr %189, ptr %181, align 8, !dbg !795, !tbaa !785
  store i8 92, ptr %182, align 1, !dbg !796, !tbaa !413
  br label %190, !dbg !784

190:                                              ; preds = %136, %149, %188, %186, %108, %117, %118, %119, %120, %121, %122, %123, %124, %115, %152, %174, %158, %112
  %191 = phi ptr [ %116, %115 ], [ %116, %117 ], [ %116, %118 ], [ %116, %119 ], [ %116, %120 ], [ %116, %121 ], [ %116, %122 ], [ %116, %123 ], [ %116, %124 ], [ %116, %188 ], [ %176, %174 ], [ %110, %112 ], [ %169, %158 ], [ %110, %108 ], [ %116, %152 ], [ %116, %186 ], [ %140, %149 ], [ %128, %136 ], !dbg !688
  %192 = phi i8 [ %113, %115 ], [ 7, %117 ], [ 8, %118 ], [ 27, %119 ], [ 12, %120 ], [ 10, %121 ], [ 13, %122 ], [ 9, %123 ], [ 11, %124 ], [ %113, %188 ], [ %178, %174 ], [ 92, %112 ], [ %170, %158 ], [ %111, %108 ], [ 0, %152 ], [ %113, %186 ], [ %151, %149 ], [ %137, %136 ], !dbg !688
    #dbg_value(i8 %192, !579, !DIExpression(), !688)
    #dbg_value(ptr %191, !575, !DIExpression(), !688)
    #dbg_value(i8 %192, !775, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !797)
  %193 = load ptr, ptr @stdout, align 8, !dbg !799, !tbaa !361
  %194 = getelementptr inbounds nuw i8, ptr %193, i64 40, !dbg !800
  %195 = load ptr, ptr %194, align 8, !dbg !800, !tbaa !785
  %196 = getelementptr inbounds nuw i8, ptr %193, i64 48, !dbg !800
  %197 = load ptr, ptr %196, align 8, !dbg !800, !tbaa !791
  %198 = icmp ult ptr %195, %197, !dbg !800
  br i1 %198, label %203, label %199, !dbg !801, !prof !793

199:                                              ; preds = %190
  %200 = zext i8 %192 to i32, !dbg !802
    #dbg_value(i32 %200, !775, !DIExpression(), !797)
  %201 = tail call i32 @__overflow(ptr noundef nonnull %193, i32 noundef %200) #12, !dbg !800
  br label %202, !dbg !800

202:                                              ; preds = %199, %203
  br label %108, !dbg !690, !llvm.loop !803

203:                                              ; preds = %190
  %204 = getelementptr inbounds nuw i8, ptr %195, i64 1, !dbg !805
  store ptr %204, ptr %194, align 8, !dbg !806, !tbaa !785
  store i8 %192, ptr %195, align 1, !dbg !807, !tbaa !413
  br label %202, !dbg !800

205:                                              ; preds = %108
  %206 = add nsw i32 %105, -1, !dbg !808
    #dbg_value(i32 %206, !564, !DIExpression(), !587)
  %207 = getelementptr inbounds nuw i8, ptr %106, i64 8, !dbg !809
    #dbg_value(ptr %207, !565, !DIExpression(), !587)
  %208 = icmp eq i32 %105, 1, !dbg !810
  br i1 %208, label %209, label %210, !dbg !812

209:                                              ; preds = %205
    #dbg_value(i32 0, !564, !DIExpression(), !587)
    #dbg_value(ptr %207, !565, !DIExpression(), !587)
  br i1 %91, label %244, label %255, !dbg !813

210:                                              ; preds = %205
    #dbg_value(i32 32, !775, !DIExpression(), !814)
  %211 = load ptr, ptr @stdout, align 8, !dbg !816, !tbaa !361
  %212 = getelementptr inbounds nuw i8, ptr %211, i64 40, !dbg !817
  %213 = load ptr, ptr %212, align 8, !dbg !817, !tbaa !785
  %214 = getelementptr inbounds nuw i8, ptr %211, i64 48, !dbg !817
  %215 = load ptr, ptr %214, align 8, !dbg !817, !tbaa !791
  %216 = icmp ult ptr %213, %215, !dbg !817
  br i1 %216, label %219, label %217, !dbg !818, !prof !793

217:                                              ; preds = %210
  %218 = tail call i32 @__overflow(ptr noundef nonnull %211, i32 noundef 32) #12, !dbg !817
  br label %221, !dbg !817

219:                                              ; preds = %210
  %220 = getelementptr inbounds nuw i8, ptr %213, i64 1, !dbg !819
  store ptr %220, ptr %212, align 8, !dbg !820, !tbaa !785
  store i8 32, ptr %213, align 1, !dbg !821, !tbaa !413
  br label %221, !dbg !817

221:                                              ; preds = %219, %217
    #dbg_value(i32 %206, !564, !DIExpression(), !587)
    #dbg_value(ptr %207, !565, !DIExpression(), !587)
  %222 = icmp sgt i32 %105, 1, !dbg !822
  br i1 %222, label %104, label %243, !dbg !823, !llvm.loop !824

223:                                              ; preds = %98, %238
  %224 = phi ptr [ %227, %238 ], [ %90, %98 ]
  %225 = phi i32 [ %226, %238 ], [ %92, %98 ]
  %226 = add nsw i32 %225, -1, !dbg !827
  %227 = getelementptr inbounds nuw i8, ptr %224, i64 8, !dbg !828
    #dbg_value(i32 32, !775, !DIExpression(), !829)
  %228 = load ptr, ptr @stdout, align 8, !dbg !831, !tbaa !361
  %229 = getelementptr inbounds nuw i8, ptr %228, i64 40, !dbg !832
  %230 = load ptr, ptr %229, align 8, !dbg !832, !tbaa !785
  %231 = getelementptr inbounds nuw i8, ptr %228, i64 48, !dbg !832
  %232 = load ptr, ptr %231, align 8, !dbg !832, !tbaa !791
  %233 = icmp ult ptr %230, %232, !dbg !832
  br i1 %233, label %236, label %234, !dbg !833, !prof !793

234:                                              ; preds = %223
  %235 = tail call i32 @__overflow(ptr noundef nonnull %228, i32 noundef 32) #12, !dbg !832
  br label %238, !dbg !832

236:                                              ; preds = %223
  %237 = getelementptr inbounds nuw i8, ptr %230, i64 1, !dbg !834
  store ptr %237, ptr %229, align 8, !dbg !835, !tbaa !785
  store i8 32, ptr %230, align 1, !dbg !836, !tbaa !413
  br label %238, !dbg !832

238:                                              ; preds = %236, %234
    #dbg_value(i32 %226, !564, !DIExpression(), !587)
    #dbg_value(ptr %227, !565, !DIExpression(), !587)
  %239 = load ptr, ptr %227, align 8, !dbg !679, !tbaa !355
  %240 = load ptr, ptr @stdout, align 8, !dbg !681, !tbaa !361
  %241 = tail call i32 @fputs_unlocked(ptr noundef %239, ptr noundef %240), !dbg !682
    #dbg_value(i32 %226, !564, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !587)
    #dbg_value(ptr %227, !565, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !587)
  %242 = icmp eq i32 %226, 1, !dbg !837
  br i1 %242, label %243, label %223, !dbg !838, !llvm.loop !839

243:                                              ; preds = %238, %221, %98, %97, %103
  br i1 %91, label %244, label %255, !dbg !842

244:                                              ; preds = %96, %209, %243
    #dbg_value(i32 10, !775, !DIExpression(), !843)
  %245 = load ptr, ptr @stdout, align 8, !dbg !845, !tbaa !361
  %246 = getelementptr inbounds nuw i8, ptr %245, i64 40, !dbg !846
  %247 = load ptr, ptr %246, align 8, !dbg !846, !tbaa !785
  %248 = getelementptr inbounds nuw i8, ptr %245, i64 48, !dbg !846
  %249 = load ptr, ptr %248, align 8, !dbg !846, !tbaa !791
  %250 = icmp ult ptr %247, %249, !dbg !846
  br i1 %250, label %253, label %251, !dbg !847, !prof !793

251:                                              ; preds = %244
  %252 = tail call i32 @__overflow(ptr noundef nonnull %245, i32 noundef 10) #12, !dbg !846
  br label %255, !dbg !846

253:                                              ; preds = %244
  %254 = getelementptr inbounds nuw i8, ptr %247, i64 1, !dbg !848
  store ptr %254, ptr %246, align 8, !dbg !849, !tbaa !785
  store i8 10, ptr %247, align 1, !dbg !850, !tbaa !413
  br label %255, !dbg !846

255:                                              ; preds = %115, %96, %209, %253, %251, %243, %38
  ret i32 0, !dbg !851
}

; Function Attrs: nofree nounwind memory(read)
declare !dbg !852 noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #8

declare !dbg !856 void @set_program_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !859 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !863 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !866 ptr @textdomain(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !867 i32 @atexit(ptr noundef) local_unnamed_addr #4

declare void @close_stdout() #2

declare !dbg !873 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !877 ptr @proper_name_lite(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !881 i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !885 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !888 ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !894 i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !895 noundef i64 @fwrite_unlocked(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !901 i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

declare !dbg !904 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !907 void @emit_bug_reporting_address() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !908 i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { noreturn }

!llvm.dbg.cu = !{!121}
!llvm.module.flags = !{!330, !331, !332, !333, !334, !335, !336}
!llvm.ident = !{!337}
!llvm.errno.tbaa = !{!338}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/echo.c", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "d9b64a369db03f009b95c0c51f8af9dc")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 12)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 11)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 16)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 63)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 41)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 5)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 45)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 53)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 64)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 50)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 62)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !20, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1840, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 230)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 880, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 110)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1480, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 185)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 856, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 107)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 124, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !16)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 1)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 10)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 24)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 7)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !2, line: 149, type: !90, isLocal: true, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 14)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !90, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !9, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !116, file: !117, line: 594, type: !145, isLocal: true, isDefinition: true)
!116 = distinct !DISubprogram(name: "oputs_", scope: !117, file: !117, line: 592, type: !118, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !252, keyInstructions: true)
!117 = !DIFile(filename: "src/system.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "6a9c30566098770bfb4561b49834f302")
!118 = !DISubroutineType(cc: DW_CC_nocall, types: !119)
!119 = !{null, !120, !120}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!121 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !122, retainedTypes: !142, globals: !151, splitDebugInlining: false, nameTableKind: None)
!122 = !{!123, !127}
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 33, baseType: !124, size: 32, elements: !125)
!124 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!125 = !{!126}
!126 = !DIEnumerator(name: "DEFAULT_ECHO_TO_XPG", value: 0)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !128, line: 46, baseType: !124, size: 32, elements: !129)
!128 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!130 = !DIEnumerator(name: "_ISupper", value: 256)
!131 = !DIEnumerator(name: "_ISlower", value: 512)
!132 = !DIEnumerator(name: "_ISalpha", value: 1024)
!133 = !DIEnumerator(name: "_ISdigit", value: 2048)
!134 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!135 = !DIEnumerator(name: "_ISspace", value: 8192)
!136 = !DIEnumerator(name: "_ISprint", value: 16384)
!137 = !DIEnumerator(name: "_ISgraph", value: 32768)
!138 = !DIEnumerator(name: "_ISblank", value: 1)
!139 = !DIEnumerator(name: "_IScntrl", value: 2)
!140 = !DIEnumerator(name: "_ISpunct", value: 4)
!141 = !DIEnumerator(name: "_ISalnum", value: 8)
!142 = !{!143, !144, !145, !146, !147, !120, !150}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!145 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!146 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !148, line: 18, baseType: !149)
!148 = !DIFile(filename: "/usr/lib/llvm-22/lib/clang/22/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!149 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!150 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!151 = !{!0, !7, !12, !18, !23, !28, !33, !38, !43, !48, !53, !58, !60, !65, !70, !75, !80, !152, !83, !88, !93, !98, !103, !105, !110, !112, !114, !157, !159, !161, !166, !171, !176, !178, !180, !182, !184, !186, !188, !190, !195, !197, !199, !201, !203, !208, !213, !218, !223, !225, !227, !229, !231, !233, !238, !240, !245, !250}
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 3)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !117, line: 604, type: !30, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !117, line: 605, type: !30, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !117, line: 614, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 4)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !117, line: 639, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 6)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !117, line: 667, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 2)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !117, line: 667, type: !30, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !117, line: 668, type: !163, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !117, line: 668, type: !154, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !117, line: 669, type: !30, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !117, line: 670, type: !168, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !117, line: 670, type: !168, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !117, line: 671, type: !100, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !117, line: 672, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 8)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !117, line: 673, type: !90, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !117, line: 674, type: !90, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !117, line: 675, type: !90, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !117, line: 676, type: !90, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !117, line: 688, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 17)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !117, line: 688, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 40)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !117, line: 695, type: !215, isLocal: true, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 15)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !117, line: 695, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 61)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !117, line: 698, type: !154, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !117, line: 702, type: !30, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !117, line: 707, type: !30, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !117, line: 710, type: !192, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !117, line: 858, type: !82, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !117, line: 859, type: !235, isLocal: true, isDefinition: true)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 22)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !117, line: 860, type: !215, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !117, line: 882, type: !242, isLocal: true, isDefinition: true)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 27)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !117, line: 884, type: !247, isLocal: true, isDefinition: true)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 51)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !117, line: 885, type: !3, isLocal: true, isDefinition: true)
!252 = !{!253, !254, !255, !258, !260, !261, !262, !266, !267, !268, !269, !271, !324, !325, !326, !328, !329}
!253 = !DILocalVariable(name: "program", arg: 1, scope: !116, file: !117, line: 592, type: !120)
!254 = !DILocalVariable(name: "option", arg: 2, scope: !116, file: !117, line: 592, type: !120)
!255 = !DILocalVariable(name: "term", scope: !256, file: !117, line: 604, type: !120)
!256 = distinct !DILexicalBlock(scope: !257, file: !117, line: 601, column: 5)
!257 = distinct !DILexicalBlock(scope: !116, file: !117, line: 600, column: 7)
!258 = !DILocalVariable(name: "double_space", scope: !116, file: !117, line: 613, type: !259)
!259 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!260 = !DILocalVariable(name: "first_word", scope: !116, file: !117, line: 614, type: !120)
!261 = !DILocalVariable(name: "option_text", scope: !116, file: !117, line: 615, type: !120)
!262 = !DILocalVariable(name: "s", scope: !263, file: !117, line: 627, type: !120)
!263 = distinct !DILexicalBlock(scope: !264, file: !117, line: 624, column: 5)
!264 = distinct !DILexicalBlock(scope: !265, file: !117, line: 623, column: 12)
!265 = distinct !DILexicalBlock(scope: !116, file: !117, line: 616, column: 7)
!266 = !DILocalVariable(name: "spaces", scope: !263, file: !117, line: 628, type: !147)
!267 = !DILocalVariable(name: "anchor_len", scope: !116, file: !117, line: 639, type: !147)
!268 = !DILocalVariable(name: "desc_text", scope: !116, file: !117, line: 644, type: !120)
!269 = !DILocalVariable(name: "__ptr", scope: !270, file: !117, line: 663, type: !120)
!270 = distinct !DILexicalBlock(scope: !116, file: !117, line: 663, column: 3)
!271 = !DILocalVariable(name: "__stream", scope: !270, file: !117, line: 663, type: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !274, line: 7, baseType: !275)
!274 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !276, line: 49, size: 1728, elements: !277)
!276 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !293, !295, !296, !297, !301, !302, !304, !305, !308, !310, !313, !316, !317, !318, !319, !320}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !275, file: !276, line: 51, baseType: !145, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !275, file: !276, line: 54, baseType: !143, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !275, file: !276, line: 55, baseType: !143, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !275, file: !276, line: 56, baseType: !143, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !275, file: !276, line: 57, baseType: !143, size: 64, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !275, file: !276, line: 58, baseType: !143, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !275, file: !276, line: 59, baseType: !143, size: 64, offset: 384)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !275, file: !276, line: 60, baseType: !143, size: 64, offset: 448)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !275, file: !276, line: 61, baseType: !143, size: 64, offset: 512)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !275, file: !276, line: 64, baseType: !143, size: 64, offset: 576)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !275, file: !276, line: 65, baseType: !143, size: 64, offset: 640)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !275, file: !276, line: 66, baseType: !143, size: 64, offset: 704)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !275, file: !276, line: 68, baseType: !291, size: 64, offset: 768)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !276, line: 36, flags: DIFlagFwdDecl)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !275, file: !276, line: 70, baseType: !294, size: 64, offset: 832)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !275, file: !276, line: 72, baseType: !145, size: 32, offset: 896)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !275, file: !276, line: 73, baseType: !145, size: 32, offset: 928)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !275, file: !276, line: 74, baseType: !298, size: 64, offset: 960)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !299, line: 152, baseType: !300)
!299 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!300 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !275, file: !276, line: 77, baseType: !146, size: 16, offset: 1024)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !275, file: !276, line: 78, baseType: !303, size: 8, offset: 1040)
!303 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !275, file: !276, line: 79, baseType: !85, size: 8, offset: 1048)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !275, file: !276, line: 81, baseType: !306, size: 64, offset: 1088)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !276, line: 43, baseType: null)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !275, file: !276, line: 89, baseType: !309, size: 64, offset: 1152)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !299, line: 153, baseType: !300)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !275, file: !276, line: 91, baseType: !311, size: 64, offset: 1216)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !276, line: 37, flags: DIFlagFwdDecl)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !275, file: !276, line: 92, baseType: !314, size: 64, offset: 1280)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !276, line: 38, flags: DIFlagFwdDecl)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !275, file: !276, line: 93, baseType: !294, size: 64, offset: 1344)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !275, file: !276, line: 94, baseType: !144, size: 64, offset: 1408)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !275, file: !276, line: 95, baseType: !147, size: 64, offset: 1472)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !275, file: !276, line: 96, baseType: !145, size: 32, offset: 1536)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !275, file: !276, line: 98, baseType: !321, size: 160, offset: 1568)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 20)
!324 = !DILocalVariable(name: "__cnt", scope: !270, file: !117, line: 663, type: !147)
!325 = !DILocalVariable(name: "url_program", scope: !116, file: !117, line: 667, type: !120)
!326 = !DILocalVariable(name: "__ptr", scope: !327, file: !117, line: 705, type: !120)
!327 = distinct !DILexicalBlock(scope: !116, file: !117, line: 705, column: 3)
!328 = !DILocalVariable(name: "__stream", scope: !327, file: !117, line: 705, type: !272)
!329 = !DILocalVariable(name: "__cnt", scope: !327, file: !117, line: 705, type: !147)
!330 = !{i32 7, !"Dwarf Version", i32 5}
!331 = !{i32 2, !"Debug Info Version", i32 3}
!332 = !{i32 1, !"wchar_size", i32 4}
!333 = !{i32 8, !"PIC Level", i32 2}
!334 = !{i32 7, !"PIE Level", i32 2}
!335 = !{i32 7, !"uwtable", i32 2}
!336 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!337 = !{!"Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)"}
!338 = !{!339, !339, i64 0}
!339 = !{!"int", !340, i64 0}
!340 = !{!"omnipotent char", !341, i64 0}
!341 = !{!"Simple C/C++ TBAA"}
!342 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 37, type: !343, scopeLine: 38, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !345, keyInstructions: true)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !145}
!345 = !{!346}
!346 = !DILocalVariable(name: "status", arg: 1, scope: !342, file: !2, line: 37, type: !145)
!347 = !DILocation(line: 0, scope: !342)
!348 = !DILocation(line: 41, column: 18, scope: !349, atomGroup: 1, atomRank: 2)
!349 = distinct !DILexicalBlock(scope: !350, file: !2, line: 41, column: 11)
!350 = distinct !DILexicalBlock(scope: !342, file: !2, line: 41, column: 3)
!351 = !DILocation(line: 41, column: 18, scope: !349, atomGroup: 1, atomRank: 1)
!352 = !DILocation(line: 41, column: 3, scope: !349)
!353 = !DILocation(line: 43, column: 11, scope: !342)
!354 = !DILocation(line: 46, column: 5, scope: !342)
!355 = !{!356, !356, i64 0}
!356 = !{!"p1 omnipotent char", !357, i64 0}
!357 = !{!"any pointer", !340, i64 0}
!358 = !DILocation(line: 43, column: 3, scope: !342)
!359 = !DILocation(line: 47, column: 10, scope: !342)
!360 = !DILocation(line: 50, column: 5, scope: !342)
!361 = !{!362, !362, i64 0}
!362 = !{!"p1 _ZTS8_IO_FILE", !357, i64 0}
!363 = !DILocation(line: 47, column: 3, scope: !342)
!364 = !DILocation(line: 51, column: 10, scope: !342)
!365 = !DILocation(line: 51, column: 3, scope: !342)
!366 = !DILocation(line: 54, column: 10, scope: !342)
!367 = !DILocation(line: 54, column: 3, scope: !342)
!368 = !DILocation(line: 61, column: 10, scope: !342)
!369 = !DILocation(line: 61, column: 3, scope: !342)
!370 = !DILocation(line: 68, column: 10, scope: !342)
!371 = !DILocation(line: 68, column: 3, scope: !342)
!372 = !DILocation(line: 69, column: 10, scope: !342)
!373 = !DILocation(line: 69, column: 3, scope: !342)
!374 = !DILocation(line: 70, column: 10, scope: !342)
!375 = !DILocation(line: 74, column: 5, scope: !342)
!376 = !DILocation(line: 70, column: 3, scope: !342)
!377 = !DILocation(line: 75, column: 10, scope: !342)
!378 = !DILocation(line: 86, column: 5, scope: !342)
!379 = !DILocation(line: 75, column: 3, scope: !342)
!380 = !DILocation(line: 87, column: 10, scope: !342)
!381 = !DILocation(line: 90, column: 5, scope: !342)
!382 = !DILocation(line: 87, column: 3, scope: !342)
!383 = !DILocation(line: 91, column: 11, scope: !342)
!384 = !DILocation(line: 91, column: 3, scope: !342)
!385 = !DILocation(line: 92, column: 10, scope: !342)
!386 = !DILocation(line: 95, column: 5, scope: !342)
!387 = !DILocation(line: 92, column: 3, scope: !342)
!388 = !DILocation(line: 96, column: 3, scope: !342)
!389 = !DILocation(line: 97, column: 3, scope: !342)
!390 = !DISubprogram(name: "__printf__", linkageName: "rpl_printf", scope: !391, file: !391, line: 1944, type: !392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!391 = !DIFile(filename: "./lib/stdio.h", directory: "/workspaces/Thesis/.build/coreutils")
!392 = !DISubroutineType(types: !393)
!393 = !{!145, !394, null}
!394 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !120)
!395 = !DISubprogram(name: "dcgettext", scope: !396, file: !396, line: 51, type: !397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!396 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!397 = !DISubroutineType(types: !398)
!398 = !{!143, !120, !120, !145}
!399 = !DISubprogram(name: "fputs_unlocked", scope: !400, file: !400, line: 691, type: !401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!400 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!401 = !DISubroutineType(types: !402)
!402 = !{!145, !394, !403}
!403 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !272)
!404 = !DILocation(line: 0, scope: !116)
!405 = !DILocation(line: 600, column: 7, scope: !257)
!406 = !DILocation(line: 600, column: 19, scope: !257, atomGroup: 1, atomRank: 2)
!407 = !DILocation(line: 600, column: 19, scope: !257, atomGroup: 1, atomRank: 1)
!408 = !DILocation(line: 604, column: 26, scope: !256, atomGroup: 2, atomRank: 2)
!409 = !DILocation(line: 0, scope: !256)
!410 = !DILocation(line: 605, column: 23, scope: !256, atomGroup: 4, atomRank: 2)
!411 = !DILocation(line: 605, column: 28, scope: !256, atomGroup: 4, atomRank: 1)
!412 = !DILocation(line: 605, column: 32, scope: !256)
!413 = !{!340, !340, i64 0}
!414 = !DILocation(line: 605, column: 32, scope: !256, atomGroup: 5, atomRank: 2)
!415 = !DILocation(line: 605, column: 38, scope: !256, atomGroup: 5, atomRank: 1)
!416 = !DILocalVariable(name: "__s1", arg: 1, scope: !417, file: !418, line: 1368, type: !120)
!417 = distinct !DISubprogram(name: "streq", scope: !418, file: !418, line: 1368, type: !419, scopeLine: 1369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !421, keyInstructions: true)
!418 = !DIFile(filename: "./lib/string.h", directory: "/workspaces/Thesis/.build/coreutils")
!419 = !DISubroutineType(types: !420)
!420 = !{!259, !120, !120}
!421 = !{!416, !422}
!422 = !DILocalVariable(name: "__s2", arg: 2, scope: !417, file: !418, line: 1368, type: !120)
!423 = !DILocation(line: 0, scope: !417, inlinedAt: !424)
!424 = distinct !DILocation(line: 605, column: 41, scope: !256)
!425 = !DILocation(line: 1370, column: 11, scope: !417, inlinedAt: !424)
!426 = !DILocation(line: 1370, column: 10, scope: !417, inlinedAt: !424)
!427 = !DILocation(line: 605, column: 38, scope: !256, atomGroup: 3, atomRank: 2)
!428 = !DILocation(line: 605, column: 38, scope: !256)
!429 = !DILocation(line: 605, column: 19, scope: !256, atomGroup: 3, atomRank: 1)
!430 = !DILocation(line: 606, column: 5, scope: !256)
!431 = !DILocation(line: 607, column: 7, scope: !432)
!432 = distinct !DILexicalBlock(scope: !116, file: !117, line: 607, column: 7)
!433 = !DILocation(line: 607, column: 7, scope: !432, atomGroup: 6, atomRank: 2)
!434 = !DILocation(line: 607, column: 7, scope: !432, atomGroup: 6, atomRank: 1)
!435 = !DILocation(line: 614, column: 37, scope: !116)
!436 = !DILocation(line: 614, column: 35, scope: !116, atomGroup: 9, atomRank: 2)
!437 = !DILocation(line: 615, column: 29, scope: !116, atomGroup: 10, atomRank: 2)
!438 = !DILocation(line: 616, column: 8, scope: !265, atomGroup: 11, atomRank: 2)
!439 = !DILocation(line: 616, column: 7, scope: !265, atomGroup: 11, atomRank: 1)
!440 = !DILocation(line: 0, scope: !263)
!441 = !DILocation(line: 623, column: 24, scope: !264, atomGroup: 14, atomRank: 1)
!442 = !{!443, !443, i64 0}
!443 = !{!"p1 short", !357, i64 0}
!444 = !DILocation(line: 629, column: 7, scope: !263, atomGroup: 118, atomRank: 1)
!445 = !DILocation(line: 630, column: 32, scope: !263, atomGroup: 20, atomRank: 2)
!446 = !DILocation(line: 630, column: 30, scope: !263)
!447 = !DILocation(line: 630, column: 21, scope: !263)
!448 = !{!449, !449, i64 0}
!449 = !{!"short", !340, i64 0}
!450 = !DILocation(line: 630, column: 19, scope: !263)
!451 = !DILocation(line: 630, column: 16, scope: !263, atomGroup: 19, atomRank: 2)
!452 = !DILocation(line: 629, column: 16, scope: !263, atomGroup: 17, atomRank: 2)
!453 = !DILocation(line: 629, column: 30, scope: !263, atomGroup: 17, atomRank: 1)
!454 = !DILocation(line: 629, column: 7, scope: !263, atomGroup: 18, atomRank: 1)
!455 = distinct !{!455, !456, !447, !457}
!456 = !DILocation(line: 629, column: 7, scope: !263)
!457 = !{!"llvm.loop.mustprogress"}
!458 = !DILocation(line: 631, column: 18, scope: !459, atomGroup: 21, atomRank: 2)
!459 = distinct !DILexicalBlock(scope: !263, file: !117, line: 631, column: 11)
!460 = !DILocation(line: 631, column: 18, scope: !459)
!461 = !DILocation(line: 639, column: 23, scope: !116, atomGroup: 24, atomRank: 2)
!462 = !DILocation(line: 644, column: 39, scope: !116, atomGroup: 25, atomRank: 2)
!463 = !DILocation(line: 645, column: 3, scope: !116)
!464 = !DILocation(line: 645, column: 10, scope: !116)
!465 = !DILocation(line: 645, column: 21, scope: !116, atomGroup: 26, atomRank: 1)
!466 = !DILocation(line: 647, column: 32, scope: !467)
!467 = distinct !DILexicalBlock(scope: !468, file: !117, line: 647, column: 11)
!468 = distinct !DILexicalBlock(scope: !116, file: !117, line: 646, column: 5)
!469 = !DILocation(line: 647, column: 49, scope: !467, atomGroup: 29, atomRank: 2)
!470 = !DILocation(line: 647, column: 29, scope: !467, atomGroup: 29, atomRank: 1)
!471 = !DILocation(line: 649, column: 11, scope: !472)
!472 = distinct !DILexicalBlock(scope: !468, file: !117, line: 649, column: 11)
!473 = !DILocation(line: 649, column: 11, scope: !472, atomGroup: 31, atomRank: 2)
!474 = !DILocation(line: 649, column: 11, scope: !472, atomGroup: 31, atomRank: 1)
!475 = !DILocation(line: 651, column: 26, scope: !476, atomGroup: 32, atomRank: 2)
!476 = distinct !DILexicalBlock(scope: !477, file: !117, line: 651, column: 15)
!477 = distinct !DILexicalBlock(scope: !472, file: !117, line: 650, column: 9)
!478 = !DILocation(line: 651, column: 34, scope: !476, atomGroup: 32, atomRank: 1)
!479 = !DILocation(line: 651, column: 46, scope: !476)
!480 = !DILocation(line: 651, column: 37, scope: !476)
!481 = !DILocation(line: 651, column: 37, scope: !476, atomGroup: 33, atomRank: 2)
!482 = !DILocation(line: 651, column: 34, scope: !476, atomGroup: 33, atomRank: 1)
!483 = !DILocation(line: 659, column: 16, scope: !468, atomGroup: 38, atomRank: 2)
!484 = distinct !{!484, !463, !485, !457}
!485 = !DILocation(line: 660, column: 5, scope: !116)
!486 = !DILocation(line: 663, column: 33, scope: !116)
!487 = !DILocation(line: 663, column: 43, scope: !116)
!488 = !DILocation(line: 663, column: 3, scope: !116)
!489 = !DILocation(line: 0, scope: !417, inlinedAt: !490)
!490 = distinct !DILocation(line: 667, column: 31, scope: !116)
!491 = !DILocation(line: 0, scope: !417, inlinedAt: !492)
!492 = distinct !DILocation(line: 668, column: 31, scope: !116)
!493 = !DILocation(line: 0, scope: !417, inlinedAt: !494)
!494 = distinct !DILocation(line: 669, column: 31, scope: !116)
!495 = !DILocation(line: 0, scope: !417, inlinedAt: !496)
!496 = distinct !DILocation(line: 670, column: 31, scope: !116)
!497 = !DILocation(line: 0, scope: !417, inlinedAt: !498)
!498 = distinct !DILocation(line: 671, column: 31, scope: !116)
!499 = !DILocation(line: 0, scope: !417, inlinedAt: !500)
!500 = distinct !DILocation(line: 672, column: 31, scope: !116)
!501 = !DILocation(line: 0, scope: !417, inlinedAt: !502)
!502 = distinct !DILocation(line: 673, column: 31, scope: !116)
!503 = !DILocation(line: 0, scope: !417, inlinedAt: !504)
!504 = distinct !DILocation(line: 674, column: 31, scope: !116)
!505 = !DILocation(line: 0, scope: !417, inlinedAt: !506)
!506 = distinct !DILocation(line: 675, column: 31, scope: !116)
!507 = !DILocation(line: 0, scope: !417, inlinedAt: !508)
!508 = distinct !DILocation(line: 676, column: 31, scope: !116)
!509 = !DILocation(line: 682, column: 7, scope: !510)
!510 = distinct !DILexicalBlock(scope: !116, file: !117, line: 682, column: 7)
!511 = !DILocation(line: 682, column: 7, scope: !510, atomGroup: 64, atomRank: 2)
!512 = !DILocation(line: 683, column: 7, scope: !510, atomGroup: 64, atomRank: 1)
!513 = !DILocation(line: 683, column: 10, scope: !510)
!514 = !DILocation(line: 683, column: 10, scope: !510, atomGroup: 65, atomRank: 2)
!515 = !DILocation(line: 683, column: 7, scope: !510, atomGroup: 65, atomRank: 1)
!516 = !DILocation(line: 689, column: 41, scope: !517)
!517 = distinct !DILexicalBlock(scope: !510, file: !117, line: 684, column: 5)
!518 = !DILocation(line: 688, column: 7, scope: !517)
!519 = !DILocation(line: 690, column: 5, scope: !517)
!520 = !DILocation(line: 696, column: 15, scope: !521)
!521 = distinct !DILexicalBlock(scope: !510, file: !117, line: 692, column: 5)
!522 = !DILocation(line: 695, column: 7, scope: !521)
!523 = !DILocation(line: 698, column: 20, scope: !116)
!524 = !DILocation(line: 698, column: 3, scope: !116)
!525 = !DILocation(line: 702, column: 21, scope: !116)
!526 = !DILocation(line: 702, column: 3, scope: !116)
!527 = !DILocation(line: 705, column: 36, scope: !116)
!528 = !DILocation(line: 705, column: 50, scope: !116)
!529 = !DILocation(line: 705, column: 3, scope: !116)
!530 = !DILocation(line: 707, column: 21, scope: !116)
!531 = !DILocation(line: 707, column: 3, scope: !116)
!532 = !DILocation(line: 710, column: 28, scope: !116)
!533 = !DILocation(line: 710, column: 3, scope: !116)
!534 = !DILocation(line: 715, column: 1, scope: !116)
!535 = !DILocation(line: 715, column: 1, scope: !116, atomGroup: 80, atomRank: 1)
!536 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !117, file: !117, line: 855, type: !537, scopeLine: 856, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !539, keyInstructions: true)
!537 = !DISubroutineType(cc: DW_CC_nocall, types: !538)
!538 = !{null, !120}
!539 = !{!540, !541, !548, !549, !551}
!540 = !DILocalVariable(name: "program", arg: 1, scope: !536, file: !117, line: 855, type: !120)
!541 = !DILocalVariable(name: "infomap", scope: !536, file: !117, line: 857, type: !542)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 896, elements: !101)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !536, file: !117, line: 857, size: 128, elements: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !544, file: !117, line: 857, baseType: !120, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !544, file: !117, line: 857, baseType: !120, size: 64, offset: 64)
!548 = !DILocalVariable(name: "node", scope: !536, file: !117, line: 867, type: !120)
!549 = !DILocalVariable(name: "map_prog", scope: !536, file: !117, line: 868, type: !550)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!551 = !DILocalVariable(name: "url_program", scope: !536, file: !117, line: 881, type: !120)
!552 = !DILocation(line: 0, scope: !536)
!553 = !DILocation(line: 876, column: 3, scope: !536)
!554 = !DILocation(line: 882, column: 11, scope: !536)
!555 = !DILocation(line: 882, column: 3, scope: !536)
!556 = !DILocation(line: 884, column: 11, scope: !536)
!557 = !DILocation(line: 884, column: 3, scope: !536)
!558 = !DILocation(line: 886, column: 1, scope: !536, atomGroup: 11, atomRank: 1)
!559 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 121, type: !560, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !563, keyInstructions: true)
!560 = !DISubroutineType(types: !561)
!561 = !{!145, !145, !562}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!563 = !{!564, !565, !566, !567, !568, !569, !570, !573, !574, !575, !579, !580, !586}
!564 = !DILocalVariable(name: "argc", arg: 1, scope: !559, file: !2, line: 121, type: !145)
!565 = !DILocalVariable(name: "argv", arg: 2, scope: !559, file: !2, line: 121, type: !562)
!566 = !DILocalVariable(name: "display_return", scope: !559, file: !2, line: 123, type: !259)
!567 = !DILocalVariable(name: "posixly_correct", scope: !559, file: !2, line: 124, type: !259)
!568 = !DILocalVariable(name: "allow_options", scope: !559, file: !2, line: 125, type: !259)
!569 = !DILocalVariable(name: "do_v9", scope: !559, file: !2, line: 132, type: !259)
!570 = !DILocalVariable(name: "temp", scope: !571, file: !2, line: 163, type: !120)
!571 = distinct !DILexicalBlock(scope: !572, file: !2, line: 162, column: 7)
!572 = distinct !DILexicalBlock(scope: !559, file: !2, line: 160, column: 7)
!573 = !DILocalVariable(name: "i", scope: !571, file: !2, line: 164, type: !147)
!574 = !DILabel(scope: !559, name: "just_echo", file: !2, line: 204, column: 1)
!575 = !DILocalVariable(name: "s", scope: !576, file: !2, line: 210, type: !120)
!576 = distinct !DILexicalBlock(scope: !577, file: !2, line: 209, column: 9)
!577 = distinct !DILexicalBlock(scope: !578, file: !2, line: 207, column: 5)
!578 = distinct !DILexicalBlock(scope: !559, file: !2, line: 206, column: 7)
!579 = !DILocalVariable(name: "c", scope: !576, file: !2, line: 211, type: !150)
!580 = !DILocalVariable(name: "ch", scope: !581, file: !2, line: 230, type: !150)
!581 = distinct !DILexicalBlock(scope: !582, file: !2, line: 229, column: 23)
!582 = distinct !DILexicalBlock(scope: !583, file: !2, line: 218, column: 21)
!583 = distinct !DILexicalBlock(scope: !584, file: !2, line: 216, column: 17)
!584 = distinct !DILexicalBlock(scope: !585, file: !2, line: 215, column: 19)
!585 = distinct !DILexicalBlock(scope: !576, file: !2, line: 214, column: 13)
!586 = !DILabel(scope: !582, name: "not_an_escape", file: !2, line: 259, column: 21)
!587 = !DILocation(line: 0, scope: !559)
!588 = !DILocation(line: 124, column: 28, scope: !559)
!589 = !DILocation(line: 124, column: 27, scope: !559)
!590 = !DILocation(line: 127, column: 6, scope: !559, atomGroup: 4, atomRank: 1)
!591 = !DILocation(line: 127, column: 37, scope: !559, atomGroup: 5, atomRank: 2)
!592 = !DILocation(line: 127, column: 44, scope: !559, atomGroup: 5, atomRank: 1)
!593 = !DILocation(line: 127, column: 54, scope: !559)
!594 = !DILocation(line: 0, scope: !417, inlinedAt: !595)
!595 = distinct !DILocation(line: 127, column: 47, scope: !559)
!596 = !DILocation(line: 1370, column: 11, scope: !417, inlinedAt: !595)
!597 = !DILocation(line: 1370, column: 10, scope: !417, inlinedAt: !595)
!598 = !DILocation(line: 135, column: 21, scope: !559)
!599 = !DILocation(line: 135, column: 3, scope: !559)
!600 = !DILocation(line: 136, column: 3, scope: !559)
!601 = !DILocation(line: 137, column: 3, scope: !559)
!602 = !DILocation(line: 138, column: 3, scope: !559)
!603 = !DILocation(line: 140, column: 3, scope: !559)
!604 = !DILocation(line: 144, column: 21, scope: !605, atomGroup: 7, atomRank: 1)
!605 = distinct !DILexicalBlock(scope: !559, file: !2, line: 144, column: 7)
!606 = !DILocation(line: 146, column: 18, scope: !607)
!607 = distinct !DILexicalBlock(scope: !608, file: !2, line: 146, column: 11)
!608 = distinct !DILexicalBlock(scope: !605, file: !2, line: 145, column: 5)
!609 = !DILocation(line: 0, scope: !417, inlinedAt: !610)
!610 = distinct !DILocation(line: 146, column: 11, scope: !607)
!611 = !DILocation(line: 1370, column: 11, scope: !417, inlinedAt: !610)
!612 = !DILocation(line: 1370, column: 10, scope: !417, inlinedAt: !610)
!613 = !DILocation(line: 146, column: 11, scope: !607, atomGroup: 9, atomRank: 1)
!614 = !DILocation(line: 147, column: 9, scope: !607)
!615 = !DILocation(line: 0, scope: !417, inlinedAt: !616)
!616 = distinct !DILocation(line: 149, column: 11, scope: !617)
!617 = distinct !DILexicalBlock(scope: !608, file: !2, line: 149, column: 11)
!618 = !DILocation(line: 1370, column: 11, scope: !417, inlinedAt: !616)
!619 = !DILocation(line: 1370, column: 10, scope: !417, inlinedAt: !616)
!620 = !DILocation(line: 149, column: 11, scope: !617, atomGroup: 10, atomRank: 1)
!621 = !DILocation(line: 151, column: 24, scope: !622)
!622 = distinct !DILexicalBlock(scope: !617, file: !2, line: 150, column: 9)
!623 = !DILocation(line: 151, column: 60, scope: !622)
!624 = !DILocation(line: 151, column: 69, scope: !622)
!625 = !DILocation(line: 151, column: 11, scope: !622)
!626 = !DILocation(line: 153, column: 11, scope: !622, atomGroup: 11, atomRank: 1)
!627 = !DILocation(line: 157, column: 3, scope: !559, atomGroup: 12, atomRank: 2)
!628 = !DILocation(line: 158, column: 3, scope: !559, atomGroup: 13, atomRank: 2)
!629 = !DILocation(line: 160, column: 7, scope: !572, atomGroup: 14, atomRank: 1)
!630 = !DILocation(line: 123, column: 8, scope: !559, atomGroup: 1, atomRank: 1)
!631 = !DILocation(line: 132, column: 8, scope: !559, atomGroup: 6, atomRank: 1)
!632 = !DILocation(line: 200, column: 13, scope: !571, atomGroup: 38, atomRank: 2)
!633 = !DILocation(line: 201, column: 13, scope: !571, atomGroup: 39, atomRank: 2)
!634 = !DILocation(line: 161, column: 17, scope: !572, atomGroup: 15, atomRank: 2)
!635 = !DILocation(line: 161, column: 21, scope: !572, atomGroup: 15, atomRank: 1)
!636 = !DILocation(line: 158, column: 3, scope: !559, atomGroup: 13, atomRank: 1)
!637 = !DILocation(line: 157, column: 3, scope: !559, atomGroup: 12, atomRank: 1)
!638 = !DILocation(line: 161, column: 25, scope: !572)
!639 = !DILocation(line: 161, column: 24, scope: !572)
!640 = !DILocation(line: 161, column: 33, scope: !572)
!641 = !DILocation(line: 161, column: 5, scope: !572, atomGroup: 16, atomRank: 1)
!642 = !DILocation(line: 163, column: 36, scope: !571, atomGroup: 17, atomRank: 2)
!643 = !DILocation(line: 0, scope: !571)
!644 = !DILocation(line: 170, column: 14, scope: !645)
!645 = distinct !DILexicalBlock(scope: !571, file: !2, line: 170, column: 9)
!646 = !DILocation(line: 170, scope: !645, atomGroup: 18, atomRank: 1)
!647 = !DILocation(line: 170, column: 21, scope: !648)
!648 = distinct !DILexicalBlock(scope: !645, file: !2, line: 170, column: 9)
!649 = !DILocation(line: 170, column: 9, scope: !645, atomGroup: 20, atomRank: 1)
!650 = !DILocation(line: 170, column: 31, scope: !648, atomGroup: 24, atomRank: 2)
!651 = !DILocation(line: 170, column: 9, scope: !648)
!652 = distinct !{!652, !653, !654, !457}
!653 = !DILocation(line: 170, column: 9, scope: !645)
!654 = !DILocation(line: 177, column: 13, scope: !645)
!655 = !DILocation(line: 179, column: 15, scope: !656, atomGroup: 26, atomRank: 2)
!656 = distinct !DILexicalBlock(scope: !571, file: !2, line: 179, column: 13)
!657 = !DILocation(line: 179, column: 15, scope: !656, atomGroup: 26, atomRank: 1)
!658 = !DILocation(line: 184, column: 16, scope: !571)
!659 = !DILocation(line: 184, column: 9, scope: !571, atomGroup: 143, atomRank: 1)
!660 = !DILocation(line: 184, column: 9, scope: !571, atomGroup: 144, atomRank: 1)
!661 = !DILocation(line: 185, column: 24, scope: !571, atomGroup: 30, atomRank: 2)
!662 = !DILocation(line: 185, column: 11, scope: !571, atomGroup: 31, atomRank: 1)
!663 = !DILocation(line: 189, column: 15, scope: !664, atomGroup: 33, atomRank: 1)
!664 = distinct !DILexicalBlock(scope: !571, file: !2, line: 186, column: 13)
!665 = !DILocation(line: 193, column: 15, scope: !664, atomGroup: 35, atomRank: 1)
!666 = !DILocation(line: 197, column: 15, scope: !664, atomGroup: 37, atomRank: 1)
!667 = !DILocation(line: 184, column: 9, scope: !571, atomGroup: 28, atomRank: 1)
!668 = !DILocation(line: 184, column: 9, scope: !571, atomGroup: 29, atomRank: 1)
!669 = distinct !{!669, !670, !671, !457}
!670 = !DILocation(line: 184, column: 9, scope: !571)
!671 = !DILocation(line: 198, column: 13, scope: !571)
!672 = !DILocation(line: 204, column: 1, scope: !559)
!673 = !DILocation(line: 206, column: 13, scope: !578, atomGroup: 40, atomRank: 1)
!674 = !DILocation(line: 0, scope: !578)
!675 = !DILocation(line: 283, column: 7, scope: !676, atomGroup: 158, atomRank: 1)
!676 = distinct !DILexicalBlock(scope: !559, file: !2, line: 283, column: 7)
!677 = !DILocation(line: 273, column: 7, scope: !678, atomGroup: 146, atomRank: 1)
!678 = distinct !DILexicalBlock(scope: !578, file: !2, line: 272, column: 5)
!679 = !DILocation(line: 275, column: 18, scope: !680)
!680 = distinct !DILexicalBlock(scope: !678, file: !2, line: 274, column: 9)
!681 = !DILocation(line: 275, column: 27, scope: !680)
!682 = !DILocation(line: 275, column: 11, scope: !680)
!683 = !DILocation(line: 278, column: 20, scope: !684, atomGroup: 163, atomRank: 2)
!684 = distinct !DILexicalBlock(scope: !680, file: !2, line: 278, column: 15)
!685 = !DILocation(line: 278, column: 20, scope: !684, atomGroup: 163, atomRank: 1)
!686 = !DILocation(line: 208, column: 7, scope: !577, atomGroup: 148, atomRank: 1)
!687 = !DILocation(line: 210, column: 27, scope: !576, atomGroup: 44, atomRank: 2)
!688 = !DILocation(line: 0, scope: !576)
!689 = !DILocation(line: 213, column: 11, scope: !576)
!690 = !DILocation(line: 213, column: 25, scope: !576, atomGroup: 46, atomRank: 2)
!691 = !DILocation(line: 213, column: 23, scope: !576, atomGroup: 45, atomRank: 2)
!692 = !DILocation(line: 213, column: 11, scope: !576, atomGroup: 48, atomRank: 1)
!693 = !DILocation(line: 215, column: 32, scope: !584)
!694 = !DILocation(line: 215, column: 32, scope: !584, atomGroup: 50, atomRank: 2)
!695 = !DILocation(line: 215, column: 29, scope: !584, atomGroup: 50, atomRank: 1)
!696 = !DILocation(line: 217, column: 33, scope: !583, atomGroup: 52, atomRank: 2)
!697 = !DILocation(line: 217, column: 19, scope: !583, atomGroup: 53, atomRank: 1)
!698 = !DILocation(line: 219, column: 41, scope: !582, atomGroup: 55, atomRank: 1)
!699 = !DILocation(line: 220, column: 41, scope: !582, atomGroup: 57, atomRank: 1)
!700 = !DILocation(line: 222, column: 43, scope: !582, atomGroup: 60, atomRank: 1)
!701 = !DILocation(line: 223, column: 41, scope: !582, atomGroup: 62, atomRank: 1)
!702 = !DILocation(line: 224, column: 41, scope: !582, atomGroup: 64, atomRank: 1)
!703 = !DILocation(line: 225, column: 41, scope: !582, atomGroup: 66, atomRank: 1)
!704 = !DILocation(line: 226, column: 41, scope: !582, atomGroup: 68, atomRank: 1)
!705 = !DILocation(line: 227, column: 41, scope: !582, atomGroup: 70, atomRank: 1)
!706 = !DILocation(line: 230, column: 44, scope: !581, atomGroup: 71, atomRank: 2)
!707 = !DILocation(line: 0, scope: !581)
!708 = !DILocalVariable(name: "c", arg: 1, scope: !709, file: !710, line: 324, type: !145)
!709 = distinct !DISubprogram(name: "c_isxdigit", scope: !710, file: !710, line: 324, type: !711, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !713, keyInstructions: true)
!710 = !DIFile(filename: "./lib/c-ctype.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!711 = !DISubroutineType(types: !712)
!712 = !{!259, !145}
!713 = !{!708}
!714 = !DILocation(line: 0, scope: !709, inlinedAt: !715)
!715 = distinct !DILocation(line: 231, column: 31, scope: !716)
!716 = distinct !DILexicalBlock(scope: !581, file: !2, line: 231, column: 29)
!717 = !DILocation(line: 326, column: 3, scope: !709, inlinedAt: !715, atomGroup: 1, atomRank: 1)
!718 = !DILocation(line: 233, column: 26, scope: !581, atomGroup: 74, atomRank: 2)
!719 = !DILocalVariable(name: "c", arg: 1, scope: !720, file: !2, line: 102, type: !150)
!720 = distinct !DISubprogram(name: "hextobin", scope: !2, file: !2, line: 102, type: !721, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !723, keyInstructions: true)
!721 = !DISubroutineType(types: !722)
!722 = !{!145, !150}
!723 = !{!719}
!724 = !DILocation(line: 0, scope: !720, inlinedAt: !725)
!725 = distinct !DILocation(line: 234, column: 29, scope: !581)
!726 = !DILocation(line: 104, column: 3, scope: !720, inlinedAt: !725, atomGroup: 1, atomRank: 1)
!727 = !DILocation(line: 106, column: 23, scope: !728, inlinedAt: !725, atomGroup: 2, atomRank: 2)
!728 = distinct !DILexicalBlock(scope: !720, file: !2, line: 105, column: 5)
!729 = !DILocation(line: 106, column: 14, scope: !728, inlinedAt: !725, atomGroup: 2, atomRank: 1)
!730 = !DILocation(line: 108, column: 25, scope: !728, inlinedAt: !725, atomGroup: 4, atomRank: 1)
!731 = !DILocation(line: 109, column: 25, scope: !728, inlinedAt: !725, atomGroup: 5, atomRank: 1)
!732 = !DILocation(line: 110, column: 25, scope: !728, inlinedAt: !725, atomGroup: 6, atomRank: 1)
!733 = !DILocation(line: 111, column: 25, scope: !728, inlinedAt: !725, atomGroup: 7, atomRank: 1)
!734 = !DILocation(line: 112, column: 25, scope: !728, inlinedAt: !725, atomGroup: 8, atomRank: 1)
!735 = !DILocation(line: 0, scope: !728, inlinedAt: !725)
!736 = !DILocation(line: 235, column: 30, scope: !581, atomGroup: 76, atomRank: 2)
!737 = !DILocation(line: 0, scope: !709, inlinedAt: !738)
!738 = distinct !DILocation(line: 236, column: 29, scope: !739)
!739 = distinct !DILexicalBlock(scope: !581, file: !2, line: 236, column: 29)
!740 = !DILocation(line: 326, column: 3, scope: !709, inlinedAt: !738, atomGroup: 1, atomRank: 1)
!741 = !DILocation(line: 238, column: 30, scope: !742, atomGroup: 78, atomRank: 2)
!742 = distinct !DILexicalBlock(scope: !739, file: !2, line: 237, column: 27)
!743 = !DILocation(line: 239, column: 35, scope: !742)
!744 = !DILocation(line: 0, scope: !720, inlinedAt: !745)
!745 = distinct !DILocation(line: 239, column: 42, scope: !742)
!746 = !DILocation(line: 104, column: 3, scope: !720, inlinedAt: !745, atomGroup: 1, atomRank: 1)
!747 = !DILocation(line: 106, column: 23, scope: !728, inlinedAt: !745, atomGroup: 2, atomRank: 2)
!748 = !DILocation(line: 106, column: 14, scope: !728, inlinedAt: !745, atomGroup: 2, atomRank: 1)
!749 = !DILocation(line: 108, column: 25, scope: !728, inlinedAt: !745, atomGroup: 4, atomRank: 1)
!750 = !DILocation(line: 109, column: 25, scope: !728, inlinedAt: !745, atomGroup: 5, atomRank: 1)
!751 = !DILocation(line: 110, column: 25, scope: !728, inlinedAt: !745, atomGroup: 6, atomRank: 1)
!752 = !DILocation(line: 111, column: 25, scope: !728, inlinedAt: !745, atomGroup: 7, atomRank: 1)
!753 = !DILocation(line: 112, column: 25, scope: !728, inlinedAt: !745, atomGroup: 8, atomRank: 1)
!754 = !DILocation(line: 0, scope: !728, inlinedAt: !745)
!755 = !DILocation(line: 239, column: 40, scope: !742, atomGroup: 79, atomRank: 3)
!756 = !DILocation(line: 240, column: 27, scope: !742)
!757 = !DILocation(line: 245, column: 37, scope: !758)
!758 = distinct !DILexicalBlock(scope: !582, file: !2, line: 245, column: 27)
!759 = !DILocation(line: 245, column: 40, scope: !758, atomGroup: 82, atomRank: 1)
!760 = !DILocation(line: 247, column: 29, scope: !582, atomGroup: 86, atomRank: 2)
!761 = !DILocation(line: 247, column: 23, scope: !582)
!762 = !DILocation(line: 0, scope: !583)
!763 = !DILocation(line: 251, column: 25, scope: !582, atomGroup: 87, atomRank: 3)
!764 = !DILocation(line: 252, column: 34, scope: !765)
!765 = distinct !DILexicalBlock(scope: !582, file: !2, line: 252, column: 27)
!766 = !DILocation(line: 252, column: 37, scope: !765, atomGroup: 88, atomRank: 1)
!767 = !DILocation(line: 254, column: 34, scope: !768)
!768 = distinct !DILexicalBlock(scope: !582, file: !2, line: 254, column: 27)
!769 = !DILocation(line: 254, column: 37, scope: !768, atomGroup: 92, atomRank: 1)
!770 = !DILocation(line: 255, column: 31, scope: !768)
!771 = !DILocation(line: 255, column: 40, scope: !768, atomGroup: 95, atomRank: 2)
!772 = !DILocation(line: 255, column: 43, scope: !768)
!773 = !DILocation(line: 255, column: 35, scope: !768, atomGroup: 94, atomRank: 3)
!774 = !DILocation(line: 255, column: 25, scope: !768)
!775 = !DILocalVariable(name: "__c", arg: 1, scope: !776, file: !777, line: 108, type: !145)
!776 = distinct !DISubprogram(name: "putchar_unlocked", scope: !777, file: !777, line: 108, type: !778, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !780, keyInstructions: true)
!777 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!778 = !DISubroutineType(types: !779)
!779 = !{!145, !145}
!780 = !{!775}
!781 = !DILocation(line: 0, scope: !776, inlinedAt: !782)
!782 = distinct !DILocation(line: 260, column: 31, scope: !582)
!783 = !DILocation(line: 110, column: 37, scope: !776, inlinedAt: !782)
!784 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !782)
!785 = !{!786, !356, i64 40}
!786 = !{!"_IO_FILE", !339, i64 0, !356, i64 8, !356, i64 16, !356, i64 24, !356, i64 32, !356, i64 40, !356, i64 48, !356, i64 56, !356, i64 64, !356, i64 72, !356, i64 80, !356, i64 88, !787, i64 96, !362, i64 104, !339, i64 112, !339, i64 116, !788, i64 120, !449, i64 128, !340, i64 130, !340, i64 131, !357, i64 136, !788, i64 144, !789, i64 152, !790, i64 160, !362, i64 168, !357, i64 176, !788, i64 184, !339, i64 192, !340, i64 196}
!787 = !{!"p1 _ZTS10_IO_marker", !357, i64 0}
!788 = !{!"long", !340, i64 0}
!789 = !{!"p1 _ZTS11_IO_codecvt", !357, i64 0}
!790 = !{!"p1 _ZTS13_IO_wide_data", !357, i64 0}
!791 = !{!786, !356, i64 48}
!792 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !782, atomGroup: 2, atomRank: 1)
!793 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!794 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !782, atomGroup: 4, atomRank: 2)
!795 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !782, atomGroup: 4, atomRank: 1)
!796 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !782, atomGroup: 3, atomRank: 1)
!797 = !DILocation(line: 0, scope: !776, inlinedAt: !798)
!798 = distinct !DILocation(line: 263, column: 15, scope: !585)
!799 = !DILocation(line: 110, column: 37, scope: !776, inlinedAt: !798)
!800 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !798)
!801 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !798, atomGroup: 2, atomRank: 1)
!802 = !DILocation(line: 263, column: 24, scope: !585)
!803 = distinct !{!803, !689, !804, !457}
!804 = !DILocation(line: 264, column: 13, scope: !576)
!805 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !798, atomGroup: 4, atomRank: 2)
!806 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !798, atomGroup: 4, atomRank: 1)
!807 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !798, atomGroup: 3, atomRank: 1)
!808 = !DILocation(line: 265, column: 15, scope: !576, atomGroup: 98, atomRank: 2)
!809 = !DILocation(line: 266, column: 15, scope: !576, atomGroup: 99, atomRank: 2)
!810 = !DILocation(line: 267, column: 20, scope: !811, atomGroup: 100, atomRank: 2)
!811 = distinct !DILexicalBlock(scope: !576, file: !2, line: 267, column: 15)
!812 = !DILocation(line: 267, column: 20, scope: !811, atomGroup: 100, atomRank: 1)
!813 = !DILocation(line: 283, column: 7, scope: !676, atomGroup: 160, atomRank: 1)
!814 = !DILocation(line: 0, scope: !776, inlinedAt: !815)
!815 = distinct !DILocation(line: 268, column: 13, scope: !811)
!816 = !DILocation(line: 110, column: 37, scope: !776, inlinedAt: !815)
!817 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !815)
!818 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !815, atomGroup: 2, atomRank: 1)
!819 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !815, atomGroup: 4, atomRank: 2)
!820 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !815, atomGroup: 4, atomRank: 1)
!821 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !815, atomGroup: 3, atomRank: 1)
!822 = !DILocation(line: 208, column: 19, scope: !577, atomGroup: 42, atomRank: 1)
!823 = !DILocation(line: 208, column: 7, scope: !577, atomGroup: 43, atomRank: 1)
!824 = distinct !{!824, !825, !826, !457}
!825 = !DILocation(line: 208, column: 7, scope: !577)
!826 = !DILocation(line: 269, column: 9, scope: !577)
!827 = !DILocation(line: 276, column: 15, scope: !680, atomGroup: 103, atomRank: 2)
!828 = !DILocation(line: 277, column: 15, scope: !680, atomGroup: 104, atomRank: 2)
!829 = !DILocation(line: 0, scope: !776, inlinedAt: !830)
!830 = distinct !DILocation(line: 279, column: 13, scope: !684)
!831 = !DILocation(line: 110, column: 37, scope: !776, inlinedAt: !830)
!832 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !830)
!833 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !830, atomGroup: 2, atomRank: 1)
!834 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !830, atomGroup: 4, atomRank: 2)
!835 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !830, atomGroup: 4, atomRank: 1)
!836 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !830, atomGroup: 3, atomRank: 1)
!837 = !DILocation(line: 278, column: 20, scope: !684, atomGroup: 105, atomRank: 2)
!838 = !DILocation(line: 278, column: 20, scope: !684, atomGroup: 105, atomRank: 1)
!839 = distinct !{!839, !840, !841, !457}
!840 = !DILocation(line: 273, column: 7, scope: !678)
!841 = !DILocation(line: 280, column: 9, scope: !678)
!842 = !DILocation(line: 283, column: 7, scope: !676, atomGroup: 106, atomRank: 1)
!843 = !DILocation(line: 0, scope: !776, inlinedAt: !844)
!844 = distinct !DILocation(line: 284, column: 5, scope: !676)
!845 = !DILocation(line: 110, column: 37, scope: !776, inlinedAt: !844)
!846 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !844)
!847 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !844, atomGroup: 2, atomRank: 1)
!848 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !844, atomGroup: 4, atomRank: 2)
!849 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !844, atomGroup: 4, atomRank: 1)
!850 = !DILocation(line: 110, column: 10, scope: !776, inlinedAt: !844, atomGroup: 3, atomRank: 1)
!851 = !DILocation(line: 286, column: 1, scope: !559, atomGroup: 108, atomRank: 1)
!852 = !DISubprogram(name: "getenv", scope: !853, file: !853, line: 641, type: !854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!853 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!854 = !DISubroutineType(types: !855)
!855 = !{!143, !120}
!856 = !DISubprogram(name: "set_program_name", scope: !857, file: !857, line: 38, type: !858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!857 = !DIFile(filename: "./lib/progname.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3e5536ae3756d6a65acb8e248212c2ee")
!858 = !DISubroutineType(types: !538)
!859 = !DISubprogram(name: "setlocale", scope: !860, file: !860, line: 122, type: !861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!860 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!861 = !DISubroutineType(types: !862)
!862 = !{!143, !145, !120}
!863 = !DISubprogram(name: "bindtextdomain", scope: !396, file: !396, line: 86, type: !864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!864 = !DISubroutineType(types: !865)
!865 = !{!143, !120, !120}
!866 = !DISubprogram(name: "textdomain", scope: !396, file: !396, line: 82, type: !854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!867 = !DISubprogram(name: "atexit", scope: !853, file: !853, line: 602, type: !868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!868 = !DISubroutineType(types: !869)
!869 = !{!145, !870}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{null}
!873 = !DISubprogram(name: "version_etc", scope: !874, file: !874, line: 70, type: !875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!874 = !DIFile(filename: "./lib/version-etc.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "7242964c9dbfa69ef19b57250c13e279")
!875 = !DISubroutineType(types: !876)
!876 = !{null, !272, !120, !120, !120, null}
!877 = !DISubprogram(name: "proper_name_lite", scope: !878, file: !878, line: 126, type: !879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!878 = !DIFile(filename: "./lib/propername.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "fdc444d0083bc592737160d9365ffa54")
!879 = !DISubroutineType(types: !880)
!880 = !{!120, !120, !120}
!881 = !DISubprogram(name: "strspn", scope: !882, file: !882, line: 297, type: !883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!882 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!883 = !DISubroutineType(types: !884)
!884 = !{!149, !120, !120}
!885 = !DISubprogram(name: "strchr", scope: !882, file: !882, line: 246, type: !886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!886 = !DISubroutineType(types: !887)
!887 = !{!143, !120, !145}
!888 = !DISubprogram(name: "__ctype_b_loc", scope: !128, file: !128, line: 79, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!889 = !DISubroutineType(types: !890)
!890 = !{!891}
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!894 = !DISubprogram(name: "strcspn", scope: !882, file: !882, line: 293, type: !883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!895 = !DISubprogram(name: "fwrite_unlocked", scope: !400, file: !400, line: 704, type: !896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!896 = !DISubroutineType(types: !897)
!897 = !{!147, !898, !147, !147, !403}
!898 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !899)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!901 = !DISubprogram(name: "strncmp", scope: !882, file: !882, line: 159, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!902 = !DISubroutineType(types: !903)
!903 = !{!145, !120, !120, !147}
!904 = !DISubprogram(name: "__overflow", scope: !400, file: !400, line: 886, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!905 = !DISubroutineType(types: !906)
!906 = !{!145, !272, !145}
!907 = !DISubprogram(name: "emit_bug_reporting_address", scope: !874, file: !874, line: 77, type: !871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!908 = !DISubprogram(name: "strcmp", scope: !882, file: !882, line: 156, type: !909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!909 = !DISubroutineType(types: !910)
!910 = !{!145, !120, !120}
