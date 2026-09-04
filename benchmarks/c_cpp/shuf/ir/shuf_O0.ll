; ModuleID = 'src/shuf.c'
source_filename = "src/shuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.infomap = type { ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.linebuffer = type { i64, i64, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [95 x i8] c"Usage: %s [OPTION]... [FILE]\0A  or:  %s -e [OPTION]... [ARG]...\0A  or:  %s -i LO-HI [OPTION]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [67 x i8] c"Write a random permutation of the input lines to standard output.\0A\00", align 1, !dbg !12
@stdout = external global ptr, align 8
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
@optarg = external global ptr, align 8
@.str.18 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !86
@.str.19 = private unnamed_addr constant [20 x i8] c"invalid input range\00", align 1, !dbg !91
@.str.20 = private unnamed_addr constant [23 x i8] c"invalid line count: %s\00", align 1, !dbg !96
@.str.21 = private unnamed_addr constant [32 x i8] c"multiple output files specified\00", align 1, !dbg !101
@.str.22 = private unnamed_addr constant [34 x i8] c"multiple random sources specified\00", align 1, !dbg !106
@.str.23 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !111
@Version = external global ptr, align 8
@.str.24 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1, !dbg !116
@optind = external global i32, align 4
@.str.25 = private unnamed_addr constant [33 x i8] c"cannot combine -e and -i options\00", align 1, !dbg !121
@.str.26 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !126
@.str.27 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !131
@.str.28 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !136
@stdin = external global ptr, align 8
@.str.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !138
@.str.30 = private unnamed_addr constant [10 x i8] c"getrandom\00", align 1, !dbg !143
@.str.31 = private unnamed_addr constant [11 x i8] c"read error\00", align 1, !dbg !145
@.str.32 = private unnamed_addr constant [2 x i8] c"w\00", align 1, !dbg !150
@.str.33 = private unnamed_addr constant [19 x i8] c"no lines to repeat\00", align 1, !dbg !152
@.str.34 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !157
@.str.35 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !160
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !165
@.str.36 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !243
@.str.37 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !245
@.str.38 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !247
@.str.39 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !252
@.str.40 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !257
@.str.41 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !259
@.str.42 = private unnamed_addr constant [4 x i8] c"dir\00", align 1, !dbg !261
@.str.43 = private unnamed_addr constant [3 x i8] c"ls\00", align 1, !dbg !263
@.str.44 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1, !dbg !265
@.str.45 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1, !dbg !267
@.str.46 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1, !dbg !269
@.str.47 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1, !dbg !271
@.str.48 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1, !dbg !273
@.str.49 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !278
@.str.50 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !280
@.str.51 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !282
@.str.52 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !284
@.str.53 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !286
@.str.54 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !288
@.str.55 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !290
@.str.56 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !292
@.str.57 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !297
@.str.58 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !302
@.str.59 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !304
@.str.60 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !306
@.str.61 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !308
@.str.62 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !310
@.str.63 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !312
@.str.64 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !317
@.str.65 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !322
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.40, ptr @.str.63 }, %struct.infomap { ptr @.str.14, ptr @.str.64 }, %struct.infomap { ptr @.str.49, ptr @.str.65 }, %struct.infomap { ptr @.str.50, ptr @.str.65 }, %struct.infomap { ptr @.str.51, ptr @.str.65 }, %struct.infomap { ptr @.str.52, ptr @.str.65 }, %struct.infomap zeroinitializer], align 16
@.str.66 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !324
@.str.67 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !329
@.str.68 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !334
@.str.69 = private unnamed_addr constant [5 x i8] c"echo\00", align 1, !dbg !336
@.str.70 = private unnamed_addr constant [12 x i8] c"input-range\00", align 1, !dbg !338
@.str.71 = private unnamed_addr constant [11 x i8] c"head-count\00", align 1, !dbg !340
@.str.72 = private unnamed_addr constant [7 x i8] c"output\00", align 1, !dbg !342
@.str.73 = private unnamed_addr constant [14 x i8] c"random-source\00", align 1, !dbg !344
@.str.74 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1, !dbg !346
@.str.75 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1, !dbg !348
@.str.76 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !350
@.str.77 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !352
@long_opts = internal constant [10 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.69, i32 0, [4 x i8] zeroinitializer, ptr null, i32 101, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.70, i32 1, [4 x i8] zeroinitializer, ptr null, i32 105, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.71, i32 1, [4 x i8] zeroinitializer, ptr null, i32 110, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.72, i32 1, [4 x i8] zeroinitializer, ptr null, i32 111, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.73, i32 1, [4 x i8] zeroinitializer, ptr null, i32 128, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.74, i32 0, [4 x i8] zeroinitializer, ptr null, i32 114, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.75, i32 0, [4 x i8] zeroinitializer, ptr null, i32 122, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.76, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -130, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.77, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -131, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16, !dbg !354
@.str.79 = private unnamed_addr constant [21 x i8] c"too many input lines\00", align 1, !dbg !366
@.str.80 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !371

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !382 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !385, !DIExpression(), !386)
  %3 = load i32, ptr %2, align 4, !dbg !387
  %4 = icmp ne i32 %3, 0, !dbg !389
  br i1 %4, label %5, label %12, !dbg !389

5:                                                ; preds = %1
  br label %6, !dbg !390

6:                                                ; preds = %5
  %7 = load ptr, ptr @stderr, align 8, !dbg !391
  %8 = call ptr @gettext(ptr noundef @.str) #11, !dbg !391
  %9 = load ptr, ptr @program_name, align 8, !dbg !391
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef %8, ptr noundef %9) #11, !dbg !391
  br label %11, !dbg !391

11:                                               ; preds = %6
  br label %30, !dbg !391

12:                                               ; preds = %1
  %13 = call ptr @gettext(ptr noundef @.str.1) #11, !dbg !393
  %14 = load ptr, ptr @program_name, align 8, !dbg !395
  %15 = load ptr, ptr @program_name, align 8, !dbg !396
  %16 = load ptr, ptr @program_name, align 8, !dbg !397
  %17 = call i32 (ptr, ...) @rpl_printf(ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16), !dbg !398
  %18 = call ptr @gettext(ptr noundef @.str.2) #11, !dbg !399
  %19 = load ptr, ptr @stdout, align 8, !dbg !400
  %20 = call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !401
  call void @emit_stdin_note(), !dbg !402
  call void @emit_mandatory_arg_note(), !dbg !403
  %21 = call ptr @gettext(ptr noundef @.str.4) #11, !dbg !404
  call void @oputs_(ptr noundef @.str.3, ptr noundef %21), !dbg !405
  %22 = call ptr @gettext(ptr noundef @.str.5) #11, !dbg !406
  call void @oputs_(ptr noundef @.str.3, ptr noundef %22), !dbg !407
  %23 = call ptr @gettext(ptr noundef @.str.6) #11, !dbg !408
  call void @oputs_(ptr noundef @.str.3, ptr noundef %23), !dbg !409
  %24 = call ptr @gettext(ptr noundef @.str.7) #11, !dbg !410
  call void @oputs_(ptr noundef @.str.3, ptr noundef %24), !dbg !411
  %25 = call ptr @gettext(ptr noundef @.str.8) #11, !dbg !412
  call void @oputs_(ptr noundef @.str.3, ptr noundef %25), !dbg !413
  %26 = call ptr @gettext(ptr noundef @.str.9) #11, !dbg !414
  call void @oputs_(ptr noundef @.str.3, ptr noundef %26), !dbg !415
  %27 = call ptr @gettext(ptr noundef @.str.10) #11, !dbg !416
  call void @oputs_(ptr noundef @.str.3, ptr noundef %27), !dbg !417
  %28 = call ptr @gettext(ptr noundef @.str.11) #11, !dbg !418
  call void @oputs_(ptr noundef @.str.3, ptr noundef %28), !dbg !419
  %29 = call ptr @gettext(ptr noundef @.str.12) #11, !dbg !420
  call void @oputs_(ptr noundef @.str.3, ptr noundef %29), !dbg !421
  call void @emit_ancillary_info(ptr noundef @.str.3), !dbg !422
  br label %30

30:                                               ; preds = %12, %11
  %31 = load i32, ptr %2, align 4, !dbg !423
  call void @exit(i32 noundef %31) #12, !dbg !424
  unreachable, !dbg !424
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #1

declare i32 @rpl_printf(ptr noundef, ...) #2

declare i32 @fputs_unlocked(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_stdin_note() #3 !dbg !425 {
  %1 = call ptr @gettext(ptr noundef @.str.34) #11, !dbg !428
  %2 = load ptr, ptr @stdout, align 8, !dbg !429
  %3 = call i32 @fputs_unlocked(ptr noundef %1, ptr noundef %2), !dbg !430
  ret void, !dbg !431
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_mandatory_arg_note() #3 !dbg !432 {
  %1 = call ptr @gettext(ptr noundef @.str.35) #11, !dbg !433
  %2 = load ptr, ptr @stdout, align 8, !dbg !434
  %3 = call i32 @fputs_unlocked(ptr noundef %1, ptr noundef %2), !dbg !435
  ret void, !dbg !436
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(ptr noundef %0, ptr noundef %1) #3 !dbg !167 {
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
    #dbg_declare(ptr %3, !437, !DIExpression(), !438)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !439, !DIExpression(), !440)
  %14 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !441
  %15 = icmp eq i32 %14, -1, !dbg !443
  br i1 %15, label %16, label %30, !dbg !443

16:                                               ; preds = %2
    #dbg_declare(ptr %5, !444, !DIExpression(), !446)
  %17 = call ptr @getenv(ptr noundef @.str.36) #11, !dbg !447
  store ptr %17, ptr %5, align 8, !dbg !446
  %18 = load ptr, ptr %5, align 8, !dbg !448
  %19 = icmp ne ptr %18, null, !dbg !448
  br i1 %19, label %20, label %27, !dbg !449

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 8, !dbg !450
  %22 = load i8, ptr %21, align 1, !dbg !451
  %23 = icmp ne i8 %22, 0, !dbg !451
  br i1 %23, label %24, label %27, !dbg !452

24:                                               ; preds = %20
  %25 = load ptr, ptr %5, align 8, !dbg !453
  %26 = call zeroext i1 @streq(ptr noundef %25, ptr noundef @.str.37), !dbg !454
  br label %27, !dbg !452

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !452
  store i32 %29, ptr @oputs_.help_no_sgr, align 4, !dbg !455
  br label %30, !dbg !456

30:                                               ; preds = %27, %2
  %31 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !457
  %32 = icmp ne i32 %31, 0, !dbg !457
  br i1 %32, label %33, label %37, !dbg !457

33:                                               ; preds = %30
  %34 = load ptr, ptr %4, align 8, !dbg !459
  %35 = load ptr, ptr @stdout, align 8, !dbg !461
  %36 = call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !462
  br label %274, !dbg !463

37:                                               ; preds = %30
    #dbg_declare(ptr %6, !464, !DIExpression(), !466)
  store i8 1, ptr %6, align 1, !dbg !466
    #dbg_declare(ptr %7, !467, !DIExpression(), !468)
  %38 = load ptr, ptr %4, align 8, !dbg !469
  %39 = load ptr, ptr %4, align 8, !dbg !470
  %40 = call i64 @strspn(ptr noundef %39, ptr noundef @.str.38) #13, !dbg !471
  %41 = getelementptr inbounds nuw i8, ptr %38, i64 %40, !dbg !472
  store ptr %41, ptr %7, align 8, !dbg !468
    #dbg_declare(ptr %8, !473, !DIExpression(), !474)
  %42 = load ptr, ptr %4, align 8, !dbg !475
  %43 = call ptr @strchr(ptr noundef %42, i32 noundef 45) #13, !dbg !476
  store ptr %43, ptr %8, align 8, !dbg !474
  %44 = load ptr, ptr %8, align 8, !dbg !477
  %45 = icmp ne ptr %44, null, !dbg !477
  br i1 %45, label %48, label %46, !dbg !479

46:                                               ; preds = %37
  %47 = load ptr, ptr %7, align 8, !dbg !480
  store ptr %47, ptr %8, align 8, !dbg !482
  store i8 0, ptr %6, align 1, !dbg !483
  br label %89, !dbg !484

48:                                               ; preds = %37
  %49 = load ptr, ptr %8, align 8, !dbg !485
  %50 = load ptr, ptr %7, align 8, !dbg !487
  %51 = icmp ne ptr %49, %50, !dbg !488
  br i1 %51, label %52, label %88, !dbg !488

52:                                               ; preds = %48
    #dbg_declare(ptr %9, !489, !DIExpression(), !491)
  %53 = load ptr, ptr %7, align 8, !dbg !492
  store ptr %53, ptr %9, align 8, !dbg !491
    #dbg_declare(ptr %10, !493, !DIExpression(), !496)
  store i64 0, ptr %10, align 8, !dbg !496
  br label %54, !dbg !497

54:                                               ; preds = %63, %52
  %55 = load ptr, ptr %9, align 8, !dbg !498
  %56 = load ptr, ptr %8, align 8, !dbg !499
  %57 = icmp ult ptr %55, %56, !dbg !500
  br i1 %57, label %58, label %61, !dbg !501

58:                                               ; preds = %54
  %59 = load i64, ptr %10, align 8, !dbg !502
  %60 = icmp ult i64 %59, 2, !dbg !503
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !504
  br i1 %62, label %63, label %82, !dbg !497

63:                                               ; preds = %61
  %64 = call ptr @__ctype_b_loc() #14, !dbg !505
  %65 = load ptr, ptr %64, align 8, !dbg !505
  %66 = load ptr, ptr %9, align 8, !dbg !506
  %67 = getelementptr inbounds nuw i8, ptr %66, i32 1, !dbg !506
  store ptr %67, ptr %9, align 8, !dbg !506
  %68 = load i8, ptr %66, align 1, !dbg !507
  %69 = sext i8 %68 to i32, !dbg !505
  %70 = sext i32 %69 to i64, !dbg !505
  %71 = getelementptr inbounds i16, ptr %65, i64 %70, !dbg !505
  %72 = load i16, ptr %71, align 2, !dbg !505
  %73 = zext i16 %72 to i32, !dbg !505
  %74 = and i32 %73, 8192, !dbg !505
  %75 = icmp ne i32 %74, 0, !dbg !508
  %76 = xor i1 %75, true, !dbg !508
  %77 = xor i1 %76, true, !dbg !509
  %78 = zext i1 %77 to i32, !dbg !509
  %79 = sext i32 %78 to i64, !dbg !509
  %80 = load i64, ptr %10, align 8, !dbg !510
  %81 = add i64 %80, %79, !dbg !510
  store i64 %81, ptr %10, align 8, !dbg !510
  br label %54, !dbg !497, !llvm.loop !511

82:                                               ; preds = %61
  %83 = load i64, ptr %10, align 8, !dbg !513
  %84 = icmp eq i64 %83, 2, !dbg !515
  br i1 %84, label %85, label %87, !dbg !515

85:                                               ; preds = %82
  %86 = load ptr, ptr %7, align 8, !dbg !516
  store ptr %86, ptr %8, align 8, !dbg !518
  store i8 0, ptr %6, align 1, !dbg !519
  br label %87, !dbg !520

87:                                               ; preds = %85, %82
  br label %88, !dbg !521

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
    #dbg_declare(ptr %11, !522, !DIExpression(), !523)
  %90 = load ptr, ptr %8, align 8, !dbg !524
  %91 = call i64 @strcspn(ptr noundef %90, ptr noundef @.str.39) #13, !dbg !525
  store i64 %91, ptr %11, align 8, !dbg !523
    #dbg_declare(ptr %12, !526, !DIExpression(), !527)
  %92 = load ptr, ptr %8, align 8, !dbg !528
  %93 = load i64, ptr %11, align 8, !dbg !529
  %94 = getelementptr inbounds nuw i8, ptr %92, i64 %93, !dbg !530
  store ptr %94, ptr %12, align 8, !dbg !527
  br label %95, !dbg !531

95:                                               ; preds = %161, %89
  %96 = load ptr, ptr %12, align 8, !dbg !532
  %97 = load i8, ptr %96, align 1, !dbg !533
  %98 = sext i8 %97 to i32, !dbg !533
  %99 = icmp ne i32 %98, 0, !dbg !533
  br i1 %99, label %100, label %105, !dbg !534

100:                                              ; preds = %95
  %101 = load ptr, ptr %12, align 8, !dbg !535
  %102 = load i8, ptr %101, align 1, !dbg !536
  %103 = sext i8 %102 to i32, !dbg !536
  %104 = icmp ne i32 %103, 10, !dbg !537
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !538
  br i1 %106, label %107, label %164, !dbg !531

107:                                              ; preds = %105
  %108 = load ptr, ptr %12, align 8, !dbg !539
  %109 = load i8, ptr %108, align 1, !dbg !542
  %110 = sext i8 %109 to i32, !dbg !542
  %111 = icmp eq i32 %110, 45, !dbg !543
  br i1 %111, label %112, label %119, !dbg !544

112:                                              ; preds = %107
  %113 = load ptr, ptr %12, align 8, !dbg !545
  %114 = getelementptr inbounds i8, ptr %113, i64 1, !dbg !546
  %115 = load i8, ptr %114, align 1, !dbg !546
  %116 = sext i8 %115 to i32, !dbg !546
  %117 = icmp eq i32 %116, 45, !dbg !547
  br i1 %117, label %118, label %119, !dbg !544

118:                                              ; preds = %112
  store i8 0, ptr %6, align 1, !dbg !548
  br label %119, !dbg !549

119:                                              ; preds = %118, %112, %107
  %120 = call ptr @__ctype_b_loc() #14, !dbg !550
  %121 = load ptr, ptr %120, align 8, !dbg !550
  %122 = load ptr, ptr %12, align 8, !dbg !552
  %123 = load i8, ptr %122, align 1, !dbg !553
  %124 = sext i8 %123 to i32, !dbg !550
  %125 = sext i32 %124 to i64, !dbg !550
  %126 = getelementptr inbounds i16, ptr %121, i64 %125, !dbg !550
  %127 = load i16, ptr %126, align 2, !dbg !550
  %128 = zext i16 %127 to i32, !dbg !550
  %129 = and i32 %128, 8192, !dbg !550
  %130 = icmp ne i32 %129, 0, !dbg !550
  br i1 %130, label %131, label %161, !dbg !550

131:                                              ; preds = %119
  %132 = load ptr, ptr %12, align 8, !dbg !554
  %133 = load i8, ptr %132, align 1, !dbg !557
  %134 = sext i8 %133 to i32, !dbg !557
  %135 = icmp eq i32 %134, 9, !dbg !558
  br i1 %135, label %149, label %136, !dbg !559

136:                                              ; preds = %131
  %137 = call ptr @__ctype_b_loc() #14, !dbg !560
  %138 = load ptr, ptr %137, align 8, !dbg !560
  %139 = load ptr, ptr %12, align 8, !dbg !561
  %140 = getelementptr inbounds i8, ptr %139, i64 1, !dbg !562
  %141 = load i8, ptr %140, align 1, !dbg !562
  %142 = sext i8 %141 to i32, !dbg !560
  %143 = sext i32 %142 to i64, !dbg !560
  %144 = getelementptr inbounds i16, ptr %138, i64 %143, !dbg !560
  %145 = load i16, ptr %144, align 2, !dbg !560
  %146 = zext i16 %145 to i32, !dbg !560
  %147 = and i32 %146, 8192, !dbg !560
  %148 = icmp ne i32 %147, 0, !dbg !560
  br i1 %148, label %149, label %150, !dbg !559

149:                                              ; preds = %136, %131
  br label %164, !dbg !563

150:                                              ; preds = %136
  %151 = load i8, ptr %6, align 1, !dbg !564
  %152 = trunc i8 %151 to i1, !dbg !564
  br i1 %152, label %160, label %153, !dbg !566

153:                                              ; preds = %150
  %154 = load ptr, ptr %12, align 8, !dbg !567
  %155 = getelementptr inbounds i8, ptr %154, i64 1, !dbg !568
  %156 = load i8, ptr %155, align 1, !dbg !568
  %157 = sext i8 %156 to i32, !dbg !568
  %158 = icmp ne i32 %157, 45, !dbg !569
  br i1 %158, label %159, label %160, !dbg !566

159:                                              ; preds = %153
  br label %164, !dbg !570

160:                                              ; preds = %153, %150
  br label %161, !dbg !571

161:                                              ; preds = %160, %119
  %162 = load ptr, ptr %12, align 8, !dbg !572
  %163 = getelementptr inbounds nuw i8, ptr %162, i32 1, !dbg !572
  store ptr %163, ptr %12, align 8, !dbg !572
  br label %95, !dbg !531, !llvm.loop !573

164:                                              ; preds = %159, %149, %105
  %165 = load ptr, ptr %4, align 8, !dbg !575
  %166 = load ptr, ptr %7, align 8, !dbg !576
  %167 = load ptr, ptr %4, align 8, !dbg !577
  %168 = ptrtoint ptr %166 to i64, !dbg !578
  %169 = ptrtoint ptr %167 to i64, !dbg !578
  %170 = sub i64 %168, %169, !dbg !578
  %171 = load ptr, ptr @stdout, align 8, !dbg !579
  %172 = call i64 @fwrite_unlocked(ptr noundef %165, i64 noundef 1, i64 noundef %170, ptr noundef %171), !dbg !580
    #dbg_declare(ptr %13, !581, !DIExpression(), !582)
  %173 = load ptr, ptr %3, align 8, !dbg !583
  %174 = call zeroext i1 @streq(ptr noundef %173, ptr noundef @.str.40), !dbg !584
  br i1 %174, label %175, label %176, !dbg !584

175:                                              ; preds = %164
  br label %232, !dbg !584

176:                                              ; preds = %164
  %177 = load ptr, ptr %3, align 8, !dbg !585
  %178 = call zeroext i1 @streq(ptr noundef %177, ptr noundef @.str.42), !dbg !586
  br i1 %178, label %179, label %180, !dbg !586

179:                                              ; preds = %176
  br label %230, !dbg !586

180:                                              ; preds = %176
  %181 = load ptr, ptr %3, align 8, !dbg !587
  %182 = call zeroext i1 @streq(ptr noundef %181, ptr noundef @.str.44), !dbg !588
  br i1 %182, label %183, label %184, !dbg !588

183:                                              ; preds = %180
  br label %228, !dbg !588

184:                                              ; preds = %180
  %185 = load ptr, ptr %3, align 8, !dbg !589
  %186 = call zeroext i1 @streq(ptr noundef %185, ptr noundef @.str.45), !dbg !590
  br i1 %186, label %187, label %188, !dbg !590

187:                                              ; preds = %184
  br label %226, !dbg !590

188:                                              ; preds = %184
  %189 = load ptr, ptr %3, align 8, !dbg !591
  %190 = call zeroext i1 @streq(ptr noundef %189, ptr noundef @.str.47), !dbg !592
  br i1 %190, label %191, label %192, !dbg !592

191:                                              ; preds = %188
  br label %224, !dbg !592

192:                                              ; preds = %188
  %193 = load ptr, ptr %3, align 8, !dbg !593
  %194 = call zeroext i1 @streq(ptr noundef %193, ptr noundef @.str.48), !dbg !594
  br i1 %194, label %195, label %196, !dbg !594

195:                                              ; preds = %192
  br label %222, !dbg !594

196:                                              ; preds = %192
  %197 = load ptr, ptr %3, align 8, !dbg !595
  %198 = call zeroext i1 @streq(ptr noundef %197, ptr noundef @.str.49), !dbg !596
  br i1 %198, label %199, label %200, !dbg !596

199:                                              ; preds = %196
  br label %220, !dbg !596

200:                                              ; preds = %196
  %201 = load ptr, ptr %3, align 8, !dbg !597
  %202 = call zeroext i1 @streq(ptr noundef %201, ptr noundef @.str.50), !dbg !598
  br i1 %202, label %203, label %204, !dbg !598

203:                                              ; preds = %200
  br label %218, !dbg !598

204:                                              ; preds = %200
  %205 = load ptr, ptr %3, align 8, !dbg !599
  %206 = call zeroext i1 @streq(ptr noundef %205, ptr noundef @.str.51), !dbg !600
  br i1 %206, label %207, label %208, !dbg !600

207:                                              ; preds = %204
  br label %216, !dbg !600

208:                                              ; preds = %204
  %209 = load ptr, ptr %3, align 8, !dbg !601
  %210 = call zeroext i1 @streq(ptr noundef %209, ptr noundef @.str.52), !dbg !602
  br i1 %210, label %211, label %212, !dbg !602

211:                                              ; preds = %208
  br label %214, !dbg !602

212:                                              ; preds = %208
  %213 = load ptr, ptr %3, align 8, !dbg !603
  br label %214, !dbg !602

214:                                              ; preds = %212, %211
  %215 = phi ptr [ @.str.46, %211 ], [ %213, %212 ], !dbg !602
  br label %216, !dbg !600

216:                                              ; preds = %214, %207
  %217 = phi ptr [ @.str.46, %207 ], [ %215, %214 ], !dbg !600
  br label %218, !dbg !598

218:                                              ; preds = %216, %203
  %219 = phi ptr [ @.str.46, %203 ], [ %217, %216 ], !dbg !598
  br label %220, !dbg !596

220:                                              ; preds = %218, %199
  %221 = phi ptr [ @.str.46, %199 ], [ %219, %218 ], !dbg !596
  br label %222, !dbg !594

222:                                              ; preds = %220, %195
  %223 = phi ptr [ @.str.46, %195 ], [ %221, %220 ], !dbg !594
  br label %224, !dbg !592

224:                                              ; preds = %222, %191
  %225 = phi ptr [ @.str.46, %191 ], [ %223, %222 ], !dbg !592
  br label %226, !dbg !590

226:                                              ; preds = %224, %187
  %227 = phi ptr [ @.str.46, %187 ], [ %225, %224 ], !dbg !590
  br label %228, !dbg !588

228:                                              ; preds = %226, %183
  %229 = phi ptr [ @.str.43, %183 ], [ %227, %226 ], !dbg !588
  br label %230, !dbg !586

230:                                              ; preds = %228, %179
  %231 = phi ptr [ @.str.43, %179 ], [ %229, %228 ], !dbg !586
  br label %232, !dbg !584

232:                                              ; preds = %230, %175
  %233 = phi ptr [ @.str.41, %175 ], [ %231, %230 ], !dbg !584
  store ptr %233, ptr %13, align 8, !dbg !582
  %234 = load ptr, ptr %8, align 8, !dbg !604
  %235 = call i32 @strncmp(ptr noundef %234, ptr noundef @.str.53, i64 noundef 6) #13, !dbg !606
  %236 = icmp eq i32 %235, 0, !dbg !606
  br i1 %236, label %241, label %237, !dbg !607

237:                                              ; preds = %232
  %238 = load ptr, ptr %8, align 8, !dbg !608
  %239 = call i32 @strncmp(ptr noundef %238, ptr noundef @.str.54, i64 noundef 9) #13, !dbg !609
  %240 = icmp eq i32 %239, 0, !dbg !609
  br i1 %240, label %241, label %248, !dbg !607

241:                                              ; preds = %237, %232
  %242 = load ptr, ptr %13, align 8, !dbg !610
  %243 = load ptr, ptr %13, align 8, !dbg !612
  %244 = load i64, ptr %11, align 8, !dbg !613
  %245 = trunc i64 %244 to i32, !dbg !614
  %246 = load ptr, ptr %8, align 8, !dbg !615
  %247 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str.55, ptr noundef @.str.56, ptr noundef %242, ptr noundef %243, i32 noundef %245, ptr noundef %246), !dbg !616
  br label %254, !dbg !617

248:                                              ; preds = %237
  %249 = load ptr, ptr %13, align 8, !dbg !618
  %250 = load i64, ptr %11, align 8, !dbg !620
  %251 = trunc i64 %250 to i32, !dbg !621
  %252 = load ptr, ptr %8, align 8, !dbg !622
  %253 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str.57, ptr noundef @.str.58, ptr noundef %249, i32 noundef %251, ptr noundef %252), !dbg !623
  br label %254

