; ModuleID = 'src/comm.c'
source_filename = "src/comm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.infomap = type { ptr, ptr }
%struct.linebuffer = type { i64, i64, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Usage: %s [OPTION]... FILE1 FILE2\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [52 x i8] c"Compare sorted files FILE1 and FILE2 line by line.\0A\00", align 1, !dbg !12
@stdout = external global ptr, align 8
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
@hard_LC_COLLATE = internal global i8 0, align 1, !dbg !98
@.str.21 = private unnamed_addr constant [5 x i8] c"123z\00", align 1, !dbg !163
@only_file_1 = internal global i8 1, align 1, !dbg !341
@only_file_2 = internal global i8 1, align 1, !dbg !343
@both = internal global i8 1, align 1, !dbg !345
@delim = internal global i8 10, align 1, !dbg !347
@check_input_order = internal global i32 0, align 4, !dbg !200
@col_sep_len = internal global i64 0, align 8, !dbg !350
@col_sep = internal global ptr @.str.70, align 8, !dbg !357
@optarg = external global ptr, align 8
@.str.22 = private unnamed_addr constant [37 x i8] c"multiple output delimiters specified\00", align 1, !dbg !165
@total_option = internal global i8 0, align 1, !dbg !197
@.str.23 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !170
@Version = external global ptr, align 8
@.str.24 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1, !dbg !175
@.str.25 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !180
@optind = external global i32, align 4
@.str.26 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !185
@.str.27 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1, !dbg !187
@.str.28 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !192
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !202
@.str.29 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !210
@.str.30 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !212
@.str.31 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !214
@.str.32 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !219
@.str.33 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !224
@.str.34 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !229
@.str.35 = private unnamed_addr constant [4 x i8] c"dir\00", align 1, !dbg !231
@.str.36 = private unnamed_addr constant [3 x i8] c"ls\00", align 1, !dbg !233
@.str.37 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1, !dbg !238
@.str.38 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1, !dbg !240
@.str.39 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1, !dbg !242
@.str.40 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1, !dbg !244
@.str.41 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1, !dbg !249
@.str.42 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !254
@.str.43 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !256
@.str.44 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !258
@.str.45 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !260
@.str.46 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !262
@.str.47 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !264
@.str.48 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !266
@.str.49 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !268
@.str.50 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !273
@.str.51 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !278
@.str.52 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !283
@.str.53 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !285
@.str.54 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !287
@.str.55 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !289
@.str.56 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !291
@.str.57 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !293
@.str.58 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !298
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.33, ptr @.str.56 }, %struct.infomap { ptr @.str.19, ptr @.str.57 }, %struct.infomap { ptr @.str.42, ptr @.str.58 }, %struct.infomap { ptr @.str.43, ptr @.str.58 }, %struct.infomap { ptr @.str.44, ptr @.str.58 }, %struct.infomap { ptr @.str.45, ptr @.str.58 }, %struct.infomap zeroinitializer], align 16
@.str.59 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !300
@.str.60 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !305
@.str.61 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !310
@.str.62 = private unnamed_addr constant [12 x i8] c"check-order\00", align 1, !dbg !315
@.str.63 = private unnamed_addr constant [14 x i8] c"nocheck-order\00", align 1, !dbg !317
@.str.64 = private unnamed_addr constant [17 x i8] c"output-delimiter\00", align 1, !dbg !319
@.str.65 = private unnamed_addr constant [6 x i8] c"total\00", align 1, !dbg !321
@.str.66 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1, !dbg !323
@.str.67 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !325
@.str.68 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !327
@long_options = internal constant [8 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.62, i32 0, [4 x i8] zeroinitializer, ptr null, i32 128, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.63, i32 0, [4 x i8] zeroinitializer, ptr null, i32 129, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 130, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.65, i32 0, [4 x i8] zeroinitializer, ptr null, i32 131, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.66, i32 0, [4 x i8] zeroinitializer, ptr null, i32 122, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.67, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -130, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.68, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -131, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16, !dbg !329
@.str.70 = private unnamed_addr constant [2 x i8] c"\09\00", align 1, !dbg !355
@.str.71 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !359
@stdin = external global ptr, align 8
@.str.72 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !361
@.str.73 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !363
@seen_unpairable = internal global i8 0, align 1, !dbg !376
@.str.74 = private unnamed_addr constant [20 x i8] c"%ju%c%ju%c%ju%c%s%c\00", align 1, !dbg !365
@.str.75 = private unnamed_addr constant [20 x i8] c"%ju%s%ju%s%ju%s%s%c\00", align 1, !dbg !367
@issued_disorder_warning = internal global [2 x i8] zeroinitializer, align 1, !dbg !383
@.str.76 = private unnamed_addr constant [29 x i8] c"input is not in sorted order\00", align 1, !dbg !369
@.str.77 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !374
@.str.78 = private unnamed_addr constant [31 x i8] c"file %d is not in sorted order\00", align 1, !dbg !378

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !394 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !397, !DIExpression(), !398)
  %3 = load i32, ptr %2, align 4, !dbg !399
  %4 = icmp ne i32 %3, 0, !dbg !401
  br i1 %4, label %5, label %12, !dbg !401

5:                                                ; preds = %1
  br label %6, !dbg !402

6:                                                ; preds = %5
  %7 = load ptr, ptr @stderr, align 8, !dbg !403
  %8 = call ptr @gettext(ptr noundef @.str) #10, !dbg !403
  %9 = load ptr, ptr @program_name, align 8, !dbg !403
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef %8, ptr noundef %9) #10, !dbg !403
  br label %11, !dbg !403

11:                                               ; preds = %6
  br label %42, !dbg !403

12:                                               ; preds = %1
  %13 = call ptr @gettext(ptr noundef @.str.1) #10, !dbg !405
  %14 = load ptr, ptr @program_name, align 8, !dbg !407
  %15 = call i32 (ptr, ...) @rpl_printf(ptr noundef %13, ptr noundef %14), !dbg !408
  %16 = call ptr @gettext(ptr noundef @.str.2) #10, !dbg !409
  %17 = load ptr, ptr @stdout, align 8, !dbg !410
  %18 = call i32 @fputs_unlocked(ptr noundef %16, ptr noundef %17), !dbg !411
  %19 = call ptr @gettext(ptr noundef @.str.3) #10, !dbg !412
  %20 = load ptr, ptr @stdout, align 8, !dbg !413
  %21 = call i32 @fputs_unlocked(ptr noundef %19, ptr noundef %20), !dbg !414
  %22 = call ptr @gettext(ptr noundef @.str.4) #10, !dbg !415
  %23 = load ptr, ptr @stdout, align 8, !dbg !416
  %24 = call i32 @fputs_unlocked(ptr noundef %22, ptr noundef %23), !dbg !417
  %25 = call ptr @gettext(ptr noundef @.str.6) #10, !dbg !418
  call void @oputs_(ptr noundef @.str.5, ptr noundef %25), !dbg !419
  %26 = call ptr @gettext(ptr noundef @.str.7) #10, !dbg !420
  call void @oputs_(ptr noundef @.str.5, ptr noundef %26), !dbg !421
  %27 = call ptr @gettext(ptr noundef @.str.8) #10, !dbg !422
  call void @oputs_(ptr noundef @.str.5, ptr noundef %27), !dbg !423
  %28 = call ptr @gettext(ptr noundef @.str.9) #10, !dbg !424
  call void @oputs_(ptr noundef @.str.5, ptr noundef %28), !dbg !425
  %29 = call ptr @gettext(ptr noundef @.str.10) #10, !dbg !426
  call void @oputs_(ptr noundef @.str.5, ptr noundef %29), !dbg !427
  %30 = call ptr @gettext(ptr noundef @.str.11) #10, !dbg !428
  call void @oputs_(ptr noundef @.str.5, ptr noundef %30), !dbg !429
  %31 = call ptr @gettext(ptr noundef @.str.12) #10, !dbg !430
  call void @oputs_(ptr noundef @.str.5, ptr noundef %31), !dbg !431
  %32 = call ptr @gettext(ptr noundef @.str.13) #10, !dbg !432
  call void @oputs_(ptr noundef @.str.5, ptr noundef %32), !dbg !433
  %33 = call ptr @gettext(ptr noundef @.str.14) #10, !dbg !434
  call void @oputs_(ptr noundef @.str.5, ptr noundef %33), !dbg !435
  %34 = call ptr @gettext(ptr noundef @.str.15) #10, !dbg !436
  call void @oputs_(ptr noundef @.str.5, ptr noundef %34), !dbg !437
  %35 = call ptr @gettext(ptr noundef @.str.16) #10, !dbg !438
  %36 = load ptr, ptr @stdout, align 8, !dbg !439
  %37 = call i32 @fputs_unlocked(ptr noundef %35, ptr noundef %36), !dbg !440
  %38 = call ptr @gettext(ptr noundef @.str.17) #10, !dbg !441
  %39 = load ptr, ptr @program_name, align 8, !dbg !442
  %40 = load ptr, ptr @program_name, align 8, !dbg !443
  %41 = call i32 (ptr, ...) @rpl_printf(ptr noundef %38, ptr noundef %39, ptr noundef %40), !dbg !444
  call void @emit_ancillary_info(ptr noundef @.str.5), !dbg !445
  br label %42

42:                                               ; preds = %12, %11
  %43 = load i32, ptr %2, align 4, !dbg !446
  call void @exit(i32 noundef %43) #11, !dbg !447
  unreachable, !dbg !447
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #1

declare i32 @rpl_printf(ptr noundef, ...) #2

declare i32 @fputs_unlocked(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(ptr noundef %0, ptr noundef %1) #3 !dbg !204 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !448, !DIExpression(), !449)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !450, !DIExpression(), !451)
  %14 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !452
  %15 = icmp eq i32 %14, -1, !dbg !454
  br i1 %15, label %16, label %30, !dbg !454

16:                                               ; preds = %2
    #dbg_declare(ptr %5, !455, !DIExpression(), !457)
  %17 = call ptr @getenv(ptr noundef @.str.29) #10, !dbg !458
  store ptr %17, ptr %5, align 8, !dbg !457
  %18 = load ptr, ptr %5, align 8, !dbg !459
  %19 = icmp ne ptr %18, null, !dbg !459
  br i1 %19, label %20, label %27, !dbg !460

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 8, !dbg !461
  %22 = load i8, ptr %21, align 1, !dbg !462
  %23 = icmp ne i8 %22, 0, !dbg !462
  br i1 %23, label %24, label %27, !dbg !463

24:                                               ; preds = %20
  %25 = load ptr, ptr %5, align 8, !dbg !464
  %26 = call zeroext i1 @streq(ptr noundef %25, ptr noundef @.str.30), !dbg !465
  br label %27, !dbg !463

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !463
  store i32 %29, ptr @oputs_.help_no_sgr, align 4, !dbg !466
  br label %30, !dbg !467

30:                                               ; preds = %27, %2
  %31 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !468
  %32 = icmp ne i32 %31, 0, !dbg !468
  br i1 %32, label %33, label %37, !dbg !468

33:                                               ; preds = %30
  %34 = load ptr, ptr %4, align 8, !dbg !470
  %35 = load ptr, ptr @stdout, align 8, !dbg !472
  %36 = call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !473
  br label %274, !dbg !474

37:                                               ; preds = %30
    #dbg_declare(ptr %6, !475, !DIExpression(), !476)
  store i8 1, ptr %6, align 1, !dbg !476
    #dbg_declare(ptr %7, !477, !DIExpression(), !478)
  %38 = load ptr, ptr %4, align 8, !dbg !479
  %39 = load ptr, ptr %4, align 8, !dbg !480
  %40 = call i64 @strspn(ptr noundef %39, ptr noundef @.str.31) #12, !dbg !481
  %41 = getelementptr inbounds nuw i8, ptr %38, i64 %40, !dbg !482
  store ptr %41, ptr %7, align 8, !dbg !478
    #dbg_declare(ptr %8, !483, !DIExpression(), !484)
  %42 = load ptr, ptr %4, align 8, !dbg !485
  %43 = call ptr @strchr(ptr noundef %42, i32 noundef 45) #12, !dbg !486
  store ptr %43, ptr %8, align 8, !dbg !484
  %44 = load ptr, ptr %8, align 8, !dbg !487
  %45 = icmp ne ptr %44, null, !dbg !487
  br i1 %45, label %48, label %46, !dbg !489

46:                                               ; preds = %37
  %47 = load ptr, ptr %7, align 8, !dbg !490
  store ptr %47, ptr %8, align 8, !dbg !492
  store i8 0, ptr %6, align 1, !dbg !493
  br label %89, !dbg !494

48:                                               ; preds = %37
  %49 = load ptr, ptr %8, align 8, !dbg !495
  %50 = load ptr, ptr %7, align 8, !dbg !497
  %51 = icmp ne ptr %49, %50, !dbg !498
  br i1 %51, label %52, label %88, !dbg !498

52:                                               ; preds = %48
    #dbg_declare(ptr %9, !499, !DIExpression(), !501)
  %53 = load ptr, ptr %7, align 8, !dbg !502
  store ptr %53, ptr %9, align 8, !dbg !501
    #dbg_declare(ptr %10, !503, !DIExpression(), !504)
  store i64 0, ptr %10, align 8, !dbg !504
  br label %54, !dbg !505

54:                                               ; preds = %63, %52
  %55 = load ptr, ptr %9, align 8, !dbg !506
  %56 = load ptr, ptr %8, align 8, !dbg !507
  %57 = icmp ult ptr %55, %56, !dbg !508
  br i1 %57, label %58, label %61, !dbg !509

58:                                               ; preds = %54
  %59 = load i64, ptr %10, align 8, !dbg !510
  %60 = icmp ult i64 %59, 2, !dbg !511
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !512
  br i1 %62, label %63, label %82, !dbg !505

63:                                               ; preds = %61
  %64 = call ptr @__ctype_b_loc() #13, !dbg !513
  %65 = load ptr, ptr %64, align 8, !dbg !513
  %66 = load ptr, ptr %9, align 8, !dbg !514
  %67 = getelementptr inbounds nuw i8, ptr %66, i32 1, !dbg !514
  store ptr %67, ptr %9, align 8, !dbg !514
  %68 = load i8, ptr %66, align 1, !dbg !515
  %69 = sext i8 %68 to i32, !dbg !513
  %70 = sext i32 %69 to i64, !dbg !513
  %71 = getelementptr inbounds i16, ptr %65, i64 %70, !dbg !513
  %72 = load i16, ptr %71, align 2, !dbg !513
  %73 = zext i16 %72 to i32, !dbg !513
  %74 = and i32 %73, 8192, !dbg !513
  %75 = icmp ne i32 %74, 0, !dbg !516
  %76 = xor i1 %75, true, !dbg !516
  %77 = xor i1 %76, true, !dbg !517
  %78 = zext i1 %77 to i32, !dbg !517
  %79 = sext i32 %78 to i64, !dbg !517
  %80 = load i64, ptr %10, align 8, !dbg !518
  %81 = add i64 %80, %79, !dbg !518
  store i64 %81, ptr %10, align 8, !dbg !518
  br label %54, !dbg !505, !llvm.loop !519

82:                                               ; preds = %61
  %83 = load i64, ptr %10, align 8, !dbg !521
  %84 = icmp eq i64 %83, 2, !dbg !523
  br i1 %84, label %85, label %87, !dbg !523

85:                                               ; preds = %82
  %86 = load ptr, ptr %7, align 8, !dbg !524
  store ptr %86, ptr %8, align 8, !dbg !526
  store i8 0, ptr %6, align 1, !dbg !527
  br label %87, !dbg !528

87:                                               ; preds = %85, %82
  br label %88, !dbg !529

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
    #dbg_declare(ptr %11, !530, !DIExpression(), !531)
  %90 = load ptr, ptr %8, align 8, !dbg !532
  %91 = call i64 @strcspn(ptr noundef %90, ptr noundef @.str.32) #12, !dbg !533
  store i64 %91, ptr %11, align 8, !dbg !531
    #dbg_declare(ptr %12, !534, !DIExpression(), !535)
  %92 = load ptr, ptr %8, align 8, !dbg !536
  %93 = load i64, ptr %11, align 8, !dbg !537
  %94 = getelementptr inbounds nuw i8, ptr %92, i64 %93, !dbg !538
  store ptr %94, ptr %12, align 8, !dbg !535
  br label %95, !dbg !539

95:                                               ; preds = %161, %89
  %96 = load ptr, ptr %12, align 8, !dbg !540
  %97 = load i8, ptr %96, align 1, !dbg !541
  %98 = sext i8 %97 to i32, !dbg !541
  %99 = icmp ne i32 %98, 0, !dbg !541
  br i1 %99, label %100, label %105, !dbg !542

100:                                              ; preds = %95
  %101 = load ptr, ptr %12, align 8, !dbg !543
  %102 = load i8, ptr %101, align 1, !dbg !544
  %103 = sext i8 %102 to i32, !dbg !544
  %104 = icmp ne i32 %103, 10, !dbg !545
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !546
  br i1 %106, label %107, label %164, !dbg !539

107:                                              ; preds = %105
  %108 = load ptr, ptr %12, align 8, !dbg !547
  %109 = load i8, ptr %108, align 1, !dbg !550
  %110 = sext i8 %109 to i32, !dbg !550
  %111 = icmp eq i32 %110, 45, !dbg !551
  br i1 %111, label %112, label %119, !dbg !552

112:                                              ; preds = %107
  %113 = load ptr, ptr %12, align 8, !dbg !553
  %114 = getelementptr inbounds i8, ptr %113, i64 1, !dbg !554
  %115 = load i8, ptr %114, align 1, !dbg !554
  %116 = sext i8 %115 to i32, !dbg !554
  %117 = icmp eq i32 %116, 45, !dbg !555
  br i1 %117, label %118, label %119, !dbg !552

118:                                              ; preds = %112
  store i8 0, ptr %6, align 1, !dbg !556
  br label %119, !dbg !557

119:                                              ; preds = %118, %112, %107
  %120 = call ptr @__ctype_b_loc() #13, !dbg !558
  %121 = load ptr, ptr %120, align 8, !dbg !558
  %122 = load ptr, ptr %12, align 8, !dbg !560
  %123 = load i8, ptr %122, align 1, !dbg !561
  %124 = sext i8 %123 to i32, !dbg !558
  %125 = sext i32 %124 to i64, !dbg !558
  %126 = getelementptr inbounds i16, ptr %121, i64 %125, !dbg !558
  %127 = load i16, ptr %126, align 2, !dbg !558
  %128 = zext i16 %127 to i32, !dbg !558
  %129 = and i32 %128, 8192, !dbg !558
  %130 = icmp ne i32 %129, 0, !dbg !558
  br i1 %130, label %131, label %161, !dbg !558

131:                                              ; preds = %119
  %132 = load ptr, ptr %12, align 8, !dbg !562
  %133 = load i8, ptr %132, align 1, !dbg !565
  %134 = sext i8 %133 to i32, !dbg !565
  %135 = icmp eq i32 %134, 9, !dbg !566
  br i1 %135, label %149, label %136, !dbg !567

136:                                              ; preds = %131
  %137 = call ptr @__ctype_b_loc() #13, !dbg !568
  %138 = load ptr, ptr %137, align 8, !dbg !568
  %139 = load ptr, ptr %12, align 8, !dbg !569
  %140 = getelementptr inbounds i8, ptr %139, i64 1, !dbg !570
  %141 = load i8, ptr %140, align 1, !dbg !570
  %142 = sext i8 %141 to i32, !dbg !568
  %143 = sext i32 %142 to i64, !dbg !568
  %144 = getelementptr inbounds i16, ptr %138, i64 %143, !dbg !568
  %145 = load i16, ptr %144, align 2, !dbg !568
  %146 = zext i16 %145 to i32, !dbg !568
  %147 = and i32 %146, 8192, !dbg !568
  %148 = icmp ne i32 %147, 0, !dbg !568
  br i1 %148, label %149, label %150, !dbg !567

149:                                              ; preds = %136, %131
  br label %164, !dbg !571

150:                                              ; preds = %136
  %151 = load i8, ptr %6, align 1, !dbg !572
  %152 = trunc i8 %151 to i1, !dbg !572
  br i1 %152, label %160, label %153, !dbg !574

153:                                              ; preds = %150
  %154 = load ptr, ptr %12, align 8, !dbg !575
  %155 = getelementptr inbounds i8, ptr %154, i64 1, !dbg !576
  %156 = load i8, ptr %155, align 1, !dbg !576
  %157 = sext i8 %156 to i32, !dbg !576
  %158 = icmp ne i32 %157, 45, !dbg !577
  br i1 %158, label %159, label %160, !dbg !574

159:                                              ; preds = %153
  br label %164, !dbg !578

160:                                              ; preds = %153, %150
  br label %161, !dbg !579

161:                                              ; preds = %160, %119
  %162 = load ptr, ptr %12, align 8, !dbg !580
  %163 = getelementptr inbounds nuw i8, ptr %162, i32 1, !dbg !580
  store ptr %163, ptr %12, align 8, !dbg !580
  br label %95, !dbg !539, !llvm.loop !581

164:                                              ; preds = %159, %149, %105
  %165 = load ptr, ptr %4, align 8, !dbg !583
  %166 = load ptr, ptr %7, align 8, !dbg !584
  %167 = load ptr, ptr %4, align 8, !dbg !585
  %168 = ptrtoint ptr %166 to i64, !dbg !586
  %169 = ptrtoint ptr %167 to i64, !dbg !586
  %170 = sub i64 %168, %169, !dbg !586
  %171 = load ptr, ptr @stdout, align 8, !dbg !587
  %172 = call i64 @fwrite_unlocked(ptr noundef %165, i64 noundef 1, i64 noundef %170, ptr noundef %171), !dbg !588
    #dbg_declare(ptr %13, !589, !DIExpression(), !590)
  %173 = load ptr, ptr %3, align 8, !dbg !591
  %174 = call zeroext i1 @streq(ptr noundef %173, ptr noundef @.str.33), !dbg !592
  br i1 %174, label %175, label %176, !dbg !592

175:                                              ; preds = %164
  br label %232, !dbg !592

176:                                              ; preds = %164
  %177 = load ptr, ptr %3, align 8, !dbg !593
  %178 = call zeroext i1 @streq(ptr noundef %177, ptr noundef @.str.35), !dbg !594
  br i1 %178, label %179, label %180, !dbg !594

179:                                              ; preds = %176
  br label %230, !dbg !594

180:                                              ; preds = %176
  %181 = load ptr, ptr %3, align 8, !dbg !595
  %182 = call zeroext i1 @streq(ptr noundef %181, ptr noundef @.str.37), !dbg !596
  br i1 %182, label %183, label %184, !dbg !596

183:                                              ; preds = %180
  br label %228, !dbg !596

184:                                              ; preds = %180
  %185 = load ptr, ptr %3, align 8, !dbg !597
  %186 = call zeroext i1 @streq(ptr noundef %185, ptr noundef @.str.38), !dbg !598
  br i1 %186, label %187, label %188, !dbg !598

187:                                              ; preds = %184
  br label %226, !dbg !598

188:                                              ; preds = %184
  %189 = load ptr, ptr %3, align 8, !dbg !599
  %190 = call zeroext i1 @streq(ptr noundef %189, ptr noundef @.str.40), !dbg !600
  br i1 %190, label %191, label %192, !dbg !600

191:                                              ; preds = %188
  br label %224, !dbg !600

192:                                              ; preds = %188
  %193 = load ptr, ptr %3, align 8, !dbg !601
  %194 = call zeroext i1 @streq(ptr noundef %193, ptr noundef @.str.41), !dbg !602
  br i1 %194, label %195, label %196, !dbg !602

195:                                              ; preds = %192
  br label %222, !dbg !602

196:                                              ; preds = %192
  %197 = load ptr, ptr %3, align 8, !dbg !603
  %198 = call zeroext i1 @streq(ptr noundef %197, ptr noundef @.str.42), !dbg !604
  br i1 %198, label %199, label %200, !dbg !604

199:                                              ; preds = %196
  br label %220, !dbg !604

200:                                              ; preds = %196
  %201 = load ptr, ptr %3, align 8, !dbg !605
  %202 = call zeroext i1 @streq(ptr noundef %201, ptr noundef @.str.43), !dbg !606
  br i1 %202, label %203, label %204, !dbg !606

203:                                              ; preds = %200
  br label %218, !dbg !606

204:                                              ; preds = %200
  %205 = load ptr, ptr %3, align 8, !dbg !607
  %206 = call zeroext i1 @streq(ptr noundef %205, ptr noundef @.str.44), !dbg !608
  br i1 %206, label %207, label %208, !dbg !608

207:                                              ; preds = %204
  br label %216, !dbg !608

208:                                              ; preds = %204
  %209 = load ptr, ptr %3, align 8, !dbg !609
  %210 = call zeroext i1 @streq(ptr noundef %209, ptr noundef @.str.45), !dbg !610
  br i1 %210, label %211, label %212, !dbg !610

211:                                              ; preds = %208
  br label %214, !dbg !610

212:                                              ; preds = %208
  %213 = load ptr, ptr %3, align 8, !dbg !611
  br label %214, !dbg !610

214:                                              ; preds = %212, %211
  %215 = phi ptr [ @.str.39, %211 ], [ %213, %212 ], !dbg !610
  br label %216, !dbg !608

216:                                              ; preds = %214, %207
  %217 = phi ptr [ @.str.39, %207 ], [ %215, %214 ], !dbg !608
  br label %218, !dbg !606

218:                                              ; preds = %216, %203
  %219 = phi ptr [ @.str.39, %203 ], [ %217, %216 ], !dbg !606
  br label %220, !dbg !604

220:                                              ; preds = %218, %199
  %221 = phi ptr [ @.str.39, %199 ], [ %219, %218 ], !dbg !604
  br label %222, !dbg !602

222:                                              ; preds = %220, %195
  %223 = phi ptr [ @.str.39, %195 ], [ %221, %220 ], !dbg !602
  br label %224, !dbg !600

224:                                              ; preds = %222, %191
  %225 = phi ptr [ @.str.39, %191 ], [ %223, %222 ], !dbg !600
  br label %226, !dbg !598

226:                                              ; preds = %224, %187
  %227 = phi ptr [ @.str.39, %187 ], [ %225, %224 ], !dbg !598
  br label %228, !dbg !596

228:                                              ; preds = %226, %183
  %229 = phi ptr [ @.str.36, %183 ], [ %227, %226 ], !dbg !596
  br label %230, !dbg !594

230:                                              ; preds = %228, %179
  %231 = phi ptr [ @.str.36, %179 ], [ %229, %228 ], !dbg !594
  br label %232, !dbg !592

232:                                              ; preds = %230, %175
  %233 = phi ptr [ @.str.34, %175 ], [ %231, %230 ], !dbg !592
  store ptr %233, ptr %13, align 8, !dbg !590
  %234 = load ptr, ptr %8, align 8, !dbg !612
  %235 = call i32 @strncmp(ptr noundef %234, ptr noundef @.str.46, i64 noundef 6) #12, !dbg !614
  %236 = icmp eq i32 %235, 0, !dbg !614
  br i1 %236, label %241, label %237, !dbg !615

237:                                              ; preds = %232
  %238 = load ptr, ptr %8, align 8, !dbg !616
  %239 = call i32 @strncmp(ptr noundef %238, ptr noundef @.str.47, i64 noundef 9) #12, !dbg !617
  %240 = icmp eq i32 %239, 0, !dbg !617
  br i1 %240, label %241, label %248, !dbg !615

241:                                              ; preds = %237, %232
  %242 = load ptr, ptr %13, align 8, !dbg !618
  %243 = load ptr, ptr %13, align 8, !dbg !620
  %244 = load i64, ptr %11, align 8, !dbg !621
  %245 = trunc i64 %244 to i32, !dbg !622
  %246 = load ptr, ptr %8, align 8, !dbg !623
  %247 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str.48, ptr noundef @.str.49, ptr noundef %242, ptr noundef %243, i32 noundef %245, ptr noundef %246), !dbg !624
  br label %254, !dbg !625

