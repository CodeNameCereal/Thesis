; ModuleID = 'src/tee.c'
source_filename = "src/tee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.infomap = type { ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [65 x i8] c"Copy standard input to each FILE, and also to standard output.\0A\0A\00", align 1, !dbg !12
@stdout = external global ptr, align 8
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
@append = internal global i8 0, align 1, !dbg !71
@ignore_interrupts = internal global i8 0, align 1, !dbg !171
@optarg = external global ptr, align 8
@output_error_types = internal constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16, !dbg !308
@.str.15 = private unnamed_addr constant [15 x i8] c"--output-error\00", align 1, !dbg !139
@output_error_args = internal constant [5 x ptr] [ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr null], align 16, !dbg !320
@argmatch_die = external global ptr, align 8
@output_error = internal global i32 0, align 4, !dbg !174
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !144
@Version = external global ptr, align 8
@.str.17 = private unnamed_addr constant [12 x i8] c"Mike Parker\00", align 1, !dbg !149
@.str.18 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1, !dbg !154
@.str.19 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !159
@optind = external global i32, align 4
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !164
@.str.21 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1, !dbg !169
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !176
@.str.22 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !184
@.str.23 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !189
@.str.24 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !191
@.str.25 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !193
@.str.26 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !198
@.str.27 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !203
@.str.28 = private unnamed_addr constant [4 x i8] c"dir\00", align 1, !dbg !205
@.str.29 = private unnamed_addr constant [3 x i8] c"ls\00", align 1, !dbg !207
@.str.30 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1, !dbg !209
@.str.31 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1, !dbg !211
@.str.32 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1, !dbg !213
@.str.33 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1, !dbg !215
@.str.34 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1, !dbg !220
@.str.35 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !225
@.str.36 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !227
@.str.37 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !229
@.str.38 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !231
@.str.39 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !233
@.str.40 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !235
@.str.41 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !237
@.str.42 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !242
@.str.43 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !247
@.str.44 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !249
@.str.45 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !251
@.str.46 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !253
@.str.47 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !255
@.str.48 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !257
@.str.49 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !259
@.str.50 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !261
@.str.51 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !266
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.26, ptr @.str.49 }, %struct.infomap { ptr @.str.12, ptr @.str.50 }, %struct.infomap { ptr @.str.35, ptr @.str.51 }, %struct.infomap { ptr @.str.36, ptr @.str.51 }, %struct.infomap { ptr @.str.37, ptr @.str.51 }, %struct.infomap { ptr @.str.38, ptr @.str.51 }, %struct.infomap zeroinitializer], align 16
@.str.52 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !268
@.str.53 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !273
@.str.54 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !278
@.str.55 = private unnamed_addr constant [7 x i8] c"append\00", align 1, !dbg !280
@.str.56 = private unnamed_addr constant [18 x i8] c"ignore-interrupts\00", align 1, !dbg !282
@.str.57 = private unnamed_addr constant [13 x i8] c"output-error\00", align 1, !dbg !287
@.str.58 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !292
@.str.59 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !294
@long_options = internal constant [6 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.55, i32 0, [4 x i8] zeroinitializer, ptr null, i32 97, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.56, i32 0, [4 x i8] zeroinitializer, ptr null, i32 105, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.57, i32 2, [4 x i8] zeroinitializer, ptr null, i32 112, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.58, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -130, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.59, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -131, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16, !dbg !296
@.str.61 = private unnamed_addr constant [5 x i8] c"warn\00", align 1, !dbg !312
@.str.62 = private unnamed_addr constant [12 x i8] c"warn-nopipe\00", align 1, !dbg !314
@.str.63 = private unnamed_addr constant [5 x i8] c"exit\00", align 1, !dbg !316
@.str.64 = private unnamed_addr constant [12 x i8] c"exit-nopipe\00", align 1, !dbg !318
@stdin = external global ptr, align 8
@.str.65 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1, !dbg !324
@.str.66 = private unnamed_addr constant [13 x i8] c"iopoll error\00", align 1, !dbg !326
@.str.67 = private unnamed_addr constant [11 x i8] c"read error\00", align 1, !dbg !328

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !341 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !342, !DIExpression(), !343)
  %3 = load i32, ptr %2, align 4, !dbg !344
  %4 = icmp ne i32 %3, 0, !dbg !346
  br i1 %4, label %5, label %12, !dbg !346

5:                                                ; preds = %1
  br label %6, !dbg !347

6:                                                ; preds = %5
  %7 = load ptr, ptr @stderr, align 8, !dbg !348
  %8 = call ptr @gettext(ptr noundef @.str) #11, !dbg !348
  %9 = load ptr, ptr @program_name, align 8, !dbg !348
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef %8, ptr noundef %9) #11, !dbg !348
  br label %11, !dbg !348

11:                                               ; preds = %6
  br label %28, !dbg !348

12:                                               ; preds = %1
  %13 = call ptr @gettext(ptr noundef @.str.1) #11, !dbg !350
  %14 = load ptr, ptr @program_name, align 8, !dbg !352
  %15 = call i32 (ptr, ...) @rpl_printf(ptr noundef %13, ptr noundef %14), !dbg !353
  %16 = call ptr @gettext(ptr noundef @.str.2) #11, !dbg !354
  %17 = load ptr, ptr @stdout, align 8, !dbg !355
  %18 = call i32 @fputs_unlocked(ptr noundef %16, ptr noundef %17), !dbg !356
  %19 = call ptr @gettext(ptr noundef @.str.4) #11, !dbg !357
  call void @oputs_(ptr noundef @.str.3, ptr noundef %19), !dbg !358
  %20 = call ptr @gettext(ptr noundef @.str.5) #11, !dbg !359
  call void @oputs_(ptr noundef @.str.3, ptr noundef %20), !dbg !360
  %21 = call ptr @gettext(ptr noundef @.str.6) #11, !dbg !361
  call void @oputs_(ptr noundef @.str.3, ptr noundef %21), !dbg !362
  %22 = call ptr @gettext(ptr noundef @.str.7) #11, !dbg !363
  call void @oputs_(ptr noundef @.str.3, ptr noundef %22), !dbg !364
  %23 = call ptr @gettext(ptr noundef @.str.8) #11, !dbg !365
  call void @oputs_(ptr noundef @.str.3, ptr noundef %23), !dbg !366
  %24 = call ptr @gettext(ptr noundef @.str.9) #11, !dbg !367
  call void @oputs_(ptr noundef @.str.3, ptr noundef %24), !dbg !368
  %25 = call ptr @gettext(ptr noundef @.str.10) #11, !dbg !369
  %26 = load ptr, ptr @stdout, align 8, !dbg !370
  %27 = call i32 @fputs_unlocked(ptr noundef %25, ptr noundef %26), !dbg !371
  call void @emit_ancillary_info(ptr noundef @.str.3), !dbg !372
  br label %28

28:                                               ; preds = %12, %11
  %29 = load i32, ptr %2, align 4, !dbg !373
  call void @exit(i32 noundef %29) #12, !dbg !374
  unreachable, !dbg !374
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #1

declare i32 @rpl_printf(ptr noundef, ...) #2

declare i32 @fputs_unlocked(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(ptr noundef %0, ptr noundef %1) #3 !dbg !178 {
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
    #dbg_declare(ptr %3, !375, !DIExpression(), !376)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !377, !DIExpression(), !378)
  %14 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !379
  %15 = icmp eq i32 %14, -1, !dbg !381
  br i1 %15, label %16, label %30, !dbg !381

16:                                               ; preds = %2
    #dbg_declare(ptr %5, !382, !DIExpression(), !384)
  %17 = call ptr @getenv(ptr noundef @.str.22) #11, !dbg !385
  store ptr %17, ptr %5, align 8, !dbg !384
  %18 = load ptr, ptr %5, align 8, !dbg !386
  %19 = icmp ne ptr %18, null, !dbg !386
  br i1 %19, label %20, label %27, !dbg !387

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 8, !dbg !388
  %22 = load i8, ptr %21, align 1, !dbg !389
  %23 = icmp ne i8 %22, 0, !dbg !389
  br i1 %23, label %24, label %27, !dbg !390

24:                                               ; preds = %20
  %25 = load ptr, ptr %5, align 8, !dbg !391
  %26 = call zeroext i1 @streq(ptr noundef %25, ptr noundef @.str.23), !dbg !392
  br label %27, !dbg !390

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !390
  store i32 %29, ptr @oputs_.help_no_sgr, align 4, !dbg !393
  br label %30, !dbg !394

30:                                               ; preds = %27, %2
  %31 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !395
  %32 = icmp ne i32 %31, 0, !dbg !395
  br i1 %32, label %33, label %37, !dbg !395

33:                                               ; preds = %30
  %34 = load ptr, ptr %4, align 8, !dbg !397
  %35 = load ptr, ptr @stdout, align 8, !dbg !399
  %36 = call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !400
  br label %274, !dbg !401

37:                                               ; preds = %30
    #dbg_declare(ptr %6, !402, !DIExpression(), !403)
  store i8 1, ptr %6, align 1, !dbg !403
    #dbg_declare(ptr %7, !404, !DIExpression(), !405)
  %38 = load ptr, ptr %4, align 8, !dbg !406
  %39 = load ptr, ptr %4, align 8, !dbg !407
  %40 = call i64 @strspn(ptr noundef %39, ptr noundef @.str.24) #13, !dbg !408
  %41 = getelementptr inbounds nuw i8, ptr %38, i64 %40, !dbg !409
  store ptr %41, ptr %7, align 8, !dbg !405
    #dbg_declare(ptr %8, !410, !DIExpression(), !411)
  %42 = load ptr, ptr %4, align 8, !dbg !412
  %43 = call ptr @strchr(ptr noundef %42, i32 noundef 45) #13, !dbg !413
  store ptr %43, ptr %8, align 8, !dbg !411
  %44 = load ptr, ptr %8, align 8, !dbg !414
  %45 = icmp ne ptr %44, null, !dbg !414
  br i1 %45, label %48, label %46, !dbg !416

46:                                               ; preds = %37
  %47 = load ptr, ptr %7, align 8, !dbg !417
  store ptr %47, ptr %8, align 8, !dbg !419
  store i8 0, ptr %6, align 1, !dbg !420
  br label %89, !dbg !421

48:                                               ; preds = %37
  %49 = load ptr, ptr %8, align 8, !dbg !422
  %50 = load ptr, ptr %7, align 8, !dbg !424
  %51 = icmp ne ptr %49, %50, !dbg !425
  br i1 %51, label %52, label %88, !dbg !425

52:                                               ; preds = %48
    #dbg_declare(ptr %9, !426, !DIExpression(), !428)
  %53 = load ptr, ptr %7, align 8, !dbg !429
  store ptr %53, ptr %9, align 8, !dbg !428
    #dbg_declare(ptr %10, !430, !DIExpression(), !434)
  store i64 0, ptr %10, align 8, !dbg !434
  br label %54, !dbg !435

54:                                               ; preds = %63, %52
  %55 = load ptr, ptr %9, align 8, !dbg !436
  %56 = load ptr, ptr %8, align 8, !dbg !437
  %57 = icmp ult ptr %55, %56, !dbg !438
  br i1 %57, label %58, label %61, !dbg !439

58:                                               ; preds = %54
  %59 = load i64, ptr %10, align 8, !dbg !440
  %60 = icmp ult i64 %59, 2, !dbg !441
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !442
  br i1 %62, label %63, label %82, !dbg !435

63:                                               ; preds = %61
  %64 = call ptr @__ctype_b_loc() #14, !dbg !443
  %65 = load ptr, ptr %64, align 8, !dbg !443
  %66 = load ptr, ptr %9, align 8, !dbg !444
  %67 = getelementptr inbounds nuw i8, ptr %66, i32 1, !dbg !444
  store ptr %67, ptr %9, align 8, !dbg !444
  %68 = load i8, ptr %66, align 1, !dbg !445
  %69 = sext i8 %68 to i32, !dbg !443
  %70 = sext i32 %69 to i64, !dbg !443
  %71 = getelementptr inbounds i16, ptr %65, i64 %70, !dbg !443
  %72 = load i16, ptr %71, align 2, !dbg !443
  %73 = zext i16 %72 to i32, !dbg !443
  %74 = and i32 %73, 8192, !dbg !443
  %75 = icmp ne i32 %74, 0, !dbg !446
  %76 = xor i1 %75, true, !dbg !446
  %77 = xor i1 %76, true, !dbg !447
  %78 = zext i1 %77 to i32, !dbg !447
  %79 = sext i32 %78 to i64, !dbg !447
  %80 = load i64, ptr %10, align 8, !dbg !448
  %81 = add i64 %80, %79, !dbg !448
  store i64 %81, ptr %10, align 8, !dbg !448
  br label %54, !dbg !435, !llvm.loop !449

82:                                               ; preds = %61
  %83 = load i64, ptr %10, align 8, !dbg !451
  %84 = icmp eq i64 %83, 2, !dbg !453
  br i1 %84, label %85, label %87, !dbg !453

85:                                               ; preds = %82
  %86 = load ptr, ptr %7, align 8, !dbg !454
  store ptr %86, ptr %8, align 8, !dbg !456
  store i8 0, ptr %6, align 1, !dbg !457
  br label %87, !dbg !458

87:                                               ; preds = %85, %82
  br label %88, !dbg !459

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
    #dbg_declare(ptr %11, !460, !DIExpression(), !461)
  %90 = load ptr, ptr %8, align 8, !dbg !462
  %91 = call i64 @strcspn(ptr noundef %90, ptr noundef @.str.25) #13, !dbg !463
  store i64 %91, ptr %11, align 8, !dbg !461
    #dbg_declare(ptr %12, !464, !DIExpression(), !465)
  %92 = load ptr, ptr %8, align 8, !dbg !466
  %93 = load i64, ptr %11, align 8, !dbg !467
  %94 = getelementptr inbounds nuw i8, ptr %92, i64 %93, !dbg !468
  store ptr %94, ptr %12, align 8, !dbg !465
  br label %95, !dbg !469

95:                                               ; preds = %161, %89
  %96 = load ptr, ptr %12, align 8, !dbg !470
  %97 = load i8, ptr %96, align 1, !dbg !471
  %98 = sext i8 %97 to i32, !dbg !471
  %99 = icmp ne i32 %98, 0, !dbg !471
  br i1 %99, label %100, label %105, !dbg !472

100:                                              ; preds = %95
  %101 = load ptr, ptr %12, align 8, !dbg !473
  %102 = load i8, ptr %101, align 1, !dbg !474
  %103 = sext i8 %102 to i32, !dbg !474
  %104 = icmp ne i32 %103, 10, !dbg !475
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !476
  br i1 %106, label %107, label %164, !dbg !469

107:                                              ; preds = %105
  %108 = load ptr, ptr %12, align 8, !dbg !477
  %109 = load i8, ptr %108, align 1, !dbg !480
  %110 = sext i8 %109 to i32, !dbg !480
  %111 = icmp eq i32 %110, 45, !dbg !481
  br i1 %111, label %112, label %119, !dbg !482

112:                                              ; preds = %107
  %113 = load ptr, ptr %12, align 8, !dbg !483
  %114 = getelementptr inbounds i8, ptr %113, i64 1, !dbg !484
  %115 = load i8, ptr %114, align 1, !dbg !484
  %116 = sext i8 %115 to i32, !dbg !484
  %117 = icmp eq i32 %116, 45, !dbg !485
  br i1 %117, label %118, label %119, !dbg !482

118:                                              ; preds = %112
  store i8 0, ptr %6, align 1, !dbg !486
  br label %119, !dbg !487

119:                                              ; preds = %118, %112, %107
  %120 = call ptr @__ctype_b_loc() #14, !dbg !488
  %121 = load ptr, ptr %120, align 8, !dbg !488
  %122 = load ptr, ptr %12, align 8, !dbg !490
  %123 = load i8, ptr %122, align 1, !dbg !491
  %124 = sext i8 %123 to i32, !dbg !488
  %125 = sext i32 %124 to i64, !dbg !488
  %126 = getelementptr inbounds i16, ptr %121, i64 %125, !dbg !488
  %127 = load i16, ptr %126, align 2, !dbg !488
  %128 = zext i16 %127 to i32, !dbg !488
  %129 = and i32 %128, 8192, !dbg !488
  %130 = icmp ne i32 %129, 0, !dbg !488
  br i1 %130, label %131, label %161, !dbg !488

131:                                              ; preds = %119
  %132 = load ptr, ptr %12, align 8, !dbg !492
  %133 = load i8, ptr %132, align 1, !dbg !495
  %134 = sext i8 %133 to i32, !dbg !495
  %135 = icmp eq i32 %134, 9, !dbg !496
  br i1 %135, label %149, label %136, !dbg !497

136:                                              ; preds = %131
  %137 = call ptr @__ctype_b_loc() #14, !dbg !498
  %138 = load ptr, ptr %137, align 8, !dbg !498
  %139 = load ptr, ptr %12, align 8, !dbg !499
  %140 = getelementptr inbounds i8, ptr %139, i64 1, !dbg !500
  %141 = load i8, ptr %140, align 1, !dbg !500
  %142 = sext i8 %141 to i32, !dbg !498
  %143 = sext i32 %142 to i64, !dbg !498
  %144 = getelementptr inbounds i16, ptr %138, i64 %143, !dbg !498
  %145 = load i16, ptr %144, align 2, !dbg !498
  %146 = zext i16 %145 to i32, !dbg !498
  %147 = and i32 %146, 8192, !dbg !498
  %148 = icmp ne i32 %147, 0, !dbg !498
  br i1 %148, label %149, label %150, !dbg !497

149:                                              ; preds = %136, %131
  br label %164, !dbg !501

150:                                              ; preds = %136
  %151 = load i8, ptr %6, align 1, !dbg !502
  %152 = trunc i8 %151 to i1, !dbg !502
  br i1 %152, label %160, label %153, !dbg !504

153:                                              ; preds = %150
  %154 = load ptr, ptr %12, align 8, !dbg !505
  %155 = getelementptr inbounds i8, ptr %154, i64 1, !dbg !506
  %156 = load i8, ptr %155, align 1, !dbg !506
  %157 = sext i8 %156 to i32, !dbg !506
  %158 = icmp ne i32 %157, 45, !dbg !507
  br i1 %158, label %159, label %160, !dbg !504

159:                                              ; preds = %153
  br label %164, !dbg !508

160:                                              ; preds = %153, %150
  br label %161, !dbg !509

161:                                              ; preds = %160, %119
  %162 = load ptr, ptr %12, align 8, !dbg !510
  %163 = getelementptr inbounds nuw i8, ptr %162, i32 1, !dbg !510
  store ptr %163, ptr %12, align 8, !dbg !510
  br label %95, !dbg !469, !llvm.loop !511

164:                                              ; preds = %159, %149, %105
  %165 = load ptr, ptr %4, align 8, !dbg !513
  %166 = load ptr, ptr %7, align 8, !dbg !514
  %167 = load ptr, ptr %4, align 8, !dbg !515
  %168 = ptrtoint ptr %166 to i64, !dbg !516
  %169 = ptrtoint ptr %167 to i64, !dbg !516
  %170 = sub i64 %168, %169, !dbg !516
  %171 = load ptr, ptr @stdout, align 8, !dbg !517
  %172 = call i64 @fwrite_unlocked(ptr noundef %165, i64 noundef 1, i64 noundef %170, ptr noundef %171), !dbg !518
    #dbg_declare(ptr %13, !519, !DIExpression(), !520)
  %173 = load ptr, ptr %3, align 8, !dbg !521
  %174 = call zeroext i1 @streq(ptr noundef %173, ptr noundef @.str.26), !dbg !522
  br i1 %174, label %175, label %176, !dbg !522

175:                                              ; preds = %164
  br label %232, !dbg !522

176:                                              ; preds = %164
  %177 = load ptr, ptr %3, align 8, !dbg !523
  %178 = call zeroext i1 @streq(ptr noundef %177, ptr noundef @.str.28), !dbg !524
  br i1 %178, label %179, label %180, !dbg !524

179:                                              ; preds = %176
  br label %230, !dbg !524

180:                                              ; preds = %176
  %181 = load ptr, ptr %3, align 8, !dbg !525
  %182 = call zeroext i1 @streq(ptr noundef %181, ptr noundef @.str.30), !dbg !526
  br i1 %182, label %183, label %184, !dbg !526

183:                                              ; preds = %180
  br label %228, !dbg !526

184:                                              ; preds = %180
  %185 = load ptr, ptr %3, align 8, !dbg !527
  %186 = call zeroext i1 @streq(ptr noundef %185, ptr noundef @.str.31), !dbg !528
  br i1 %186, label %187, label %188, !dbg !528

187:                                              ; preds = %184
  br label %226, !dbg !528

188:                                              ; preds = %184
  %189 = load ptr, ptr %3, align 8, !dbg !529
  %190 = call zeroext i1 @streq(ptr noundef %189, ptr noundef @.str.33), !dbg !530
  br i1 %190, label %191, label %192, !dbg !530

191:                                              ; preds = %188
  br label %224, !dbg !530

192:                                              ; preds = %188
  %193 = load ptr, ptr %3, align 8, !dbg !531
  %194 = call zeroext i1 @streq(ptr noundef %193, ptr noundef @.str.34), !dbg !532
  br i1 %194, label %195, label %196, !dbg !532

195:                                              ; preds = %192
  br label %222, !dbg !532

196:                                              ; preds = %192
  %197 = load ptr, ptr %3, align 8, !dbg !533
  %198 = call zeroext i1 @streq(ptr noundef %197, ptr noundef @.str.35), !dbg !534
  br i1 %198, label %199, label %200, !dbg !534

199:                                              ; preds = %196
  br label %220, !dbg !534

200:                                              ; preds = %196
  %201 = load ptr, ptr %3, align 8, !dbg !535
  %202 = call zeroext i1 @streq(ptr noundef %201, ptr noundef @.str.36), !dbg !536
  br i1 %202, label %203, label %204, !dbg !536

203:                                              ; preds = %200
  br label %218, !dbg !536

204:                                              ; preds = %200
  %205 = load ptr, ptr %3, align 8, !dbg !537
  %206 = call zeroext i1 @streq(ptr noundef %205, ptr noundef @.str.37), !dbg !538
  br i1 %206, label %207, label %208, !dbg !538

207:                                              ; preds = %204
  br label %216, !dbg !538

208:                                              ; preds = %204
  %209 = load ptr, ptr %3, align 8, !dbg !539
  %210 = call zeroext i1 @streq(ptr noundef %209, ptr noundef @.str.38), !dbg !540
  br i1 %210, label %211, label %212, !dbg !540

211:                                              ; preds = %208
  br label %214, !dbg !540

212:                                              ; preds = %208
  %213 = load ptr, ptr %3, align 8, !dbg !541
  br label %214, !dbg !540

214:                                              ; preds = %212, %211
  %215 = phi ptr [ @.str.32, %211 ], [ %213, %212 ], !dbg !540
  br label %216, !dbg !538

216:                                              ; preds = %214, %207
  %217 = phi ptr [ @.str.32, %207 ], [ %215, %214 ], !dbg !538
  br label %218, !dbg !536

218:                                              ; preds = %216, %203
  %219 = phi ptr [ @.str.32, %203 ], [ %217, %216 ], !dbg !536
  br label %220, !dbg !534

220:                                              ; preds = %218, %199
  %221 = phi ptr [ @.str.32, %199 ], [ %219, %218 ], !dbg !534
  br label %222, !dbg !532

222:                                              ; preds = %220, %195
  %223 = phi ptr [ @.str.32, %195 ], [ %221, %220 ], !dbg !532
  br label %224, !dbg !530

224:                                              ; preds = %222, %191
  %225 = phi ptr [ @.str.32, %191 ], [ %223, %222 ], !dbg !530
  br label %226, !dbg !528

226:                                              ; preds = %224, %187
  %227 = phi ptr [ @.str.32, %187 ], [ %225, %224 ], !dbg !528
  br label %228, !dbg !526

228:                                              ; preds = %226, %183
  %229 = phi ptr [ @.str.29, %183 ], [ %227, %226 ], !dbg !526
  br label %230, !dbg !524

230:                                              ; preds = %228, %179
  %231 = phi ptr [ @.str.29, %179 ], [ %229, %228 ], !dbg !524
  br label %232, !dbg !522

232:                                              ; preds = %230, %175
  %233 = phi ptr [ @.str.27, %175 ], [ %231, %230 ], !dbg !522
  store ptr %233, ptr %13, align 8, !dbg !520
  %234 = load ptr, ptr %8, align 8, !dbg !542
  %235 = call i32 @strncmp(ptr noundef %234, ptr noundef @.str.39, i64 noundef 6) #13, !dbg !544
  %236 = icmp eq i32 %235, 0, !dbg !544
  br i1 %236, label %241, label %237, !dbg !545

237:                                              ; preds = %232
  %238 = load ptr, ptr %8, align 8, !dbg !546
  %239 = call i32 @strncmp(ptr noundef %238, ptr noundef @.str.40, i64 noundef 9) #13, !dbg !547
  %240 = icmp eq i32 %239, 0, !dbg !547
  br i1 %240, label %241, label %248, !dbg !545

241:                                              ; preds = %237, %232
  %242 = load ptr, ptr %13, align 8, !dbg !548
  %243 = load ptr, ptr %13, align 8, !dbg !550
  %244 = load i64, ptr %11, align 8, !dbg !551
  %245 = trunc i64 %244 to i32, !dbg !552
  %246 = load ptr, ptr %8, align 8, !dbg !553
  %247 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str.41, ptr noundef @.str.42, ptr noundef %242, ptr noundef %243, i32 noundef %245, ptr noundef %246), !dbg !554
  br label %254, !dbg !555