254:                                              ; preds = %248, %241
  %255 = load ptr, ptr @stdout, align 8, !dbg !624
  %256 = call i32 @fputs_unlocked(ptr noundef @.str.59, ptr noundef %255), !dbg !625
  %257 = load ptr, ptr @stdout, align 8, !dbg !626
  %258 = call i32 @fputs_unlocked(ptr noundef @.str.60, ptr noundef %257), !dbg !627
  %259 = load ptr, ptr %7, align 8, !dbg !628
  %260 = load ptr, ptr %12, align 8, !dbg !629
  %261 = load ptr, ptr %7, align 8, !dbg !630
  %262 = ptrtoint ptr %260 to i64, !dbg !631
  %263 = ptrtoint ptr %261 to i64, !dbg !631
  %264 = sub i64 %262, %263, !dbg !631
  %265 = load ptr, ptr @stdout, align 8, !dbg !632
  %266 = call i64 @fwrite_unlocked(ptr noundef %259, i64 noundef 1, i64 noundef %264, ptr noundef %265), !dbg !633
  %267 = load ptr, ptr @stdout, align 8, !dbg !634
  %268 = call i32 @fputs_unlocked(ptr noundef @.str.61, ptr noundef %267), !dbg !635
  %269 = load ptr, ptr @stdout, align 8, !dbg !636
  %270 = call i32 @fputs_unlocked(ptr noundef @.str.62, ptr noundef %269), !dbg !637
  %271 = load ptr, ptr %12, align 8, !dbg !638
  %272 = load ptr, ptr @stdout, align 8, !dbg !639
  %273 = call i32 @fputs_unlocked(ptr noundef %271, ptr noundef %272), !dbg !640
  br label %274, !dbg !641

274:                                              ; preds = %254, %33
  ret void, !dbg !641
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !642 {
  %2 = alloca ptr, align 8
  %3 = alloca [7 x %struct.infomap], align 16
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !645, !DIExpression(), !646)
    #dbg_declare(ptr %3, !647, !DIExpression(), !654)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %3, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !654
    #dbg_declare(ptr %4, !655, !DIExpression(), !656)
  %7 = load ptr, ptr %2, align 8, !dbg !657
  store ptr %7, ptr %4, align 8, !dbg !656
    #dbg_declare(ptr %5, !658, !DIExpression(), !660)
  %8 = getelementptr inbounds [7 x %struct.infomap], ptr %3, i64 0, i64 0, !dbg !661
  store ptr %8, ptr %5, align 8, !dbg !660
  br label %9, !dbg !662

9:                                                ; preds = %23, %1
  %10 = load ptr, ptr %5, align 8, !dbg !663
  %11 = getelementptr inbounds nuw %struct.infomap, ptr %10, i32 0, i32 0, !dbg !664
  %12 = load ptr, ptr %11, align 8, !dbg !664
  %13 = icmp ne ptr %12, null, !dbg !663
  br i1 %13, label %14, label %21, !dbg !665

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 8, !dbg !666
  %16 = load ptr, ptr %5, align 8, !dbg !667
  %17 = getelementptr inbounds nuw %struct.infomap, ptr %16, i32 0, i32 0, !dbg !668
  %18 = load ptr, ptr %17, align 8, !dbg !668
  %19 = call zeroext i1 @streq(ptr noundef %15, ptr noundef %18), !dbg !669
  %20 = xor i1 %19, true, !dbg !670
  br label %21

21:                                               ; preds = %14, %9
  %22 = phi i1 [ false, %9 ], [ %20, %14 ], !dbg !671
  br i1 %22, label %23, label %26, !dbg !662

23:                                               ; preds = %21
  %24 = load ptr, ptr %5, align 8, !dbg !672
  %25 = getelementptr inbounds nuw %struct.infomap, ptr %24, i32 1, !dbg !672
  store ptr %25, ptr %5, align 8, !dbg !672
  br label %9, !dbg !662, !llvm.loop !673

26:                                               ; preds = %21
  %27 = load ptr, ptr %5, align 8, !dbg !674
  %28 = getelementptr inbounds nuw %struct.infomap, ptr %27, i32 0, i32 1, !dbg !676
  %29 = load ptr, ptr %28, align 8, !dbg !676
  %30 = icmp ne ptr %29, null, !dbg !674
  br i1 %30, label %31, label %35, !dbg !674

31:                                               ; preds = %26
  %32 = load ptr, ptr %5, align 8, !dbg !677
  %33 = getelementptr inbounds nuw %struct.infomap, ptr %32, i32 0, i32 1, !dbg !678
  %34 = load ptr, ptr %33, align 8, !dbg !678
  store ptr %34, ptr %4, align 8, !dbg !679
  br label %35, !dbg !680

35:                                               ; preds = %31, %26
  call void @emit_bug_reporting_address(), !dbg !681
    #dbg_declare(ptr %6, !682, !DIExpression(), !683)
  %36 = load ptr, ptr %2, align 8, !dbg !684
  %37 = call zeroext i1 @streq(ptr noundef %36, ptr noundef @.str.40), !dbg !685
  br i1 %37, label %38, label %39, !dbg !685

38:                                               ; preds = %35
  br label %41, !dbg !685

39:                                               ; preds = %35
  %40 = load ptr, ptr %2, align 8, !dbg !686
  br label %41, !dbg !685

41:                                               ; preds = %39, %38
  %42 = phi ptr [ @.str.41, %38 ], [ %40, %39 ], !dbg !685
  store ptr %42, ptr %6, align 8, !dbg !683
  %43 = call ptr @gettext(ptr noundef @.str.66) #11, !dbg !687
  %44 = load ptr, ptr %6, align 8, !dbg !688
  %45 = call i32 (ptr, ...) @rpl_printf(ptr noundef %43, ptr noundef @.str.56, ptr noundef %44), !dbg !689
  %46 = call ptr @gettext(ptr noundef @.str.67) #11, !dbg !690
  %47 = load ptr, ptr %4, align 8, !dbg !691
  %48 = load ptr, ptr %4, align 8, !dbg !692
  %49 = load ptr, ptr %2, align 8, !dbg !693
  %50 = icmp eq ptr %48, %49, !dbg !694
  %51 = zext i1 %50 to i64, !dbg !692
  %52 = select i1 %50, ptr @.str.68, ptr @.str.13, !dbg !692
  %53 = call i32 (ptr, ...) @rpl_printf(ptr noundef %46, ptr noundef %47, ptr noundef %52), !dbg !695
  ret void, !dbg !696
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #3 !dbg !697 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i8, align 1
  %14 = alloca ptr, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca ptr, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
    #dbg_declare(ptr %4, !701, !DIExpression(), !702)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !703, !DIExpression(), !704)
    #dbg_declare(ptr %6, !705, !DIExpression(), !706)
  store i8 0, ptr %6, align 1, !dbg !706
    #dbg_declare(ptr %7, !707, !DIExpression(), !708)
  store i8 0, ptr %7, align 1, !dbg !708
    #dbg_declare(ptr %8, !709, !DIExpression(), !710)
  store i64 -1, ptr %8, align 8, !dbg !710
    #dbg_declare(ptr %9, !711, !DIExpression(), !712)
  store i64 0, ptr %9, align 8, !dbg !712
    #dbg_declare(ptr %10, !713, !DIExpression(), !716)
  store i64 9223372036854775807, ptr %10, align 8, !dbg !716
    #dbg_declare(ptr %11, !717, !DIExpression(), !718)
  store ptr null, ptr %11, align 8, !dbg !718
    #dbg_declare(ptr %12, !719, !DIExpression(), !720)
  store ptr null, ptr %12, align 8, !dbg !720
    #dbg_declare(ptr %13, !721, !DIExpression(), !722)
  store i8 10, ptr %13, align 1, !dbg !722
    #dbg_declare(ptr %14, !723, !DIExpression(), !724)
  store ptr null, ptr %14, align 8, !dbg !724
    #dbg_declare(ptr %15, !725, !DIExpression(), !726)
  store i8 0, ptr %15, align 1, !dbg !726
    #dbg_declare(ptr %16, !727, !DIExpression(), !728)
  store i8 0, ptr %16, align 1, !dbg !728
    #dbg_declare(ptr %17, !729, !DIExpression(), !730)
    #dbg_declare(ptr %18, !731, !DIExpression(), !732)
    #dbg_declare(ptr %19, !733, !DIExpression(), !734)
    #dbg_declare(ptr %20, !735, !DIExpression(), !736)
    #dbg_declare(ptr %21, !737, !DIExpression(), !738)
  store ptr null, ptr %21, align 8, !dbg !738
    #dbg_declare(ptr %22, !739, !DIExpression(), !747)
  store ptr null, ptr %22, align 8, !dbg !747
    #dbg_declare(ptr %23, !748, !DIExpression(), !752)
    #dbg_declare(ptr %24, !753, !DIExpression(), !755)
  store ptr null, ptr %24, align 8, !dbg !755
    #dbg_declare(ptr %25, !756, !DIExpression(), !757)
  %32 = load ptr, ptr %5, align 8, !dbg !758
  %33 = getelementptr inbounds ptr, ptr %32, i64 0, !dbg !758
  %34 = load ptr, ptr %33, align 8, !dbg !758
  call void @set_program_name(ptr noundef %34), !dbg !759
  %35 = call ptr @setlocale(i32 noundef 6, ptr noundef @.str.13) #11, !dbg !760
  %36 = call ptr @bindtextdomain(ptr noundef @.str.14, ptr noundef @.str.15) #11, !dbg !761
  %37 = call ptr @textdomain(ptr noundef @.str.14) #11, !dbg !762
  %38 = call i32 @atexit(ptr noundef @close_stdout) #11, !dbg !763
  br label %39, !dbg !764

39:                                               ; preds = %164, %2
  %40 = load i32, ptr %4, align 4, !dbg !765
  %41 = load ptr, ptr %5, align 8, !dbg !766
  %42 = call i32 @getopt_long(i32 noundef %40, ptr noundef %41, ptr noundef @.str.16, ptr noundef @long_opts, ptr noundef null) #11, !dbg !767
  store i32 %42, ptr %17, align 4, !dbg !768
  %43 = icmp ne i32 %42, -1, !dbg !769
  br i1 %43, label %44, label %165, !dbg !764

44:                                               ; preds = %39
  %45 = load i32, ptr %17, align 4, !dbg !770
  switch i32 %45, label %163 [
    i32 101, label %46
    i32 105, label %47
    i32 110, label %110
    i32 111, label %134
    i32 128, label %145
    i32 114, label %156
    i32 122, label %157
    i32 -130, label %158
    i32 -131, label %159
  ], !dbg !771

46:                                               ; preds = %44
  store i8 1, ptr %6, align 1, !dbg !772
  br label %164, !dbg !774

47:                                               ; preds = %44
  %48 = load i8, ptr %7, align 1, !dbg !775
  %49 = trunc i8 %48 to i1, !dbg !775
  br i1 %49, label %50, label %52, !dbg !775

50:                                               ; preds = %47
  %51 = call ptr @gettext(ptr noundef @.str.17) #11, !dbg !778
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %51), !dbg !779
  unreachable, !dbg !779

52:                                               ; preds = %47
  store i8 1, ptr %7, align 1, !dbg !780
    #dbg_declare(ptr %26, !781, !DIExpression(), !785)
    #dbg_declare(ptr %27, !786, !DIExpression(), !787)
    #dbg_declare(ptr %28, !788, !DIExpression(), !790)
  %53 = load ptr, ptr @optarg, align 8, !dbg !791
  %54 = call i32 @xstrtoumax(ptr noundef %53, ptr noundef %27, i32 noundef 10, ptr noundef %26, ptr noundef null), !dbg !792
  store i32 %54, ptr %28, align 4, !dbg !790
  %55 = load i32, ptr %28, align 4, !dbg !793
  %56 = icmp eq i32 %55, 0, !dbg !795
  br i1 %56, label %57, label %85, !dbg !795

57:                                               ; preds = %52
  %58 = load i64, ptr %26, align 8, !dbg !796
  store i64 %58, ptr %8, align 8, !dbg !798
  %59 = load i64, ptr %8, align 8, !dbg !799
  %60 = load i64, ptr %26, align 8, !dbg !801
  %61 = icmp ne i64 %59, %60, !dbg !802
  br i1 %61, label %62, label %63, !dbg !802

62:                                               ; preds = %57
  store i32 1, ptr %28, align 4, !dbg !803
  br label %84, !dbg !804

63:                                               ; preds = %57
  %64 = load ptr, ptr %27, align 8, !dbg !805
  %65 = load i8, ptr %64, align 1, !dbg !807
  %66 = sext i8 %65 to i32, !dbg !807
  %67 = icmp ne i32 %66, 45, !dbg !808
  br i1 %67, label %68, label %69, !dbg !808

68:                                               ; preds = %63
  store i32 4, ptr %28, align 4, !dbg !809
  br label %83, !dbg !810

69:                                               ; preds = %63
  %70 = load ptr, ptr %27, align 8, !dbg !811
  %71 = getelementptr inbounds i8, ptr %70, i64 1, !dbg !813
  %72 = call i32 @xstrtoumax(ptr noundef %71, ptr noundef null, i32 noundef 10, ptr noundef %26, ptr noundef @.str.13), !dbg !814
  store i32 %72, ptr %28, align 4, !dbg !815
  %73 = load i32, ptr %28, align 4, !dbg !816
  %74 = icmp eq i32 %73, 0, !dbg !818
  br i1 %74, label %75, label %82, !dbg !818

75:                                               ; preds = %69
  %76 = load i64, ptr %26, align 8, !dbg !819
  store i64 %76, ptr %9, align 8, !dbg !821
  %77 = load i64, ptr %9, align 8, !dbg !822
  %78 = load i64, ptr %26, align 8, !dbg !824
  %79 = icmp ne i64 %77, %78, !dbg !825
  br i1 %79, label %80, label %81, !dbg !825

80:                                               ; preds = %75
  store i32 1, ptr %28, align 4, !dbg !826
  br label %81, !dbg !827

81:                                               ; preds = %80, %75
  br label %82, !dbg !828

82:                                               ; preds = %81, %69
  br label %83

83:                                               ; preds = %82, %68
  br label %84

84:                                               ; preds = %83, %62
  br label %85, !dbg !829

85:                                               ; preds = %84, %52
  %86 = load i64, ptr %9, align 8, !dbg !830
  %87 = load i64, ptr %8, align 8, !dbg !831
  %88 = sub i64 %86, %87, !dbg !832
  %89 = add i64 %88, 1, !dbg !833
  store i64 %89, ptr %20, align 8, !dbg !834
  %90 = load i32, ptr %28, align 4, !dbg !835
  %91 = icmp ne i32 %90, 0, !dbg !837
  br i1 %91, label %101, label %92, !dbg !838

92:                                               ; preds = %85
  %93 = load i64, ptr %8, align 8, !dbg !839
  %94 = load i64, ptr %9, align 8, !dbg !840
  %95 = icmp ule i64 %93, %94, !dbg !841
  %96 = zext i1 %95 to i32, !dbg !841
  %97 = load i64, ptr %20, align 8, !dbg !842
  %98 = icmp eq i64 %97, 0, !dbg !843
  %99 = zext i1 %98 to i32, !dbg !843
  %100 = icmp eq i32 %96, %99, !dbg !844
  br i1 %100, label %101, label %109, !dbg !838

101:                                              ; preds = %92, %85
  %102 = load i32, ptr %28, align 4, !dbg !845
  %103 = icmp eq i32 %102, 1, !dbg !846
  %104 = zext i1 %103 to i64, !dbg !845
  %105 = select i1 %103, i32 75, i32 0, !dbg !845
  %106 = call ptr @gettext(ptr noundef @.str.19) #11, !dbg !847
  %107 = load ptr, ptr @optarg, align 8, !dbg !848
  %108 = call ptr @quote(ptr noundef %107), !dbg !849
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %105, ptr noundef @.str.18, ptr noundef %106, ptr noundef %108), !dbg !850
  unreachable, !dbg !850

109:                                              ; preds = %92
  br label %164, !dbg !851

110:                                              ; preds = %44
    #dbg_declare(ptr %29, !852, !DIExpression(), !854)
    #dbg_declare(ptr %30, !855, !DIExpression(), !856)
  %111 = load ptr, ptr @optarg, align 8, !dbg !857
  %112 = call i32 @xstrtoumax(ptr noundef %111, ptr noundef null, i32 noundef 10, ptr noundef %29, ptr noundef @.str.13), !dbg !858
  store i32 %112, ptr %30, align 4, !dbg !856
  %113 = load i32, ptr %30, align 4, !dbg !859
  %114 = icmp eq i32 %113, 0, !dbg !861
  br i1 %114, label %115, label %125, !dbg !861

115:                                              ; preds = %110
  %116 = load i64, ptr %10, align 8, !dbg !862
  %117 = load i64, ptr %29, align 8, !dbg !863
  %118 = icmp ult i64 %116, %117, !dbg !864
  br i1 %118, label %119, label %121, !dbg !864

119:                                              ; preds = %115
  %120 = load i64, ptr %10, align 8, !dbg !862
  br label %123, !dbg !864

121:                                              ; preds = %115
  %122 = load i64, ptr %29, align 8, !dbg !863
  br label %123, !dbg !864

123:                                              ; preds = %121, %119
  %124 = phi i64 [ %120, %119 ], [ %122, %121 ], !dbg !864
  store i64 %124, ptr %10, align 8, !dbg !865
  br label %133, !dbg !866

125:                                              ; preds = %110
  %126 = load i32, ptr %30, align 4, !dbg !867
  %127 = icmp ne i32 %126, 1, !dbg !869
  br i1 %127, label %128, label %132, !dbg !869

128:                                              ; preds = %125
  %129 = call ptr @gettext(ptr noundef @.str.20) #11, !dbg !870
  %130 = load ptr, ptr @optarg, align 8, !dbg !871
  %131 = call ptr @quote(ptr noundef %130), !dbg !872
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %129, ptr noundef %131), !dbg !873
  unreachable, !dbg !873

132:                                              ; preds = %125
  br label %133

133:                                              ; preds = %132, %123
  br label %164, !dbg !874

134:                                              ; preds = %44
  %135 = load ptr, ptr %11, align 8, !dbg !875
  %136 = icmp ne ptr %135, null, !dbg !875
  br i1 %136, label %137, label %143, !dbg !877

137:                                              ; preds = %134
  %138 = load ptr, ptr %11, align 8, !dbg !878
  %139 = load ptr, ptr @optarg, align 8, !dbg !879
  %140 = call zeroext i1 @streq(ptr noundef %138, ptr noundef %139), !dbg !880
  br i1 %140, label %143, label %141, !dbg !877

141:                                              ; preds = %137
  %142 = call ptr @gettext(ptr noundef @.str.21) #11, !dbg !881
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %142), !dbg !882
  unreachable, !dbg !882

143:                                              ; preds = %137, %134
  %144 = load ptr, ptr @optarg, align 8, !dbg !883
  store ptr %144, ptr %11, align 8, !dbg !884
  br label %164, !dbg !885

145:                                              ; preds = %44
  %146 = load ptr, ptr %12, align 8, !dbg !886
  %147 = icmp ne ptr %146, null, !dbg !886
  br i1 %147, label %148, label %154, !dbg !888

148:                                              ; preds = %145
  %149 = load ptr, ptr %12, align 8, !dbg !889
  %150 = load ptr, ptr @optarg, align 8, !dbg !890
  %151 = call zeroext i1 @streq(ptr noundef %149, ptr noundef %150), !dbg !891
  br i1 %151, label %154, label %152, !dbg !888

152:                                              ; preds = %148
  %153 = call ptr @gettext(ptr noundef @.str.22) #11, !dbg !892
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %153), !dbg !893
  unreachable, !dbg !893

154:                                              ; preds = %148, %145
  %155 = load ptr, ptr @optarg, align 8, !dbg !894
  store ptr %155, ptr %12, align 8, !dbg !895
  br label %164, !dbg !896

156:                                              ; preds = %44
  store i8 1, ptr %16, align 1, !dbg !897
  br label %164, !dbg !898

157:                                              ; preds = %44
  store i8 0, ptr %13, align 1, !dbg !899
  br label %164, !dbg !900

158:                                              ; preds = %44
  call void @usage(i32 noundef 0) #15, !dbg !901
  unreachable, !dbg !901

159:                                              ; preds = %44
  %160 = load ptr, ptr @stdout, align 8, !dbg !902
  %161 = load ptr, ptr @Version, align 8, !dbg !902
  %162 = call ptr @proper_name_lite(ptr noundef @.str.24, ptr noundef @.str.24), !dbg !903
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %160, ptr noundef @.str.3, ptr noundef @.str.23, ptr noundef %161, ptr noundef %162, ptr noundef null), !dbg !902
  call void @exit(i32 noundef 0) #12, !dbg !902
  unreachable, !dbg !902

163:                                              ; preds = %44
  call void @usage(i32 noundef 1) #15, !dbg !904
  unreachable, !dbg !904

164:                                              ; preds = %157, %156, %154, %143, %133, %109, %46
  br label %39, !dbg !764, !llvm.loop !905

165:                                              ; preds = %39
  %166 = load i32, ptr %4, align 4, !dbg !907
  %167 = load i32, ptr @optind, align 4, !dbg !908
  %168 = sub nsw i32 %166, %167, !dbg !909
  store i32 %168, ptr %18, align 4, !dbg !910
  %169 = load ptr, ptr %5, align 8, !dbg !911
  %170 = load i32, ptr @optind, align 4, !dbg !912
  %171 = sext i32 %170 to i64, !dbg !913
  %172 = getelementptr inbounds ptr, ptr %169, i64 %171, !dbg !913
  store ptr %172, ptr %19, align 8, !dbg !914
  %173 = load i8, ptr %6, align 1, !dbg !915
  %174 = trunc i8 %173 to i1, !dbg !915
  br i1 %174, label %175, label %180, !dbg !917

175:                                              ; preds = %165
  %176 = load i8, ptr %7, align 1, !dbg !918
  %177 = trunc i8 %176 to i1, !dbg !918
  br i1 %177, label %178, label %180, !dbg !917

178:                                              ; preds = %175
  %179 = call ptr @gettext(ptr noundef @.str.25) #11, !dbg !919
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %179), !dbg !921
  call void @usage(i32 noundef 1) #15, !dbg !922
  unreachable, !dbg !922

180:                                              ; preds = %175, %165
  %181 = load i8, ptr %7, align 1, !dbg !923
  %182 = trunc i8 %181 to i1, !dbg !923
  br i1 %182, label %183, label %186, !dbg !923

183:                                              ; preds = %180
  %184 = load i32, ptr %18, align 4, !dbg !925
  %185 = icmp slt i32 0, %184, !dbg !926
  br i1 %185, label %192, label %203, !dbg !923

186:                                              ; preds = %180
  %187 = load i8, ptr %6, align 1, !dbg !927
  %188 = trunc i8 %187 to i1, !dbg !927
  br i1 %188, label %203, label %189, !dbg !928

189:                                              ; preds = %186
  %190 = load i32, ptr %18, align 4, !dbg !929
  %191 = icmp slt i32 1, %190, !dbg !930
  br i1 %191, label %192, label %203, !dbg !923

192:                                              ; preds = %189, %183
  %193 = call ptr @gettext(ptr noundef @.str.26) #11, !dbg !931
  %194 = load ptr, ptr %19, align 8, !dbg !933
  %195 = load i8, ptr %7, align 1, !dbg !934
  %196 = trunc i8 %195 to i1, !dbg !934
  %197 = xor i1 %196, true, !dbg !935
  %198 = zext i1 %197 to i32, !dbg !935
  %199 = sext i32 %198 to i64, !dbg !933
  %200 = getelementptr inbounds ptr, ptr %194, i64 %199, !dbg !933
  %201 = load ptr, ptr %200, align 8, !dbg !933
  %202 = call ptr @quote(ptr noundef %201), !dbg !936
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %193, ptr noundef %202), !dbg !937
  call void @usage(i32 noundef 1) #15, !dbg !938
  unreachable, !dbg !938

203:                                              ; preds = %189, %186, %183
  %204 = load i64, ptr %10, align 8, !dbg !939
  %205 = icmp eq i64 %204, 0, !dbg !941
  br i1 %205, label %206, label %207, !dbg !941

206:                                              ; preds = %203
  store i64 0, ptr %20, align 8, !dbg !942
  store ptr null, ptr %21, align 8, !dbg !944
  br label %262, !dbg !945

207:                                              ; preds = %203
  %208 = load i8, ptr %6, align 1, !dbg !946
  %209 = trunc i8 %208 to i1, !dbg !946
  br i1 %209, label %210, label %217, !dbg !946

210:                                              ; preds = %207
  %211 = load ptr, ptr %19, align 8, !dbg !948
  %212 = load i32, ptr %18, align 4, !dbg !950
  %213 = load i8, ptr %13, align 1, !dbg !951
  call void @input_from_argv(ptr noundef %211, i32 noundef %212, i8 noundef signext %213), !dbg !952
  %214 = load i32, ptr %18, align 4, !dbg !953
  %215 = sext i32 %214 to i64, !dbg !953
  store i64 %215, ptr %20, align 8, !dbg !954
  %216 = load ptr, ptr %19, align 8, !dbg !955
  store ptr %216, ptr %21, align 8, !dbg !956
  br label %261, !dbg !957

217:                                              ; preds = %207
  %218 = load i8, ptr %7, align 1, !dbg !958
  %219 = trunc i8 %218 to i1, !dbg !958
  br i1 %219, label %220, label %221, !dbg !958

220:                                              ; preds = %217
  store ptr null, ptr %21, align 8, !dbg !960
  br label %260, !dbg !962

221:                                              ; preds = %217
  %222 = load i32, ptr %18, align 4, !dbg !963
  %223 = icmp eq i32 %222, 1, !dbg !966
  br i1 %223, label %224, label %243, !dbg !967

224:                                              ; preds = %221
  %225 = load ptr, ptr %19, align 8, !dbg !968
  %226 = getelementptr inbounds ptr, ptr %225, i64 0, !dbg !968
  %227 = load ptr, ptr %226, align 8, !dbg !968
  %228 = call zeroext i1 @streq(ptr noundef %227, ptr noundef @.str.27), !dbg !969
  br i1 %228, label %243, label %229, !dbg !970

229:                                              ; preds = %224
  %230 = load ptr, ptr %19, align 8, !dbg !971
  %231 = getelementptr inbounds ptr, ptr %230, i64 0, !dbg !971
  %232 = load ptr, ptr %231, align 8, !dbg !971
  %233 = load ptr, ptr @stdin, align 8, !dbg !972
  %234 = call ptr @freopen_safer(ptr noundef %232, ptr noundef @.str.28, ptr noundef %233), !dbg !973
  %235 = icmp ne ptr %234, null, !dbg !973
  br i1 %235, label %243, label %236, !dbg !967

236:                                              ; preds = %229
  %237 = call ptr @__errno_location() #14, !dbg !974
  %238 = load i32, ptr %237, align 4, !dbg !974
  %239 = load ptr, ptr %19, align 8, !dbg !975
  %240 = getelementptr inbounds ptr, ptr %239, i64 0, !dbg !975
  %241 = load ptr, ptr %240, align 8, !dbg !975
  %242 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %241), !dbg !976
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %238, ptr noundef @.str.29, ptr noundef %242), !dbg !977
  unreachable, !dbg !977

243:                                              ; preds = %229, %224, %221
  %244 = load ptr, ptr @stdin, align 8, !dbg !978
  call void @fadvise(ptr noundef %244, i32 noundef 2), !dbg !979
  %245 = load i8, ptr %16, align 1, !dbg !980
  %246 = trunc i8 %245 to i1, !dbg !980
  br i1 %246, label %253, label %247, !dbg !982

247:                                              ; preds = %243
  %248 = load i64, ptr %10, align 8, !dbg !983
  %249 = icmp eq i64 %248, 9223372036854775807, !dbg !984
  br i1 %249, label %253, label %250, !dbg !985

250:                                              ; preds = %247
  %251 = call i64 @input_size(), !dbg !986
  %252 = icmp sle i64 %251, 8388608, !dbg !987
  br i1 %252, label %253, label %258, !dbg !985

253:                                              ; preds = %250, %247, %243
  %254 = load ptr, ptr @stdin, align 8, !dbg !988
  %255 = load i8, ptr %13, align 1, !dbg !990
  %256 = call i64 @read_input(ptr noundef %254, i8 noundef signext %255, ptr noundef %14), !dbg !991
  store i64 %256, ptr %20, align 8, !dbg !992
  %257 = load ptr, ptr %14, align 8, !dbg !993
  store ptr %257, ptr %21, align 8, !dbg !994
  br label %259, !dbg !995

258:                                              ; preds = %250
  store i8 1, ptr %15, align 1, !dbg !996
  store i64 -1, ptr %20, align 8, !dbg !998
  br label %259

259:                                              ; preds = %258, %253
  br label %260

260:                                              ; preds = %259, %220
  br label %261

261:                                              ; preds = %260, %210
  br label %262