248:                                              ; preds = %237
  %249 = load ptr, ptr %13, align 8, !dbg !626
  %250 = load i64, ptr %11, align 8, !dbg !628
  %251 = trunc i64 %250 to i32, !dbg !629
  %252 = load ptr, ptr %8, align 8, !dbg !630
  %253 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str.50, ptr noundef @.str.51, ptr noundef %249, i32 noundef %251, ptr noundef %252), !dbg !631
  br label %254

254:                                              ; preds = %248, %241
  %255 = load ptr, ptr @stdout, align 8, !dbg !632
  %256 = call i32 @fputs_unlocked(ptr noundef @.str.52, ptr noundef %255), !dbg !633
  %257 = load ptr, ptr @stdout, align 8, !dbg !634
  %258 = call i32 @fputs_unlocked(ptr noundef @.str.53, ptr noundef %257), !dbg !635
  %259 = load ptr, ptr %7, align 8, !dbg !636
  %260 = load ptr, ptr %12, align 8, !dbg !637
  %261 = load ptr, ptr %7, align 8, !dbg !638
  %262 = ptrtoint ptr %260 to i64, !dbg !639
  %263 = ptrtoint ptr %261 to i64, !dbg !639
  %264 = sub i64 %262, %263, !dbg !639
  %265 = load ptr, ptr @stdout, align 8, !dbg !640
  %266 = call i64 @fwrite_unlocked(ptr noundef %259, i64 noundef 1, i64 noundef %264, ptr noundef %265), !dbg !641
  %267 = load ptr, ptr @stdout, align 8, !dbg !642
  %268 = call i32 @fputs_unlocked(ptr noundef @.str.54, ptr noundef %267), !dbg !643
  %269 = load ptr, ptr @stdout, align 8, !dbg !644
  %270 = call i32 @fputs_unlocked(ptr noundef @.str.55, ptr noundef %269), !dbg !645
  %271 = load ptr, ptr %12, align 8, !dbg !646
  %272 = load ptr, ptr @stdout, align 8, !dbg !647
  %273 = call i32 @fputs_unlocked(ptr noundef %271, ptr noundef %272), !dbg !648
  br label %274, !dbg !649

274:                                              ; preds = %254, %33
  ret void, !dbg !649
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !650 {
  %2 = alloca ptr, align 8
  %3 = alloca [7 x %struct.infomap], align 16
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !653, !DIExpression(), !654)
    #dbg_declare(ptr %3, !655, !DIExpression(), !662)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %3, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !662
    #dbg_declare(ptr %4, !663, !DIExpression(), !664)
  %7 = load ptr, ptr %2, align 8, !dbg !665
  store ptr %7, ptr %4, align 8, !dbg !664
    #dbg_declare(ptr %5, !666, !DIExpression(), !668)
  %8 = getelementptr inbounds [7 x %struct.infomap], ptr %3, i64 0, i64 0, !dbg !669
  store ptr %8, ptr %5, align 8, !dbg !668
  br label %9, !dbg !670

9:                                                ; preds = %23, %1
  %10 = load ptr, ptr %5, align 8, !dbg !671
  %11 = getelementptr inbounds nuw %struct.infomap, ptr %10, i32 0, i32 0, !dbg !672
  %12 = load ptr, ptr %11, align 8, !dbg !672
  %13 = icmp ne ptr %12, null, !dbg !671
  br i1 %13, label %14, label %21, !dbg !673

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 8, !dbg !674
  %16 = load ptr, ptr %5, align 8, !dbg !675
  %17 = getelementptr inbounds nuw %struct.infomap, ptr %16, i32 0, i32 0, !dbg !676
  %18 = load ptr, ptr %17, align 8, !dbg !676
  %19 = call zeroext i1 @streq(ptr noundef %15, ptr noundef %18), !dbg !677
  %20 = xor i1 %19, true, !dbg !678
  br label %21

21:                                               ; preds = %14, %9
  %22 = phi i1 [ false, %9 ], [ %20, %14 ], !dbg !679
  br i1 %22, label %23, label %26, !dbg !670

23:                                               ; preds = %21
  %24 = load ptr, ptr %5, align 8, !dbg !680
  %25 = getelementptr inbounds nuw %struct.infomap, ptr %24, i32 1, !dbg !680
  store ptr %25, ptr %5, align 8, !dbg !680
  br label %9, !dbg !670, !llvm.loop !681

26:                                               ; preds = %21
  %27 = load ptr, ptr %5, align 8, !dbg !682
  %28 = getelementptr inbounds nuw %struct.infomap, ptr %27, i32 0, i32 1, !dbg !684
  %29 = load ptr, ptr %28, align 8, !dbg !684
  %30 = icmp ne ptr %29, null, !dbg !682
  br i1 %30, label %31, label %35, !dbg !682

31:                                               ; preds = %26
  %32 = load ptr, ptr %5, align 8, !dbg !685
  %33 = getelementptr inbounds nuw %struct.infomap, ptr %32, i32 0, i32 1, !dbg !686
  %34 = load ptr, ptr %33, align 8, !dbg !686
  store ptr %34, ptr %4, align 8, !dbg !687
  br label %35, !dbg !688

35:                                               ; preds = %31, %26
  call void @emit_bug_reporting_address(), !dbg !689
    #dbg_declare(ptr %6, !690, !DIExpression(), !691)
  %36 = load ptr, ptr %2, align 8, !dbg !692
  %37 = call zeroext i1 @streq(ptr noundef %36, ptr noundef @.str.33), !dbg !693
  br i1 %37, label %38, label %39, !dbg !693

38:                                               ; preds = %35
  br label %41, !dbg !693

39:                                               ; preds = %35
  %40 = load ptr, ptr %2, align 8, !dbg !694
  br label %41, !dbg !693

41:                                               ; preds = %39, %38
  %42 = phi ptr [ @.str.34, %38 ], [ %40, %39 ], !dbg !693
  store ptr %42, ptr %6, align 8, !dbg !691
  %43 = call ptr @gettext(ptr noundef @.str.59) #10, !dbg !695
  %44 = load ptr, ptr %6, align 8, !dbg !696
  %45 = call i32 (ptr, ...) @rpl_printf(ptr noundef %43, ptr noundef @.str.49, ptr noundef %44), !dbg !697
  %46 = call ptr @gettext(ptr noundef @.str.60) #10, !dbg !698
  %47 = load ptr, ptr %4, align 8, !dbg !699
  %48 = load ptr, ptr %4, align 8, !dbg !700
  %49 = load ptr, ptr %2, align 8, !dbg !701
  %50 = icmp eq ptr %48, %49, !dbg !702
  %51 = zext i1 %50 to i64, !dbg !700
  %52 = select i1 %50, ptr @.str.61, ptr @.str.18, !dbg !700
  %53 = call i32 (ptr, ...) @rpl_printf(ptr noundef %46, ptr noundef %47, ptr noundef %52), !dbg !703
  ret void, !dbg !704
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #3 !dbg !705 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
    #dbg_declare(ptr %4, !709, !DIExpression(), !710)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !711, !DIExpression(), !712)
    #dbg_declare(ptr %6, !713, !DIExpression(), !714)
  %7 = load ptr, ptr %5, align 8, !dbg !715
  %8 = getelementptr inbounds ptr, ptr %7, i64 0, !dbg !715
  %9 = load ptr, ptr %8, align 8, !dbg !715
  call void @set_program_name(ptr noundef %9), !dbg !716
  %10 = call ptr @setlocale(i32 noundef 6, ptr noundef @.str.18) #10, !dbg !717
  %11 = call ptr @bindtextdomain(ptr noundef @.str.19, ptr noundef @.str.20) #10, !dbg !718
  %12 = call ptr @textdomain(ptr noundef @.str.19) #10, !dbg !719
  %13 = call zeroext i1 @hard_locale(i32 noundef 3), !dbg !720
  %14 = zext i1 %13 to i8, !dbg !721
  store i8 %14, ptr @hard_LC_COLLATE, align 1, !dbg !721
  %15 = call i32 @atexit(ptr noundef @close_stdout) #10, !dbg !722
  br label %16, !dbg !723

16:                                               ; preds = %58, %2
  %17 = load i32, ptr %4, align 4, !dbg !724
  %18 = load ptr, ptr %5, align 8, !dbg !725
  %19 = call i32 @getopt_long(i32 noundef %17, ptr noundef %18, ptr noundef @.str.21, ptr noundef @long_options, ptr noundef null) #10, !dbg !726
  store i32 %19, ptr %6, align 4, !dbg !727
  %20 = icmp ne i32 %19, -1, !dbg !728
  br i1 %20, label %21, label %59, !dbg !723

21:                                               ; preds = %16
  %22 = load i32, ptr %6, align 4, !dbg !729
  switch i32 %22, label %57 [
    i32 49, label %23
    i32 50, label %24
    i32 51, label %25
    i32 122, label %26
    i32 129, label %27
    i32 128, label %28
    i32 130, label %29
    i32 131, label %50
    i32 -130, label %51
    i32 -131, label %52
  ], !dbg !730

23:                                               ; preds = %21
  store i8 0, ptr @only_file_1, align 1, !dbg !731
  br label %58, !dbg !733

24:                                               ; preds = %21
  store i8 0, ptr @only_file_2, align 1, !dbg !734
  br label %58, !dbg !735

25:                                               ; preds = %21
  store i8 0, ptr @both, align 1, !dbg !736
  br label %58, !dbg !737

26:                                               ; preds = %21
  store i8 0, ptr @delim, align 1, !dbg !738
  br label %58, !dbg !739

27:                                               ; preds = %21
  store i32 2, ptr @check_input_order, align 4, !dbg !740
  br label %58, !dbg !741

28:                                               ; preds = %21
  store i32 1, ptr @check_input_order, align 4, !dbg !742
  br label %58, !dbg !743

29:                                               ; preds = %21
  %30 = load i64, ptr @col_sep_len, align 8, !dbg !744
  %31 = icmp ne i64 %30, 0, !dbg !744
  br i1 %31, label %32, label %38, !dbg !746

32:                                               ; preds = %29
  %33 = load ptr, ptr @col_sep, align 8, !dbg !747
  %34 = load ptr, ptr @optarg, align 8, !dbg !748
  %35 = call zeroext i1 @streq(ptr noundef %33, ptr noundef %34), !dbg !749
  br i1 %35, label %38, label %36, !dbg !746

36:                                               ; preds = %32
  %37 = call ptr @gettext(ptr noundef @.str.22) #10, !dbg !750
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %37), !dbg !751
  unreachable, !dbg !751

38:                                               ; preds = %32, %29
  %39 = load ptr, ptr @optarg, align 8, !dbg !752
  store ptr %39, ptr @col_sep, align 8, !dbg !753
  %40 = load ptr, ptr @optarg, align 8, !dbg !754
  %41 = load i8, ptr %40, align 1, !dbg !755
  %42 = sext i8 %41 to i32, !dbg !755
  %43 = icmp ne i32 %42, 0, !dbg !755
  br i1 %43, label %44, label %47, !dbg !755

44:                                               ; preds = %38
  %45 = load ptr, ptr @optarg, align 8, !dbg !756
  %46 = call i64 @strlen(ptr noundef %45) #12, !dbg !757
  br label %48, !dbg !755

47:                                               ; preds = %38
  br label %48, !dbg !755

48:                                               ; preds = %47, %44
  %49 = phi i64 [ %46, %44 ], [ 1, %47 ], !dbg !755
  store i64 %49, ptr @col_sep_len, align 8, !dbg !758
  br label %58, !dbg !759

50:                                               ; preds = %21
  store i8 1, ptr @total_option, align 1, !dbg !760
  br label %58, !dbg !761

51:                                               ; preds = %21
  call void @usage(i32 noundef 0) #14, !dbg !762
  unreachable, !dbg !762

52:                                               ; preds = %21
  %53 = load ptr, ptr @stdout, align 8, !dbg !763
  %54 = load ptr, ptr @Version, align 8, !dbg !763
  %55 = call ptr @proper_name_lite(ptr noundef @.str.24, ptr noundef @.str.24), !dbg !764
  %56 = call ptr @proper_name_lite(ptr noundef @.str.25, ptr noundef @.str.25), !dbg !764
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %53, ptr noundef @.str.5, ptr noundef @.str.23, ptr noundef %54, ptr noundef %55, ptr noundef %56, ptr noundef null), !dbg !763
  call void @exit(i32 noundef 0) #11, !dbg !763
  unreachable, !dbg !763

57:                                               ; preds = %21
  call void @usage(i32 noundef 1) #14, !dbg !765
  unreachable, !dbg !765

58:                                               ; preds = %50, %48, %28, %27, %26, %25, %24, %23
  br label %16, !dbg !723, !llvm.loop !766

59:                                               ; preds = %16
  %60 = load i64, ptr @col_sep_len, align 8, !dbg !768
  %61 = icmp ne i64 %60, 0, !dbg !768
  br i1 %61, label %63, label %62, !dbg !770

62:                                               ; preds = %59
  store i64 1, ptr @col_sep_len, align 8, !dbg !771
  br label %63, !dbg !772

63:                                               ; preds = %62, %59
  %64 = load i32, ptr %4, align 4, !dbg !773
  %65 = load i32, ptr @optind, align 4, !dbg !775
  %66 = sub nsw i32 %64, %65, !dbg !776
  %67 = icmp slt i32 %66, 2, !dbg !777
  br i1 %67, label %68, label %84, !dbg !777

68:                                               ; preds = %63
  %69 = load i32, ptr %4, align 4, !dbg !778
  %70 = load i32, ptr @optind, align 4, !dbg !781
  %71 = icmp sle i32 %69, %70, !dbg !782
  br i1 %71, label %72, label %74, !dbg !782

72:                                               ; preds = %68
  %73 = call ptr @gettext(ptr noundef @.str.26) #10, !dbg !783
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %73), !dbg !784
  br label %83, !dbg !784

74:                                               ; preds = %68
  %75 = call ptr @gettext(ptr noundef @.str.27) #10, !dbg !785
  %76 = load ptr, ptr %5, align 8, !dbg !786
  %77 = load i32, ptr %4, align 4, !dbg !787
  %78 = sub nsw i32 %77, 1, !dbg !788
  %79 = sext i32 %78 to i64, !dbg !786
  %80 = getelementptr inbounds ptr, ptr %76, i64 %79, !dbg !786
  %81 = load ptr, ptr %80, align 8, !dbg !786
  %82 = call ptr @quote(ptr noundef %81), !dbg !789
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %75, ptr noundef %82), !dbg !790
  br label %83

83:                                               ; preds = %74, %72
  call void @usage(i32 noundef 1) #14, !dbg !791
  unreachable, !dbg !791

84:                                               ; preds = %63
  %85 = load i32, ptr %4, align 4, !dbg !792
  %86 = load i32, ptr @optind, align 4, !dbg !794
  %87 = sub nsw i32 %85, %86, !dbg !795
  %88 = icmp slt i32 2, %87, !dbg !796
  br i1 %88, label %89, label %98, !dbg !796