248:                                              ; preds = %237
  %249 = load ptr, ptr %13, align 8, !dbg !556
  %250 = load i64, ptr %11, align 8, !dbg !558
  %251 = trunc i64 %250 to i32, !dbg !559
  %252 = load ptr, ptr %8, align 8, !dbg !560
  %253 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str.43, ptr noundef @.str.44, ptr noundef %249, i32 noundef %251, ptr noundef %252), !dbg !561
  br label %254

254:                                              ; preds = %248, %241
  %255 = load ptr, ptr @stdout, align 8, !dbg !562
  %256 = call i32 @fputs_unlocked(ptr noundef @.str.45, ptr noundef %255), !dbg !563
  %257 = load ptr, ptr @stdout, align 8, !dbg !564
  %258 = call i32 @fputs_unlocked(ptr noundef @.str.46, ptr noundef %257), !dbg !565
  %259 = load ptr, ptr %7, align 8, !dbg !566
  %260 = load ptr, ptr %12, align 8, !dbg !567
  %261 = load ptr, ptr %7, align 8, !dbg !568
  %262 = ptrtoint ptr %260 to i64, !dbg !569
  %263 = ptrtoint ptr %261 to i64, !dbg !569
  %264 = sub i64 %262, %263, !dbg !569
  %265 = load ptr, ptr @stdout, align 8, !dbg !570
  %266 = call i64 @fwrite_unlocked(ptr noundef %259, i64 noundef 1, i64 noundef %264, ptr noundef %265), !dbg !571
  %267 = load ptr, ptr @stdout, align 8, !dbg !572
  %268 = call i32 @fputs_unlocked(ptr noundef @.str.47, ptr noundef %267), !dbg !573
  %269 = load ptr, ptr @stdout, align 8, !dbg !574
  %270 = call i32 @fputs_unlocked(ptr noundef @.str.48, ptr noundef %269), !dbg !575
  %271 = load ptr, ptr %12, align 8, !dbg !576
  %272 = load ptr, ptr @stdout, align 8, !dbg !577
  %273 = call i32 @fputs_unlocked(ptr noundef %271, ptr noundef %272), !dbg !578
  br label %274, !dbg !579

274:                                              ; preds = %254, %33
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !580 {
  %2 = alloca ptr, align 8
  %3 = alloca [7 x %struct.infomap], align 16
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !583, !DIExpression(), !584)
    #dbg_declare(ptr %3, !585, !DIExpression(), !592)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %3, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !592
    #dbg_declare(ptr %4, !593, !DIExpression(), !594)
  %7 = load ptr, ptr %2, align 8, !dbg !595
  store ptr %7, ptr %4, align 8, !dbg !594
    #dbg_declare(ptr %5, !596, !DIExpression(), !598)
  %8 = getelementptr inbounds [7 x %struct.infomap], ptr %3, i64 0, i64 0, !dbg !599
  store ptr %8, ptr %5, align 8, !dbg !598
  br label %9, !dbg !600

9:                                                ; preds = %23, %1
  %10 = load ptr, ptr %5, align 8, !dbg !601
  %11 = getelementptr inbounds nuw %struct.infomap, ptr %10, i32 0, i32 0, !dbg !602
  %12 = load ptr, ptr %11, align 8, !dbg !602
  %13 = icmp ne ptr %12, null, !dbg !601
  br i1 %13, label %14, label %21, !dbg !603

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 8, !dbg !604
  %16 = load ptr, ptr %5, align 8, !dbg !605
  %17 = getelementptr inbounds nuw %struct.infomap, ptr %16, i32 0, i32 0, !dbg !606
  %18 = load ptr, ptr %17, align 8, !dbg !606
  %19 = call zeroext i1 @streq(ptr noundef %15, ptr noundef %18), !dbg !607
  %20 = xor i1 %19, true, !dbg !608
  br label %21

21:                                               ; preds = %14, %9
  %22 = phi i1 [ false, %9 ], [ %20, %14 ], !dbg !609
  br i1 %22, label %23, label %26, !dbg !600

23:                                               ; preds = %21
  %24 = load ptr, ptr %5, align 8, !dbg !610
  %25 = getelementptr inbounds nuw %struct.infomap, ptr %24, i32 1, !dbg !610
  store ptr %25, ptr %5, align 8, !dbg !610
  br label %9, !dbg !600, !llvm.loop !611

26:                                               ; preds = %21
  %27 = load ptr, ptr %5, align 8, !dbg !612
  %28 = getelementptr inbounds nuw %struct.infomap, ptr %27, i32 0, i32 1, !dbg !614
  %29 = load ptr, ptr %28, align 8, !dbg !614
  %30 = icmp ne ptr %29, null, !dbg !612
  br i1 %30, label %31, label %35, !dbg !612

31:                                               ; preds = %26
  %32 = load ptr, ptr %5, align 8, !dbg !615
  %33 = getelementptr inbounds nuw %struct.infomap, ptr %32, i32 0, i32 1, !dbg !616
  %34 = load ptr, ptr %33, align 8, !dbg !616
  store ptr %34, ptr %4, align 8, !dbg !617
  br label %35, !dbg !618

35:                                               ; preds = %31, %26
  call void @emit_bug_reporting_address(), !dbg !619
    #dbg_declare(ptr %6, !620, !DIExpression(), !621)
  %36 = load ptr, ptr %2, align 8, !dbg !622
  %37 = call zeroext i1 @streq(ptr noundef %36, ptr noundef @.str.26), !dbg !623
  br i1 %37, label %38, label %39, !dbg !623

38:                                               ; preds = %35
  br label %41, !dbg !623

39:                                               ; preds = %35
  %40 = load ptr, ptr %2, align 8, !dbg !624
  br label %41, !dbg !623

41:                                               ; preds = %39, %38
  %42 = phi ptr [ @.str.27, %38 ], [ %40, %39 ], !dbg !623
  store ptr %42, ptr %6, align 8, !dbg !621
  %43 = call ptr @gettext(ptr noundef @.str.52) #11, !dbg !625
  %44 = load ptr, ptr %6, align 8, !dbg !626
  %45 = call i32 (ptr, ...) @rpl_printf(ptr noundef %43, ptr noundef @.str.42, ptr noundef %44), !dbg !627
  %46 = call ptr @gettext(ptr noundef @.str.53) #11, !dbg !628
  %47 = load ptr, ptr %4, align 8, !dbg !629
  %48 = load ptr, ptr %4, align 8, !dbg !630
  %49 = load ptr, ptr %2, align 8, !dbg !631
  %50 = icmp eq ptr %48, %49, !dbg !632
  %51 = zext i1 %50 to i64, !dbg !630
  %52 = select i1 %50, ptr @.str.54, ptr @.str.11, !dbg !630
  %53 = call i32 (ptr, ...) @rpl_printf(ptr noundef %46, ptr noundef %47, ptr noundef %52), !dbg !633
  ret void, !dbg !634
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #3 !dbg !635 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
    #dbg_declare(ptr %4, !639, !DIExpression(), !640)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !641, !DIExpression(), !642)
  %9 = load ptr, ptr %5, align 8, !dbg !643
  %10 = getelementptr inbounds ptr, ptr %9, i64 0, !dbg !643
  %11 = load ptr, ptr %10, align 8, !dbg !643
  call void @set_program_name(ptr noundef %11), !dbg !644
  %12 = call ptr @setlocale(i32 noundef 6, ptr noundef @.str.11) #11, !dbg !645
  %13 = call ptr @bindtextdomain(ptr noundef @.str.12, ptr noundef @.str.13) #11, !dbg !646
  %14 = call ptr @textdomain(ptr noundef @.str.12) #11, !dbg !647
  %15 = call i32 @atexit(ptr noundef @close_stdout) #11, !dbg !648
    #dbg_declare(ptr %6, !649, !DIExpression(), !650)
  br label %16, !dbg !651