262:                                              ; preds = %261, %206
    #dbg_declare(ptr %31, !999, !DIExpression(), !1000)
  %263 = load i8, ptr %16, align 1, !dbg !1001
  %264 = trunc i8 %263 to i1, !dbg !1001
  br i1 %264, label %269, label %265, !dbg !1002

265:                                              ; preds = %262
  %266 = load i64, ptr %10, align 8, !dbg !1003
  %267 = load i64, ptr %20, align 8, !dbg !1004
  %268 = icmp ult i64 %266, %267, !dbg !1005
  br i1 %268, label %269, label %271, !dbg !1001

269:                                              ; preds = %265, %262
  %270 = load i64, ptr %10, align 8, !dbg !1006
  br label %273, !dbg !1001

271:                                              ; preds = %265
  %272 = load i64, ptr %20, align 8, !dbg !1007
  br label %273, !dbg !1001

273:                                              ; preds = %271, %269
  %274 = phi i64 [ %270, %269 ], [ %272, %271 ], !dbg !1001
  store i64 %274, ptr %31, align 8, !dbg !1000
  %275 = load ptr, ptr %12, align 8, !dbg !1008
  %276 = load i8, ptr %15, align 1, !dbg !1009
  %277 = trunc i8 %276 to i1, !dbg !1009
  br i1 %277, label %281, label %278, !dbg !1010

278:                                              ; preds = %273
  %279 = load i8, ptr %16, align 1, !dbg !1011
  %280 = trunc i8 %279 to i1, !dbg !1011
  br i1 %280, label %281, label %282, !dbg !1009

281:                                              ; preds = %278, %273
  br label %286, !dbg !1009

282:                                              ; preds = %278
  %283 = load i64, ptr %31, align 8, !dbg !1012
  %284 = load i64, ptr %20, align 8, !dbg !1013
  %285 = call i64 @randperm_bound(i64 noundef %283, i64 noundef %284) #14, !dbg !1014
  br label %286, !dbg !1009

286:                                              ; preds = %282, %281
  %287 = phi i64 [ -1, %281 ], [ %285, %282 ], !dbg !1009
  %288 = call noalias ptr @randint_all_new(ptr noundef %275, i64 noundef %287), !dbg !1015
  store ptr %288, ptr %23, align 8, !dbg !1016
  %289 = load ptr, ptr %23, align 8, !dbg !1017
  %290 = icmp ne ptr %289, null, !dbg !1017
  br i1 %290, label %302, label %291, !dbg !1019

291:                                              ; preds = %286
  %292 = call ptr @__errno_location() #14, !dbg !1020
  %293 = load i32, ptr %292, align 4, !dbg !1020
  %294 = load ptr, ptr %12, align 8, !dbg !1021
  %295 = icmp ne ptr %294, null, !dbg !1021
  br i1 %295, label %296, label %298, !dbg !1021

296:                                              ; preds = %291
  %297 = load ptr, ptr %12, align 8, !dbg !1022
  br label %299, !dbg !1021

298:                                              ; preds = %291
  br label %299, !dbg !1021

299:                                              ; preds = %298, %296
  %300 = phi ptr [ %297, %296 ], [ @.str.30, %298 ], !dbg !1021
  %301 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %300), !dbg !1023
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %293, ptr noundef @.str.29, ptr noundef %301), !dbg !1024
  unreachable, !dbg !1024

302:                                              ; preds = %286
  %303 = load i8, ptr %15, align 1, !dbg !1025
  %304 = trunc i8 %303 to i1, !dbg !1025
  br i1 %304, label %305, label %312, !dbg !1025

305:                                              ; preds = %302
  %306 = load ptr, ptr @stdin, align 8, !dbg !1027
  %307 = load i8, ptr %13, align 1, !dbg !1029
  %308 = load i64, ptr %31, align 8, !dbg !1030
  %309 = load ptr, ptr %23, align 8, !dbg !1031
  %310 = call i64 @read_input_reservoir_sampling(ptr noundef %306, i8 noundef signext %307, i64 noundef %308, ptr noundef %309, ptr noundef %22), !dbg !1032
  store i64 %310, ptr %20, align 8, !dbg !1033
  %311 = load i64, ptr %20, align 8, !dbg !1034
  store i64 %311, ptr %31, align 8, !dbg !1035
  br label %312, !dbg !1036

312:                                              ; preds = %305, %302
  %313 = load i64, ptr %10, align 8, !dbg !1037
  %314 = icmp eq i64 %313, 0, !dbg !1039
  br i1 %314, label %329, label %315, !dbg !1040

315:                                              ; preds = %312
  %316 = load i8, ptr %6, align 1, !dbg !1041
  %317 = trunc i8 %316 to i1, !dbg !1041
  br i1 %317, label %329, label %318, !dbg !1042

318:                                              ; preds = %315
  %319 = load i8, ptr %7, align 1, !dbg !1043
  %320 = trunc i8 %319 to i1, !dbg !1043
  br i1 %320, label %329, label %321, !dbg !1044

321:                                              ; preds = %318
  %322 = load ptr, ptr @stdin, align 8, !dbg !1045
  %323 = call i32 @rpl_fclose(ptr noundef %322), !dbg !1046
  %324 = icmp eq i32 %323, 0, !dbg !1047
  br i1 %324, label %329, label %325, !dbg !1048

325:                                              ; preds = %321
  %326 = call ptr @__errno_location() #14, !dbg !1049
  %327 = load i32, ptr %326, align 4, !dbg !1049
  %328 = call ptr @gettext(ptr noundef @.str.31) #11, !dbg !1050
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %327, ptr noundef %328), !dbg !1051
  unreachable, !dbg !1051

329:                                              ; preds = %321, %318, %315, %312
  %330 = load i8, ptr %16, align 1, !dbg !1052
  %331 = trunc i8 %330 to i1, !dbg !1052
  br i1 %331, label %337, label %332, !dbg !1054

332:                                              ; preds = %329
  %333 = load ptr, ptr %23, align 8, !dbg !1055
  %334 = load i64, ptr %31, align 8, !dbg !1056
  %335 = load i64, ptr %20, align 8, !dbg !1057
  %336 = call noalias ptr @randperm_new(ptr noundef %333, i64 noundef %334, i64 noundef %335), !dbg !1058
  store ptr %336, ptr %24, align 8, !dbg !1059
  br label %337, !dbg !1060

337:                                              ; preds = %332, %329
  %338 = load ptr, ptr %11, align 8, !dbg !1061
  %339 = icmp ne ptr %338, null, !dbg !1061
  br i1 %339, label %340, label %350, !dbg !1063

340:                                              ; preds = %337
  %341 = load ptr, ptr %11, align 8, !dbg !1064
  %342 = load ptr, ptr @stdout, align 8, !dbg !1065
  %343 = call ptr @freopen_safer(ptr noundef %341, ptr noundef @.str.32, ptr noundef %342), !dbg !1066
  %344 = icmp ne ptr %343, null, !dbg !1066
  br i1 %344, label %350, label %345, !dbg !1063

345:                                              ; preds = %340
  %346 = call ptr @__errno_location() #14, !dbg !1067
  %347 = load i32, ptr %346, align 4, !dbg !1067
  %348 = load ptr, ptr %11, align 8, !dbg !1068
  %349 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %348), !dbg !1069
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %347, ptr noundef @.str.29, ptr noundef %349), !dbg !1070
  unreachable, !dbg !1070

350:                                              ; preds = %340, %337
  %351 = load i8, ptr %16, align 1, !dbg !1071
  %352 = trunc i8 %351 to i1, !dbg !1071
  br i1 %352, label %353, label %380, !dbg !1071

353:                                              ; preds = %350
  %354 = load i64, ptr %10, align 8, !dbg !1073
  %355 = icmp eq i64 %354, 0, !dbg !1076
  br i1 %355, label %356, label %357, !dbg !1076

356:                                              ; preds = %353
  store i32 0, ptr %25, align 4, !dbg !1077
  br label %379, !dbg !1078

357:                                              ; preds = %353
  %358 = load i64, ptr %20, align 8, !dbg !1079
  %359 = icmp eq i64 %358, 0, !dbg !1082
  br i1 %359, label %360, label %362, !dbg !1082

360:                                              ; preds = %357
  %361 = call ptr @gettext(ptr noundef @.str.33) #11, !dbg !1083
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %361), !dbg !1084
  unreachable, !dbg !1084

362:                                              ; preds = %357
  %363 = load i8, ptr %7, align 1, !dbg !1085
  %364 = trunc i8 %363 to i1, !dbg !1085
  br i1 %364, label %365, label %372, !dbg !1085

365:                                              ; preds = %362
  %366 = load ptr, ptr %23, align 8, !dbg !1087
  %367 = load i64, ptr %31, align 8, !dbg !1088
  %368 = load i64, ptr %8, align 8, !dbg !1089
  %369 = load i64, ptr %9, align 8, !dbg !1090
  %370 = load i8, ptr %13, align 1, !dbg !1091
  %371 = call i32 @write_random_numbers(ptr noundef %366, i64 noundef %367, i64 noundef %368, i64 noundef %369, i8 noundef signext %370), !dbg !1092
  store i32 %371, ptr %25, align 4, !dbg !1093
  br label %378, !dbg !1094

372:                                              ; preds = %362
  %373 = load ptr, ptr %23, align 8, !dbg !1095
  %374 = load i64, ptr %31, align 8, !dbg !1096
  %375 = load ptr, ptr %21, align 8, !dbg !1097
  %376 = load i64, ptr %20, align 8, !dbg !1098
  %377 = call i32 @write_random_lines(ptr noundef %373, i64 noundef %374, ptr noundef %375, i64 noundef %376), !dbg !1099
  store i32 %377, ptr %25, align 4, !dbg !1100
  br label %378

378:                                              ; preds = %372, %365
  br label %379

379:                                              ; preds = %378, %356
  br label %404, !dbg !1101

380:                                              ; preds = %350
  %381 = load i8, ptr %15, align 1, !dbg !1102
  %382 = trunc i8 %381 to i1, !dbg !1102
  br i1 %382, label %383, label %388, !dbg !1102

383:                                              ; preds = %380
  %384 = load i64, ptr %20, align 8, !dbg !1105
  %385 = load ptr, ptr %22, align 8, !dbg !1106
  %386 = load ptr, ptr %24, align 8, !dbg !1107
  %387 = call i32 @write_permuted_output_reservoir(i64 noundef %384, ptr noundef %385, ptr noundef %386), !dbg !1108
  store i32 %387, ptr %25, align 4, !dbg !1109
  br label %403, !dbg !1110

388:                                              ; preds = %380
  %389 = load i8, ptr %7, align 1, !dbg !1111
  %390 = trunc i8 %389 to i1, !dbg !1111
  br i1 %390, label %391, label %397, !dbg !1111

391:                                              ; preds = %388
  %392 = load i64, ptr %31, align 8, !dbg !1113
  %393 = load i64, ptr %8, align 8, !dbg !1114
  %394 = load ptr, ptr %24, align 8, !dbg !1115
  %395 = load i8, ptr %13, align 1, !dbg !1116
  %396 = call i32 @write_permuted_numbers(i64 noundef %392, i64 noundef %393, ptr noundef %394, i8 noundef signext %395), !dbg !1117
  store i32 %396, ptr %25, align 4, !dbg !1118
  br label %402, !dbg !1119

397:                                              ; preds = %388
  %398 = load i64, ptr %31, align 8, !dbg !1120
  %399 = load ptr, ptr %21, align 8, !dbg !1121
  %400 = load ptr, ptr %24, align 8, !dbg !1122
  %401 = call i32 @write_permuted_lines(i64 noundef %398, ptr noundef %399, ptr noundef %400), !dbg !1123
  store i32 %401, ptr %25, align 4, !dbg !1124
  br label %402

402:                                              ; preds = %397, %391
  br label %403

403:                                              ; preds = %402, %383
  br label %404

404:                                              ; preds = %403, %379
  %405 = load i32, ptr %25, align 4, !dbg !1125
  %406 = icmp ne i32 %405, 0, !dbg !1127
  br i1 %406, label %407, label %408, !dbg !1127

407:                                              ; preds = %404
  call void @write_error(), !dbg !1128
  br label %408, !dbg !1128

408:                                              ; preds = %407, %404
  ret i32 0, !dbg !1129
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

declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

declare i32 @xstrtoumax(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare ptr @quote(ptr noundef) #2

declare zeroext i1 @streq(ptr noundef, ptr noundef) #2

declare void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare ptr @proper_name_lite(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_from_argv(ptr noundef %0, i32 noundef %1, i8 noundef signext %2) #3 !dbg !1130 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1133, !DIExpression(), !1134)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !1135, !DIExpression(), !1136)
  store i8 %2, ptr %6, align 1
    #dbg_declare(ptr %6, !1137, !DIExpression(), !1138)
    #dbg_declare(ptr %7, !1139, !DIExpression(), !1140)
    #dbg_declare(ptr %8, !1141, !DIExpression(), !1142)
  %11 = load i32, ptr %5, align 4, !dbg !1143
  %12 = sext i32 %11 to i64, !dbg !1143
  store i64 %12, ptr %8, align 8, !dbg !1142
    #dbg_declare(ptr %9, !1144, !DIExpression(), !1145)
  store i32 0, ptr %9, align 4, !dbg !1146
  br label %13, !dbg !1148

13:                                               ; preds = %26, %3
  %14 = load i32, ptr %9, align 4, !dbg !1149
  %15 = load i32, ptr %5, align 4, !dbg !1151
  %16 = icmp slt i32 %14, %15, !dbg !1152
  br i1 %16, label %17, label %29, !dbg !1153

17:                                               ; preds = %13
  %18 = load ptr, ptr %4, align 8, !dbg !1154
  %19 = load i32, ptr %9, align 4, !dbg !1155
  %20 = sext i32 %19 to i64, !dbg !1154
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20, !dbg !1154
  %22 = load ptr, ptr %21, align 8, !dbg !1154
  %23 = call i64 @strlen(ptr noundef %22) #13, !dbg !1156
  %24 = load i64, ptr %8, align 8, !dbg !1157
  %25 = add i64 %24, %23, !dbg !1157
  store i64 %25, ptr %8, align 8, !dbg !1157
  br label %26, !dbg !1158

26:                                               ; preds = %17
  %27 = load i32, ptr %9, align 4, !dbg !1159
  %28 = add nsw i32 %27, 1, !dbg !1159
  store i32 %28, ptr %9, align 4, !dbg !1159
  br label %13, !dbg !1160, !llvm.loop !1161

29:                                               ; preds = %13
  %30 = load i64, ptr %8, align 8, !dbg !1163
  %31 = call noalias nonnull ptr @xmalloc(i64 noundef %30) #16, !dbg !1164
  store ptr %31, ptr %7, align 8, !dbg !1165
  store i32 0, ptr %9, align 4, !dbg !1166
  br label %32, !dbg !1168

32:                                               ; preds = %53, %29
  %33 = load i32, ptr %9, align 4, !dbg !1169
  %34 = load i32, ptr %5, align 4, !dbg !1171
  %35 = icmp slt i32 %33, %34, !dbg !1172
  br i1 %35, label %36, label %56, !dbg !1173

36:                                               ; preds = %32
    #dbg_declare(ptr %10, !1174, !DIExpression(), !1176)
  %37 = load ptr, ptr %7, align 8, !dbg !1177
  %38 = load ptr, ptr %4, align 8, !dbg !1178
  %39 = load i32, ptr %9, align 4, !dbg !1179
  %40 = sext i32 %39 to i64, !dbg !1178
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40, !dbg !1178
  %42 = load ptr, ptr %41, align 8, !dbg !1178
  %43 = call ptr @stpcpy(ptr noundef %37, ptr noundef %42) #11, !dbg !1180
  store ptr %43, ptr %10, align 8, !dbg !1176
  %44 = load ptr, ptr %7, align 8, !dbg !1181
  %45 = load ptr, ptr %4, align 8, !dbg !1182
  %46 = load i32, ptr %9, align 4, !dbg !1183
  %47 = sext i32 %46 to i64, !dbg !1182
  %48 = getelementptr inbounds ptr, ptr %45, i64 %47, !dbg !1182
  store ptr %44, ptr %48, align 8, !dbg !1184
  %49 = load ptr, ptr %10, align 8, !dbg !1185
  store ptr %49, ptr %7, align 8, !dbg !1186
  %50 = load i8, ptr %6, align 1, !dbg !1187
  %51 = load ptr, ptr %7, align 8, !dbg !1188
  %52 = getelementptr inbounds nuw i8, ptr %51, i32 1, !dbg !1188
  store ptr %52, ptr %7, align 8, !dbg !1188
  store i8 %50, ptr %51, align 1, !dbg !1189
  br label %53, !dbg !1190

53:                                               ; preds = %36
  %54 = load i32, ptr %9, align 4, !dbg !1191
  %55 = add nsw i32 %54, 1, !dbg !1191
  store i32 %55, ptr %9, align 4, !dbg !1191
  br label %32, !dbg !1192, !llvm.loop !1193

56:                                               ; preds = %32
  %57 = load ptr, ptr %7, align 8, !dbg !1195
  %58 = load ptr, ptr %4, align 8, !dbg !1196
  %59 = load i32, ptr %5, align 4, !dbg !1197
  %60 = sext i32 %59 to i64, !dbg !1196
  %61 = getelementptr inbounds ptr, ptr %58, i64 %60, !dbg !1196
  store ptr %57, ptr %61, align 8, !dbg !1198
  ret void, !dbg !1199
}

declare ptr @freopen_safer(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #5

declare ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) #2

declare void @fadvise(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @input_size() #3 !dbg !1200 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca i64, align 8
    #dbg_declare(ptr %2, !1203, !DIExpression(), !1204)
    #dbg_declare(ptr %3, !1205, !DIExpression(), !1240)
  %5 = call i32 @fstat(i32 noundef 0, ptr noundef %3) #11, !dbg !1241
  %6 = icmp ne i32 %5, 0, !dbg !1243
  br i1 %6, label %7, label %8, !dbg !1243

7:                                                ; preds = %0
  store i64 9223372036854775807, ptr %1, align 8, !dbg !1244
  br label %24, !dbg !1244

8:                                                ; preds = %0
  %9 = call zeroext i1 @usable_st_size(ptr noundef %3), !dbg !1245
  br i1 %9, label %10, label %13, !dbg !1245

10:                                               ; preds = %8
  %11 = getelementptr inbounds nuw %struct.stat, ptr %3, i32 0, i32 8, !dbg !1247
  %12 = load i64, ptr %11, align 8, !dbg !1247
  store i64 %12, ptr %2, align 8, !dbg !1248
  br label %14, !dbg !1249

13:                                               ; preds = %8
  store i64 9223372036854775807, ptr %1, align 8, !dbg !1250
  br label %24, !dbg !1250

14:                                               ; preds = %10
    #dbg_declare(ptr %4, !1251, !DIExpression(), !1252)
  %15 = call i64 @lseek(i32 noundef 0, i64 noundef 0, i32 noundef 1) #11, !dbg !1253
  store i64 %15, ptr %4, align 8, !dbg !1252
  %16 = load i64, ptr %4, align 8, !dbg !1254
  %17 = icmp slt i64 %16, 0, !dbg !1256
  br i1 %17, label %18, label %19, !dbg !1256

18:                                               ; preds = %14
  store i64 9223372036854775807, ptr %1, align 8, !dbg !1257
  br label %24, !dbg !1257

19:                                               ; preds = %14
  %20 = load i64, ptr %4, align 8, !dbg !1258
  %21 = load i64, ptr %2, align 8, !dbg !1259
  %22 = sub nsw i64 %21, %20, !dbg !1259
  store i64 %22, ptr %2, align 8, !dbg !1259
  %23 = load i64, ptr %2, align 8, !dbg !1260
  store i64 %23, ptr %1, align 8, !dbg !1261
  br label %24, !dbg !1261

24:                                               ; preds = %19, %18, %13, %7
  %25 = load i64, ptr %1, align 8, !dbg !1262
  ret i64 %25, !dbg !1262
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_input(ptr noundef %0, i8 noundef signext %1, ptr noundef %2) #3 !dbg !1263 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1313, !DIExpression(), !1314)
  store i8 %1, ptr %5, align 1
    #dbg_declare(ptr %5, !1315, !DIExpression(), !1316)
  store ptr %2, ptr %6, align 8
    #dbg_declare(ptr %6, !1317, !DIExpression(), !1318)
    #dbg_declare(ptr %7, !1319, !DIExpression(), !1320)
    #dbg_declare(ptr %8, !1321, !DIExpression(), !1322)
  store ptr null, ptr %8, align 8, !dbg !1322
    #dbg_declare(ptr %9, !1323, !DIExpression(), !1324)
    #dbg_declare(ptr %10, !1325, !DIExpression(), !1326)
    #dbg_declare(ptr %11, !1327, !DIExpression(), !1328)
    #dbg_declare(ptr %12, !1329, !DIExpression(), !1330)
  %14 = load ptr, ptr %4, align 8, !dbg !1331
  %15 = call noalias ptr @fread_file(ptr noundef %14, i32 noundef 0, ptr noundef %9), !dbg !1333
  store ptr %15, ptr %8, align 8, !dbg !1334
  %16 = icmp ne ptr %15, null, !dbg !1334
  br i1 %16, label %21, label %17, !dbg !1335

17:                                               ; preds = %3
  %18 = call ptr @__errno_location() #14, !dbg !1336
  %19 = load i32, ptr %18, align 4, !dbg !1336
  %20 = call ptr @gettext(ptr noundef @.str.31) #11, !dbg !1337
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %19, ptr noundef %20), !dbg !1338
  unreachable, !dbg !1338

21:                                               ; preds = %3
  %22 = load i64, ptr %9, align 8, !dbg !1339
  %23 = icmp ne i64 %22, 0, !dbg !1339
  br i1 %23, label %24, label %40, !dbg !1341

24:                                               ; preds = %21
  %25 = load ptr, ptr %8, align 8, !dbg !1342
  %26 = load i64, ptr %9, align 8, !dbg !1343
  %27 = sub i64 %26, 1, !dbg !1344
  %28 = getelementptr inbounds nuw i8, ptr %25, i64 %27, !dbg !1342
  %29 = load i8, ptr %28, align 1, !dbg !1342
  %30 = sext i8 %29 to i32, !dbg !1342
  %31 = load i8, ptr %5, align 1, !dbg !1345
  %32 = sext i8 %31 to i32, !dbg !1345
  %33 = icmp ne i32 %30, %32, !dbg !1346
  br i1 %33, label %34, label %40, !dbg !1341

34:                                               ; preds = %24
  %35 = load i8, ptr %5, align 1, !dbg !1347
  %36 = load ptr, ptr %8, align 8, !dbg !1348
  %37 = load i64, ptr %9, align 8, !dbg !1349
  %38 = add i64 %37, 1, !dbg !1349
  store i64 %38, ptr %9, align 8, !dbg !1349
  %39 = getelementptr inbounds nuw i8, ptr %36, i64 %37, !dbg !1348
  store i8 %35, ptr %39, align 1, !dbg !1350
  br label %40, !dbg !1348

40:                                               ; preds = %34, %24, %21
  %41 = load ptr, ptr %8, align 8, !dbg !1351
  %42 = load i64, ptr %9, align 8, !dbg !1352
  %43 = getelementptr inbounds nuw i8, ptr %41, i64 %42, !dbg !1353
  store ptr %43, ptr %10, align 8, !dbg !1354
  store i64 0, ptr %12, align 8, !dbg !1355
  %44 = load ptr, ptr %8, align 8, !dbg !1356
  store ptr %44, ptr %7, align 8, !dbg !1358
  br label %45, !dbg !1359

45:                                               ; preds = %52, %40
  %46 = load ptr, ptr %7, align 8, !dbg !1360
  %47 = load ptr, ptr %10, align 8, !dbg !1362
  %48 = icmp ult ptr %46, %47, !dbg !1363
  br i1 %48, label %49, label %56, !dbg !1364

49:                                               ; preds = %45
  %50 = load i64, ptr %12, align 8, !dbg !1365
  %51 = add i64 %50, 1, !dbg !1365
  store i64 %51, ptr %12, align 8, !dbg !1365
  br label %52, !dbg !1366

52:                                               ; preds = %49
  %53 = load ptr, ptr %7, align 8, !dbg !1367
  %54 = load i8, ptr %5, align 1, !dbg !1368
  %55 = call ptr @next_line(ptr noundef %53, i8 noundef signext %54), !dbg !1369
  store ptr %55, ptr %7, align 8, !dbg !1370
  br label %45, !dbg !1371, !llvm.loop !1372

56:                                               ; preds = %45
  %57 = load i64, ptr %12, align 8, !dbg !1374
  %58 = add i64 %57, 1, !dbg !1375
  %59 = call noalias nonnull ptr @xnmalloc(i64 noundef %58, i64 noundef 8) #17, !dbg !1376
  store ptr %59, ptr %11, align 8, !dbg !1377
  %60 = load ptr, ptr %6, align 8, !dbg !1378
  store ptr %59, ptr %60, align 8, !dbg !1379
  %61 = load ptr, ptr %8, align 8, !dbg !1380
  store ptr %61, ptr %7, align 8, !dbg !1381
  %62 = load ptr, ptr %11, align 8, !dbg !1382
  %63 = getelementptr inbounds ptr, ptr %62, i64 0, !dbg !1382
  store ptr %61, ptr %63, align 8, !dbg !1383
    #dbg_declare(ptr %13, !1384, !DIExpression(), !1386)
  store i64 1, ptr %13, align 8, !dbg !1386
  br label %64, !dbg !1387

64:                                               ; preds = %75, %56
  %65 = load i64, ptr %13, align 8, !dbg !1388
  %66 = load i64, ptr %12, align 8, !dbg !1390
  %67 = icmp ule i64 %65, %66, !dbg !1391
  br i1 %67, label %68, label %78, !dbg !1392

68:                                               ; preds = %64
  %69 = load ptr, ptr %7, align 8, !dbg !1393
  %70 = load i8, ptr %5, align 1, !dbg !1394
  %71 = call ptr @next_line(ptr noundef %69, i8 noundef signext %70), !dbg !1395
  store ptr %71, ptr %7, align 8, !dbg !1396
  %72 = load ptr, ptr %11, align 8, !dbg !1397
  %73 = load i64, ptr %13, align 8, !dbg !1398
  %74 = getelementptr inbounds nuw ptr, ptr %72, i64 %73, !dbg !1397
  store ptr %71, ptr %74, align 8, !dbg !1399
  br label %75, !dbg !1397

75:                                               ; preds = %68
  %76 = load i64, ptr %13, align 8, !dbg !1400
  %77 = add i64 %76, 1, !dbg !1400
  store i64 %77, ptr %13, align 8, !dbg !1400
  br label %64, !dbg !1401, !llvm.loop !1402

78:                                               ; preds = %64
  %79 = load i64, ptr %12, align 8, !dbg !1404
  ret i64 %79, !dbg !1405
}