89:                                               ; preds = %84
  %90 = call ptr @gettext(ptr noundef @.str.28) #10, !dbg !797
  %91 = load ptr, ptr %5, align 8, !dbg !799
  %92 = load i32, ptr @optind, align 4, !dbg !800
  %93 = add nsw i32 %92, 2, !dbg !801
  %94 = sext i32 %93 to i64, !dbg !799
  %95 = getelementptr inbounds ptr, ptr %91, i64 %94, !dbg !799
  %96 = load ptr, ptr %95, align 8, !dbg !799
  %97 = call ptr @quote(ptr noundef %96), !dbg !802
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %90, ptr noundef %97), !dbg !803
  call void @usage(i32 noundef 1) #14, !dbg !804
  unreachable, !dbg !804

98:                                               ; preds = %84
  %99 = load ptr, ptr %5, align 8, !dbg !805
  %100 = load i32, ptr @optind, align 4, !dbg !806
  %101 = sext i32 %100 to i64, !dbg !807
  %102 = getelementptr inbounds ptr, ptr %99, i64 %101, !dbg !807
  call void @compare_files(ptr noundef %102) #14, !dbg !808
  unreachable, !dbg !808
}

declare void @set_program_name(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind
declare ptr @bindtextdomain(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare ptr @textdomain(ptr noundef) #1

declare zeroext i1 @hard_locale(i32 noundef) #2

; Function Attrs: nounwind
declare i32 @atexit(ptr noundef) #1

declare void @close_stdout() #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare zeroext i1 @streq(ptr noundef, ptr noundef) #2

declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

declare void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare ptr @proper_name_lite(ptr noundef, ptr noundef) #2

declare ptr @quote(ptr noundef) #2

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @compare_files(ptr noundef %0) #0 !dbg !809 {
  %2 = alloca ptr, align 8
  %3 = alloca [2 x [4 x %struct.linebuffer]], align 16
  %4 = alloca [2 x ptr], align 16
  %5 = alloca [2 x [4 x ptr]], align 16
  %6 = alloca [2 x [3 x i32]], align 16
  %7 = alloca [2 x ptr], align 16
  %8 = alloca [3 x i64], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i8], align 1
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !812, !DIExpression(), !813)
    #dbg_declare(ptr %3, !814, !DIExpression(), !826)
    #dbg_declare(ptr %4, !827, !DIExpression(), !830)
    #dbg_declare(ptr %5, !831, !DIExpression(), !833)
    #dbg_declare(ptr %6, !834, !DIExpression(), !837)
    #dbg_declare(ptr %7, !838, !DIExpression(), !888)
    #dbg_declare(ptr %8, !889, !DIExpression(), !894)
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 24, i1 false), !dbg !894
    #dbg_declare(ptr %9, !895, !DIExpression(), !897)
  store i32 0, ptr %9, align 4, !dbg !897
  br label %17, !dbg !898

17:                                               ; preds = %134, %1
  %18 = load i32, ptr %9, align 4, !dbg !899
  %19 = icmp slt i32 %18, 2, !dbg !901
  br i1 %19, label %20, label %137, !dbg !902

20:                                               ; preds = %17
    #dbg_declare(ptr %10, !903, !DIExpression(), !906)
  store i32 0, ptr %10, align 4, !dbg !906
  br label %21, !dbg !907

21:                                               ; preds = %43, %20
  %22 = load i32, ptr %10, align 4, !dbg !908
  %23 = icmp slt i32 %22, 4, !dbg !910
  br i1 %23, label %24, label %46, !dbg !911

24:                                               ; preds = %21
  %25 = load i32, ptr %9, align 4, !dbg !912
  %26 = sext i32 %25 to i64, !dbg !914
  %27 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %3, i64 0, i64 %26, !dbg !914
  %28 = load i32, ptr %10, align 4, !dbg !915
  %29 = sext i32 %28 to i64, !dbg !914
  %30 = getelementptr inbounds [4 x %struct.linebuffer], ptr %27, i64 0, i64 %29, !dbg !914
  call void @initbuffer(ptr noundef %30), !dbg !916
  %31 = load i32, ptr %9, align 4, !dbg !917
  %32 = sext i32 %31 to i64, !dbg !918
  %33 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %3, i64 0, i64 %32, !dbg !918
  %34 = load i32, ptr %10, align 4, !dbg !919
  %35 = sext i32 %34 to i64, !dbg !918
  %36 = getelementptr inbounds [4 x %struct.linebuffer], ptr %33, i64 0, i64 %35, !dbg !918
  %37 = load i32, ptr %9, align 4, !dbg !920
  %38 = sext i32 %37 to i64, !dbg !921
  %39 = getelementptr inbounds [2 x [4 x ptr]], ptr %5, i64 0, i64 %38, !dbg !921
  %40 = load i32, ptr %10, align 4, !dbg !922
  %41 = sext i32 %40 to i64, !dbg !921
  %42 = getelementptr inbounds [4 x ptr], ptr %39, i64 0, i64 %41, !dbg !921
  store ptr %36, ptr %42, align 8, !dbg !923
  br label %43, !dbg !924

43:                                               ; preds = %24
  %44 = load i32, ptr %10, align 4, !dbg !925
  %45 = add nsw i32 %44, 1, !dbg !925
  store i32 %45, ptr %10, align 4, !dbg !925
  br label %21, !dbg !926, !llvm.loop !927

46:                                               ; preds = %21
  %47 = load i32, ptr %9, align 4, !dbg !929
  %48 = sext i32 %47 to i64, !dbg !930
  %49 = getelementptr inbounds [2 x [3 x i32]], ptr %6, i64 0, i64 %48, !dbg !930
  %50 = getelementptr inbounds [3 x i32], ptr %49, i64 0, i64 0, !dbg !930
  store i32 0, ptr %50, align 4, !dbg !931
  %51 = load i32, ptr %9, align 4, !dbg !932
  %52 = sext i32 %51 to i64, !dbg !933
  %53 = getelementptr inbounds [2 x [3 x i32]], ptr %6, i64 0, i64 %52, !dbg !933
  %54 = getelementptr inbounds [3 x i32], ptr %53, i64 0, i64 1, !dbg !933
  store i32 0, ptr %54, align 4, !dbg !934
  %55 = load i32, ptr %9, align 4, !dbg !935
  %56 = sext i32 %55 to i64, !dbg !936
  %57 = getelementptr inbounds [2 x [3 x i32]], ptr %6, i64 0, i64 %56, !dbg !936
  %58 = getelementptr inbounds [3 x i32], ptr %57, i64 0, i64 2, !dbg !936
  store i32 0, ptr %58, align 4, !dbg !937
  %59 = load ptr, ptr %2, align 8, !dbg !938
  %60 = load i32, ptr %9, align 4, !dbg !939
  %61 = sext i32 %60 to i64, !dbg !938
  %62 = getelementptr inbounds ptr, ptr %59, i64 %61, !dbg !938
  %63 = load ptr, ptr %62, align 8, !dbg !938
  %64 = call zeroext i1 @streq(ptr noundef %63, ptr noundef @.str.71), !dbg !940
  br i1 %64, label %65, label %67, !dbg !940

65:                                               ; preds = %46
  %66 = load ptr, ptr @stdin, align 8, !dbg !941
  br label %74, !dbg !940

67:                                               ; preds = %46
  %68 = load ptr, ptr %2, align 8, !dbg !942
  %69 = load i32, ptr %9, align 4, !dbg !943
  %70 = sext i32 %69 to i64, !dbg !942
  %71 = getelementptr inbounds ptr, ptr %68, i64 %70, !dbg !942
  %72 = load ptr, ptr %71, align 8, !dbg !942
  %73 = call ptr @fopen_safer(ptr noundef %72, ptr noundef @.str.72), !dbg !944
  br label %74, !dbg !940

74:                                               ; preds = %67, %65
  %75 = phi ptr [ %66, %65 ], [ %73, %67 ], !dbg !940
  %76 = load i32, ptr %9, align 4, !dbg !945
  %77 = sext i32 %76 to i64, !dbg !946
  %78 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 %77, !dbg !946
  store ptr %75, ptr %78, align 8, !dbg !947
  %79 = load i32, ptr %9, align 4, !dbg !948
  %80 = sext i32 %79 to i64, !dbg !950
  %81 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 %80, !dbg !950
  %82 = load ptr, ptr %81, align 8, !dbg !950
  %83 = icmp ne ptr %82, null, !dbg !950
  br i1 %83, label %93, label %84, !dbg !951

84:                                               ; preds = %74
  %85 = call ptr @__errno_location() #13, !dbg !952
  %86 = load i32, ptr %85, align 4, !dbg !952
  %87 = load ptr, ptr %2, align 8, !dbg !953
  %88 = load i32, ptr %9, align 4, !dbg !954
  %89 = sext i32 %88 to i64, !dbg !953
  %90 = getelementptr inbounds ptr, ptr %87, i64 %89, !dbg !953
  %91 = load ptr, ptr %90, align 8, !dbg !953
  %92 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %91), !dbg !955
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %86, ptr noundef @.str.73, ptr noundef %92), !dbg !956
  unreachable, !dbg !956

93:                                               ; preds = %74
  %94 = load i32, ptr %9, align 4, !dbg !957
  %95 = sext i32 %94 to i64, !dbg !958
  %96 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 %95, !dbg !958
  %97 = load ptr, ptr %96, align 8, !dbg !958
  call void @fadvise(ptr noundef %97, i32 noundef 2), !dbg !959
  %98 = load i32, ptr %9, align 4, !dbg !960
  %99 = sext i32 %98 to i64, !dbg !961
  %100 = getelementptr inbounds [2 x [4 x ptr]], ptr %5, i64 0, i64 %99, !dbg !961
  %101 = load i32, ptr %9, align 4, !dbg !962
  %102 = sext i32 %101 to i64, !dbg !963
  %103 = getelementptr inbounds [2 x [3 x i32]], ptr %6, i64 0, i64 %102, !dbg !963
  %104 = getelementptr inbounds [3 x i32], ptr %103, i64 0, i64 0, !dbg !963
  %105 = load i32, ptr %104, align 4, !dbg !963
  %106 = sext i32 %105 to i64, !dbg !961
  %107 = getelementptr inbounds [4 x ptr], ptr %100, i64 0, i64 %106, !dbg !961
  %108 = load ptr, ptr %107, align 8, !dbg !961
  %109 = load i32, ptr %9, align 4, !dbg !964
  %110 = sext i32 %109 to i64, !dbg !965
  %111 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 %110, !dbg !965
  %112 = load ptr, ptr %111, align 8, !dbg !965
  %113 = load i8, ptr @delim, align 1, !dbg !966
  %114 = call ptr @readlinebuffer_delim(ptr noundef %108, ptr noundef %112, i8 noundef signext %113), !dbg !967
  %115 = load i32, ptr %9, align 4, !dbg !968
  %116 = sext i32 %115 to i64, !dbg !969
  %117 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 %116, !dbg !969
  store ptr %114, ptr %117, align 8, !dbg !970
  %118 = load i32, ptr %9, align 4, !dbg !971
  %119 = sext i32 %118 to i64, !dbg !973
  %120 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 %119, !dbg !973
  %121 = load ptr, ptr %120, align 8, !dbg !973
  %122 = call i32 @ferror_unlocked(ptr noundef %121) #10, !dbg !974
  %123 = icmp ne i32 %122, 0, !dbg !974
  br i1 %123, label %124, label %133, !dbg !974

124:                                              ; preds = %93
  %125 = call ptr @__errno_location() #13, !dbg !975
  %126 = load i32, ptr %125, align 4, !dbg !975
  %127 = load ptr, ptr %2, align 8, !dbg !976
  %128 = load i32, ptr %9, align 4, !dbg !977
  %129 = sext i32 %128 to i64, !dbg !976
  %130 = getelementptr inbounds ptr, ptr %127, i64 %129, !dbg !976
  %131 = load ptr, ptr %130, align 8, !dbg !976
  %132 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %131), !dbg !978
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %126, ptr noundef @.str.73, ptr noundef %132), !dbg !979
  unreachable, !dbg !979

133:                                              ; preds = %93
  br label %134, !dbg !980

134:                                              ; preds = %133
  %135 = load i32, ptr %9, align 4, !dbg !981
  %136 = add nsw i32 %135, 1, !dbg !981
  store i32 %136, ptr %9, align 4, !dbg !981
  br label %17, !dbg !982, !llvm.loop !983

137:                                              ; preds = %17
  br label %138, !dbg !985

138:                                              ; preds = %424, %137
  %139 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 0, !dbg !986
  %140 = load ptr, ptr %139, align 16, !dbg !986
  %141 = icmp ne ptr %140, null, !dbg !986
  br i1 %141, label %146, label %142, !dbg !987

142:                                              ; preds = %138
  %143 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1, !dbg !988
  %144 = load ptr, ptr %143, align 8, !dbg !988
  %145 = icmp ne ptr %144, null, !dbg !987
  br label %146, !dbg !987

146:                                              ; preds = %142, %138
  %147 = phi i1 [ true, %138 ], [ %145, %142 ]
  br i1 %147, label %148, label %425, !dbg !985

148:                                              ; preds = %146
    #dbg_declare(ptr %11, !989, !DIExpression(), !991)
    #dbg_declare(ptr %12, !992, !DIExpression(), !993)
  call void @llvm.memset.p0.i64(ptr align 1 %12, i8 0, i64 2, i1 false), !dbg !993
  %149 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 0, !dbg !994
  %150 = load ptr, ptr %149, align 16, !dbg !994
  %151 = icmp ne ptr %150, null, !dbg !994
  br i1 %151, label %153, label %152, !dbg !996

152:                                              ; preds = %148
  store i32 1, ptr %11, align 4, !dbg !997
  br label %241, !dbg !998

153:                                              ; preds = %148
  %154 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1, !dbg !999
  %155 = load ptr, ptr %154, align 8, !dbg !999
  %156 = icmp ne ptr %155, null, !dbg !999
  br i1 %156, label %158, label %157, !dbg !1001

157:                                              ; preds = %153
  store i32 -1, ptr %11, align 4, !dbg !1002
  br label %240, !dbg !1003

158:                                              ; preds = %153
  %159 = load i8, ptr @hard_LC_COLLATE, align 1, !dbg !1004
  %160 = trunc i8 %159 to i1, !dbg !1004
  br i1 %160, label %161, label %181, !dbg !1004

161:                                              ; preds = %158
  %162 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 0, !dbg !1007
  %163 = load ptr, ptr %162, align 16, !dbg !1007
  %164 = getelementptr inbounds nuw %struct.linebuffer, ptr %163, i32 0, i32 2, !dbg !1008
  %165 = load ptr, ptr %164, align 8, !dbg !1008
  %166 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 0, !dbg !1009
  %167 = load ptr, ptr %166, align 16, !dbg !1009
  %168 = getelementptr inbounds nuw %struct.linebuffer, ptr %167, i32 0, i32 1, !dbg !1010
  %169 = load i64, ptr %168, align 8, !dbg !1010
  %170 = sub nsw i64 %169, 1, !dbg !1011
  %171 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1, !dbg !1012
  %172 = load ptr, ptr %171, align 8, !dbg !1012
  %173 = getelementptr inbounds nuw %struct.linebuffer, ptr %172, i32 0, i32 2, !dbg !1013
  %174 = load ptr, ptr %173, align 8, !dbg !1013
  %175 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1, !dbg !1014
  %176 = load ptr, ptr %175, align 8, !dbg !1014
  %177 = getelementptr inbounds nuw %struct.linebuffer, ptr %176, i32 0, i32 1, !dbg !1015
  %178 = load i64, ptr %177, align 8, !dbg !1015
  %179 = sub nsw i64 %178, 1, !dbg !1016
  %180 = call i32 @xmemcoll(ptr noundef %165, i64 noundef %170, ptr noundef %174, i64 noundef %179), !dbg !1017
  store i32 %180, ptr %11, align 4, !dbg !1018
  br label %239, !dbg !1019

181:                                              ; preds = %158
    #dbg_declare(ptr %13, !1020, !DIExpression(), !1022)
  %182 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 0, !dbg !1023
  %183 = load ptr, ptr %182, align 16, !dbg !1023
  %184 = getelementptr inbounds nuw %struct.linebuffer, ptr %183, i32 0, i32 1, !dbg !1024
  %185 = load i64, ptr %184, align 8, !dbg !1024
  %186 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1, !dbg !1025
  %187 = load ptr, ptr %186, align 8, !dbg !1025
  %188 = getelementptr inbounds nuw %struct.linebuffer, ptr %187, i32 0, i32 1, !dbg !1026
  %189 = load i64, ptr %188, align 8, !dbg !1026
  %190 = icmp slt i64 %185, %189, !dbg !1027
  br i1 %190, label %191, label %196, !dbg !1027

191:                                              ; preds = %181
  %192 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 0, !dbg !1023
  %193 = load ptr, ptr %192, align 16, !dbg !1023
  %194 = getelementptr inbounds nuw %struct.linebuffer, ptr %193, i32 0, i32 1, !dbg !1024
  %195 = load i64, ptr %194, align 8, !dbg !1024
  br label %201, !dbg !1027

196:                                              ; preds = %181
  %197 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1, !dbg !1025
  %198 = load ptr, ptr %197, align 8, !dbg !1025
  %199 = getelementptr inbounds nuw %struct.linebuffer, ptr %198, i32 0, i32 1, !dbg !1026
  %200 = load i64, ptr %199, align 8, !dbg !1026
  br label %201, !dbg !1027

201:                                              ; preds = %196, %191
  %202 = phi i64 [ %195, %191 ], [ %200, %196 ], !dbg !1027
  %203 = sub nsw i64 %202, 1, !dbg !1028
  store i64 %203, ptr %13, align 8, !dbg !1022
  %204 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 0, !dbg !1029
  %205 = load ptr, ptr %204, align 16, !dbg !1029
  %206 = getelementptr inbounds nuw %struct.linebuffer, ptr %205, i32 0, i32 2, !dbg !1030
  %207 = load ptr, ptr %206, align 8, !dbg !1030
  %208 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1, !dbg !1031
  %209 = load ptr, ptr %208, align 8, !dbg !1031
  %210 = getelementptr inbounds nuw %struct.linebuffer, ptr %209, i32 0, i32 2, !dbg !1032
  %211 = load ptr, ptr %210, align 8, !dbg !1032
  %212 = load i64, ptr %13, align 8, !dbg !1033
  %213 = call i32 @memcmp(ptr noundef %207, ptr noundef %211, i64 noundef %212) #12, !dbg !1034
  store i32 %213, ptr %11, align 4, !dbg !1035
  %214 = load i32, ptr %11, align 4, !dbg !1036
  %215 = icmp eq i32 %214, 0, !dbg !1038
  br i1 %215, label %216, label %238, !dbg !1038

216:                                              ; preds = %201
  %217 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 0, !dbg !1039
  %218 = load ptr, ptr %217, align 16, !dbg !1039
  %219 = getelementptr inbounds nuw %struct.linebuffer, ptr %218, i32 0, i32 1, !dbg !1040
  %220 = load i64, ptr %219, align 8, !dbg !1040
  %221 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1, !dbg !1041
  %222 = load ptr, ptr %221, align 8, !dbg !1041
  %223 = getelementptr inbounds nuw %struct.linebuffer, ptr %222, i32 0, i32 1, !dbg !1042
  %224 = load i64, ptr %223, align 8, !dbg !1042
  %225 = icmp sgt i64 %220, %224, !dbg !1043
  %226 = zext i1 %225 to i32, !dbg !1043
  %227 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 0, !dbg !1039
  %228 = load ptr, ptr %227, align 16, !dbg !1039
  %229 = getelementptr inbounds nuw %struct.linebuffer, ptr %228, i32 0, i32 1, !dbg !1040
  %230 = load i64, ptr %229, align 8, !dbg !1040
  %231 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1, !dbg !1041
  %232 = load ptr, ptr %231, align 8, !dbg !1041
  %233 = getelementptr inbounds nuw %struct.linebuffer, ptr %232, i32 0, i32 1, !dbg !1042
  %234 = load i64, ptr %233, align 8, !dbg !1042
  %235 = icmp slt i64 %230, %234, !dbg !1043
  %236 = zext i1 %235 to i32, !dbg !1043
  %237 = sub nsw i32 %226, %236, !dbg !1043
  store i32 %237, ptr %11, align 4, !dbg !1044
  br label %238, !dbg !1045

238:                                              ; preds = %216, %201
  br label %239

239:                                              ; preds = %238, %161
  br label %240

240:                                              ; preds = %239, %157
  br label %241

241:                                              ; preds = %240, %152
  %242 = load i32, ptr %11, align 4, !dbg !1046
  %243 = icmp eq i32 %242, 0, !dbg !1048
  br i1 %243, label %244, label %250, !dbg !1048

244:                                              ; preds = %241
  %245 = getelementptr inbounds [3 x i64], ptr %8, i64 0, i64 2, !dbg !1049
  %246 = load i64, ptr %245, align 16, !dbg !1051
  %247 = add i64 %246, 1, !dbg !1051
  store i64 %247, ptr %245, align 16, !dbg !1051
  %248 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1, !dbg !1052
  %249 = load ptr, ptr %248, align 8, !dbg !1052
  call void @writeline(ptr noundef %249, i32 noundef 3), !dbg !1053
  br label %266, !dbg !1054

250:                                              ; preds = %241
  store i8 1, ptr @seen_unpairable, align 1, !dbg !1055
  %251 = load i32, ptr %11, align 4, !dbg !1057
  %252 = icmp sle i32 %251, 0, !dbg !1059
  br i1 %252, label %253, label %259, !dbg !1059

253:                                              ; preds = %250
  %254 = getelementptr inbounds [3 x i64], ptr %8, i64 0, i64 0, !dbg !1060
  %255 = load i64, ptr %254, align 16, !dbg !1062
  %256 = add i64 %255, 1, !dbg !1062
  store i64 %256, ptr %254, align 16, !dbg !1062
  %257 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 0, !dbg !1063
  %258 = load ptr, ptr %257, align 16, !dbg !1063
  call void @writeline(ptr noundef %258, i32 noundef 1), !dbg !1064
  br label %265, !dbg !1065