16:                                               ; preds = %44, %2
  %17 = load i32, ptr %4, align 4, !dbg !652
  %18 = load ptr, ptr %5, align 8, !dbg !653
  %19 = call i32 @getopt_long(i32 noundef %17, ptr noundef %18, ptr noundef @.str.14, ptr noundef @long_options, ptr noundef null) #11, !dbg !654
  store i32 %19, ptr %6, align 4, !dbg !655
  %20 = icmp ne i32 %19, -1, !dbg !656
  br i1 %20, label %21, label %45, !dbg !651

21:                                               ; preds = %16
  %22 = load i32, ptr %6, align 4, !dbg !657
  switch i32 %22, label %43 [
    i32 97, label %23
    i32 105, label %24
    i32 112, label %25
    i32 -130, label %36
    i32 -131, label %37
  ], !dbg !659

23:                                               ; preds = %21
  store i8 1, ptr @append, align 1, !dbg !660
  br label %44, !dbg !662

24:                                               ; preds = %21
  store i8 1, ptr @ignore_interrupts, align 1, !dbg !663
  br label %44, !dbg !664

25:                                               ; preds = %21
  %26 = load ptr, ptr @optarg, align 8, !dbg !665
  %27 = icmp ne ptr %26, null, !dbg !665
  br i1 %27, label %28, label %34, !dbg !665

28:                                               ; preds = %25
  %29 = load ptr, ptr @optarg, align 8, !dbg !667
  %30 = load ptr, ptr @argmatch_die, align 8, !dbg !668
  %31 = call i64 @__xargmatch_internal(ptr noundef @.str.15, ptr noundef %29, ptr noundef @output_error_args, ptr noundef @output_error_types, i64 noundef 4, ptr noundef %30, i1 noundef zeroext true), !dbg !668
  %32 = getelementptr inbounds [4 x i32], ptr @output_error_types, i64 0, i64 %31, !dbg !668
  %33 = load i32, ptr %32, align 4, !dbg !668
  store i32 %33, ptr @output_error, align 4, !dbg !669
  br label %35, !dbg !670

34:                                               ; preds = %25
  store i32 2, ptr @output_error, align 4, !dbg !671
  br label %35

35:                                               ; preds = %34, %28
  br label %44, !dbg !672

36:                                               ; preds = %21
  call void @usage(i32 noundef 0) #15, !dbg !673
  unreachable, !dbg !673

37:                                               ; preds = %21
  %38 = load ptr, ptr @stdout, align 8, !dbg !674
  %39 = load ptr, ptr @Version, align 8, !dbg !674
  %40 = call ptr @proper_name_lite(ptr noundef @.str.17, ptr noundef @.str.17), !dbg !675
  %41 = call ptr @proper_name_lite(ptr noundef @.str.18, ptr noundef @.str.18), !dbg !675
  %42 = call ptr @proper_name_lite(ptr noundef @.str.19, ptr noundef @.str.19), !dbg !675
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %38, ptr noundef @.str.3, ptr noundef @.str.16, ptr noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef null), !dbg !674
  call void @exit(i32 noundef 0) #12, !dbg !674
  unreachable, !dbg !674

43:                                               ; preds = %21
  call void @usage(i32 noundef 1) #15, !dbg !676
  unreachable, !dbg !676

44:                                               ; preds = %35, %24, %23
  br label %16, !dbg !651, !llvm.loop !677

45:                                               ; preds = %16
  %46 = load i8, ptr @ignore_interrupts, align 1, !dbg !679
  %47 = trunc i8 %46 to i1, !dbg !679
  br i1 %47, label %48, label %50, !dbg !679

48:                                               ; preds = %45
  %49 = call ptr @signal(i32 noundef 2, ptr noundef inttoptr (i64 1 to ptr)) #11, !dbg !681
  br label %50, !dbg !681

50:                                               ; preds = %48, %45
  %51 = load i32, ptr @output_error, align 4, !dbg !682
  %52 = icmp ne i32 %51, 0, !dbg !684
  br i1 %52, label %53, label %55, !dbg !684

53:                                               ; preds = %50
  %54 = call ptr @signal(i32 noundef 13, ptr noundef inttoptr (i64 1 to ptr)) #11, !dbg !685
  br label %55, !dbg !685

55:                                               ; preds = %53, %50
    #dbg_declare(ptr %7, !686, !DIExpression(), !687)
  %56 = load i32, ptr @output_error, align 4, !dbg !688
  %57 = icmp eq i32 %56, 2, !dbg !689
  br i1 %57, label %61, label %58, !dbg !690

58:                                               ; preds = %55
  %59 = load i32, ptr @output_error, align 4, !dbg !691
  %60 = icmp eq i32 %59, 4, !dbg !692
  br i1 %60, label %61, label %63, !dbg !693

61:                                               ; preds = %58, %55
  %62 = call zeroext i1 @iopoll_input_ok(i32 noundef 0), !dbg !694
  br label %63

63:                                               ; preds = %61, %58
  %64 = phi i1 [ false, %58 ], [ %62, %61 ], !dbg !695
  %65 = zext i1 %64 to i8, !dbg !687
  store i8 %65, ptr %7, align 1, !dbg !687
    #dbg_declare(ptr %8, !696, !DIExpression(), !697)
  %66 = load i32, ptr %4, align 4, !dbg !698
  %67 = load i32, ptr @optind, align 4, !dbg !699
  %68 = sub nsw i32 %66, %67, !dbg !700
  %69 = load ptr, ptr %5, align 8, !dbg !701
  %70 = load i32, ptr @optind, align 4, !dbg !702
  %71 = sext i32 %70 to i64, !dbg !701
  %72 = getelementptr inbounds ptr, ptr %69, i64 %71, !dbg !701
  %73 = load i8, ptr %7, align 1, !dbg !703
  %74 = trunc i8 %73 to i1, !dbg !703
  %75 = call zeroext i1 @tee_files(i32 noundef %68, ptr noundef %72, i1 noundef zeroext %74), !dbg !704
  %76 = zext i1 %75 to i8, !dbg !697
  store i8 %76, ptr %8, align 1, !dbg !697
  %77 = call i32 @close(i32 noundef 0), !dbg !705
  %78 = icmp ne i32 %77, 0, !dbg !707
  br i1 %78, label %79, label %83, !dbg !707

79:                                               ; preds = %63
  %80 = call ptr @__errno_location() #14, !dbg !708
  %81 = load i32, ptr %80, align 4, !dbg !708
  %82 = call ptr @gettext(ptr noundef @.str.21) #11, !dbg !709
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %81, ptr noundef @.str.20, ptr noundef %82), !dbg !710
  unreachable, !dbg !710

83:                                               ; preds = %63
  %84 = load i8, ptr %8, align 1, !dbg !711
  %85 = trunc i8 %84 to i1, !dbg !711
  %86 = zext i1 %85 to i64, !dbg !711
  %87 = select i1 %85, i32 0, i32 1, !dbg !711
  ret i32 %87, !dbg !712
}