declare noalias ptr @randint_all_new(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare i64 @randperm_bound(i64 noundef, i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_input_reservoir_sampling(ptr noundef %0, i8 noundef signext %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #3 !dbg !1406 {
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.linebuffer, align 8
  %17 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !1410, !DIExpression(), !1411)
  store i8 %1, ptr %7, align 1
    #dbg_declare(ptr %7, !1412, !DIExpression(), !1413)
  store i64 %2, ptr %8, align 8
    #dbg_declare(ptr %8, !1414, !DIExpression(), !1415)
  store ptr %3, ptr %9, align 8
    #dbg_declare(ptr %9, !1416, !DIExpression(), !1417)
  store ptr %4, ptr %10, align 8
    #dbg_declare(ptr %10, !1418, !DIExpression(), !1419)
    #dbg_declare(ptr %11, !1420, !DIExpression(), !1422)
  store i64 0, ptr %11, align 8, !dbg !1422
    #dbg_declare(ptr %12, !1423, !DIExpression(), !1424)
  store i64 0, ptr %12, align 8, !dbg !1424
    #dbg_declare(ptr %13, !1425, !DIExpression(), !1426)
  store ptr null, ptr %13, align 8, !dbg !1426
    #dbg_declare(ptr %14, !1427, !DIExpression(), !1428)
  store ptr null, ptr %14, align 8, !dbg !1428
  store i64 0, ptr %11, align 8, !dbg !1429
  br label %18, !dbg !1431

18:                                               ; preds = %49, %5
  %19 = load i64, ptr %11, align 8, !dbg !1432
  %20 = load i64, ptr %8, align 8, !dbg !1434
  %21 = icmp ult i64 %19, %20, !dbg !1435
  br i1 %21, label %22, label %52, !dbg !1436

22:                                               ; preds = %18
  %23 = load i64, ptr %11, align 8, !dbg !1437
  %24 = load i64, ptr %12, align 8, !dbg !1440
  %25 = icmp eq i64 %23, %24, !dbg !1441
  br i1 %25, label %26, label %38, !dbg !1441

26:                                               ; preds = %22
    #dbg_declare(ptr %15, !1442, !DIExpression(), !1444)
  %27 = load i64, ptr %12, align 8, !dbg !1445
  store i64 %27, ptr %15, align 8, !dbg !1444
  %28 = load ptr, ptr %14, align 8, !dbg !1446
  %29 = load i64, ptr %8, align 8, !dbg !1447
  %30 = call nonnull ptr @xpalloc(ptr noundef %28, ptr noundef %12, i64 noundef 1, i64 noundef %29, i64 noundef 24), !dbg !1448
  store ptr %30, ptr %14, align 8, !dbg !1449
  %31 = load ptr, ptr %14, align 8, !dbg !1450
  %32 = load i64, ptr %11, align 8, !dbg !1451
  %33 = getelementptr inbounds nuw %struct.linebuffer, ptr %31, i64 %32, !dbg !1450
  %34 = load i64, ptr %12, align 8, !dbg !1452
  %35 = load i64, ptr %15, align 8, !dbg !1453
  %36 = sub nsw i64 %34, %35, !dbg !1454
  %37 = mul i64 %36, 24, !dbg !1455
  call void @llvm.memset.p0.i64(ptr align 8 %33, i8 0, i64 %37, i1 false), !dbg !1456
  br label %38, !dbg !1457

38:                                               ; preds = %26, %22
  %39 = load ptr, ptr %14, align 8, !dbg !1458
  %40 = load i64, ptr %11, align 8, !dbg !1459
  %41 = getelementptr inbounds nuw %struct.linebuffer, ptr %39, i64 %40, !dbg !1458
  %42 = load ptr, ptr %6, align 8, !dbg !1460
  %43 = load i8, ptr %7, align 1, !dbg !1461
  %44 = call ptr @readlinebuffer_delim(ptr noundef %41, ptr noundef %42, i8 noundef signext %43), !dbg !1462
  store ptr %44, ptr %13, align 8, !dbg !1463
  %45 = load ptr, ptr %13, align 8, !dbg !1464
  %46 = icmp ne ptr %45, null, !dbg !1464
  br i1 %46, label %48, label %47, !dbg !1466

47:                                               ; preds = %38
  br label %52, !dbg !1467

48:                                               ; preds = %38
  br label %49, !dbg !1468

49:                                               ; preds = %48
  %50 = load i64, ptr %11, align 8, !dbg !1469
  %51 = add i64 %50, 1, !dbg !1469
  store i64 %51, ptr %11, align 8, !dbg !1469
  br label %18, !dbg !1470, !llvm.loop !1471

52:                                               ; preds = %47, %18
  %53 = load ptr, ptr %13, align 8, !dbg !1473
  %54 = icmp ne ptr %53, null, !dbg !1475
  br i1 %54, label %55, label %89, !dbg !1475

55:                                               ; preds = %52
    #dbg_declare(ptr %16, !1476, !DIExpression(), !1478)
  call void @initbuffer(ptr noundef %16), !dbg !1479
  br label %56, !dbg !1480

56:                                               ; preds = %81, %55
    #dbg_declare(ptr %17, !1481, !DIExpression(), !1483)
  %57 = load ptr, ptr %9, align 8, !dbg !1484
  %58 = load i64, ptr %11, align 8, !dbg !1485
  %59 = add i64 %58, 1, !dbg !1486
  %60 = call i64 @randint_choose(ptr noundef %57, i64 noundef %59), !dbg !1487
  store i64 %60, ptr %17, align 8, !dbg !1483
  %61 = load i64, ptr %17, align 8, !dbg !1488
  %62 = load i64, ptr %8, align 8, !dbg !1489
  %63 = icmp ult i64 %61, %62, !dbg !1490
  br i1 %63, label %64, label %68, !dbg !1491

64:                                               ; preds = %56
  %65 = load ptr, ptr %14, align 8, !dbg !1492
  %66 = load i64, ptr %17, align 8, !dbg !1493
  %67 = getelementptr inbounds nuw %struct.linebuffer, ptr %65, i64 %66, !dbg !1492
  br label %69, !dbg !1491

68:                                               ; preds = %56
  br label %69, !dbg !1491

69:                                               ; preds = %68, %64
  %70 = phi ptr [ %67, %64 ], [ %16, %68 ], !dbg !1491
  store ptr %70, ptr %13, align 8, !dbg !1494
  br label %71, !dbg !1495

71:                                               ; preds = %69
  %72 = load ptr, ptr %13, align 8, !dbg !1496
  %73 = load ptr, ptr %6, align 8, !dbg !1497
  %74 = load i8, ptr %7, align 1, !dbg !1498
  %75 = call ptr @readlinebuffer_delim(ptr noundef %72, ptr noundef %73, i8 noundef signext %74), !dbg !1499
  %76 = icmp ne ptr %75, null, !dbg !1500
  br i1 %76, label %77, label %81, !dbg !1501

77:                                               ; preds = %71
  %78 = load i64, ptr %11, align 8, !dbg !1502
  %79 = add i64 %78, 1, !dbg !1502
  store i64 %79, ptr %11, align 8, !dbg !1502
  %80 = icmp ne i64 %78, 0, !dbg !1501
  br label %81

81:                                               ; preds = %77, %71
  %82 = phi i1 [ false, %71 ], [ %80, %77 ], !dbg !1503
  br i1 %82, label %56, label %83, !dbg !1495, !llvm.loop !1504

83:                                               ; preds = %81
  %84 = load i64, ptr %11, align 8, !dbg !1506
  %85 = icmp ne i64 %84, 0, !dbg !1506
  br i1 %85, label %88, label %86, !dbg !1508

86:                                               ; preds = %83
  %87 = call ptr @gettext(ptr noundef @.str.79) #11, !dbg !1509
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 75, ptr noundef %87), !dbg !1510
  unreachable, !dbg !1510

88:                                               ; preds = %83
  call void @freebuffer(ptr noundef %16), !dbg !1511
  br label %89, !dbg !1512

89:                                               ; preds = %88, %52
  %90 = load ptr, ptr %6, align 8, !dbg !1513
  %91 = call i32 @ferror_unlocked(ptr noundef %90) #11, !dbg !1515
  %92 = icmp ne i32 %91, 0, !dbg !1515
  br i1 %92, label %93, label %97, !dbg !1515

93:                                               ; preds = %89
  %94 = call ptr @__errno_location() #14, !dbg !1516
  %95 = load i32, ptr %94, align 4, !dbg !1516
  %96 = call ptr @gettext(ptr noundef @.str.31) #11, !dbg !1517
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %95, ptr noundef %96), !dbg !1518
  unreachable, !dbg !1518

97:                                               ; preds = %89
  %98 = load ptr, ptr %14, align 8, !dbg !1519
  %99 = load ptr, ptr %10, align 8, !dbg !1520
  store ptr %98, ptr %99, align 8, !dbg !1521
  %100 = load i64, ptr %8, align 8, !dbg !1522
  %101 = load i64, ptr %11, align 8, !dbg !1523
  %102 = icmp ult i64 %100, %101, !dbg !1524
  br i1 %102, label %103, label %105, !dbg !1524

103:                                              ; preds = %97
  %104 = load i64, ptr %8, align 8, !dbg !1522
  br label %107, !dbg !1524

105:                                              ; preds = %97
  %106 = load i64, ptr %11, align 8, !dbg !1523
  br label %107, !dbg !1524

107:                                              ; preds = %105, %103
  %108 = phi i64 [ %104, %103 ], [ %106, %105 ], !dbg !1524
  ret i64 %108, !dbg !1525
}

declare i32 @rpl_fclose(ptr noundef) #2

declare noalias ptr @randperm_new(ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_random_numbers(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef signext %4) #3 !dbg !1526 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store ptr %0, ptr %7, align 8
    #dbg_declare(ptr %7, !1529, !DIExpression(), !1530)
  store i64 %1, ptr %8, align 8
    #dbg_declare(ptr %8, !1531, !DIExpression(), !1532)
  store i64 %2, ptr %9, align 8
    #dbg_declare(ptr %9, !1533, !DIExpression(), !1534)
  store i64 %3, ptr %10, align 8
    #dbg_declare(ptr %10, !1535, !DIExpression(), !1536)
  store i8 %4, ptr %11, align 1
    #dbg_declare(ptr %11, !1537, !DIExpression(), !1538)
    #dbg_declare(ptr %12, !1539, !DIExpression(), !1541)
  %15 = load i64, ptr %10, align 8, !dbg !1542
  %16 = load i64, ptr %9, align 8, !dbg !1543
  %17 = sub i64 %15, %16, !dbg !1544
  %18 = add i64 %17, 1, !dbg !1545
  store i64 %18, ptr %12, align 8, !dbg !1541
    #dbg_declare(ptr %13, !1546, !DIExpression(), !1548)
  store i64 0, ptr %13, align 8, !dbg !1548
  br label %19, !dbg !1549

19:                                               ; preds = %34, %5
  %20 = load i64, ptr %13, align 8, !dbg !1550
  %21 = load i64, ptr %8, align 8, !dbg !1552
  %22 = icmp ult i64 %20, %21, !dbg !1553
  br i1 %22, label %23, label %37, !dbg !1554

23:                                               ; preds = %19
    #dbg_declare(ptr %14, !1555, !DIExpression(), !1557)
  %24 = load i64, ptr %9, align 8, !dbg !1558
  %25 = load ptr, ptr %7, align 8, !dbg !1559
  %26 = load i64, ptr %12, align 8, !dbg !1560
  %27 = call i64 @randint_choose(ptr noundef %25, i64 noundef %26), !dbg !1561
  %28 = add i64 %24, %27, !dbg !1562
  store i64 %28, ptr %14, align 8, !dbg !1557
  %29 = load i64, ptr %14, align 8, !dbg !1563
  %30 = load i8, ptr %11, align 1, !dbg !1565
  %31 = call zeroext i1 @print_number(i64 noundef %29, i8 noundef signext %30), !dbg !1566
  br i1 %31, label %33, label %32, !dbg !1567

32:                                               ; preds = %23
  store i32 -1, ptr %6, align 4, !dbg !1568
  br label %38, !dbg !1568

33:                                               ; preds = %23
  br label %34, !dbg !1569

34:                                               ; preds = %33
  %35 = load i64, ptr %13, align 8, !dbg !1570
  %36 = add i64 %35, 1, !dbg !1570
  store i64 %36, ptr %13, align 8, !dbg !1570
  br label %19, !dbg !1571, !llvm.loop !1572

37:                                               ; preds = %19
  store i32 0, ptr %6, align 4, !dbg !1574
  br label %38, !dbg !1574

38:                                               ; preds = %37, %32
  %39 = load i32, ptr %6, align 4, !dbg !1575
  ret i32 %39, !dbg !1575
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_random_lines(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #3 !dbg !1576 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !1581, !DIExpression(), !1582)
  store i64 %1, ptr %7, align 8
    #dbg_declare(ptr %7, !1583, !DIExpression(), !1584)
  store ptr %2, ptr %8, align 8
    #dbg_declare(ptr %8, !1585, !DIExpression(), !1586)
  store i64 %3, ptr %9, align 8
    #dbg_declare(ptr %9, !1587, !DIExpression(), !1588)
    #dbg_declare(ptr %10, !1589, !DIExpression(), !1591)
  store i64 0, ptr %10, align 8, !dbg !1591
  br label %14, !dbg !1592

14:                                               ; preds = %44, %4
  %15 = load i64, ptr %10, align 8, !dbg !1593
  %16 = load i64, ptr %7, align 8, !dbg !1595
  %17 = icmp ult i64 %15, %16, !dbg !1596
  br i1 %17, label %18, label %47, !dbg !1597

18:                                               ; preds = %14
    #dbg_declare(ptr %11, !1598, !DIExpression(), !1600)
  %19 = load ptr, ptr %6, align 8, !dbg !1601
  %20 = load i64, ptr %9, align 8, !dbg !1602
  %21 = call i64 @randint_choose(ptr noundef %19, i64 noundef %20), !dbg !1603
  store i64 %21, ptr %11, align 8, !dbg !1600
    #dbg_declare(ptr %12, !1604, !DIExpression(), !1605)
  %22 = load ptr, ptr %8, align 8, !dbg !1606
  %23 = load i64, ptr %11, align 8, !dbg !1607
  %24 = getelementptr inbounds nuw ptr, ptr %22, i64 %23, !dbg !1608
  store ptr %24, ptr %12, align 8, !dbg !1605
    #dbg_declare(ptr %13, !1609, !DIExpression(), !1610)
  %25 = load ptr, ptr %12, align 8, !dbg !1611
  %26 = getelementptr inbounds ptr, ptr %25, i64 1, !dbg !1611
  %27 = load ptr, ptr %26, align 8, !dbg !1611
  %28 = load ptr, ptr %12, align 8, !dbg !1612
  %29 = getelementptr inbounds ptr, ptr %28, i64 0, !dbg !1612
  %30 = load ptr, ptr %29, align 8, !dbg !1612
  %31 = ptrtoint ptr %27 to i64, !dbg !1613
  %32 = ptrtoint ptr %30 to i64, !dbg !1613
  %33 = sub i64 %31, %32, !dbg !1613
  store i64 %33, ptr %13, align 8, !dbg !1610
  %34 = load ptr, ptr %12, align 8, !dbg !1614
  %35 = getelementptr inbounds ptr, ptr %34, i64 0, !dbg !1614
  %36 = load ptr, ptr %35, align 8, !dbg !1614
  %37 = load i64, ptr %13, align 8, !dbg !1616
  %38 = load ptr, ptr @stdout, align 8, !dbg !1617
  %39 = call i64 @fwrite_unlocked(ptr noundef %36, i64 noundef 1, i64 noundef %37, ptr noundef %38), !dbg !1618
  %40 = load i64, ptr %13, align 8, !dbg !1619
  %41 = icmp ne i64 %39, %40, !dbg !1620
  br i1 %41, label %42, label %43, !dbg !1620

42:                                               ; preds = %18
  store i32 -1, ptr %5, align 4, !dbg !1621
  br label %48, !dbg !1621

43:                                               ; preds = %18
  br label %44, !dbg !1622

44:                                               ; preds = %43
  %45 = load i64, ptr %10, align 8, !dbg !1623
  %46 = add i64 %45, 1, !dbg !1623
  store i64 %46, ptr %10, align 8, !dbg !1623
  br label %14, !dbg !1624, !llvm.loop !1625

47:                                               ; preds = %14
  store i32 0, ptr %5, align 4, !dbg !1627
  br label %48, !dbg !1627

48:                                               ; preds = %47, %42
  %49 = load i32, ptr %5, align 4, !dbg !1628
  ret i32 %49, !dbg !1628
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_permuted_output_reservoir(i64 noundef %0, ptr noundef %1, ptr noundef %2) #3 !dbg !1629 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store i64 %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1634, !DIExpression(), !1635)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1636, !DIExpression(), !1637)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1638, !DIExpression(), !1639)
    #dbg_declare(ptr %8, !1640, !DIExpression(), !1642)
  store i64 0, ptr %8, align 8, !dbg !1642
  br label %10, !dbg !1643

10:                                               ; preds = %35, %3
  %11 = load i64, ptr %8, align 8, !dbg !1644
  %12 = load i64, ptr %5, align 8, !dbg !1646
  %13 = icmp ult i64 %11, %12, !dbg !1647
  br i1 %13, label %14, label %38, !dbg !1648

14:                                               ; preds = %10
    #dbg_declare(ptr %9, !1649, !DIExpression(), !1653)
  %15 = load ptr, ptr %6, align 8, !dbg !1654
  %16 = load ptr, ptr %7, align 8, !dbg !1655
  %17 = load i64, ptr %8, align 8, !dbg !1656
  %18 = getelementptr inbounds nuw i64, ptr %16, i64 %17, !dbg !1655
  %19 = load i64, ptr %18, align 8, !dbg !1655
  %20 = getelementptr inbounds nuw %struct.linebuffer, ptr %15, i64 %19, !dbg !1654
  store ptr %20, ptr %9, align 8, !dbg !1653
  %21 = load ptr, ptr %9, align 8, !dbg !1657
  %22 = getelementptr inbounds nuw %struct.linebuffer, ptr %21, i32 0, i32 2, !dbg !1659
  %23 = load ptr, ptr %22, align 8, !dbg !1659
  %24 = load ptr, ptr %9, align 8, !dbg !1660
  %25 = getelementptr inbounds nuw %struct.linebuffer, ptr %24, i32 0, i32 1, !dbg !1661
  %26 = load i64, ptr %25, align 8, !dbg !1661
  %27 = load ptr, ptr @stdout, align 8, !dbg !1662
  %28 = call i64 @fwrite_unlocked(ptr noundef %23, i64 noundef 1, i64 noundef %26, ptr noundef %27), !dbg !1663
  %29 = load ptr, ptr %9, align 8, !dbg !1664
  %30 = getelementptr inbounds nuw %struct.linebuffer, ptr %29, i32 0, i32 1, !dbg !1665
  %31 = load i64, ptr %30, align 8, !dbg !1665
  %32 = icmp ne i64 %28, %31, !dbg !1666
  br i1 %32, label %33, label %34, !dbg !1666

33:                                               ; preds = %14
  store i32 -1, ptr %4, align 4, !dbg !1667
  br label %39, !dbg !1667

34:                                               ; preds = %14
  br label %35, !dbg !1668

35:                                               ; preds = %34
  %36 = load i64, ptr %8, align 8, !dbg !1669
  %37 = add i64 %36, 1, !dbg !1669
  store i64 %37, ptr %8, align 8, !dbg !1669
  br label %10, !dbg !1670, !llvm.loop !1671

38:                                               ; preds = %10
  store i32 0, ptr %4, align 4, !dbg !1673
  br label %39, !dbg !1673

39:                                               ; preds = %38, %33
  %40 = load i32, ptr %4, align 4, !dbg !1674
  ret i32 %40, !dbg !1674
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_permuted_numbers(i64 noundef %0, i64 noundef %1, ptr noundef %2, i8 noundef signext %3) #3 !dbg !1675 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, ptr %6, align 8
    #dbg_declare(ptr %6, !1678, !DIExpression(), !1679)
  store i64 %1, ptr %7, align 8
    #dbg_declare(ptr %7, !1680, !DIExpression(), !1681)
  store ptr %2, ptr %8, align 8
    #dbg_declare(ptr %8, !1682, !DIExpression(), !1683)
  store i8 %3, ptr %9, align 1
    #dbg_declare(ptr %9, !1684, !DIExpression(), !1685)
    #dbg_declare(ptr %10, !1686, !DIExpression(), !1688)
  store i64 0, ptr %10, align 8, !dbg !1688
  br label %12, !dbg !1689

12:                                               ; preds = %28, %4
  %13 = load i64, ptr %10, align 8, !dbg !1690
  %14 = load i64, ptr %6, align 8, !dbg !1692
  %15 = icmp ult i64 %13, %14, !dbg !1693
  br i1 %15, label %16, label %31, !dbg !1694

16:                                               ; preds = %12
    #dbg_declare(ptr %11, !1695, !DIExpression(), !1697)
  %17 = load i64, ptr %7, align 8, !dbg !1698
  %18 = load ptr, ptr %8, align 8, !dbg !1699
  %19 = load i64, ptr %10, align 8, !dbg !1700
  %20 = getelementptr inbounds nuw i64, ptr %18, i64 %19, !dbg !1699
  %21 = load i64, ptr %20, align 8, !dbg !1699
  %22 = add i64 %17, %21, !dbg !1701
  store i64 %22, ptr %11, align 8, !dbg !1697
  %23 = load i64, ptr %11, align 8, !dbg !1702
  %24 = load i8, ptr %9, align 1, !dbg !1704
  %25 = call zeroext i1 @print_number(i64 noundef %23, i8 noundef signext %24), !dbg !1705
  br i1 %25, label %27, label %26, !dbg !1706

26:                                               ; preds = %16
  store i32 -1, ptr %5, align 4, !dbg !1707
  br label %32, !dbg !1707

27:                                               ; preds = %16
  br label %28, !dbg !1708

28:                                               ; preds = %27
  %29 = load i64, ptr %10, align 8, !dbg !1709
  %30 = add i64 %29, 1, !dbg !1709
  store i64 %30, ptr %10, align 8, !dbg !1709
  br label %12, !dbg !1710, !llvm.loop !1711

31:                                               ; preds = %12
  store i32 0, ptr %5, align 4, !dbg !1713
  br label %32, !dbg !1713

32:                                               ; preds = %31, %26
  %33 = load i32, ptr %5, align 4, !dbg !1714
  ret i32 %33, !dbg !1714
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_permuted_lines(i64 noundef %0, ptr noundef %1, ptr noundef %2) #3 !dbg !1715 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  store i64 %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1718, !DIExpression(), !1719)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1720, !DIExpression(), !1721)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1722, !DIExpression(), !1723)
    #dbg_declare(ptr %8, !1724, !DIExpression(), !1726)
  store i64 0, ptr %8, align 8, !dbg !1726
  br label %11, !dbg !1727

11:                                               ; preds = %41, %3
  %12 = load i64, ptr %8, align 8, !dbg !1728
  %13 = load i64, ptr %5, align 8, !dbg !1730
  %14 = icmp ult i64 %12, %13, !dbg !1731
  br i1 %14, label %15, label %44, !dbg !1732

15:                                               ; preds = %11
    #dbg_declare(ptr %9, !1733, !DIExpression(), !1735)
  %16 = load ptr, ptr %6, align 8, !dbg !1736
  %17 = load ptr, ptr %7, align 8, !dbg !1737
  %18 = load i64, ptr %8, align 8, !dbg !1738
  %19 = getelementptr inbounds nuw i64, ptr %17, i64 %18, !dbg !1737
  %20 = load i64, ptr %19, align 8, !dbg !1737
  %21 = getelementptr inbounds nuw ptr, ptr %16, i64 %20, !dbg !1739
  store ptr %21, ptr %9, align 8, !dbg !1735
    #dbg_declare(ptr %10, !1740, !DIExpression(), !1741)
  %22 = load ptr, ptr %9, align 8, !dbg !1742
  %23 = getelementptr inbounds ptr, ptr %22, i64 1, !dbg !1742
  %24 = load ptr, ptr %23, align 8, !dbg !1742
  %25 = load ptr, ptr %9, align 8, !dbg !1743
  %26 = getelementptr inbounds ptr, ptr %25, i64 0, !dbg !1743
  %27 = load ptr, ptr %26, align 8, !dbg !1743
  %28 = ptrtoint ptr %24 to i64, !dbg !1744
  %29 = ptrtoint ptr %27 to i64, !dbg !1744
  %30 = sub i64 %28, %29, !dbg !1744
  store i64 %30, ptr %10, align 8, !dbg !1741
  %31 = load ptr, ptr %9, align 8, !dbg !1745
  %32 = getelementptr inbounds ptr, ptr %31, i64 0, !dbg !1745
  %33 = load ptr, ptr %32, align 8, !dbg !1745
  %34 = load i64, ptr %10, align 8, !dbg !1747
  %35 = load ptr, ptr @stdout, align 8, !dbg !1748
  %36 = call i64 @fwrite_unlocked(ptr noundef %33, i64 noundef 1, i64 noundef %34, ptr noundef %35), !dbg !1749
  %37 = load i64, ptr %10, align 8, !dbg !1750
  %38 = icmp ne i64 %36, %37, !dbg !1751
  br i1 %38, label %39, label %40, !dbg !1751

39:                                               ; preds = %15
  store i32 -1, ptr %4, align 4, !dbg !1752
  br label %45, !dbg !1752

40:                                               ; preds = %15
  br label %41, !dbg !1753

41:                                               ; preds = %40
  %42 = load i64, ptr %8, align 8, !dbg !1754
  %43 = add i64 %42, 1, !dbg !1754
  store i64 %43, ptr %8, align 8, !dbg !1754
  br label %11, !dbg !1755, !llvm.loop !1756

44:                                               ; preds = %11
  store i32 0, ptr %4, align 4, !dbg !1758
  br label %45, !dbg !1758

45:                                               ; preds = %44, %39
  %46 = load i32, ptr %4, align 4, !dbg !1759
  ret i32 %46, !dbg !1759
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_error() #3 !dbg !1760 {
  %1 = alloca i32, align 4
    #dbg_declare(ptr %1, !1761, !DIExpression(), !1762)
  %2 = call ptr @__errno_location() #14, !dbg !1763
  %3 = load i32, ptr %2, align 4, !dbg !1763
  store i32 %3, ptr %1, align 4, !dbg !1762
  %4 = load ptr, ptr @stdout, align 8, !dbg !1764
  %5 = call i32 @fflush_unlocked(ptr noundef %4), !dbg !1765
  %6 = load ptr, ptr @stdout, align 8, !dbg !1766
  %7 = call i32 @fpurge(ptr noundef %6), !dbg !1767
  %8 = load ptr, ptr @stdout, align 8, !dbg !1768
  call void @clearerr_unlocked(ptr noundef %8) #11, !dbg !1769
  %9 = load i32, ptr %1, align 4, !dbg !1770
  %10 = call ptr @gettext(ptr noundef @.str.80) #11, !dbg !1771
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %9, ptr noundef %10), !dbg !1772
  unreachable, !dbg !1772
}

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #1

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

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #6

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @xmalloc(i64 noundef) #8