259:                                              ; preds = %250
  %260 = getelementptr inbounds [3 x i64], ptr %8, i64 0, i64 1, !dbg !1066
  %261 = load i64, ptr %260, align 8, !dbg !1068
  %262 = add i64 %261, 1, !dbg !1068
  store i64 %262, ptr %260, align 8, !dbg !1068
  %263 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1, !dbg !1069
  %264 = load ptr, ptr %263, align 8, !dbg !1069
  call void @writeline(ptr noundef %264, i32 noundef 2), !dbg !1070
  br label %265

265:                                              ; preds = %259, %253
  br label %266

266:                                              ; preds = %265, %244
  %267 = load i32, ptr %11, align 4, !dbg !1071
  %268 = icmp sle i32 0, %267, !dbg !1073
  br i1 %268, label %269, label %271, !dbg !1073

269:                                              ; preds = %266
  %270 = getelementptr inbounds [2 x i8], ptr %12, i64 0, i64 1, !dbg !1074
  store i8 1, ptr %270, align 1, !dbg !1075
  br label %271, !dbg !1074

271:                                              ; preds = %269, %266
  %272 = load i32, ptr %11, align 4, !dbg !1076
  %273 = icmp sle i32 %272, 0, !dbg !1078
  br i1 %273, label %274, label %276, !dbg !1078

274:                                              ; preds = %271
  %275 = getelementptr inbounds [2 x i8], ptr %12, i64 0, i64 0, !dbg !1079
  store i8 1, ptr %275, align 1, !dbg !1080
  br label %276, !dbg !1079

276:                                              ; preds = %274, %271
    #dbg_declare(ptr %14, !1081, !DIExpression(), !1083)
  store i32 0, ptr %14, align 4, !dbg !1083
  br label %277, !dbg !1084

277:                                              ; preds = %421, %276
  %278 = load i32, ptr %14, align 4, !dbg !1085
  %279 = icmp slt i32 %278, 2, !dbg !1087
  br i1 %279, label %280, label %424, !dbg !1088

280:                                              ; preds = %277
  %281 = load i32, ptr %14, align 4, !dbg !1089
  %282 = sext i32 %281 to i64, !dbg !1091
  %283 = getelementptr inbounds [2 x i8], ptr %12, i64 0, i64 %282, !dbg !1091
  %284 = load i8, ptr %283, align 1, !dbg !1091
  %285 = trunc i8 %284 to i1, !dbg !1091
  br i1 %285, label %286, label %420, !dbg !1091

286:                                              ; preds = %280
  %287 = load i32, ptr %14, align 4, !dbg !1092
  %288 = sext i32 %287 to i64, !dbg !1094
  %289 = getelementptr inbounds [2 x [3 x i32]], ptr %6, i64 0, i64 %288, !dbg !1094
  %290 = getelementptr inbounds [3 x i32], ptr %289, i64 0, i64 1, !dbg !1094
  %291 = load i32, ptr %290, align 4, !dbg !1094
  %292 = load i32, ptr %14, align 4, !dbg !1095
  %293 = sext i32 %292 to i64, !dbg !1096
  %294 = getelementptr inbounds [2 x [3 x i32]], ptr %6, i64 0, i64 %293, !dbg !1096
  %295 = getelementptr inbounds [3 x i32], ptr %294, i64 0, i64 2, !dbg !1096
  store i32 %291, ptr %295, align 4, !dbg !1097
  %296 = load i32, ptr %14, align 4, !dbg !1098
  %297 = sext i32 %296 to i64, !dbg !1099
  %298 = getelementptr inbounds [2 x [3 x i32]], ptr %6, i64 0, i64 %297, !dbg !1099
  %299 = getelementptr inbounds [3 x i32], ptr %298, i64 0, i64 0, !dbg !1099
  %300 = load i32, ptr %299, align 4, !dbg !1099
  %301 = load i32, ptr %14, align 4, !dbg !1100
  %302 = sext i32 %301 to i64, !dbg !1101
  %303 = getelementptr inbounds [2 x [3 x i32]], ptr %6, i64 0, i64 %302, !dbg !1101
  %304 = getelementptr inbounds [3 x i32], ptr %303, i64 0, i64 1, !dbg !1101
  store i32 %300, ptr %304, align 4, !dbg !1102
  %305 = load i32, ptr %14, align 4, !dbg !1103
  %306 = sext i32 %305 to i64, !dbg !1104
  %307 = getelementptr inbounds [2 x [3 x i32]], ptr %6, i64 0, i64 %306, !dbg !1104
  %308 = getelementptr inbounds [3 x i32], ptr %307, i64 0, i64 0, !dbg !1104
  %309 = load i32, ptr %308, align 4, !dbg !1104
  %310 = add nsw i32 %309, 1, !dbg !1105
  %311 = and i32 %310, 3, !dbg !1106
  %312 = load i32, ptr %14, align 4, !dbg !1107
  %313 = sext i32 %312 to i64, !dbg !1108
  %314 = getelementptr inbounds [2 x [3 x i32]], ptr %6, i64 0, i64 %313, !dbg !1108
  %315 = getelementptr inbounds [3 x i32], ptr %314, i64 0, i64 0, !dbg !1108
  store i32 %311, ptr %315, align 4, !dbg !1109
  %316 = load i32, ptr %14, align 4, !dbg !1110
  %317 = sext i32 %316 to i64, !dbg !1111
  %318 = getelementptr inbounds [2 x [4 x ptr]], ptr %5, i64 0, i64 %317, !dbg !1111
  %319 = load i32, ptr %14, align 4, !dbg !1112
  %320 = sext i32 %319 to i64, !dbg !1113
  %321 = getelementptr inbounds [2 x [3 x i32]], ptr %6, i64 0, i64 %320, !dbg !1113
  %322 = getelementptr inbounds [3 x i32], ptr %321, i64 0, i64 0, !dbg !1113
  %323 = load i32, ptr %322, align 4, !dbg !1113
  %324 = sext i32 %323 to i64, !dbg !1111
  %325 = getelementptr inbounds [4 x ptr], ptr %318, i64 0, i64 %324, !dbg !1111
  %326 = load ptr, ptr %325, align 8, !dbg !1111
  %327 = load i32, ptr %14, align 4, !dbg !1114
  %328 = sext i32 %327 to i64, !dbg !1115
  %329 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 %328, !dbg !1115
  %330 = load ptr, ptr %329, align 8, !dbg !1115
  %331 = load i8, ptr @delim, align 1, !dbg !1116
  %332 = call ptr @readlinebuffer_delim(ptr noundef %326, ptr noundef %330, i8 noundef signext %331), !dbg !1117
  %333 = load i32, ptr %14, align 4, !dbg !1118
  %334 = sext i32 %333 to i64, !dbg !1119
  %335 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 %334, !dbg !1119
  store ptr %332, ptr %335, align 8, !dbg !1120
  %336 = load i32, ptr %14, align 4, !dbg !1121
  %337 = sext i32 %336 to i64, !dbg !1123
  %338 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 %337, !dbg !1123
  %339 = load ptr, ptr %338, align 8, !dbg !1123
  %340 = icmp ne ptr %339, null, !dbg !1123
  br i1 %340, label %341, label %359, !dbg !1123

341:                                              ; preds = %286
  %342 = load i32, ptr %14, align 4, !dbg !1124
  %343 = sext i32 %342 to i64, !dbg !1125
  %344 = getelementptr inbounds [2 x [4 x ptr]], ptr %5, i64 0, i64 %343, !dbg !1125
  %345 = load i32, ptr %14, align 4, !dbg !1126
  %346 = sext i32 %345 to i64, !dbg !1127
  %347 = getelementptr inbounds [2 x [3 x i32]], ptr %6, i64 0, i64 %346, !dbg !1127
  %348 = getelementptr inbounds [3 x i32], ptr %347, i64 0, i64 1, !dbg !1127
  %349 = load i32, ptr %348, align 4, !dbg !1127
  %350 = sext i32 %349 to i64, !dbg !1125
  %351 = getelementptr inbounds [4 x ptr], ptr %344, i64 0, i64 %350, !dbg !1125
  %352 = load ptr, ptr %351, align 8, !dbg !1125
  %353 = load i32, ptr %14, align 4, !dbg !1128
  %354 = sext i32 %353 to i64, !dbg !1129
  %355 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 %354, !dbg !1129
  %356 = load ptr, ptr %355, align 8, !dbg !1129
  %357 = load i32, ptr %14, align 4, !dbg !1130
  %358 = add nsw i32 %357, 1, !dbg !1131
  call void @check_order(ptr noundef %352, ptr noundef %356, i32 noundef %358), !dbg !1132
  br label %400, !dbg !1132

359:                                              ; preds = %286
  %360 = load i32, ptr %14, align 4, !dbg !1133
  %361 = sext i32 %360 to i64, !dbg !1135
  %362 = getelementptr inbounds [2 x [4 x ptr]], ptr %5, i64 0, i64 %361, !dbg !1135
  %363 = load i32, ptr %14, align 4, !dbg !1136
  %364 = sext i32 %363 to i64, !dbg !1137
  %365 = getelementptr inbounds [2 x [3 x i32]], ptr %6, i64 0, i64 %364, !dbg !1137
  %366 = getelementptr inbounds [3 x i32], ptr %365, i64 0, i64 2, !dbg !1137
  %367 = load i32, ptr %366, align 4, !dbg !1137
  %368 = sext i32 %367 to i64, !dbg !1135
  %369 = getelementptr inbounds [4 x ptr], ptr %362, i64 0, i64 %368, !dbg !1135
  %370 = load ptr, ptr %369, align 8, !dbg !1135
  %371 = getelementptr inbounds nuw %struct.linebuffer, ptr %370, i32 0, i32 2, !dbg !1138
  %372 = load ptr, ptr %371, align 8, !dbg !1138
  %373 = icmp ne ptr %372, null, !dbg !1135
  br i1 %373, label %374, label %399, !dbg !1135

374:                                              ; preds = %359
  %375 = load i32, ptr %14, align 4, !dbg !1139
  %376 = sext i32 %375 to i64, !dbg !1140
  %377 = getelementptr inbounds [2 x [4 x ptr]], ptr %5, i64 0, i64 %376, !dbg !1140
  %378 = load i32, ptr %14, align 4, !dbg !1141
  %379 = sext i32 %378 to i64, !dbg !1142
  %380 = getelementptr inbounds [2 x [3 x i32]], ptr %6, i64 0, i64 %379, !dbg !1142
  %381 = getelementptr inbounds [3 x i32], ptr %380, i64 0, i64 2, !dbg !1142
  %382 = load i32, ptr %381, align 4, !dbg !1142
  %383 = sext i32 %382 to i64, !dbg !1140
  %384 = getelementptr inbounds [4 x ptr], ptr %377, i64 0, i64 %383, !dbg !1140
  %385 = load ptr, ptr %384, align 8, !dbg !1140
  %386 = load i32, ptr %14, align 4, !dbg !1143
  %387 = sext i32 %386 to i64, !dbg !1144
  %388 = getelementptr inbounds [2 x [4 x ptr]], ptr %5, i64 0, i64 %387, !dbg !1144
  %389 = load i32, ptr %14, align 4, !dbg !1145
  %390 = sext i32 %389 to i64, !dbg !1146
  %391 = getelementptr inbounds [2 x [3 x i32]], ptr %6, i64 0, i64 %390, !dbg !1146
  %392 = getelementptr inbounds [3 x i32], ptr %391, i64 0, i64 1, !dbg !1146
  %393 = load i32, ptr %392, align 4, !dbg !1146
  %394 = sext i32 %393 to i64, !dbg !1144
  %395 = getelementptr inbounds [4 x ptr], ptr %388, i64 0, i64 %394, !dbg !1144
  %396 = load ptr, ptr %395, align 8, !dbg !1144
  %397 = load i32, ptr %14, align 4, !dbg !1147
  %398 = add nsw i32 %397, 1, !dbg !1148
  call void @check_order(ptr noundef %385, ptr noundef %396, i32 noundef %398), !dbg !1149
  br label %399, !dbg !1149

399:                                              ; preds = %374, %359
  br label %400

400:                                              ; preds = %399, %341
  %401 = load i32, ptr %14, align 4, !dbg !1150
  %402 = sext i32 %401 to i64, !dbg !1152
  %403 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 %402, !dbg !1152
  %404 = load ptr, ptr %403, align 8, !dbg !1152
  %405 = call i32 @ferror_unlocked(ptr noundef %404) #10, !dbg !1153
  %406 = icmp ne i32 %405, 0, !dbg !1153
  br i1 %406, label %407, label %416, !dbg !1153

407:                                              ; preds = %400
  %408 = call ptr @__errno_location() #13, !dbg !1154
  %409 = load i32, ptr %408, align 4, !dbg !1154
  %410 = load ptr, ptr %2, align 8, !dbg !1155
  %411 = load i32, ptr %14, align 4, !dbg !1156
  %412 = sext i32 %411 to i64, !dbg !1155
  %413 = getelementptr inbounds ptr, ptr %410, i64 %412, !dbg !1155
  %414 = load ptr, ptr %413, align 8, !dbg !1155
  %415 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %414), !dbg !1157
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %409, ptr noundef @.str.73, ptr noundef %415), !dbg !1158
  unreachable, !dbg !1158

416:                                              ; preds = %400
  %417 = load i32, ptr %14, align 4, !dbg !1159
  %418 = sext i32 %417 to i64, !dbg !1160
  %419 = getelementptr inbounds [2 x i8], ptr %12, i64 0, i64 %418, !dbg !1160
  store i8 0, ptr %419, align 1, !dbg !1161
  br label %420, !dbg !1162

420:                                              ; preds = %416, %280
  br label %421, !dbg !1163

421:                                              ; preds = %420
  %422 = load i32, ptr %14, align 4, !dbg !1164
  %423 = add nsw i32 %422, 1, !dbg !1164
  store i32 %423, ptr %14, align 4, !dbg !1164
  br label %277, !dbg !1165, !llvm.loop !1166

424:                                              ; preds = %277
  br label %138, !dbg !985, !llvm.loop !1168

425:                                              ; preds = %146
    #dbg_declare(ptr %15, !1170, !DIExpression(), !1172)
  %426 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 0, !dbg !1173
  %427 = load ptr, ptr %426, align 16, !dbg !1173
  %428 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 1, !dbg !1174
  %429 = load ptr, ptr %428, align 8, !dbg !1174
  %430 = icmp eq ptr %427, %429, !dbg !1175
  %431 = zext i1 %430 to i32, !dbg !1175
  %432 = sub nsw i32 2, %431, !dbg !1176
  store i32 %432, ptr %15, align 4, !dbg !1172
    #dbg_declare(ptr %16, !1177, !DIExpression(), !1179)
  store i32 0, ptr %16, align 4, !dbg !1179
  br label %433, !dbg !1180

433:                                              ; preds = %454, %425
  %434 = load i32, ptr %16, align 4, !dbg !1181
  %435 = load i32, ptr %15, align 4, !dbg !1183
  %436 = icmp slt i32 %434, %435, !dbg !1184
  br i1 %436, label %437, label %457, !dbg !1185

437:                                              ; preds = %433
  %438 = load i32, ptr %16, align 4, !dbg !1186
  %439 = sext i32 %438 to i64, !dbg !1188
  %440 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 %439, !dbg !1188
  %441 = load ptr, ptr %440, align 8, !dbg !1188
  %442 = call i32 @rpl_fclose(ptr noundef %441), !dbg !1189
  %443 = icmp ne i32 %442, 0, !dbg !1190
  br i1 %443, label %444, label %453, !dbg !1190

444:                                              ; preds = %437
  %445 = call ptr @__errno_location() #13, !dbg !1191
  %446 = load i32, ptr %445, align 4, !dbg !1191
  %447 = load ptr, ptr %2, align 8, !dbg !1192
  %448 = load i32, ptr %16, align 4, !dbg !1193
  %449 = sext i32 %448 to i64, !dbg !1192
  %450 = getelementptr inbounds ptr, ptr %447, i64 %449, !dbg !1192
  %451 = load ptr, ptr %450, align 8, !dbg !1192
  %452 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %451), !dbg !1194
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %446, ptr noundef @.str.73, ptr noundef %452), !dbg !1195
  unreachable, !dbg !1195

453:                                              ; preds = %437
  br label %454, !dbg !1196

454:                                              ; preds = %453
  %455 = load i32, ptr %16, align 4, !dbg !1197
  %456 = add nsw i32 %455, 1, !dbg !1197
  store i32 %456, ptr %16, align 4, !dbg !1197
  br label %433, !dbg !1198, !llvm.loop !1199

457:                                              ; preds = %433
  %458 = load i8, ptr @total_option, align 1, !dbg !1201
  %459 = trunc i8 %458 to i1, !dbg !1201
  br i1 %459, label %460, label %498, !dbg !1201

460:                                              ; preds = %457
  %461 = load i64, ptr @col_sep_len, align 8, !dbg !1203
  %462 = icmp eq i64 %461, 1, !dbg !1206
  br i1 %462, label %463, label %483, !dbg !1206

463:                                              ; preds = %460
  %464 = getelementptr inbounds [3 x i64], ptr %8, i64 0, i64 0, !dbg !1207
  %465 = load i64, ptr %464, align 16, !dbg !1207
  %466 = load ptr, ptr @col_sep, align 8, !dbg !1209
  %467 = load i8, ptr %466, align 1, !dbg !1210
  %468 = sext i8 %467 to i32, !dbg !1210
  %469 = getelementptr inbounds [3 x i64], ptr %8, i64 0, i64 1, !dbg !1211
  %470 = load i64, ptr %469, align 8, !dbg !1211
  %471 = load ptr, ptr @col_sep, align 8, !dbg !1212
  %472 = load i8, ptr %471, align 1, !dbg !1213
  %473 = sext i8 %472 to i32, !dbg !1213
  %474 = getelementptr inbounds [3 x i64], ptr %8, i64 0, i64 2, !dbg !1214
  %475 = load i64, ptr %474, align 16, !dbg !1214
  %476 = load ptr, ptr @col_sep, align 8, !dbg !1215
  %477 = load i8, ptr %476, align 1, !dbg !1216
  %478 = sext i8 %477 to i32, !dbg !1216
  %479 = call ptr @gettext(ptr noundef @.str.65) #10, !dbg !1217
  %480 = load i8, ptr @delim, align 1, !dbg !1218
  %481 = zext i8 %480 to i32, !dbg !1218
  %482 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str.74, i64 noundef %465, i32 noundef %468, i64 noundef %470, i32 noundef %473, i64 noundef %475, i32 noundef %478, ptr noundef %479, i32 noundef %481), !dbg !1219
  br label %497, !dbg !1220

483:                                              ; preds = %460
  %484 = getelementptr inbounds [3 x i64], ptr %8, i64 0, i64 0, !dbg !1221
  %485 = load i64, ptr %484, align 16, !dbg !1221
  %486 = load ptr, ptr @col_sep, align 8, !dbg !1223
  %487 = getelementptr inbounds [3 x i64], ptr %8, i64 0, i64 1, !dbg !1224
  %488 = load i64, ptr %487, align 8, !dbg !1224
  %489 = load ptr, ptr @col_sep, align 8, !dbg !1225
  %490 = getelementptr inbounds [3 x i64], ptr %8, i64 0, i64 2, !dbg !1226
  %491 = load i64, ptr %490, align 16, !dbg !1226
  %492 = load ptr, ptr @col_sep, align 8, !dbg !1227
  %493 = call ptr @gettext(ptr noundef @.str.65) #10, !dbg !1228
  %494 = load i8, ptr @delim, align 1, !dbg !1229
  %495 = zext i8 %494 to i32, !dbg !1229
  %496 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str.75, i64 noundef %485, ptr noundef %486, i64 noundef %488, ptr noundef %489, i64 noundef %491, ptr noundef %492, ptr noundef %493, i32 noundef %495), !dbg !1230
  br label %497

497:                                              ; preds = %483, %463
  br label %498, !dbg !1231

498:                                              ; preds = %497, %457
  %499 = load i8, ptr @issued_disorder_warning, align 1, !dbg !1232
  %500 = trunc i8 %499 to i1, !dbg !1232
  br i1 %500, label %504, label %501, !dbg !1234

501:                                              ; preds = %498
  %502 = load i8, ptr getelementptr inbounds ([2 x i8], ptr @issued_disorder_warning, i64 0, i64 1), align 1, !dbg !1235
  %503 = trunc i8 %502 to i1, !dbg !1235
  br i1 %503, label %504, label %506, !dbg !1234

504:                                              ; preds = %501, %498
  %505 = call ptr @gettext(ptr noundef @.str.76) #10, !dbg !1236
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %505), !dbg !1237
  unreachable, !dbg !1237