declare void @set_program_name(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind
declare ptr @bindtextdomain(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare ptr @textdomain(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @atexit(ptr noundef) #1

declare void @close_stdout() #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i64 @__xargmatch_internal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) #2

declare void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare ptr @proper_name_lite(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) #1

declare zeroext i1 @iopoll_input_ok(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @tee_files(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2) #3 !dbg !713 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [8192 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
    #dbg_declare(ptr %4, !716, !DIExpression(), !717)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !718, !DIExpression(), !719)
  %20 = zext i1 %2 to i8
  store i8 %20, ptr %6, align 1
    #dbg_declare(ptr %6, !720, !DIExpression(), !721)
    #dbg_declare(ptr %7, !722, !DIExpression(), !723)
  store i64 0, ptr %7, align 8, !dbg !723
    #dbg_declare(ptr %8, !724, !DIExpression(), !725)
    #dbg_declare(ptr %9, !726, !DIExpression(), !728)
    #dbg_declare(ptr %10, !729, !DIExpression(), !733)
    #dbg_declare(ptr %11, !734, !DIExpression(), !740)
  store i64 0, ptr %11, align 8, !dbg !740
    #dbg_declare(ptr %12, !741, !DIExpression(), !742)
  store i32 0, ptr %12, align 4, !dbg !742
    #dbg_declare(ptr %13, !743, !DIExpression(), !744)
  store i8 1, ptr %13, align 1, !dbg !744
    #dbg_declare(ptr %14, !745, !DIExpression(), !746)
  %21 = load i8, ptr @append, align 1, !dbg !747
  %22 = trunc i8 %21 to i1, !dbg !747
  %23 = zext i1 %22 to i64, !dbg !747
  %24 = select i1 %22, i32 1024, i32 512, !dbg !747
  %25 = or i32 65, %24, !dbg !748
  store i32 %25, ptr %14, align 4, !dbg !746
  call void @xset_binary_mode(i32 noundef 0, i32 noundef 0), !dbg !749
  call void @xset_binary_mode(i32 noundef 1, i32 noundef 0), !dbg !750
  %26 = load ptr, ptr @stdin, align 8, !dbg !751
  call void @fadvise(ptr noundef %26, i32 noundef 2), !dbg !752
  %27 = load i32, ptr %4, align 4, !dbg !753
  %28 = add nsw i32 %27, 1, !dbg !754
  %29 = sext i32 %28 to i64, !dbg !753
  %30 = call noalias nonnull ptr @xnmalloc(i64 noundef %29, i64 noundef 4) #16, !dbg !755
  store ptr %30, ptr %8, align 8, !dbg !756
  %31 = load i8, ptr %6, align 1, !dbg !757
  %32 = trunc i8 %31 to i1, !dbg !757
  br i1 %32, label %33, label %38, !dbg !757

33:                                               ; preds = %3
  %34 = load i32, ptr %4, align 4, !dbg !759
  %35 = add nsw i32 %34, 1, !dbg !760
  %36 = sext i32 %35 to i64, !dbg !759
  %37 = call noalias nonnull ptr @xnmalloc(i64 noundef %36, i64 noundef 1) #16, !dbg !761
  store ptr %37, ptr %9, align 8, !dbg !762
  br label %38, !dbg !763

38:                                               ; preds = %33, %3
  %39 = load ptr, ptr %5, align 8, !dbg !764
  %40 = getelementptr inbounds ptr, ptr %39, i32 -1, !dbg !764
  store ptr %40, ptr %5, align 8, !dbg !764
  %41 = load ptr, ptr %8, align 8, !dbg !765
  %42 = getelementptr inbounds i32, ptr %41, i64 0, !dbg !765
  store i32 1, ptr %42, align 4, !dbg !766
  %43 = load i8, ptr %6, align 1, !dbg !767
  %44 = trunc i8 %43 to i1, !dbg !767
  br i1 %44, label %45, label %53, !dbg !767

45:                                               ; preds = %38
  %46 = load ptr, ptr %8, align 8, !dbg !769
  %47 = getelementptr inbounds i32, ptr %46, i64 0, !dbg !769
  %48 = load i32, ptr %47, align 4, !dbg !769
  %49 = call zeroext i1 @iopoll_output_ok(i32 noundef %48), !dbg !770
  %50 = load ptr, ptr %9, align 8, !dbg !771
  %51 = getelementptr inbounds i8, ptr %50, i64 0, !dbg !771
  %52 = zext i1 %49 to i8, !dbg !772
  store i8 %52, ptr %51, align 1, !dbg !772
  br label %53, !dbg !771

53:                                               ; preds = %45, %38
  %54 = call ptr @gettext(ptr noundef @.str.65) #11, !dbg !773
  %55 = call ptr @bad_cast(ptr noundef %54), !dbg !774
  %56 = load ptr, ptr %5, align 8, !dbg !775
  %57 = getelementptr inbounds ptr, ptr %56, i64 0, !dbg !775
  store ptr %55, ptr %57, align 8, !dbg !776
  %58 = load i64, ptr %7, align 8, !dbg !777
  %59 = add i64 %58, 1, !dbg !777
  store i64 %59, ptr %7, align 8, !dbg !777
    #dbg_declare(ptr %15, !778, !DIExpression(), !780)
  store i32 1, ptr %15, align 4, !dbg !780
  br label %60, !dbg !781

60:                                               ; preds = %174, %53
  %61 = load i32, ptr %15, align 4, !dbg !782
  %62 = load i32, ptr %4, align 4, !dbg !784
  %63 = icmp sle i32 %61, %62, !dbg !785
  br i1 %63, label %64, label %177, !dbg !786

64:                                               ; preds = %60
  %65 = load ptr, ptr %5, align 8, !dbg !787
  %66 = load i32, ptr %15, align 4, !dbg !789
  %67 = sext i32 %66 to i64, !dbg !787
  %68 = getelementptr inbounds ptr, ptr %65, i64 %67, !dbg !787
  %69 = load ptr, ptr %68, align 8, !dbg !787
  %70 = load i32, ptr %14, align 4, !dbg !790
  %71 = call i32 (ptr, i32, ...) @open_safer(ptr noundef %69, i32 noundef %70, i32 noundef 438), !dbg !791
  %72 = load ptr, ptr %8, align 8, !dbg !792
  %73 = load i32, ptr %15, align 4, !dbg !793
  %74 = sext i32 %73 to i64, !dbg !792
  %75 = getelementptr inbounds i32, ptr %72, i64 %74, !dbg !792
  store i32 %71, ptr %75, align 4, !dbg !794
  %76 = load ptr, ptr %8, align 8, !dbg !795
  %77 = load i32, ptr %15, align 4, !dbg !797
  %78 = sext i32 %77 to i64, !dbg !795
  %79 = getelementptr inbounds i32, ptr %76, i64 %78, !dbg !795
  %80 = load i32, ptr %79, align 4, !dbg !795
  %81 = icmp slt i32 %80, 0, !dbg !798
  br i1 %81, label %82, label %155, !dbg !798

82:                                               ; preds = %64
  %83 = load i8, ptr %6, align 1, !dbg !799
  %84 = trunc i8 %83 to i1, !dbg !799
  br i1 %84, label %85, label %90, !dbg !799

85:                                               ; preds = %82
  %86 = load ptr, ptr %9, align 8, !dbg !802
  %87 = load i32, ptr %15, align 4, !dbg !803
  %88 = sext i32 %87 to i64, !dbg !802
  %89 = getelementptr inbounds i8, ptr %86, i64 %88, !dbg !802
  store i8 0, ptr %89, align 1, !dbg !804
  br label %90, !dbg !802

90:                                               ; preds = %85, %82
  %91 = load i32, ptr @output_error, align 4, !dbg !805
  %92 = icmp eq i32 %91, 3, !dbg !806
  br i1 %92, label %96, label %93, !dbg !807

93:                                               ; preds = %90
  %94 = load i32, ptr @output_error, align 4, !dbg !808
  %95 = icmp eq i32 %94, 4, !dbg !809
  br label %96, !dbg !807

96:                                               ; preds = %93, %90
  %97 = phi i1 [ true, %90 ], [ %95, %93 ]
  %98 = zext i1 %97 to i32, !dbg !807
  %99 = call i1 @llvm.is.constant.i32(i32 %98), !dbg !810
  br i1 %99, label %100, label %130, !dbg !810

100:                                              ; preds = %96
  %101 = load i32, ptr @output_error, align 4, !dbg !805
  %102 = icmp eq i32 %101, 3, !dbg !806
  br i1 %102, label %106, label %103, !dbg !807

103:                                              ; preds = %100
  %104 = load i32, ptr @output_error, align 4, !dbg !808
  %105 = icmp eq i32 %104, 4, !dbg !809
  br label %106, !dbg !807

106:                                              ; preds = %103, %100
  %107 = phi i1 [ true, %100 ], [ %105, %103 ]
  %108 = zext i1 %107 to i32, !dbg !807
  %109 = call ptr @__errno_location() #14, !dbg !811
  %110 = load i32, ptr %109, align 4, !dbg !811
  %111 = load ptr, ptr %5, align 8, !dbg !812
  %112 = load i32, ptr %15, align 4, !dbg !813
  %113 = sext i32 %112 to i64, !dbg !812
  %114 = getelementptr inbounds ptr, ptr %111, i64 %113, !dbg !812
  %115 = load ptr, ptr %114, align 8, !dbg !812
  %116 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %115), !dbg !814
  call void (i32, i32, ptr, ...) @error(i32 noundef %108, i32 noundef %110, ptr noundef @.str.20, ptr noundef %116), !dbg !810
  %117 = load i32, ptr @output_error, align 4, !dbg !805
  %118 = icmp eq i32 %117, 3, !dbg !806
  br i1 %118, label %122, label %119, !dbg !807

119:                                              ; preds = %106
  %120 = load i32, ptr @output_error, align 4, !dbg !808
  %121 = icmp eq i32 %120, 4, !dbg !809
  br label %122, !dbg !807

122:                                              ; preds = %119, %106
  %123 = phi i1 [ true, %106 ], [ %121, %119 ]
  %124 = zext i1 %123 to i32, !dbg !807
  %125 = icmp ne i32 %124, 0, !dbg !810
  br i1 %125, label %126, label %128, !dbg !810

126:                                              ; preds = %122
  unreachable, !dbg !810

127:                                              ; No predecessors!
  br label %129, !dbg !810

128:                                              ; preds = %122
  br label %129, !dbg !810

129:                                              ; preds = %128, %127
  br label %154, !dbg !810

130:                                              ; preds = %96
    #dbg_declare(ptr %16, !815, !DIExpression(), !818)
  %131 = load i32, ptr @output_error, align 4, !dbg !819
  %132 = icmp eq i32 %131, 3, !dbg !820
  br i1 %132, label %136, label %133, !dbg !821

133:                                              ; preds = %130
  %134 = load i32, ptr @output_error, align 4, !dbg !822
  %135 = icmp eq i32 %134, 4, !dbg !823
  br label %136, !dbg !821

136:                                              ; preds = %133, %130
  %137 = phi i1 [ true, %130 ], [ %135, %133 ]
  %138 = zext i1 %137 to i32, !dbg !821
  store i32 %138, ptr %16, align 4, !dbg !818
  %139 = load i32, ptr %16, align 4, !dbg !818
  %140 = call ptr @__errno_location() #14, !dbg !824
  %141 = load i32, ptr %140, align 4, !dbg !824
  %142 = load ptr, ptr %5, align 8, !dbg !825
  %143 = load i32, ptr %15, align 4, !dbg !826
  %144 = sext i32 %143 to i64, !dbg !825
  %145 = getelementptr inbounds ptr, ptr %142, i64 %144, !dbg !825
  %146 = load ptr, ptr %145, align 8, !dbg !825
  %147 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %146), !dbg !827
  call void (i32, i32, ptr, ...) @error(i32 noundef %139, i32 noundef %141, ptr noundef @.str.20, ptr noundef %147), !dbg !818
  %148 = load i32, ptr %16, align 4, !dbg !818
  %149 = icmp ne i32 %148, 0, !dbg !818
  br i1 %149, label %150, label %152, !dbg !818

150:                                              ; preds = %136
  unreachable, !dbg !818

151:                                              ; No predecessors!
  br label %153, !dbg !818

152:                                              ; preds = %136
  br label %153, !dbg !818

153:                                              ; preds = %152, %151
  br label %154, !dbg !810

154:                                              ; preds = %153, %129
  store i8 0, ptr %13, align 1, !dbg !828
  br label %173, !dbg !829

155:                                              ; preds = %64
  %156 = load i8, ptr %6, align 1, !dbg !830
  %157 = trunc i8 %156 to i1, !dbg !830
  br i1 %157, label %158, label %170, !dbg !830

158:                                              ; preds = %155
  %159 = load ptr, ptr %8, align 8, !dbg !833
  %160 = load i32, ptr %15, align 4, !dbg !834
  %161 = sext i32 %160 to i64, !dbg !833
  %162 = getelementptr inbounds i32, ptr %159, i64 %161, !dbg !833
  %163 = load i32, ptr %162, align 4, !dbg !833
  %164 = call zeroext i1 @iopoll_output_ok(i32 noundef %163), !dbg !835
  %165 = load ptr, ptr %9, align 8, !dbg !836
  %166 = load i32, ptr %15, align 4, !dbg !837
  %167 = sext i32 %166 to i64, !dbg !836
  %168 = getelementptr inbounds i8, ptr %165, i64 %167, !dbg !836
  %169 = zext i1 %164 to i8, !dbg !838
  store i8 %169, ptr %168, align 1, !dbg !838
  br label %170, !dbg !836

170:                                              ; preds = %158, %155
  %171 = load i64, ptr %7, align 8, !dbg !839
  %172 = add i64 %171, 1, !dbg !839
  store i64 %172, ptr %7, align 8, !dbg !839
  br label %173

173:                                              ; preds = %170, %154
  br label %174, !dbg !840

174:                                              ; preds = %173
  %175 = load i32, ptr %15, align 4, !dbg !841
  %176 = add nsw i32 %175, 1, !dbg !841
  store i32 %176, ptr %15, align 4, !dbg !841
  br label %60, !dbg !842, !llvm.loop !843

177:                                              ; preds = %60
  br label %178, !dbg !845

178:                                              ; preds = %280, %232, %207, %177
  %179 = load i64, ptr %7, align 8, !dbg !846
  %180 = icmp ne i64 %179, 0, !dbg !845
  br i1 %180, label %181, label %281, !dbg !845

181:                                              ; preds = %178
  %182 = load i8, ptr %6, align 1, !dbg !847
  %183 = trunc i8 %182 to i1, !dbg !847
  br i1 %183, label %184, label %223, !dbg !850

184:                                              ; preds = %181
  %185 = load ptr, ptr %9, align 8, !dbg !851
  %186 = load i32, ptr %12, align 4, !dbg !852
  %187 = sext i32 %186 to i64, !dbg !851
  %188 = getelementptr inbounds i8, ptr %185, i64 %187, !dbg !851
  %189 = load i8, ptr %188, align 1, !dbg !851
  %190 = trunc i8 %189 to i1, !dbg !851
  br i1 %190, label %191, label %223, !dbg !850

191:                                              ; preds = %184
    #dbg_declare(ptr %17, !853, !DIExpression(), !855)
  %192 = load ptr, ptr %8, align 8, !dbg !856
  %193 = load i32, ptr %12, align 4, !dbg !857
  %194 = sext i32 %193 to i64, !dbg !856
  %195 = getelementptr inbounds i32, ptr %192, i64 %194, !dbg !856
  %196 = load i32, ptr %195, align 4, !dbg !856
  %197 = call i32 @iopoll(i32 noundef 0, i32 noundef %196, i1 noundef zeroext true), !dbg !858
  store i32 %197, ptr %17, align 4, !dbg !855
  %198 = load i32, ptr %17, align 4, !dbg !859
  %199 = icmp eq i32 %198, -2, !dbg !861
  br i1 %199, label %200, label %214, !dbg !861

200:                                              ; preds = %191
  %201 = call ptr @__errno_location() #14, !dbg !862
  store i32 32, ptr %201, align 4, !dbg !864
  %202 = load ptr, ptr %8, align 8, !dbg !865
  %203 = load ptr, ptr %5, align 8, !dbg !867
  %204 = load i32, ptr %12, align 4, !dbg !868
  %205 = call zeroext i1 @fail_output(ptr noundef %202, ptr noundef %203, i32 noundef %204), !dbg !869
  br i1 %205, label %206, label %207, !dbg !869

206:                                              ; preds = %200
  store i8 0, ptr %13, align 1, !dbg !870
  br label %207, !dbg !871

207:                                              ; preds = %206, %200
  %208 = load i64, ptr %7, align 8, !dbg !872
  %209 = add i64 %208, -1, !dbg !872
  store i64 %209, ptr %7, align 8, !dbg !872
  %210 = load ptr, ptr %8, align 8, !dbg !873
  %211 = load i32, ptr %4, align 4, !dbg !874
  %212 = load i32, ptr %12, align 4, !dbg !875
  %213 = call i32 @get_next_out(ptr noundef %210, i32 noundef %211, i32 noundef %212) #13, !dbg !876
  store i32 %213, ptr %12, align 4, !dbg !877
  br label %178, !dbg !878, !llvm.loop !879

214:                                              ; preds = %191
  %215 = load i32, ptr %17, align 4, !dbg !881
  %216 = icmp eq i32 %215, -3, !dbg !883
  br i1 %216, label %217, label %221, !dbg !883

217:                                              ; preds = %214
  %218 = call ptr @__errno_location() #14, !dbg !884
  %219 = load i32, ptr %218, align 4, !dbg !884
  %220 = call ptr @gettext(ptr noundef @.str.66) #11, !dbg !886
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %219, ptr noundef %220), !dbg !887
  store i8 0, ptr %13, align 1, !dbg !888
  br label %221, !dbg !889

221:                                              ; preds = %217, %214
  br label %222

222:                                              ; preds = %221
  br label %223, !dbg !890

223:                                              ; preds = %222, %184, %181
  %224 = getelementptr inbounds [8192 x i8], ptr %10, i64 0, i64 0, !dbg !891
  %225 = call i64 @read(i32 noundef 0, ptr noundef %224, i64 noundef 8192), !dbg !892
  store i64 %225, ptr %11, align 8, !dbg !893
  %226 = load i64, ptr %11, align 8, !dbg !894
  %227 = icmp slt i64 %226, 0, !dbg !896
  br i1 %227, label %228, label %233, !dbg !897

228:                                              ; preds = %223
  %229 = call ptr @__errno_location() #14, !dbg !898
  %230 = load i32, ptr %229, align 4, !dbg !898
  %231 = icmp eq i32 %230, 4, !dbg !899
  br i1 %231, label %232, label %233, !dbg !897

232:                                              ; preds = %228
  br label %178, !dbg !900, !llvm.loop !879

233:                                              ; preds = %228, %223
  %234 = load i64, ptr %11, align 8, !dbg !901
  %235 = icmp sle i64 %234, 0, !dbg !903
  br i1 %235, label %236, label %237, !dbg !903

236:                                              ; preds = %233
  br label %281, !dbg !904

237:                                              ; preds = %233
    #dbg_declare(ptr %18, !905, !DIExpression(), !907)
  store i32 0, ptr %18, align 4, !dbg !907
  br label %238, !dbg !908

238:                                              ; preds = %277, %237
  %239 = load i32, ptr %18, align 4, !dbg !909
  %240 = load i32, ptr %4, align 4, !dbg !911
  %241 = icmp sle i32 %239, %240, !dbg !912
  br i1 %241, label %242, label %280, !dbg !913

242:                                              ; preds = %238
  %243 = load ptr, ptr %8, align 8, !dbg !914
  %244 = load i32, ptr %18, align 4, !dbg !916
  %245 = sext i32 %244 to i64, !dbg !914
  %246 = getelementptr inbounds i32, ptr %243, i64 %245, !dbg !914
  %247 = load i32, ptr %246, align 4, !dbg !914
  %248 = icmp sle i32 0, %247, !dbg !917
  br i1 %248, label %249, label %276, !dbg !918

249:                                              ; preds = %242
  %250 = load ptr, ptr %8, align 8, !dbg !919
  %251 = load i32, ptr %18, align 4, !dbg !920
  %252 = sext i32 %251 to i64, !dbg !919
  %253 = getelementptr inbounds i32, ptr %250, i64 %252, !dbg !919
  %254 = load i32, ptr %253, align 4, !dbg !919
  %255 = getelementptr inbounds [8192 x i8], ptr %10, i64 0, i64 0, !dbg !921
  %256 = load i64, ptr %11, align 8, !dbg !922
  %257 = call zeroext i1 @write_wait(i32 noundef %254, ptr noundef %255, i64 noundef %256), !dbg !923
  br i1 %257, label %276, label %258, !dbg !918

258:                                              ; preds = %249
  %259 = load ptr, ptr %8, align 8, !dbg !924
  %260 = load ptr, ptr %5, align 8, !dbg !927
  %261 = load i32, ptr %18, align 4, !dbg !928
  %262 = call zeroext i1 @fail_output(ptr noundef %259, ptr noundef %260, i32 noundef %261), !dbg !929
  br i1 %262, label %263, label %264, !dbg !929

263:                                              ; preds = %258
  store i8 0, ptr %13, align 1, !dbg !930
  br label %264, !dbg !931

264:                                              ; preds = %263, %258
  %265 = load i64, ptr %7, align 8, !dbg !932
  %266 = add i64 %265, -1, !dbg !932
  store i64 %266, ptr %7, align 8, !dbg !932
  %267 = load i32, ptr %18, align 4, !dbg !933
  %268 = load i32, ptr %12, align 4, !dbg !935
  %269 = icmp eq i32 %267, %268, !dbg !936
  br i1 %269, label %270, label %275, !dbg !936

270:                                              ; preds = %264
  %271 = load ptr, ptr %8, align 8, !dbg !937
  %272 = load i32, ptr %4, align 4, !dbg !938
  %273 = load i32, ptr %12, align 4, !dbg !939
  %274 = call i32 @get_next_out(ptr noundef %271, i32 noundef %272, i32 noundef %273) #13, !dbg !940
  store i32 %274, ptr %12, align 4, !dbg !941
  br label %275, !dbg !942

275:                                              ; preds = %270, %264
  br label %276, !dbg !943

276:                                              ; preds = %275, %249, %242
  br label %277, !dbg !944

277:                                              ; preds = %276
  %278 = load i32, ptr %18, align 4, !dbg !945
  %279 = add nsw i32 %278, 1, !dbg !945
  store i32 %279, ptr %18, align 4, !dbg !945
  br label %238, !dbg !946, !llvm.loop !947

280:                                              ; preds = %238
  br label %178, !dbg !845, !llvm.loop !879

281:                                              ; preds = %236, %178
  %282 = load i64, ptr %11, align 8, !dbg !949
  %283 = icmp eq i64 %282, -1, !dbg !951
  br i1 %283, label %284, label %288, !dbg !951

284:                                              ; preds = %281
  %285 = call ptr @__errno_location() #14, !dbg !952
  %286 = load i32, ptr %285, align 4, !dbg !952
  %287 = call ptr @gettext(ptr noundef @.str.67) #11, !dbg !954
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %286, ptr noundef %287), !dbg !955
  store i8 0, ptr %13, align 1, !dbg !956
  br label %288, !dbg !957

288:                                              ; preds = %284, %281
    #dbg_declare(ptr %19, !958, !DIExpression(), !960)
  store i32 1, ptr %19, align 4, !dbg !960
  br label %289, !dbg !961

289:                                              ; preds = %318, %288
  %290 = load i32, ptr %19, align 4, !dbg !962
  %291 = load i32, ptr %4, align 4, !dbg !964
  %292 = icmp sle i32 %290, %291, !dbg !965
  br i1 %292, label %293, label %321, !dbg !966

293:                                              ; preds = %289
  %294 = load ptr, ptr %8, align 8, !dbg !967
  %295 = load i32, ptr %19, align 4, !dbg !969
  %296 = sext i32 %295 to i64, !dbg !967
  %297 = getelementptr inbounds i32, ptr %294, i64 %296, !dbg !967
  %298 = load i32, ptr %297, align 4, !dbg !967
  %299 = icmp sle i32 0, %298, !dbg !970
  br i1 %299, label %300, label %317, !dbg !971

300:                                              ; preds = %293
  %301 = load ptr, ptr %8, align 8, !dbg !972
  %302 = load i32, ptr %19, align 4, !dbg !973
  %303 = sext i32 %302 to i64, !dbg !972
  %304 = getelementptr inbounds i32, ptr %301, i64 %303, !dbg !972
  %305 = load i32, ptr %304, align 4, !dbg !972
  %306 = call i32 @close(i32 noundef %305), !dbg !974
  %307 = icmp slt i32 %306, 0, !dbg !975
  br i1 %307, label %308, label %317, !dbg !971

308:                                              ; preds = %300
  %309 = call ptr @__errno_location() #14, !dbg !976
  %310 = load i32, ptr %309, align 4, !dbg !976
  %311 = load ptr, ptr %5, align 8, !dbg !978
  %312 = load i32, ptr %19, align 4, !dbg !979
  %313 = sext i32 %312 to i64, !dbg !978
  %314 = getelementptr inbounds ptr, ptr %311, i64 %313, !dbg !978
  %315 = load ptr, ptr %314, align 8, !dbg !978
  %316 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %315), !dbg !980
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %310, ptr noundef @.str.20, ptr noundef %316), !dbg !981
  store i8 0, ptr %13, align 1, !dbg !982
  br label %317, !dbg !983

317:                                              ; preds = %308, %300, %293
  br label %318, !dbg !984

318:                                              ; preds = %317
  %319 = load i32, ptr %19, align 4, !dbg !985
  %320 = add nsw i32 %319, 1, !dbg !985
  store i32 %320, ptr %19, align 4, !dbg !985
  br label %289, !dbg !986, !llvm.loop !987

321:                                              ; preds = %289
  %322 = load ptr, ptr %8, align 8, !dbg !989
  call void @free(ptr noundef %322) #11, !dbg !990
  %323 = load i8, ptr %6, align 1, !dbg !991
  %324 = trunc i8 %323 to i1, !dbg !991
  br i1 %324, label %325, label %327, !dbg !991

325:                                              ; preds = %321
  %326 = load ptr, ptr %9, align 8, !dbg !993
  call void @free(ptr noundef %326) #11, !dbg !994
  br label %327, !dbg !994