; Function Attrs: nounwind
declare ptr @stpcpy(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @fstat(i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @usable_st_size(ptr noundef %0) #3 !dbg !1773 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1778, !DIExpression(), !1779)
  %3 = load ptr, ptr %2, align 8, !dbg !1780
  %4 = getelementptr inbounds nuw %struct.stat, ptr %3, i32 0, i32 3, !dbg !1781
  %5 = load i32, ptr %4, align 8, !dbg !1781
  %6 = and i32 %5, 61440, !dbg !1782
  %7 = icmp eq i32 %6, 32768, !dbg !1782
  br i1 %7, label %24, label %8, !dbg !1783

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8, !dbg !1784
  %10 = getelementptr inbounds nuw %struct.stat, ptr %9, i32 0, i32 3, !dbg !1785
  %11 = load i32, ptr %10, align 8, !dbg !1785
  %12 = and i32 %11, 61440, !dbg !1786
  %13 = icmp eq i32 %12, 40960, !dbg !1786
  br i1 %13, label %24, label %14, !dbg !1787

14:                                               ; preds = %8
  %15 = load ptr, ptr %2, align 8, !dbg !1788
  %16 = getelementptr inbounds nuw %struct.stat, ptr %15, i32 0, i32 3, !dbg !1789
  %17 = load i32, ptr %16, align 8, !dbg !1789
  %18 = load ptr, ptr %2, align 8, !dbg !1788
  %19 = getelementptr inbounds nuw %struct.stat, ptr %18, i32 0, i32 3, !dbg !1789
  %20 = load i32, ptr %19, align 8, !dbg !1789
  %21 = sub i32 %17, %20, !dbg !1789
  %22 = icmp ne i32 %21, 0, !dbg !1789
  br i1 %22, label %24, label %23, !dbg !1790

23:                                               ; preds = %14
  br label %24, !dbg !1790

24:                                               ; preds = %23, %14, %8, %1
  %25 = phi i1 [ true, %14 ], [ true, %8 ], [ true, %1 ], [ false, %23 ]
  ret i1 %25, !dbg !1791
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #1

declare noalias ptr @fread_file(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @next_line(ptr noundef %0, i8 noundef signext %1) #3 !dbg !1792 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1795, !DIExpression(), !1796)
  store i8 %1, ptr %4, align 1
    #dbg_declare(ptr %4, !1797, !DIExpression(), !1798)
    #dbg_declare(ptr %5, !1799, !DIExpression(), !1800)
  %6 = load ptr, ptr %3, align 8, !dbg !1801
  %7 = load i8, ptr %4, align 1, !dbg !1802
  %8 = sext i8 %7 to i32, !dbg !1802
  %9 = call ptr @rawmemchr(ptr noundef %6, i32 noundef %8) #13, !dbg !1803
  store ptr %9, ptr %5, align 8, !dbg !1800
  %10 = load ptr, ptr %5, align 8, !dbg !1804
  %11 = getelementptr inbounds i8, ptr %10, i64 1, !dbg !1805
  ret ptr %11, !dbg !1806
}

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @xnmalloc(i64 noundef, i64 noundef) #9

; Function Attrs: nounwind willreturn memory(read)
declare ptr @rawmemchr(ptr noundef, i32 noundef) #6

declare nonnull ptr @xpalloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare ptr @readlinebuffer_delim(ptr noundef, ptr noundef, i8 noundef signext) #2

declare void @initbuffer(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @randint_choose(ptr noundef %0, i64 noundef %1) #3 !dbg !1807 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1810, !DIExpression(), !1811)
  store i64 %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1812, !DIExpression(), !1813)
  %5 = load ptr, ptr %3, align 8, !dbg !1814
  %6 = load i64, ptr %4, align 8, !dbg !1815
  %7 = sub i64 %6, 1, !dbg !1816
  %8 = call i64 @randint_genmax(ptr noundef %5, i64 noundef %7), !dbg !1817
  ret i64 %8, !dbg !1818
}

declare void @freebuffer(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(ptr noundef) #1

declare i64 @randint_genmax(ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @print_number(i64 noundef %0, i8 noundef signext %1) #3 !dbg !1819 {
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca [21 x i8], align 16
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1822, !DIExpression(), !1823)
  store i8 %1, ptr %4, align 1
    #dbg_declare(ptr %4, !1824, !DIExpression(), !1825)
    #dbg_declare(ptr %5, !1826, !DIExpression(), !1827)
    #dbg_declare(ptr %6, !1828, !DIExpression(), !1829)
  %8 = getelementptr inbounds [21 x i8], ptr %5, i64 0, i64 0, !dbg !1830
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 20, !dbg !1831
  store ptr %9, ptr %6, align 8, !dbg !1829
  %10 = load i8, ptr %4, align 1, !dbg !1832
  %11 = load ptr, ptr %6, align 8, !dbg !1833
  store i8 %10, ptr %11, align 1, !dbg !1834
  br label %12, !dbg !1835

12:                                               ; preds = %19, %2
  %13 = load i64, ptr %3, align 8, !dbg !1836
  %14 = urem i64 %13, 10, !dbg !1837
  %15 = add i64 48, %14, !dbg !1838
  %16 = trunc i64 %15 to i8, !dbg !1839
  %17 = load ptr, ptr %6, align 8, !dbg !1840
  %18 = getelementptr inbounds i8, ptr %17, i32 -1, !dbg !1840
  store ptr %18, ptr %6, align 8, !dbg !1840
  store i8 %16, ptr %18, align 1, !dbg !1841
  br label %19, !dbg !1842

19:                                               ; preds = %12
  %20 = load i64, ptr %3, align 8, !dbg !1843
  %21 = udiv i64 %20, 10, !dbg !1843
  store i64 %21, ptr %3, align 8, !dbg !1843
  %22 = icmp ne i64 %21, 0, !dbg !1844
  br i1 %22, label %12, label %23, !dbg !1842, !llvm.loop !1845

23:                                               ; preds = %19
    #dbg_declare(ptr %7, !1847, !DIExpression(), !1848)
  %24 = getelementptr inbounds [21 x i8], ptr %5, i64 0, i64 0, !dbg !1849
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 21, !dbg !1850
  %26 = load ptr, ptr %6, align 8, !dbg !1851
  %27 = ptrtoint ptr %25 to i64, !dbg !1852
  %28 = ptrtoint ptr %26 to i64, !dbg !1852
  %29 = sub i64 %27, %28, !dbg !1852
  store i64 %29, ptr %7, align 8, !dbg !1848
  %30 = load ptr, ptr %6, align 8, !dbg !1853
  %31 = load i64, ptr %7, align 8, !dbg !1854
  %32 = load ptr, ptr @stdout, align 8, !dbg !1855
  %33 = call i64 @fwrite_unlocked(ptr noundef %30, i64 noundef 1, i64 noundef %31, ptr noundef %32), !dbg !1856
  %34 = load i64, ptr %7, align 8, !dbg !1857
  %35 = icmp eq i64 %33, %34, !dbg !1858
  ret i1 %35, !dbg !1859
}

declare i32 @fflush_unlocked(ptr noundef) #2

declare i32 @fpurge(ptr noundef) #2

; Function Attrs: nounwind
declare void @clearerr_unlocked(ptr noundef) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { noreturn }
attributes #16 = { allocsize(0) }
attributes #17 = { allocsize(0,1) }

!llvm.dbg.cu = !{!172}
!llvm.module.flags = !{!374, !375, !376, !377, !378, !379, !380}
!llvm.ident = !{!381}

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
!132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 539, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 2)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !2, line: 540, type: !133, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !2, line: 541, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 3)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !2, line: 568, type: !71, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !2, line: 583, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 11)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !2, line: 588, type: !133, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !2, line: 599, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 19)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !159, line: 748, type: !34, isLocal: true, isDefinition: true)
!159 = !DIFile(filename: "src/system.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "6a9c30566098770bfb4561b49834f302")
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !159, line: 755, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 75)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !167, file: !159, line: 594, type: !187, isLocal: true, isDefinition: true)
!167 = distinct !DISubprogram(name: "oputs_", scope: !159, file: !159, line: 592, type: !168, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !172, retainedNodes: !373)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !170, !170}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!172 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !173, retainedTypes: !232, globals: !242, splitDebugInlining: false, nameTableKind: None)
!173 = !{!174, !183, !186, !191, !205, !214, !217}
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !175, line: 30, baseType: !176, size: 32, elements: !177)
!175 = !DIFile(filename: "./lib/xstrtol.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!176 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!177 = !{!178, !179, !180, !181, !182}
!178 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!179 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!180 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!181 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!182 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 100, baseType: !176, size: 32, elements: !184)
!184 = !{!185}
!185 = !DIEnumerator(name: "RANDOM_SOURCE_OPTION", value: 128)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !159, line: 356, baseType: !187, size: 32, elements: !188)
!187 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!188 = !{!189, !190}
!189 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!190 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !192, line: 42, baseType: !176, size: 32, elements: !193)
!192 = !DIFile(filename: "./lib/quotearg.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204}
!194 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!195 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!196 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!197 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!198 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!199 = !DIEnumerator(name: "c_quoting_style", value: 5)
!200 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!201 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!202 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!203 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!204 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !206, line: 44, baseType: !176, size: 32, elements: !207)
!206 = !DIFile(filename: "./lib/fadvise.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!207 = !{!208, !209, !210, !211, !212, !213}
!208 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!209 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!210 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!211 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!212 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!213 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 46, baseType: !176, size: 32, elements: !215)
!215 = !{!216}
!216 = !DIEnumerator(name: "RESERVOIR_MIN_INPUT", value: 8388608)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !218, line: 46, baseType: !176, size: 32, elements: !219)
!218 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231}
!220 = !DIEnumerator(name: "_ISupper", value: 256)
!221 = !DIEnumerator(name: "_ISlower", value: 512)
!222 = !DIEnumerator(name: "_ISalpha", value: 1024)
!223 = !DIEnumerator(name: "_ISdigit", value: 2048)
!224 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!225 = !DIEnumerator(name: "_ISspace", value: 8192)
!226 = !DIEnumerator(name: "_ISprint", value: 16384)
!227 = !DIEnumerator(name: "_ISgraph", value: 32768)
!228 = !DIEnumerator(name: "_ISblank", value: 1)
!229 = !DIEnumerator(name: "_IScntrl", value: 2)
!230 = !DIEnumerator(name: "_ISpunct", value: 4)
!231 = !DIEnumerator(name: "_ISalnum", value: 8)
!232 = !{!233, !234, !187, !235, !236, !241}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!235 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !237, line: 85, baseType: !238)
!237 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !239, line: 152, baseType: !240)
!239 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!240 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!241 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!242 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !44, !49, !54, !59, !64, !69, !74, !79, !81, !86, !91, !96, !101, !106, !111, !116, !121, !126, !131, !136, !138, !143, !145, !150, !152, !157, !160, !165, !243, !245, !247, !252, !257, !259, !261, !263, !265, !267, !269, !271, !273, !278, !280, !282, !284, !286, !288, !290, !292, !297, !302, !304, !306, !308, !310, !312, !317, !322, !324, !329, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !366, !371}
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !159, line: 604, type: !19, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !159, line: 605, type: !19, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !159, line: 614, type: !249, isLocal: true, isDefinition: true)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 4)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !159, line: 639, type: !254, isLocal: true, isDefinition: true)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 6)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !159, line: 667, type: !133, isLocal: true, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !159, line: 667, type: !19, isLocal: true, isDefinition: true)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !159, line: 668, type: !249, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !159, line: 668, type: !140, isLocal: true, isDefinition: true)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !159, line: 669, type: !19, isLocal: true, isDefinition: true)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !159, line: 670, type: !254, isLocal: true, isDefinition: true)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !159, line: 670, type: !254, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !159, line: 671, type: !88, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !159, line: 672, type: !275, isLocal: true, isDefinition: true)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 8)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !159, line: 673, type: !71, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !159, line: 674, type: !71, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !159, line: 675, type: !71, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !159, line: 676, type: !71, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !159, line: 682, type: !88, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !159, line: 683, type: !71, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !159, line: 688, type: !128, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !159, line: 688, type: !294, isLocal: true, isDefinition: true)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 40)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !159, line: 695, type: !299, isLocal: true, isDefinition: true)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 15)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !159, line: 695, type: !24, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !159, line: 698, type: !140, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !159, line: 702, type: !19, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !159, line: 707, type: !19, isLocal: true, isDefinition: true)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !159, line: 710, type: !275, isLocal: true, isDefinition: true)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !159, line: 858, type: !314, isLocal: true, isDefinition: true)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 16)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !159, line: 859, type: !319, isLocal: true, isDefinition: true)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 22)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !159, line: 860, type: !299, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !159, line: 882, type: !326, isLocal: true, isDefinition: true)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 27)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !159, line: 884, type: !331, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 51)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !159, line: 885, type: !118, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !19, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !118, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !147, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !88, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !113, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !88, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !314, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !19, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !275, isLocal: true, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(name: "long_opts", scope: !172, file: !2, line: 105, type: !356, isLocal: true, isDefinition: true)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 2560, elements: !72)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !359, line: 50, size: 256, elements: !360)
!359 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!360 = !{!361, !362, !363, !365}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !358, file: !359, line: 52, baseType: !170, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !358, file: !359, line: 55, baseType: !187, size: 32, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !358, file: !359, line: 56, baseType: !364, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !358, file: !359, line: 57, baseType: !187, size: 32, offset: 192)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !368, isLocal: true, isDefinition: true)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 21)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !159, line: 959, type: !118, isLocal: true, isDefinition: true)
!373 = !{}
!374 = !{i32 7, !"Dwarf Version", i32 5}
!375 = !{i32 2, !"Debug Info Version", i32 3}
!376 = !{i32 1, !"wchar_size", i32 4}
!377 = !{i32 8, !"PIC Level", i32 2}
!378 = !{i32 7, !"PIE Level", i32 2}
!379 = !{i32 7, !"uwtable", i32 2}
!380 = !{i32 7, !"frame-pointer", i32 2}
!381 = !{!"Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)"}
!382 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 50, type: !383, scopeLine: 51, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !172, retainedNodes: !373)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !187}
!385 = !DILocalVariable(name: "status", arg: 1, scope: !382, file: !2, line: 50, type: !187)
!386 = !DILocation(line: 50, column: 12, scope: !382)
!387 = !DILocation(line: 52, column: 7, scope: !388)
!388 = distinct !DILexicalBlock(scope: !382, file: !2, line: 52, column: 7)
!389 = !DILocation(line: 52, column: 14, scope: !388)
!390 = !DILocation(line: 53, column: 5, scope: !388)
!391 = !DILocation(line: 53, column: 5, scope: !392)
!392 = distinct !DILexicalBlock(scope: !388, file: !2, line: 53, column: 5)
!393 = !DILocation(line: 56, column: 15, scope: !394)
!394 = distinct !DILexicalBlock(scope: !388, file: !2, line: 55, column: 5)
!395 = !DILocation(line: 61, column: 15, scope: !394)
!396 = !DILocation(line: 61, column: 29, scope: !394)
!397 = !DILocation(line: 61, column: 43, scope: !394)
!398 = !DILocation(line: 56, column: 7, scope: !394)
!399 = !DILocation(line: 62, column: 14, scope: !394)
!400 = !DILocation(line: 64, column: 5, scope: !394)
!401 = !DILocation(line: 62, column: 7, scope: !394)
!402 = !DILocation(line: 66, column: 7, scope: !394)
!403 = !DILocation(line: 67, column: 7, scope: !394)
!404 = !DILocation(line: 69, column: 14, scope: !394)
!405 = !DILocation(line: 69, column: 7, scope: !394)
!406 = !DILocation(line: 72, column: 14, scope: !394)
!407 = !DILocation(line: 72, column: 7, scope: !394)
!408 = !DILocation(line: 75, column: 14, scope: !394)
!409 = !DILocation(line: 75, column: 7, scope: !394)
!410 = !DILocation(line: 78, column: 14, scope: !394)
!411 = !DILocation(line: 78, column: 7, scope: !394)
!412 = !DILocation(line: 81, column: 14, scope: !394)
!413 = !DILocation(line: 81, column: 7, scope: !394)
!414 = !DILocation(line: 84, column: 14, scope: !394)
!415 = !DILocation(line: 84, column: 7, scope: !394)
!416 = !DILocation(line: 87, column: 14, scope: !394)
!417 = !DILocation(line: 87, column: 7, scope: !394)
!418 = !DILocation(line: 90, column: 14, scope: !394)
!419 = !DILocation(line: 90, column: 7, scope: !394)
!420 = !DILocation(line: 91, column: 14, scope: !394)
!421 = !DILocation(line: 91, column: 7, scope: !394)
!422 = !DILocation(line: 92, column: 7, scope: !394)
!423 = !DILocation(line: 95, column: 9, scope: !382)
!424 = !DILocation(line: 95, column: 3, scope: !382)
!425 = distinct !DISubprogram(name: "emit_stdin_note", scope: !159, file: !159, line: 746, type: !426, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !172)
!426 = !DISubroutineType(types: !427)
!427 = !{null}
!428 = !DILocation(line: 748, column: 10, scope: !425)
!429 = !DILocation(line: 750, column: 5, scope: !425)
!430 = !DILocation(line: 748, column: 3, scope: !425)
!431 = !DILocation(line: 751, column: 1, scope: !425)
!432 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !159, file: !159, line: 753, type: !426, scopeLine: 754, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !172)
!433 = !DILocation(line: 755, column: 10, scope: !432)
!434 = !DILocation(line: 757, column: 5, scope: !432)
!435 = !DILocation(line: 755, column: 3, scope: !432)
!436 = !DILocation(line: 758, column: 1, scope: !432)
!437 = !DILocalVariable(name: "program", arg: 1, scope: !167, file: !159, line: 592, type: !170)
!438 = !DILocation(line: 592, column: 34, scope: !167)
!439 = !DILocalVariable(name: "option", arg: 2, scope: !167, file: !159, line: 592, type: !170)
!440 = !DILocation(line: 592, column: 55, scope: !167)
!441 = !DILocation(line: 600, column: 7, scope: !442)
!442 = distinct !DILexicalBlock(scope: !167, file: !159, line: 600, column: 7)
!443 = !DILocation(line: 600, column: 19, scope: !442)
!444 = !DILocalVariable(name: "term", scope: !445, file: !159, line: 604, type: !170)
!445 = distinct !DILexicalBlock(scope: !442, file: !159, line: 601, column: 5)
!446 = !DILocation(line: 604, column: 19, scope: !445)
!447 = !DILocation(line: 604, column: 26, scope: !445)
!448 = !DILocation(line: 605, column: 23, scope: !445)
!449 = !DILocation(line: 605, column: 28, scope: !445)
!450 = !DILocation(line: 605, column: 33, scope: !445)
!451 = !DILocation(line: 605, column: 32, scope: !445)
!452 = !DILocation(line: 605, column: 38, scope: !445)
!453 = !DILocation(line: 605, column: 48, scope: !445)
!454 = !DILocation(line: 605, column: 41, scope: !445)
!455 = !DILocation(line: 605, column: 19, scope: !445)
!456 = !DILocation(line: 606, column: 5, scope: !445)
!457 = !DILocation(line: 607, column: 7, scope: !458)
!458 = distinct !DILexicalBlock(scope: !167, file: !159, line: 607, column: 7)
!459 = !DILocation(line: 609, column: 14, scope: !460)
!460 = distinct !DILexicalBlock(scope: !458, file: !159, line: 608, column: 5)
!461 = !DILocation(line: 609, column: 22, scope: !460)
!462 = !DILocation(line: 609, column: 7, scope: !460)
!463 = !DILocation(line: 610, column: 7, scope: !460)
!464 = !DILocalVariable(name: "double_space", scope: !167, file: !159, line: 613, type: !465)
!465 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!466 = !DILocation(line: 613, column: 8, scope: !167)
!467 = !DILocalVariable(name: "first_word", scope: !167, file: !159, line: 614, type: !170)
!468 = !DILocation(line: 614, column: 15, scope: !167)
!469 = !DILocation(line: 614, column: 28, scope: !167)
!470 = !DILocation(line: 614, column: 45, scope: !167)
!471 = !DILocation(line: 614, column: 37, scope: !167)
!472 = !DILocation(line: 614, column: 35, scope: !167)
!473 = !DILocalVariable(name: "option_text", scope: !167, file: !159, line: 615, type: !170)
!474 = !DILocation(line: 615, column: 15, scope: !167)
!475 = !DILocation(line: 615, column: 37, scope: !167)
!476 = !DILocation(line: 615, column: 29, scope: !167)
!477 = !DILocation(line: 616, column: 8, scope: !478)
!478 = distinct !DILexicalBlock(scope: !167, file: !159, line: 616, column: 7)
!479 = !DILocation(line: 616, column: 7, scope: !478)
!480 = !DILocation(line: 618, column: 21, scope: !481)
!481 = distinct !DILexicalBlock(scope: !478, file: !159, line: 617, column: 5)
!482 = !DILocation(line: 618, column: 19, scope: !481)
!483 = !DILocation(line: 621, column: 20, scope: !481)
!484 = !DILocation(line: 622, column: 5, scope: !481)
!485 = !DILocation(line: 623, column: 12, scope: !486)
!486 = distinct !DILexicalBlock(scope: !478, file: !159, line: 623, column: 12)
!487 = !DILocation(line: 623, column: 27, scope: !486)
!488 = !DILocation(line: 623, column: 24, scope: !486)
!489 = !DILocalVariable(name: "s", scope: !490, file: !159, line: 627, type: !170)
!490 = distinct !DILexicalBlock(scope: !486, file: !159, line: 624, column: 5)
!491 = !DILocation(line: 627, column: 19, scope: !490)
!492 = !DILocation(line: 627, column: 23, scope: !490)
!493 = !DILocalVariable(name: "spaces", scope: !490, file: !159, line: 628, type: !494)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !495, line: 18, baseType: !241)
!495 = !DIFile(filename: "/usr/lib/llvm-22/lib/clang/22/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!496 = !DILocation(line: 628, column: 14, scope: !490)
!497 = !DILocation(line: 629, column: 7, scope: !490)
!498 = !DILocation(line: 629, column: 14, scope: !490)
!499 = !DILocation(line: 629, column: 18, scope: !490)
!500 = !DILocation(line: 629, column: 16, scope: !490)
!501 = !DILocation(line: 629, column: 30, scope: !490)
!502 = !DILocation(line: 629, column: 33, scope: !490)
!503 = !DILocation(line: 629, column: 40, scope: !490)
!504 = !DILocation(line: 0, scope: !490)
!505 = !DILocation(line: 630, column: 21, scope: !490)
!506 = !DILocation(line: 630, column: 32, scope: !490)
!507 = !DILocation(line: 630, column: 30, scope: !490)
!508 = !DILocation(line: 630, column: 20, scope: !490)
!509 = !DILocation(line: 630, column: 19, scope: !490)
!510 = !DILocation(line: 630, column: 16, scope: !490)
!511 = distinct !{!511, !497, !505, !512}
!512 = !{!"llvm.loop.mustprogress"}
!513 = !DILocation(line: 631, column: 11, scope: !514)
!514 = distinct !DILexicalBlock(scope: !490, file: !159, line: 631, column: 11)
!515 = !DILocation(line: 631, column: 18, scope: !514)
!516 = !DILocation(line: 634, column: 25, scope: !517)
!517 = distinct !DILexicalBlock(scope: !514, file: !159, line: 632, column: 9)
!518 = !DILocation(line: 634, column: 23, scope: !517)
!519 = !DILocation(line: 635, column: 24, scope: !517)
!520 = !DILocation(line: 636, column: 9, scope: !517)
!521 = !DILocation(line: 637, column: 5, scope: !490)
!522 = !DILocalVariable(name: "anchor_len", scope: !167, file: !159, line: 639, type: !494)
!523 = !DILocation(line: 639, column: 10, scope: !167)
!524 = !DILocation(line: 639, column: 32, scope: !167)
!525 = !DILocation(line: 639, column: 23, scope: !167)
!526 = !DILocalVariable(name: "desc_text", scope: !167, file: !159, line: 644, type: !170)
!527 = !DILocation(line: 644, column: 15, scope: !167)
!528 = !DILocation(line: 644, column: 27, scope: !167)
!529 = !DILocation(line: 644, column: 41, scope: !167)
!530 = !DILocation(line: 644, column: 39, scope: !167)
!531 = !DILocation(line: 645, column: 3, scope: !167)
!532 = !DILocation(line: 645, column: 11, scope: !167)
!533 = !DILocation(line: 645, column: 10, scope: !167)
!534 = !DILocation(line: 645, column: 21, scope: !167)
!535 = !DILocation(line: 645, column: 25, scope: !167)
!536 = !DILocation(line: 645, column: 24, scope: !167)
!537 = !DILocation(line: 645, column: 35, scope: !167)
!538 = !DILocation(line: 0, scope: !167)
!539 = !DILocation(line: 647, column: 12, scope: !540)
!540 = distinct !DILexicalBlock(scope: !541, file: !159, line: 647, column: 11)
!541 = distinct !DILexicalBlock(scope: !167, file: !159, line: 646, column: 5)
!542 = !DILocation(line: 647, column: 11, scope: !540)
!543 = !DILocation(line: 647, column: 22, scope: !540)
!544 = !DILocation(line: 647, column: 29, scope: !540)
!545 = !DILocation(line: 647, column: 34, scope: !540)
!546 = !DILocation(line: 647, column: 32, scope: !540)
!547 = !DILocation(line: 647, column: 49, scope: !540)
!548 = !DILocation(line: 648, column: 22, scope: !540)
!549 = !DILocation(line: 648, column: 9, scope: !540)
!550 = !DILocation(line: 649, column: 11, scope: !551)
!551 = distinct !DILexicalBlock(scope: !541, file: !159, line: 649, column: 11)
!552 = !DILocation(line: 649, column: 21, scope: !551)
!553 = !DILocation(line: 649, column: 20, scope: !551)
!554 = !DILocation(line: 651, column: 16, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !159, line: 651, column: 15)
!556 = distinct !DILexicalBlock(scope: !551, file: !159, line: 650, column: 9)
!557 = !DILocation(line: 651, column: 15, scope: !555)
!558 = !DILocation(line: 651, column: 26, scope: !555)
!559 = !DILocation(line: 651, column: 34, scope: !555)
!560 = !DILocation(line: 651, column: 37, scope: !555)
!561 = !DILocation(line: 651, column: 48, scope: !555)
!562 = !DILocation(line: 651, column: 46, scope: !555)
!563 = !DILocation(line: 652, column: 13, scope: !555)
!564 = !DILocation(line: 655, column: 16, scope: !565)
!565 = distinct !DILexicalBlock(scope: !556, file: !159, line: 655, column: 15)
!566 = !DILocation(line: 655, column: 29, scope: !565)
!567 = !DILocation(line: 655, column: 34, scope: !565)
!568 = !DILocation(line: 655, column: 32, scope: !565)
!569 = !DILocation(line: 655, column: 49, scope: !565)
!570 = !DILocation(line: 656, column: 13, scope: !565)
!571 = !DILocation(line: 657, column: 9, scope: !556)
!572 = !DILocation(line: 659, column: 16, scope: !541)
!573 = distinct !{!573, !531, !574, !512}
!574 = !DILocation(line: 660, column: 5, scope: !167)
!575 = !DILocation(line: 663, column: 11, scope: !167)
!576 = !DILocation(line: 663, column: 22, scope: !167)
!577 = !DILocation(line: 663, column: 35, scope: !167)
!578 = !DILocation(line: 663, column: 33, scope: !167)
!579 = !DILocation(line: 663, column: 43, scope: !167)
!580 = !DILocation(line: 663, column: 3, scope: !167)
!581 = !DILocalVariable(name: "url_program", scope: !167, file: !159, line: 667, type: !170)
!582 = !DILocation(line: 667, column: 15, scope: !167)
!583 = !DILocation(line: 667, column: 38, scope: !167)
!584 = !DILocation(line: 667, column: 31, scope: !167)
!585 = !DILocation(line: 668, column: 38, scope: !167)
!586 = !DILocation(line: 668, column: 31, scope: !167)
!587 = !DILocation(line: 669, column: 38, scope: !167)
!588 = !DILocation(line: 669, column: 31, scope: !167)
!589 = !DILocation(line: 670, column: 38, scope: !167)
!590 = !DILocation(line: 670, column: 31, scope: !167)
!591 = !DILocation(line: 671, column: 38, scope: !167)
!592 = !DILocation(line: 671, column: 31, scope: !167)
!593 = !DILocation(line: 672, column: 38, scope: !167)
!594 = !DILocation(line: 672, column: 31, scope: !167)
!595 = !DILocation(line: 673, column: 38, scope: !167)
!596 = !DILocation(line: 673, column: 31, scope: !167)
!597 = !DILocation(line: 674, column: 38, scope: !167)
!598 = !DILocation(line: 674, column: 31, scope: !167)
!599 = !DILocation(line: 675, column: 38, scope: !167)
!600 = !DILocation(line: 675, column: 31, scope: !167)
!601 = !DILocation(line: 676, column: 38, scope: !167)
!602 = !DILocation(line: 676, column: 31, scope: !167)
!603 = !DILocation(line: 677, column: 31, scope: !167)
!604 = !DILocation(line: 682, column: 18, scope: !605)
!605 = distinct !DILexicalBlock(scope: !167, file: !159, line: 682, column: 7)
!606 = !DILocation(line: 682, column: 7, scope: !605)
!607 = !DILocation(line: 683, column: 7, scope: !605)
!608 = !DILocation(line: 683, column: 21, scope: !605)
!609 = !DILocation(line: 683, column: 10, scope: !605)
!610 = !DILocation(line: 689, column: 15, scope: !611)
!611 = distinct !DILexicalBlock(scope: !605, file: !159, line: 684, column: 5)
!612 = !DILocation(line: 689, column: 28, scope: !611)
!613 = !DILocation(line: 689, column: 47, scope: !611)
!614 = !DILocation(line: 689, column: 41, scope: !611)
!615 = !DILocation(line: 689, column: 59, scope: !611)
!616 = !DILocation(line: 688, column: 7, scope: !611)
!617 = !DILocation(line: 690, column: 5, scope: !611)
!618 = !DILocation(line: 695, column: 48, scope: !619)
!619 = distinct !DILexicalBlock(scope: !605, file: !159, line: 692, column: 5)
!620 = !DILocation(line: 696, column: 21, scope: !619)
!621 = !DILocation(line: 696, column: 15, scope: !619)
!622 = !DILocation(line: 696, column: 33, scope: !619)
!623 = !DILocation(line: 695, column: 7, scope: !619)
!624 = !DILocation(line: 698, column: 20, scope: !167)
!625 = !DILocation(line: 698, column: 3, scope: !167)
!626 = !DILocation(line: 702, column: 21, scope: !167)
!627 = !DILocation(line: 702, column: 3, scope: !167)
!628 = !DILocation(line: 705, column: 11, scope: !167)
!629 = !DILocation(line: 705, column: 26, scope: !167)
!630 = !DILocation(line: 705, column: 38, scope: !167)
!631 = !DILocation(line: 705, column: 36, scope: !167)
!632 = !DILocation(line: 705, column: 50, scope: !167)
!633 = !DILocation(line: 705, column: 3, scope: !167)
!634 = !DILocation(line: 707, column: 21, scope: !167)
!635 = !DILocation(line: 707, column: 3, scope: !167)
!636 = !DILocation(line: 710, column: 28, scope: !167)
!637 = !DILocation(line: 710, column: 3, scope: !167)
!638 = !DILocation(line: 714, column: 10, scope: !167)
!639 = !DILocation(line: 714, column: 21, scope: !167)
!640 = !DILocation(line: 714, column: 3, scope: !167)
!641 = !DILocation(line: 715, column: 1, scope: !167)
!642 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !159, file: !159, line: 855, type: !643, scopeLine: 856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !172, retainedNodes: !373)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !170}
!645 = !DILocalVariable(name: "program", arg: 1, scope: !642, file: !159, line: 855, type: !170)
!646 = !DILocation(line: 855, column: 34, scope: !642)
!647 = !DILocalVariable(name: "infomap", scope: !642, file: !159, line: 857, type: !648)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !649, size: 896, elements: !89)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !642, file: !159, line: 857, size: 128, elements: !651)
!651 = !{!652, !653}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !650, file: !159, line: 857, baseType: !170, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !650, file: !159, line: 857, baseType: !170, size: 64, offset: 64)
!654 = !DILocation(line: 857, column: 67, scope: !642)
!655 = !DILocalVariable(name: "node", scope: !642, file: !159, line: 867, type: !170)
!656 = !DILocation(line: 867, column: 15, scope: !642)
!657 = !DILocation(line: 867, column: 22, scope: !642)
!658 = !DILocalVariable(name: "map_prog", scope: !642, file: !159, line: 868, type: !659)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!660 = !DILocation(line: 868, column: 25, scope: !642)
!661 = !DILocation(line: 868, column: 36, scope: !642)
!662 = !DILocation(line: 870, column: 3, scope: !642)
!663 = !DILocation(line: 870, column: 10, scope: !642)
!664 = !DILocation(line: 870, column: 20, scope: !642)
!665 = !DILocation(line: 870, column: 28, scope: !642)
!666 = !DILocation(line: 870, column: 40, scope: !642)
!667 = !DILocation(line: 870, column: 49, scope: !642)
!668 = !DILocation(line: 870, column: 59, scope: !642)
!669 = !DILocation(line: 870, column: 33, scope: !642)
!670 = !DILocation(line: 870, column: 31, scope: !642)
!671 = !DILocation(line: 0, scope: !642)
!672 = !DILocation(line: 871, column: 13, scope: !642)
!673 = distinct !{!673, !662, !672, !512}
!674 = !DILocation(line: 873, column: 7, scope: !675)
!675 = distinct !DILexicalBlock(scope: !642, file: !159, line: 873, column: 7)
!676 = !DILocation(line: 873, column: 17, scope: !675)
!677 = !DILocation(line: 874, column: 12, scope: !675)
!678 = !DILocation(line: 874, column: 22, scope: !675)
!679 = !DILocation(line: 874, column: 10, scope: !675)
!680 = !DILocation(line: 874, column: 5, scope: !675)
!681 = !DILocation(line: 876, column: 3, scope: !642)
!682 = !DILocalVariable(name: "url_program", scope: !642, file: !159, line: 881, type: !170)
!683 = !DILocation(line: 881, column: 15, scope: !642)
!684 = !DILocation(line: 881, column: 36, scope: !642)
!685 = !DILocation(line: 881, column: 29, scope: !642)
!686 = !DILocation(line: 881, column: 61, scope: !642)
!687 = !DILocation(line: 882, column: 11, scope: !642)
!688 = !DILocation(line: 883, column: 24, scope: !642)
!689 = !DILocation(line: 882, column: 3, scope: !642)
!690 = !DILocation(line: 884, column: 11, scope: !642)
!691 = !DILocation(line: 885, column: 11, scope: !642)
!692 = !DILocation(line: 885, column: 17, scope: !642)
!693 = !DILocation(line: 885, column: 25, scope: !642)
!694 = !DILocation(line: 885, column: 22, scope: !642)
!695 = !DILocation(line: 884, column: 3, scope: !642)
!696 = !DILocation(line: 886, column: 1, scope: !642)
!697 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 388, type: !698, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !172, retainedNodes: !373)
!698 = !DISubroutineType(types: !699)
!699 = !{!187, !187, !700}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!701 = !DILocalVariable(name: "argc", arg: 1, scope: !697, file: !2, line: 388, type: !187)
!702 = !DILocation(line: 388, column: 11, scope: !697)
!703 = !DILocalVariable(name: "argv", arg: 2, scope: !697, file: !2, line: 388, type: !700)
!704 = !DILocation(line: 388, column: 24, scope: !697)
!705 = !DILocalVariable(name: "echo", scope: !697, file: !2, line: 390, type: !465)
!706 = !DILocation(line: 390, column: 8, scope: !697)
!707 = !DILocalVariable(name: "input_range", scope: !697, file: !2, line: 391, type: !465)
!708 = !DILocation(line: 391, column: 8, scope: !697)
!709 = !DILocalVariable(name: "lo_input", scope: !697, file: !2, line: 392, type: !494)
!710 = !DILocation(line: 392, column: 10, scope: !697)
!711 = !DILocalVariable(name: "hi_input", scope: !697, file: !2, line: 393, type: !494)
!712 = !DILocation(line: 393, column: 10, scope: !697)
!713 = !DILocalVariable(name: "head_lines", scope: !697, file: !2, line: 394, type: !714)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !715, line: 137, baseType: !240)
!715 = !DIFile(filename: "./lib/idx.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "a342c053ede588630cf36a09403114d3")
!716 = !DILocation(line: 394, column: 9, scope: !697)
!717 = !DILocalVariable(name: "outfile", scope: !697, file: !2, line: 395, type: !170)
!718 = !DILocation(line: 395, column: 15, scope: !697)
!719 = !DILocalVariable(name: "random_source", scope: !697, file: !2, line: 396, type: !233)
!720 = !DILocation(line: 396, column: 9, scope: !697)
!721 = !DILocalVariable(name: "eolbyte", scope: !697, file: !2, line: 397, type: !4)
!722 = !DILocation(line: 397, column: 8, scope: !697)
!723 = !DILocalVariable(name: "input_lines", scope: !697, file: !2, line: 398, type: !700)
!724 = !DILocation(line: 398, column: 10, scope: !697)
!725 = !DILocalVariable(name: "use_reservoir_sampling", scope: !697, file: !2, line: 399, type: !465)
!726 = !DILocation(line: 399, column: 8, scope: !697)
!727 = !DILocalVariable(name: "repeat", scope: !697, file: !2, line: 400, type: !465)
!728 = !DILocation(line: 400, column: 8, scope: !697)
!729 = !DILocalVariable(name: "optc", scope: !697, file: !2, line: 402, type: !187)
!730 = !DILocation(line: 402, column: 7, scope: !697)
!731 = !DILocalVariable(name: "n_operands", scope: !697, file: !2, line: 403, type: !187)
!732 = !DILocation(line: 403, column: 7, scope: !697)
!733 = !DILocalVariable(name: "operand", scope: !697, file: !2, line: 404, type: !700)
!734 = !DILocation(line: 404, column: 10, scope: !697)
!735 = !DILocalVariable(name: "n_lines", scope: !697, file: !2, line: 405, type: !494)
!736 = !DILocation(line: 405, column: 10, scope: !697)
!737 = !DILocalVariable(name: "line", scope: !697, file: !2, line: 406, type: !700)
!738 = !DILocation(line: 406, column: 10, scope: !697)
!739 = !DILocalVariable(name: "reservoir", scope: !697, file: !2, line: 407, type: !740)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !742, line: 32, size: 192, elements: !743)
!742 = !DIFile(filename: "./lib/linebuffer.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "e2597f62c7d5286d9e09d95cf657d3bc")
!743 = !{!744, !745, !746}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !741, file: !742, line: 34, baseType: !714, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !741, file: !742, line: 35, baseType: !714, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !741, file: !742, line: 36, baseType: !233, size: 64, offset: 128)
!747 = !DILocation(line: 407, column: 22, scope: !697)
!748 = !DILocalVariable(name: "randint_source", scope: !697, file: !2, line: 408, type: !749)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "randint_source", file: !751, line: 33, flags: DIFlagFwdDecl)
!751 = !DIFile(filename: "./lib/randint.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "28ec191ae1fe18b14ea27fd20962a86a")
!752 = !DILocation(line: 408, column: 26, scope: !697)
!753 = !DILocalVariable(name: "permutation", scope: !697, file: !2, line: 409, type: !754)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!755 = !DILocation(line: 409, column: 11, scope: !697)
!756 = !DILocalVariable(name: "i", scope: !697, file: !2, line: 410, type: !187)
!757 = !DILocation(line: 410, column: 7, scope: !697)
!758 = !DILocation(line: 413, column: 21, scope: !697)
!759 = !DILocation(line: 413, column: 3, scope: !697)
!760 = !DILocation(line: 414, column: 3, scope: !697)
!761 = !DILocation(line: 415, column: 3, scope: !697)
!762 = !DILocation(line: 416, column: 3, scope: !697)
!763 = !DILocation(line: 418, column: 3, scope: !697)
!764 = !DILocation(line: 420, column: 3, scope: !697)
!765 = !DILocation(line: 420, column: 31, scope: !697)
!766 = !DILocation(line: 420, column: 37, scope: !697)
!767 = !DILocation(line: 420, column: 18, scope: !697)
!768 = !DILocation(line: 420, column: 16, scope: !697)
!769 = !DILocation(line: 421, column: 10, scope: !697)
!770 = !DILocation(line: 422, column: 13, scope: !697)
!771 = !DILocation(line: 422, column: 5, scope: !697)
!772 = !DILocation(line: 425, column: 14, scope: !773)
!773 = distinct !DILexicalBlock(scope: !697, file: !2, line: 423, column: 7)
!774 = !DILocation(line: 426, column: 9, scope: !773)
!775 = !DILocation(line: 430, column: 15, scope: !776)
!776 = distinct !DILexicalBlock(scope: !777, file: !2, line: 430, column: 15)
!777 = distinct !DILexicalBlock(scope: !773, file: !2, line: 429, column: 9)
!778 = !DILocation(line: 431, column: 37, scope: !776)
!779 = !DILocation(line: 431, column: 13, scope: !776)
!780 = !DILocation(line: 432, column: 23, scope: !777)
!781 = !DILocalVariable(name: "u", scope: !777, file: !2, line: 434, type: !782)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !783, line: 102, baseType: !784)
!783 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !239, line: 73, baseType: !241)
!785 = !DILocation(line: 434, column: 21, scope: !777)
!786 = !DILocalVariable(name: "lo_end", scope: !777, file: !2, line: 435, type: !233)
!787 = !DILocation(line: 435, column: 17, scope: !777)
!788 = !DILocalVariable(name: "err", scope: !777, file: !2, line: 436, type: !789)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !175, line: 43, baseType: !174)
!790 = !DILocation(line: 436, column: 24, scope: !777)
!791 = !DILocation(line: 436, column: 42, scope: !777)
!792 = !DILocation(line: 436, column: 30, scope: !777)
!793 = !DILocation(line: 437, column: 15, scope: !794)
!794 = distinct !DILexicalBlock(scope: !777, file: !2, line: 437, column: 15)
!795 = !DILocation(line: 437, column: 19, scope: !794)
!796 = !DILocation(line: 439, column: 26, scope: !797)
!797 = distinct !DILexicalBlock(scope: !794, file: !2, line: 438, column: 13)
!798 = !DILocation(line: 439, column: 24, scope: !797)
!799 = !DILocation(line: 440, column: 19, scope: !800)
!800 = distinct !DILexicalBlock(scope: !797, file: !2, line: 440, column: 19)
!801 = !DILocation(line: 440, column: 31, scope: !800)
!802 = !DILocation(line: 440, column: 28, scope: !800)
!803 = !DILocation(line: 441, column: 21, scope: !800)
!804 = !DILocation(line: 441, column: 17, scope: !800)
!805 = !DILocation(line: 442, column: 25, scope: !806)
!806 = distinct !DILexicalBlock(scope: !800, file: !2, line: 442, column: 24)
!807 = !DILocation(line: 442, column: 24, scope: !806)
!808 = !DILocation(line: 442, column: 32, scope: !806)
!809 = !DILocation(line: 443, column: 21, scope: !806)
!810 = !DILocation(line: 443, column: 17, scope: !806)
!811 = !DILocation(line: 446, column: 37, scope: !812)
!812 = distinct !DILexicalBlock(scope: !806, file: !2, line: 445, column: 17)
!813 = !DILocation(line: 446, column: 44, scope: !812)
!814 = !DILocation(line: 446, column: 25, scope: !812)
!815 = !DILocation(line: 446, column: 23, scope: !812)
!816 = !DILocation(line: 447, column: 23, scope: !817)
!817 = distinct !DILexicalBlock(scope: !812, file: !2, line: 447, column: 23)
!818 = !DILocation(line: 447, column: 27, scope: !817)
!819 = !DILocation(line: 449, column: 34, scope: !820)
!820 = distinct !DILexicalBlock(scope: !817, file: !2, line: 448, column: 21)
!821 = !DILocation(line: 449, column: 32, scope: !820)
!822 = !DILocation(line: 450, column: 27, scope: !823)
!823 = distinct !DILexicalBlock(scope: !820, file: !2, line: 450, column: 27)
!824 = !DILocation(line: 450, column: 39, scope: !823)
!825 = !DILocation(line: 450, column: 36, scope: !823)
!826 = !DILocation(line: 451, column: 29, scope: !823)
!827 = !DILocation(line: 451, column: 25, scope: !823)
!828 = !DILocation(line: 452, column: 21, scope: !820)
!829 = !DILocation(line: 454, column: 13, scope: !797)
!830 = !DILocation(line: 456, column: 21, scope: !777)
!831 = !DILocation(line: 456, column: 32, scope: !777)
!832 = !DILocation(line: 456, column: 30, scope: !777)
!833 = !DILocation(line: 456, column: 41, scope: !777)
!834 = !DILocation(line: 456, column: 19, scope: !777)
!835 = !DILocation(line: 458, column: 15, scope: !836)
!836 = distinct !DILexicalBlock(scope: !777, file: !2, line: 458, column: 15)
!837 = !DILocation(line: 458, column: 19, scope: !836)
!838 = !DILocation(line: 458, column: 33, scope: !836)
!839 = !DILocation(line: 458, column: 37, scope: !836)
!840 = !DILocation(line: 458, column: 49, scope: !836)
!841 = !DILocation(line: 458, column: 46, scope: !836)
!842 = !DILocation(line: 458, column: 63, scope: !836)
!843 = !DILocation(line: 458, column: 71, scope: !836)
!844 = !DILocation(line: 458, column: 59, scope: !836)
!845 = !DILocation(line: 459, column: 34, scope: !836)
!846 = !DILocation(line: 459, column: 38, scope: !836)
!847 = !DILocation(line: 460, column: 30, scope: !836)
!848 = !DILocation(line: 460, column: 63, scope: !836)
!849 = !DILocation(line: 460, column: 56, scope: !836)
!850 = !DILocation(line: 459, column: 13, scope: !836)
!851 = !DILocation(line: 462, column: 9, scope: !773)
!852 = !DILocalVariable(name: "argval", scope: !853, file: !2, line: 466, type: !782)
!853 = distinct !DILexicalBlock(scope: !773, file: !2, line: 465, column: 9)
!854 = !DILocation(line: 466, column: 21, scope: !853)
!855 = !DILocalVariable(name: "e", scope: !853, file: !2, line: 467, type: !789)
!856 = !DILocation(line: 467, column: 24, scope: !853)
!857 = !DILocation(line: 467, column: 40, scope: !853)
!858 = !DILocation(line: 467, column: 28, scope: !853)
!859 = !DILocation(line: 469, column: 15, scope: !860)
!860 = distinct !DILexicalBlock(scope: !853, file: !2, line: 469, column: 15)
!861 = !DILocation(line: 469, column: 17, scope: !860)
!862 = !DILocation(line: 470, column: 31, scope: !860)
!863 = !DILocation(line: 470, column: 43, scope: !860)
!864 = !DILocation(line: 470, column: 26, scope: !860)
!865 = !DILocation(line: 470, column: 24, scope: !860)
!866 = !DILocation(line: 470, column: 13, scope: !860)
!867 = !DILocation(line: 471, column: 20, scope: !868)
!868 = distinct !DILexicalBlock(scope: !860, file: !2, line: 471, column: 20)
!869 = !DILocation(line: 471, column: 22, scope: !868)
!870 = !DILocation(line: 472, column: 37, scope: !868)
!871 = !DILocation(line: 473, column: 27, scope: !868)
!872 = !DILocation(line: 473, column: 20, scope: !868)
!873 = !DILocation(line: 472, column: 13, scope: !868)
!874 = !DILocation(line: 475, column: 9, scope: !773)
!875 = !DILocation(line: 478, column: 13, scope: !876)
!876 = distinct !DILexicalBlock(scope: !773, file: !2, line: 478, column: 13)
!877 = !DILocation(line: 478, column: 21, scope: !876)
!878 = !DILocation(line: 478, column: 32, scope: !876)
!879 = !DILocation(line: 478, column: 41, scope: !876)
!880 = !DILocation(line: 478, column: 25, scope: !876)
!881 = !DILocation(line: 479, column: 35, scope: !876)
!882 = !DILocation(line: 479, column: 11, scope: !876)
!883 = !DILocation(line: 480, column: 19, scope: !773)
!884 = !DILocation(line: 480, column: 17, scope: !773)
!885 = !DILocation(line: 481, column: 9, scope: !773)
!886 = !DILocation(line: 484, column: 13, scope: !887)
!887 = distinct !DILexicalBlock(scope: !773, file: !2, line: 484, column: 13)
!888 = !DILocation(line: 484, column: 27, scope: !887)
!889 = !DILocation(line: 484, column: 38, scope: !887)
!890 = !DILocation(line: 484, column: 53, scope: !887)
!891 = !DILocation(line: 484, column: 31, scope: !887)
!892 = !DILocation(line: 485, column: 35, scope: !887)
!893 = !DILocation(line: 485, column: 11, scope: !887)
!894 = !DILocation(line: 486, column: 25, scope: !773)
!895 = !DILocation(line: 486, column: 23, scope: !773)
!896 = !DILocation(line: 487, column: 9, scope: !773)
!897 = !DILocation(line: 490, column: 16, scope: !773)
!898 = !DILocation(line: 491, column: 9, scope: !773)
!899 = !DILocation(line: 494, column: 17, scope: !773)
!900 = !DILocation(line: 495, column: 9, scope: !773)
!901 = !DILocation(line: 497, column: 7, scope: !773)
!902 = !DILocation(line: 498, column: 7, scope: !773)
!903 = !DILocation(line: 498, column: 47, scope: !773)
!904 = !DILocation(line: 500, column: 9, scope: !773)
!905 = distinct !{!905, !764, !906, !512}
!906 = !DILocation(line: 501, column: 7, scope: !697)
!907 = !DILocation(line: 503, column: 16, scope: !697)
!908 = !DILocation(line: 503, column: 23, scope: !697)
!909 = !DILocation(line: 503, column: 21, scope: !697)
!910 = !DILocation(line: 503, column: 14, scope: !697)
!911 = !DILocation(line: 504, column: 13, scope: !697)
!912 = !DILocation(line: 504, column: 20, scope: !697)
!913 = !DILocation(line: 504, column: 18, scope: !697)
!914 = !DILocation(line: 504, column: 11, scope: !697)
!915 = !DILocation(line: 507, column: 7, scope: !916)
!916 = distinct !DILexicalBlock(scope: !697, file: !2, line: 507, column: 7)
!917 = !DILocation(line: 507, column: 12, scope: !916)
!918 = !DILocation(line: 507, column: 15, scope: !916)
!919 = !DILocation(line: 509, column: 20, scope: !920)
!920 = distinct !DILexicalBlock(scope: !916, file: !2, line: 508, column: 5)
!921 = !DILocation(line: 509, column: 7, scope: !920)
!922 = !DILocation(line: 510, column: 7, scope: !920)
!923 = !DILocation(line: 512, column: 7, scope: !924)
!924 = distinct !DILexicalBlock(scope: !697, file: !2, line: 512, column: 7)
!925 = !DILocation(line: 512, column: 25, scope: !924)
!926 = !DILocation(line: 512, column: 23, scope: !924)
!927 = !DILocation(line: 512, column: 39, scope: !924)
!928 = !DILocation(line: 512, column: 44, scope: !924)
!929 = !DILocation(line: 512, column: 51, scope: !924)
!930 = !DILocation(line: 512, column: 49, scope: !924)
!931 = !DILocation(line: 514, column: 20, scope: !932)
!932 = distinct !DILexicalBlock(scope: !924, file: !2, line: 513, column: 5)
!933 = !DILocation(line: 514, column: 50, scope: !932)
!934 = !DILocation(line: 514, column: 59, scope: !932)
!935 = !DILocation(line: 514, column: 58, scope: !932)
!936 = !DILocation(line: 514, column: 43, scope: !932)
!937 = !DILocation(line: 514, column: 7, scope: !932)
!938 = !DILocation(line: 515, column: 7, scope: !932)
!939 = !DILocation(line: 519, column: 7, scope: !940)
!940 = distinct !DILexicalBlock(scope: !697, file: !2, line: 519, column: 7)
!941 = !DILocation(line: 519, column: 18, scope: !940)
!942 = !DILocation(line: 521, column: 15, scope: !943)
!943 = distinct !DILexicalBlock(scope: !940, file: !2, line: 520, column: 5)
!944 = !DILocation(line: 522, column: 12, scope: !943)
!945 = !DILocation(line: 523, column: 5, scope: !943)
!946 = !DILocation(line: 524, column: 12, scope: !947)
!947 = distinct !DILexicalBlock(scope: !940, file: !2, line: 524, column: 12)
!948 = !DILocation(line: 526, column: 24, scope: !949)
!949 = distinct !DILexicalBlock(scope: !947, file: !2, line: 525, column: 5)
!950 = !DILocation(line: 526, column: 33, scope: !949)
!951 = !DILocation(line: 526, column: 45, scope: !949)
!952 = !DILocation(line: 526, column: 7, scope: !949)
!953 = !DILocation(line: 527, column: 17, scope: !949)
!954 = !DILocation(line: 527, column: 15, scope: !949)
!955 = !DILocation(line: 528, column: 14, scope: !949)
!956 = !DILocation(line: 528, column: 12, scope: !949)
!957 = !DILocation(line: 529, column: 5, scope: !949)
!958 = !DILocation(line: 530, column: 12, scope: !959)
!959 = distinct !DILexicalBlock(scope: !947, file: !2, line: 530, column: 12)
!960 = !DILocation(line: 533, column: 12, scope: !961)
!961 = distinct !DILexicalBlock(scope: !959, file: !2, line: 531, column: 5)
!962 = !DILocation(line: 534, column: 5, scope: !961)
!963 = !DILocation(line: 538, column: 11, scope: !964)
!964 = distinct !DILexicalBlock(scope: !965, file: !2, line: 538, column: 11)
!965 = distinct !DILexicalBlock(scope: !959, file: !2, line: 536, column: 5)
!966 = !DILocation(line: 538, column: 22, scope: !964)
!967 = !DILocation(line: 539, column: 11, scope: !964)
!968 = !DILocation(line: 539, column: 24, scope: !964)
!969 = !DILocation(line: 539, column: 17, scope: !964)
!970 = !DILocation(line: 540, column: 17, scope: !964)
!971 = !DILocation(line: 540, column: 29, scope: !964)
!972 = !DILocation(line: 540, column: 46, scope: !964)
!973 = !DILocation(line: 540, column: 20, scope: !964)
!974 = !DILocation(line: 541, column: 30, scope: !964)
!975 = !DILocation(line: 541, column: 51, scope: !964)
!976 = !DILocation(line: 541, column: 43, scope: !964)
!977 = !DILocation(line: 541, column: 9, scope: !964)
!978 = !DILocation(line: 543, column: 16, scope: !965)
!979 = !DILocation(line: 543, column: 7, scope: !965)
!980 = !DILocation(line: 545, column: 11, scope: !981)
!981 = distinct !DILexicalBlock(scope: !965, file: !2, line: 545, column: 11)
!982 = !DILocation(line: 545, column: 18, scope: !981)
!983 = !DILocation(line: 545, column: 21, scope: !981)
!984 = !DILocation(line: 545, column: 32, scope: !981)
!985 = !DILocation(line: 546, column: 11, scope: !981)
!986 = !DILocation(line: 546, column: 14, scope: !981)
!987 = !DILocation(line: 546, column: 28, scope: !981)
!988 = !DILocation(line: 548, column: 33, scope: !989)
!989 = distinct !DILexicalBlock(scope: !981, file: !2, line: 547, column: 9)
!990 = !DILocation(line: 548, column: 40, scope: !989)
!991 = !DILocation(line: 548, column: 21, scope: !989)
!992 = !DILocation(line: 548, column: 19, scope: !989)
!993 = !DILocation(line: 549, column: 18, scope: !989)
!994 = !DILocation(line: 549, column: 16, scope: !989)
!995 = !DILocation(line: 550, column: 9, scope: !989)
!996 = !DILocation(line: 553, column: 34, scope: !997)
!997 = distinct !DILexicalBlock(scope: !981, file: !2, line: 552, column: 9)
!998 = !DILocation(line: 554, column: 19, scope: !997)
!999 = !DILocalVariable(name: "ahead_lines", scope: !697, file: !2, line: 560, type: !714)
!1000 = !DILocation(line: 560, column: 9, scope: !697)
!1001 = !DILocation(line: 560, column: 23, scope: !697)
!1002 = !DILocation(line: 560, column: 30, scope: !697)
!1003 = !DILocation(line: 560, column: 33, scope: !697)
!1004 = !DILocation(line: 560, column: 46, scope: !697)
!1005 = !DILocation(line: 560, column: 44, scope: !697)
!1006 = !DILocation(line: 560, column: 56, scope: !697)
!1007 = !DILocation(line: 560, column: 69, scope: !697)
!1008 = !DILocation(line: 562, column: 37, scope: !697)
!1009 = !DILocation(line: 563, column: 38, scope: !697)
!1010 = !DILocation(line: 563, column: 61, scope: !697)
!1011 = !DILocation(line: 563, column: 64, scope: !697)
!1012 = !DILocation(line: 565, column: 56, scope: !697)
!1013 = !DILocation(line: 565, column: 69, scope: !697)
!1014 = !DILocation(line: 565, column: 40, scope: !697)
!1015 = !DILocation(line: 562, column: 20, scope: !697)
!1016 = !DILocation(line: 562, column: 18, scope: !697)
!1017 = !DILocation(line: 566, column: 9, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !697, file: !2, line: 566, column: 7)
!1019 = !DILocation(line: 566, column: 7, scope: !1018)
!1020 = !DILocation(line: 567, column: 26, scope: !1018)
!1021 = !DILocation(line: 568, column: 20, scope: !1018)
!1022 = !DILocation(line: 568, column: 36, scope: !1018)
!1023 = !DILocation(line: 568, column: 12, scope: !1018)
!1024 = !DILocation(line: 567, column: 5, scope: !1018)
!1025 = !DILocation(line: 570, column: 7, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !697, file: !2, line: 570, column: 7)
!1027 = !DILocation(line: 574, column: 48, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 571, column: 5)
!1029 = !DILocation(line: 574, column: 55, scope: !1028)
!1030 = !DILocation(line: 574, column: 64, scope: !1028)
!1031 = !DILocation(line: 575, column: 48, scope: !1028)
!1032 = !DILocation(line: 574, column: 17, scope: !1028)
!1033 = !DILocation(line: 574, column: 15, scope: !1028)
!1034 = !DILocation(line: 576, column: 21, scope: !1028)
!1035 = !DILocation(line: 576, column: 19, scope: !1028)
!1036 = !DILocation(line: 577, column: 5, scope: !1028)
!1037 = !DILocation(line: 582, column: 10, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !697, file: !2, line: 582, column: 7)
!1039 = !DILocation(line: 582, column: 21, scope: !1038)
!1040 = !DILocation(line: 582, column: 26, scope: !1038)
!1041 = !DILocation(line: 582, column: 29, scope: !1038)
!1042 = !DILocation(line: 582, column: 34, scope: !1038)
!1043 = !DILocation(line: 582, column: 37, scope: !1038)
!1044 = !DILocation(line: 582, column: 49, scope: !1038)
!1045 = !DILocation(line: 582, column: 60, scope: !1038)
!1046 = !DILocation(line: 582, column: 52, scope: !1038)
!1047 = !DILocation(line: 582, column: 67, scope: !1038)
!1048 = !DILocation(line: 582, column: 7, scope: !1038)
!1049 = !DILocation(line: 583, column: 26, scope: !1038)
!1050 = !DILocation(line: 583, column: 33, scope: !1038)
!1051 = !DILocation(line: 583, column: 5, scope: !1038)
!1052 = !DILocation(line: 585, column: 8, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !697, file: !2, line: 585, column: 7)
!1054 = !DILocation(line: 585, column: 7, scope: !1053)
!1055 = !DILocation(line: 586, column: 33, scope: !1053)
!1056 = !DILocation(line: 586, column: 49, scope: !1053)
!1057 = !DILocation(line: 586, column: 62, scope: !1053)
!1058 = !DILocation(line: 586, column: 19, scope: !1053)
!1059 = !DILocation(line: 586, column: 17, scope: !1053)
!1060 = !DILocation(line: 586, column: 5, scope: !1053)
!1061 = !DILocation(line: 588, column: 7, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !697, file: !2, line: 588, column: 7)
!1063 = !DILocation(line: 588, column: 15, scope: !1062)
!1064 = !DILocation(line: 588, column: 29, scope: !1062)
!1065 = !DILocation(line: 588, column: 43, scope: !1062)
!1066 = !DILocation(line: 588, column: 20, scope: !1062)
!1067 = !DILocation(line: 589, column: 26, scope: !1062)
!1068 = !DILocation(line: 589, column: 47, scope: !1062)
!1069 = !DILocation(line: 589, column: 39, scope: !1062)
!1070 = !DILocation(line: 589, column: 5, scope: !1062)
!1071 = !DILocation(line: 592, column: 7, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !697, file: !2, line: 592, column: 7)
!1073 = !DILocation(line: 594, column: 11, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !2, line: 594, column: 11)
!1075 = distinct !DILexicalBlock(scope: !1072, file: !2, line: 593, column: 5)
!1076 = !DILocation(line: 594, column: 22, scope: !1074)
!1077 = !DILocation(line: 595, column: 11, scope: !1074)
!1078 = !DILocation(line: 595, column: 9, scope: !1074)
!1079 = !DILocation(line: 598, column: 15, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 598, column: 15)
!1081 = distinct !DILexicalBlock(scope: !1074, file: !2, line: 597, column: 9)
!1082 = !DILocation(line: 598, column: 23, scope: !1080)
!1083 = !DILocation(line: 599, column: 37, scope: !1080)
!1084 = !DILocation(line: 599, column: 13, scope: !1080)
!1085 = !DILocation(line: 600, column: 15, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 600, column: 15)
!1087 = !DILocation(line: 601, column: 39, scope: !1086)
!1088 = !DILocation(line: 601, column: 55, scope: !1086)
!1089 = !DILocation(line: 602, column: 39, scope: !1086)
!1090 = !DILocation(line: 602, column: 49, scope: !1086)
!1091 = !DILocation(line: 602, column: 59, scope: !1086)
!1092 = !DILocation(line: 601, column: 17, scope: !1086)
!1093 = !DILocation(line: 601, column: 15, scope: !1086)
!1094 = !DILocation(line: 601, column: 13, scope: !1086)
!1095 = !DILocation(line: 604, column: 37, scope: !1086)
!1096 = !DILocation(line: 604, column: 53, scope: !1086)
!1097 = !DILocation(line: 604, column: 66, scope: !1086)
!1098 = !DILocation(line: 604, column: 72, scope: !1086)
!1099 = !DILocation(line: 604, column: 17, scope: !1086)
!1100 = !DILocation(line: 604, column: 15, scope: !1086)
!1101 = !DILocation(line: 606, column: 5, scope: !1075)
!1102 = !DILocation(line: 609, column: 11, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 609, column: 11)
!1104 = distinct !DILexicalBlock(scope: !1072, file: !2, line: 608, column: 5)
!1105 = !DILocation(line: 610, column: 46, scope: !1103)
!1106 = !DILocation(line: 610, column: 55, scope: !1103)
!1107 = !DILocation(line: 610, column: 66, scope: !1103)
!1108 = !DILocation(line: 610, column: 13, scope: !1103)
!1109 = !DILocation(line: 610, column: 11, scope: !1103)
!1110 = !DILocation(line: 610, column: 9, scope: !1103)
!1111 = !DILocation(line: 611, column: 16, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 611, column: 16)
!1113 = !DILocation(line: 612, column: 37, scope: !1112)
!1114 = !DILocation(line: 612, column: 50, scope: !1112)
!1115 = !DILocation(line: 613, column: 37, scope: !1112)
!1116 = !DILocation(line: 613, column: 50, scope: !1112)
!1117 = !DILocation(line: 612, column: 13, scope: !1112)
!1118 = !DILocation(line: 612, column: 11, scope: !1112)
!1119 = !DILocation(line: 612, column: 9, scope: !1112)
!1120 = !DILocation(line: 615, column: 35, scope: !1112)
!1121 = !DILocation(line: 615, column: 48, scope: !1112)
!1122 = !DILocation(line: 615, column: 54, scope: !1112)
!1123 = !DILocation(line: 615, column: 13, scope: !1112)
!1124 = !DILocation(line: 615, column: 11, scope: !1112)
!1125 = !DILocation(line: 618, column: 7, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !697, file: !2, line: 618, column: 7)
!1127 = !DILocation(line: 618, column: 9, scope: !1126)
!1128 = !DILocation(line: 619, column: 5, scope: !1126)
!1129 = !DILocation(line: 623, column: 3, scope: !697)
!1130 = distinct !DISubprogram(name: "input_from_argv", scope: !2, file: !2, line: 120, type: !1131, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !172, retainedNodes: !373)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{null, !700, !187, !4}
!1133 = !DILocalVariable(name: "operand", arg: 1, scope: !1130, file: !2, line: 120, type: !700)
!1134 = !DILocation(line: 120, column: 25, scope: !1130)
!1135 = !DILocalVariable(name: "n_operands", arg: 2, scope: !1130, file: !2, line: 120, type: !187)
!1136 = !DILocation(line: 120, column: 38, scope: !1130)
!1137 = !DILocalVariable(name: "eolbyte", arg: 3, scope: !1130, file: !2, line: 120, type: !4)
!1138 = !DILocation(line: 120, column: 55, scope: !1130)
!1139 = !DILocalVariable(name: "p", scope: !1130, file: !2, line: 122, type: !233)
!1140 = !DILocation(line: 122, column: 9, scope: !1130)
!1141 = !DILocalVariable(name: "size", scope: !1130, file: !2, line: 123, type: !494)
!1142 = !DILocation(line: 123, column: 10, scope: !1130)
!1143 = !DILocation(line: 123, column: 17, scope: !1130)
!1144 = !DILocalVariable(name: "i", scope: !1130, file: !2, line: 124, type: !187)
!1145 = !DILocation(line: 124, column: 7, scope: !1130)
!1146 = !DILocation(line: 126, column: 10, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1130, file: !2, line: 126, column: 3)
!1148 = !DILocation(line: 126, column: 8, scope: !1147)
!1149 = !DILocation(line: 126, column: 15, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 126, column: 3)
!1151 = !DILocation(line: 126, column: 19, scope: !1150)
!1152 = !DILocation(line: 126, column: 17, scope: !1150)
!1153 = !DILocation(line: 126, column: 3, scope: !1147)
!1154 = !DILocation(line: 127, column: 21, scope: !1150)
!1155 = !DILocation(line: 127, column: 29, scope: !1150)
!1156 = !DILocation(line: 127, column: 13, scope: !1150)
!1157 = !DILocation(line: 127, column: 10, scope: !1150)
!1158 = !DILocation(line: 127, column: 5, scope: !1150)
!1159 = !DILocation(line: 126, column: 32, scope: !1150)
!1160 = !DILocation(line: 126, column: 3, scope: !1150)
!1161 = distinct !{!1161, !1153, !1162, !512}
!1162 = !DILocation(line: 127, column: 31, scope: !1147)
!1163 = !DILocation(line: 128, column: 16, scope: !1130)
!1164 = !DILocation(line: 128, column: 7, scope: !1130)
!1165 = !DILocation(line: 128, column: 5, scope: !1130)
!1166 = !DILocation(line: 130, column: 10, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1130, file: !2, line: 130, column: 3)
!1168 = !DILocation(line: 130, column: 8, scope: !1167)
!1169 = !DILocation(line: 130, column: 15, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 130, column: 3)
!1171 = !DILocation(line: 130, column: 19, scope: !1170)
!1172 = !DILocation(line: 130, column: 17, scope: !1170)
!1173 = !DILocation(line: 130, column: 3, scope: !1167)
!1174 = !DILocalVariable(name: "p1", scope: !1175, file: !2, line: 132, type: !233)
!1175 = distinct !DILexicalBlock(scope: !1170, file: !2, line: 131, column: 5)
!1176 = !DILocation(line: 132, column: 13, scope: !1175)
!1177 = !DILocation(line: 132, column: 26, scope: !1175)
!1178 = !DILocation(line: 132, column: 29, scope: !1175)
!1179 = !DILocation(line: 132, column: 37, scope: !1175)
!1180 = !DILocation(line: 132, column: 18, scope: !1175)
!1181 = !DILocation(line: 133, column: 20, scope: !1175)
!1182 = !DILocation(line: 133, column: 7, scope: !1175)
!1183 = !DILocation(line: 133, column: 15, scope: !1175)
!1184 = !DILocation(line: 133, column: 18, scope: !1175)
!1185 = !DILocation(line: 134, column: 11, scope: !1175)
!1186 = !DILocation(line: 134, column: 9, scope: !1175)
!1187 = !DILocation(line: 135, column: 14, scope: !1175)
!1188 = !DILocation(line: 135, column: 9, scope: !1175)
!1189 = !DILocation(line: 135, column: 12, scope: !1175)
!1190 = !DILocation(line: 136, column: 5, scope: !1175)
!1191 = !DILocation(line: 130, column: 32, scope: !1170)
!1192 = !DILocation(line: 130, column: 3, scope: !1170)
!1193 = distinct !{!1193, !1173, !1194, !512}
!1194 = !DILocation(line: 136, column: 5, scope: !1167)
!1195 = !DILocation(line: 138, column: 25, scope: !1130)
!1196 = !DILocation(line: 138, column: 3, scope: !1130)
!1197 = !DILocation(line: 138, column: 11, scope: !1130)
!1198 = !DILocation(line: 138, column: 23, scope: !1130)
!1199 = !DILocation(line: 139, column: 1, scope: !1130)
!1200 = distinct !DISubprogram(name: "input_size", scope: !2, file: !2, line: 154, type: !1201, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !172, retainedNodes: !373)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!236}
!1203 = !DILocalVariable(name: "file_size", scope: !1200, file: !2, line: 156, type: !236)
!1204 = !DILocation(line: 156, column: 9, scope: !1200)
!1205 = !DILocalVariable(name: "stat_buf", scope: !1200, file: !2, line: 158, type: !1206)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1207, line: 26, size: 1152, elements: !1208)
!1207 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1208 = !{!1209, !1211, !1213, !1215, !1217, !1219, !1221, !1222, !1223, !1224, !1226, !1228, !1236, !1237, !1238}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1206, file: !1207, line: 31, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !239, line: 145, baseType: !241)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1206, file: !1207, line: 36, baseType: !1212, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !239, line: 148, baseType: !241)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1206, file: !1207, line: 44, baseType: !1214, size: 64, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !239, line: 151, baseType: !241)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1206, file: !1207, line: 45, baseType: !1216, size: 32, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !239, line: 150, baseType: !176)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1206, file: !1207, line: 47, baseType: !1218, size: 32, offset: 224)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !239, line: 146, baseType: !176)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1206, file: !1207, line: 48, baseType: !1220, size: 32, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !239, line: 147, baseType: !176)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1206, file: !1207, line: 50, baseType: !187, size: 32, offset: 288)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1206, file: !1207, line: 52, baseType: !1210, size: 64, offset: 320)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1206, file: !1207, line: 57, baseType: !238, size: 64, offset: 384)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1206, file: !1207, line: 61, baseType: !1225, size: 64, offset: 448)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !239, line: 175, baseType: !240)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1206, file: !1207, line: 63, baseType: !1227, size: 64, offset: 512)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !239, line: 180, baseType: !240)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1206, file: !1207, line: 74, baseType: !1229, size: 128, offset: 576)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1230, line: 11, size: 128, elements: !1231)
!1230 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1231 = !{!1232, !1234}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1229, file: !1230, line: 16, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !239, line: 160, baseType: !240)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1229, file: !1230, line: 21, baseType: !1235, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !239, line: 197, baseType: !240)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1206, file: !1207, line: 75, baseType: !1229, size: 128, offset: 704)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1206, file: !1207, line: 76, baseType: !1229, size: 128, offset: 832)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1206, file: !1207, line: 89, baseType: !1239, size: 192, offset: 960)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1235, size: 192, elements: !141)
!1240 = !DILocation(line: 158, column: 15, scope: !1200)
!1241 = !DILocation(line: 159, column: 7, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 159, column: 7)
!1243 = !DILocation(line: 159, column: 39, scope: !1242)
!1244 = !DILocation(line: 160, column: 5, scope: !1242)
!1245 = !DILocation(line: 161, column: 7, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 161, column: 7)
!1247 = !DILocation(line: 162, column: 26, scope: !1246)
!1248 = !DILocation(line: 162, column: 15, scope: !1246)
!1249 = !DILocation(line: 162, column: 5, scope: !1246)
!1250 = !DILocation(line: 164, column: 5, scope: !1246)
!1251 = !DILocalVariable(name: "input_offset", scope: !1200, file: !2, line: 166, type: !236)
!1252 = !DILocation(line: 166, column: 9, scope: !1200)
!1253 = !DILocation(line: 166, column: 24, scope: !1200)
!1254 = !DILocation(line: 167, column: 7, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 167, column: 7)
!1256 = !DILocation(line: 167, column: 20, scope: !1255)
!1257 = !DILocation(line: 168, column: 5, scope: !1255)
!1258 = !DILocation(line: 170, column: 16, scope: !1200)
!1259 = !DILocation(line: 170, column: 13, scope: !1200)
!1260 = !DILocation(line: 172, column: 10, scope: !1200)
!1261 = !DILocation(line: 172, column: 3, scope: !1200)
!1262 = !DILocation(line: 173, column: 1, scope: !1200)
!1263 = distinct !DISubprogram(name: "read_input", scope: !2, file: !2, line: 261, type: !1264, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !172, retainedNodes: !373)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!494, !1266, !4, !1312}
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1268, line: 7, baseType: !1269)
!1268 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1270, line: 49, size: 1728, elements: !1271)
!1270 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1271 = !{!1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1287, !1289, !1290, !1291, !1292, !1293, !1295, !1296, !1299, !1301, !1304, !1307, !1308, !1309, !1310, !1311}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1269, file: !1270, line: 51, baseType: !187, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1269, file: !1270, line: 54, baseType: !233, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1269, file: !1270, line: 55, baseType: !233, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1269, file: !1270, line: 56, baseType: !233, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1269, file: !1270, line: 57, baseType: !233, size: 64, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1269, file: !1270, line: 58, baseType: !233, size: 64, offset: 320)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1269, file: !1270, line: 59, baseType: !233, size: 64, offset: 384)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1269, file: !1270, line: 60, baseType: !233, size: 64, offset: 448)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1269, file: !1270, line: 61, baseType: !233, size: 64, offset: 512)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1269, file: !1270, line: 64, baseType: !233, size: 64, offset: 576)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1269, file: !1270, line: 65, baseType: !233, size: 64, offset: 640)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1269, file: !1270, line: 66, baseType: !233, size: 64, offset: 704)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1269, file: !1270, line: 68, baseType: !1285, size: 64, offset: 768)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1270, line: 36, flags: DIFlagFwdDecl)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1269, file: !1270, line: 70, baseType: !1288, size: 64, offset: 832)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1269, file: !1270, line: 72, baseType: !187, size: 32, offset: 896)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1269, file: !1270, line: 73, baseType: !187, size: 32, offset: 928)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1269, file: !1270, line: 74, baseType: !238, size: 64, offset: 960)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1269, file: !1270, line: 77, baseType: !235, size: 16, offset: 1024)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1269, file: !1270, line: 78, baseType: !1294, size: 8, offset: 1040)
!1294 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1269, file: !1270, line: 79, baseType: !66, size: 8, offset: 1048)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1269, file: !1270, line: 81, baseType: !1297, size: 64, offset: 1088)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1270, line: 43, baseType: null)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1269, file: !1270, line: 89, baseType: !1300, size: 64, offset: 1152)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !239, line: 153, baseType: !240)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1269, file: !1270, line: 91, baseType: !1302, size: 64, offset: 1216)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1270, line: 37, flags: DIFlagFwdDecl)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1269, file: !1270, line: 92, baseType: !1305, size: 64, offset: 1280)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1270, line: 38, flags: DIFlagFwdDecl)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1269, file: !1270, line: 93, baseType: !1288, size: 64, offset: 1344)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1269, file: !1270, line: 94, baseType: !234, size: 64, offset: 1408)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1269, file: !1270, line: 95, baseType: !494, size: 64, offset: 1472)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1269, file: !1270, line: 96, baseType: !187, size: 32, offset: 1536)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1269, file: !1270, line: 98, baseType: !93, size: 160, offset: 1568)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!1313 = !DILocalVariable(name: "in", arg: 1, scope: !1263, file: !2, line: 261, type: !1266)
!1314 = !DILocation(line: 261, column: 19, scope: !1263)
!1315 = !DILocalVariable(name: "eolbyte", arg: 2, scope: !1263, file: !2, line: 261, type: !4)
!1316 = !DILocation(line: 261, column: 28, scope: !1263)
!1317 = !DILocalVariable(name: "pline", arg: 3, scope: !1263, file: !2, line: 261, type: !1312)
!1318 = !DILocation(line: 261, column: 45, scope: !1263)
!1319 = !DILocalVariable(name: "p", scope: !1263, file: !2, line: 263, type: !233)
!1320 = !DILocation(line: 263, column: 9, scope: !1263)
!1321 = !DILocalVariable(name: "buf", scope: !1263, file: !2, line: 264, type: !233)
!1322 = !DILocation(line: 264, column: 9, scope: !1263)
!1323 = !DILocalVariable(name: "used", scope: !1263, file: !2, line: 265, type: !494)
!1324 = !DILocation(line: 265, column: 10, scope: !1263)
!1325 = !DILocalVariable(name: "lim", scope: !1263, file: !2, line: 266, type: !233)
!1326 = !DILocation(line: 266, column: 9, scope: !1263)
!1327 = !DILocalVariable(name: "line", scope: !1263, file: !2, line: 267, type: !700)
!1328 = !DILocation(line: 267, column: 10, scope: !1263)
!1329 = !DILocalVariable(name: "n_lines", scope: !1263, file: !2, line: 268, type: !494)
!1330 = !DILocation(line: 268, column: 10, scope: !1263)
!1331 = !DILocation(line: 279, column: 27, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 279, column: 7)
!1333 = !DILocation(line: 279, column: 15, scope: !1332)
!1334 = !DILocation(line: 279, column: 13, scope: !1332)
!1335 = !DILocation(line: 279, column: 7, scope: !1332)
!1336 = !DILocation(line: 280, column: 26, scope: !1332)
!1337 = !DILocation(line: 280, column: 33, scope: !1332)
!1338 = !DILocation(line: 280, column: 5, scope: !1332)
!1339 = !DILocation(line: 282, column: 7, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 282, column: 7)
!1341 = !DILocation(line: 282, column: 12, scope: !1340)
!1342 = !DILocation(line: 282, column: 15, scope: !1340)
!1343 = !DILocation(line: 282, column: 19, scope: !1340)
!1344 = !DILocation(line: 282, column: 24, scope: !1340)
!1345 = !DILocation(line: 282, column: 32, scope: !1340)
!1346 = !DILocation(line: 282, column: 29, scope: !1340)
!1347 = !DILocation(line: 283, column: 19, scope: !1340)
!1348 = !DILocation(line: 283, column: 5, scope: !1340)
!1349 = !DILocation(line: 283, column: 13, scope: !1340)
!1350 = !DILocation(line: 283, column: 17, scope: !1340)
!1351 = !DILocation(line: 285, column: 9, scope: !1263)
!1352 = !DILocation(line: 285, column: 15, scope: !1263)
!1353 = !DILocation(line: 285, column: 13, scope: !1263)
!1354 = !DILocation(line: 285, column: 7, scope: !1263)
!1355 = !DILocation(line: 287, column: 11, scope: !1263)
!1356 = !DILocation(line: 288, column: 12, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 288, column: 3)
!1358 = !DILocation(line: 288, column: 10, scope: !1357)
!1359 = !DILocation(line: 288, column: 8, scope: !1357)
!1360 = !DILocation(line: 288, column: 17, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1357, file: !2, line: 288, column: 3)
!1362 = !DILocation(line: 288, column: 21, scope: !1361)
!1363 = !DILocation(line: 288, column: 19, scope: !1361)
!1364 = !DILocation(line: 288, column: 3, scope: !1357)
!1365 = !DILocation(line: 289, column: 12, scope: !1361)
!1366 = !DILocation(line: 289, column: 5, scope: !1361)
!1367 = !DILocation(line: 288, column: 41, scope: !1361)
!1368 = !DILocation(line: 288, column: 44, scope: !1361)
!1369 = !DILocation(line: 288, column: 30, scope: !1361)
!1370 = !DILocation(line: 288, column: 28, scope: !1361)
!1371 = !DILocation(line: 288, column: 3, scope: !1361)
!1372 = distinct !{!1372, !1364, !1373, !512}
!1373 = !DILocation(line: 289, column: 12, scope: !1357)
!1374 = !DILocation(line: 291, column: 29, scope: !1263)
!1375 = !DILocation(line: 291, column: 37, scope: !1263)
!1376 = !DILocation(line: 291, column: 19, scope: !1263)
!1377 = !DILocation(line: 291, column: 17, scope: !1263)
!1378 = !DILocation(line: 291, column: 4, scope: !1263)
!1379 = !DILocation(line: 291, column: 10, scope: !1263)
!1380 = !DILocation(line: 293, column: 17, scope: !1263)
!1381 = !DILocation(line: 293, column: 15, scope: !1263)
!1382 = !DILocation(line: 293, column: 3, scope: !1263)
!1383 = !DILocation(line: 293, column: 11, scope: !1263)
!1384 = !DILocalVariable(name: "i", scope: !1385, file: !2, line: 294, type: !494)
!1385 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 294, column: 3)
!1386 = !DILocation(line: 294, column: 15, scope: !1385)
!1387 = !DILocation(line: 294, column: 8, scope: !1385)
!1388 = !DILocation(line: 294, column: 22, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1385, file: !2, line: 294, column: 3)
!1390 = !DILocation(line: 294, column: 27, scope: !1389)
!1391 = !DILocation(line: 294, column: 24, scope: !1389)
!1392 = !DILocation(line: 294, column: 3, scope: !1385)
!1393 = !DILocation(line: 295, column: 30, scope: !1389)
!1394 = !DILocation(line: 295, column: 33, scope: !1389)
!1395 = !DILocation(line: 295, column: 19, scope: !1389)
!1396 = !DILocation(line: 295, column: 17, scope: !1389)
!1397 = !DILocation(line: 295, column: 5, scope: !1389)
!1398 = !DILocation(line: 295, column: 10, scope: !1389)
!1399 = !DILocation(line: 295, column: 13, scope: !1389)
!1400 = !DILocation(line: 294, column: 37, scope: !1389)
!1401 = !DILocation(line: 294, column: 3, scope: !1389)
!1402 = distinct !{!1402, !1392, !1403, !512}
!1403 = !DILocation(line: 295, column: 40, scope: !1385)
!1404 = !DILocation(line: 297, column: 10, scope: !1263)
!1405 = !DILocation(line: 297, column: 3, scope: !1263)
!1406 = distinct !DISubprogram(name: "read_input_reservoir_sampling", scope: !2, file: !2, line: 179, type: !1407, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !172, retainedNodes: !373)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!714, !1266, !4, !714, !749, !1409}
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!1410 = !DILocalVariable(name: "in", arg: 1, scope: !1406, file: !2, line: 179, type: !1266)
!1411 = !DILocation(line: 179, column: 38, scope: !1406)
!1412 = !DILocalVariable(name: "eolbyte", arg: 2, scope: !1406, file: !2, line: 179, type: !4)
!1413 = !DILocation(line: 179, column: 47, scope: !1406)
!1414 = !DILocalVariable(name: "k", arg: 3, scope: !1406, file: !2, line: 179, type: !714)
!1415 = !DILocation(line: 179, column: 62, scope: !1406)
!1416 = !DILocalVariable(name: "s", arg: 4, scope: !1406, file: !2, line: 180, type: !749)
!1417 = !DILocation(line: 180, column: 55, scope: !1406)
!1418 = !DILocalVariable(name: "out_rsrv", arg: 5, scope: !1406, file: !2, line: 181, type: !1409)
!1419 = !DILocation(line: 181, column: 52, scope: !1406)
!1420 = !DILocalVariable(name: "n_lines", scope: !1406, file: !2, line: 183, type: !1421)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "randint", file: !751, line: 30, baseType: !782)
!1422 = !DILocation(line: 183, column: 11, scope: !1406)
!1423 = !DILocalVariable(name: "n_alloc_lines", scope: !1406, file: !2, line: 184, type: !714)
!1424 = !DILocation(line: 184, column: 9, scope: !1406)
!1425 = !DILocalVariable(name: "line", scope: !1406, file: !2, line: 185, type: !740)
!1426 = !DILocation(line: 185, column: 22, scope: !1406)
!1427 = !DILocalVariable(name: "rsrv", scope: !1406, file: !2, line: 186, type: !740)
!1428 = !DILocation(line: 186, column: 22, scope: !1406)
!1429 = !DILocation(line: 189, column: 16, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 189, column: 3)
!1431 = !DILocation(line: 189, column: 8, scope: !1430)
!1432 = !DILocation(line: 189, column: 21, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1430, file: !2, line: 189, column: 3)
!1434 = !DILocation(line: 189, column: 31, scope: !1433)
!1435 = !DILocation(line: 189, column: 29, scope: !1433)
!1436 = !DILocation(line: 189, column: 3, scope: !1430)
!1437 = !DILocation(line: 192, column: 11, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !2, line: 192, column: 11)
!1439 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 190, column: 5)
!1440 = !DILocation(line: 192, column: 22, scope: !1438)
!1441 = !DILocation(line: 192, column: 19, scope: !1438)
!1442 = !DILocalVariable(name: "old", scope: !1443, file: !2, line: 194, type: !714)
!1443 = distinct !DILexicalBlock(scope: !1438, file: !2, line: 193, column: 9)
!1444 = !DILocation(line: 194, column: 17, scope: !1443)
!1445 = !DILocation(line: 194, column: 23, scope: !1443)
!1446 = !DILocation(line: 195, column: 27, scope: !1443)
!1447 = !DILocation(line: 195, column: 52, scope: !1443)
!1448 = !DILocation(line: 195, column: 18, scope: !1443)
!1449 = !DILocation(line: 195, column: 16, scope: !1443)
!1450 = !DILocation(line: 196, column: 20, scope: !1443)
!1451 = !DILocation(line: 196, column: 25, scope: !1443)
!1452 = !DILocation(line: 196, column: 39, scope: !1443)
!1453 = !DILocation(line: 196, column: 55, scope: !1443)
!1454 = !DILocation(line: 196, column: 53, scope: !1443)
!1455 = !DILocation(line: 196, column: 60, scope: !1443)
!1456 = !DILocation(line: 196, column: 11, scope: !1443)
!1457 = !DILocation(line: 197, column: 9, scope: !1443)
!1458 = !DILocation(line: 199, column: 37, scope: !1439)
!1459 = !DILocation(line: 199, column: 42, scope: !1439)
!1460 = !DILocation(line: 199, column: 52, scope: !1439)
!1461 = !DILocation(line: 199, column: 56, scope: !1439)
!1462 = !DILocation(line: 199, column: 14, scope: !1439)
!1463 = !DILocation(line: 199, column: 12, scope: !1439)
!1464 = !DILocation(line: 200, column: 12, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1439, file: !2, line: 200, column: 11)
!1466 = !DILocation(line: 200, column: 11, scope: !1465)
!1467 = !DILocation(line: 201, column: 9, scope: !1465)
!1468 = !DILocation(line: 202, column: 5, scope: !1439)
!1469 = !DILocation(line: 189, column: 41, scope: !1433)
!1470 = !DILocation(line: 189, column: 3, scope: !1433)
!1471 = distinct !{!1471, !1436, !1472, !512}
!1472 = !DILocation(line: 202, column: 5, scope: !1430)
!1473 = !DILocation(line: 205, column: 7, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 205, column: 7)
!1475 = !DILocation(line: 205, column: 12, scope: !1474)
!1476 = !DILocalVariable(name: "dummy", scope: !1477, file: !2, line: 207, type: !741)
!1477 = distinct !DILexicalBlock(scope: !1474, file: !2, line: 206, column: 5)
!1478 = !DILocation(line: 207, column: 25, scope: !1477)
!1479 = !DILocation(line: 208, column: 7, scope: !1477)
!1480 = !DILocation(line: 219, column: 7, scope: !1477)
!1481 = !DILocalVariable(name: "j", scope: !1482, file: !2, line: 221, type: !1421)
!1482 = distinct !DILexicalBlock(scope: !1477, file: !2, line: 220, column: 9)
!1483 = !DILocation(line: 221, column: 19, scope: !1482)
!1484 = !DILocation(line: 221, column: 39, scope: !1482)
!1485 = !DILocation(line: 221, column: 42, scope: !1482)
!1486 = !DILocation(line: 221, column: 50, scope: !1482)
!1487 = !DILocation(line: 221, column: 23, scope: !1482)
!1488 = !DILocation(line: 222, column: 19, scope: !1482)
!1489 = !DILocation(line: 222, column: 23, scope: !1482)
!1490 = !DILocation(line: 222, column: 21, scope: !1482)
!1491 = !DILocation(line: 222, column: 18, scope: !1482)
!1492 = !DILocation(line: 222, column: 30, scope: !1482)
!1493 = !DILocation(line: 222, column: 35, scope: !1482)
!1494 = !DILocation(line: 222, column: 16, scope: !1482)
!1495 = !DILocation(line: 223, column: 9, scope: !1482)
!1496 = !DILocation(line: 224, column: 36, scope: !1477)
!1497 = !DILocation(line: 224, column: 42, scope: !1477)
!1498 = !DILocation(line: 224, column: 46, scope: !1477)
!1499 = !DILocation(line: 224, column: 14, scope: !1477)
!1500 = !DILocation(line: 224, column: 55, scope: !1477)
!1501 = !DILocation(line: 224, column: 63, scope: !1477)
!1502 = !DILocation(line: 224, column: 73, scope: !1477)
!1503 = !DILocation(line: 0, scope: !1477)
!1504 = distinct !{!1504, !1480, !1505, !512}
!1505 = !DILocation(line: 224, column: 75, scope: !1477)
!1506 = !DILocation(line: 226, column: 13, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1477, file: !2, line: 226, column: 11)
!1508 = !DILocation(line: 226, column: 11, scope: !1507)
!1509 = !DILocation(line: 227, column: 41, scope: !1507)
!1510 = !DILocation(line: 227, column: 9, scope: !1507)
!1511 = !DILocation(line: 229, column: 7, scope: !1477)
!1512 = !DILocation(line: 230, column: 5, scope: !1477)
!1513 = !DILocation(line: 233, column: 15, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 233, column: 7)
!1515 = !DILocation(line: 233, column: 7, scope: !1514)
!1516 = !DILocation(line: 234, column: 26, scope: !1514)
!1517 = !DILocation(line: 234, column: 33, scope: !1514)
!1518 = !DILocation(line: 234, column: 5, scope: !1514)
!1519 = !DILocation(line: 236, column: 15, scope: !1406)
!1520 = !DILocation(line: 236, column: 4, scope: !1406)
!1521 = !DILocation(line: 236, column: 13, scope: !1406)
!1522 = !DILocation(line: 237, column: 15, scope: !1406)
!1523 = !DILocation(line: 237, column: 18, scope: !1406)
!1524 = !DILocation(line: 237, column: 10, scope: !1406)
!1525 = !DILocation(line: 237, column: 3, scope: !1406)
!1526 = distinct !DISubprogram(name: "write_random_numbers", scope: !2, file: !2, line: 353, type: !1527, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !172, retainedNodes: !373)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!187, !749, !494, !494, !494, !4}
!1529 = !DILocalVariable(name: "s", arg: 1, scope: !1526, file: !2, line: 353, type: !749)
!1530 = !DILocation(line: 353, column: 46, scope: !1526)
!1531 = !DILocalVariable(name: "count", arg: 2, scope: !1526, file: !2, line: 353, type: !494)
!1532 = !DILocation(line: 353, column: 56, scope: !1526)
!1533 = !DILocalVariable(name: "lo_input", arg: 3, scope: !1526, file: !2, line: 354, type: !494)
!1534 = !DILocation(line: 354, column: 30, scope: !1526)
!1535 = !DILocalVariable(name: "hi_input", arg: 4, scope: !1526, file: !2, line: 354, type: !494)
!1536 = !DILocation(line: 354, column: 47, scope: !1526)
!1537 = !DILocalVariable(name: "eolbyte", arg: 5, scope: !1526, file: !2, line: 354, type: !4)
!1538 = !DILocation(line: 354, column: 62, scope: !1526)
!1539 = !DILocalVariable(name: "range", scope: !1526, file: !2, line: 356, type: !1540)
!1540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1421)
!1541 = !DILocation(line: 356, column: 17, scope: !1526)
!1542 = !DILocation(line: 356, column: 25, scope: !1526)
!1543 = !DILocation(line: 356, column: 36, scope: !1526)
!1544 = !DILocation(line: 356, column: 34, scope: !1526)
!1545 = !DILocation(line: 356, column: 45, scope: !1526)
!1546 = !DILocalVariable(name: "i", scope: !1547, file: !2, line: 358, type: !494)
!1547 = distinct !DILexicalBlock(scope: !1526, file: !2, line: 358, column: 3)
!1548 = !DILocation(line: 358, column: 15, scope: !1547)
!1549 = !DILocation(line: 358, column: 8, scope: !1547)
!1550 = !DILocation(line: 358, column: 22, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 358, column: 3)
!1552 = !DILocation(line: 358, column: 26, scope: !1551)
!1553 = !DILocation(line: 358, column: 24, scope: !1551)
!1554 = !DILocation(line: 358, column: 3, scope: !1547)
!1555 = !DILocalVariable(name: "j", scope: !1556, file: !2, line: 360, type: !241)
!1556 = distinct !DILexicalBlock(scope: !1551, file: !2, line: 359, column: 5)
!1557 = !DILocation(line: 360, column: 25, scope: !1556)
!1558 = !DILocation(line: 360, column: 29, scope: !1556)
!1559 = !DILocation(line: 360, column: 56, scope: !1556)
!1560 = !DILocation(line: 360, column: 59, scope: !1556)
!1561 = !DILocation(line: 360, column: 40, scope: !1556)
!1562 = !DILocation(line: 360, column: 38, scope: !1556)
!1563 = !DILocation(line: 361, column: 27, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1556, file: !2, line: 361, column: 11)
!1565 = !DILocation(line: 361, column: 30, scope: !1564)
!1566 = !DILocation(line: 361, column: 13, scope: !1564)
!1567 = !DILocation(line: 361, column: 11, scope: !1564)
!1568 = !DILocation(line: 362, column: 9, scope: !1564)
!1569 = !DILocation(line: 363, column: 5, scope: !1556)
!1570 = !DILocation(line: 358, column: 34, scope: !1551)
!1571 = !DILocation(line: 358, column: 3, scope: !1551)
!1572 = distinct !{!1572, !1554, !1573, !512}
!1573 = !DILocation(line: 363, column: 5, scope: !1547)
!1574 = !DILocation(line: 365, column: 3, scope: !1526)
!1575 = !DILocation(line: 366, column: 1, scope: !1526)
!1576 = distinct !DISubprogram(name: "write_random_lines", scope: !2, file: !2, line: 372, type: !1577, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !172, retainedNodes: !373)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!187, !749, !494, !1579, !494}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!1581 = !DILocalVariable(name: "s", arg: 1, scope: !1576, file: !2, line: 372, type: !749)
!1582 = !DILocation(line: 372, column: 44, scope: !1576)
!1583 = !DILocalVariable(name: "count", arg: 2, scope: !1576, file: !2, line: 372, type: !494)
!1584 = !DILocation(line: 372, column: 54, scope: !1576)
!1585 = !DILocalVariable(name: "lines", arg: 3, scope: !1576, file: !2, line: 373, type: !1579)
!1586 = !DILocation(line: 373, column: 34, scope: !1576)
!1587 = !DILocalVariable(name: "n_lines", arg: 4, scope: !1576, file: !2, line: 373, type: !494)
!1588 = !DILocation(line: 373, column: 48, scope: !1576)
!1589 = !DILocalVariable(name: "i", scope: !1590, file: !2, line: 375, type: !494)
!1590 = distinct !DILexicalBlock(scope: !1576, file: !2, line: 375, column: 3)
!1591 = !DILocation(line: 375, column: 15, scope: !1590)
!1592 = !DILocation(line: 375, column: 8, scope: !1590)
!1593 = !DILocation(line: 375, column: 22, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1590, file: !2, line: 375, column: 3)
!1595 = !DILocation(line: 375, column: 26, scope: !1594)
!1596 = !DILocation(line: 375, column: 24, scope: !1594)
!1597 = !DILocation(line: 375, column: 3, scope: !1590)
!1598 = !DILocalVariable(name: "j", scope: !1599, file: !2, line: 377, type: !1540)
!1599 = distinct !DILexicalBlock(scope: !1594, file: !2, line: 376, column: 5)
!1600 = !DILocation(line: 377, column: 21, scope: !1599)
!1601 = !DILocation(line: 377, column: 41, scope: !1599)
!1602 = !DILocation(line: 377, column: 44, scope: !1599)
!1603 = !DILocation(line: 377, column: 25, scope: !1599)
!1604 = !DILocalVariable(name: "p", scope: !1599, file: !2, line: 378, type: !1579)
!1605 = !DILocation(line: 378, column: 20, scope: !1599)
!1606 = !DILocation(line: 378, column: 24, scope: !1599)
!1607 = !DILocation(line: 378, column: 32, scope: !1599)
!1608 = !DILocation(line: 378, column: 30, scope: !1599)
!1609 = !DILocalVariable(name: "len", scope: !1599, file: !2, line: 379, type: !494)
!1610 = !DILocation(line: 379, column: 14, scope: !1599)
!1611 = !DILocation(line: 379, column: 20, scope: !1599)
!1612 = !DILocation(line: 379, column: 27, scope: !1599)
!1613 = !DILocation(line: 379, column: 25, scope: !1599)
!1614 = !DILocation(line: 380, column: 19, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1599, file: !2, line: 380, column: 11)
!1616 = !DILocation(line: 380, column: 39, scope: !1615)
!1617 = !DILocation(line: 380, column: 44, scope: !1615)
!1618 = !DILocation(line: 380, column: 11, scope: !1615)
!1619 = !DILocation(line: 380, column: 55, scope: !1615)
!1620 = !DILocation(line: 380, column: 52, scope: !1615)
!1621 = !DILocation(line: 381, column: 9, scope: !1615)
!1622 = !DILocation(line: 382, column: 5, scope: !1599)
!1623 = !DILocation(line: 375, column: 34, scope: !1594)
!1624 = !DILocation(line: 375, column: 3, scope: !1594)
!1625 = distinct !{!1625, !1597, !1626, !512}
!1626 = !DILocation(line: 382, column: 5, scope: !1590)
!1627 = !DILocation(line: 384, column: 3, scope: !1576)
!1628 = !DILocation(line: 385, column: 1, scope: !1576)
!1629 = distinct !DISubprogram(name: "write_permuted_output_reservoir", scope: !2, file: !2, line: 241, type: !1630, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !172, retainedNodes: !373)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!187, !494, !740, !1632}
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!1634 = !DILocalVariable(name: "n_lines", arg: 1, scope: !1629, file: !2, line: 241, type: !494)
!1635 = !DILocation(line: 241, column: 41, scope: !1629)
!1636 = !DILocalVariable(name: "lines", arg: 2, scope: !1629, file: !2, line: 241, type: !740)
!1637 = !DILocation(line: 241, column: 69, scope: !1629)
!1638 = !DILocalVariable(name: "permutation", arg: 3, scope: !1629, file: !2, line: 242, type: !1632)
!1639 = !DILocation(line: 242, column: 48, scope: !1629)
!1640 = !DILocalVariable(name: "i", scope: !1641, file: !2, line: 244, type: !494)
!1641 = distinct !DILexicalBlock(scope: !1629, file: !2, line: 244, column: 3)
!1642 = !DILocation(line: 244, column: 15, scope: !1641)
!1643 = !DILocation(line: 244, column: 8, scope: !1641)
!1644 = !DILocation(line: 244, column: 22, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1641, file: !2, line: 244, column: 3)
!1646 = !DILocation(line: 244, column: 26, scope: !1645)
!1647 = !DILocation(line: 244, column: 24, scope: !1645)
!1648 = !DILocation(line: 244, column: 3, scope: !1641)
!1649 = !DILocalVariable(name: "p", scope: !1650, file: !2, line: 246, type: !1651)
!1650 = distinct !DILexicalBlock(scope: !1645, file: !2, line: 245, column: 5)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !741)
!1653 = !DILocation(line: 246, column: 32, scope: !1650)
!1654 = !DILocation(line: 246, column: 37, scope: !1650)
!1655 = !DILocation(line: 246, column: 43, scope: !1650)
!1656 = !DILocation(line: 246, column: 55, scope: !1650)
!1657 = !DILocation(line: 247, column: 19, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1650, file: !2, line: 247, column: 11)
!1659 = !DILocation(line: 247, column: 22, scope: !1658)
!1660 = !DILocation(line: 247, column: 45, scope: !1658)
!1661 = !DILocation(line: 247, column: 48, scope: !1658)
!1662 = !DILocation(line: 247, column: 56, scope: !1658)
!1663 = !DILocation(line: 247, column: 11, scope: !1658)
!1664 = !DILocation(line: 247, column: 67, scope: !1658)
!1665 = !DILocation(line: 247, column: 70, scope: !1658)
!1666 = !DILocation(line: 247, column: 64, scope: !1658)
!1667 = !DILocation(line: 248, column: 9, scope: !1658)
!1668 = !DILocation(line: 249, column: 5, scope: !1650)
!1669 = !DILocation(line: 244, column: 36, scope: !1645)
!1670 = !DILocation(line: 244, column: 3, scope: !1645)
!1671 = distinct !{!1671, !1648, !1672, !512}
!1672 = !DILocation(line: 249, column: 5, scope: !1641)
!1673 = !DILocation(line: 251, column: 3, scope: !1629)
!1674 = !DILocation(line: 252, column: 1, scope: !1629)
!1675 = distinct !DISubprogram(name: "write_permuted_numbers", scope: !2, file: !2, line: 337, type: !1676, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !172, retainedNodes: !373)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!187, !494, !494, !1632, !4}
!1678 = !DILocalVariable(name: "n_lines", arg: 1, scope: !1675, file: !2, line: 337, type: !494)
!1679 = !DILocation(line: 337, column: 32, scope: !1675)
!1680 = !DILocalVariable(name: "lo_input", arg: 2, scope: !1675, file: !2, line: 337, type: !494)
!1681 = !DILocation(line: 337, column: 48, scope: !1675)
!1682 = !DILocalVariable(name: "permutation", arg: 3, scope: !1675, file: !2, line: 338, type: !1632)
!1683 = !DILocation(line: 338, column: 39, scope: !1675)
!1684 = !DILocalVariable(name: "eolbyte", arg: 4, scope: !1675, file: !2, line: 338, type: !4)
!1685 = !DILocation(line: 338, column: 57, scope: !1675)
!1686 = !DILocalVariable(name: "i", scope: !1687, file: !2, line: 340, type: !494)
!1687 = distinct !DILexicalBlock(scope: !1675, file: !2, line: 340, column: 3)
!1688 = !DILocation(line: 340, column: 15, scope: !1687)
!1689 = !DILocation(line: 340, column: 8, scope: !1687)
!1690 = !DILocation(line: 340, column: 22, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1687, file: !2, line: 340, column: 3)
!1692 = !DILocation(line: 340, column: 26, scope: !1691)
!1693 = !DILocation(line: 340, column: 24, scope: !1691)
!1694 = !DILocation(line: 340, column: 3, scope: !1687)
!1695 = !DILocalVariable(name: "n", scope: !1696, file: !2, line: 342, type: !241)
!1696 = distinct !DILexicalBlock(scope: !1691, file: !2, line: 341, column: 5)
!1697 = !DILocation(line: 342, column: 25, scope: !1696)
!1698 = !DILocation(line: 342, column: 29, scope: !1696)
!1699 = !DILocation(line: 342, column: 40, scope: !1696)
!1700 = !DILocation(line: 342, column: 52, scope: !1696)
!1701 = !DILocation(line: 342, column: 38, scope: !1696)
!1702 = !DILocation(line: 343, column: 27, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1696, file: !2, line: 343, column: 11)
!1704 = !DILocation(line: 343, column: 30, scope: !1703)
!1705 = !DILocation(line: 343, column: 13, scope: !1703)
!1706 = !DILocation(line: 343, column: 11, scope: !1703)
!1707 = !DILocation(line: 344, column: 9, scope: !1703)
!1708 = !DILocation(line: 345, column: 5, scope: !1696)
!1709 = !DILocation(line: 340, column: 36, scope: !1691)
!1710 = !DILocation(line: 340, column: 3, scope: !1691)
!1711 = distinct !{!1711, !1694, !1712, !512}
!1712 = !DILocation(line: 345, column: 5, scope: !1687)
!1713 = !DILocation(line: 347, column: 3, scope: !1675)
!1714 = !DILocation(line: 348, column: 1, scope: !1675)
!1715 = distinct !DISubprogram(name: "write_permuted_lines", scope: !2, file: !2, line: 305, type: !1716, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !172, retainedNodes: !373)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!187, !494, !1579, !1632}
!1718 = !DILocalVariable(name: "n_lines", arg: 1, scope: !1715, file: !2, line: 305, type: !494)
!1719 = !DILocation(line: 305, column: 30, scope: !1715)
!1720 = !DILocalVariable(name: "line", arg: 2, scope: !1715, file: !2, line: 305, type: !1579)
!1721 = !DILocation(line: 305, column: 52, scope: !1715)
!1722 = !DILocalVariable(name: "permutation", arg: 3, scope: !1715, file: !2, line: 306, type: !1632)
!1723 = !DILocation(line: 306, column: 37, scope: !1715)
!1724 = !DILocalVariable(name: "i", scope: !1725, file: !2, line: 308, type: !494)
!1725 = distinct !DILexicalBlock(scope: !1715, file: !2, line: 308, column: 3)
!1726 = !DILocation(line: 308, column: 15, scope: !1725)
!1727 = !DILocation(line: 308, column: 8, scope: !1725)
!1728 = !DILocation(line: 308, column: 22, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !2, line: 308, column: 3)
!1730 = !DILocation(line: 308, column: 26, scope: !1729)
!1731 = !DILocation(line: 308, column: 24, scope: !1729)
!1732 = !DILocation(line: 308, column: 3, scope: !1725)
!1733 = !DILocalVariable(name: "p", scope: !1734, file: !2, line: 310, type: !1579)
!1734 = distinct !DILexicalBlock(scope: !1729, file: !2, line: 309, column: 5)
!1735 = !DILocation(line: 310, column: 20, scope: !1734)
!1736 = !DILocation(line: 310, column: 24, scope: !1734)
!1737 = !DILocation(line: 310, column: 31, scope: !1734)
!1738 = !DILocation(line: 310, column: 43, scope: !1734)
!1739 = !DILocation(line: 310, column: 29, scope: !1734)
!1740 = !DILocalVariable(name: "len", scope: !1734, file: !2, line: 311, type: !494)
!1741 = !DILocation(line: 311, column: 14, scope: !1734)
!1742 = !DILocation(line: 311, column: 20, scope: !1734)
!1743 = !DILocation(line: 311, column: 27, scope: !1734)
!1744 = !DILocation(line: 311, column: 25, scope: !1734)
!1745 = !DILocation(line: 312, column: 19, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1734, file: !2, line: 312, column: 11)
!1747 = !DILocation(line: 312, column: 39, scope: !1746)
!1748 = !DILocation(line: 312, column: 44, scope: !1746)
!1749 = !DILocation(line: 312, column: 11, scope: !1746)
!1750 = !DILocation(line: 312, column: 55, scope: !1746)
!1751 = !DILocation(line: 312, column: 52, scope: !1746)
!1752 = !DILocation(line: 313, column: 9, scope: !1746)
!1753 = !DILocation(line: 314, column: 5, scope: !1734)
!1754 = !DILocation(line: 308, column: 36, scope: !1729)
!1755 = !DILocation(line: 308, column: 3, scope: !1729)
!1756 = distinct !{!1756, !1732, !1757, !512}
!1757 = !DILocation(line: 314, column: 5, scope: !1725)
!1758 = !DILocation(line: 316, column: 3, scope: !1715)
!1759 = !DILocation(line: 317, column: 1, scope: !1715)
!1760 = distinct !DISubprogram(name: "write_error", scope: !159, file: !159, line: 953, type: !426, scopeLine: 954, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !172, retainedNodes: !373)
!1761 = !DILocalVariable(name: "saved_errno", scope: !1760, file: !159, line: 955, type: !187)
!1762 = !DILocation(line: 955, column: 7, scope: !1760)
!1763 = !DILocation(line: 955, column: 21, scope: !1760)
!1764 = !DILocation(line: 956, column: 11, scope: !1760)
!1765 = !DILocation(line: 956, column: 3, scope: !1760)
!1766 = !DILocation(line: 957, column: 11, scope: !1760)
!1767 = !DILocation(line: 957, column: 3, scope: !1760)
!1768 = !DILocation(line: 958, column: 13, scope: !1760)
!1769 = !DILocation(line: 958, column: 3, scope: !1760)
!1770 = !DILocation(line: 959, column: 24, scope: !1760)
!1771 = !DILocation(line: 959, column: 37, scope: !1760)
!1772 = !DILocation(line: 959, column: 3, scope: !1760)
!1773 = distinct !DISubprogram(name: "usable_st_size", scope: !159, file: !159, line: 918, type: !1774, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !172, retainedNodes: !373)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!465, !1776}
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1206)
!1778 = !DILocalVariable(name: "sb", arg: 1, scope: !1773, file: !159, line: 918, type: !1776)
!1779 = !DILocation(line: 918, column: 36, scope: !1773)
!1780 = !DILocation(line: 920, column: 20, scope: !1773)
!1781 = !DILocation(line: 920, column: 24, scope: !1773)
!1782 = !DILocation(line: 920, column: 11, scope: !1773)
!1783 = !DILocation(line: 920, column: 33, scope: !1773)
!1784 = !DILocation(line: 920, column: 45, scope: !1773)
!1785 = !DILocation(line: 920, column: 49, scope: !1773)
!1786 = !DILocation(line: 920, column: 36, scope: !1773)
!1787 = !DILocation(line: 921, column: 11, scope: !1773)
!1788 = !DILocation(line: 921, column: 27, scope: !1773)
!1789 = !DILocation(line: 921, column: 14, scope: !1773)
!1790 = !DILocation(line: 921, column: 31, scope: !1773)
!1791 = !DILocation(line: 920, column: 3, scope: !1773)
!1792 = distinct !DISubprogram(name: "next_line", scope: !2, file: !2, line: 145, type: !1793, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !172, retainedNodes: !373)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!233, !233, !4}
!1795 = !DILocalVariable(name: "line", arg: 1, scope: !1792, file: !2, line: 145, type: !233)
!1796 = !DILocation(line: 145, column: 18, scope: !1792)
!1797 = !DILocalVariable(name: "eolbyte", arg: 2, scope: !1792, file: !2, line: 145, type: !4)
!1798 = !DILocation(line: 145, column: 29, scope: !1792)
!1799 = !DILocalVariable(name: "p", scope: !1792, file: !2, line: 147, type: !233)
!1800 = !DILocation(line: 147, column: 9, scope: !1792)
!1801 = !DILocation(line: 147, column: 24, scope: !1792)
!1802 = !DILocation(line: 147, column: 30, scope: !1792)
!1803 = !DILocation(line: 147, column: 13, scope: !1792)
!1804 = !DILocation(line: 148, column: 10, scope: !1792)
!1805 = !DILocation(line: 148, column: 12, scope: !1792)
!1806 = !DILocation(line: 148, column: 3, scope: !1792)
!1807 = distinct !DISubprogram(name: "randint_choose", scope: !751, file: !751, line: 50, type: !1808, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !172, retainedNodes: !373)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!1421, !749, !1421}
!1810 = !DILocalVariable(name: "s", arg: 1, scope: !1807, file: !751, line: 50, type: !749)
!1811 = !DILocation(line: 50, column: 40, scope: !1807)
!1812 = !DILocalVariable(name: "choices", arg: 2, scope: !1807, file: !751, line: 50, type: !1421)
!1813 = !DILocation(line: 50, column: 51, scope: !1807)
!1814 = !DILocation(line: 52, column: 26, scope: !1807)
!1815 = !DILocation(line: 52, column: 29, scope: !1807)
!1816 = !DILocation(line: 52, column: 37, scope: !1807)
!1817 = !DILocation(line: 52, column: 10, scope: !1807)
!1818 = !DILocation(line: 52, column: 3, scope: !1807)
!1819 = distinct !DISubprogram(name: "print_number", scope: !2, file: !2, line: 322, type: !1820, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !172, retainedNodes: !373)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!465, !241, !4}
!1822 = !DILocalVariable(name: "number", arg: 1, scope: !1819, file: !2, line: 322, type: !241)
!1823 = !DILocation(line: 322, column: 33, scope: !1819)
!1824 = !DILocalVariable(name: "eolbyte", arg: 2, scope: !1819, file: !2, line: 322, type: !4)
!1825 = !DILocation(line: 322, column: 46, scope: !1819)
!1826 = !DILocalVariable(name: "buf", scope: !1819, file: !2, line: 324, type: !368)
!1827 = !DILocation(line: 324, column: 8, scope: !1819)
!1828 = !DILocalVariable(name: "p", scope: !1819, file: !2, line: 325, type: !233)
!1829 = !DILocation(line: 325, column: 9, scope: !1819)
!1830 = !DILocation(line: 325, column: 13, scope: !1819)
!1831 = !DILocation(line: 325, column: 17, scope: !1819)
!1832 = !DILocation(line: 326, column: 8, scope: !1819)
!1833 = !DILocation(line: 326, column: 4, scope: !1819)
!1834 = !DILocation(line: 326, column: 6, scope: !1819)
!1835 = !DILocation(line: 327, column: 3, scope: !1819)
!1836 = !DILocation(line: 328, column: 18, scope: !1819)
!1837 = !DILocation(line: 328, column: 25, scope: !1819)
!1838 = !DILocation(line: 328, column: 16, scope: !1819)
!1839 = !DILocation(line: 328, column: 12, scope: !1819)
!1840 = !DILocation(line: 328, column: 6, scope: !1819)
!1841 = !DILocation(line: 328, column: 10, scope: !1819)
!1842 = !DILocation(line: 328, column: 5, scope: !1819)
!1843 = !DILocation(line: 329, column: 18, scope: !1819)
!1844 = !DILocation(line: 329, column: 25, scope: !1819)
!1845 = distinct !{!1845, !1835, !1846, !512}
!1846 = !DILocation(line: 329, column: 29, scope: !1819)
!1847 = !DILocalVariable(name: "len", scope: !1819, file: !2, line: 330, type: !714)
!1848 = !DILocation(line: 330, column: 9, scope: !1819)
!1849 = !DILocation(line: 330, column: 15, scope: !1819)
!1850 = !DILocation(line: 330, column: 19, scope: !1819)
!1851 = !DILocation(line: 330, column: 34, scope: !1819)
!1852 = !DILocation(line: 330, column: 32, scope: !1819)
!1853 = !DILocation(line: 331, column: 18, scope: !1819)
!1854 = !DILocation(line: 331, column: 24, scope: !1819)
!1855 = !DILocation(line: 331, column: 29, scope: !1819)
!1856 = !DILocation(line: 331, column: 10, scope: !1819)
!1857 = !DILocation(line: 331, column: 40, scope: !1819)
!1858 = !DILocation(line: 331, column: 37, scope: !1819)
!1859 = !DILocation(line: 331, column: 3, scope: !1819)