506:                                              ; preds = %501
  call void @exit(i32 noundef 0) #11, !dbg !1238
  unreachable, !dbg !1238
}

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strspn(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #5

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #6

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strcspn(ptr noundef, ptr noundef) #5

declare i64 @fwrite_unlocked(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

declare void @emit_bug_reporting_address() #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare void @initbuffer(ptr noundef) #2

declare ptr @fopen_safer(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #6

declare ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) #2

declare void @fadvise(ptr noundef, i32 noundef) #2

declare ptr @readlinebuffer_delim(ptr noundef, ptr noundef, i8 noundef signext) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(ptr noundef) #1

declare i32 @xmemcoll(ptr noundef, i64 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writeline(ptr noundef %0, i32 noundef %1) #3 !dbg !1239 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1244, !DIExpression(), !1245)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !1246, !DIExpression(), !1247)
  %5 = load i32, ptr %4, align 4, !dbg !1248
  switch i32 %5, label %45 [
    i32 1, label %6
    i32 2, label %11
    i32 3, label %24
  ], !dbg !1249

6:                                                ; preds = %2
  %7 = load i8, ptr @only_file_1, align 1, !dbg !1250
  %8 = trunc i8 %7 to i1, !dbg !1250
  br i1 %8, label %10, label %9, !dbg !1253

9:                                                ; preds = %6
  br label %58, !dbg !1254

10:                                               ; preds = %6
  br label %45, !dbg !1255

11:                                               ; preds = %2
  %12 = load i8, ptr @only_file_2, align 1, !dbg !1256
  %13 = trunc i8 %12 to i1, !dbg !1256
  br i1 %13, label %15, label %14, !dbg !1258

14:                                               ; preds = %11
  br label %58, !dbg !1259

15:                                               ; preds = %11
  %16 = load i8, ptr @only_file_1, align 1, !dbg !1260
  %17 = trunc i8 %16 to i1, !dbg !1260
  br i1 %17, label %18, label %23, !dbg !1260

18:                                               ; preds = %15
  %19 = load ptr, ptr @col_sep, align 8, !dbg !1262
  %20 = load i64, ptr @col_sep_len, align 8, !dbg !1263
  %21 = load ptr, ptr @stdout, align 8, !dbg !1264
  %22 = call i64 @fwrite_unlocked(ptr noundef %19, i64 noundef 1, i64 noundef %20, ptr noundef %21), !dbg !1265
  br label %23, !dbg !1265

23:                                               ; preds = %18, %15
  br label %45, !dbg !1266

24:                                               ; preds = %2
  %25 = load i8, ptr @both, align 1, !dbg !1267
  %26 = trunc i8 %25 to i1, !dbg !1267
  br i1 %26, label %28, label %27, !dbg !1269

27:                                               ; preds = %24
  br label %58, !dbg !1270

28:                                               ; preds = %24
  %29 = load i8, ptr @only_file_1, align 1, !dbg !1271
  %30 = trunc i8 %29 to i1, !dbg !1271
  br i1 %30, label %31, label %36, !dbg !1271

31:                                               ; preds = %28
  %32 = load ptr, ptr @col_sep, align 8, !dbg !1273
  %33 = load i64, ptr @col_sep_len, align 8, !dbg !1274
  %34 = load ptr, ptr @stdout, align 8, !dbg !1275
  %35 = call i64 @fwrite_unlocked(ptr noundef %32, i64 noundef 1, i64 noundef %33, ptr noundef %34), !dbg !1276
  br label %36, !dbg !1276

36:                                               ; preds = %31, %28
  %37 = load i8, ptr @only_file_2, align 1, !dbg !1277
  %38 = trunc i8 %37 to i1, !dbg !1277
  br i1 %38, label %39, label %44, !dbg !1277

39:                                               ; preds = %36
  %40 = load ptr, ptr @col_sep, align 8, !dbg !1279
  %41 = load i64, ptr @col_sep_len, align 8, !dbg !1280
  %42 = load ptr, ptr @stdout, align 8, !dbg !1281
  %43 = call i64 @fwrite_unlocked(ptr noundef %40, i64 noundef 1, i64 noundef %41, ptr noundef %42), !dbg !1282
  br label %44, !dbg !1282

44:                                               ; preds = %39, %36
  br label %45, !dbg !1283

45:                                               ; preds = %2, %44, %23, %10
  %46 = load ptr, ptr %3, align 8, !dbg !1284
  %47 = getelementptr inbounds nuw %struct.linebuffer, ptr %46, i32 0, i32 2, !dbg !1285
  %48 = load ptr, ptr %47, align 8, !dbg !1285
  %49 = load ptr, ptr %3, align 8, !dbg !1286
  %50 = getelementptr inbounds nuw %struct.linebuffer, ptr %49, i32 0, i32 1, !dbg !1287
  %51 = load i64, ptr %50, align 8, !dbg !1287
  %52 = load ptr, ptr @stdout, align 8, !dbg !1288
  %53 = call i64 @fwrite_unlocked(ptr noundef %48, i64 noundef 1, i64 noundef %51, ptr noundef %52), !dbg !1289
  %54 = load ptr, ptr @stdout, align 8, !dbg !1290
  %55 = call i32 @ferror_unlocked(ptr noundef %54) #10, !dbg !1292
  %56 = icmp ne i32 %55, 0, !dbg !1292
  br i1 %56, label %57, label %58, !dbg !1292

57:                                               ; preds = %45
  call void @write_error(), !dbg !1293
  br label %58, !dbg !1293

58:                                               ; preds = %9, %14, %27, %57, %45
  ret void, !dbg !1294
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_order(ptr noundef %0, ptr noundef %1, i32 noundef %2) #3 !dbg !1295 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1298, !DIExpression(), !1299)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !1300, !DIExpression(), !1301)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !1302, !DIExpression(), !1303)
  %9 = load i32, ptr @check_input_order, align 4, !dbg !1304
  %10 = icmp ne i32 %9, 2, !dbg !1306
  br i1 %10, label %11, label %105, !dbg !1307

11:                                               ; preds = %3
  %12 = load i32, ptr @check_input_order, align 4, !dbg !1308
  %13 = icmp eq i32 %12, 1, !dbg !1309
  br i1 %13, label %17, label %14, !dbg !1310

14:                                               ; preds = %11
  %15 = load i8, ptr @seen_unpairable, align 1, !dbg !1311
  %16 = trunc i8 %15 to i1, !dbg !1311
  br i1 %16, label %17, label %105, !dbg !1307

17:                                               ; preds = %14, %11
  %18 = load i32, ptr %6, align 4, !dbg !1312
  %19 = sub nsw i32 %18, 1, !dbg !1315
  %20 = sext i32 %19 to i64, !dbg !1316
  %21 = getelementptr inbounds [2 x i8], ptr @issued_disorder_warning, i64 0, i64 %20, !dbg !1316
  %22 = load i8, ptr %21, align 1, !dbg !1316
  %23 = trunc i8 %22 to i1, !dbg !1316
  br i1 %23, label %104, label %24, !dbg !1317

24:                                               ; preds = %17
    #dbg_declare(ptr %7, !1318, !DIExpression(), !1320)
  %25 = load i8, ptr @hard_LC_COLLATE, align 1, !dbg !1321
  %26 = trunc i8 %25 to i1, !dbg !1321
  br i1 %26, label %27, label %43, !dbg !1321

27:                                               ; preds = %24
  %28 = load ptr, ptr %4, align 8, !dbg !1323
  %29 = getelementptr inbounds nuw %struct.linebuffer, ptr %28, i32 0, i32 2, !dbg !1324
  %30 = load ptr, ptr %29, align 8, !dbg !1324
  %31 = load ptr, ptr %4, align 8, !dbg !1325
  %32 = getelementptr inbounds nuw %struct.linebuffer, ptr %31, i32 0, i32 1, !dbg !1326
  %33 = load i64, ptr %32, align 8, !dbg !1326
  %34 = sub nsw i64 %33, 1, !dbg !1327
  %35 = load ptr, ptr %5, align 8, !dbg !1328
  %36 = getelementptr inbounds nuw %struct.linebuffer, ptr %35, i32 0, i32 2, !dbg !1329
  %37 = load ptr, ptr %36, align 8, !dbg !1329
  %38 = load ptr, ptr %5, align 8, !dbg !1330
  %39 = getelementptr inbounds nuw %struct.linebuffer, ptr %38, i32 0, i32 1, !dbg !1331
  %40 = load i64, ptr %39, align 8, !dbg !1331
  %41 = sub nsw i64 %40, 1, !dbg !1332
  %42 = call i32 @xmemcoll(ptr noundef %30, i64 noundef %34, ptr noundef %37, i64 noundef %41), !dbg !1333
  store i32 %42, ptr %7, align 4, !dbg !1334
  br label %59, !dbg !1335

43:                                               ; preds = %24
  %44 = load ptr, ptr %4, align 8, !dbg !1336
  %45 = getelementptr inbounds nuw %struct.linebuffer, ptr %44, i32 0, i32 2, !dbg !1337
  %46 = load ptr, ptr %45, align 8, !dbg !1337
  %47 = load ptr, ptr %4, align 8, !dbg !1338
  %48 = getelementptr inbounds nuw %struct.linebuffer, ptr %47, i32 0, i32 1, !dbg !1339
  %49 = load i64, ptr %48, align 8, !dbg !1339
  %50 = sub nsw i64 %49, 1, !dbg !1340
  %51 = load ptr, ptr %5, align 8, !dbg !1341
  %52 = getelementptr inbounds nuw %struct.linebuffer, ptr %51, i32 0, i32 2, !dbg !1342
  %53 = load ptr, ptr %52, align 8, !dbg !1342
  %54 = load ptr, ptr %5, align 8, !dbg !1343
  %55 = getelementptr inbounds nuw %struct.linebuffer, ptr %54, i32 0, i32 1, !dbg !1344
  %56 = load i64, ptr %55, align 8, !dbg !1344
  %57 = sub nsw i64 %56, 1, !dbg !1345
  %58 = call i32 @memcmp2(ptr noundef %46, i64 noundef %50, ptr noundef %53, i64 noundef %57) #12, !dbg !1346
  store i32 %58, ptr %7, align 4, !dbg !1347
  br label %59

59:                                               ; preds = %43, %27
  %60 = load i32, ptr %7, align 4, !dbg !1348
  %61 = icmp slt i32 0, %60, !dbg !1350
  br i1 %61, label %62, label %103, !dbg !1350

62:                                               ; preds = %59
  %63 = load i32, ptr @check_input_order, align 4, !dbg !1351
  %64 = icmp eq i32 %63, 1, !dbg !1353
  %65 = zext i1 %64 to i64, !dbg !1351
  %66 = select i1 %64, i32 1, i32 0, !dbg !1351
  %67 = call i1 @llvm.is.constant.i32(i32 %66), !dbg !1354
  br i1 %67, label %68, label %84, !dbg !1354

68:                                               ; preds = %62
  %69 = load i32, ptr @check_input_order, align 4, !dbg !1351
  %70 = icmp eq i32 %69, 1, !dbg !1353
  %71 = zext i1 %70 to i64, !dbg !1351
  %72 = select i1 %70, i32 1, i32 0, !dbg !1351
  %73 = call ptr @gettext(ptr noundef @.str.78) #10, !dbg !1355
  %74 = load i32, ptr %6, align 4, !dbg !1356
  call void (i32, i32, ptr, ...) @error(i32 noundef %72, i32 noundef 0, ptr noundef %73, i32 noundef %74), !dbg !1354
  %75 = load i32, ptr @check_input_order, align 4, !dbg !1351
  %76 = icmp eq i32 %75, 1, !dbg !1353
  %77 = zext i1 %76 to i64, !dbg !1351
  %78 = select i1 %76, i32 1, i32 0, !dbg !1351
  %79 = icmp ne i32 %78, 0, !dbg !1354
  br i1 %79, label %80, label %82, !dbg !1354

80:                                               ; preds = %68
  unreachable, !dbg !1354

81:                                               ; No predecessors!
  br label %83, !dbg !1354

82:                                               ; preds = %68
  br label %83, !dbg !1354

83:                                               ; preds = %82, %81
  br label %98, !dbg !1354

84:                                               ; preds = %62
    #dbg_declare(ptr %8, !1357, !DIExpression(), !1359)
  %85 = load i32, ptr @check_input_order, align 4, !dbg !1360
  %86 = icmp eq i32 %85, 1, !dbg !1361
  %87 = zext i1 %86 to i64, !dbg !1360
  %88 = select i1 %86, i32 1, i32 0, !dbg !1360
  store i32 %88, ptr %8, align 4, !dbg !1359
  %89 = load i32, ptr %8, align 4, !dbg !1359
  %90 = call ptr @gettext(ptr noundef @.str.78) #10, !dbg !1362
  %91 = load i32, ptr %6, align 4, !dbg !1363
  call void (i32, i32, ptr, ...) @error(i32 noundef %89, i32 noundef 0, ptr noundef %90, i32 noundef %91), !dbg !1359
  %92 = load i32, ptr %8, align 4, !dbg !1359
  %93 = icmp ne i32 %92, 0, !dbg !1359
  br i1 %93, label %94, label %96, !dbg !1359

94:                                               ; preds = %84
  unreachable, !dbg !1359

95:                                               ; No predecessors!
  br label %97, !dbg !1359

96:                                               ; preds = %84
  br label %97, !dbg !1359

97:                                               ; preds = %96, %95
  br label %98, !dbg !1354

98:                                               ; preds = %97, %83
  %99 = load i32, ptr %6, align 4, !dbg !1364
  %100 = sub nsw i32 %99, 1, !dbg !1365
  %101 = sext i32 %100 to i64, !dbg !1366
  %102 = getelementptr inbounds [2 x i8], ptr @issued_disorder_warning, i64 0, i64 %101, !dbg !1366
  store i8 1, ptr %102, align 1, !dbg !1367
  br label %103, !dbg !1368

103:                                              ; preds = %98, %59
  br label %104, !dbg !1369

104:                                              ; preds = %103, %17
  br label %105, !dbg !1370

105:                                              ; preds = %104, %14, %3
  ret void, !dbg !1371
}

declare i32 @rpl_fclose(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_error() #3 !dbg !1372 {
  %1 = alloca i32, align 4
    #dbg_declare(ptr %1, !1375, !DIExpression(), !1376)
  %2 = call ptr @__errno_location() #13, !dbg !1377
  %3 = load i32, ptr %2, align 4, !dbg !1377
  store i32 %3, ptr %1, align 4, !dbg !1376
  %4 = load ptr, ptr @stdout, align 8, !dbg !1378
  %5 = call i32 @fflush_unlocked(ptr noundef %4), !dbg !1379
  %6 = load ptr, ptr @stdout, align 8, !dbg !1380
  %7 = call i32 @fpurge(ptr noundef %6), !dbg !1381
  %8 = load ptr, ptr @stdout, align 8, !dbg !1382
  call void @clearerr_unlocked(ptr noundef %8) #10, !dbg !1383
  %9 = load i32, ptr %1, align 4, !dbg !1384
  %10 = call ptr @gettext(ptr noundef @.str.77) #10, !dbg !1385
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %9, ptr noundef %10), !dbg !1386
  unreachable, !dbg !1386
}

declare i32 @fflush_unlocked(ptr noundef) #2

declare i32 @fpurge(ptr noundef) #2

; Function Attrs: nounwind
declare void @clearerr_unlocked(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp2(ptr noundef, i64 noundef, ptr noundef, i64 noundef) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

attributes #0 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { noreturn }

!llvm.dbg.cu = !{!100}
!llvm.module.flags = !{!386, !387, !388, !389, !390, !391, !392}
!llvm.ident = !{!393}

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
!99 = distinct !DIGlobalVariable(name: "hard_LC_COLLATE", scope: !100, file: !2, line: 40, type: !199, isLocal: true, isDefinition: true)
!100 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !101, retainedTypes: !158, globals: !162, splitDebugInlining: false, nameTableKind: None)
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
!158 = !{!159, !160, !116, !161}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!161 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!162 = !{!0, !7, !12, !17, !22, !27, !32, !34, !36, !41, !46, !51, !56, !61, !66, !71, !73, !78, !83, !88, !93, !163, !165, !170, !175, !180, !185, !187, !192, !98, !197, !200, !202, !210, !212, !214, !219, !224, !229, !231, !233, !238, !240, !242, !244, !249, !254, !256, !258, !260, !262, !264, !266, !268, !273, !278, !283, !285, !287, !289, !291, !293, !298, !300, !305, !310, !315, !317, !319, !321, !323, !325, !327, !329, !341, !343, !345, !347, !350, !355, !357, !359, !361, !363, !365, !367, !369, !374, !376, !378, !383}
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !2, line: 439, type: !29, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 468, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 37)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !2, line: 479, type: !172, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 14)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !2, line: 479, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 20)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !2, line: 479, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 16)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !2, line: 491, type: !182, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !2, line: 493, type: !189, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 25)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !2, line: 499, type: !194, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 17)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "total_option", scope: !100, file: !2, line: 61, type: !199, isLocal: true, isDefinition: true)
!199 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "check_input_order", scope: !100, file: !2, line: 69, type: !109, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !204, file: !115, line: 594, type: !116, isLocal: true, isDefinition: true)
!204 = distinct !DISubprogram(name: "oputs_", scope: !115, file: !115, line: 592, type: !205, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !100, retainedNodes: !209)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !207, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!209 = !{}
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !115, line: 604, type: !29, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !115, line: 605, type: !29, isLocal: true, isDefinition: true)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !115, line: 614, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 4)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !115, line: 639, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 6)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !115, line: 667, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 2)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !115, line: 667, type: !29, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !115, line: 668, type: !216, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !115, line: 668, type: !235, isLocal: true, isDefinition: true)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 3)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !115, line: 669, type: !29, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !115, line: 670, type: !221, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !115, line: 670, type: !221, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !115, line: 671, type: !246, isLocal: true, isDefinition: true)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 7)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !115, line: 672, type: !251, isLocal: true, isDefinition: true)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 8)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !115, line: 673, type: !90, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !115, line: 674, type: !90, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !115, line: 675, type: !90, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !115, line: 676, type: !90, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !115, line: 682, type: !246, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !115, line: 683, type: !90, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !115, line: 688, type: !194, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !115, line: 688, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 40)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !115, line: 695, type: !275, isLocal: true, isDefinition: true)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 15)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !115, line: 695, type: !280, isLocal: true, isDefinition: true)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 61)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !115, line: 698, type: !235, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !115, line: 702, type: !29, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !115, line: 707, type: !29, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !115, line: 710, type: !251, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !115, line: 858, type: !182, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !115, line: 859, type: !295, isLocal: true, isDefinition: true)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 22)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !115, line: 860, type: !275, isLocal: true, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !115, line: 882, type: !302, isLocal: true, isDefinition: true)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 27)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !115, line: 884, type: !307, isLocal: true, isDefinition: true)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 51)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !115, line: 885, type: !312, isLocal: true, isDefinition: true)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 12)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !312, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !172, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !194, isLocal: true, isDefinition: true)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !221, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !182, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !29, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !251, isLocal: true, isDefinition: true)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(name: "long_options", scope: !100, file: !2, line: 86, type: !331, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 2048, elements: !252)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !334, line: 50, size: 256, elements: !335)
!334 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!335 = !{!336, !337, !338, !340}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !333, file: !334, line: 52, baseType: !207, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !333, file: !334, line: 55, baseType: !116, size: 32, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !333, file: !334, line: 56, baseType: !339, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !333, file: !334, line: 57, baseType: !116, size: 32, offset: 192)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(name: "only_file_1", scope: !100, file: !2, line: 43, type: !199, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(name: "only_file_2", scope: !100, file: !2, line: 46, type: !199, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "both", scope: !100, file: !2, line: 49, type: !199, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "delim", scope: !100, file: !2, line: 58, type: !349, isLocal: true, isDefinition: true)
!349 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "col_sep_len", scope: !100, file: !2, line: 74, type: !352, isLocal: true, isDefinition: true)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !353, line: 18, baseType: !354)
!353 = !DIFile(filename: "/usr/lib/llvm-22/lib/clang/22/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!354 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !226, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(name: "col_sep", scope: !100, file: !2, line: 73, type: !207, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !226, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !226, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !2, line: 297, type: !235, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !2, line: 402, type: !177, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !2, line: 410, type: !177, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !2, line: 419, type: !371, isLocal: true, isDefinition: true)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 29)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !115, line: 959, type: !312, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "seen_unpairable", scope: !100, file: !2, line: 52, type: !199, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !2, line: 244, type: !380, isLocal: true, isDefinition: true)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 31)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(name: "issued_disorder_warning", scope: !100, file: !2, line: 55, type: !385, isLocal: true, isDefinition: true)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 16, elements: !227)
!386 = !{i32 7, !"Dwarf Version", i32 5}
!387 = !{i32 2, !"Debug Info Version", i32 3}
!388 = !{i32 1, !"wchar_size", i32 4}
!389 = !{i32 8, !"PIC Level", i32 2}
!390 = !{i32 7, !"PIE Level", i32 2}
!391 = !{i32 7, !"uwtable", i32 2}
!392 = !{i32 7, !"frame-pointer", i32 2}
!393 = !{!"Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)"}
!394 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 100, type: !395, scopeLine: 101, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !209)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !116}
!397 = !DILocalVariable(name: "status", arg: 1, scope: !394, file: !2, line: 100, type: !116)
!398 = !DILocation(line: 100, column: 12, scope: !394)
!399 = !DILocation(line: 102, column: 7, scope: !400)
!400 = distinct !DILexicalBlock(scope: !394, file: !2, line: 102, column: 7)
!401 = !DILocation(line: 102, column: 14, scope: !400)
!402 = !DILocation(line: 103, column: 5, scope: !400)
!403 = !DILocation(line: 103, column: 5, scope: !404)
!404 = distinct !DILexicalBlock(scope: !400, file: !2, line: 103, column: 5)
!405 = !DILocation(line: 106, column: 15, scope: !406)
!406 = distinct !DILexicalBlock(scope: !400, file: !2, line: 105, column: 5)
!407 = !DILocation(line: 109, column: 15, scope: !406)
!408 = !DILocation(line: 106, column: 7, scope: !406)
!409 = !DILocation(line: 110, column: 14, scope: !406)
!410 = !DILocation(line: 112, column: 5, scope: !406)
!411 = !DILocation(line: 110, column: 7, scope: !406)
!412 = !DILocation(line: 113, column: 14, scope: !406)
!413 = !DILocation(line: 116, column: 5, scope: !406)
!414 = !DILocation(line: 113, column: 7, scope: !406)
!415 = !DILocation(line: 117, column: 14, scope: !406)
!416 = !DILocation(line: 122, column: 5, scope: !406)
!417 = !DILocation(line: 117, column: 7, scope: !406)
!418 = !DILocation(line: 123, column: 14, scope: !406)
!419 = !DILocation(line: 123, column: 7, scope: !406)
!420 = !DILocation(line: 126, column: 14, scope: !406)
!421 = !DILocation(line: 126, column: 7, scope: !406)
!422 = !DILocation(line: 129, column: 14, scope: !406)
!423 = !DILocation(line: 129, column: 7, scope: !406)
!424 = !DILocation(line: 132, column: 14, scope: !406)
!425 = !DILocation(line: 132, column: 7, scope: !406)
!426 = !DILocation(line: 137, column: 14, scope: !406)
!427 = !DILocation(line: 137, column: 7, scope: !406)
!428 = !DILocation(line: 141, column: 14, scope: !406)
!429 = !DILocation(line: 141, column: 7, scope: !406)
!430 = !DILocation(line: 145, column: 14, scope: !406)
!431 = !DILocation(line: 145, column: 7, scope: !406)
!432 = !DILocation(line: 149, column: 14, scope: !406)
!433 = !DILocation(line: 149, column: 7, scope: !406)
!434 = !DILocation(line: 153, column: 14, scope: !406)
!435 = !DILocation(line: 153, column: 7, scope: !406)
!436 = !DILocation(line: 154, column: 14, scope: !406)
!437 = !DILocation(line: 154, column: 7, scope: !406)
!438 = !DILocation(line: 155, column: 14, scope: !406)
!439 = !DILocation(line: 158, column: 5, scope: !406)
!440 = !DILocation(line: 155, column: 7, scope: !406)
!441 = !DILocation(line: 159, column: 15, scope: !406)
!442 = !DILocation(line: 165, column: 15, scope: !406)
!443 = !DILocation(line: 165, column: 29, scope: !406)
!444 = !DILocation(line: 159, column: 7, scope: !406)
!445 = !DILocation(line: 166, column: 7, scope: !406)
!446 = !DILocation(line: 168, column: 9, scope: !394)
!447 = !DILocation(line: 168, column: 3, scope: !394)
!448 = !DILocalVariable(name: "program", arg: 1, scope: !204, file: !115, line: 592, type: !207)
!449 = !DILocation(line: 592, column: 34, scope: !204)
!450 = !DILocalVariable(name: "option", arg: 2, scope: !204, file: !115, line: 592, type: !207)
!451 = !DILocation(line: 592, column: 55, scope: !204)
!452 = !DILocation(line: 600, column: 7, scope: !453)
!453 = distinct !DILexicalBlock(scope: !204, file: !115, line: 600, column: 7)
!454 = !DILocation(line: 600, column: 19, scope: !453)
!455 = !DILocalVariable(name: "term", scope: !456, file: !115, line: 604, type: !207)
!456 = distinct !DILexicalBlock(scope: !453, file: !115, line: 601, column: 5)
!457 = !DILocation(line: 604, column: 19, scope: !456)
!458 = !DILocation(line: 604, column: 26, scope: !456)
!459 = !DILocation(line: 605, column: 23, scope: !456)
!460 = !DILocation(line: 605, column: 28, scope: !456)
!461 = !DILocation(line: 605, column: 33, scope: !456)
!462 = !DILocation(line: 605, column: 32, scope: !456)
!463 = !DILocation(line: 605, column: 38, scope: !456)
!464 = !DILocation(line: 605, column: 48, scope: !456)
!465 = !DILocation(line: 605, column: 41, scope: !456)
!466 = !DILocation(line: 605, column: 19, scope: !456)
!467 = !DILocation(line: 606, column: 5, scope: !456)
!468 = !DILocation(line: 607, column: 7, scope: !469)
!469 = distinct !DILexicalBlock(scope: !204, file: !115, line: 607, column: 7)
!470 = !DILocation(line: 609, column: 14, scope: !471)
!471 = distinct !DILexicalBlock(scope: !469, file: !115, line: 608, column: 5)
!472 = !DILocation(line: 609, column: 22, scope: !471)
!473 = !DILocation(line: 609, column: 7, scope: !471)
!474 = !DILocation(line: 610, column: 7, scope: !471)
!475 = !DILocalVariable(name: "double_space", scope: !204, file: !115, line: 613, type: !199)
!476 = !DILocation(line: 613, column: 8, scope: !204)
!477 = !DILocalVariable(name: "first_word", scope: !204, file: !115, line: 614, type: !207)
!478 = !DILocation(line: 614, column: 15, scope: !204)
!479 = !DILocation(line: 614, column: 28, scope: !204)
!480 = !DILocation(line: 614, column: 45, scope: !204)
!481 = !DILocation(line: 614, column: 37, scope: !204)
!482 = !DILocation(line: 614, column: 35, scope: !204)
!483 = !DILocalVariable(name: "option_text", scope: !204, file: !115, line: 615, type: !207)
!484 = !DILocation(line: 615, column: 15, scope: !204)
!485 = !DILocation(line: 615, column: 37, scope: !204)
!486 = !DILocation(line: 615, column: 29, scope: !204)
!487 = !DILocation(line: 616, column: 8, scope: !488)
!488 = distinct !DILexicalBlock(scope: !204, file: !115, line: 616, column: 7)
!489 = !DILocation(line: 616, column: 7, scope: !488)
!490 = !DILocation(line: 618, column: 21, scope: !491)
!491 = distinct !DILexicalBlock(scope: !488, file: !115, line: 617, column: 5)
!492 = !DILocation(line: 618, column: 19, scope: !491)
!493 = !DILocation(line: 621, column: 20, scope: !491)
!494 = !DILocation(line: 622, column: 5, scope: !491)
!495 = !DILocation(line: 623, column: 12, scope: !496)
!496 = distinct !DILexicalBlock(scope: !488, file: !115, line: 623, column: 12)
!497 = !DILocation(line: 623, column: 27, scope: !496)
!498 = !DILocation(line: 623, column: 24, scope: !496)
!499 = !DILocalVariable(name: "s", scope: !500, file: !115, line: 627, type: !207)
!500 = distinct !DILexicalBlock(scope: !496, file: !115, line: 624, column: 5)
!501 = !DILocation(line: 627, column: 19, scope: !500)
!502 = !DILocation(line: 627, column: 23, scope: !500)
!503 = !DILocalVariable(name: "spaces", scope: !500, file: !115, line: 628, type: !352)
!504 = !DILocation(line: 628, column: 14, scope: !500)
!505 = !DILocation(line: 629, column: 7, scope: !500)
!506 = !DILocation(line: 629, column: 14, scope: !500)
!507 = !DILocation(line: 629, column: 18, scope: !500)
!508 = !DILocation(line: 629, column: 16, scope: !500)
!509 = !DILocation(line: 629, column: 30, scope: !500)
!510 = !DILocation(line: 629, column: 33, scope: !500)
!511 = !DILocation(line: 629, column: 40, scope: !500)
!512 = !DILocation(line: 0, scope: !500)
!513 = !DILocation(line: 630, column: 21, scope: !500)
!514 = !DILocation(line: 630, column: 32, scope: !500)
!515 = !DILocation(line: 630, column: 30, scope: !500)
!516 = !DILocation(line: 630, column: 20, scope: !500)
!517 = !DILocation(line: 630, column: 19, scope: !500)
!518 = !DILocation(line: 630, column: 16, scope: !500)
!519 = distinct !{!519, !505, !513, !520}
!520 = !{!"llvm.loop.mustprogress"}
!521 = !DILocation(line: 631, column: 11, scope: !522)
!522 = distinct !DILexicalBlock(scope: !500, file: !115, line: 631, column: 11)
!523 = !DILocation(line: 631, column: 18, scope: !522)
!524 = !DILocation(line: 634, column: 25, scope: !525)
!525 = distinct !DILexicalBlock(scope: !522, file: !115, line: 632, column: 9)
!526 = !DILocation(line: 634, column: 23, scope: !525)
!527 = !DILocation(line: 635, column: 24, scope: !525)
!528 = !DILocation(line: 636, column: 9, scope: !525)
!529 = !DILocation(line: 637, column: 5, scope: !500)
!530 = !DILocalVariable(name: "anchor_len", scope: !204, file: !115, line: 639, type: !352)
!531 = !DILocation(line: 639, column: 10, scope: !204)
!532 = !DILocation(line: 639, column: 32, scope: !204)
!533 = !DILocation(line: 639, column: 23, scope: !204)
!534 = !DILocalVariable(name: "desc_text", scope: !204, file: !115, line: 644, type: !207)
!535 = !DILocation(line: 644, column: 15, scope: !204)
!536 = !DILocation(line: 644, column: 27, scope: !204)
!537 = !DILocation(line: 644, column: 41, scope: !204)
!538 = !DILocation(line: 644, column: 39, scope: !204)
!539 = !DILocation(line: 645, column: 3, scope: !204)
!540 = !DILocation(line: 645, column: 11, scope: !204)
!541 = !DILocation(line: 645, column: 10, scope: !204)
!542 = !DILocation(line: 645, column: 21, scope: !204)
!543 = !DILocation(line: 645, column: 25, scope: !204)
!544 = !DILocation(line: 645, column: 24, scope: !204)
!545 = !DILocation(line: 645, column: 35, scope: !204)
!546 = !DILocation(line: 0, scope: !204)
!547 = !DILocation(line: 647, column: 12, scope: !548)
!548 = distinct !DILexicalBlock(scope: !549, file: !115, line: 647, column: 11)
!549 = distinct !DILexicalBlock(scope: !204, file: !115, line: 646, column: 5)
!550 = !DILocation(line: 647, column: 11, scope: !548)
!551 = !DILocation(line: 647, column: 22, scope: !548)
!552 = !DILocation(line: 647, column: 29, scope: !548)
!553 = !DILocation(line: 647, column: 34, scope: !548)
!554 = !DILocation(line: 647, column: 32, scope: !548)
!555 = !DILocation(line: 647, column: 49, scope: !548)
!556 = !DILocation(line: 648, column: 22, scope: !548)
!557 = !DILocation(line: 648, column: 9, scope: !548)
!558 = !DILocation(line: 649, column: 11, scope: !559)
!559 = distinct !DILexicalBlock(scope: !549, file: !115, line: 649, column: 11)
!560 = !DILocation(line: 649, column: 21, scope: !559)
!561 = !DILocation(line: 649, column: 20, scope: !559)
!562 = !DILocation(line: 651, column: 16, scope: !563)
!563 = distinct !DILexicalBlock(scope: !564, file: !115, line: 651, column: 15)
!564 = distinct !DILexicalBlock(scope: !559, file: !115, line: 650, column: 9)
!565 = !DILocation(line: 651, column: 15, scope: !563)
!566 = !DILocation(line: 651, column: 26, scope: !563)
!567 = !DILocation(line: 651, column: 34, scope: !563)
!568 = !DILocation(line: 651, column: 37, scope: !563)
!569 = !DILocation(line: 651, column: 48, scope: !563)
!570 = !DILocation(line: 651, column: 46, scope: !563)
!571 = !DILocation(line: 652, column: 13, scope: !563)
!572 = !DILocation(line: 655, column: 16, scope: !573)
!573 = distinct !DILexicalBlock(scope: !564, file: !115, line: 655, column: 15)
!574 = !DILocation(line: 655, column: 29, scope: !573)
!575 = !DILocation(line: 655, column: 34, scope: !573)
!576 = !DILocation(line: 655, column: 32, scope: !573)
!577 = !DILocation(line: 655, column: 49, scope: !573)
!578 = !DILocation(line: 656, column: 13, scope: !573)
!579 = !DILocation(line: 657, column: 9, scope: !564)
!580 = !DILocation(line: 659, column: 16, scope: !549)
!581 = distinct !{!581, !539, !582, !520}
!582 = !DILocation(line: 660, column: 5, scope: !204)
!583 = !DILocation(line: 663, column: 11, scope: !204)
!584 = !DILocation(line: 663, column: 22, scope: !204)
!585 = !DILocation(line: 663, column: 35, scope: !204)
!586 = !DILocation(line: 663, column: 33, scope: !204)
!587 = !DILocation(line: 663, column: 43, scope: !204)
!588 = !DILocation(line: 663, column: 3, scope: !204)
!589 = !DILocalVariable(name: "url_program", scope: !204, file: !115, line: 667, type: !207)
!590 = !DILocation(line: 667, column: 15, scope: !204)
!591 = !DILocation(line: 667, column: 38, scope: !204)
!592 = !DILocation(line: 667, column: 31, scope: !204)
!593 = !DILocation(line: 668, column: 38, scope: !204)
!594 = !DILocation(line: 668, column: 31, scope: !204)
!595 = !DILocation(line: 669, column: 38, scope: !204)
!596 = !DILocation(line: 669, column: 31, scope: !204)
!597 = !DILocation(line: 670, column: 38, scope: !204)
!598 = !DILocation(line: 670, column: 31, scope: !204)
!599 = !DILocation(line: 671, column: 38, scope: !204)
!600 = !DILocation(line: 671, column: 31, scope: !204)
!601 = !DILocation(line: 672, column: 38, scope: !204)
!602 = !DILocation(line: 672, column: 31, scope: !204)
!603 = !DILocation(line: 673, column: 38, scope: !204)
!604 = !DILocation(line: 673, column: 31, scope: !204)
!605 = !DILocation(line: 674, column: 38, scope: !204)
!606 = !DILocation(line: 674, column: 31, scope: !204)
!607 = !DILocation(line: 675, column: 38, scope: !204)
!608 = !DILocation(line: 675, column: 31, scope: !204)
!609 = !DILocation(line: 676, column: 38, scope: !204)
!610 = !DILocation(line: 676, column: 31, scope: !204)
!611 = !DILocation(line: 677, column: 31, scope: !204)
!612 = !DILocation(line: 682, column: 18, scope: !613)
!613 = distinct !DILexicalBlock(scope: !204, file: !115, line: 682, column: 7)
!614 = !DILocation(line: 682, column: 7, scope: !613)
!615 = !DILocation(line: 683, column: 7, scope: !613)
!616 = !DILocation(line: 683, column: 21, scope: !613)
!617 = !DILocation(line: 683, column: 10, scope: !613)
!618 = !DILocation(line: 689, column: 15, scope: !619)
!619 = distinct !DILexicalBlock(scope: !613, file: !115, line: 684, column: 5)
!620 = !DILocation(line: 689, column: 28, scope: !619)
!621 = !DILocation(line: 689, column: 47, scope: !619)
!622 = !DILocation(line: 689, column: 41, scope: !619)
!623 = !DILocation(line: 689, column: 59, scope: !619)
!624 = !DILocation(line: 688, column: 7, scope: !619)
!625 = !DILocation(line: 690, column: 5, scope: !619)
!626 = !DILocation(line: 695, column: 48, scope: !627)
!627 = distinct !DILexicalBlock(scope: !613, file: !115, line: 692, column: 5)
!628 = !DILocation(line: 696, column: 21, scope: !627)
!629 = !DILocation(line: 696, column: 15, scope: !627)
!630 = !DILocation(line: 696, column: 33, scope: !627)
!631 = !DILocation(line: 695, column: 7, scope: !627)
!632 = !DILocation(line: 698, column: 20, scope: !204)
!633 = !DILocation(line: 698, column: 3, scope: !204)
!634 = !DILocation(line: 702, column: 21, scope: !204)
!635 = !DILocation(line: 702, column: 3, scope: !204)
!636 = !DILocation(line: 705, column: 11, scope: !204)
!637 = !DILocation(line: 705, column: 26, scope: !204)
!638 = !DILocation(line: 705, column: 38, scope: !204)
!639 = !DILocation(line: 705, column: 36, scope: !204)
!640 = !DILocation(line: 705, column: 50, scope: !204)
!641 = !DILocation(line: 705, column: 3, scope: !204)
!642 = !DILocation(line: 707, column: 21, scope: !204)
!643 = !DILocation(line: 707, column: 3, scope: !204)
!644 = !DILocation(line: 710, column: 28, scope: !204)
!645 = !DILocation(line: 710, column: 3, scope: !204)
!646 = !DILocation(line: 714, column: 10, scope: !204)
!647 = !DILocation(line: 714, column: 21, scope: !204)
!648 = !DILocation(line: 714, column: 3, scope: !204)
!649 = !DILocation(line: 715, column: 1, scope: !204)
!650 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !115, file: !115, line: 855, type: !651, scopeLine: 856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !100, retainedNodes: !209)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !207}
!653 = !DILocalVariable(name: "program", arg: 1, scope: !650, file: !115, line: 855, type: !207)
!654 = !DILocation(line: 855, column: 34, scope: !650)
!655 = !DILocalVariable(name: "infomap", scope: !650, file: !115, line: 857, type: !656)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !657, size: 896, elements: !247)
!657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !650, file: !115, line: 857, size: 128, elements: !659)
!659 = !{!660, !661}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !658, file: !115, line: 857, baseType: !207, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !658, file: !115, line: 857, baseType: !207, size: 64, offset: 64)
!662 = !DILocation(line: 857, column: 67, scope: !650)
!663 = !DILocalVariable(name: "node", scope: !650, file: !115, line: 867, type: !207)
!664 = !DILocation(line: 867, column: 15, scope: !650)
!665 = !DILocation(line: 867, column: 22, scope: !650)
!666 = !DILocalVariable(name: "map_prog", scope: !650, file: !115, line: 868, type: !667)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!668 = !DILocation(line: 868, column: 25, scope: !650)
!669 = !DILocation(line: 868, column: 36, scope: !650)
!670 = !DILocation(line: 870, column: 3, scope: !650)
!671 = !DILocation(line: 870, column: 10, scope: !650)
!672 = !DILocation(line: 870, column: 20, scope: !650)
!673 = !DILocation(line: 870, column: 28, scope: !650)
!674 = !DILocation(line: 870, column: 40, scope: !650)
!675 = !DILocation(line: 870, column: 49, scope: !650)
!676 = !DILocation(line: 870, column: 59, scope: !650)
!677 = !DILocation(line: 870, column: 33, scope: !650)
!678 = !DILocation(line: 870, column: 31, scope: !650)
!679 = !DILocation(line: 0, scope: !650)
!680 = !DILocation(line: 871, column: 13, scope: !650)
!681 = distinct !{!681, !670, !680, !520}
!682 = !DILocation(line: 873, column: 7, scope: !683)
!683 = distinct !DILexicalBlock(scope: !650, file: !115, line: 873, column: 7)
!684 = !DILocation(line: 873, column: 17, scope: !683)
!685 = !DILocation(line: 874, column: 12, scope: !683)
!686 = !DILocation(line: 874, column: 22, scope: !683)
!687 = !DILocation(line: 874, column: 10, scope: !683)
!688 = !DILocation(line: 874, column: 5, scope: !683)
!689 = !DILocation(line: 876, column: 3, scope: !650)
!690 = !DILocalVariable(name: "url_program", scope: !650, file: !115, line: 881, type: !207)
!691 = !DILocation(line: 881, column: 15, scope: !650)
!692 = !DILocation(line: 881, column: 36, scope: !650)
!693 = !DILocation(line: 881, column: 29, scope: !650)
!694 = !DILocation(line: 881, column: 61, scope: !650)
!695 = !DILocation(line: 882, column: 11, scope: !650)
!696 = !DILocation(line: 883, column: 24, scope: !650)
!697 = !DILocation(line: 882, column: 3, scope: !650)
!698 = !DILocation(line: 884, column: 11, scope: !650)
!699 = !DILocation(line: 885, column: 11, scope: !650)
!700 = !DILocation(line: 885, column: 17, scope: !650)
!701 = !DILocation(line: 885, column: 25, scope: !650)
!702 = !DILocation(line: 885, column: 22, scope: !650)
!703 = !DILocation(line: 884, column: 3, scope: !650)
!704 = !DILocation(line: 886, column: 1, scope: !650)
!705 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 426, type: !706, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !209)
!706 = !DISubroutineType(types: !707)
!707 = !{!116, !116, !708}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!709 = !DILocalVariable(name: "argc", arg: 1, scope: !705, file: !2, line: 426, type: !116)
!710 = !DILocation(line: 426, column: 11, scope: !705)
!711 = !DILocalVariable(name: "argv", arg: 2, scope: !705, file: !2, line: 426, type: !708)
!712 = !DILocation(line: 426, column: 24, scope: !705)
!713 = !DILocalVariable(name: "c", scope: !705, file: !2, line: 428, type: !116)
!714 = !DILocation(line: 428, column: 7, scope: !705)
!715 = !DILocation(line: 431, column: 21, scope: !705)
!716 = !DILocation(line: 431, column: 3, scope: !705)
!717 = !DILocation(line: 432, column: 3, scope: !705)
!718 = !DILocation(line: 433, column: 3, scope: !705)
!719 = !DILocation(line: 434, column: 3, scope: !705)
!720 = !DILocation(line: 435, column: 21, scope: !705)
!721 = !DILocation(line: 435, column: 19, scope: !705)
!722 = !DILocation(line: 437, column: 3, scope: !705)
!723 = !DILocation(line: 439, column: 3, scope: !705)
!724 = !DILocation(line: 439, column: 28, scope: !705)
!725 = !DILocation(line: 439, column: 34, scope: !705)
!726 = !DILocation(line: 439, column: 15, scope: !705)
!727 = !DILocation(line: 439, column: 13, scope: !705)
!728 = !DILocation(line: 439, column: 69, scope: !705)
!729 = !DILocation(line: 440, column: 13, scope: !705)
!730 = !DILocation(line: 440, column: 5, scope: !705)
!731 = !DILocation(line: 443, column: 21, scope: !732)
!732 = distinct !DILexicalBlock(scope: !705, file: !2, line: 441, column: 7)
!733 = !DILocation(line: 444, column: 9, scope: !732)
!734 = !DILocation(line: 447, column: 21, scope: !732)
!735 = !DILocation(line: 448, column: 9, scope: !732)
!736 = !DILocation(line: 451, column: 14, scope: !732)
!737 = !DILocation(line: 452, column: 9, scope: !732)
!738 = !DILocation(line: 455, column: 15, scope: !732)
!739 = !DILocation(line: 456, column: 9, scope: !732)
!740 = !DILocation(line: 459, column: 27, scope: !732)
!741 = !DILocation(line: 460, column: 9, scope: !732)
!742 = !DILocation(line: 463, column: 27, scope: !732)
!743 = !DILocation(line: 464, column: 9, scope: !732)
!744 = !DILocation(line: 467, column: 13, scope: !745)
!745 = distinct !DILexicalBlock(scope: !732, file: !2, line: 467, column: 13)
!746 = !DILocation(line: 467, column: 25, scope: !745)
!747 = !DILocation(line: 467, column: 36, scope: !745)
!748 = !DILocation(line: 467, column: 45, scope: !745)
!749 = !DILocation(line: 467, column: 29, scope: !745)
!750 = !DILocation(line: 468, column: 35, scope: !745)
!751 = !DILocation(line: 468, column: 11, scope: !745)
!752 = !DILocation(line: 469, column: 19, scope: !732)
!753 = !DILocation(line: 469, column: 17, scope: !732)
!754 = !DILocation(line: 470, column: 24, scope: !732)
!755 = !DILocation(line: 470, column: 23, scope: !732)
!756 = !DILocation(line: 470, column: 41, scope: !732)
!757 = !DILocation(line: 470, column: 33, scope: !732)
!758 = !DILocation(line: 470, column: 21, scope: !732)
!759 = !DILocation(line: 471, column: 9, scope: !732)
!760 = !DILocation(line: 474, column: 22, scope: !732)
!761 = !DILocation(line: 475, column: 9, scope: !732)
!762 = !DILocation(line: 477, column: 7, scope: !732)
!763 = !DILocation(line: 479, column: 7, scope: !732)
!764 = !DILocation(line: 479, column: 47, scope: !732)
!765 = !DILocation(line: 482, column: 9, scope: !732)
!766 = distinct !{!766, !723, !767, !520}
!767 = !DILocation(line: 483, column: 7, scope: !705)
!768 = !DILocation(line: 485, column: 9, scope: !769)
!769 = distinct !DILexicalBlock(scope: !705, file: !2, line: 485, column: 7)
!770 = !DILocation(line: 485, column: 7, scope: !769)
!771 = !DILocation(line: 486, column: 17, scope: !769)
!772 = !DILocation(line: 486, column: 5, scope: !769)
!773 = !DILocation(line: 488, column: 7, scope: !774)
!774 = distinct !DILexicalBlock(scope: !705, file: !2, line: 488, column: 7)
!775 = !DILocation(line: 488, column: 14, scope: !774)
!776 = !DILocation(line: 488, column: 12, scope: !774)
!777 = !DILocation(line: 488, column: 21, scope: !774)
!778 = !DILocation(line: 490, column: 11, scope: !779)
!779 = distinct !DILexicalBlock(scope: !780, file: !2, line: 490, column: 11)
!780 = distinct !DILexicalBlock(scope: !774, file: !2, line: 489, column: 5)
!781 = !DILocation(line: 490, column: 19, scope: !779)
!782 = !DILocation(line: 490, column: 16, scope: !779)
!783 = !DILocation(line: 491, column: 22, scope: !779)
!784 = !DILocation(line: 491, column: 9, scope: !779)
!785 = !DILocation(line: 493, column: 22, scope: !779)
!786 = !DILocation(line: 493, column: 60, scope: !779)
!787 = !DILocation(line: 493, column: 65, scope: !779)
!788 = !DILocation(line: 493, column: 70, scope: !779)
!789 = !DILocation(line: 493, column: 53, scope: !779)
!790 = !DILocation(line: 493, column: 9, scope: !779)
!791 = !DILocation(line: 494, column: 7, scope: !780)
!792 = !DILocation(line: 497, column: 11, scope: !793)
!793 = distinct !DILexicalBlock(scope: !705, file: !2, line: 497, column: 7)
!794 = !DILocation(line: 497, column: 18, scope: !793)
!795 = !DILocation(line: 497, column: 16, scope: !793)
!796 = !DILocation(line: 497, column: 9, scope: !793)
!797 = !DILocation(line: 499, column: 20, scope: !798)
!798 = distinct !DILexicalBlock(scope: !793, file: !2, line: 498, column: 5)
!799 = !DILocation(line: 499, column: 50, scope: !798)
!800 = !DILocation(line: 499, column: 55, scope: !798)
!801 = !DILocation(line: 499, column: 62, scope: !798)
!802 = !DILocation(line: 499, column: 43, scope: !798)
!803 = !DILocation(line: 499, column: 7, scope: !798)
!804 = !DILocation(line: 500, column: 7, scope: !798)
!805 = !DILocation(line: 503, column: 18, scope: !705)
!806 = !DILocation(line: 503, column: 25, scope: !705)
!807 = !DILocation(line: 503, column: 23, scope: !705)
!808 = !DILocation(line: 503, column: 3, scope: !705)
!809 = distinct !DISubprogram(name: "compare_files", scope: !2, file: !2, line: 261, type: !810, scopeLine: 262, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !100, retainedNodes: !209)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !708}
!812 = !DILocalVariable(name: "infiles", arg: 1, scope: !809, file: !2, line: 261, type: !708)
!813 = !DILocation(line: 261, column: 23, scope: !809)
!814 = !DILocalVariable(name: "lba", scope: !809, file: !2, line: 264, type: !815)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 1536, elements: !825)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !817, line: 32, size: 192, elements: !818)
!817 = !DIFile(filename: "./lib/linebuffer.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "e2597f62c7d5286d9e09d95cf657d3bc")
!818 = !{!819, !823, !824}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !816, file: !817, line: 34, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !821, line: 137, baseType: !822)
!821 = !DIFile(filename: "./lib/idx.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "a342c053ede588630cf36a09403114d3")
!822 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !816, file: !817, line: 35, baseType: !820, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !816, file: !817, line: 36, baseType: !159, size: 64, offset: 128)
!825 = !{!228, !218}
!826 = !DILocation(line: 264, column: 21, scope: !809)
!827 = !DILocalVariable(name: "thisline", scope: !809, file: !2, line: 268, type: !828)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !829, size: 128, elements: !227)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!830 = !DILocation(line: 268, column: 22, scope: !809)
!831 = !DILocalVariable(name: "all_line", scope: !809, file: !2, line: 273, type: !832)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !829, size: 512, elements: !825)
!833 = !DILocation(line: 273, column: 22, scope: !809)
!834 = !DILocalVariable(name: "alt", scope: !809, file: !2, line: 276, type: !835)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 192, elements: !836)
!836 = !{!228, !237}
!837 = !DILocation(line: 276, column: 7, scope: !809)
!838 = !DILocalVariable(name: "streams", scope: !809, file: !2, line: 279, type: !839)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 128, elements: !227)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !842, line: 7, baseType: !843)
!842 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !844, line: 49, size: 1728, elements: !845)
!844 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!845 = !{!846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !861, !863, !864, !865, !868, !869, !871, !872, !875, !877, !880, !883, !884, !885, !886, !887}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !843, file: !844, line: 51, baseType: !116, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !843, file: !844, line: 54, baseType: !159, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !843, file: !844, line: 55, baseType: !159, size: 64, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !843, file: !844, line: 56, baseType: !159, size: 64, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !843, file: !844, line: 57, baseType: !159, size: 64, offset: 256)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !843, file: !844, line: 58, baseType: !159, size: 64, offset: 320)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !843, file: !844, line: 59, baseType: !159, size: 64, offset: 384)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !843, file: !844, line: 60, baseType: !159, size: 64, offset: 448)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !843, file: !844, line: 61, baseType: !159, size: 64, offset: 512)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !843, file: !844, line: 64, baseType: !159, size: 64, offset: 576)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !843, file: !844, line: 65, baseType: !159, size: 64, offset: 640)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !843, file: !844, line: 66, baseType: !159, size: 64, offset: 704)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !843, file: !844, line: 68, baseType: !859, size: 64, offset: 768)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !844, line: 36, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !843, file: !844, line: 70, baseType: !862, size: 64, offset: 832)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !843, file: !844, line: 72, baseType: !116, size: 32, offset: 896)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !843, file: !844, line: 73, baseType: !116, size: 32, offset: 928)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !843, file: !844, line: 74, baseType: !866, size: 64, offset: 960)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !867, line: 152, baseType: !822)
!867 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !843, file: !844, line: 77, baseType: !161, size: 16, offset: 1024)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !843, file: !844, line: 78, baseType: !870, size: 8, offset: 1040)
!870 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !843, file: !844, line: 79, baseType: !85, size: 8, offset: 1048)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !843, file: !844, line: 81, baseType: !873, size: 64, offset: 1088)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !844, line: 43, baseType: null)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !843, file: !844, line: 89, baseType: !876, size: 64, offset: 1152)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !867, line: 153, baseType: !822)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !843, file: !844, line: 91, baseType: !878, size: 64, offset: 1216)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !844, line: 37, flags: DIFlagFwdDecl)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !843, file: !844, line: 92, baseType: !881, size: 64, offset: 1280)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !844, line: 38, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !843, file: !844, line: 93, baseType: !862, size: 64, offset: 1344)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !843, file: !844, line: 94, baseType: !160, size: 64, offset: 1408)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !843, file: !844, line: 95, baseType: !352, size: 64, offset: 1472)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !843, file: !844, line: 96, baseType: !116, size: 32, offset: 1536)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !843, file: !844, line: 98, baseType: !177, size: 160, offset: 1568)
!888 = !DILocation(line: 279, column: 9, scope: !809)
!889 = !DILocalVariable(name: "total", scope: !809, file: !2, line: 282, type: !890)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !891, size: 192, elements: !236)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !892, line: 102, baseType: !893)
!892 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !867, line: 73, baseType: !354)
!894 = !DILocation(line: 282, column: 13, scope: !809)
!895 = !DILocalVariable(name: "i", scope: !896, file: !2, line: 285, type: !116)
!896 = distinct !DILexicalBlock(scope: !809, file: !2, line: 285, column: 3)
!897 = !DILocation(line: 285, column: 12, scope: !896)
!898 = !DILocation(line: 285, column: 8, scope: !896)
!899 = !DILocation(line: 285, column: 19, scope: !900)
!900 = distinct !DILexicalBlock(scope: !896, file: !2, line: 285, column: 3)
!901 = !DILocation(line: 285, column: 21, scope: !900)
!902 = !DILocation(line: 285, column: 3, scope: !896)
!903 = !DILocalVariable(name: "j", scope: !904, file: !2, line: 287, type: !116)
!904 = distinct !DILexicalBlock(scope: !905, file: !2, line: 287, column: 7)
!905 = distinct !DILexicalBlock(scope: !900, file: !2, line: 286, column: 5)
!906 = !DILocation(line: 287, column: 16, scope: !904)
!907 = !DILocation(line: 287, column: 12, scope: !904)
!908 = !DILocation(line: 287, column: 23, scope: !909)
!909 = distinct !DILexicalBlock(scope: !904, file: !2, line: 287, column: 7)
!910 = !DILocation(line: 287, column: 25, scope: !909)
!911 = !DILocation(line: 287, column: 7, scope: !904)
!912 = !DILocation(line: 289, column: 28, scope: !913)
!913 = distinct !DILexicalBlock(scope: !909, file: !2, line: 288, column: 9)
!914 = !DILocation(line: 289, column: 24, scope: !913)
!915 = !DILocation(line: 289, column: 31, scope: !913)
!916 = !DILocation(line: 289, column: 11, scope: !913)
!917 = !DILocation(line: 290, column: 33, scope: !913)
!918 = !DILocation(line: 290, column: 29, scope: !913)
!919 = !DILocation(line: 290, column: 36, scope: !913)
!920 = !DILocation(line: 290, column: 20, scope: !913)
!921 = !DILocation(line: 290, column: 11, scope: !913)
!922 = !DILocation(line: 290, column: 23, scope: !913)
!923 = !DILocation(line: 290, column: 26, scope: !913)
!924 = !DILocation(line: 291, column: 9, scope: !913)
!925 = !DILocation(line: 287, column: 31, scope: !909)
!926 = !DILocation(line: 287, column: 7, scope: !909)
!927 = distinct !{!927, !911, !928, !520}
!928 = !DILocation(line: 291, column: 9, scope: !904)
!929 = !DILocation(line: 292, column: 11, scope: !905)
!930 = !DILocation(line: 292, column: 7, scope: !905)
!931 = !DILocation(line: 292, column: 17, scope: !905)
!932 = !DILocation(line: 293, column: 11, scope: !905)
!933 = !DILocation(line: 293, column: 7, scope: !905)
!934 = !DILocation(line: 293, column: 17, scope: !905)
!935 = !DILocation(line: 294, column: 11, scope: !905)
!936 = !DILocation(line: 294, column: 7, scope: !905)
!937 = !DILocation(line: 294, column: 17, scope: !905)
!938 = !DILocation(line: 295, column: 28, scope: !905)
!939 = !DILocation(line: 295, column: 36, scope: !905)
!940 = !DILocation(line: 295, column: 21, scope: !905)
!941 = !DILocation(line: 295, column: 47, scope: !905)
!942 = !DILocation(line: 295, column: 62, scope: !905)
!943 = !DILocation(line: 295, column: 70, scope: !905)
!944 = !DILocation(line: 295, column: 55, scope: !905)
!945 = !DILocation(line: 295, column: 15, scope: !905)
!946 = !DILocation(line: 295, column: 7, scope: !905)
!947 = !DILocation(line: 295, column: 18, scope: !905)
!948 = !DILocation(line: 296, column: 20, scope: !949)
!949 = distinct !DILexicalBlock(scope: !905, file: !2, line: 296, column: 11)
!950 = !DILocation(line: 296, column: 12, scope: !949)
!951 = !DILocation(line: 296, column: 11, scope: !949)
!952 = !DILocation(line: 297, column: 30, scope: !949)
!953 = !DILocation(line: 297, column: 51, scope: !949)
!954 = !DILocation(line: 297, column: 59, scope: !949)
!955 = !DILocation(line: 297, column: 43, scope: !949)
!956 = !DILocation(line: 297, column: 9, scope: !949)
!957 = !DILocation(line: 299, column: 24, scope: !905)
!958 = !DILocation(line: 299, column: 16, scope: !905)
!959 = !DILocation(line: 299, column: 7, scope: !905)
!960 = !DILocation(line: 301, column: 52, scope: !905)
!961 = !DILocation(line: 301, column: 43, scope: !905)
!962 = !DILocation(line: 301, column: 59, scope: !905)
!963 = !DILocation(line: 301, column: 55, scope: !905)
!964 = !DILocation(line: 301, column: 75, scope: !905)
!965 = !DILocation(line: 301, column: 67, scope: !905)
!966 = !DILocation(line: 302, column: 43, scope: !905)
!967 = !DILocation(line: 301, column: 21, scope: !905)
!968 = !DILocation(line: 301, column: 16, scope: !905)
!969 = !DILocation(line: 301, column: 7, scope: !905)
!970 = !DILocation(line: 301, column: 19, scope: !905)
!971 = !DILocation(line: 303, column: 27, scope: !972)
!972 = distinct !DILexicalBlock(scope: !905, file: !2, line: 303, column: 11)
!973 = !DILocation(line: 303, column: 19, scope: !972)
!974 = !DILocation(line: 303, column: 11, scope: !972)
!975 = !DILocation(line: 304, column: 30, scope: !972)
!976 = !DILocation(line: 304, column: 51, scope: !972)
!977 = !DILocation(line: 304, column: 59, scope: !972)
!978 = !DILocation(line: 304, column: 43, scope: !972)
!979 = !DILocation(line: 304, column: 9, scope: !972)
!980 = !DILocation(line: 305, column: 5, scope: !905)
!981 = !DILocation(line: 285, column: 27, scope: !900)
!982 = !DILocation(line: 285, column: 3, scope: !900)
!983 = distinct !{!983, !902, !984, !520}
!984 = !DILocation(line: 305, column: 5, scope: !896)
!985 = !DILocation(line: 307, column: 3, scope: !809)
!986 = !DILocation(line: 307, column: 10, scope: !809)
!987 = !DILocation(line: 307, column: 22, scope: !809)
!988 = !DILocation(line: 307, column: 25, scope: !809)
!989 = !DILocalVariable(name: "order", scope: !990, file: !2, line: 309, type: !116)
!990 = distinct !DILexicalBlock(scope: !809, file: !2, line: 308, column: 5)
!991 = !DILocation(line: 309, column: 11, scope: !990)
!992 = !DILocalVariable(name: "fill_up", scope: !990, file: !2, line: 310, type: !385)
!993 = !DILocation(line: 310, column: 12, scope: !990)
!994 = !DILocation(line: 314, column: 12, scope: !995)
!995 = distinct !DILexicalBlock(scope: !990, file: !2, line: 314, column: 11)
!996 = !DILocation(line: 314, column: 11, scope: !995)
!997 = !DILocation(line: 315, column: 15, scope: !995)
!998 = !DILocation(line: 315, column: 9, scope: !995)
!999 = !DILocation(line: 316, column: 17, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !995, file: !2, line: 316, column: 16)
!1001 = !DILocation(line: 316, column: 16, scope: !1000)
!1002 = !DILocation(line: 317, column: 15, scope: !1000)
!1003 = !DILocation(line: 317, column: 9, scope: !1000)
!1004 = !DILocation(line: 320, column: 15, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !2, line: 320, column: 15)
!1006 = distinct !DILexicalBlock(scope: !1000, file: !2, line: 319, column: 9)
!1007 = !DILocation(line: 321, column: 31, scope: !1005)
!1008 = !DILocation(line: 321, column: 44, scope: !1005)
!1009 = !DILocation(line: 321, column: 52, scope: !1005)
!1010 = !DILocation(line: 321, column: 65, scope: !1005)
!1011 = !DILocation(line: 321, column: 72, scope: !1005)
!1012 = !DILocation(line: 322, column: 31, scope: !1005)
!1013 = !DILocation(line: 322, column: 44, scope: !1005)
!1014 = !DILocation(line: 322, column: 52, scope: !1005)
!1015 = !DILocation(line: 322, column: 65, scope: !1005)
!1016 = !DILocation(line: 322, column: 72, scope: !1005)
!1017 = !DILocation(line: 321, column: 21, scope: !1005)
!1018 = !DILocation(line: 321, column: 19, scope: !1005)
!1019 = !DILocation(line: 321, column: 13, scope: !1005)
!1020 = !DILocalVariable(name: "len", scope: !1021, file: !2, line: 325, type: !352)
!1021 = distinct !DILexicalBlock(scope: !1005, file: !2, line: 324, column: 13)
!1022 = !DILocation(line: 325, column: 22, scope: !1021)
!1023 = !DILocation(line: 325, column: 33, scope: !1021)
!1024 = !DILocation(line: 325, column: 46, scope: !1021)
!1025 = !DILocation(line: 325, column: 54, scope: !1021)
!1026 = !DILocation(line: 325, column: 67, scope: !1021)
!1027 = !DILocation(line: 325, column: 28, scope: !1021)
!1028 = !DILocation(line: 325, column: 75, scope: !1021)
!1029 = !DILocation(line: 326, column: 31, scope: !1021)
!1030 = !DILocation(line: 326, column: 44, scope: !1021)
!1031 = !DILocation(line: 326, column: 52, scope: !1021)
!1032 = !DILocation(line: 326, column: 65, scope: !1021)
!1033 = !DILocation(line: 326, column: 73, scope: !1021)
!1034 = !DILocation(line: 326, column: 23, scope: !1021)
!1035 = !DILocation(line: 326, column: 21, scope: !1021)
!1036 = !DILocation(line: 327, column: 19, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 327, column: 19)
!1038 = !DILocation(line: 327, column: 25, scope: !1037)
!1039 = !DILocation(line: 328, column: 34, scope: !1037)
!1040 = !DILocation(line: 328, column: 47, scope: !1037)
!1041 = !DILocation(line: 328, column: 55, scope: !1037)
!1042 = !DILocation(line: 328, column: 68, scope: !1037)
!1043 = !DILocation(line: 328, column: 25, scope: !1037)
!1044 = !DILocation(line: 328, column: 23, scope: !1037)
!1045 = !DILocation(line: 328, column: 17, scope: !1037)
!1046 = !DILocation(line: 333, column: 11, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !990, file: !2, line: 333, column: 11)
!1048 = !DILocation(line: 333, column: 17, scope: !1047)
!1049 = !DILocation(line: 336, column: 11, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1047, file: !2, line: 334, column: 9)
!1051 = !DILocation(line: 336, column: 19, scope: !1050)
!1052 = !DILocation(line: 337, column: 22, scope: !1050)
!1053 = !DILocation(line: 337, column: 11, scope: !1050)
!1054 = !DILocation(line: 338, column: 9, scope: !1050)
!1055 = !DILocation(line: 341, column: 27, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1047, file: !2, line: 340, column: 9)
!1057 = !DILocation(line: 342, column: 15, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 342, column: 15)
!1059 = !DILocation(line: 342, column: 21, scope: !1058)
!1060 = !DILocation(line: 345, column: 15, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 343, column: 13)
!1062 = !DILocation(line: 345, column: 23, scope: !1061)
!1063 = !DILocation(line: 346, column: 26, scope: !1061)
!1064 = !DILocation(line: 346, column: 15, scope: !1061)
!1065 = !DILocation(line: 347, column: 13, scope: !1061)
!1066 = !DILocation(line: 351, column: 15, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 349, column: 13)
!1068 = !DILocation(line: 351, column: 23, scope: !1067)
!1069 = !DILocation(line: 352, column: 26, scope: !1067)
!1070 = !DILocation(line: 352, column: 15, scope: !1067)
!1071 = !DILocation(line: 358, column: 16, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !990, file: !2, line: 358, column: 11)
!1073 = !DILocation(line: 358, column: 13, scope: !1072)
!1074 = !DILocation(line: 359, column: 9, scope: !1072)
!1075 = !DILocation(line: 359, column: 20, scope: !1072)
!1076 = !DILocation(line: 360, column: 11, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !990, file: !2, line: 360, column: 11)
!1078 = !DILocation(line: 360, column: 17, scope: !1077)
!1079 = !DILocation(line: 361, column: 9, scope: !1077)
!1080 = !DILocation(line: 361, column: 20, scope: !1077)
!1081 = !DILocalVariable(name: "i", scope: !1082, file: !2, line: 363, type: !116)
!1082 = distinct !DILexicalBlock(scope: !990, file: !2, line: 363, column: 7)
!1083 = !DILocation(line: 363, column: 16, scope: !1082)
!1084 = !DILocation(line: 363, column: 12, scope: !1082)
!1085 = !DILocation(line: 363, column: 23, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 363, column: 7)
!1087 = !DILocation(line: 363, column: 25, scope: !1086)
!1088 = !DILocation(line: 363, column: 7, scope: !1082)
!1089 = !DILocation(line: 364, column: 21, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 364, column: 13)
!1091 = !DILocation(line: 364, column: 13, scope: !1090)
!1092 = !DILocation(line: 367, column: 29, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 365, column: 11)
!1094 = !DILocation(line: 367, column: 25, scope: !1093)
!1095 = !DILocation(line: 367, column: 17, scope: !1093)
!1096 = !DILocation(line: 367, column: 13, scope: !1093)
!1097 = !DILocation(line: 367, column: 23, scope: !1093)
!1098 = !DILocation(line: 368, column: 29, scope: !1093)
!1099 = !DILocation(line: 368, column: 25, scope: !1093)
!1100 = !DILocation(line: 368, column: 17, scope: !1093)
!1101 = !DILocation(line: 368, column: 13, scope: !1093)
!1102 = !DILocation(line: 368, column: 23, scope: !1093)
!1103 = !DILocation(line: 369, column: 30, scope: !1093)
!1104 = !DILocation(line: 369, column: 26, scope: !1093)
!1105 = !DILocation(line: 369, column: 36, scope: !1093)
!1106 = !DILocation(line: 369, column: 41, scope: !1093)
!1107 = !DILocation(line: 369, column: 17, scope: !1093)
!1108 = !DILocation(line: 369, column: 13, scope: !1093)
!1109 = !DILocation(line: 369, column: 23, scope: !1093)
!1110 = !DILocation(line: 371, column: 58, scope: !1093)
!1111 = !DILocation(line: 371, column: 49, scope: !1093)
!1112 = !DILocation(line: 371, column: 65, scope: !1093)
!1113 = !DILocation(line: 371, column: 61, scope: !1093)
!1114 = !DILocation(line: 372, column: 57, scope: !1093)
!1115 = !DILocation(line: 372, column: 49, scope: !1093)
!1116 = !DILocation(line: 372, column: 61, scope: !1093)
!1117 = !DILocation(line: 371, column: 27, scope: !1093)
!1118 = !DILocation(line: 371, column: 22, scope: !1093)
!1119 = !DILocation(line: 371, column: 13, scope: !1093)
!1120 = !DILocation(line: 371, column: 25, scope: !1093)
!1121 = !DILocation(line: 374, column: 26, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 374, column: 17)
!1123 = !DILocation(line: 374, column: 17, scope: !1122)
!1124 = !DILocation(line: 375, column: 37, scope: !1122)
!1125 = !DILocation(line: 375, column: 28, scope: !1122)
!1126 = !DILocation(line: 375, column: 44, scope: !1122)
!1127 = !DILocation(line: 375, column: 40, scope: !1122)
!1128 = !DILocation(line: 375, column: 61, scope: !1122)
!1129 = !DILocation(line: 375, column: 52, scope: !1122)
!1130 = !DILocation(line: 375, column: 65, scope: !1122)
!1131 = !DILocation(line: 375, column: 67, scope: !1122)
!1132 = !DILocation(line: 375, column: 15, scope: !1122)
!1133 = !DILocation(line: 380, column: 31, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 380, column: 22)
!1135 = !DILocation(line: 380, column: 22, scope: !1134)
!1136 = !DILocation(line: 380, column: 38, scope: !1134)
!1137 = !DILocation(line: 380, column: 34, scope: !1134)
!1138 = !DILocation(line: 380, column: 46, scope: !1134)
!1139 = !DILocation(line: 381, column: 37, scope: !1134)
!1140 = !DILocation(line: 381, column: 28, scope: !1134)
!1141 = !DILocation(line: 381, column: 44, scope: !1134)
!1142 = !DILocation(line: 381, column: 40, scope: !1134)
!1143 = !DILocation(line: 382, column: 37, scope: !1134)
!1144 = !DILocation(line: 382, column: 28, scope: !1134)
!1145 = !DILocation(line: 382, column: 44, scope: !1134)
!1146 = !DILocation(line: 382, column: 40, scope: !1134)
!1147 = !DILocation(line: 382, column: 52, scope: !1134)
!1148 = !DILocation(line: 382, column: 54, scope: !1134)
!1149 = !DILocation(line: 381, column: 15, scope: !1134)
!1150 = !DILocation(line: 384, column: 33, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 384, column: 17)
!1152 = !DILocation(line: 384, column: 25, scope: !1151)
!1153 = !DILocation(line: 384, column: 17, scope: !1151)
!1154 = !DILocation(line: 385, column: 36, scope: !1151)
!1155 = !DILocation(line: 385, column: 57, scope: !1151)
!1156 = !DILocation(line: 385, column: 65, scope: !1151)
!1157 = !DILocation(line: 385, column: 49, scope: !1151)
!1158 = !DILocation(line: 385, column: 15, scope: !1151)
!1159 = !DILocation(line: 387, column: 21, scope: !1093)
!1160 = !DILocation(line: 387, column: 13, scope: !1093)
!1161 = !DILocation(line: 387, column: 24, scope: !1093)
!1162 = !DILocation(line: 388, column: 11, scope: !1093)
!1163 = !DILocation(line: 364, column: 22, scope: !1090)
!1164 = !DILocation(line: 363, column: 31, scope: !1086)
!1165 = !DILocation(line: 363, column: 7, scope: !1086)
!1166 = distinct !{!1166, !1088, !1167, !520}
!1167 = !DILocation(line: 388, column: 11, scope: !1082)
!1168 = distinct !{!1168, !985, !1169, !520}
!1169 = !DILocation(line: 389, column: 5, scope: !809)
!1170 = !DILocalVariable(name: "n_streams", scope: !809, file: !2, line: 392, type: !1171)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!1172 = !DILocation(line: 392, column: 13, scope: !809)
!1173 = !DILocation(line: 392, column: 30, scope: !809)
!1174 = !DILocation(line: 392, column: 44, scope: !809)
!1175 = !DILocation(line: 392, column: 41, scope: !809)
!1176 = !DILocation(line: 392, column: 27, scope: !809)
!1177 = !DILocalVariable(name: "i", scope: !1178, file: !2, line: 393, type: !116)
!1178 = distinct !DILexicalBlock(scope: !809, file: !2, line: 393, column: 3)
!1179 = !DILocation(line: 393, column: 12, scope: !1178)
!1180 = !DILocation(line: 393, column: 8, scope: !1178)
!1181 = !DILocation(line: 393, column: 19, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !2, line: 393, column: 3)
!1183 = !DILocation(line: 393, column: 23, scope: !1182)
!1184 = !DILocation(line: 393, column: 21, scope: !1182)
!1185 = !DILocation(line: 393, column: 3, scope: !1178)
!1186 = !DILocation(line: 394, column: 25, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1182, file: !2, line: 394, column: 9)
!1188 = !DILocation(line: 394, column: 17, scope: !1187)
!1189 = !DILocation(line: 394, column: 9, scope: !1187)
!1190 = !DILocation(line: 394, column: 29, scope: !1187)
!1191 = !DILocation(line: 395, column: 28, scope: !1187)
!1192 = !DILocation(line: 395, column: 49, scope: !1187)
!1193 = !DILocation(line: 395, column: 57, scope: !1187)
!1194 = !DILocation(line: 395, column: 41, scope: !1187)
!1195 = !DILocation(line: 395, column: 7, scope: !1187)
!1196 = !DILocation(line: 394, column: 32, scope: !1187)
!1197 = !DILocation(line: 393, column: 35, scope: !1182)
!1198 = !DILocation(line: 393, column: 3, scope: !1182)
!1199 = distinct !{!1199, !1185, !1200, !520}
!1200 = !DILocation(line: 395, column: 7, scope: !1178)
!1201 = !DILocation(line: 397, column: 7, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !809, file: !2, line: 397, column: 7)
!1203 = !DILocation(line: 400, column: 11, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 400, column: 11)
!1205 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 398, column: 5)
!1206 = !DILocation(line: 400, column: 23, scope: !1204)
!1207 = !DILocation(line: 403, column: 19, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 401, column: 9)
!1209 = !DILocation(line: 403, column: 30, scope: !1208)
!1210 = !DILocation(line: 403, column: 29, scope: !1208)
!1211 = !DILocation(line: 404, column: 19, scope: !1208)
!1212 = !DILocation(line: 404, column: 30, scope: !1208)
!1213 = !DILocation(line: 404, column: 29, scope: !1208)
!1214 = !DILocation(line: 405, column: 19, scope: !1208)
!1215 = !DILocation(line: 405, column: 30, scope: !1208)
!1216 = !DILocation(line: 405, column: 29, scope: !1208)
!1217 = !DILocation(line: 406, column: 19, scope: !1208)
!1218 = !DILocation(line: 406, column: 31, scope: !1208)
!1219 = !DILocation(line: 402, column: 11, scope: !1208)
!1220 = !DILocation(line: 407, column: 9, scope: !1208)
!1221 = !DILocation(line: 411, column: 19, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 409, column: 9)
!1223 = !DILocation(line: 411, column: 29, scope: !1222)
!1224 = !DILocation(line: 412, column: 19, scope: !1222)
!1225 = !DILocation(line: 412, column: 29, scope: !1222)
!1226 = !DILocation(line: 413, column: 19, scope: !1222)
!1227 = !DILocation(line: 413, column: 29, scope: !1222)
!1228 = !DILocation(line: 414, column: 19, scope: !1222)
!1229 = !DILocation(line: 414, column: 31, scope: !1222)
!1230 = !DILocation(line: 410, column: 11, scope: !1222)
!1231 = !DILocation(line: 416, column: 5, scope: !1205)
!1232 = !DILocation(line: 418, column: 7, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !809, file: !2, line: 418, column: 7)
!1234 = !DILocation(line: 418, column: 34, scope: !1233)
!1235 = !DILocation(line: 418, column: 37, scope: !1233)
!1236 = !DILocation(line: 419, column: 29, scope: !1233)
!1237 = !DILocation(line: 419, column: 5, scope: !1233)
!1238 = !DILocation(line: 422, column: 3, scope: !809)
!1239 = distinct !DISubprogram(name: "writeline", scope: !2, file: !2, line: 177, type: !1240, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !100, retainedNodes: !209)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{null, !1242, !116}
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !816)
!1244 = !DILocalVariable(name: "line", arg: 1, scope: !1239, file: !2, line: 177, type: !1242)
!1245 = !DILocation(line: 177, column: 37, scope: !1239)
!1246 = !DILocalVariable(name: "class", arg: 2, scope: !1239, file: !2, line: 177, type: !116)
!1247 = !DILocation(line: 177, column: 47, scope: !1239)
!1248 = !DILocation(line: 179, column: 11, scope: !1239)
!1249 = !DILocation(line: 179, column: 3, scope: !1239)
!1250 = !DILocation(line: 182, column: 12, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 182, column: 11)
!1252 = distinct !DILexicalBlock(scope: !1239, file: !2, line: 180, column: 5)
!1253 = !DILocation(line: 182, column: 11, scope: !1251)
!1254 = !DILocation(line: 183, column: 9, scope: !1251)
!1255 = !DILocation(line: 184, column: 7, scope: !1252)
!1256 = !DILocation(line: 187, column: 12, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 187, column: 11)
!1258 = !DILocation(line: 187, column: 11, scope: !1257)
!1259 = !DILocation(line: 188, column: 9, scope: !1257)
!1260 = !DILocation(line: 189, column: 11, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 189, column: 11)
!1262 = !DILocation(line: 190, column: 17, scope: !1261)
!1263 = !DILocation(line: 190, column: 29, scope: !1261)
!1264 = !DILocation(line: 190, column: 42, scope: !1261)
!1265 = !DILocation(line: 190, column: 9, scope: !1261)
!1266 = !DILocation(line: 191, column: 7, scope: !1252)
!1267 = !DILocation(line: 194, column: 12, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 194, column: 11)
!1269 = !DILocation(line: 194, column: 11, scope: !1268)
!1270 = !DILocation(line: 195, column: 9, scope: !1268)
!1271 = !DILocation(line: 196, column: 11, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 196, column: 11)
!1273 = !DILocation(line: 197, column: 17, scope: !1272)
!1274 = !DILocation(line: 197, column: 29, scope: !1272)
!1275 = !DILocation(line: 197, column: 42, scope: !1272)
!1276 = !DILocation(line: 197, column: 9, scope: !1272)
!1277 = !DILocation(line: 198, column: 11, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 198, column: 11)
!1279 = !DILocation(line: 199, column: 17, scope: !1278)
!1280 = !DILocation(line: 199, column: 29, scope: !1278)
!1281 = !DILocation(line: 199, column: 42, scope: !1278)
!1282 = !DILocation(line: 199, column: 9, scope: !1278)
!1283 = !DILocation(line: 200, column: 7, scope: !1252)
!1284 = !DILocation(line: 203, column: 11, scope: !1239)
!1285 = !DILocation(line: 203, column: 17, scope: !1239)
!1286 = !DILocation(line: 203, column: 40, scope: !1239)
!1287 = !DILocation(line: 203, column: 46, scope: !1239)
!1288 = !DILocation(line: 203, column: 54, scope: !1239)
!1289 = !DILocation(line: 203, column: 3, scope: !1239)
!1290 = !DILocation(line: 205, column: 15, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1239, file: !2, line: 205, column: 7)
!1292 = !DILocation(line: 205, column: 7, scope: !1291)
!1293 = !DILocation(line: 206, column: 5, scope: !1291)
!1294 = !DILocation(line: 207, column: 1, scope: !1239)
!1295 = distinct !DISubprogram(name: "check_order", scope: !2, file: !2, line: 221, type: !1296, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !100, retainedNodes: !209)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{null, !1242, !1242, !116}
!1298 = !DILocalVariable(name: "prev", arg: 1, scope: !1295, file: !2, line: 221, type: !1242)
!1299 = !DILocation(line: 221, column: 39, scope: !1295)
!1300 = !DILocalVariable(name: "current", arg: 2, scope: !1295, file: !2, line: 222, type: !1242)
!1301 = !DILocation(line: 222, column: 39, scope: !1295)
!1302 = !DILocalVariable(name: "whatfile", arg: 3, scope: !1295, file: !2, line: 223, type: !116)
!1303 = !DILocation(line: 223, column: 18, scope: !1295)
!1304 = !DILocation(line: 226, column: 7, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1295, file: !2, line: 226, column: 7)
!1306 = !DILocation(line: 226, column: 25, scope: !1305)
!1307 = !DILocation(line: 227, column: 7, scope: !1305)
!1308 = !DILocation(line: 227, column: 12, scope: !1305)
!1309 = !DILocation(line: 227, column: 30, scope: !1305)
!1310 = !DILocation(line: 227, column: 54, scope: !1305)
!1311 = !DILocation(line: 227, column: 57, scope: !1305)
!1312 = !DILocation(line: 229, column: 36, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !2, line: 229, column: 11)
!1314 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 228, column: 5)
!1315 = !DILocation(line: 229, column: 45, scope: !1313)
!1316 = !DILocation(line: 229, column: 12, scope: !1313)
!1317 = !DILocation(line: 229, column: 11, scope: !1313)
!1318 = !DILocalVariable(name: "order", scope: !1319, file: !2, line: 231, type: !116)
!1319 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 230, column: 9)
!1320 = !DILocation(line: 231, column: 15, scope: !1319)
!1321 = !DILocation(line: 233, column: 15, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 233, column: 15)
!1323 = !DILocation(line: 234, column: 31, scope: !1322)
!1324 = !DILocation(line: 234, column: 37, scope: !1322)
!1325 = !DILocation(line: 234, column: 45, scope: !1322)
!1326 = !DILocation(line: 234, column: 51, scope: !1322)
!1327 = !DILocation(line: 234, column: 58, scope: !1322)
!1328 = !DILocation(line: 235, column: 31, scope: !1322)
!1329 = !DILocation(line: 235, column: 40, scope: !1322)
!1330 = !DILocation(line: 235, column: 48, scope: !1322)
!1331 = !DILocation(line: 235, column: 57, scope: !1322)
!1332 = !DILocation(line: 235, column: 64, scope: !1322)
!1333 = !DILocation(line: 234, column: 21, scope: !1322)
!1334 = !DILocation(line: 234, column: 19, scope: !1322)
!1335 = !DILocation(line: 234, column: 13, scope: !1322)
!1336 = !DILocation(line: 237, column: 30, scope: !1322)
!1337 = !DILocation(line: 237, column: 36, scope: !1322)
!1338 = !DILocation(line: 237, column: 44, scope: !1322)
!1339 = !DILocation(line: 237, column: 50, scope: !1322)
!1340 = !DILocation(line: 237, column: 57, scope: !1322)
!1341 = !DILocation(line: 238, column: 30, scope: !1322)
!1342 = !DILocation(line: 238, column: 39, scope: !1322)
!1343 = !DILocation(line: 238, column: 47, scope: !1322)
!1344 = !DILocation(line: 238, column: 56, scope: !1322)
!1345 = !DILocation(line: 238, column: 63, scope: !1322)
!1346 = !DILocation(line: 237, column: 21, scope: !1322)
!1347 = !DILocation(line: 237, column: 19, scope: !1322)
!1348 = !DILocation(line: 240, column: 19, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 240, column: 15)
!1350 = !DILocation(line: 240, column: 17, scope: !1349)
!1351 = !DILocation(line: 242, column: 23, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1349, file: !2, line: 241, column: 13)
!1353 = !DILocation(line: 242, column: 41, scope: !1352)
!1354 = !DILocation(line: 242, column: 15, scope: !1352)
!1355 = !DILocation(line: 244, column: 25, scope: !1352)
!1356 = !DILocation(line: 244, column: 62, scope: !1352)
!1357 = !DILocalVariable(name: "__errstatus", scope: !1358, file: !2, line: 242, type: !1171)
!1358 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 242, column: 15)
!1359 = !DILocation(line: 242, column: 15, scope: !1358)
!1360 = !DILocation(line: 242, column: 23, scope: !1358)
!1361 = !DILocation(line: 242, column: 41, scope: !1358)
!1362 = !DILocation(line: 244, column: 25, scope: !1358)
!1363 = !DILocation(line: 244, column: 62, scope: !1358)
!1364 = !DILocation(line: 248, column: 39, scope: !1352)
!1365 = !DILocation(line: 248, column: 48, scope: !1352)
!1366 = !DILocation(line: 248, column: 15, scope: !1352)
!1367 = !DILocation(line: 248, column: 53, scope: !1352)
!1368 = !DILocation(line: 249, column: 13, scope: !1352)
!1369 = !DILocation(line: 250, column: 9, scope: !1319)
!1370 = !DILocation(line: 251, column: 5, scope: !1314)
!1371 = !DILocation(line: 252, column: 1, scope: !1295)
!1372 = distinct !DISubprogram(name: "write_error", scope: !115, file: !115, line: 953, type: !1373, scopeLine: 954, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !100, retainedNodes: !209)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{null}
!1375 = !DILocalVariable(name: "saved_errno", scope: !1372, file: !115, line: 955, type: !116)
!1376 = !DILocation(line: 955, column: 7, scope: !1372)
!1377 = !DILocation(line: 955, column: 21, scope: !1372)
!1378 = !DILocation(line: 956, column: 11, scope: !1372)
!1379 = !DILocation(line: 956, column: 3, scope: !1372)
!1380 = !DILocation(line: 957, column: 11, scope: !1372)
!1381 = !DILocation(line: 957, column: 3, scope: !1372)
!1382 = !DILocation(line: 958, column: 13, scope: !1372)
!1383 = !DILocation(line: 958, column: 3, scope: !1372)
!1384 = !DILocation(line: 959, column: 24, scope: !1372)
!1385 = !DILocation(line: 959, column: 37, scope: !1372)
!1386 = !DILocation(line: 959, column: 3, scope: !1372)