327:                                              ; preds = %325, %321
  %328 = load i8, ptr %13, align 1, !dbg !995
  %329 = trunc i8 %328 to i1, !dbg !995
  ret i1 %329, !dbg !996
}

declare i32 @close(i32 noundef) #2

declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #5

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #1

declare zeroext i1 @streq(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strspn(ptr noundef, ptr noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #6

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #5

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strcspn(ptr noundef, ptr noundef) #6

declare i64 @fwrite_unlocked(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

declare void @emit_bug_reporting_address() #2

declare void @xset_binary_mode(i32 noundef, i32 noundef) #2

declare void @fadvise(ptr noundef, i32 noundef) #2

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @xnmalloc(i64 noundef, i64 noundef) #8

declare zeroext i1 @iopoll_output_ok(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @bad_cast(ptr noundef %0) #3 !dbg !997 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1000, !DIExpression(), !1001)
  %3 = load ptr, ptr %2, align 8, !dbg !1002
  ret ptr %3, !dbg !1003
}

declare i32 @open_safer(ptr noundef, i32 noundef, ...) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

declare ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) #2

declare i32 @iopoll(i32 noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @fail_output(ptr noundef %0, ptr noundef %1, i32 noundef %2) #3 !dbg !1004 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1007, !DIExpression(), !1008)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !1009, !DIExpression(), !1010)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !1011, !DIExpression(), !1012)
    #dbg_declare(ptr %7, !1013, !DIExpression(), !1014)
  %10 = call ptr @__errno_location() #14, !dbg !1015
  %11 = load i32, ptr %10, align 4, !dbg !1015
  store i32 %11, ptr %7, align 4, !dbg !1014
    #dbg_declare(ptr %8, !1016, !DIExpression(), !1017)
  %12 = call ptr @__errno_location() #14, !dbg !1018
  %13 = load i32, ptr %12, align 4, !dbg !1018
  %14 = icmp ne i32 %13, 32, !dbg !1019
  br i1 %14, label %21, label %15, !dbg !1020

15:                                               ; preds = %3
  %16 = load i32, ptr @output_error, align 4, !dbg !1021
  %17 = icmp eq i32 %16, 3, !dbg !1022
  br i1 %17, label %21, label %18, !dbg !1023

18:                                               ; preds = %15
  %19 = load i32, ptr @output_error, align 4, !dbg !1024
  %20 = icmp eq i32 %19, 1, !dbg !1025
  br label %21, !dbg !1023

21:                                               ; preds = %18, %15, %3
  %22 = phi i1 [ true, %15 ], [ true, %3 ], [ %20, %18 ]
  %23 = zext i1 %22 to i8, !dbg !1017
  store i8 %23, ptr %8, align 1, !dbg !1017
  %24 = load i8, ptr %8, align 1, !dbg !1026
  %25 = trunc i8 %24 to i1, !dbg !1026
  br i1 %25, label %26, label %89, !dbg !1026

26:                                               ; preds = %21
  %27 = load i32, ptr @output_error, align 4, !dbg !1028
  %28 = icmp eq i32 %27, 3, !dbg !1030
  br i1 %28, label %32, label %29, !dbg !1031

29:                                               ; preds = %26
  %30 = load i32, ptr @output_error, align 4, !dbg !1032
  %31 = icmp eq i32 %30, 4, !dbg !1033
  br label %32, !dbg !1031

32:                                               ; preds = %29, %26
  %33 = phi i1 [ true, %26 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32, !dbg !1031
  %35 = call i1 @llvm.is.constant.i32(i32 %34), !dbg !1034
  br i1 %35, label %36, label %65, !dbg !1034

36:                                               ; preds = %32
  %37 = load i32, ptr @output_error, align 4, !dbg !1028
  %38 = icmp eq i32 %37, 3, !dbg !1030
  br i1 %38, label %42, label %39, !dbg !1031

39:                                               ; preds = %36
  %40 = load i32, ptr @output_error, align 4, !dbg !1032
  %41 = icmp eq i32 %40, 4, !dbg !1033
  br label %42, !dbg !1031

42:                                               ; preds = %39, %36
  %43 = phi i1 [ true, %36 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32, !dbg !1031
  %45 = load i32, ptr %7, align 4, !dbg !1035
  %46 = load ptr, ptr %5, align 8, !dbg !1036
  %47 = load i32, ptr %6, align 4, !dbg !1037
  %48 = sext i32 %47 to i64, !dbg !1036
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48, !dbg !1036
  %50 = load ptr, ptr %49, align 8, !dbg !1036
  %51 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %50), !dbg !1038
  call void (i32, i32, ptr, ...) @error(i32 noundef %44, i32 noundef %45, ptr noundef @.str.20, ptr noundef %51), !dbg !1034
  %52 = load i32, ptr @output_error, align 4, !dbg !1028
  %53 = icmp eq i32 %52, 3, !dbg !1030
  br i1 %53, label %57, label %54, !dbg !1031

54:                                               ; preds = %42
  %55 = load i32, ptr @output_error, align 4, !dbg !1032
  %56 = icmp eq i32 %55, 4, !dbg !1033
  br label %57, !dbg !1031

57:                                               ; preds = %54, %42
  %58 = phi i1 [ true, %42 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32, !dbg !1031
  %60 = icmp ne i32 %59, 0, !dbg !1034
  br i1 %60, label %61, label %63, !dbg !1034

61:                                               ; preds = %57
  unreachable, !dbg !1034

62:                                               ; No predecessors!
  br label %64, !dbg !1034

63:                                               ; preds = %57
  br label %64, !dbg !1034

64:                                               ; preds = %63, %62
  br label %88, !dbg !1034

65:                                               ; preds = %32
    #dbg_declare(ptr %9, !1039, !DIExpression(), !1041)
  %66 = load i32, ptr @output_error, align 4, !dbg !1042
  %67 = icmp eq i32 %66, 3, !dbg !1043
  br i1 %67, label %71, label %68, !dbg !1044

68:                                               ; preds = %65
  %69 = load i32, ptr @output_error, align 4, !dbg !1045
  %70 = icmp eq i32 %69, 4, !dbg !1046
  br label %71, !dbg !1044

71:                                               ; preds = %68, %65
  %72 = phi i1 [ true, %65 ], [ %70, %68 ]
  %73 = zext i1 %72 to i32, !dbg !1044
  store i32 %73, ptr %9, align 4, !dbg !1041
  %74 = load i32, ptr %9, align 4, !dbg !1041
  %75 = load i32, ptr %7, align 4, !dbg !1047
  %76 = load ptr, ptr %5, align 8, !dbg !1048
  %77 = load i32, ptr %6, align 4, !dbg !1049
  %78 = sext i32 %77 to i64, !dbg !1048
  %79 = getelementptr inbounds ptr, ptr %76, i64 %78, !dbg !1048
  %80 = load ptr, ptr %79, align 8, !dbg !1048
  %81 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %80), !dbg !1050
  call void (i32, i32, ptr, ...) @error(i32 noundef %74, i32 noundef %75, ptr noundef @.str.20, ptr noundef %81), !dbg !1041
  %82 = load i32, ptr %9, align 4, !dbg !1041
  %83 = icmp ne i32 %82, 0, !dbg !1041
  br i1 %83, label %84, label %86, !dbg !1041

84:                                               ; preds = %71
  unreachable, !dbg !1041

85:                                               ; No predecessors!
  br label %87, !dbg !1041

86:                                               ; preds = %71
  br label %87, !dbg !1041

87:                                               ; preds = %86, %85
  br label %88, !dbg !1034

88:                                               ; preds = %87, %64
  br label %89, !dbg !1051

89:                                               ; preds = %88, %21
  %90 = load ptr, ptr %4, align 8, !dbg !1052
  %91 = load i32, ptr %6, align 4, !dbg !1053
  %92 = sext i32 %91 to i64, !dbg !1052
  %93 = getelementptr inbounds i32, ptr %90, i64 %92, !dbg !1052
  store i32 -1, ptr %93, align 4, !dbg !1054
  %94 = load i8, ptr %8, align 1, !dbg !1055
  %95 = trunc i8 %94 to i1, !dbg !1055
  ret i1 %95, !dbg !1056
}

; Function Attrs: noinline nounwind optnone willreturn memory(read) uwtable
define internal i32 @get_next_out(ptr noundef %0, i32 noundef %1, i32 noundef %2) #10 !dbg !1057 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1060, !DIExpression(), !1061)
  store i32 %1, ptr %6, align 4
    #dbg_declare(ptr %6, !1062, !DIExpression(), !1063)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !1064, !DIExpression(), !1065)
  %8 = load i32, ptr %7, align 4, !dbg !1066
  %9 = add nsw i32 %8, 1, !dbg !1066
  store i32 %9, ptr %7, align 4, !dbg !1066
  br label %10, !dbg !1068

10:                                               ; preds = %24, %3
  %11 = load i32, ptr %7, align 4, !dbg !1069
  %12 = load i32, ptr %6, align 4, !dbg !1071
  %13 = icmp sle i32 %11, %12, !dbg !1072
  br i1 %13, label %14, label %27, !dbg !1073

14:                                               ; preds = %10
  %15 = load ptr, ptr %5, align 8, !dbg !1074
  %16 = load i32, ptr %7, align 4, !dbg !1076
  %17 = sext i32 %16 to i64, !dbg !1074
  %18 = getelementptr inbounds i32, ptr %15, i64 %17, !dbg !1074
  %19 = load i32, ptr %18, align 4, !dbg !1074
  %20 = icmp sle i32 0, %19, !dbg !1077
  br i1 %20, label %21, label %23, !dbg !1077

21:                                               ; preds = %14
  %22 = load i32, ptr %7, align 4, !dbg !1078
  store i32 %22, ptr %4, align 4, !dbg !1079
  br label %28, !dbg !1079

23:                                               ; preds = %14
  br label %24, !dbg !1080

24:                                               ; preds = %23
  %25 = load i32, ptr %7, align 4, !dbg !1081
  %26 = add nsw i32 %25, 1, !dbg !1081
  store i32 %26, ptr %7, align 4, !dbg !1081
  br label %10, !dbg !1082, !llvm.loop !1083

27:                                               ; preds = %10
  store i32 -1, ptr %4, align 4, !dbg !1085
  br label %28, !dbg !1085

28:                                               ; preds = %27, %21
  %29 = load i32, ptr %4, align 4, !dbg !1086
  ret i32 %29, !dbg !1086
}

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #2

declare zeroext i1 @write_wait(i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noinline nounwind optnone willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { noreturn }
attributes #16 = { allocsize(0,1) }

!llvm.dbg.cu = !{!73}
!llvm.module.flags = !{!333, !334, !335, !336, !337, !338, !339}
!llvm.ident = !{!340}

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
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "append", scope: !73, file: !2, line: 43, type: !173, isLocal: true, isDefinition: true)
!73 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !74, retainedTypes: !127, globals: !138, splitDebugInlining: false, nameTableKind: None)
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
!127 = !{!128, !130, !131, !132, !85, !137}
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
!138 = !{!0, !7, !12, !17, !22, !27, !32, !34, !39, !44, !49, !54, !59, !64, !69, !139, !144, !149, !154, !159, !164, !169, !71, !171, !174, !176, !184, !189, !191, !193, !198, !203, !205, !207, !209, !211, !213, !215, !220, !225, !227, !229, !231, !233, !235, !237, !242, !247, !249, !251, !253, !255, !257, !259, !261, !266, !268, !273, !278, !280, !282, !287, !292, !294, !296, !308, !312, !314, !316, !318, !320, !324, !326, !328}
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 15)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 14)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 12)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 20)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 16)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 3)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !141, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "ignore_interrupts", scope: !73, file: !2, line: 46, type: !173, isLocal: true, isDefinition: true)
!173 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "output_error", scope: !73, file: !2, line: 57, type: !75, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !178, file: !84, line: 594, type: !85, isLocal: true, isDefinition: true)
!178 = distinct !DISubprogram(name: "oputs_", scope: !84, file: !84, line: 592, type: !179, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !73, retainedNodes: !183)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !181, !181}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!183 = !{}
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !84, line: 604, type: !186, isLocal: true, isDefinition: true)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 5)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !84, line: 605, type: !186, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !84, line: 614, type: !19, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !84, line: 639, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 6)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !84, line: 667, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 2)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !84, line: 667, type: !186, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(scope: null, file: !84, line: 668, type: !19, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !84, line: 668, type: !166, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !84, line: 669, type: !186, isLocal: true, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !84, line: 670, type: !195, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !84, line: 670, type: !195, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !84, line: 671, type: !217, isLocal: true, isDefinition: true)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 7)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !84, line: 672, type: !222, isLocal: true, isDefinition: true)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 8)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !84, line: 673, type: !61, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !84, line: 674, type: !61, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !84, line: 675, type: !61, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !84, line: 676, type: !61, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !84, line: 682, type: !217, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !84, line: 683, type: !61, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !84, line: 688, type: !239, isLocal: true, isDefinition: true)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 17)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !84, line: 688, type: !244, isLocal: true, isDefinition: true)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 40)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !84, line: 695, type: !141, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !84, line: 695, type: !29, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !84, line: 698, type: !166, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !84, line: 702, type: !186, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !84, line: 707, type: !186, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !84, line: 710, type: !222, isLocal: true, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !84, line: 858, type: !161, isLocal: true, isDefinition: true)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !84, line: 859, type: !263, isLocal: true, isDefinition: true)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 22)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !84, line: 860, type: !141, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !84, line: 882, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 27)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !84, line: 884, type: !275, isLocal: true, isDefinition: true)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 51)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !84, line: 885, type: !151, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !217, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !284, isLocal: true, isDefinition: true)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 18)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !289, isLocal: true, isDefinition: true)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 13)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !186, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !222, isLocal: true, isDefinition: true)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "long_options", scope: !73, file: !2, line: 59, type: !298, isLocal: true, isDefinition: true)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 1536, elements: !196)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !301, line: 50, size: 256, elements: !302)
!301 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!302 = !{!303, !304, !305, !307}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !301, line: 52, baseType: !181, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !300, file: !301, line: 55, baseType: !85, size: 32, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !300, file: !301, line: 56, baseType: !306, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !300, file: !301, line: 57, baseType: !85, size: 32, offset: 192)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(name: "output_error_types", scope: !73, file: !2, line: 73, type: !310, isLocal: true, isDefinition: true)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 128, elements: !20)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !186, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !151, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !186, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !151, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "output_error_args", scope: !73, file: !2, line: 69, type: !322, isLocal: true, isDefinition: true)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 320, elements: !187)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !2, line: 256, type: !161, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !2, line: 299, type: !289, isLocal: true, isDefinition: true)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !2, line: 326, type: !330, isLocal: true, isDefinition: true)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 11)
!333 = !{i32 7, !"Dwarf Version", i32 5}
!334 = !{i32 2, !"Debug Info Version", i32 3}
!335 = !{i32 1, !"wchar_size", i32 4}
!336 = !{i32 8, !"PIC Level", i32 2}
!337 = !{i32 7, !"PIE Level", i32 2}
!338 = !{i32 7, !"uwtable", i32 2}
!339 = !{i32 7, !"frame-pointer", i32 2}
!340 = !{!"Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)"}
!341 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 81, type: !135, scopeLine: 82, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !73, retainedNodes: !183)
!342 = !DILocalVariable(name: "status", arg: 1, scope: !341, file: !2, line: 81, type: !85)
!343 = !DILocation(line: 81, column: 12, scope: !341)
!344 = !DILocation(line: 83, column: 7, scope: !345)
!345 = distinct !DILexicalBlock(scope: !341, file: !2, line: 83, column: 7)
!346 = !DILocation(line: 83, column: 14, scope: !345)
!347 = !DILocation(line: 84, column: 5, scope: !345)
!348 = !DILocation(line: 84, column: 5, scope: !349)
!349 = distinct !DILexicalBlock(scope: !345, file: !2, line: 84, column: 5)
!350 = !DILocation(line: 87, column: 15, scope: !351)
!351 = distinct !DILexicalBlock(scope: !345, file: !2, line: 86, column: 5)
!352 = !DILocation(line: 87, column: 55, scope: !351)
!353 = !DILocation(line: 87, column: 7, scope: !351)
!354 = !DILocation(line: 88, column: 14, scope: !351)
!355 = !DILocation(line: 91, column: 5, scope: !351)
!356 = !DILocation(line: 88, column: 7, scope: !351)
!357 = !DILocation(line: 92, column: 14, scope: !351)
!358 = !DILocation(line: 92, column: 7, scope: !351)
!359 = !DILocation(line: 96, column: 14, scope: !351)
!360 = !DILocation(line: 96, column: 7, scope: !351)
!361 = !DILocation(line: 100, column: 14, scope: !351)
!362 = !DILocation(line: 100, column: 7, scope: !351)
!363 = !DILocation(line: 104, column: 14, scope: !351)
!364 = !DILocation(line: 104, column: 7, scope: !351)
!365 = !DILocation(line: 108, column: 14, scope: !351)
!366 = !DILocation(line: 108, column: 7, scope: !351)
!367 = !DILocation(line: 109, column: 14, scope: !351)
!368 = !DILocation(line: 109, column: 7, scope: !351)
!369 = !DILocation(line: 110, column: 14, scope: !351)
!370 = !DILocation(line: 122, column: 5, scope: !351)
!371 = !DILocation(line: 110, column: 7, scope: !351)
!372 = !DILocation(line: 123, column: 7, scope: !351)
!373 = !DILocation(line: 125, column: 9, scope: !341)
!374 = !DILocation(line: 125, column: 3, scope: !341)
!375 = !DILocalVariable(name: "program", arg: 1, scope: !178, file: !84, line: 592, type: !181)
!376 = !DILocation(line: 592, column: 34, scope: !178)
!377 = !DILocalVariable(name: "option", arg: 2, scope: !178, file: !84, line: 592, type: !181)
!378 = !DILocation(line: 592, column: 55, scope: !178)
!379 = !DILocation(line: 600, column: 7, scope: !380)
!380 = distinct !DILexicalBlock(scope: !178, file: !84, line: 600, column: 7)
!381 = !DILocation(line: 600, column: 19, scope: !380)
!382 = !DILocalVariable(name: "term", scope: !383, file: !84, line: 604, type: !181)
!383 = distinct !DILexicalBlock(scope: !380, file: !84, line: 601, column: 5)
!384 = !DILocation(line: 604, column: 19, scope: !383)
!385 = !DILocation(line: 604, column: 26, scope: !383)
!386 = !DILocation(line: 605, column: 23, scope: !383)
!387 = !DILocation(line: 605, column: 28, scope: !383)
!388 = !DILocation(line: 605, column: 33, scope: !383)
!389 = !DILocation(line: 605, column: 32, scope: !383)
!390 = !DILocation(line: 605, column: 38, scope: !383)
!391 = !DILocation(line: 605, column: 48, scope: !383)
!392 = !DILocation(line: 605, column: 41, scope: !383)
!393 = !DILocation(line: 605, column: 19, scope: !383)
!394 = !DILocation(line: 606, column: 5, scope: !383)
!395 = !DILocation(line: 607, column: 7, scope: !396)
!396 = distinct !DILexicalBlock(scope: !178, file: !84, line: 607, column: 7)
!397 = !DILocation(line: 609, column: 14, scope: !398)
!398 = distinct !DILexicalBlock(scope: !396, file: !84, line: 608, column: 5)
!399 = !DILocation(line: 609, column: 22, scope: !398)
!400 = !DILocation(line: 609, column: 7, scope: !398)
!401 = !DILocation(line: 610, column: 7, scope: !398)
!402 = !DILocalVariable(name: "double_space", scope: !178, file: !84, line: 613, type: !173)
!403 = !DILocation(line: 613, column: 8, scope: !178)
!404 = !DILocalVariable(name: "first_word", scope: !178, file: !84, line: 614, type: !181)
!405 = !DILocation(line: 614, column: 15, scope: !178)
!406 = !DILocation(line: 614, column: 28, scope: !178)
!407 = !DILocation(line: 614, column: 45, scope: !178)
!408 = !DILocation(line: 614, column: 37, scope: !178)
!409 = !DILocation(line: 614, column: 35, scope: !178)
!410 = !DILocalVariable(name: "option_text", scope: !178, file: !84, line: 615, type: !181)
!411 = !DILocation(line: 615, column: 15, scope: !178)
!412 = !DILocation(line: 615, column: 37, scope: !178)
!413 = !DILocation(line: 615, column: 29, scope: !178)
!414 = !DILocation(line: 616, column: 8, scope: !415)
!415 = distinct !DILexicalBlock(scope: !178, file: !84, line: 616, column: 7)
!416 = !DILocation(line: 616, column: 7, scope: !415)
!417 = !DILocation(line: 618, column: 21, scope: !418)
!418 = distinct !DILexicalBlock(scope: !415, file: !84, line: 617, column: 5)
!419 = !DILocation(line: 618, column: 19, scope: !418)
!420 = !DILocation(line: 621, column: 20, scope: !418)
!421 = !DILocation(line: 622, column: 5, scope: !418)
!422 = !DILocation(line: 623, column: 12, scope: !423)
!423 = distinct !DILexicalBlock(scope: !415, file: !84, line: 623, column: 12)
!424 = !DILocation(line: 623, column: 27, scope: !423)
!425 = !DILocation(line: 623, column: 24, scope: !423)
!426 = !DILocalVariable(name: "s", scope: !427, file: !84, line: 627, type: !181)
!427 = distinct !DILexicalBlock(scope: !423, file: !84, line: 624, column: 5)
!428 = !DILocation(line: 627, column: 19, scope: !427)
!429 = !DILocation(line: 627, column: 23, scope: !427)
!430 = !DILocalVariable(name: "spaces", scope: !427, file: !84, line: 628, type: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !432, line: 18, baseType: !433)
!432 = !DIFile(filename: "/usr/lib/llvm-22/lib/clang/22/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!433 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!434 = !DILocation(line: 628, column: 14, scope: !427)
!435 = !DILocation(line: 629, column: 7, scope: !427)
!436 = !DILocation(line: 629, column: 14, scope: !427)
!437 = !DILocation(line: 629, column: 18, scope: !427)
!438 = !DILocation(line: 629, column: 16, scope: !427)
!439 = !DILocation(line: 629, column: 30, scope: !427)
!440 = !DILocation(line: 629, column: 33, scope: !427)
!441 = !DILocation(line: 629, column: 40, scope: !427)
!442 = !DILocation(line: 0, scope: !427)
!443 = !DILocation(line: 630, column: 21, scope: !427)
!444 = !DILocation(line: 630, column: 32, scope: !427)
!445 = !DILocation(line: 630, column: 30, scope: !427)
!446 = !DILocation(line: 630, column: 20, scope: !427)
!447 = !DILocation(line: 630, column: 19, scope: !427)
!448 = !DILocation(line: 630, column: 16, scope: !427)
!449 = distinct !{!449, !435, !443, !450}
!450 = !{!"llvm.loop.mustprogress"}
!451 = !DILocation(line: 631, column: 11, scope: !452)
!452 = distinct !DILexicalBlock(scope: !427, file: !84, line: 631, column: 11)
!453 = !DILocation(line: 631, column: 18, scope: !452)
!454 = !DILocation(line: 634, column: 25, scope: !455)
!455 = distinct !DILexicalBlock(scope: !452, file: !84, line: 632, column: 9)
!456 = !DILocation(line: 634, column: 23, scope: !455)
!457 = !DILocation(line: 635, column: 24, scope: !455)
!458 = !DILocation(line: 636, column: 9, scope: !455)
!459 = !DILocation(line: 637, column: 5, scope: !427)
!460 = !DILocalVariable(name: "anchor_len", scope: !178, file: !84, line: 639, type: !431)
!461 = !DILocation(line: 639, column: 10, scope: !178)
!462 = !DILocation(line: 639, column: 32, scope: !178)
!463 = !DILocation(line: 639, column: 23, scope: !178)
!464 = !DILocalVariable(name: "desc_text", scope: !178, file: !84, line: 644, type: !181)
!465 = !DILocation(line: 644, column: 15, scope: !178)
!466 = !DILocation(line: 644, column: 27, scope: !178)
!467 = !DILocation(line: 644, column: 41, scope: !178)
!468 = !DILocation(line: 644, column: 39, scope: !178)
!469 = !DILocation(line: 645, column: 3, scope: !178)
!470 = !DILocation(line: 645, column: 11, scope: !178)
!471 = !DILocation(line: 645, column: 10, scope: !178)
!472 = !DILocation(line: 645, column: 21, scope: !178)
!473 = !DILocation(line: 645, column: 25, scope: !178)
!474 = !DILocation(line: 645, column: 24, scope: !178)
!475 = !DILocation(line: 645, column: 35, scope: !178)
!476 = !DILocation(line: 0, scope: !178)
!477 = !DILocation(line: 647, column: 12, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !84, line: 647, column: 11)
!479 = distinct !DILexicalBlock(scope: !178, file: !84, line: 646, column: 5)
!480 = !DILocation(line: 647, column: 11, scope: !478)
!481 = !DILocation(line: 647, column: 22, scope: !478)
!482 = !DILocation(line: 647, column: 29, scope: !478)
!483 = !DILocation(line: 647, column: 34, scope: !478)
!484 = !DILocation(line: 647, column: 32, scope: !478)
!485 = !DILocation(line: 647, column: 49, scope: !478)
!486 = !DILocation(line: 648, column: 22, scope: !478)
!487 = !DILocation(line: 648, column: 9, scope: !478)
!488 = !DILocation(line: 649, column: 11, scope: !489)
!489 = distinct !DILexicalBlock(scope: !479, file: !84, line: 649, column: 11)
!490 = !DILocation(line: 649, column: 21, scope: !489)
!491 = !DILocation(line: 649, column: 20, scope: !489)
!492 = !DILocation(line: 651, column: 16, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !84, line: 651, column: 15)
!494 = distinct !DILexicalBlock(scope: !489, file: !84, line: 650, column: 9)
!495 = !DILocation(line: 651, column: 15, scope: !493)
!496 = !DILocation(line: 651, column: 26, scope: !493)
!497 = !DILocation(line: 651, column: 34, scope: !493)
!498 = !DILocation(line: 651, column: 37, scope: !493)
!499 = !DILocation(line: 651, column: 48, scope: !493)
!500 = !DILocation(line: 651, column: 46, scope: !493)
!501 = !DILocation(line: 652, column: 13, scope: !493)
!502 = !DILocation(line: 655, column: 16, scope: !503)
!503 = distinct !DILexicalBlock(scope: !494, file: !84, line: 655, column: 15)
!504 = !DILocation(line: 655, column: 29, scope: !503)
!505 = !DILocation(line: 655, column: 34, scope: !503)
!506 = !DILocation(line: 655, column: 32, scope: !503)
!507 = !DILocation(line: 655, column: 49, scope: !503)
!508 = !DILocation(line: 656, column: 13, scope: !503)
!509 = !DILocation(line: 657, column: 9, scope: !494)
!510 = !DILocation(line: 659, column: 16, scope: !479)
!511 = distinct !{!511, !469, !512, !450}
!512 = !DILocation(line: 660, column: 5, scope: !178)
!513 = !DILocation(line: 663, column: 11, scope: !178)
!514 = !DILocation(line: 663, column: 22, scope: !178)
!515 = !DILocation(line: 663, column: 35, scope: !178)
!516 = !DILocation(line: 663, column: 33, scope: !178)
!517 = !DILocation(line: 663, column: 43, scope: !178)
!518 = !DILocation(line: 663, column: 3, scope: !178)
!519 = !DILocalVariable(name: "url_program", scope: !178, file: !84, line: 667, type: !181)
!520 = !DILocation(line: 667, column: 15, scope: !178)
!521 = !DILocation(line: 667, column: 38, scope: !178)
!522 = !DILocation(line: 667, column: 31, scope: !178)
!523 = !DILocation(line: 668, column: 38, scope: !178)
!524 = !DILocation(line: 668, column: 31, scope: !178)
!525 = !DILocation(line: 669, column: 38, scope: !178)
!526 = !DILocation(line: 669, column: 31, scope: !178)
!527 = !DILocation(line: 670, column: 38, scope: !178)
!528 = !DILocation(line: 670, column: 31, scope: !178)
!529 = !DILocation(line: 671, column: 38, scope: !178)
!530 = !DILocation(line: 671, column: 31, scope: !178)
!531 = !DILocation(line: 672, column: 38, scope: !178)
!532 = !DILocation(line: 672, column: 31, scope: !178)
!533 = !DILocation(line: 673, column: 38, scope: !178)
!534 = !DILocation(line: 673, column: 31, scope: !178)
!535 = !DILocation(line: 674, column: 38, scope: !178)
!536 = !DILocation(line: 674, column: 31, scope: !178)
!537 = !DILocation(line: 675, column: 38, scope: !178)
!538 = !DILocation(line: 675, column: 31, scope: !178)
!539 = !DILocation(line: 676, column: 38, scope: !178)
!540 = !DILocation(line: 676, column: 31, scope: !178)
!541 = !DILocation(line: 677, column: 31, scope: !178)
!542 = !DILocation(line: 682, column: 18, scope: !543)
!543 = distinct !DILexicalBlock(scope: !178, file: !84, line: 682, column: 7)
!544 = !DILocation(line: 682, column: 7, scope: !543)
!545 = !DILocation(line: 683, column: 7, scope: !543)
!546 = !DILocation(line: 683, column: 21, scope: !543)
!547 = !DILocation(line: 683, column: 10, scope: !543)
!548 = !DILocation(line: 689, column: 15, scope: !549)
!549 = distinct !DILexicalBlock(scope: !543, file: !84, line: 684, column: 5)
!550 = !DILocation(line: 689, column: 28, scope: !549)
!551 = !DILocation(line: 689, column: 47, scope: !549)
!552 = !DILocation(line: 689, column: 41, scope: !549)
!553 = !DILocation(line: 689, column: 59, scope: !549)
!554 = !DILocation(line: 688, column: 7, scope: !549)
!555 = !DILocation(line: 690, column: 5, scope: !549)
!556 = !DILocation(line: 695, column: 48, scope: !557)
!557 = distinct !DILexicalBlock(scope: !543, file: !84, line: 692, column: 5)
!558 = !DILocation(line: 696, column: 21, scope: !557)
!559 = !DILocation(line: 696, column: 15, scope: !557)
!560 = !DILocation(line: 696, column: 33, scope: !557)
!561 = !DILocation(line: 695, column: 7, scope: !557)
!562 = !DILocation(line: 698, column: 20, scope: !178)
!563 = !DILocation(line: 698, column: 3, scope: !178)
!564 = !DILocation(line: 702, column: 21, scope: !178)
!565 = !DILocation(line: 702, column: 3, scope: !178)
!566 = !DILocation(line: 705, column: 11, scope: !178)
!567 = !DILocation(line: 705, column: 26, scope: !178)
!568 = !DILocation(line: 705, column: 38, scope: !178)
!569 = !DILocation(line: 705, column: 36, scope: !178)
!570 = !DILocation(line: 705, column: 50, scope: !178)
!571 = !DILocation(line: 705, column: 3, scope: !178)
!572 = !DILocation(line: 707, column: 21, scope: !178)
!573 = !DILocation(line: 707, column: 3, scope: !178)
!574 = !DILocation(line: 710, column: 28, scope: !178)
!575 = !DILocation(line: 710, column: 3, scope: !178)
!576 = !DILocation(line: 714, column: 10, scope: !178)
!577 = !DILocation(line: 714, column: 21, scope: !178)
!578 = !DILocation(line: 714, column: 3, scope: !178)
!579 = !DILocation(line: 715, column: 1, scope: !178)
!580 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !84, file: !84, line: 855, type: !581, scopeLine: 856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !73, retainedNodes: !183)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !181}
!583 = !DILocalVariable(name: "program", arg: 1, scope: !580, file: !84, line: 855, type: !181)
!584 = !DILocation(line: 855, column: 34, scope: !580)
!585 = !DILocalVariable(name: "infomap", scope: !580, file: !84, line: 857, type: !586)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 896, elements: !218)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !580, file: !84, line: 857, size: 128, elements: !589)
!589 = !{!590, !591}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !588, file: !84, line: 857, baseType: !181, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !588, file: !84, line: 857, baseType: !181, size: 64, offset: 64)
!592 = !DILocation(line: 857, column: 67, scope: !580)
!593 = !DILocalVariable(name: "node", scope: !580, file: !84, line: 867, type: !181)
!594 = !DILocation(line: 867, column: 15, scope: !580)
!595 = !DILocation(line: 867, column: 22, scope: !580)
!596 = !DILocalVariable(name: "map_prog", scope: !580, file: !84, line: 868, type: !597)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!598 = !DILocation(line: 868, column: 25, scope: !580)
!599 = !DILocation(line: 868, column: 36, scope: !580)
!600 = !DILocation(line: 870, column: 3, scope: !580)
!601 = !DILocation(line: 870, column: 10, scope: !580)
!602 = !DILocation(line: 870, column: 20, scope: !580)
!603 = !DILocation(line: 870, column: 28, scope: !580)
!604 = !DILocation(line: 870, column: 40, scope: !580)
!605 = !DILocation(line: 870, column: 49, scope: !580)
!606 = !DILocation(line: 870, column: 59, scope: !580)
!607 = !DILocation(line: 870, column: 33, scope: !580)
!608 = !DILocation(line: 870, column: 31, scope: !580)
!609 = !DILocation(line: 0, scope: !580)
!610 = !DILocation(line: 871, column: 13, scope: !580)
!611 = distinct !{!611, !600, !610, !450}
!612 = !DILocation(line: 873, column: 7, scope: !613)
!613 = distinct !DILexicalBlock(scope: !580, file: !84, line: 873, column: 7)
!614 = !DILocation(line: 873, column: 17, scope: !613)
!615 = !DILocation(line: 874, column: 12, scope: !613)
!616 = !DILocation(line: 874, column: 22, scope: !613)
!617 = !DILocation(line: 874, column: 10, scope: !613)
!618 = !DILocation(line: 874, column: 5, scope: !613)
!619 = !DILocation(line: 876, column: 3, scope: !580)
!620 = !DILocalVariable(name: "url_program", scope: !580, file: !84, line: 881, type: !181)
!621 = !DILocation(line: 881, column: 15, scope: !580)
!622 = !DILocation(line: 881, column: 36, scope: !580)
!623 = !DILocation(line: 881, column: 29, scope: !580)
!624 = !DILocation(line: 881, column: 61, scope: !580)
!625 = !DILocation(line: 882, column: 11, scope: !580)
!626 = !DILocation(line: 883, column: 24, scope: !580)
!627 = !DILocation(line: 882, column: 3, scope: !580)
!628 = !DILocation(line: 884, column: 11, scope: !580)
!629 = !DILocation(line: 885, column: 11, scope: !580)
!630 = !DILocation(line: 885, column: 17, scope: !580)
!631 = !DILocation(line: 885, column: 25, scope: !580)
!632 = !DILocation(line: 885, column: 22, scope: !580)
!633 = !DILocation(line: 884, column: 3, scope: !580)
!634 = !DILocation(line: 886, column: 1, scope: !580)
!635 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 129, type: !636, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !73, retainedNodes: !183)
!636 = !DISubroutineType(types: !637)
!637 = !{!85, !85, !638}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!639 = !DILocalVariable(name: "argc", arg: 1, scope: !635, file: !2, line: 129, type: !85)
!640 = !DILocation(line: 129, column: 11, scope: !635)
!641 = !DILocalVariable(name: "argv", arg: 2, scope: !635, file: !2, line: 129, type: !638)
!642 = !DILocation(line: 129, column: 24, scope: !635)
!643 = !DILocation(line: 132, column: 21, scope: !635)
!644 = !DILocation(line: 132, column: 3, scope: !635)
!645 = !DILocation(line: 133, column: 3, scope: !635)
!646 = !DILocation(line: 134, column: 3, scope: !635)
!647 = !DILocation(line: 135, column: 3, scope: !635)
!648 = !DILocation(line: 137, column: 3, scope: !635)
!649 = !DILocalVariable(name: "optc", scope: !635, file: !2, line: 139, type: !85)
!650 = !DILocation(line: 139, column: 7, scope: !635)
!651 = !DILocation(line: 140, column: 3, scope: !635)
!652 = !DILocation(line: 140, column: 31, scope: !635)
!653 = !DILocation(line: 140, column: 37, scope: !635)
!654 = !DILocation(line: 140, column: 18, scope: !635)
!655 = !DILocation(line: 140, column: 16, scope: !635)
!656 = !DILocation(line: 140, column: 71, scope: !635)
!657 = !DILocation(line: 142, column: 15, scope: !658)
!658 = distinct !DILexicalBlock(scope: !635, file: !2, line: 141, column: 5)
!659 = !DILocation(line: 142, column: 7, scope: !658)
!660 = !DILocation(line: 145, column: 18, scope: !661)
!661 = distinct !DILexicalBlock(scope: !658, file: !2, line: 143, column: 9)
!662 = !DILocation(line: 146, column: 11, scope: !661)
!663 = !DILocation(line: 149, column: 29, scope: !661)
!664 = !DILocation(line: 150, column: 11, scope: !661)
!665 = !DILocation(line: 153, column: 15, scope: !666)
!666 = distinct !DILexicalBlock(scope: !661, file: !2, line: 153, column: 15)
!667 = !DILocation(line: 154, column: 57, scope: !666)
!668 = !DILocation(line: 154, column: 28, scope: !666)
!669 = !DILocation(line: 154, column: 26, scope: !666)
!670 = !DILocation(line: 154, column: 13, scope: !666)
!671 = !DILocation(line: 157, column: 26, scope: !666)
!672 = !DILocation(line: 158, column: 11, scope: !661)
!673 = !DILocation(line: 160, column: 9, scope: !661)
!674 = !DILocation(line: 162, column: 9, scope: !661)
!675 = !DILocation(line: 162, column: 49, scope: !661)
!676 = !DILocation(line: 165, column: 11, scope: !661)
!677 = distinct !{!677, !651, !678, !450}
!678 = !DILocation(line: 167, column: 5, scope: !635)
!679 = !DILocation(line: 169, column: 7, scope: !680)
!680 = distinct !DILexicalBlock(scope: !635, file: !2, line: 169, column: 7)
!681 = !DILocation(line: 170, column: 5, scope: !680)
!682 = !DILocation(line: 172, column: 7, scope: !683)
!683 = distinct !DILexicalBlock(scope: !635, file: !2, line: 172, column: 7)
!684 = !DILocation(line: 172, column: 20, scope: !683)
!685 = !DILocation(line: 173, column: 5, scope: !683)
!686 = !DILocalVariable(name: "pipe_check", scope: !635, file: !2, line: 177, type: !173)
!687 = !DILocation(line: 177, column: 8, scope: !635)
!688 = !DILocation(line: 177, column: 23, scope: !635)
!689 = !DILocation(line: 177, column: 36, scope: !635)
!690 = !DILocation(line: 178, column: 23, scope: !635)
!691 = !DILocation(line: 178, column: 26, scope: !635)
!692 = !DILocation(line: 178, column: 39, scope: !635)
!693 = !DILocation(line: 179, column: 22, scope: !635)
!694 = !DILocation(line: 179, column: 25, scope: !635)
!695 = !DILocation(line: 0, scope: !635)
!696 = !DILocalVariable(name: "ok", scope: !635, file: !2, line: 184, type: !173)
!697 = !DILocation(line: 184, column: 8, scope: !635)
!698 = !DILocation(line: 184, column: 24, scope: !635)
!699 = !DILocation(line: 184, column: 31, scope: !635)
!700 = !DILocation(line: 184, column: 29, scope: !635)
!701 = !DILocation(line: 184, column: 40, scope: !635)
!702 = !DILocation(line: 184, column: 45, scope: !635)
!703 = !DILocation(line: 184, column: 54, scope: !635)
!704 = !DILocation(line: 184, column: 13, scope: !635)
!705 = !DILocation(line: 185, column: 7, scope: !706)
!706 = distinct !DILexicalBlock(scope: !635, file: !2, line: 185, column: 7)
!707 = !DILocation(line: 185, column: 28, scope: !706)
!708 = !DILocation(line: 186, column: 26, scope: !706)
!709 = !DILocation(line: 186, column: 39, scope: !706)
!710 = !DILocation(line: 186, column: 5, scope: !706)
!711 = !DILocation(line: 188, column: 10, scope: !635)
!712 = !DILocation(line: 188, column: 3, scope: !635)
!713 = distinct !DISubprogram(name: "tee_files", scope: !2, file: !2, line: 231, type: !714, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !73, retainedNodes: !183)
!714 = !DISubroutineType(types: !715)
!715 = !{!173, !85, !638, !173}
!716 = !DILocalVariable(name: "nfiles", arg: 1, scope: !713, file: !2, line: 231, type: !85)
!717 = !DILocation(line: 231, column: 16, scope: !713)
!718 = !DILocalVariable(name: "files", arg: 2, scope: !713, file: !2, line: 231, type: !638)
!719 = !DILocation(line: 231, column: 31, scope: !713)
!720 = !DILocalVariable(name: "pipe_check", arg: 3, scope: !713, file: !2, line: 231, type: !173)
!721 = !DILocation(line: 231, column: 43, scope: !713)
!722 = !DILocalVariable(name: "n_outputs", scope: !713, file: !2, line: 233, type: !431)
!723 = !DILocation(line: 233, column: 10, scope: !713)
!724 = !DILocalVariable(name: "descriptors", scope: !713, file: !2, line: 234, type: !306)
!725 = !DILocation(line: 234, column: 8, scope: !713)
!726 = !DILocalVariable(name: "out_pollable", scope: !713, file: !2, line: 235, type: !727)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!728 = !DILocation(line: 235, column: 9, scope: !713)
!729 = !DILocalVariable(name: "buffer", scope: !713, file: !2, line: 236, type: !730)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 65536, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 8192)
!733 = !DILocation(line: 236, column: 8, scope: !713)
!734 = !DILocalVariable(name: "bytes_read", scope: !713, file: !2, line: 237, type: !735)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !736, line: 108, baseType: !737)
!736 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !738, line: 194, baseType: !739)
!738 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!739 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!740 = !DILocation(line: 237, column: 11, scope: !713)
!741 = !DILocalVariable(name: "first_out", scope: !713, file: !2, line: 238, type: !85)
!742 = !DILocation(line: 238, column: 7, scope: !713)
!743 = !DILocalVariable(name: "ok", scope: !713, file: !2, line: 239, type: !173)
!744 = !DILocation(line: 239, column: 8, scope: !713)
!745 = !DILocalVariable(name: "flags", scope: !713, file: !2, line: 240, type: !85)
!746 = !DILocation(line: 240, column: 7, scope: !713)
!747 = !DILocation(line: 240, column: 48, scope: !713)
!748 = !DILocation(line: 240, column: 45, scope: !713)
!749 = !DILocation(line: 242, column: 3, scope: !713)
!750 = !DILocation(line: 243, column: 3, scope: !713)
!751 = !DILocation(line: 244, column: 12, scope: !713)
!752 = !DILocation(line: 244, column: 3, scope: !713)
!753 = !DILocation(line: 249, column: 27, scope: !713)
!754 = !DILocation(line: 249, column: 34, scope: !713)
!755 = !DILocation(line: 249, column: 17, scope: !713)
!756 = !DILocation(line: 249, column: 15, scope: !713)
!757 = !DILocation(line: 250, column: 7, scope: !758)
!758 = distinct !DILexicalBlock(scope: !713, file: !2, line: 250, column: 7)
!759 = !DILocation(line: 251, column: 30, scope: !758)
!760 = !DILocation(line: 251, column: 37, scope: !758)
!761 = !DILocation(line: 251, column: 20, scope: !758)
!762 = !DILocation(line: 251, column: 18, scope: !758)
!763 = !DILocation(line: 251, column: 5, scope: !758)
!764 = !DILocation(line: 252, column: 8, scope: !713)
!765 = !DILocation(line: 253, column: 3, scope: !713)
!766 = !DILocation(line: 253, column: 18, scope: !713)
!767 = !DILocation(line: 254, column: 7, scope: !768)
!768 = distinct !DILexicalBlock(scope: !713, file: !2, line: 254, column: 7)
!769 = !DILocation(line: 255, column: 41, scope: !768)
!770 = !DILocation(line: 255, column: 23, scope: !768)
!771 = !DILocation(line: 255, column: 5, scope: !768)
!772 = !DILocation(line: 255, column: 21, scope: !768)
!773 = !DILocation(line: 256, column: 24, scope: !713)
!774 = !DILocation(line: 256, column: 14, scope: !713)
!775 = !DILocation(line: 256, column: 3, scope: !713)
!776 = !DILocation(line: 256, column: 12, scope: !713)
!777 = !DILocation(line: 257, column: 12, scope: !713)
!778 = !DILocalVariable(name: "i", scope: !779, file: !2, line: 259, type: !85)
!779 = distinct !DILexicalBlock(scope: !713, file: !2, line: 259, column: 3)
!780 = !DILocation(line: 259, column: 12, scope: !779)
!781 = !DILocation(line: 259, column: 8, scope: !779)
!782 = !DILocation(line: 259, column: 19, scope: !783)
!783 = distinct !DILexicalBlock(scope: !779, file: !2, line: 259, column: 3)
!784 = !DILocation(line: 259, column: 24, scope: !783)
!785 = !DILocation(line: 259, column: 21, scope: !783)
!786 = !DILocation(line: 259, column: 3, scope: !779)
!787 = !DILocation(line: 262, column: 30, scope: !788)
!788 = distinct !DILexicalBlock(scope: !783, file: !2, line: 260, column: 5)
!789 = !DILocation(line: 262, column: 36, scope: !788)
!790 = !DILocation(line: 262, column: 40, scope: !788)
!791 = !DILocation(line: 262, column: 24, scope: !788)
!792 = !DILocation(line: 262, column: 7, scope: !788)
!793 = !DILocation(line: 262, column: 19, scope: !788)
!794 = !DILocation(line: 262, column: 22, scope: !788)
!795 = !DILocation(line: 263, column: 11, scope: !796)
!796 = distinct !DILexicalBlock(scope: !788, file: !2, line: 263, column: 11)
!797 = !DILocation(line: 263, column: 23, scope: !796)
!798 = !DILocation(line: 263, column: 26, scope: !796)
!799 = !DILocation(line: 265, column: 15, scope: !800)
!800 = distinct !DILexicalBlock(scope: !801, file: !2, line: 265, column: 15)
!801 = distinct !DILexicalBlock(scope: !796, file: !2, line: 264, column: 9)
!802 = !DILocation(line: 266, column: 13, scope: !800)
!803 = !DILocation(line: 266, column: 26, scope: !800)
!804 = !DILocation(line: 266, column: 29, scope: !800)
!805 = !DILocation(line: 267, column: 18, scope: !801)
!806 = !DILocation(line: 267, column: 31, scope: !801)
!807 = !DILocation(line: 268, column: 18, scope: !801)
!808 = !DILocation(line: 268, column: 21, scope: !801)
!809 = !DILocation(line: 268, column: 34, scope: !801)
!810 = !DILocation(line: 267, column: 11, scope: !801)
!811 = !DILocation(line: 269, column: 18, scope: !801)
!812 = !DILocation(line: 269, column: 39, scope: !801)
!813 = !DILocation(line: 269, column: 45, scope: !801)
!814 = !DILocation(line: 269, column: 31, scope: !801)
!815 = !DILocalVariable(name: "__errstatus", scope: !816, file: !2, line: 267, type: !817)
!816 = distinct !DILexicalBlock(scope: !801, file: !2, line: 267, column: 11)
!817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!818 = !DILocation(line: 267, column: 11, scope: !816)
!819 = !DILocation(line: 267, column: 18, scope: !816)
!820 = !DILocation(line: 267, column: 31, scope: !816)
!821 = !DILocation(line: 268, column: 18, scope: !816)
!822 = !DILocation(line: 268, column: 21, scope: !816)
!823 = !DILocation(line: 268, column: 34, scope: !816)
!824 = !DILocation(line: 269, column: 18, scope: !816)
!825 = !DILocation(line: 269, column: 39, scope: !816)
!826 = !DILocation(line: 269, column: 45, scope: !816)
!827 = !DILocation(line: 269, column: 31, scope: !816)
!828 = !DILocation(line: 270, column: 14, scope: !801)
!829 = !DILocation(line: 271, column: 9, scope: !801)
!830 = !DILocation(line: 274, column: 15, scope: !831)
!831 = distinct !DILexicalBlock(scope: !832, file: !2, line: 274, column: 15)
!832 = distinct !DILexicalBlock(scope: !796, file: !2, line: 273, column: 9)
!833 = !DILocation(line: 275, column: 49, scope: !831)
!834 = !DILocation(line: 275, column: 61, scope: !831)
!835 = !DILocation(line: 275, column: 31, scope: !831)
!836 = !DILocation(line: 275, column: 13, scope: !831)
!837 = !DILocation(line: 275, column: 26, scope: !831)
!838 = !DILocation(line: 275, column: 29, scope: !831)
!839 = !DILocation(line: 276, column: 20, scope: !832)
!840 = !DILocation(line: 278, column: 5, scope: !788)
!841 = !DILocation(line: 259, column: 33, scope: !783)
!842 = !DILocation(line: 259, column: 3, scope: !783)
!843 = distinct !{!843, !786, !844, !450}
!844 = !DILocation(line: 278, column: 5, scope: !779)
!845 = !DILocation(line: 280, column: 3, scope: !713)
!846 = !DILocation(line: 280, column: 10, scope: !713)
!847 = !DILocation(line: 282, column: 11, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !2, line: 282, column: 11)
!849 = distinct !DILexicalBlock(scope: !713, file: !2, line: 281, column: 5)
!850 = !DILocation(line: 282, column: 22, scope: !848)
!851 = !DILocation(line: 282, column: 25, scope: !848)
!852 = !DILocation(line: 282, column: 38, scope: !848)
!853 = !DILocalVariable(name: "err", scope: !854, file: !2, line: 285, type: !85)
!854 = distinct !DILexicalBlock(scope: !848, file: !2, line: 283, column: 9)
!855 = !DILocation(line: 285, column: 15, scope: !854)
!856 = !DILocation(line: 285, column: 43, scope: !854)
!857 = !DILocation(line: 285, column: 55, scope: !854)
!858 = !DILocation(line: 285, column: 21, scope: !854)
!859 = !DILocation(line: 288, column: 15, scope: !860)
!860 = distinct !DILexicalBlock(scope: !854, file: !2, line: 288, column: 15)
!861 = !DILocation(line: 288, column: 19, scope: !860)
!862 = !DILocation(line: 290, column: 15, scope: !863)
!863 = distinct !DILexicalBlock(scope: !860, file: !2, line: 289, column: 13)
!864 = !DILocation(line: 290, column: 21, scope: !863)
!865 = !DILocation(line: 291, column: 32, scope: !866)
!866 = distinct !DILexicalBlock(scope: !863, file: !2, line: 291, column: 19)
!867 = !DILocation(line: 291, column: 45, scope: !866)
!868 = !DILocation(line: 291, column: 52, scope: !866)
!869 = !DILocation(line: 291, column: 19, scope: !866)
!870 = !DILocation(line: 292, column: 20, scope: !866)
!871 = !DILocation(line: 292, column: 17, scope: !866)
!872 = !DILocation(line: 293, column: 24, scope: !863)
!873 = !DILocation(line: 294, column: 41, scope: !863)
!874 = !DILocation(line: 294, column: 54, scope: !863)
!875 = !DILocation(line: 294, column: 62, scope: !863)
!876 = !DILocation(line: 294, column: 27, scope: !863)
!877 = !DILocation(line: 294, column: 25, scope: !863)
!878 = !DILocation(line: 295, column: 15, scope: !863)
!879 = distinct !{!879, !845, !880, !450}
!880 = !DILocation(line: 322, column: 5, scope: !713)
!881 = !DILocation(line: 297, column: 20, scope: !882)
!882 = distinct !DILexicalBlock(scope: !860, file: !2, line: 297, column: 20)
!883 = !DILocation(line: 297, column: 24, scope: !882)
!884 = !DILocation(line: 299, column: 25, scope: !885)
!885 = distinct !DILexicalBlock(scope: !882, file: !2, line: 298, column: 13)
!886 = !DILocation(line: 299, column: 32, scope: !885)
!887 = !DILocation(line: 299, column: 15, scope: !885)
!888 = !DILocation(line: 300, column: 18, scope: !885)
!889 = !DILocation(line: 301, column: 13, scope: !885)
!890 = !DILocation(line: 302, column: 9, scope: !854)
!891 = !DILocation(line: 304, column: 40, scope: !849)
!892 = !DILocation(line: 304, column: 20, scope: !849)
!893 = !DILocation(line: 304, column: 18, scope: !849)
!894 = !DILocation(line: 305, column: 11, scope: !895)
!895 = distinct !DILexicalBlock(scope: !849, file: !2, line: 305, column: 11)
!896 = !DILocation(line: 305, column: 22, scope: !895)
!897 = !DILocation(line: 305, column: 26, scope: !895)
!898 = !DILocation(line: 305, column: 29, scope: !895)
!899 = !DILocation(line: 305, column: 35, scope: !895)
!900 = !DILocation(line: 306, column: 9, scope: !895)
!901 = !DILocation(line: 307, column: 11, scope: !902)
!902 = distinct !DILexicalBlock(scope: !849, file: !2, line: 307, column: 11)
!903 = !DILocation(line: 307, column: 22, scope: !902)
!904 = !DILocation(line: 308, column: 9, scope: !902)
!905 = !DILocalVariable(name: "i", scope: !906, file: !2, line: 312, type: !85)
!906 = distinct !DILexicalBlock(scope: !849, file: !2, line: 312, column: 7)
!907 = !DILocation(line: 312, column: 16, scope: !906)
!908 = !DILocation(line: 312, column: 12, scope: !906)
!909 = !DILocation(line: 312, column: 23, scope: !910)
!910 = distinct !DILexicalBlock(scope: !906, file: !2, line: 312, column: 7)
!911 = !DILocation(line: 312, column: 28, scope: !910)
!912 = !DILocation(line: 312, column: 25, scope: !910)
!913 = !DILocation(line: 312, column: 7, scope: !906)
!914 = !DILocation(line: 313, column: 18, scope: !915)
!915 = distinct !DILexicalBlock(scope: !910, file: !2, line: 313, column: 13)
!916 = !DILocation(line: 313, column: 30, scope: !915)
!917 = !DILocation(line: 313, column: 15, scope: !915)
!918 = !DILocation(line: 314, column: 13, scope: !915)
!919 = !DILocation(line: 314, column: 30, scope: !915)
!920 = !DILocation(line: 314, column: 42, scope: !915)
!921 = !DILocation(line: 314, column: 46, scope: !915)
!922 = !DILocation(line: 314, column: 54, scope: !915)
!923 = !DILocation(line: 314, column: 18, scope: !915)
!924 = !DILocation(line: 316, column: 30, scope: !925)
!925 = distinct !DILexicalBlock(scope: !926, file: !2, line: 316, column: 17)
!926 = distinct !DILexicalBlock(scope: !915, file: !2, line: 315, column: 11)
!927 = !DILocation(line: 316, column: 43, scope: !925)
!928 = !DILocation(line: 316, column: 50, scope: !925)
!929 = !DILocation(line: 316, column: 17, scope: !925)
!930 = !DILocation(line: 317, column: 18, scope: !925)
!931 = !DILocation(line: 317, column: 15, scope: !925)
!932 = !DILocation(line: 318, column: 22, scope: !926)
!933 = !DILocation(line: 319, column: 17, scope: !934)
!934 = distinct !DILexicalBlock(scope: !926, file: !2, line: 319, column: 17)
!935 = !DILocation(line: 319, column: 22, scope: !934)
!936 = !DILocation(line: 319, column: 19, scope: !934)
!937 = !DILocation(line: 320, column: 41, scope: !934)
!938 = !DILocation(line: 320, column: 54, scope: !934)
!939 = !DILocation(line: 320, column: 62, scope: !934)
!940 = !DILocation(line: 320, column: 27, scope: !934)
!941 = !DILocation(line: 320, column: 25, scope: !934)
!942 = !DILocation(line: 320, column: 15, scope: !934)
!943 = !DILocation(line: 321, column: 11, scope: !926)
!944 = !DILocation(line: 314, column: 64, scope: !915)
!945 = !DILocation(line: 312, column: 37, scope: !910)
!946 = !DILocation(line: 312, column: 7, scope: !910)
!947 = distinct !{!947, !913, !948, !450}
!948 = !DILocation(line: 321, column: 11, scope: !906)
!949 = !DILocation(line: 324, column: 7, scope: !950)
!950 = distinct !DILexicalBlock(scope: !713, file: !2, line: 324, column: 7)
!951 = !DILocation(line: 324, column: 18, scope: !950)
!952 = !DILocation(line: 326, column: 17, scope: !953)
!953 = distinct !DILexicalBlock(scope: !950, file: !2, line: 325, column: 5)
!954 = !DILocation(line: 326, column: 24, scope: !953)
!955 = !DILocation(line: 326, column: 7, scope: !953)
!956 = !DILocation(line: 327, column: 10, scope: !953)
!957 = !DILocation(line: 328, column: 5, scope: !953)
!958 = !DILocalVariable(name: "i", scope: !959, file: !2, line: 331, type: !85)
!959 = distinct !DILexicalBlock(scope: !713, file: !2, line: 331, column: 3)
!960 = !DILocation(line: 331, column: 12, scope: !959)
!961 = !DILocation(line: 331, column: 8, scope: !959)
!962 = !DILocation(line: 331, column: 19, scope: !963)
!963 = distinct !DILexicalBlock(scope: !959, file: !2, line: 331, column: 3)
!964 = !DILocation(line: 331, column: 24, scope: !963)
!965 = !DILocation(line: 331, column: 21, scope: !963)
!966 = !DILocation(line: 331, column: 3, scope: !959)
!967 = !DILocation(line: 332, column: 14, scope: !968)
!968 = distinct !DILexicalBlock(scope: !963, file: !2, line: 332, column: 9)
!969 = !DILocation(line: 332, column: 26, scope: !968)
!970 = !DILocation(line: 332, column: 11, scope: !968)
!971 = !DILocation(line: 332, column: 29, scope: !968)
!972 = !DILocation(line: 332, column: 39, scope: !968)
!973 = !DILocation(line: 332, column: 51, scope: !968)
!974 = !DILocation(line: 332, column: 32, scope: !968)
!975 = !DILocation(line: 332, column: 55, scope: !968)
!976 = !DILocation(line: 334, column: 19, scope: !977)
!977 = distinct !DILexicalBlock(scope: !968, file: !2, line: 333, column: 7)
!978 = !DILocation(line: 334, column: 40, scope: !977)
!979 = !DILocation(line: 334, column: 46, scope: !977)
!980 = !DILocation(line: 334, column: 32, scope: !977)
!981 = !DILocation(line: 334, column: 9, scope: !977)
!982 = !DILocation(line: 335, column: 12, scope: !977)
!983 = !DILocation(line: 336, column: 7, scope: !977)
!984 = !DILocation(line: 332, column: 57, scope: !968)
!985 = !DILocation(line: 331, column: 33, scope: !963)
!986 = !DILocation(line: 331, column: 3, scope: !963)
!987 = distinct !{!987, !966, !988, !450}
!988 = !DILocation(line: 336, column: 7, scope: !959)
!989 = !DILocation(line: 338, column: 9, scope: !713)
!990 = !DILocation(line: 338, column: 3, scope: !713)
!991 = !DILocation(line: 339, column: 7, scope: !992)
!992 = distinct !DILexicalBlock(scope: !713, file: !2, line: 339, column: 7)
!993 = !DILocation(line: 340, column: 11, scope: !992)
!994 = !DILocation(line: 340, column: 5, scope: !992)
!995 = !DILocation(line: 342, column: 10, scope: !713)
!996 = !DILocation(line: 342, column: 3, scope: !713)
!997 = distinct !DISubprogram(name: "bad_cast", scope: !84, file: !84, line: 911, type: !998, scopeLine: 912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !73, retainedNodes: !183)
!998 = !DISubroutineType(types: !999)
!999 = !{!130, !181}
!1000 = !DILocalVariable(name: "s", arg: 1, scope: !997, file: !84, line: 911, type: !181)
!1001 = !DILocation(line: 911, column: 23, scope: !997)
!1002 = !DILocation(line: 913, column: 19, scope: !997)
!1003 = !DILocation(line: 913, column: 3, scope: !997)
!1004 = distinct !DISubprogram(name: "fail_output", scope: !2, file: !2, line: 209, type: !1005, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !73, retainedNodes: !183)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!173, !306, !638, !85}
!1007 = !DILocalVariable(name: "descriptors", arg: 1, scope: !1004, file: !2, line: 209, type: !306)
!1008 = !DILocation(line: 209, column: 19, scope: !1004)
!1009 = !DILocalVariable(name: "files", arg: 2, scope: !1004, file: !2, line: 209, type: !638)
!1010 = !DILocation(line: 209, column: 39, scope: !1004)
!1011 = !DILocalVariable(name: "i", arg: 3, scope: !1004, file: !2, line: 209, type: !85)
!1012 = !DILocation(line: 209, column: 50, scope: !1004)
!1013 = !DILocalVariable(name: "w_errno", scope: !1004, file: !2, line: 211, type: !85)
!1014 = !DILocation(line: 211, column: 7, scope: !1004)
!1015 = !DILocation(line: 211, column: 17, scope: !1004)
!1016 = !DILocalVariable(name: "fail", scope: !1004, file: !2, line: 212, type: !173)
!1017 = !DILocation(line: 212, column: 8, scope: !1004)
!1018 = !DILocation(line: 212, column: 15, scope: !1004)
!1019 = !DILocation(line: 212, column: 21, scope: !1004)
!1020 = !DILocation(line: 213, column: 15, scope: !1004)
!1021 = !DILocation(line: 213, column: 18, scope: !1004)
!1022 = !DILocation(line: 213, column: 31, scope: !1004)
!1023 = !DILocation(line: 214, column: 15, scope: !1004)
!1024 = !DILocation(line: 214, column: 18, scope: !1004)
!1025 = !DILocation(line: 214, column: 31, scope: !1004)
!1026 = !DILocation(line: 215, column: 7, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1004, file: !2, line: 215, column: 7)
!1028 = !DILocation(line: 217, column: 14, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 216, column: 5)
!1030 = !DILocation(line: 217, column: 27, scope: !1029)
!1031 = !DILocation(line: 218, column: 14, scope: !1029)
!1032 = !DILocation(line: 218, column: 17, scope: !1029)
!1033 = !DILocation(line: 218, column: 30, scope: !1029)
!1034 = !DILocation(line: 217, column: 7, scope: !1029)
!1035 = !DILocation(line: 219, column: 14, scope: !1029)
!1036 = !DILocation(line: 219, column: 37, scope: !1029)
!1037 = !DILocation(line: 219, column: 43, scope: !1029)
!1038 = !DILocation(line: 219, column: 29, scope: !1029)
!1039 = !DILocalVariable(name: "__errstatus", scope: !1040, file: !2, line: 217, type: !817)
!1040 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 217, column: 7)
!1041 = !DILocation(line: 217, column: 7, scope: !1040)
!1042 = !DILocation(line: 217, column: 14, scope: !1040)
!1043 = !DILocation(line: 217, column: 27, scope: !1040)
!1044 = !DILocation(line: 218, column: 14, scope: !1040)
!1045 = !DILocation(line: 218, column: 17, scope: !1040)
!1046 = !DILocation(line: 218, column: 30, scope: !1040)
!1047 = !DILocation(line: 219, column: 14, scope: !1040)
!1048 = !DILocation(line: 219, column: 37, scope: !1040)
!1049 = !DILocation(line: 219, column: 43, scope: !1040)
!1050 = !DILocation(line: 219, column: 29, scope: !1040)
!1051 = !DILocation(line: 220, column: 5, scope: !1029)
!1052 = !DILocation(line: 221, column: 3, scope: !1004)
!1053 = !DILocation(line: 221, column: 15, scope: !1004)
!1054 = !DILocation(line: 221, column: 18, scope: !1004)
!1055 = !DILocation(line: 222, column: 10, scope: !1004)
!1056 = !DILocation(line: 222, column: 3, scope: !1004)
!1057 = distinct !DISubprogram(name: "get_next_out", scope: !2, file: !2, line: 197, type: !1058, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !73, retainedNodes: !183)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!85, !306, !85, !85}
!1060 = !DILocalVariable(name: "descriptors", arg: 1, scope: !1057, file: !2, line: 197, type: !306)
!1061 = !DILocation(line: 197, column: 20, scope: !1057)
!1062 = !DILocalVariable(name: "nfiles", arg: 2, scope: !1057, file: !2, line: 197, type: !85)
!1063 = !DILocation(line: 197, column: 37, scope: !1057)
!1064 = !DILocalVariable(name: "idx", arg: 3, scope: !1057, file: !2, line: 197, type: !85)
!1065 = !DILocation(line: 197, column: 49, scope: !1057)
!1066 = !DILocation(line: 199, column: 11, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1057, file: !2, line: 199, column: 3)
!1068 = !DILocation(line: 199, column: 8, scope: !1067)
!1069 = !DILocation(line: 199, column: 15, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 199, column: 3)
!1071 = !DILocation(line: 199, column: 22, scope: !1070)
!1072 = !DILocation(line: 199, column: 19, scope: !1070)
!1073 = !DILocation(line: 199, column: 3, scope: !1067)
!1074 = !DILocation(line: 200, column: 14, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1070, file: !2, line: 200, column: 9)
!1076 = !DILocation(line: 200, column: 26, scope: !1075)
!1077 = !DILocation(line: 200, column: 11, scope: !1075)
!1078 = !DILocation(line: 201, column: 14, scope: !1075)
!1079 = !DILocation(line: 201, column: 7, scope: !1075)
!1080 = !DILocation(line: 200, column: 29, scope: !1075)
!1081 = !DILocation(line: 199, column: 33, scope: !1070)
!1082 = !DILocation(line: 199, column: 3, scope: !1070)
!1083 = distinct !{!1083, !1073, !1084, !450}
!1084 = !DILocation(line: 201, column: 14, scope: !1067)
!1085 = !DILocation(line: 202, column: 3, scope: !1057)
!1086 = !DILocation(line: 203, column: 1, scope: !1057)
