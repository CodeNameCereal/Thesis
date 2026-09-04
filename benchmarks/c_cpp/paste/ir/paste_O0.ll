; ModuleID = 'src/paste.c'
source_filename = "src/paste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.infomap = type { ptr, ptr }
%struct.mcel_t = type { i32, i8, i8 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [204 x i8] c"Write lines consisting of the sequentially corresponding lines from\0Aeach FILE, separated by TABs, to standard output.\0AThe newline of every line except the line from the last file\0Ais replaced with a TAB.\0A\00", align 1, !dbg !12
@stdout = external global ptr, align 8
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
@optarg = external global ptr, align 8
@.str.14 = private unnamed_addr constant [3 x i8] c"\\0\00", align 1, !dbg !72
@serial_merge = internal global i8 0, align 1, !dbg !77
@line_delim = internal global i8 10, align 1, !dbg !303
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !131
@Version = external global ptr, align 8
@.str.16 = private unnamed_addr constant [15 x i8] c"David M. Ihnat\00", align 1, !dbg !136
@.str.17 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !141
@optind = external global i32, align 4
@.str.18 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !146
@.str.19 = private unnamed_addr constant [52 x i8] c"delimiter list ends with an unescaped backslash: %s\00", align 1, !dbg !148
@delims = internal global ptr null, align 8, !dbg !156
@delim_lens = internal global ptr null, align 8, !dbg !158
@have_read_stdin = internal global i8 0, align 1, !dbg !153
@stdin = external global ptr, align 8
@.str.20 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !164
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !169
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !174
@.str.22 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !182
@.str.23 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !184
@.str.24 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !186
@.str.25 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !191
@.str.26 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !193
@.str.27 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !195
@.str.28 = private unnamed_addr constant [4 x i8] c"dir\00", align 1, !dbg !197
@.str.29 = private unnamed_addr constant [3 x i8] c"ls\00", align 1, !dbg !199
@.str.30 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1, !dbg !201
@.str.31 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1, !dbg !203
@.str.32 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1, !dbg !205
@.str.33 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1, !dbg !207
@.str.34 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1, !dbg !212
@.str.35 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !217
@.str.36 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !219
@.str.37 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !221
@.str.38 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !223
@.str.39 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !225
@.str.40 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !227
@.str.41 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !229
@.str.42 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !234
@.str.43 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !239
@.str.44 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !241
@.str.45 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !246
@.str.46 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !248
@.str.47 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !250
@.str.48 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !252
@.str.49 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !254
@.str.50 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !256
@.str.51 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !261
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.26, ptr @.str.49 }, %struct.infomap { ptr @.str.11, ptr @.str.50 }, %struct.infomap { ptr @.str.35, ptr @.str.51 }, %struct.infomap { ptr @.str.36, ptr @.str.51 }, %struct.infomap { ptr @.str.37, ptr @.str.51 }, %struct.infomap { ptr @.str.38, ptr @.str.51 }, %struct.infomap zeroinitializer], align 16
@.str.52 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !263
@.str.53 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !268
@.str.54 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !273
@.str.55 = private unnamed_addr constant [7 x i8] c"serial\00", align 1, !dbg !278
@.str.56 = private unnamed_addr constant [11 x i8] c"delimiters\00", align 1, !dbg !280
@.str.57 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1, !dbg !285
@.str.58 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !287
@.str.59 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !289
@longopts = internal constant [6 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.55, i32 0, [4 x i8] zeroinitializer, ptr null, i32 115, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.56, i32 1, [4 x i8] zeroinitializer, ptr null, i32 100, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.57, i32 0, [4 x i8] zeroinitializer, ptr null, i32 122, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.58, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -130, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.59, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -131, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16, !dbg !291
@num_delims = internal global i64 0, align 8, !dbg !306
@.str.61 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !311
@.str.62 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !313
@.str.63 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !315
@.str.64 = private unnamed_addr constant [25 x i8] c"standard input is closed\00", align 1, !dbg !317

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !330 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !333, !DIExpression(), !334)
  %3 = load i32, ptr %2, align 4, !dbg !335
  %4 = icmp ne i32 %3, 0, !dbg !337
  br i1 %4, label %5, label %12, !dbg !337

5:                                                ; preds = %1
  br label %6, !dbg !338

6:                                                ; preds = %5
  %7 = load ptr, ptr @stderr, align 8, !dbg !339
  %8 = call ptr @gettext(ptr noundef @.str) #10, !dbg !339
  %9 = load ptr, ptr @program_name, align 8, !dbg !339
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef %8, ptr noundef %9) #10, !dbg !339
  br label %11, !dbg !339

11:                                               ; preds = %6
  br label %24, !dbg !339

12:                                               ; preds = %1
  %13 = call ptr @gettext(ptr noundef @.str.1) #10, !dbg !341
  %14 = load ptr, ptr @program_name, align 8, !dbg !343
  %15 = call i32 (ptr, ...) @rpl_printf(ptr noundef %13, ptr noundef %14), !dbg !344
  %16 = call ptr @gettext(ptr noundef @.str.2) #10, !dbg !345
  %17 = load ptr, ptr @stdout, align 8, !dbg !346
  %18 = call i32 @fputs_unlocked(ptr noundef %16, ptr noundef %17), !dbg !347
  call void @emit_stdin_note(), !dbg !348
  call void @emit_mandatory_arg_note(), !dbg !349
  %19 = call ptr @gettext(ptr noundef @.str.4) #10, !dbg !350
  call void @oputs_(ptr noundef @.str.3, ptr noundef %19), !dbg !351
  %20 = call ptr @gettext(ptr noundef @.str.5) #10, !dbg !352
  call void @oputs_(ptr noundef @.str.3, ptr noundef %20), !dbg !353
  %21 = call ptr @gettext(ptr noundef @.str.6) #10, !dbg !354
  call void @oputs_(ptr noundef @.str.3, ptr noundef %21), !dbg !355
  %22 = call ptr @gettext(ptr noundef @.str.7) #10, !dbg !356
  call void @oputs_(ptr noundef @.str.3, ptr noundef %22), !dbg !357
  %23 = call ptr @gettext(ptr noundef @.str.8) #10, !dbg !358
  call void @oputs_(ptr noundef @.str.3, ptr noundef %23), !dbg !359
  call void @emit_ancillary_info(ptr noundef @.str.3), !dbg !360
  br label %24

24:                                               ; preds = %12, %11
  %25 = load i32, ptr %2, align 4, !dbg !361
  call void @exit(i32 noundef %25) #11, !dbg !362
  unreachable, !dbg !362
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #1

declare i32 @rpl_printf(ptr noundef, ...) #2

declare i32 @fputs_unlocked(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_stdin_note() #3 !dbg !363 {
  %1 = call ptr @gettext(ptr noundef @.str.20) #10, !dbg !366
  %2 = load ptr, ptr @stdout, align 8, !dbg !367
  %3 = call i32 @fputs_unlocked(ptr noundef %1, ptr noundef %2), !dbg !368
  ret void, !dbg !369
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_mandatory_arg_note() #3 !dbg !370 {
  %1 = call ptr @gettext(ptr noundef @.str.21) #10, !dbg !371
  %2 = load ptr, ptr @stdout, align 8, !dbg !372
  %3 = call i32 @fputs_unlocked(ptr noundef %1, ptr noundef %2), !dbg !373
  ret void, !dbg !374
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(ptr noundef %0, ptr noundef %1) #3 !dbg !176 {
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
  %17 = call ptr @getenv(ptr noundef @.str.22) #10, !dbg !385
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
  %40 = call i64 @strspn(ptr noundef %39, ptr noundef @.str.24) #12, !dbg !408
  %41 = getelementptr inbounds nuw i8, ptr %38, i64 %40, !dbg !409
  store ptr %41, ptr %7, align 8, !dbg !405
    #dbg_declare(ptr %8, !410, !DIExpression(), !411)
  %42 = load ptr, ptr %4, align 8, !dbg !412
  %43 = call ptr @strchr(ptr noundef %42, i32 noundef 45) #12, !dbg !413
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
    #dbg_declare(ptr %10, !430, !DIExpression(), !431)
  store i64 0, ptr %10, align 8, !dbg !431
  br label %54, !dbg !432

54:                                               ; preds = %63, %52
  %55 = load ptr, ptr %9, align 8, !dbg !433
  %56 = load ptr, ptr %8, align 8, !dbg !434
  %57 = icmp ult ptr %55, %56, !dbg !435
  br i1 %57, label %58, label %61, !dbg !436

58:                                               ; preds = %54
  %59 = load i64, ptr %10, align 8, !dbg !437
  %60 = icmp ult i64 %59, 2, !dbg !438
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !439
  br i1 %62, label %63, label %82, !dbg !432

63:                                               ; preds = %61
  %64 = call ptr @__ctype_b_loc() #13, !dbg !440
  %65 = load ptr, ptr %64, align 8, !dbg !440
  %66 = load ptr, ptr %9, align 8, !dbg !441
  %67 = getelementptr inbounds nuw i8, ptr %66, i32 1, !dbg !441
  store ptr %67, ptr %9, align 8, !dbg !441
  %68 = load i8, ptr %66, align 1, !dbg !442
  %69 = sext i8 %68 to i32, !dbg !440
  %70 = sext i32 %69 to i64, !dbg !440
  %71 = getelementptr inbounds i16, ptr %65, i64 %70, !dbg !440
  %72 = load i16, ptr %71, align 2, !dbg !440
  %73 = zext i16 %72 to i32, !dbg !440
  %74 = and i32 %73, 8192, !dbg !440
  %75 = icmp ne i32 %74, 0, !dbg !443
  %76 = xor i1 %75, true, !dbg !443
  %77 = xor i1 %76, true, !dbg !444
  %78 = zext i1 %77 to i32, !dbg !444
  %79 = sext i32 %78 to i64, !dbg !444
  %80 = load i64, ptr %10, align 8, !dbg !445
  %81 = add i64 %80, %79, !dbg !445
  store i64 %81, ptr %10, align 8, !dbg !445
  br label %54, !dbg !432, !llvm.loop !446

82:                                               ; preds = %61
  %83 = load i64, ptr %10, align 8, !dbg !448
  %84 = icmp eq i64 %83, 2, !dbg !450
  br i1 %84, label %85, label %87, !dbg !450

85:                                               ; preds = %82
  %86 = load ptr, ptr %7, align 8, !dbg !451
  store ptr %86, ptr %8, align 8, !dbg !453
  store i8 0, ptr %6, align 1, !dbg !454
  br label %87, !dbg !455

87:                                               ; preds = %85, %82
  br label %88, !dbg !456

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
    #dbg_declare(ptr %11, !457, !DIExpression(), !458)
  %90 = load ptr, ptr %8, align 8, !dbg !459
  %91 = call i64 @strcspn(ptr noundef %90, ptr noundef @.str.25) #12, !dbg !460
  store i64 %91, ptr %11, align 8, !dbg !458
    #dbg_declare(ptr %12, !461, !DIExpression(), !462)
  %92 = load ptr, ptr %8, align 8, !dbg !463
  %93 = load i64, ptr %11, align 8, !dbg !464
  %94 = getelementptr inbounds nuw i8, ptr %92, i64 %93, !dbg !465
  store ptr %94, ptr %12, align 8, !dbg !462
  br label %95, !dbg !466

95:                                               ; preds = %161, %89
  %96 = load ptr, ptr %12, align 8, !dbg !467
  %97 = load i8, ptr %96, align 1, !dbg !468
  %98 = sext i8 %97 to i32, !dbg !468
  %99 = icmp ne i32 %98, 0, !dbg !468
  br i1 %99, label %100, label %105, !dbg !469

100:                                              ; preds = %95
  %101 = load ptr, ptr %12, align 8, !dbg !470
  %102 = load i8, ptr %101, align 1, !dbg !471
  %103 = sext i8 %102 to i32, !dbg !471
  %104 = icmp ne i32 %103, 10, !dbg !472
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !473
  br i1 %106, label %107, label %164, !dbg !466

107:                                              ; preds = %105
  %108 = load ptr, ptr %12, align 8, !dbg !474
  %109 = load i8, ptr %108, align 1, !dbg !477
  %110 = sext i8 %109 to i32, !dbg !477
  %111 = icmp eq i32 %110, 45, !dbg !478
  br i1 %111, label %112, label %119, !dbg !479

112:                                              ; preds = %107
  %113 = load ptr, ptr %12, align 8, !dbg !480
  %114 = getelementptr inbounds i8, ptr %113, i64 1, !dbg !481
  %115 = load i8, ptr %114, align 1, !dbg !481
  %116 = sext i8 %115 to i32, !dbg !481
  %117 = icmp eq i32 %116, 45, !dbg !482
  br i1 %117, label %118, label %119, !dbg !479

118:                                              ; preds = %112
  store i8 0, ptr %6, align 1, !dbg !483
  br label %119, !dbg !484

119:                                              ; preds = %118, %112, %107
  %120 = call ptr @__ctype_b_loc() #13, !dbg !485
  %121 = load ptr, ptr %120, align 8, !dbg !485
  %122 = load ptr, ptr %12, align 8, !dbg !487
  %123 = load i8, ptr %122, align 1, !dbg !488
  %124 = sext i8 %123 to i32, !dbg !485
  %125 = sext i32 %124 to i64, !dbg !485
  %126 = getelementptr inbounds i16, ptr %121, i64 %125, !dbg !485
  %127 = load i16, ptr %126, align 2, !dbg !485
  %128 = zext i16 %127 to i32, !dbg !485
  %129 = and i32 %128, 8192, !dbg !485
  %130 = icmp ne i32 %129, 0, !dbg !485
  br i1 %130, label %131, label %161, !dbg !485

131:                                              ; preds = %119
  %132 = load ptr, ptr %12, align 8, !dbg !489
  %133 = load i8, ptr %132, align 1, !dbg !492
  %134 = sext i8 %133 to i32, !dbg !492
  %135 = icmp eq i32 %134, 9, !dbg !493
  br i1 %135, label %149, label %136, !dbg !494

136:                                              ; preds = %131
  %137 = call ptr @__ctype_b_loc() #13, !dbg !495
  %138 = load ptr, ptr %137, align 8, !dbg !495
  %139 = load ptr, ptr %12, align 8, !dbg !496
  %140 = getelementptr inbounds i8, ptr %139, i64 1, !dbg !497
  %141 = load i8, ptr %140, align 1, !dbg !497
  %142 = sext i8 %141 to i32, !dbg !495
  %143 = sext i32 %142 to i64, !dbg !495
  %144 = getelementptr inbounds i16, ptr %138, i64 %143, !dbg !495
  %145 = load i16, ptr %144, align 2, !dbg !495
  %146 = zext i16 %145 to i32, !dbg !495
  %147 = and i32 %146, 8192, !dbg !495
  %148 = icmp ne i32 %147, 0, !dbg !495
  br i1 %148, label %149, label %150, !dbg !494

149:                                              ; preds = %136, %131
  br label %164, !dbg !498

150:                                              ; preds = %136
  %151 = load i8, ptr %6, align 1, !dbg !499
  %152 = trunc i8 %151 to i1, !dbg !499
  br i1 %152, label %160, label %153, !dbg !501

153:                                              ; preds = %150
  %154 = load ptr, ptr %12, align 8, !dbg !502
  %155 = getelementptr inbounds i8, ptr %154, i64 1, !dbg !503
  %156 = load i8, ptr %155, align 1, !dbg !503
  %157 = sext i8 %156 to i32, !dbg !503
  %158 = icmp ne i32 %157, 45, !dbg !504
  br i1 %158, label %159, label %160, !dbg !501

159:                                              ; preds = %153
  br label %164, !dbg !505

160:                                              ; preds = %153, %150
  br label %161, !dbg !506

161:                                              ; preds = %160, %119
  %162 = load ptr, ptr %12, align 8, !dbg !507
  %163 = getelementptr inbounds nuw i8, ptr %162, i32 1, !dbg !507
  store ptr %163, ptr %12, align 8, !dbg !507
  br label %95, !dbg !466, !llvm.loop !508

164:                                              ; preds = %159, %149, %105
  %165 = load ptr, ptr %4, align 8, !dbg !510
  %166 = load ptr, ptr %7, align 8, !dbg !511
  %167 = load ptr, ptr %4, align 8, !dbg !512
  %168 = ptrtoint ptr %166 to i64, !dbg !513
  %169 = ptrtoint ptr %167 to i64, !dbg !513
  %170 = sub i64 %168, %169, !dbg !513
  %171 = load ptr, ptr @stdout, align 8, !dbg !514
  %172 = call i64 @fwrite_unlocked(ptr noundef %165, i64 noundef 1, i64 noundef %170, ptr noundef %171), !dbg !515
    #dbg_declare(ptr %13, !516, !DIExpression(), !517)
  %173 = load ptr, ptr %3, align 8, !dbg !518
  %174 = call zeroext i1 @streq(ptr noundef %173, ptr noundef @.str.26), !dbg !519
  br i1 %174, label %175, label %176, !dbg !519

175:                                              ; preds = %164
  br label %232, !dbg !519

176:                                              ; preds = %164
  %177 = load ptr, ptr %3, align 8, !dbg !520
  %178 = call zeroext i1 @streq(ptr noundef %177, ptr noundef @.str.28), !dbg !521
  br i1 %178, label %179, label %180, !dbg !521

179:                                              ; preds = %176
  br label %230, !dbg !521

180:                                              ; preds = %176
  %181 = load ptr, ptr %3, align 8, !dbg !522
  %182 = call zeroext i1 @streq(ptr noundef %181, ptr noundef @.str.30), !dbg !523
  br i1 %182, label %183, label %184, !dbg !523

183:                                              ; preds = %180
  br label %228, !dbg !523

184:                                              ; preds = %180
  %185 = load ptr, ptr %3, align 8, !dbg !524
  %186 = call zeroext i1 @streq(ptr noundef %185, ptr noundef @.str.31), !dbg !525
  br i1 %186, label %187, label %188, !dbg !525

187:                                              ; preds = %184
  br label %226, !dbg !525

188:                                              ; preds = %184
  %189 = load ptr, ptr %3, align 8, !dbg !526
  %190 = call zeroext i1 @streq(ptr noundef %189, ptr noundef @.str.33), !dbg !527
  br i1 %190, label %191, label %192, !dbg !527

191:                                              ; preds = %188
  br label %224, !dbg !527

192:                                              ; preds = %188
  %193 = load ptr, ptr %3, align 8, !dbg !528
  %194 = call zeroext i1 @streq(ptr noundef %193, ptr noundef @.str.34), !dbg !529
  br i1 %194, label %195, label %196, !dbg !529

195:                                              ; preds = %192
  br label %222, !dbg !529

196:                                              ; preds = %192
  %197 = load ptr, ptr %3, align 8, !dbg !530
  %198 = call zeroext i1 @streq(ptr noundef %197, ptr noundef @.str.35), !dbg !531
  br i1 %198, label %199, label %200, !dbg !531

199:                                              ; preds = %196
  br label %220, !dbg !531

200:                                              ; preds = %196
  %201 = load ptr, ptr %3, align 8, !dbg !532
  %202 = call zeroext i1 @streq(ptr noundef %201, ptr noundef @.str.36), !dbg !533
  br i1 %202, label %203, label %204, !dbg !533

203:                                              ; preds = %200
  br label %218, !dbg !533

204:                                              ; preds = %200
  %205 = load ptr, ptr %3, align 8, !dbg !534
  %206 = call zeroext i1 @streq(ptr noundef %205, ptr noundef @.str.37), !dbg !535
  br i1 %206, label %207, label %208, !dbg !535

207:                                              ; preds = %204
  br label %216, !dbg !535

208:                                              ; preds = %204
  %209 = load ptr, ptr %3, align 8, !dbg !536
  %210 = call zeroext i1 @streq(ptr noundef %209, ptr noundef @.str.38), !dbg !537
  br i1 %210, label %211, label %212, !dbg !537

211:                                              ; preds = %208
  br label %214, !dbg !537

212:                                              ; preds = %208
  %213 = load ptr, ptr %3, align 8, !dbg !538
  br label %214, !dbg !537

214:                                              ; preds = %212, %211
  %215 = phi ptr [ @.str.32, %211 ], [ %213, %212 ], !dbg !537
  br label %216, !dbg !535

216:                                              ; preds = %214, %207
  %217 = phi ptr [ @.str.32, %207 ], [ %215, %214 ], !dbg !535
  br label %218, !dbg !533

218:                                              ; preds = %216, %203
  %219 = phi ptr [ @.str.32, %203 ], [ %217, %216 ], !dbg !533
  br label %220, !dbg !531

220:                                              ; preds = %218, %199
  %221 = phi ptr [ @.str.32, %199 ], [ %219, %218 ], !dbg !531
  br label %222, !dbg !529

222:                                              ; preds = %220, %195
  %223 = phi ptr [ @.str.32, %195 ], [ %221, %220 ], !dbg !529
  br label %224, !dbg !527

224:                                              ; preds = %222, %191
  %225 = phi ptr [ @.str.32, %191 ], [ %223, %222 ], !dbg !527
  br label %226, !dbg !525

226:                                              ; preds = %224, %187
  %227 = phi ptr [ @.str.32, %187 ], [ %225, %224 ], !dbg !525
  br label %228, !dbg !523

228:                                              ; preds = %226, %183
  %229 = phi ptr [ @.str.29, %183 ], [ %227, %226 ], !dbg !523
  br label %230, !dbg !521

230:                                              ; preds = %228, %179
  %231 = phi ptr [ @.str.29, %179 ], [ %229, %228 ], !dbg !521
  br label %232, !dbg !519

232:                                              ; preds = %230, %175
  %233 = phi ptr [ @.str.27, %175 ], [ %231, %230 ], !dbg !519
  store ptr %233, ptr %13, align 8, !dbg !517
  %234 = load ptr, ptr %8, align 8, !dbg !539
  %235 = call i32 @strncmp(ptr noundef %234, ptr noundef @.str.39, i64 noundef 6) #12, !dbg !541
  %236 = icmp eq i32 %235, 0, !dbg !541
  br i1 %236, label %241, label %237, !dbg !542

237:                                              ; preds = %232
  %238 = load ptr, ptr %8, align 8, !dbg !543
  %239 = call i32 @strncmp(ptr noundef %238, ptr noundef @.str.40, i64 noundef 9) #12, !dbg !544
  %240 = icmp eq i32 %239, 0, !dbg !544
  br i1 %240, label %241, label %248, !dbg !542

241:                                              ; preds = %237, %232
  %242 = load ptr, ptr %13, align 8, !dbg !545
  %243 = load ptr, ptr %13, align 8, !dbg !547
  %244 = load i64, ptr %11, align 8, !dbg !548
  %245 = trunc i64 %244 to i32, !dbg !549
  %246 = load ptr, ptr %8, align 8, !dbg !550
  %247 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str.41, ptr noundef @.str.42, ptr noundef %242, ptr noundef %243, i32 noundef %245, ptr noundef %246), !dbg !551
  br label %254, !dbg !552

248:                                              ; preds = %237
  %249 = load ptr, ptr %13, align 8, !dbg !553
  %250 = load i64, ptr %11, align 8, !dbg !555
  %251 = trunc i64 %250 to i32, !dbg !556
  %252 = load ptr, ptr %8, align 8, !dbg !557
  %253 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str.43, ptr noundef @.str.44, ptr noundef %249, i32 noundef %251, ptr noundef %252), !dbg !558
  br label %254

254:                                              ; preds = %248, %241
  %255 = load ptr, ptr @stdout, align 8, !dbg !559
  %256 = call i32 @fputs_unlocked(ptr noundef @.str.45, ptr noundef %255), !dbg !560
  %257 = load ptr, ptr @stdout, align 8, !dbg !561
  %258 = call i32 @fputs_unlocked(ptr noundef @.str.46, ptr noundef %257), !dbg !562
  %259 = load ptr, ptr %7, align 8, !dbg !563
  %260 = load ptr, ptr %12, align 8, !dbg !564
  %261 = load ptr, ptr %7, align 8, !dbg !565
  %262 = ptrtoint ptr %260 to i64, !dbg !566
  %263 = ptrtoint ptr %261 to i64, !dbg !566
  %264 = sub i64 %262, %263, !dbg !566
  %265 = load ptr, ptr @stdout, align 8, !dbg !567
  %266 = call i64 @fwrite_unlocked(ptr noundef %259, i64 noundef 1, i64 noundef %264, ptr noundef %265), !dbg !568
  %267 = load ptr, ptr @stdout, align 8, !dbg !569
  %268 = call i32 @fputs_unlocked(ptr noundef @.str.47, ptr noundef %267), !dbg !570
  %269 = load ptr, ptr @stdout, align 8, !dbg !571
  %270 = call i32 @fputs_unlocked(ptr noundef @.str.48, ptr noundef %269), !dbg !572
  %271 = load ptr, ptr %12, align 8, !dbg !573
  %272 = load ptr, ptr @stdout, align 8, !dbg !574
  %273 = call i32 @fputs_unlocked(ptr noundef %271, ptr noundef %272), !dbg !575
  br label %274, !dbg !576

274:                                              ; preds = %254, %33
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !577 {
  %2 = alloca ptr, align 8
  %3 = alloca [7 x %struct.infomap], align 16
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !580, !DIExpression(), !581)
    #dbg_declare(ptr %3, !582, !DIExpression(), !589)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %3, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !589
    #dbg_declare(ptr %4, !590, !DIExpression(), !591)
  %7 = load ptr, ptr %2, align 8, !dbg !592
  store ptr %7, ptr %4, align 8, !dbg !591
    #dbg_declare(ptr %5, !593, !DIExpression(), !595)
  %8 = getelementptr inbounds [7 x %struct.infomap], ptr %3, i64 0, i64 0, !dbg !596
  store ptr %8, ptr %5, align 8, !dbg !595
  br label %9, !dbg !597

9:                                                ; preds = %23, %1
  %10 = load ptr, ptr %5, align 8, !dbg !598
  %11 = getelementptr inbounds nuw %struct.infomap, ptr %10, i32 0, i32 0, !dbg !599
  %12 = load ptr, ptr %11, align 8, !dbg !599
  %13 = icmp ne ptr %12, null, !dbg !598
  br i1 %13, label %14, label %21, !dbg !600

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 8, !dbg !601
  %16 = load ptr, ptr %5, align 8, !dbg !602
  %17 = getelementptr inbounds nuw %struct.infomap, ptr %16, i32 0, i32 0, !dbg !603
  %18 = load ptr, ptr %17, align 8, !dbg !603
  %19 = call zeroext i1 @streq(ptr noundef %15, ptr noundef %18), !dbg !604
  %20 = xor i1 %19, true, !dbg !605
  br label %21

21:                                               ; preds = %14, %9
  %22 = phi i1 [ false, %9 ], [ %20, %14 ], !dbg !606
  br i1 %22, label %23, label %26, !dbg !597

23:                                               ; preds = %21
  %24 = load ptr, ptr %5, align 8, !dbg !607
  %25 = getelementptr inbounds nuw %struct.infomap, ptr %24, i32 1, !dbg !607
  store ptr %25, ptr %5, align 8, !dbg !607
  br label %9, !dbg !597, !llvm.loop !608

26:                                               ; preds = %21
  %27 = load ptr, ptr %5, align 8, !dbg !609
  %28 = getelementptr inbounds nuw %struct.infomap, ptr %27, i32 0, i32 1, !dbg !611
  %29 = load ptr, ptr %28, align 8, !dbg !611
  %30 = icmp ne ptr %29, null, !dbg !609
  br i1 %30, label %31, label %35, !dbg !609

31:                                               ; preds = %26
  %32 = load ptr, ptr %5, align 8, !dbg !612
  %33 = getelementptr inbounds nuw %struct.infomap, ptr %32, i32 0, i32 1, !dbg !613
  %34 = load ptr, ptr %33, align 8, !dbg !613
  store ptr %34, ptr %4, align 8, !dbg !614
  br label %35, !dbg !615

35:                                               ; preds = %31, %26
  call void @emit_bug_reporting_address(), !dbg !616
    #dbg_declare(ptr %6, !617, !DIExpression(), !618)
  %36 = load ptr, ptr %2, align 8, !dbg !619
  %37 = call zeroext i1 @streq(ptr noundef %36, ptr noundef @.str.26), !dbg !620
  br i1 %37, label %38, label %39, !dbg !620

38:                                               ; preds = %35
  br label %41, !dbg !620

39:                                               ; preds = %35
  %40 = load ptr, ptr %2, align 8, !dbg !621
  br label %41, !dbg !620

41:                                               ; preds = %39, %38
  %42 = phi ptr [ @.str.27, %38 ], [ %40, %39 ], !dbg !620
  store ptr %42, ptr %6, align 8, !dbg !618
  %43 = call ptr @gettext(ptr noundef @.str.52) #10, !dbg !622
  %44 = load ptr, ptr %6, align 8, !dbg !623
  %45 = call i32 (ptr, ...) @rpl_printf(ptr noundef %43, ptr noundef @.str.42, ptr noundef %44), !dbg !624
  %46 = call ptr @gettext(ptr noundef @.str.53) #10, !dbg !625
  %47 = load ptr, ptr %4, align 8, !dbg !626
  %48 = load ptr, ptr %4, align 8, !dbg !627
  %49 = load ptr, ptr %2, align 8, !dbg !628
  %50 = icmp eq ptr %48, %49, !dbg !629
  %51 = zext i1 %50 to i64, !dbg !627
  %52 = select i1 %50, ptr @.str.54, ptr @.str.10, !dbg !627
  %53 = call i32 (ptr, ...) @rpl_printf(ptr noundef %46, ptr noundef %47, ptr noundef %52), !dbg !630
  ret void, !dbg !631
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #3 !dbg !632 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
    #dbg_declare(ptr %4, !636, !DIExpression(), !637)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !638, !DIExpression(), !639)
    #dbg_declare(ptr %6, !640, !DIExpression(), !641)
    #dbg_declare(ptr %7, !642, !DIExpression(), !643)
  store ptr @.str.9, ptr %7, align 8, !dbg !643
  %10 = load ptr, ptr %5, align 8, !dbg !644
  %11 = getelementptr inbounds ptr, ptr %10, i64 0, !dbg !644
  %12 = load ptr, ptr %11, align 8, !dbg !644
  call void @set_program_name(ptr noundef %12), !dbg !645
  %13 = call ptr @setlocale(i32 noundef 6, ptr noundef @.str.10) #10, !dbg !646
  %14 = call ptr @bindtextdomain(ptr noundef @.str.11, ptr noundef @.str.12) #10, !dbg !647
  %15 = call ptr @textdomain(ptr noundef @.str.11) #10, !dbg !648
  %16 = call i32 @atexit(ptr noundef @close_stdout) #10, !dbg !649
  br label %17, !dbg !650

17:                                               ; preds = %44, %2
  %18 = load i32, ptr %4, align 4, !dbg !651
  %19 = load ptr, ptr %5, align 8, !dbg !652
  %20 = call i32 @getopt_long(i32 noundef %18, ptr noundef %19, ptr noundef @.str.13, ptr noundef @longopts, ptr noundef null) #10, !dbg !653
  store i32 %20, ptr %6, align 4, !dbg !654
  %21 = icmp ne i32 %20, -1, !dbg !655
  br i1 %21, label %22, label %45, !dbg !650

22:                                               ; preds = %17
  %23 = load i32, ptr %6, align 4, !dbg !656
  switch i32 %23, label %43 [
    i32 100, label %24
    i32 115, label %35
    i32 122, label %36
    i32 -130, label %37
    i32 -131, label %38
  ], !dbg !658

24:                                               ; preds = %22
  %25 = load ptr, ptr @optarg, align 8, !dbg !659
  %26 = getelementptr inbounds i8, ptr %25, i64 0, !dbg !659
  %27 = load i8, ptr %26, align 1, !dbg !659
  %28 = sext i8 %27 to i32, !dbg !659
  %29 = icmp eq i32 %28, 0, !dbg !661
  br i1 %29, label %30, label %31, !dbg !659

30:                                               ; preds = %24
  br label %33, !dbg !659

31:                                               ; preds = %24
  %32 = load ptr, ptr @optarg, align 8, !dbg !662
  br label %33, !dbg !659

33:                                               ; preds = %31, %30
  %34 = phi ptr [ @.str.14, %30 ], [ %32, %31 ], !dbg !659
  store ptr %34, ptr %7, align 8, !dbg !663
  br label %44, !dbg !664

35:                                               ; preds = %22
  store i8 1, ptr @serial_merge, align 1, !dbg !665
  br label %44, !dbg !666

36:                                               ; preds = %22
  store i8 0, ptr @line_delim, align 1, !dbg !667
  br label %44, !dbg !668

37:                                               ; preds = %22
  call void @usage(i32 noundef 0) #14, !dbg !669
  unreachable, !dbg !669

38:                                               ; preds = %22
  %39 = load ptr, ptr @stdout, align 8, !dbg !670
  %40 = load ptr, ptr @Version, align 8, !dbg !670
  %41 = call ptr @proper_name_lite(ptr noundef @.str.16, ptr noundef @.str.16), !dbg !671
  %42 = call ptr @proper_name_lite(ptr noundef @.str.17, ptr noundef @.str.17), !dbg !671
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %39, ptr noundef @.str.3, ptr noundef @.str.15, ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef null), !dbg !670
  call void @exit(i32 noundef 0) #11, !dbg !670
  unreachable, !dbg !670

43:                                               ; preds = %22
  call void @usage(i32 noundef 1) #14, !dbg !672
  unreachable, !dbg !672

44:                                               ; preds = %36, %35, %33
  br label %17, !dbg !650, !llvm.loop !673

45:                                               ; preds = %17
    #dbg_declare(ptr %8, !675, !DIExpression(), !676)
  %46 = load i32, ptr %4, align 4, !dbg !677
  %47 = load i32, ptr @optind, align 4, !dbg !678
  %48 = sub nsw i32 %46, %47, !dbg !679
  store i32 %48, ptr %8, align 4, !dbg !676
  %49 = load i32, ptr %8, align 4, !dbg !680
  %50 = icmp eq i32 %49, 0, !dbg !682
  br i1 %50, label %51, label %59, !dbg !682

51:                                               ; preds = %45
  %52 = call ptr @bad_cast(ptr noundef @.str.18), !dbg !683
  %53 = load ptr, ptr %5, align 8, !dbg !685
  %54 = load i32, ptr @optind, align 4, !dbg !686
  %55 = sext i32 %54 to i64, !dbg !685
  %56 = getelementptr inbounds ptr, ptr %53, i64 %55, !dbg !685
  store ptr %52, ptr %56, align 8, !dbg !687
  %57 = load i32, ptr %8, align 4, !dbg !688
  %58 = add nsw i32 %57, 1, !dbg !688
  store i32 %58, ptr %8, align 4, !dbg !688
  br label %59, !dbg !689

59:                                               ; preds = %51, %45
  %60 = load ptr, ptr %7, align 8, !dbg !690
  %61 = call i32 @collapse_escapes(ptr noundef %60), !dbg !692
  %62 = icmp ne i32 %61, 0, !dbg !692
  br i1 %62, label %63, label %67, !dbg !692

63:                                               ; preds = %59
  %64 = call ptr @gettext(ptr noundef @.str.19) #10, !dbg !693
  %65 = load ptr, ptr %7, align 8, !dbg !695
  %66 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 6, ptr noundef %65), !dbg !696
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %64, ptr noundef %66), !dbg !697
  unreachable, !dbg !697

67:                                               ; preds = %59
    #dbg_declare(ptr %9, !698, !DIExpression(), !699)
  %68 = load i8, ptr @serial_merge, align 1, !dbg !700
  %69 = trunc i8 %68 to i1, !dbg !700
  %70 = zext i1 %69 to i64, !dbg !700
  %71 = select i1 %69, ptr @paste_serial, ptr @paste_parallel, !dbg !700
  %72 = load i32, ptr %8, align 4, !dbg !701
  %73 = sext i32 %72 to i64, !dbg !701
  %74 = load ptr, ptr %5, align 8, !dbg !702
  %75 = load i32, ptr @optind, align 4, !dbg !703
  %76 = sext i32 %75 to i64, !dbg !702
  %77 = getelementptr inbounds ptr, ptr %74, i64 %76, !dbg !702
  %78 = call zeroext i1 %71(i64 noundef %73, ptr noundef %77), !dbg !704
  %79 = zext i1 %78 to i8, !dbg !699
  store i8 %79, ptr %9, align 1, !dbg !699
  %80 = load ptr, ptr @delims, align 8, !dbg !705
  call void @free(ptr noundef %80) #10, !dbg !706
  %81 = load ptr, ptr @delim_lens, align 8, !dbg !707
  call void @free(ptr noundef %81) #10, !dbg !708
  %82 = load i8, ptr @have_read_stdin, align 1, !dbg !709
  %83 = trunc i8 %82 to i1, !dbg !709
  br i1 %83, label %84, label %91, !dbg !711

84:                                               ; preds = %67
  %85 = load ptr, ptr @stdin, align 8, !dbg !712
  %86 = call i32 @rpl_fclose(ptr noundef %85), !dbg !713
  %87 = icmp eq i32 %86, -1, !dbg !714
  br i1 %87, label %88, label %91, !dbg !711

88:                                               ; preds = %84
  %89 = call ptr @__errno_location() #13, !dbg !715
  %90 = load i32, ptr %89, align 4, !dbg !715
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %90, ptr noundef @.str.18), !dbg !716
  unreachable, !dbg !716

91:                                               ; preds = %84, %67
  %92 = load i8, ptr %9, align 1, !dbg !717
  %93 = trunc i8 %92 to i1, !dbg !717
  %94 = zext i1 %93 to i64, !dbg !717
  %95 = select i1 %93, i32 0, i32 1, !dbg !717
  ret i32 %95, !dbg !718
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

declare void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare ptr @proper_name_lite(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @bad_cast(ptr noundef %0) #3 !dbg !719 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !722, !DIExpression(), !723)
  %3 = load ptr, ptr %2, align 8, !dbg !724
  ret ptr %3, !dbg !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collapse_escapes(ptr noundef %0) #3 !dbg !726 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mcel_t, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !729, !DIExpression(), !730)
    #dbg_declare(ptr %3, !731, !DIExpression(), !732)
  %8 = load ptr, ptr %2, align 8, !dbg !733
  %9 = call noalias nonnull ptr @xstrdup(ptr noundef %8), !dbg !734
  store ptr %9, ptr %3, align 8, !dbg !732
    #dbg_declare(ptr %4, !735, !DIExpression(), !736)
  store i8 0, ptr %4, align 1, !dbg !736
  %10 = load ptr, ptr %3, align 8, !dbg !737
  store ptr %10, ptr @delims, align 8, !dbg !738
  %11 = load ptr, ptr %2, align 8, !dbg !739
  %12 = call i64 @strlen(ptr noundef %11) #12, !dbg !740
  %13 = icmp ugt i64 1, %12, !dbg !741
  br i1 %13, label %14, label %15, !dbg !741

14:                                               ; preds = %1
  br label %18, !dbg !741

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 8, !dbg !739
  %17 = call i64 @strlen(ptr noundef %16) #12, !dbg !740
  br label %18, !dbg !741

18:                                               ; preds = %15, %14
  %19 = phi i64 [ 1, %14 ], [ %17, %15 ], !dbg !741
  %20 = call noalias nonnull ptr @xnmalloc(i64 noundef %19, i64 noundef 8) #15, !dbg !742
  store ptr %20, ptr @delim_lens, align 8, !dbg !743
    #dbg_declare(ptr %5, !744, !DIExpression(), !745)
  %21 = load ptr, ptr %2, align 8, !dbg !746
  store ptr %21, ptr %5, align 8, !dbg !745
    #dbg_declare(ptr %6, !747, !DIExpression(), !748)
  store i64 0, ptr %6, align 8, !dbg !748
  br label %22, !dbg !749

22:                                               ; preds = %87, %85, %18
  %23 = load ptr, ptr %5, align 8, !dbg !750
  %24 = load i8, ptr %23, align 1, !dbg !751
  %25 = icmp ne i8 %24, 0, !dbg !749
  br i1 %25, label %26, label %109, !dbg !749

26:                                               ; preds = %22
  %27 = load ptr, ptr %5, align 8, !dbg !752
  %28 = load i8, ptr %27, align 1, !dbg !755
  %29 = sext i8 %28 to i32, !dbg !755
  %30 = icmp eq i32 %29, 92, !dbg !756
  br i1 %30, label %31, label %86, !dbg !756

31:                                               ; preds = %26
  %32 = load ptr, ptr %5, align 8, !dbg !757
  %33 = getelementptr inbounds nuw i8, ptr %32, i32 1, !dbg !757
  store ptr %33, ptr %5, align 8, !dbg !757
  %34 = load ptr, ptr %5, align 8, !dbg !759
  %35 = load i8, ptr %34, align 1, !dbg !761
  %36 = sext i8 %35 to i32, !dbg !761
  %37 = icmp eq i32 %36, 0, !dbg !762
  br i1 %37, label %38, label %39, !dbg !762

38:                                               ; preds = %31
  store i8 1, ptr %4, align 1, !dbg !763
  br label %109, !dbg !765

39:                                               ; preds = %31
  %40 = load ptr, ptr %5, align 8, !dbg !766
  %41 = load i8, ptr %40, align 1, !dbg !768
  %42 = sext i8 %41 to i32, !dbg !768
  %43 = icmp eq i32 %42, 48, !dbg !769
  br i1 %43, label %44, label %51, !dbg !769

44:                                               ; preds = %39
  %45 = load ptr, ptr %5, align 8, !dbg !770
  %46 = getelementptr inbounds nuw i8, ptr %45, i32 1, !dbg !770
  store ptr %46, ptr %5, align 8, !dbg !770
  %47 = load ptr, ptr @delim_lens, align 8, !dbg !772
  %48 = load i64, ptr %6, align 8, !dbg !773
  %49 = add nsw i64 %48, 1, !dbg !773
  store i64 %49, ptr %6, align 8, !dbg !773
  %50 = getelementptr inbounds i64, ptr %47, i64 %48, !dbg !772
  store i64 0, ptr %50, align 8, !dbg !774
  br label %84, !dbg !775

51:                                               ; preds = %39
  %52 = load ptr, ptr %5, align 8, !dbg !776
  %53 = load i8, ptr %52, align 1, !dbg !778
  %54 = sext i8 %53 to i32, !dbg !778
  switch i32 %54, label %76 [
    i32 98, label %55
    i32 102, label %58
    i32 110, label %61
    i32 114, label %64
    i32 116, label %67
    i32 118, label %70
    i32 92, label %73
  ], !dbg !779

55:                                               ; preds = %51
  %56 = load ptr, ptr %3, align 8, !dbg !780
  %57 = getelementptr inbounds nuw i8, ptr %56, i32 1, !dbg !780
  store ptr %57, ptr %3, align 8, !dbg !780
  store i8 8, ptr %56, align 1, !dbg !782
  br label %77, !dbg !783

58:                                               ; preds = %51
  %59 = load ptr, ptr %3, align 8, !dbg !784
  %60 = getelementptr inbounds nuw i8, ptr %59, i32 1, !dbg !784
  store ptr %60, ptr %3, align 8, !dbg !784
  store i8 12, ptr %59, align 1, !dbg !785
  br label %77, !dbg !786

61:                                               ; preds = %51
  %62 = load ptr, ptr %3, align 8, !dbg !787
  %63 = getelementptr inbounds nuw i8, ptr %62, i32 1, !dbg !787
  store ptr %63, ptr %3, align 8, !dbg !787
  store i8 10, ptr %62, align 1, !dbg !788
  br label %77, !dbg !789

64:                                               ; preds = %51
  %65 = load ptr, ptr %3, align 8, !dbg !790
  %66 = getelementptr inbounds nuw i8, ptr %65, i32 1, !dbg !790
  store ptr %66, ptr %3, align 8, !dbg !790
  store i8 13, ptr %65, align 1, !dbg !791
  br label %77, !dbg !792

67:                                               ; preds = %51
  %68 = load ptr, ptr %3, align 8, !dbg !793
  %69 = getelementptr inbounds nuw i8, ptr %68, i32 1, !dbg !793
  store ptr %69, ptr %3, align 8, !dbg !793
  store i8 9, ptr %68, align 1, !dbg !794
  br label %77, !dbg !795

70:                                               ; preds = %51
  %71 = load ptr, ptr %3, align 8, !dbg !796
  %72 = getelementptr inbounds nuw i8, ptr %71, i32 1, !dbg !796
  store ptr %72, ptr %3, align 8, !dbg !796
  store i8 11, ptr %71, align 1, !dbg !797
  br label %77, !dbg !798

73:                                               ; preds = %51
  %74 = load ptr, ptr %3, align 8, !dbg !799
  %75 = getelementptr inbounds nuw i8, ptr %74, i32 1, !dbg !799
  store ptr %75, ptr %3, align 8, !dbg !799
  store i8 92, ptr %74, align 1, !dbg !800
  br label %77, !dbg !801

76:                                               ; preds = %51
  br label %87, !dbg !802

77:                                               ; preds = %73, %70, %67, %64, %61, %58, %55
  %78 = load ptr, ptr %5, align 8, !dbg !803
  %79 = getelementptr inbounds nuw i8, ptr %78, i32 1, !dbg !803
  store ptr %79, ptr %5, align 8, !dbg !803
  %80 = load ptr, ptr @delim_lens, align 8, !dbg !804
  %81 = load i64, ptr %6, align 8, !dbg !805
  %82 = add nsw i64 %81, 1, !dbg !805
  store i64 %82, ptr %6, align 8, !dbg !805
  %83 = getelementptr inbounds i64, ptr %80, i64 %81, !dbg !804
  store i64 1, ptr %83, align 8, !dbg !806
  br label %84

84:                                               ; preds = %77, %44
  br label %85

85:                                               ; preds = %84
  br label %22, !dbg !807, !llvm.loop !808

86:                                               ; preds = %26
  br label %87, !dbg !810

87:                                               ; preds = %86, %76
    #dbg_label(!811, !812)
    #dbg_declare(ptr %7, !813, !DIExpression(), !826)
  %88 = load ptr, ptr %5, align 8, !dbg !827
  %89 = call i64 @mcel_scanz(ptr noundef %88), !dbg !828
  store i64 %89, ptr %7, align 4, !dbg !828
  %90 = load ptr, ptr %3, align 8, !dbg !829
  %91 = load ptr, ptr %5, align 8, !dbg !830
  %92 = getelementptr inbounds nuw %struct.mcel_t, ptr %7, i32 0, i32 2, !dbg !831
  %93 = load i8, ptr %92, align 1, !dbg !831
  %94 = zext i8 %93 to i64, !dbg !832
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %90, ptr align 1 %91, i64 %94, i1 false), !dbg !833
  %95 = getelementptr inbounds i8, ptr %90, i64 %94, !dbg !833
  store ptr %95, ptr %3, align 8, !dbg !834
  %96 = getelementptr inbounds nuw %struct.mcel_t, ptr %7, i32 0, i32 2, !dbg !835
  %97 = load i8, ptr %96, align 1, !dbg !835
  %98 = zext i8 %97 to i32, !dbg !836
  %99 = load ptr, ptr %5, align 8, !dbg !837
  %100 = sext i32 %98 to i64, !dbg !837
  %101 = getelementptr inbounds i8, ptr %99, i64 %100, !dbg !837
  store ptr %101, ptr %5, align 8, !dbg !837
  %102 = getelementptr inbounds nuw %struct.mcel_t, ptr %7, i32 0, i32 2, !dbg !838
  %103 = load i8, ptr %102, align 1, !dbg !838
  %104 = zext i8 %103 to i64, !dbg !839
  %105 = load ptr, ptr @delim_lens, align 8, !dbg !840
  %106 = load i64, ptr %6, align 8, !dbg !841
  %107 = add nsw i64 %106, 1, !dbg !841
  store i64 %107, ptr %6, align 8, !dbg !841
  %108 = getelementptr inbounds i64, ptr %105, i64 %106, !dbg !840
  store i64 %104, ptr %108, align 8, !dbg !842
  br label %22, !dbg !749, !llvm.loop !808

109:                                              ; preds = %38, %22
  %110 = load ptr, ptr %3, align 8, !dbg !843
  store i8 0, ptr %110, align 1, !dbg !844
  %111 = load i64, ptr %6, align 8, !dbg !845
  %112 = icmp eq i64 %111, 0, !dbg !847
  br i1 %112, label %113, label %116, !dbg !847

113:                                              ; preds = %109
  %114 = load ptr, ptr @delim_lens, align 8, !dbg !848
  %115 = getelementptr inbounds i64, ptr %114, i64 0, !dbg !848
  store i64 0, ptr %115, align 8, !dbg !850
  store i64 1, ptr %6, align 8, !dbg !851
  br label %116, !dbg !852

116:                                              ; preds = %113, %109
  %117 = load i64, ptr %6, align 8, !dbg !853
  store i64 %117, ptr @num_delims, align 8, !dbg !854
  %118 = load i8, ptr %4, align 1, !dbg !855
  %119 = trunc i8 %118 to i1, !dbg !855
  %120 = zext i1 %119 to i64, !dbg !855
  %121 = select i1 %119, i32 1, i32 0, !dbg !855
  ret i32 %121, !dbg !856
}

declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

declare ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @paste_serial(i64 noundef %0, ptr noundef %1) #3 !dbg !857 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
    #dbg_declare(ptr %3, !860, !DIExpression(), !861)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !862, !DIExpression(), !863)
    #dbg_declare(ptr %5, !864, !DIExpression(), !865)
  store i8 1, ptr %5, align 1, !dbg !865
    #dbg_declare(ptr %6, !866, !DIExpression(), !867)
    #dbg_declare(ptr %7, !868, !DIExpression(), !869)
    #dbg_declare(ptr %8, !870, !DIExpression(), !921)
  br label %13, !dbg !922

13:                                               ; preds = %123, %2
  %14 = load i64, ptr %3, align 8, !dbg !923
  %15 = icmp ne i64 %14, 0, !dbg !926
  br i1 %15, label %16, label %128, !dbg !926

16:                                               ; preds = %13
    #dbg_declare(ptr %9, !927, !DIExpression(), !929)
    #dbg_declare(ptr %10, !930, !DIExpression(), !931)
  %17 = load ptr, ptr %4, align 8, !dbg !932
  %18 = load ptr, ptr %17, align 8, !dbg !933
  %19 = call zeroext i1 @streq(ptr noundef %18, ptr noundef @.str.18), !dbg !934
  %20 = zext i1 %19 to i8, !dbg !931
  store i8 %20, ptr %10, align 1, !dbg !931
  %21 = load i8, ptr %10, align 1, !dbg !935
  %22 = trunc i8 %21 to i1, !dbg !935
  br i1 %22, label %23, label %25, !dbg !935

23:                                               ; preds = %16
  store i8 1, ptr @have_read_stdin, align 1, !dbg !937
  %24 = load ptr, ptr @stdin, align 8, !dbg !939
  store ptr %24, ptr %8, align 8, !dbg !940
  br label %39, !dbg !941

25:                                               ; preds = %16
  %26 = load ptr, ptr %4, align 8, !dbg !942
  %27 = load ptr, ptr %26, align 8, !dbg !944
  %28 = call noalias ptr @rpl_fopen(ptr noundef %27, ptr noundef @.str.61), !dbg !945
  store ptr %28, ptr %8, align 8, !dbg !946
  %29 = load ptr, ptr %8, align 8, !dbg !947
  %30 = icmp eq ptr %29, null, !dbg !949
  br i1 %30, label %31, label %37, !dbg !949

31:                                               ; preds = %25
  %32 = call ptr @__errno_location() #13, !dbg !950
  %33 = load i32, ptr %32, align 4, !dbg !950
  %34 = load ptr, ptr %4, align 8, !dbg !952
  %35 = load ptr, ptr %34, align 8, !dbg !953
  %36 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %35), !dbg !954
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %33, ptr noundef @.str.62, ptr noundef %36), !dbg !955
  store i8 0, ptr %5, align 1, !dbg !956
  br label %123, !dbg !957

37:                                               ; preds = %25
  %38 = load ptr, ptr %8, align 8, !dbg !958
  call void @fadvise(ptr noundef %38, i32 noundef 2), !dbg !959
  br label %39

39:                                               ; preds = %37, %23
    #dbg_declare(ptr %11, !960, !DIExpression(), !961)
  store i64 0, ptr %11, align 8, !dbg !961
    #dbg_declare(ptr %12, !962, !DIExpression(), !963)
  store i64 0, ptr %12, align 8, !dbg !963
  %40 = load ptr, ptr %8, align 8, !dbg !964
  %41 = call i32 @getc_unlocked(ptr noundef %40), !dbg !965
  store i32 %41, ptr %7, align 4, !dbg !966
  %42 = call ptr @__errno_location() #13, !dbg !967
  %43 = load i32, ptr %42, align 4, !dbg !967
  store i32 %43, ptr %9, align 4, !dbg !968
  %44 = load i32, ptr %7, align 4, !dbg !969
  %45 = icmp ne i32 %44, -1, !dbg !971
  br i1 %45, label %46, label %86, !dbg !971

46:                                               ; preds = %39
  br label %47, !dbg !972

47:                                               ; preds = %79, %46
  %48 = load ptr, ptr %8, align 8, !dbg !974
  %49 = call i32 @getc_unlocked(ptr noundef %48), !dbg !975
  store i32 %49, ptr %6, align 4, !dbg !976
  %50 = icmp ne i32 %49, -1, !dbg !977
  br i1 %50, label %51, label %81, !dbg !972

51:                                               ; preds = %47
  %52 = load i32, ptr %7, align 4, !dbg !978
  %53 = load i8, ptr @line_delim, align 1, !dbg !981
  %54 = zext i8 %53 to i32, !dbg !981
  %55 = icmp eq i32 %52, %54, !dbg !982
  br i1 %55, label %56, label %76, !dbg !982

56:                                               ; preds = %51
  %57 = load ptr, ptr @delims, align 8, !dbg !983
  %58 = load i64, ptr %12, align 8, !dbg !985
  %59 = getelementptr inbounds i8, ptr %57, i64 %58, !dbg !986
  %60 = load ptr, ptr @delim_lens, align 8, !dbg !987
  %61 = load i64, ptr %11, align 8, !dbg !988
  %62 = getelementptr inbounds i64, ptr %60, i64 %61, !dbg !987
  %63 = load i64, ptr %62, align 8, !dbg !987
  call void @output_delim(ptr noundef %59, i64 noundef %63), !dbg !989
  %64 = load ptr, ptr @delim_lens, align 8, !dbg !990
  %65 = load i64, ptr %11, align 8, !dbg !991
  %66 = getelementptr inbounds i64, ptr %64, i64 %65, !dbg !990
  %67 = load i64, ptr %66, align 8, !dbg !990
  %68 = load i64, ptr %12, align 8, !dbg !992
  %69 = add i64 %68, %67, !dbg !992
  store i64 %69, ptr %12, align 8, !dbg !992
  %70 = load i64, ptr %11, align 8, !dbg !993
  %71 = add nsw i64 %70, 1, !dbg !993
  store i64 %71, ptr %11, align 8, !dbg !993
  %72 = load i64, ptr @num_delims, align 8, !dbg !995
  %73 = icmp eq i64 %71, %72, !dbg !996
  br i1 %73, label %74, label %75, !dbg !996

74:                                               ; preds = %56
  store i64 0, ptr %11, align 8, !dbg !997
  store i64 0, ptr %12, align 8, !dbg !999
  br label %75, !dbg !1000

75:                                               ; preds = %74, %56
  br label %79, !dbg !1001

76:                                               ; preds = %51
  %77 = load i32, ptr %7, align 4, !dbg !1002
  %78 = trunc i32 %77 to i8, !dbg !1002
  call void @xputchar(i8 noundef signext %78), !dbg !1003
  br label %79

79:                                               ; preds = %76, %75
  %80 = load i32, ptr %6, align 4, !dbg !1004
  store i32 %80, ptr %7, align 4, !dbg !1005
  br label %47, !dbg !972, !llvm.loop !1006

81:                                               ; preds = %47
  %82 = call ptr @__errno_location() #13, !dbg !1008
  %83 = load i32, ptr %82, align 4, !dbg !1008
  store i32 %83, ptr %9, align 4, !dbg !1009
  %84 = load i32, ptr %7, align 4, !dbg !1010
  %85 = trunc i32 %84 to i8, !dbg !1010
  call void @xputchar(i8 noundef signext %85), !dbg !1011
  br label %86, !dbg !1012

86:                                               ; preds = %81, %39
  %87 = load i32, ptr %7, align 4, !dbg !1013
  %88 = load i8, ptr @line_delim, align 1, !dbg !1015
  %89 = zext i8 %88 to i32, !dbg !1015
  %90 = icmp ne i32 %87, %89, !dbg !1016
  br i1 %90, label %91, label %93, !dbg !1016

91:                                               ; preds = %86
  %92 = load i8, ptr @line_delim, align 1, !dbg !1017
  call void @xputchar(i8 noundef signext %92), !dbg !1018
  br label %93, !dbg !1018

93:                                               ; preds = %91, %86
  %94 = load ptr, ptr %8, align 8, !dbg !1019
  %95 = call i32 @ferror_unlocked(ptr noundef %94) #10, !dbg !1021
  %96 = icmp ne i32 %95, 0, !dbg !1021
  br i1 %96, label %98, label %97, !dbg !1022

97:                                               ; preds = %93
  store i32 0, ptr %9, align 4, !dbg !1023
  br label %98, !dbg !1024

98:                                               ; preds = %97, %93
  %99 = load i8, ptr %10, align 1, !dbg !1025
  %100 = trunc i8 %99 to i1, !dbg !1025
  br i1 %100, label %101, label %103, !dbg !1025

101:                                              ; preds = %98
  %102 = load ptr, ptr %8, align 8, !dbg !1027
  call void @clearerr_unlocked(ptr noundef %102) #10, !dbg !1028
  br label %114, !dbg !1028

103:                                              ; preds = %98
  %104 = load ptr, ptr %8, align 8, !dbg !1029
  %105 = call i32 @rpl_fclose(ptr noundef %104), !dbg !1031
  %106 = icmp ne i32 %105, 0, !dbg !1032
  br i1 %106, label %107, label %113, !dbg !1033

107:                                              ; preds = %103
  %108 = load i32, ptr %9, align 4, !dbg !1034
  %109 = icmp ne i32 %108, 0, !dbg !1034
  br i1 %109, label %113, label %110, !dbg !1033

110:                                              ; preds = %107
  %111 = call ptr @__errno_location() #13, !dbg !1035
  %112 = load i32, ptr %111, align 4, !dbg !1035
  store i32 %112, ptr %9, align 4, !dbg !1036
  br label %113, !dbg !1037

113:                                              ; preds = %110, %107, %103
  br label %114

114:                                              ; preds = %113, %101
  %115 = load i32, ptr %9, align 4, !dbg !1038
  %116 = icmp ne i32 %115, 0, !dbg !1038
  br i1 %116, label %117, label %122, !dbg !1038

117:                                              ; preds = %114
  %118 = load i32, ptr %9, align 4, !dbg !1040
  %119 = load ptr, ptr %4, align 8, !dbg !1042
  %120 = load ptr, ptr %119, align 8, !dbg !1043
  %121 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %120), !dbg !1044
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %118, ptr noundef @.str.62, ptr noundef %121), !dbg !1045
  store i8 0, ptr %5, align 1, !dbg !1046
  br label %122, !dbg !1047

122:                                              ; preds = %117, %114
  br label %123, !dbg !1048

123:                                              ; preds = %122, %31
  %124 = load i64, ptr %3, align 8, !dbg !1049
  %125 = add i64 %124, -1, !dbg !1049
  store i64 %125, ptr %3, align 8, !dbg !1049
  %126 = load ptr, ptr %4, align 8, !dbg !1050
  %127 = getelementptr inbounds nuw ptr, ptr %126, i32 1, !dbg !1050
  store ptr %127, ptr %4, align 8, !dbg !1050
  br label %13, !dbg !1051, !llvm.loop !1052

128:                                              ; preds = %13
  %129 = load i8, ptr %5, align 1, !dbg !1054
  %130 = trunc i8 %129 to i1, !dbg !1054
  ret i1 %130, !dbg !1055
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @paste_parallel(i64 noundef %0, ptr noundef %1) #3 !dbg !1056 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i64, align 8
  %19 = alloca i8, align 1
  store i64 %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1057, !DIExpression(), !1058)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1059, !DIExpression(), !1060)
    #dbg_declare(ptr %5, !1061, !DIExpression(), !1062)
  store i8 1, ptr %5, align 1, !dbg !1062
    #dbg_declare(ptr %6, !1063, !DIExpression(), !1064)
  %20 = load i64, ptr %3, align 8, !dbg !1065
  %21 = sub i64 %20, 1, !dbg !1066
  %22 = call i64 @__ctype_get_mb_cur_max() #10, !dbg !1067
  %23 = mul i64 %21, %22, !dbg !1068
  %24 = add i64 %23, 1, !dbg !1069
  %25 = call noalias nonnull ptr @xmalloc(i64 noundef %24) #16, !dbg !1070
  store ptr %25, ptr %6, align 8, !dbg !1064
    #dbg_declare(ptr %7, !1071, !DIExpression(), !1073)
  %26 = load i64, ptr %3, align 8, !dbg !1074
  %27 = add i64 %26, 1, !dbg !1075
  %28 = call noalias nonnull ptr @xnmalloc(i64 noundef %27, i64 noundef 8) #15, !dbg !1076
  store ptr %28, ptr %7, align 8, !dbg !1073
    #dbg_declare(ptr %8, !1077, !DIExpression(), !1078)
    #dbg_declare(ptr %9, !1079, !DIExpression(), !1080)
  store i8 0, ptr %9, align 1, !dbg !1080
  store i64 0, ptr %8, align 8, !dbg !1081
  br label %29, !dbg !1083

29:                                               ; preds = %81, %2
  %30 = load i64, ptr %8, align 8, !dbg !1084
  %31 = load i64, ptr %3, align 8, !dbg !1086
  %32 = icmp ult i64 %30, %31, !dbg !1087
  br i1 %32, label %33, label %84, !dbg !1088

33:                                               ; preds = %29
  %34 = load ptr, ptr %4, align 8, !dbg !1089
  %35 = load i64, ptr %8, align 8, !dbg !1092
  %36 = getelementptr inbounds nuw ptr, ptr %34, i64 %35, !dbg !1089
  %37 = load ptr, ptr %36, align 8, !dbg !1089
  %38 = call zeroext i1 @streq(ptr noundef %37, ptr noundef @.str.18), !dbg !1093
  br i1 %38, label %39, label %44, !dbg !1093

39:                                               ; preds = %33
  store i8 1, ptr @have_read_stdin, align 1, !dbg !1094
  %40 = load ptr, ptr @stdin, align 8, !dbg !1096
  %41 = load ptr, ptr %7, align 8, !dbg !1097
  %42 = load i64, ptr %8, align 8, !dbg !1098
  %43 = getelementptr inbounds nuw ptr, ptr %41, i64 %42, !dbg !1097
  store ptr %40, ptr %43, align 8, !dbg !1099
  br label %80, !dbg !1100

44:                                               ; preds = %33
  %45 = load ptr, ptr %4, align 8, !dbg !1101
  %46 = load i64, ptr %8, align 8, !dbg !1103
  %47 = getelementptr inbounds nuw ptr, ptr %45, i64 %46, !dbg !1101
  %48 = load ptr, ptr %47, align 8, !dbg !1101
  %49 = call noalias ptr @rpl_fopen(ptr noundef %48, ptr noundef @.str.61), !dbg !1104
  %50 = load ptr, ptr %7, align 8, !dbg !1105
  %51 = load i64, ptr %8, align 8, !dbg !1106
  %52 = getelementptr inbounds nuw ptr, ptr %50, i64 %51, !dbg !1105
  store ptr %49, ptr %52, align 8, !dbg !1107
  %53 = load ptr, ptr %7, align 8, !dbg !1108
  %54 = load i64, ptr %8, align 8, !dbg !1110
  %55 = getelementptr inbounds nuw ptr, ptr %53, i64 %54, !dbg !1108
  %56 = load ptr, ptr %55, align 8, !dbg !1108
  %57 = icmp eq ptr %56, null, !dbg !1111
  br i1 %57, label %58, label %66, !dbg !1111

58:                                               ; preds = %44
  %59 = call ptr @__errno_location() #13, !dbg !1112
  %60 = load i32, ptr %59, align 4, !dbg !1112
  %61 = load ptr, ptr %4, align 8, !dbg !1113
  %62 = load i64, ptr %8, align 8, !dbg !1114
  %63 = getelementptr inbounds nuw ptr, ptr %61, i64 %62, !dbg !1113
  %64 = load ptr, ptr %63, align 8, !dbg !1113
  %65 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %64), !dbg !1115
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %60, ptr noundef @.str.62, ptr noundef %65), !dbg !1116
  unreachable, !dbg !1116

66:                                               ; preds = %44
  %67 = load ptr, ptr %7, align 8, !dbg !1117
  %68 = load i64, ptr %8, align 8, !dbg !1119
  %69 = getelementptr inbounds nuw ptr, ptr %67, i64 %68, !dbg !1117
  %70 = load ptr, ptr %69, align 8, !dbg !1117
  %71 = call i32 @fileno_unlocked(ptr noundef %70) #10, !dbg !1120
  %72 = icmp eq i32 %71, 0, !dbg !1121
  br i1 %72, label %73, label %74, !dbg !1121

73:                                               ; preds = %66
  store i8 1, ptr %9, align 1, !dbg !1122
  br label %74, !dbg !1123

74:                                               ; preds = %73, %66
  br label %75

75:                                               ; preds = %74
  %76 = load ptr, ptr %7, align 8, !dbg !1124
  %77 = load i64, ptr %8, align 8, !dbg !1125
  %78 = getelementptr inbounds nuw ptr, ptr %76, i64 %77, !dbg !1124
  %79 = load ptr, ptr %78, align 8, !dbg !1124
  call void @fadvise(ptr noundef %79, i32 noundef 2), !dbg !1126
  br label %80

80:                                               ; preds = %75, %39
  br label %81, !dbg !1127

81:                                               ; preds = %80
  %82 = load i64, ptr %8, align 8, !dbg !1128
  %83 = add i64 %82, 1, !dbg !1128
  store i64 %83, ptr %8, align 8, !dbg !1128
  br label %29, !dbg !1129, !llvm.loop !1130

84:                                               ; preds = %29
  %85 = load i8, ptr %9, align 1, !dbg !1132
  %86 = trunc i8 %85 to i1, !dbg !1132
  br i1 %86, label %87, label %92, !dbg !1134

87:                                               ; preds = %84
  %88 = load i8, ptr @have_read_stdin, align 1, !dbg !1135
  %89 = trunc i8 %88 to i1, !dbg !1135
  br i1 %89, label %90, label %92, !dbg !1134

90:                                               ; preds = %87
  %91 = call ptr @gettext(ptr noundef @.str.64) #10, !dbg !1136
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %91), !dbg !1137
  unreachable, !dbg !1137

92:                                               ; preds = %87, %84
  br label %93, !dbg !1138

93:                                               ; preds = %319, %92
  %94 = load i64, ptr %8, align 8, !dbg !1139
  %95 = icmp ne i64 %94, 0, !dbg !1138
  br i1 %95, label %96, label %320, !dbg !1138

96:                                               ; preds = %93
    #dbg_declare(ptr %10, !1140, !DIExpression(), !1142)
  store i8 0, ptr %10, align 1, !dbg !1142
    #dbg_declare(ptr %11, !1143, !DIExpression(), !1144)
  store i64 0, ptr %11, align 8, !dbg !1144
    #dbg_declare(ptr %12, !1145, !DIExpression(), !1146)
  store i64 0, ptr %12, align 8, !dbg !1146
    #dbg_declare(ptr %13, !1147, !DIExpression(), !1148)
  store i64 0, ptr %13, align 8, !dbg !1148
    #dbg_declare(ptr %14, !1149, !DIExpression(), !1151)
  store i64 0, ptr %14, align 8, !dbg !1151
  br label %97, !dbg !1152

97:                                               ; preds = %316, %96
  %98 = load i64, ptr %14, align 8, !dbg !1153
  %99 = load i64, ptr %3, align 8, !dbg !1155
  %100 = icmp ult i64 %98, %99, !dbg !1156
  br i1 %100, label %101, label %104, !dbg !1157

101:                                              ; preds = %97
  %102 = load i64, ptr %8, align 8, !dbg !1158
  %103 = icmp ne i64 %102, 0, !dbg !1157
  br label %104

104:                                              ; preds = %101, %97
  %105 = phi i1 [ false, %97 ], [ %103, %101 ], !dbg !1159
  br i1 %105, label %106, label %319, !dbg !1160

106:                                              ; preds = %104
    #dbg_declare(ptr %15, !1161, !DIExpression(), !1163)
    #dbg_declare(ptr %16, !1164, !DIExpression(), !1165)
    #dbg_declare(ptr %17, !1166, !DIExpression(), !1167)
  store i8 0, ptr %17, align 1, !dbg !1167
  %107 = load ptr, ptr %7, align 8, !dbg !1168
  %108 = load i64, ptr %14, align 8, !dbg !1170
  %109 = getelementptr inbounds nuw ptr, ptr %107, i64 %108, !dbg !1168
  %110 = load ptr, ptr %109, align 8, !dbg !1168
  %111 = icmp ne ptr %110, null, !dbg !1168
  br i1 %111, label %112, label %155, !dbg !1168

112:                                              ; preds = %106
  %113 = load ptr, ptr %7, align 8, !dbg !1171
  %114 = load i64, ptr %14, align 8, !dbg !1173
  %115 = getelementptr inbounds nuw ptr, ptr %113, i64 %114, !dbg !1171
  %116 = load ptr, ptr %115, align 8, !dbg !1171
  %117 = call i32 @getc_unlocked(ptr noundef %116), !dbg !1174
  store i32 %117, ptr %15, align 4, !dbg !1175
  %118 = call ptr @__errno_location() #13, !dbg !1176
  %119 = load i32, ptr %118, align 4, !dbg !1176
  store i32 %119, ptr %16, align 4, !dbg !1177
  %120 = load i32, ptr %15, align 4, !dbg !1178
  %121 = icmp ne i32 %120, -1, !dbg !1180
  br i1 %121, label %122, label %134, !dbg !1181

122:                                              ; preds = %112
  %123 = load i64, ptr %13, align 8, !dbg !1182
  %124 = icmp ne i64 %123, 0, !dbg !1182
  br i1 %124, label %125, label %134, !dbg !1181

125:                                              ; preds = %122
  %126 = load ptr, ptr %6, align 8, !dbg !1183
  %127 = load i64, ptr %13, align 8, !dbg !1186
  %128 = load ptr, ptr @stdout, align 8, !dbg !1187
  %129 = call i64 @fwrite_unlocked(ptr noundef %126, i64 noundef 1, i64 noundef %127, ptr noundef %128), !dbg !1188
  %130 = load i64, ptr %13, align 8, !dbg !1189
  %131 = icmp ne i64 %129, %130, !dbg !1190
  br i1 %131, label %132, label %133, !dbg !1190

132:                                              ; preds = %125
  call void @write_error(), !dbg !1191
  br label %133, !dbg !1191

133:                                              ; preds = %132, %125
  store i64 0, ptr %13, align 8, !dbg !1192
  br label %134, !dbg !1193

134:                                              ; preds = %133, %122, %112
  br label %135, !dbg !1194

135:                                              ; preds = %144, %134
  %136 = load i32, ptr %15, align 4, !dbg !1195
  %137 = icmp ne i32 %136, -1, !dbg !1196
  br i1 %137, label %138, label %154, !dbg !1194

138:                                              ; preds = %135
  store i8 1, ptr %17, align 1, !dbg !1197
  %139 = load i32, ptr %15, align 4, !dbg !1199
  %140 = load i8, ptr @line_delim, align 1, !dbg !1201
  %141 = zext i8 %140 to i32, !dbg !1201
  %142 = icmp eq i32 %139, %141, !dbg !1202
  br i1 %142, label %143, label %144, !dbg !1202

143:                                              ; preds = %138
  br label %154, !dbg !1203

144:                                              ; preds = %138
  %145 = load i32, ptr %15, align 4, !dbg !1204
  %146 = trunc i32 %145 to i8, !dbg !1204
  call void @xputchar(i8 noundef signext %146), !dbg !1205
  %147 = load ptr, ptr %7, align 8, !dbg !1206
  %148 = load i64, ptr %14, align 8, !dbg !1207
  %149 = getelementptr inbounds nuw ptr, ptr %147, i64 %148, !dbg !1206
  %150 = load ptr, ptr %149, align 8, !dbg !1206
  %151 = call i32 @getc_unlocked(ptr noundef %150), !dbg !1208
  store i32 %151, ptr %15, align 4, !dbg !1209
  %152 = call ptr @__errno_location() #13, !dbg !1210
  %153 = load i32, ptr %152, align 4, !dbg !1210
  store i32 %153, ptr %16, align 4, !dbg !1211
  br label %135, !dbg !1194, !llvm.loop !1212

154:                                              ; preds = %143, %135
  br label %155, !dbg !1214

155:                                              ; preds = %154, %106
  %156 = load i8, ptr %17, align 1, !dbg !1215
  %157 = trunc i8 %156 to i1, !dbg !1215
  br i1 %157, label %266, label %158, !dbg !1217

158:                                              ; preds = %155
  %159 = load ptr, ptr %7, align 8, !dbg !1218
  %160 = load i64, ptr %14, align 8, !dbg !1221
  %161 = getelementptr inbounds nuw ptr, ptr %159, i64 %160, !dbg !1218
  %162 = load ptr, ptr %161, align 8, !dbg !1218
  %163 = icmp ne ptr %162, null, !dbg !1218
  br i1 %163, label %164, label %214, !dbg !1218

164:                                              ; preds = %158
  %165 = load ptr, ptr %7, align 8, !dbg !1222
  %166 = load i64, ptr %14, align 8, !dbg !1225
  %167 = getelementptr inbounds nuw ptr, ptr %165, i64 %166, !dbg !1222
  %168 = load ptr, ptr %167, align 8, !dbg !1222
  %169 = call i32 @ferror_unlocked(ptr noundef %168) #10, !dbg !1226
  %170 = icmp ne i32 %169, 0, !dbg !1226
  br i1 %170, label %172, label %171, !dbg !1227

171:                                              ; preds = %164
  store i32 0, ptr %16, align 4, !dbg !1228
  br label %172, !dbg !1229

172:                                              ; preds = %171, %164
  %173 = load ptr, ptr %7, align 8, !dbg !1230
  %174 = load i64, ptr %14, align 8, !dbg !1232
  %175 = getelementptr inbounds nuw ptr, ptr %173, i64 %174, !dbg !1230
  %176 = load ptr, ptr %175, align 8, !dbg !1230
  %177 = load ptr, ptr @stdin, align 8, !dbg !1233
  %178 = icmp eq ptr %176, %177, !dbg !1234
  br i1 %178, label %179, label %184, !dbg !1234

179:                                              ; preds = %172
  %180 = load ptr, ptr %7, align 8, !dbg !1235
  %181 = load i64, ptr %14, align 8, !dbg !1236
  %182 = getelementptr inbounds nuw ptr, ptr %180, i64 %181, !dbg !1235
  %183 = load ptr, ptr %182, align 8, !dbg !1235
  call void @clearerr_unlocked(ptr noundef %183) #10, !dbg !1237
  br label %198, !dbg !1237

184:                                              ; preds = %172
  %185 = load ptr, ptr %7, align 8, !dbg !1238
  %186 = load i64, ptr %14, align 8, !dbg !1240
  %187 = getelementptr inbounds nuw ptr, ptr %185, i64 %186, !dbg !1238
  %188 = load ptr, ptr %187, align 8, !dbg !1238
  %189 = call i32 @rpl_fclose(ptr noundef %188), !dbg !1241
  %190 = icmp eq i32 %189, -1, !dbg !1242
  br i1 %190, label %191, label %197, !dbg !1243

191:                                              ; preds = %184
  %192 = load i32, ptr %16, align 4, !dbg !1244
  %193 = icmp ne i32 %192, 0, !dbg !1244
  br i1 %193, label %197, label %194, !dbg !1243

194:                                              ; preds = %191
  %195 = call ptr @__errno_location() #13, !dbg !1245
  %196 = load i32, ptr %195, align 4, !dbg !1245
  store i32 %196, ptr %16, align 4, !dbg !1246
  br label %197, !dbg !1247

197:                                              ; preds = %194, %191, %184
  br label %198

198:                                              ; preds = %197, %179
  %199 = load i32, ptr %16, align 4, !dbg !1248
  %200 = icmp ne i32 %199, 0, !dbg !1248
  br i1 %200, label %201, label %208, !dbg !1248

201:                                              ; preds = %198
  %202 = load i32, ptr %16, align 4, !dbg !1250
  %203 = load ptr, ptr %4, align 8, !dbg !1252
  %204 = load i64, ptr %14, align 8, !dbg !1253
  %205 = getelementptr inbounds nuw ptr, ptr %203, i64 %204, !dbg !1252
  %206 = load ptr, ptr %205, align 8, !dbg !1252
  %207 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %206), !dbg !1254
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %202, ptr noundef @.str.62, ptr noundef %207), !dbg !1255
  store i8 0, ptr %5, align 1, !dbg !1256
  br label %208, !dbg !1257

208:                                              ; preds = %201, %198
  %209 = load ptr, ptr %7, align 8, !dbg !1258
  %210 = load i64, ptr %14, align 8, !dbg !1259
  %211 = getelementptr inbounds nuw ptr, ptr %209, i64 %210, !dbg !1258
  store ptr null, ptr %211, align 8, !dbg !1260
  %212 = load i64, ptr %8, align 8, !dbg !1261
  %213 = add i64 %212, -1, !dbg !1261
  store i64 %213, ptr %8, align 8, !dbg !1261
  br label %214, !dbg !1262

214:                                              ; preds = %208, %158
  %215 = load i64, ptr %14, align 8, !dbg !1263
  %216 = add i64 %215, 1, !dbg !1265
  %217 = load i64, ptr %3, align 8, !dbg !1266
  %218 = icmp eq i64 %216, %217, !dbg !1267
  br i1 %218, label %219, label %237, !dbg !1267

219:                                              ; preds = %214
  %220 = load i8, ptr %10, align 1, !dbg !1268
  %221 = trunc i8 %220 to i1, !dbg !1268
  br i1 %221, label %222, label %236, !dbg !1268

222:                                              ; preds = %219
  %223 = load i64, ptr %13, align 8, !dbg !1271
  %224 = icmp ne i64 %223, 0, !dbg !1271
  br i1 %224, label %225, label %234, !dbg !1271

225:                                              ; preds = %222
  %226 = load ptr, ptr %6, align 8, !dbg !1274
  %227 = load i64, ptr %13, align 8, !dbg !1277
  %228 = load ptr, ptr @stdout, align 8, !dbg !1278
  %229 = call i64 @fwrite_unlocked(ptr noundef %226, i64 noundef 1, i64 noundef %227, ptr noundef %228), !dbg !1279
  %230 = load i64, ptr %13, align 8, !dbg !1280
  %231 = icmp ne i64 %229, %230, !dbg !1281
  br i1 %231, label %232, label %233, !dbg !1281

232:                                              ; preds = %225
  call void @write_error(), !dbg !1282
  br label %233, !dbg !1282

233:                                              ; preds = %232, %225
  store i64 0, ptr %13, align 8, !dbg !1283
  br label %234, !dbg !1284

234:                                              ; preds = %233, %222
  %235 = load i8, ptr @line_delim, align 1, !dbg !1285
  call void @xputchar(i8 noundef signext %235), !dbg !1286
  br label %236, !dbg !1287

236:                                              ; preds = %234, %219
  br label %316, !dbg !1288

237:                                              ; preds = %214
    #dbg_declare(ptr %18, !1289, !DIExpression(), !1291)
  %238 = load ptr, ptr @delim_lens, align 8, !dbg !1292
  %239 = load i64, ptr %11, align 8, !dbg !1293
  %240 = getelementptr inbounds i64, ptr %238, i64 %239, !dbg !1292
  %241 = load i64, ptr %240, align 8, !dbg !1292
  store i64 %241, ptr %18, align 8, !dbg !1291
  %242 = load i64, ptr %18, align 8, !dbg !1294
  %243 = icmp ugt i64 %242, 0, !dbg !1296
  br i1 %243, label %244, label %255, !dbg !1296

244:                                              ; preds = %237
  %245 = load ptr, ptr %6, align 8, !dbg !1297
  %246 = load i64, ptr %13, align 8, !dbg !1299
  %247 = getelementptr inbounds i8, ptr %245, i64 %246, !dbg !1300
  %248 = load ptr, ptr @delims, align 8, !dbg !1301
  %249 = load i64, ptr %12, align 8, !dbg !1302
  %250 = getelementptr inbounds i8, ptr %248, i64 %249, !dbg !1300
  %251 = load i64, ptr %18, align 8, !dbg !1303
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %247, ptr align 1 %250, i64 %251, i1 false), !dbg !1300
  %252 = load i64, ptr %18, align 8, !dbg !1304
  %253 = load i64, ptr %13, align 8, !dbg !1305
  %254 = add i64 %253, %252, !dbg !1305
  store i64 %254, ptr %13, align 8, !dbg !1305
  br label %255, !dbg !1306

255:                                              ; preds = %244, %237
  %256 = load i64, ptr %18, align 8, !dbg !1307
  %257 = load i64, ptr %12, align 8, !dbg !1308
  %258 = add i64 %257, %256, !dbg !1308
  store i64 %258, ptr %12, align 8, !dbg !1308
  %259 = load i64, ptr %11, align 8, !dbg !1309
  %260 = add nsw i64 %259, 1, !dbg !1309
  store i64 %260, ptr %11, align 8, !dbg !1309
  %261 = load i64, ptr @num_delims, align 8, !dbg !1311
  %262 = icmp eq i64 %260, %261, !dbg !1312
  br i1 %262, label %263, label %264, !dbg !1312

263:                                              ; preds = %255
  store i64 0, ptr %11, align 8, !dbg !1313
  store i64 0, ptr %12, align 8, !dbg !1315
  br label %264, !dbg !1316

264:                                              ; preds = %263, %255
  br label %265

265:                                              ; preds = %264
  br label %315, !dbg !1317

266:                                              ; preds = %155
  store i8 1, ptr %10, align 1, !dbg !1318
  %267 = load i64, ptr %14, align 8, !dbg !1320
  %268 = add i64 %267, 1, !dbg !1322
  %269 = load i64, ptr %3, align 8, !dbg !1323
  %270 = icmp ne i64 %268, %269, !dbg !1324
  br i1 %270, label %271, label %302, !dbg !1324

271:                                              ; preds = %266
  %272 = load i32, ptr %15, align 4, !dbg !1325
  %273 = load i8, ptr @line_delim, align 1, !dbg !1328
  %274 = zext i8 %273 to i32, !dbg !1328
  %275 = icmp ne i32 %272, %274, !dbg !1329
  br i1 %275, label %276, label %282, !dbg !1330

276:                                              ; preds = %271
  %277 = load i32, ptr %15, align 4, !dbg !1331
  %278 = icmp ne i32 %277, -1, !dbg !1332
  br i1 %278, label %279, label %282, !dbg !1330

279:                                              ; preds = %276
  %280 = load i32, ptr %15, align 4, !dbg !1333
  %281 = trunc i32 %280 to i8, !dbg !1333
  call void @xputchar(i8 noundef signext %281), !dbg !1334
  br label %282, !dbg !1334

282:                                              ; preds = %279, %276, %271
  %283 = load ptr, ptr @delims, align 8, !dbg !1335
  %284 = load i64, ptr %12, align 8, !dbg !1336
  %285 = getelementptr inbounds i8, ptr %283, i64 %284, !dbg !1337
  %286 = load ptr, ptr @delim_lens, align 8, !dbg !1338
  %287 = load i64, ptr %11, align 8, !dbg !1339
  %288 = getelementptr inbounds i64, ptr %286, i64 %287, !dbg !1338
  %289 = load i64, ptr %288, align 8, !dbg !1338
  call void @output_delim(ptr noundef %285, i64 noundef %289), !dbg !1340
  %290 = load ptr, ptr @delim_lens, align 8, !dbg !1341
  %291 = load i64, ptr %11, align 8, !dbg !1342
  %292 = getelementptr inbounds i64, ptr %290, i64 %291, !dbg !1341
  %293 = load i64, ptr %292, align 8, !dbg !1341
  %294 = load i64, ptr %12, align 8, !dbg !1343
  %295 = add i64 %294, %293, !dbg !1343
  store i64 %295, ptr %12, align 8, !dbg !1343
  %296 = load i64, ptr %11, align 8, !dbg !1344
  %297 = add nsw i64 %296, 1, !dbg !1344
  store i64 %297, ptr %11, align 8, !dbg !1344
  %298 = load i64, ptr @num_delims, align 8, !dbg !1346
  %299 = icmp eq i64 %297, %298, !dbg !1347
  br i1 %299, label %300, label %301, !dbg !1347

300:                                              ; preds = %282
  store i64 0, ptr %11, align 8, !dbg !1348
  store i64 0, ptr %12, align 8, !dbg !1350
  br label %301, !dbg !1351

301:                                              ; preds = %300, %282
  br label %314, !dbg !1352

302:                                              ; preds = %266
    #dbg_declare(ptr %19, !1353, !DIExpression(), !1355)
  %303 = load i32, ptr %15, align 4, !dbg !1356
  %304 = icmp eq i32 %303, -1, !dbg !1357
  br i1 %304, label %305, label %308, !dbg !1356

305:                                              ; preds = %302
  %306 = load i8, ptr @line_delim, align 1, !dbg !1358
  %307 = zext i8 %306 to i32, !dbg !1358
  br label %310, !dbg !1356

308:                                              ; preds = %302
  %309 = load i32, ptr %15, align 4, !dbg !1359
  br label %310, !dbg !1356

310:                                              ; preds = %308, %305
  %311 = phi i32 [ %307, %305 ], [ %309, %308 ], !dbg !1356
  %312 = trunc i32 %311 to i8, !dbg !1360
  store i8 %312, ptr %19, align 1, !dbg !1355
  %313 = load i8, ptr %19, align 1, !dbg !1361
  call void @xputchar(i8 noundef signext %313), !dbg !1362
  br label %314

314:                                              ; preds = %310, %301
  br label %315

315:                                              ; preds = %314, %265
  br label %316, !dbg !1363

316:                                              ; preds = %315, %236
  %317 = load i64, ptr %14, align 8, !dbg !1364
  %318 = add i64 %317, 1, !dbg !1364
  store i64 %318, ptr %14, align 8, !dbg !1364
  br label %97, !dbg !1365, !llvm.loop !1366

319:                                              ; preds = %104
  br label %93, !dbg !1138, !llvm.loop !1368

320:                                              ; preds = %93
  %321 = load ptr, ptr %7, align 8, !dbg !1370
  call void @free(ptr noundef %321) #10, !dbg !1371
  %322 = load ptr, ptr %6, align 8, !dbg !1372
  call void @free(ptr noundef %322) #10, !dbg !1373
  %323 = load i8, ptr %5, align 1, !dbg !1374
  %324 = trunc i8 %323 to i1, !dbg !1374
  ret i1 %324, !dbg !1375
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

declare i32 @rpl_fclose(ptr noundef) #2

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

declare noalias nonnull ptr @xstrdup(ptr noundef) #2

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @xnmalloc(i64 noundef, i64 noundef) #8

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #6

declare i64 @mcel_scanz(ptr noundef) #2

declare noalias ptr @rpl_fopen(ptr noundef, ptr noundef) #2

declare void @fadvise(ptr noundef, i32 noundef) #2

declare i32 @getc_unlocked(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_delim(ptr noundef %0, i64 noundef %1) #3 !dbg !1376 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1379, !DIExpression(), !1380)
  store i64 %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1381, !DIExpression(), !1382)
  %5 = load i64, ptr %4, align 8, !dbg !1383
  %6 = icmp ugt i64 %5, 0, !dbg !1385
  br i1 %6, label %7, label %15, !dbg !1386

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !1387
  %9 = load i64, ptr %4, align 8, !dbg !1388
  %10 = load ptr, ptr @stdout, align 8, !dbg !1389
  %11 = call i64 @fwrite_unlocked(ptr noundef %8, i64 noundef 1, i64 noundef %9, ptr noundef %10), !dbg !1390
  %12 = load i64, ptr %4, align 8, !dbg !1391
  %13 = icmp ne i64 %11, %12, !dbg !1392
  br i1 %13, label %14, label %15, !dbg !1386

14:                                               ; preds = %7
  call void @write_error(), !dbg !1393
  br label %15, !dbg !1393

15:                                               ; preds = %14, %7, %2
  ret void, !dbg !1394
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xputchar(i8 noundef signext %0) #3 !dbg !1395 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
    #dbg_declare(ptr %2, !1398, !DIExpression(), !1399)
  %3 = load i8, ptr %2, align 1, !dbg !1400
  %4 = sext i8 %3 to i32, !dbg !1400
  %5 = call i32 @putchar_unlocked(i32 noundef %4), !dbg !1402
  %6 = icmp slt i32 %5, 0, !dbg !1403
  br i1 %6, label %7, label %8, !dbg !1403

7:                                                ; preds = %1
  call void @write_error(), !dbg !1404
  br label %8, !dbg !1404

8:                                                ; preds = %7, %1
  ret void, !dbg !1405
}

; Function Attrs: nounwind
declare i32 @ferror_unlocked(ptr noundef) #1

; Function Attrs: nounwind
declare void @clearerr_unlocked(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_error() #3 !dbg !1406 {
  %1 = alloca i32, align 4
    #dbg_declare(ptr %1, !1407, !DIExpression(), !1408)
  %2 = call ptr @__errno_location() #13, !dbg !1409
  %3 = load i32, ptr %2, align 4, !dbg !1409
  store i32 %3, ptr %1, align 4, !dbg !1408
  %4 = load ptr, ptr @stdout, align 8, !dbg !1410
  %5 = call i32 @fflush_unlocked(ptr noundef %4), !dbg !1411
  %6 = load ptr, ptr @stdout, align 8, !dbg !1412
  %7 = call i32 @fpurge(ptr noundef %6), !dbg !1413
  %8 = load ptr, ptr @stdout, align 8, !dbg !1414
  call void @clearerr_unlocked(ptr noundef %8) #10, !dbg !1415
  %9 = load i32, ptr %1, align 4, !dbg !1416
  %10 = call ptr @gettext(ptr noundef @.str.63) #10, !dbg !1417
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %9, ptr noundef %10), !dbg !1418
  unreachable, !dbg !1418
}

declare i32 @fflush_unlocked(ptr noundef) #2

declare i32 @fpurge(ptr noundef) #2

declare i32 @putchar_unlocked(i32 noundef) #2

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @xmalloc(i64 noundef) #9

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #1

; Function Attrs: nounwind
declare i32 @fileno_unlocked(ptr noundef) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { noreturn }
attributes #15 = { allocsize(0,1) }
attributes #16 = { allocsize(0) }

!llvm.dbg.cu = !{!79}
!llvm.module.flags = !{!322, !323, !324, !325, !326, !327, !328}
!llvm.ident = !{!329}

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
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "serial_merge", scope: !79, file: !2, line: 59, type: !155, isLocal: true, isDefinition: true)
!79 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !80, retainedTypes: !126, globals: !130, splitDebugInlining: false, nameTableKind: None)
!80 = !{!81, !87, !102, !117}
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
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !118, line: 44, baseType: !89, size: 32, elements: !119)
!118 = !DIFile(filename: "./lib/fadvise.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!119 = !{!120, !121, !122, !123, !124, !125}
!120 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!121 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!122 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!123 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!124 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!125 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!126 = !{!127, !128, !83, !129}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!129 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!130 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !72, !131, !136, !141, !146, !148, !153, !77, !156, !158, !164, !169, !174, !182, !184, !186, !191, !193, !195, !197, !199, !201, !203, !205, !207, !212, !217, !219, !221, !223, !225, !227, !229, !234, !239, !241, !246, !248, !250, !252, !254, !256, !261, !263, !268, !273, !278, !280, !285, !287, !289, !291, !303, !306, !311, !313, !315, !317}
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 523, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 14)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !2, line: 523, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 15)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !2, line: 523, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 16)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !2, line: 533, type: !49, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !2, line: 542, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 52)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !79, file: !2, line: 55, type: !155, isLocal: true, isDefinition: true)
!155 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "delims", scope: !79, file: !2, line: 63, type: !127, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "delim_lens", scope: !79, file: !2, line: 67, type: !160, isLocal: true, isDefinition: true)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !162, line: 18, baseType: !163)
!162 = !DIFile(filename: "/usr/lib/llvm-22/lib/clang/22/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!163 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !82, line: 748, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 56)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !82, line: 755, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 75)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !176, file: !82, line: 594, type: !83, isLocal: true, isDefinition: true)
!176 = distinct !DISubprogram(name: "oputs_", scope: !82, file: !82, line: 592, type: !177, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !181)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !179, !179}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!181 = !{}
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !82, line: 604, type: !69, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !82, line: 605, type: !69, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !82, line: 614, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 4)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !82, line: 639, type: !19, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !82, line: 667, type: !49, isLocal: true, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !82, line: 667, type: !69, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !82, line: 668, type: !188, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !82, line: 668, type: !74, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !82, line: 669, type: !69, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !82, line: 670, type: !19, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(scope: null, file: !82, line: 670, type: !19, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !82, line: 671, type: !209, isLocal: true, isDefinition: true)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 7)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !82, line: 672, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 8)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !82, line: 673, type: !59, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !82, line: 674, type: !59, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !82, line: 675, type: !59, isLocal: true, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !82, line: 676, type: !59, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !82, line: 682, type: !209, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !82, line: 683, type: !59, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !82, line: 688, type: !231, isLocal: true, isDefinition: true)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 17)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !82, line: 688, type: !236, isLocal: true, isDefinition: true)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 40)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !82, line: 695, type: !138, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !82, line: 695, type: !243, isLocal: true, isDefinition: true)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 61)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !82, line: 698, type: !74, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !82, line: 702, type: !69, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !82, line: 707, type: !69, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !82, line: 710, type: !214, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !82, line: 858, type: !143, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !82, line: 859, type: !258, isLocal: true, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 22)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !82, line: 860, type: !138, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !82, line: 882, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 27)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !82, line: 884, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 51)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !82, line: 885, type: !275, isLocal: true, isDefinition: true)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 12)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !209, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !282, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 11)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !143, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !69, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !214, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "longopts", scope: !79, file: !2, line: 74, type: !293, isLocal: true, isDefinition: true)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 1536, elements: !20)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !296, line: 50, size: 256, elements: !297)
!296 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!297 = !{!298, !299, !300, !302}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !295, file: !296, line: 52, baseType: !179, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !295, file: !296, line: 55, baseType: !83, size: 32, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !295, file: !296, line: 56, baseType: !301, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !295, file: !296, line: 57, baseType: !83, size: 32, offset: 192)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "line_delim", scope: !79, file: !2, line: 72, type: !305, isLocal: true, isDefinition: true)
!305 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(name: "num_delims", scope: !79, file: !2, line: 70, type: !308, isLocal: true, isDefinition: true)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !309, line: 137, baseType: !310)
!309 = !DIFile(filename: "./lib/idx.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "a342c053ede588630cf36a09403114d3")
!310 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !2, line: 381, type: !49, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !2, line: 384, type: !74, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !82, line: 959, type: !275, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !319, isLocal: true, isDefinition: true)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 25)
!322 = !{i32 7, !"Dwarf Version", i32 5}
!323 = !{i32 2, !"Debug Info Version", i32 3}
!324 = !{i32 1, !"wchar_size", i32 4}
!325 = !{i32 8, !"PIC Level", i32 2}
!326 = !{i32 7, !"PIE Level", i32 2}
!327 = !{i32 7, !"uwtable", i32 2}
!328 = !{i32 7, !"frame-pointer", i32 2}
!329 = !{!"Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)"}
!330 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 447, type: !331, scopeLine: 448, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !181)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !83}
!333 = !DILocalVariable(name: "status", arg: 1, scope: !330, file: !2, line: 447, type: !83)
!334 = !DILocation(line: 447, column: 12, scope: !330)
!335 = !DILocation(line: 449, column: 7, scope: !336)
!336 = distinct !DILexicalBlock(scope: !330, file: !2, line: 449, column: 7)
!337 = !DILocation(line: 449, column: 14, scope: !336)
!338 = !DILocation(line: 450, column: 5, scope: !336)
!339 = !DILocation(line: 450, column: 5, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !2, line: 450, column: 5)
!341 = !DILocation(line: 453, column: 15, scope: !342)
!342 = distinct !DILexicalBlock(scope: !336, file: !2, line: 452, column: 5)
!343 = !DILocation(line: 456, column: 15, scope: !342)
!344 = !DILocation(line: 453, column: 7, scope: !342)
!345 = !DILocation(line: 457, column: 14, scope: !342)
!346 = !DILocation(line: 462, column: 5, scope: !342)
!347 = !DILocation(line: 457, column: 7, scope: !342)
!348 = !DILocation(line: 464, column: 7, scope: !342)
!349 = !DILocation(line: 465, column: 7, scope: !342)
!350 = !DILocation(line: 467, column: 14, scope: !342)
!351 = !DILocation(line: 467, column: 7, scope: !342)
!352 = !DILocation(line: 472, column: 14, scope: !342)
!353 = !DILocation(line: 472, column: 7, scope: !342)
!354 = !DILocation(line: 478, column: 14, scope: !342)
!355 = !DILocation(line: 478, column: 7, scope: !342)
!356 = !DILocation(line: 482, column: 14, scope: !342)
!357 = !DILocation(line: 482, column: 7, scope: !342)
!358 = !DILocation(line: 483, column: 14, scope: !342)
!359 = !DILocation(line: 483, column: 7, scope: !342)
!360 = !DILocation(line: 485, column: 7, scope: !342)
!361 = !DILocation(line: 487, column: 9, scope: !330)
!362 = !DILocation(line: 487, column: 3, scope: !330)
!363 = distinct !DISubprogram(name: "emit_stdin_note", scope: !82, file: !82, line: 746, type: !364, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79)
!364 = !DISubroutineType(types: !365)
!365 = !{null}
!366 = !DILocation(line: 748, column: 10, scope: !363)
!367 = !DILocation(line: 750, column: 5, scope: !363)
!368 = !DILocation(line: 748, column: 3, scope: !363)
!369 = !DILocation(line: 751, column: 1, scope: !363)
!370 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !82, file: !82, line: 753, type: !364, scopeLine: 754, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79)
!371 = !DILocation(line: 755, column: 10, scope: !370)
!372 = !DILocation(line: 757, column: 5, scope: !370)
!373 = !DILocation(line: 755, column: 3, scope: !370)
!374 = !DILocation(line: 758, column: 1, scope: !370)
!375 = !DILocalVariable(name: "program", arg: 1, scope: !176, file: !82, line: 592, type: !179)
!376 = !DILocation(line: 592, column: 34, scope: !176)
!377 = !DILocalVariable(name: "option", arg: 2, scope: !176, file: !82, line: 592, type: !179)
!378 = !DILocation(line: 592, column: 55, scope: !176)
!379 = !DILocation(line: 600, column: 7, scope: !380)
!380 = distinct !DILexicalBlock(scope: !176, file: !82, line: 600, column: 7)
!381 = !DILocation(line: 600, column: 19, scope: !380)
!382 = !DILocalVariable(name: "term", scope: !383, file: !82, line: 604, type: !179)
!383 = distinct !DILexicalBlock(scope: !380, file: !82, line: 601, column: 5)
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
!396 = distinct !DILexicalBlock(scope: !176, file: !82, line: 607, column: 7)
!397 = !DILocation(line: 609, column: 14, scope: !398)
!398 = distinct !DILexicalBlock(scope: !396, file: !82, line: 608, column: 5)
!399 = !DILocation(line: 609, column: 22, scope: !398)
!400 = !DILocation(line: 609, column: 7, scope: !398)
!401 = !DILocation(line: 610, column: 7, scope: !398)
!402 = !DILocalVariable(name: "double_space", scope: !176, file: !82, line: 613, type: !155)
!403 = !DILocation(line: 613, column: 8, scope: !176)
!404 = !DILocalVariable(name: "first_word", scope: !176, file: !82, line: 614, type: !179)
!405 = !DILocation(line: 614, column: 15, scope: !176)
!406 = !DILocation(line: 614, column: 28, scope: !176)
!407 = !DILocation(line: 614, column: 45, scope: !176)
!408 = !DILocation(line: 614, column: 37, scope: !176)
!409 = !DILocation(line: 614, column: 35, scope: !176)
!410 = !DILocalVariable(name: "option_text", scope: !176, file: !82, line: 615, type: !179)
!411 = !DILocation(line: 615, column: 15, scope: !176)
!412 = !DILocation(line: 615, column: 37, scope: !176)
!413 = !DILocation(line: 615, column: 29, scope: !176)
!414 = !DILocation(line: 616, column: 8, scope: !415)
!415 = distinct !DILexicalBlock(scope: !176, file: !82, line: 616, column: 7)
!416 = !DILocation(line: 616, column: 7, scope: !415)
!417 = !DILocation(line: 618, column: 21, scope: !418)
!418 = distinct !DILexicalBlock(scope: !415, file: !82, line: 617, column: 5)
!419 = !DILocation(line: 618, column: 19, scope: !418)
!420 = !DILocation(line: 621, column: 20, scope: !418)
!421 = !DILocation(line: 622, column: 5, scope: !418)
!422 = !DILocation(line: 623, column: 12, scope: !423)
!423 = distinct !DILexicalBlock(scope: !415, file: !82, line: 623, column: 12)
!424 = !DILocation(line: 623, column: 27, scope: !423)
!425 = !DILocation(line: 623, column: 24, scope: !423)
!426 = !DILocalVariable(name: "s", scope: !427, file: !82, line: 627, type: !179)
!427 = distinct !DILexicalBlock(scope: !423, file: !82, line: 624, column: 5)
!428 = !DILocation(line: 627, column: 19, scope: !427)
!429 = !DILocation(line: 627, column: 23, scope: !427)
!430 = !DILocalVariable(name: "spaces", scope: !427, file: !82, line: 628, type: !161)
!431 = !DILocation(line: 628, column: 14, scope: !427)
!432 = !DILocation(line: 629, column: 7, scope: !427)
!433 = !DILocation(line: 629, column: 14, scope: !427)
!434 = !DILocation(line: 629, column: 18, scope: !427)
!435 = !DILocation(line: 629, column: 16, scope: !427)
!436 = !DILocation(line: 629, column: 30, scope: !427)
!437 = !DILocation(line: 629, column: 33, scope: !427)
!438 = !DILocation(line: 629, column: 40, scope: !427)
!439 = !DILocation(line: 0, scope: !427)
!440 = !DILocation(line: 630, column: 21, scope: !427)
!441 = !DILocation(line: 630, column: 32, scope: !427)
!442 = !DILocation(line: 630, column: 30, scope: !427)
!443 = !DILocation(line: 630, column: 20, scope: !427)
!444 = !DILocation(line: 630, column: 19, scope: !427)
!445 = !DILocation(line: 630, column: 16, scope: !427)
!446 = distinct !{!446, !432, !440, !447}
!447 = !{!"llvm.loop.mustprogress"}
!448 = !DILocation(line: 631, column: 11, scope: !449)
!449 = distinct !DILexicalBlock(scope: !427, file: !82, line: 631, column: 11)
!450 = !DILocation(line: 631, column: 18, scope: !449)
!451 = !DILocation(line: 634, column: 25, scope: !452)
!452 = distinct !DILexicalBlock(scope: !449, file: !82, line: 632, column: 9)
!453 = !DILocation(line: 634, column: 23, scope: !452)
!454 = !DILocation(line: 635, column: 24, scope: !452)
!455 = !DILocation(line: 636, column: 9, scope: !452)
!456 = !DILocation(line: 637, column: 5, scope: !427)
!457 = !DILocalVariable(name: "anchor_len", scope: !176, file: !82, line: 639, type: !161)
!458 = !DILocation(line: 639, column: 10, scope: !176)
!459 = !DILocation(line: 639, column: 32, scope: !176)
!460 = !DILocation(line: 639, column: 23, scope: !176)
!461 = !DILocalVariable(name: "desc_text", scope: !176, file: !82, line: 644, type: !179)
!462 = !DILocation(line: 644, column: 15, scope: !176)
!463 = !DILocation(line: 644, column: 27, scope: !176)
!464 = !DILocation(line: 644, column: 41, scope: !176)
!465 = !DILocation(line: 644, column: 39, scope: !176)
!466 = !DILocation(line: 645, column: 3, scope: !176)
!467 = !DILocation(line: 645, column: 11, scope: !176)
!468 = !DILocation(line: 645, column: 10, scope: !176)
!469 = !DILocation(line: 645, column: 21, scope: !176)
!470 = !DILocation(line: 645, column: 25, scope: !176)
!471 = !DILocation(line: 645, column: 24, scope: !176)
!472 = !DILocation(line: 645, column: 35, scope: !176)
!473 = !DILocation(line: 0, scope: !176)
!474 = !DILocation(line: 647, column: 12, scope: !475)
!475 = distinct !DILexicalBlock(scope: !476, file: !82, line: 647, column: 11)
!476 = distinct !DILexicalBlock(scope: !176, file: !82, line: 646, column: 5)
!477 = !DILocation(line: 647, column: 11, scope: !475)
!478 = !DILocation(line: 647, column: 22, scope: !475)
!479 = !DILocation(line: 647, column: 29, scope: !475)
!480 = !DILocation(line: 647, column: 34, scope: !475)
!481 = !DILocation(line: 647, column: 32, scope: !475)
!482 = !DILocation(line: 647, column: 49, scope: !475)
!483 = !DILocation(line: 648, column: 22, scope: !475)
!484 = !DILocation(line: 648, column: 9, scope: !475)
!485 = !DILocation(line: 649, column: 11, scope: !486)
!486 = distinct !DILexicalBlock(scope: !476, file: !82, line: 649, column: 11)
!487 = !DILocation(line: 649, column: 21, scope: !486)
!488 = !DILocation(line: 649, column: 20, scope: !486)
!489 = !DILocation(line: 651, column: 16, scope: !490)
!490 = distinct !DILexicalBlock(scope: !491, file: !82, line: 651, column: 15)
!491 = distinct !DILexicalBlock(scope: !486, file: !82, line: 650, column: 9)
!492 = !DILocation(line: 651, column: 15, scope: !490)
!493 = !DILocation(line: 651, column: 26, scope: !490)
!494 = !DILocation(line: 651, column: 34, scope: !490)
!495 = !DILocation(line: 651, column: 37, scope: !490)
!496 = !DILocation(line: 651, column: 48, scope: !490)
!497 = !DILocation(line: 651, column: 46, scope: !490)
!498 = !DILocation(line: 652, column: 13, scope: !490)
!499 = !DILocation(line: 655, column: 16, scope: !500)
!500 = distinct !DILexicalBlock(scope: !491, file: !82, line: 655, column: 15)
!501 = !DILocation(line: 655, column: 29, scope: !500)
!502 = !DILocation(line: 655, column: 34, scope: !500)
!503 = !DILocation(line: 655, column: 32, scope: !500)
!504 = !DILocation(line: 655, column: 49, scope: !500)
!505 = !DILocation(line: 656, column: 13, scope: !500)
!506 = !DILocation(line: 657, column: 9, scope: !491)
!507 = !DILocation(line: 659, column: 16, scope: !476)
!508 = distinct !{!508, !466, !509, !447}
!509 = !DILocation(line: 660, column: 5, scope: !176)
!510 = !DILocation(line: 663, column: 11, scope: !176)
!511 = !DILocation(line: 663, column: 22, scope: !176)
!512 = !DILocation(line: 663, column: 35, scope: !176)
!513 = !DILocation(line: 663, column: 33, scope: !176)
!514 = !DILocation(line: 663, column: 43, scope: !176)
!515 = !DILocation(line: 663, column: 3, scope: !176)
!516 = !DILocalVariable(name: "url_program", scope: !176, file: !82, line: 667, type: !179)
!517 = !DILocation(line: 667, column: 15, scope: !176)
!518 = !DILocation(line: 667, column: 38, scope: !176)
!519 = !DILocation(line: 667, column: 31, scope: !176)
!520 = !DILocation(line: 668, column: 38, scope: !176)
!521 = !DILocation(line: 668, column: 31, scope: !176)
!522 = !DILocation(line: 669, column: 38, scope: !176)
!523 = !DILocation(line: 669, column: 31, scope: !176)
!524 = !DILocation(line: 670, column: 38, scope: !176)
!525 = !DILocation(line: 670, column: 31, scope: !176)
!526 = !DILocation(line: 671, column: 38, scope: !176)
!527 = !DILocation(line: 671, column: 31, scope: !176)
!528 = !DILocation(line: 672, column: 38, scope: !176)
!529 = !DILocation(line: 672, column: 31, scope: !176)
!530 = !DILocation(line: 673, column: 38, scope: !176)
!531 = !DILocation(line: 673, column: 31, scope: !176)
!532 = !DILocation(line: 674, column: 38, scope: !176)
!533 = !DILocation(line: 674, column: 31, scope: !176)
!534 = !DILocation(line: 675, column: 38, scope: !176)
!535 = !DILocation(line: 675, column: 31, scope: !176)
!536 = !DILocation(line: 676, column: 38, scope: !176)
!537 = !DILocation(line: 676, column: 31, scope: !176)
!538 = !DILocation(line: 677, column: 31, scope: !176)
!539 = !DILocation(line: 682, column: 18, scope: !540)
!540 = distinct !DILexicalBlock(scope: !176, file: !82, line: 682, column: 7)
!541 = !DILocation(line: 682, column: 7, scope: !540)
!542 = !DILocation(line: 683, column: 7, scope: !540)
!543 = !DILocation(line: 683, column: 21, scope: !540)
!544 = !DILocation(line: 683, column: 10, scope: !540)
!545 = !DILocation(line: 689, column: 15, scope: !546)
!546 = distinct !DILexicalBlock(scope: !540, file: !82, line: 684, column: 5)
!547 = !DILocation(line: 689, column: 28, scope: !546)
!548 = !DILocation(line: 689, column: 47, scope: !546)
!549 = !DILocation(line: 689, column: 41, scope: !546)
!550 = !DILocation(line: 689, column: 59, scope: !546)
!551 = !DILocation(line: 688, column: 7, scope: !546)
!552 = !DILocation(line: 690, column: 5, scope: !546)
!553 = !DILocation(line: 695, column: 48, scope: !554)
!554 = distinct !DILexicalBlock(scope: !540, file: !82, line: 692, column: 5)
!555 = !DILocation(line: 696, column: 21, scope: !554)
!556 = !DILocation(line: 696, column: 15, scope: !554)
!557 = !DILocation(line: 696, column: 33, scope: !554)
!558 = !DILocation(line: 695, column: 7, scope: !554)
!559 = !DILocation(line: 698, column: 20, scope: !176)
!560 = !DILocation(line: 698, column: 3, scope: !176)
!561 = !DILocation(line: 702, column: 21, scope: !176)
!562 = !DILocation(line: 702, column: 3, scope: !176)
!563 = !DILocation(line: 705, column: 11, scope: !176)
!564 = !DILocation(line: 705, column: 26, scope: !176)
!565 = !DILocation(line: 705, column: 38, scope: !176)
!566 = !DILocation(line: 705, column: 36, scope: !176)
!567 = !DILocation(line: 705, column: 50, scope: !176)
!568 = !DILocation(line: 705, column: 3, scope: !176)
!569 = !DILocation(line: 707, column: 21, scope: !176)
!570 = !DILocation(line: 707, column: 3, scope: !176)
!571 = !DILocation(line: 710, column: 28, scope: !176)
!572 = !DILocation(line: 710, column: 3, scope: !176)
!573 = !DILocation(line: 714, column: 10, scope: !176)
!574 = !DILocation(line: 714, column: 21, scope: !176)
!575 = !DILocation(line: 714, column: 3, scope: !176)
!576 = !DILocation(line: 715, column: 1, scope: !176)
!577 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !82, file: !82, line: 855, type: !578, scopeLine: 856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !181)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !179}
!580 = !DILocalVariable(name: "program", arg: 1, scope: !577, file: !82, line: 855, type: !179)
!581 = !DILocation(line: 855, column: 34, scope: !577)
!582 = !DILocalVariable(name: "infomap", scope: !577, file: !82, line: 857, type: !583)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 896, elements: !210)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !577, file: !82, line: 857, size: 128, elements: !586)
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !585, file: !82, line: 857, baseType: !179, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !585, file: !82, line: 857, baseType: !179, size: 64, offset: 64)
!589 = !DILocation(line: 857, column: 67, scope: !577)
!590 = !DILocalVariable(name: "node", scope: !577, file: !82, line: 867, type: !179)
!591 = !DILocation(line: 867, column: 15, scope: !577)
!592 = !DILocation(line: 867, column: 22, scope: !577)
!593 = !DILocalVariable(name: "map_prog", scope: !577, file: !82, line: 868, type: !594)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!595 = !DILocation(line: 868, column: 25, scope: !577)
!596 = !DILocation(line: 868, column: 36, scope: !577)
!597 = !DILocation(line: 870, column: 3, scope: !577)
!598 = !DILocation(line: 870, column: 10, scope: !577)
!599 = !DILocation(line: 870, column: 20, scope: !577)
!600 = !DILocation(line: 870, column: 28, scope: !577)
!601 = !DILocation(line: 870, column: 40, scope: !577)
!602 = !DILocation(line: 870, column: 49, scope: !577)
!603 = !DILocation(line: 870, column: 59, scope: !577)
!604 = !DILocation(line: 870, column: 33, scope: !577)
!605 = !DILocation(line: 870, column: 31, scope: !577)
!606 = !DILocation(line: 0, scope: !577)
!607 = !DILocation(line: 871, column: 13, scope: !577)
!608 = distinct !{!608, !597, !607, !447}
!609 = !DILocation(line: 873, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !577, file: !82, line: 873, column: 7)
!611 = !DILocation(line: 873, column: 17, scope: !610)
!612 = !DILocation(line: 874, column: 12, scope: !610)
!613 = !DILocation(line: 874, column: 22, scope: !610)
!614 = !DILocation(line: 874, column: 10, scope: !610)
!615 = !DILocation(line: 874, column: 5, scope: !610)
!616 = !DILocation(line: 876, column: 3, scope: !577)
!617 = !DILocalVariable(name: "url_program", scope: !577, file: !82, line: 881, type: !179)
!618 = !DILocation(line: 881, column: 15, scope: !577)
!619 = !DILocation(line: 881, column: 36, scope: !577)
!620 = !DILocation(line: 881, column: 29, scope: !577)
!621 = !DILocation(line: 881, column: 61, scope: !577)
!622 = !DILocation(line: 882, column: 11, scope: !577)
!623 = !DILocation(line: 883, column: 24, scope: !577)
!624 = !DILocation(line: 882, column: 3, scope: !577)
!625 = !DILocation(line: 884, column: 11, scope: !577)
!626 = !DILocation(line: 885, column: 11, scope: !577)
!627 = !DILocation(line: 885, column: 17, scope: !577)
!628 = !DILocation(line: 885, column: 25, scope: !577)
!629 = !DILocation(line: 885, column: 22, scope: !577)
!630 = !DILocation(line: 884, column: 3, scope: !577)
!631 = !DILocation(line: 886, column: 1, scope: !577)
!632 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 491, type: !633, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !181)
!633 = !DISubroutineType(types: !634)
!634 = !{!83, !83, !635}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!636 = !DILocalVariable(name: "argc", arg: 1, scope: !632, file: !2, line: 491, type: !83)
!637 = !DILocation(line: 491, column: 11, scope: !632)
!638 = !DILocalVariable(name: "argv", arg: 2, scope: !632, file: !2, line: 491, type: !635)
!639 = !DILocation(line: 491, column: 24, scope: !632)
!640 = !DILocalVariable(name: "optc", scope: !632, file: !2, line: 493, type: !83)
!641 = !DILocation(line: 493, column: 7, scope: !632)
!642 = !DILocalVariable(name: "delim_arg", scope: !632, file: !2, line: 494, type: !179)
!643 = !DILocation(line: 494, column: 15, scope: !632)
!644 = !DILocation(line: 497, column: 21, scope: !632)
!645 = !DILocation(line: 497, column: 3, scope: !632)
!646 = !DILocation(line: 498, column: 3, scope: !632)
!647 = !DILocation(line: 499, column: 3, scope: !632)
!648 = !DILocation(line: 500, column: 3, scope: !632)
!649 = !DILocation(line: 502, column: 3, scope: !632)
!650 = !DILocation(line: 504, column: 3, scope: !632)
!651 = !DILocation(line: 504, column: 31, scope: !632)
!652 = !DILocation(line: 504, column: 37, scope: !632)
!653 = !DILocation(line: 504, column: 18, scope: !632)
!654 = !DILocation(line: 504, column: 16, scope: !632)
!655 = !DILocation(line: 504, column: 68, scope: !632)
!656 = !DILocation(line: 506, column: 15, scope: !657)
!657 = distinct !DILexicalBlock(scope: !632, file: !2, line: 505, column: 5)
!658 = !DILocation(line: 506, column: 7, scope: !657)
!659 = !DILocation(line: 510, column: 24, scope: !660)
!660 = distinct !DILexicalBlock(scope: !657, file: !2, line: 507, column: 9)
!661 = !DILocation(line: 510, column: 34, scope: !660)
!662 = !DILocation(line: 510, column: 52, scope: !660)
!663 = !DILocation(line: 510, column: 21, scope: !660)
!664 = !DILocation(line: 511, column: 11, scope: !660)
!665 = !DILocation(line: 514, column: 24, scope: !660)
!666 = !DILocation(line: 515, column: 11, scope: !660)
!667 = !DILocation(line: 518, column: 22, scope: !660)
!668 = !DILocation(line: 519, column: 11, scope: !660)
!669 = !DILocation(line: 521, column: 9, scope: !660)
!670 = !DILocation(line: 523, column: 9, scope: !660)
!671 = !DILocation(line: 523, column: 49, scope: !660)
!672 = !DILocation(line: 526, column: 11, scope: !660)
!673 = distinct !{!673, !650, !674, !447}
!674 = !DILocation(line: 528, column: 5, scope: !632)
!675 = !DILocalVariable(name: "nfiles", scope: !632, file: !2, line: 530, type: !83)
!676 = !DILocation(line: 530, column: 7, scope: !632)
!677 = !DILocation(line: 530, column: 16, scope: !632)
!678 = !DILocation(line: 530, column: 23, scope: !632)
!679 = !DILocation(line: 530, column: 21, scope: !632)
!680 = !DILocation(line: 531, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !632, file: !2, line: 531, column: 7)
!682 = !DILocation(line: 531, column: 14, scope: !681)
!683 = !DILocation(line: 533, column: 22, scope: !684)
!684 = distinct !DILexicalBlock(scope: !681, file: !2, line: 532, column: 5)
!685 = !DILocation(line: 533, column: 7, scope: !684)
!686 = !DILocation(line: 533, column: 12, scope: !684)
!687 = !DILocation(line: 533, column: 20, scope: !684)
!688 = !DILocation(line: 534, column: 13, scope: !684)
!689 = !DILocation(line: 535, column: 5, scope: !684)
!690 = !DILocation(line: 537, column: 25, scope: !691)
!691 = distinct !DILexicalBlock(scope: !632, file: !2, line: 537, column: 7)
!692 = !DILocation(line: 537, column: 7, scope: !691)
!693 = !DILocation(line: 542, column: 14, scope: !694)
!694 = distinct !DILexicalBlock(scope: !691, file: !2, line: 538, column: 5)
!695 = !DILocation(line: 543, column: 64, scope: !694)
!696 = !DILocation(line: 543, column: 14, scope: !694)
!697 = !DILocation(line: 541, column: 7, scope: !694)
!698 = !DILocalVariable(name: "ok", scope: !632, file: !2, line: 546, type: !155)
!699 = !DILocation(line: 546, column: 8, scope: !632)
!700 = !DILocation(line: 546, column: 15, scope: !632)
!701 = !DILocation(line: 547, column: 15, scope: !632)
!702 = !DILocation(line: 547, column: 24, scope: !632)
!703 = !DILocation(line: 547, column: 29, scope: !632)
!704 = !DILocation(line: 546, column: 14, scope: !632)
!705 = !DILocation(line: 549, column: 9, scope: !632)
!706 = !DILocation(line: 549, column: 3, scope: !632)
!707 = !DILocation(line: 550, column: 9, scope: !632)
!708 = !DILocation(line: 550, column: 3, scope: !632)
!709 = !DILocation(line: 552, column: 7, scope: !710)
!710 = distinct !DILexicalBlock(scope: !632, file: !2, line: 552, column: 7)
!711 = !DILocation(line: 552, column: 23, scope: !710)
!712 = !DILocation(line: 552, column: 34, scope: !710)
!713 = !DILocation(line: 552, column: 26, scope: !710)
!714 = !DILocation(line: 552, column: 41, scope: !710)
!715 = !DILocation(line: 553, column: 26, scope: !710)
!716 = !DILocation(line: 553, column: 5, scope: !710)
!717 = !DILocation(line: 554, column: 10, scope: !632)
!718 = !DILocation(line: 554, column: 3, scope: !632)
!719 = distinct !DISubprogram(name: "bad_cast", scope: !82, file: !82, line: 911, type: !720, scopeLine: 912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !181)
!720 = !DISubroutineType(types: !721)
!721 = !{!127, !179}
!722 = !DILocalVariable(name: "s", arg: 1, scope: !719, file: !82, line: 911, type: !179)
!723 = !DILocation(line: 911, column: 23, scope: !719)
!724 = !DILocation(line: 913, column: 19, scope: !719)
!725 = !DILocation(line: 913, column: 3, scope: !719)
!726 = distinct !DISubprogram(name: "collapse_escapes", scope: !2, file: !2, line: 93, type: !727, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !181)
!727 = !DISubroutineType(types: !728)
!728 = !{!83, !179}
!729 = !DILocalVariable(name: "strptr", arg: 1, scope: !726, file: !2, line: 93, type: !179)
!730 = !DILocation(line: 93, column: 31, scope: !726)
!731 = !DILocalVariable(name: "strout", scope: !726, file: !2, line: 95, type: !127)
!732 = !DILocation(line: 95, column: 9, scope: !726)
!733 = !DILocation(line: 95, column: 27, scope: !726)
!734 = !DILocation(line: 95, column: 18, scope: !726)
!735 = !DILocalVariable(name: "backslash_at_end", scope: !726, file: !2, line: 96, type: !155)
!736 = !DILocation(line: 96, column: 8, scope: !726)
!737 = !DILocation(line: 98, column: 12, scope: !726)
!738 = !DILocation(line: 98, column: 10, scope: !726)
!739 = !DILocation(line: 99, column: 42, scope: !726)
!740 = !DILocation(line: 99, column: 34, scope: !726)
!741 = !DILocation(line: 99, column: 26, scope: !726)
!742 = !DILocation(line: 99, column: 16, scope: !726)
!743 = !DILocation(line: 99, column: 14, scope: !726)
!744 = !DILocalVariable(name: "s", scope: !726, file: !2, line: 101, type: !179)
!745 = !DILocation(line: 101, column: 15, scope: !726)
!746 = !DILocation(line: 101, column: 19, scope: !726)
!747 = !DILocalVariable(name: "idx", scope: !726, file: !2, line: 102, type: !308)
!748 = !DILocation(line: 102, column: 9, scope: !726)
!749 = !DILocation(line: 104, column: 3, scope: !726)
!750 = !DILocation(line: 104, column: 11, scope: !726)
!751 = !DILocation(line: 104, column: 10, scope: !726)
!752 = !DILocation(line: 106, column: 12, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !2, line: 106, column: 11)
!754 = distinct !DILexicalBlock(scope: !726, file: !2, line: 105, column: 5)
!755 = !DILocation(line: 106, column: 11, scope: !753)
!756 = !DILocation(line: 106, column: 14, scope: !753)
!757 = !DILocation(line: 108, column: 12, scope: !758)
!758 = distinct !DILexicalBlock(scope: !753, file: !2, line: 107, column: 9)
!759 = !DILocation(line: 109, column: 16, scope: !760)
!760 = distinct !DILexicalBlock(scope: !758, file: !2, line: 109, column: 15)
!761 = !DILocation(line: 109, column: 15, scope: !760)
!762 = !DILocation(line: 109, column: 18, scope: !760)
!763 = !DILocation(line: 111, column: 32, scope: !764)
!764 = distinct !DILexicalBlock(scope: !760, file: !2, line: 110, column: 13)
!765 = !DILocation(line: 112, column: 15, scope: !764)
!766 = !DILocation(line: 114, column: 21, scope: !767)
!767 = distinct !DILexicalBlock(scope: !760, file: !2, line: 114, column: 20)
!768 = !DILocation(line: 114, column: 20, scope: !767)
!769 = !DILocation(line: 114, column: 23, scope: !767)
!770 = !DILocation(line: 117, column: 16, scope: !771)
!771 = distinct !DILexicalBlock(scope: !767, file: !2, line: 115, column: 13)
!772 = !DILocation(line: 118, column: 15, scope: !771)
!773 = !DILocation(line: 118, column: 29, scope: !771)
!774 = !DILocation(line: 118, column: 33, scope: !771)
!775 = !DILocation(line: 119, column: 13, scope: !771)
!776 = !DILocation(line: 122, column: 24, scope: !777)
!777 = distinct !DILexicalBlock(scope: !767, file: !2, line: 121, column: 13)
!778 = !DILocation(line: 122, column: 23, scope: !777)
!779 = !DILocation(line: 122, column: 15, scope: !777)
!780 = !DILocation(line: 124, column: 34, scope: !781)
!781 = distinct !DILexicalBlock(scope: !777, file: !2, line: 123, column: 17)
!782 = !DILocation(line: 124, column: 37, scope: !781)
!783 = !DILocation(line: 124, column: 45, scope: !781)
!784 = !DILocation(line: 125, column: 34, scope: !781)
!785 = !DILocation(line: 125, column: 37, scope: !781)
!786 = !DILocation(line: 125, column: 45, scope: !781)
!787 = !DILocation(line: 126, column: 34, scope: !781)
!788 = !DILocation(line: 126, column: 37, scope: !781)
!789 = !DILocation(line: 126, column: 45, scope: !781)
!790 = !DILocation(line: 127, column: 34, scope: !781)
!791 = !DILocation(line: 127, column: 37, scope: !781)
!792 = !DILocation(line: 127, column: 45, scope: !781)
!793 = !DILocation(line: 128, column: 34, scope: !781)
!794 = !DILocation(line: 128, column: 37, scope: !781)
!795 = !DILocation(line: 128, column: 45, scope: !781)
!796 = !DILocation(line: 129, column: 34, scope: !781)
!797 = !DILocation(line: 129, column: 37, scope: !781)
!798 = !DILocation(line: 129, column: 45, scope: !781)
!799 = !DILocation(line: 130, column: 35, scope: !781)
!800 = !DILocation(line: 130, column: 38, scope: !781)
!801 = !DILocation(line: 130, column: 46, scope: !781)
!802 = !DILocation(line: 131, column: 26, scope: !781)
!803 = !DILocation(line: 134, column: 16, scope: !777)
!804 = !DILocation(line: 135, column: 15, scope: !777)
!805 = !DILocation(line: 135, column: 29, scope: !777)
!806 = !DILocation(line: 135, column: 33, scope: !777)
!807 = !DILocation(line: 138, column: 11, scope: !758)
!808 = distinct !{!808, !749, !809, !447}
!809 = !DILocation(line: 146, column: 5, scope: !726)
!810 = !DILocation(line: 106, column: 17, scope: !753)
!811 = !DILabel(scope: !754, name: "copy_character", file: !2, line: 141, column: 7)
!812 = !DILocation(line: 141, column: 7, scope: !754)
!813 = !DILocalVariable(name: "g", scope: !754, file: !2, line: 142, type: !814)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !815, line: 143, baseType: !816)
!815 = !DIFile(filename: "./lib/mcel.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3579582c4826b47e433381dcd966e882")
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !815, line: 138, size: 64, elements: !817)
!817 = !{!818, !824, !825}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !816, file: !815, line: 140, baseType: !819, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !820, line: 37, baseType: !821)
!820 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !822, line: 57, baseType: !823)
!822 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !822, line: 42, baseType: !89)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !816, file: !815, line: 141, baseType: !305, size: 8, offset: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !816, file: !815, line: 142, baseType: !305, size: 8, offset: 40)
!826 = !DILocation(line: 142, column: 14, scope: !754)
!827 = !DILocation(line: 142, column: 30, scope: !754)
!828 = !DILocation(line: 142, column: 18, scope: !754)
!829 = !DILocation(line: 143, column: 25, scope: !754)
!830 = !DILocation(line: 143, column: 33, scope: !754)
!831 = !DILocation(line: 143, column: 38, scope: !754)
!832 = !DILocation(line: 143, column: 36, scope: !754)
!833 = !DILocation(line: 143, column: 16, scope: !754)
!834 = !DILocation(line: 143, column: 14, scope: !754)
!835 = !DILocation(line: 144, column: 14, scope: !754)
!836 = !DILocation(line: 144, column: 12, scope: !754)
!837 = !DILocation(line: 144, column: 9, scope: !754)
!838 = !DILocation(line: 145, column: 29, scope: !754)
!839 = !DILocation(line: 145, column: 27, scope: !754)
!840 = !DILocation(line: 145, column: 7, scope: !754)
!841 = !DILocation(line: 145, column: 21, scope: !754)
!842 = !DILocation(line: 145, column: 25, scope: !754)
!843 = !DILocation(line: 148, column: 4, scope: !726)
!844 = !DILocation(line: 148, column: 11, scope: !726)
!845 = !DILocation(line: 150, column: 7, scope: !846)
!846 = distinct !DILexicalBlock(scope: !726, file: !2, line: 150, column: 7)
!847 = !DILocation(line: 150, column: 11, scope: !846)
!848 = !DILocation(line: 152, column: 7, scope: !849)
!849 = distinct !DILexicalBlock(scope: !846, file: !2, line: 151, column: 5)
!850 = !DILocation(line: 152, column: 21, scope: !849)
!851 = !DILocation(line: 153, column: 11, scope: !849)
!852 = !DILocation(line: 154, column: 5, scope: !849)
!853 = !DILocation(line: 156, column: 16, scope: !726)
!854 = !DILocation(line: 156, column: 14, scope: !726)
!855 = !DILocation(line: 158, column: 10, scope: !726)
!856 = !DILocation(line: 158, column: 3, scope: !726)
!857 = distinct !DISubprogram(name: "paste_serial", scope: !2, file: !2, line: 364, type: !858, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !181)
!858 = !DISubroutineType(types: !859)
!859 = !{!155, !161, !635}
!860 = !DILocalVariable(name: "nfiles", arg: 1, scope: !857, file: !2, line: 364, type: !161)
!861 = !DILocation(line: 364, column: 22, scope: !857)
!862 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !857, file: !2, line: 364, type: !635)
!863 = !DILocation(line: 364, column: 37, scope: !857)
!864 = !DILocalVariable(name: "ok", scope: !857, file: !2, line: 366, type: !155)
!865 = !DILocation(line: 366, column: 8, scope: !857)
!866 = !DILocalVariable(name: "charnew", scope: !857, file: !2, line: 367, type: !83)
!867 = !DILocation(line: 367, column: 7, scope: !857)
!868 = !DILocalVariable(name: "charold", scope: !857, file: !2, line: 367, type: !83)
!869 = !DILocation(line: 367, column: 16, scope: !857)
!870 = !DILocalVariable(name: "fileptr", scope: !857, file: !2, line: 368, type: !871)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !873, line: 7, baseType: !874)
!873 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !875, line: 49, size: 1728, elements: !876)
!875 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!876 = !{!877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !892, !894, !895, !896, !898, !899, !901, !902, !905, !907, !910, !913, !914, !915, !916, !917}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !874, file: !875, line: 51, baseType: !83, size: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !874, file: !875, line: 54, baseType: !127, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !874, file: !875, line: 55, baseType: !127, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !874, file: !875, line: 56, baseType: !127, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !874, file: !875, line: 57, baseType: !127, size: 64, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !874, file: !875, line: 58, baseType: !127, size: 64, offset: 320)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !874, file: !875, line: 59, baseType: !127, size: 64, offset: 384)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !874, file: !875, line: 60, baseType: !127, size: 64, offset: 448)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !874, file: !875, line: 61, baseType: !127, size: 64, offset: 512)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !874, file: !875, line: 64, baseType: !127, size: 64, offset: 576)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !874, file: !875, line: 65, baseType: !127, size: 64, offset: 640)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !874, file: !875, line: 66, baseType: !127, size: 64, offset: 704)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !874, file: !875, line: 68, baseType: !890, size: 64, offset: 768)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !875, line: 36, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !874, file: !875, line: 70, baseType: !893, size: 64, offset: 832)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !874, file: !875, line: 72, baseType: !83, size: 32, offset: 896)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !874, file: !875, line: 73, baseType: !83, size: 32, offset: 928)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !874, file: !875, line: 74, baseType: !897, size: 64, offset: 960)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !822, line: 152, baseType: !310)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !874, file: !875, line: 77, baseType: !129, size: 16, offset: 1024)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !874, file: !875, line: 78, baseType: !900, size: 8, offset: 1040)
!900 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !874, file: !875, line: 79, baseType: !54, size: 8, offset: 1048)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !874, file: !875, line: 81, baseType: !903, size: 64, offset: 1088)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !875, line: 43, baseType: null)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !874, file: !875, line: 89, baseType: !906, size: 64, offset: 1152)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !822, line: 153, baseType: !310)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !874, file: !875, line: 91, baseType: !908, size: 64, offset: 1216)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !875, line: 37, flags: DIFlagFwdDecl)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !874, file: !875, line: 92, baseType: !911, size: 64, offset: 1280)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !875, line: 38, flags: DIFlagFwdDecl)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !874, file: !875, line: 93, baseType: !893, size: 64, offset: 1344)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !874, file: !875, line: 94, baseType: !128, size: 64, offset: 1408)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !874, file: !875, line: 95, baseType: !161, size: 64, offset: 1472)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !874, file: !875, line: 96, baseType: !83, size: 32, offset: 1536)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !874, file: !875, line: 98, baseType: !918, size: 160, offset: 1568)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !919)
!919 = !{!920}
!920 = !DISubrange(count: 20)
!921 = !DILocation(line: 368, column: 9, scope: !857)
!922 = !DILocation(line: 370, column: 3, scope: !857)
!923 = !DILocation(line: 370, column: 10, scope: !924)
!924 = distinct !DILexicalBlock(scope: !925, file: !2, line: 370, column: 3)
!925 = distinct !DILexicalBlock(scope: !857, file: !2, line: 370, column: 3)
!926 = !DILocation(line: 370, column: 3, scope: !925)
!927 = !DILocalVariable(name: "saved_errno", scope: !928, file: !2, line: 372, type: !83)
!928 = distinct !DILexicalBlock(scope: !924, file: !2, line: 371, column: 5)
!929 = !DILocation(line: 372, column: 11, scope: !928)
!930 = !DILocalVariable(name: "is_stdin", scope: !928, file: !2, line: 373, type: !155)
!931 = !DILocation(line: 373, column: 12, scope: !928)
!932 = !DILocation(line: 373, column: 31, scope: !928)
!933 = !DILocation(line: 373, column: 30, scope: !928)
!934 = !DILocation(line: 373, column: 23, scope: !928)
!935 = !DILocation(line: 374, column: 11, scope: !936)
!936 = distinct !DILexicalBlock(scope: !928, file: !2, line: 374, column: 11)
!937 = !DILocation(line: 376, column: 27, scope: !938)
!938 = distinct !DILexicalBlock(scope: !936, file: !2, line: 375, column: 9)
!939 = !DILocation(line: 377, column: 21, scope: !938)
!940 = !DILocation(line: 377, column: 19, scope: !938)
!941 = !DILocation(line: 378, column: 9, scope: !938)
!942 = !DILocation(line: 381, column: 29, scope: !943)
!943 = distinct !DILexicalBlock(scope: !936, file: !2, line: 380, column: 9)
!944 = !DILocation(line: 381, column: 28, scope: !943)
!945 = !DILocation(line: 381, column: 21, scope: !943)
!946 = !DILocation(line: 381, column: 19, scope: !943)
!947 = !DILocation(line: 382, column: 15, scope: !948)
!948 = distinct !DILexicalBlock(scope: !943, file: !2, line: 382, column: 15)
!949 = !DILocation(line: 382, column: 23, scope: !948)
!950 = !DILocation(line: 384, column: 25, scope: !951)
!951 = distinct !DILexicalBlock(scope: !948, file: !2, line: 383, column: 13)
!952 = !DILocation(line: 384, column: 47, scope: !951)
!953 = !DILocation(line: 384, column: 46, scope: !951)
!954 = !DILocation(line: 384, column: 38, scope: !951)
!955 = !DILocation(line: 384, column: 15, scope: !951)
!956 = !DILocation(line: 385, column: 18, scope: !951)
!957 = !DILocation(line: 386, column: 15, scope: !951)
!958 = !DILocation(line: 388, column: 20, scope: !943)
!959 = !DILocation(line: 388, column: 11, scope: !943)
!960 = !DILocalVariable(name: "delimidx", scope: !928, file: !2, line: 391, type: !308)
!961 = !DILocation(line: 391, column: 13, scope: !928)
!962 = !DILocalVariable(name: "delimoff", scope: !928, file: !2, line: 392, type: !308)
!963 = !DILocation(line: 392, column: 13, scope: !928)
!964 = !DILocation(line: 394, column: 23, scope: !928)
!965 = !DILocation(line: 394, column: 17, scope: !928)
!966 = !DILocation(line: 394, column: 15, scope: !928)
!967 = !DILocation(line: 395, column: 21, scope: !928)
!968 = !DILocation(line: 395, column: 19, scope: !928)
!969 = !DILocation(line: 396, column: 11, scope: !970)
!970 = distinct !DILexicalBlock(scope: !928, file: !2, line: 396, column: 11)
!971 = !DILocation(line: 396, column: 19, scope: !970)
!972 = !DILocation(line: 404, column: 11, scope: !973)
!973 = distinct !DILexicalBlock(scope: !970, file: !2, line: 397, column: 9)
!974 = !DILocation(line: 404, column: 35, scope: !973)
!975 = !DILocation(line: 404, column: 29, scope: !973)
!976 = !DILocation(line: 404, column: 27, scope: !973)
!977 = !DILocation(line: 404, column: 45, scope: !973)
!978 = !DILocation(line: 407, column: 19, scope: !979)
!979 = distinct !DILexicalBlock(scope: !980, file: !2, line: 407, column: 19)
!980 = distinct !DILexicalBlock(scope: !973, file: !2, line: 405, column: 13)
!981 = !DILocation(line: 407, column: 30, scope: !979)
!982 = !DILocation(line: 407, column: 27, scope: !979)
!983 = !DILocation(line: 409, column: 33, scope: !984)
!984 = distinct !DILexicalBlock(scope: !979, file: !2, line: 408, column: 17)
!985 = !DILocation(line: 409, column: 42, scope: !984)
!986 = !DILocation(line: 409, column: 40, scope: !984)
!987 = !DILocation(line: 409, column: 52, scope: !984)
!988 = !DILocation(line: 409, column: 63, scope: !984)
!989 = !DILocation(line: 409, column: 19, scope: !984)
!990 = !DILocation(line: 410, column: 31, scope: !984)
!991 = !DILocation(line: 410, column: 42, scope: !984)
!992 = !DILocation(line: 410, column: 28, scope: !984)
!993 = !DILocation(line: 411, column: 23, scope: !994)
!994 = distinct !DILexicalBlock(scope: !984, file: !2, line: 411, column: 23)
!995 = !DILocation(line: 411, column: 37, scope: !994)
!996 = !DILocation(line: 411, column: 34, scope: !994)
!997 = !DILocation(line: 413, column: 32, scope: !998)
!998 = distinct !DILexicalBlock(scope: !994, file: !2, line: 412, column: 21)
!999 = !DILocation(line: 414, column: 32, scope: !998)
!1000 = !DILocation(line: 415, column: 21, scope: !998)
!1001 = !DILocation(line: 416, column: 17, scope: !984)
!1002 = !DILocation(line: 418, column: 27, scope: !979)
!1003 = !DILocation(line: 418, column: 17, scope: !979)
!1004 = !DILocation(line: 420, column: 25, scope: !980)
!1005 = !DILocation(line: 420, column: 23, scope: !980)
!1006 = distinct !{!1006, !972, !1007, !447}
!1007 = !DILocation(line: 421, column: 13, scope: !973)
!1008 = !DILocation(line: 422, column: 25, scope: !973)
!1009 = !DILocation(line: 422, column: 23, scope: !973)
!1010 = !DILocation(line: 425, column: 21, scope: !973)
!1011 = !DILocation(line: 425, column: 11, scope: !973)
!1012 = !DILocation(line: 426, column: 9, scope: !973)
!1013 = !DILocation(line: 428, column: 11, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !928, file: !2, line: 428, column: 11)
!1015 = !DILocation(line: 428, column: 22, scope: !1014)
!1016 = !DILocation(line: 428, column: 19, scope: !1014)
!1017 = !DILocation(line: 429, column: 19, scope: !1014)
!1018 = !DILocation(line: 429, column: 9, scope: !1014)
!1019 = !DILocation(line: 431, column: 20, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !928, file: !2, line: 431, column: 11)
!1021 = !DILocation(line: 431, column: 12, scope: !1020)
!1022 = !DILocation(line: 431, column: 11, scope: !1020)
!1023 = !DILocation(line: 432, column: 21, scope: !1020)
!1024 = !DILocation(line: 432, column: 9, scope: !1020)
!1025 = !DILocation(line: 433, column: 11, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !928, file: !2, line: 433, column: 11)
!1027 = !DILocation(line: 434, column: 19, scope: !1026)
!1028 = !DILocation(line: 434, column: 9, scope: !1026)
!1029 = !DILocation(line: 435, column: 24, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 435, column: 16)
!1031 = !DILocation(line: 435, column: 16, scope: !1030)
!1032 = !DILocation(line: 435, column: 33, scope: !1030)
!1033 = !DILocation(line: 435, column: 38, scope: !1030)
!1034 = !DILocation(line: 435, column: 42, scope: !1030)
!1035 = !DILocation(line: 436, column: 23, scope: !1030)
!1036 = !DILocation(line: 436, column: 21, scope: !1030)
!1037 = !DILocation(line: 436, column: 9, scope: !1030)
!1038 = !DILocation(line: 437, column: 11, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !928, file: !2, line: 437, column: 11)
!1040 = !DILocation(line: 439, column: 21, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 438, column: 9)
!1042 = !DILocation(line: 439, column: 49, scope: !1041)
!1043 = !DILocation(line: 439, column: 48, scope: !1041)
!1044 = !DILocation(line: 439, column: 40, scope: !1041)
!1045 = !DILocation(line: 439, column: 11, scope: !1041)
!1046 = !DILocation(line: 440, column: 14, scope: !1041)
!1047 = !DILocation(line: 441, column: 9, scope: !1041)
!1048 = !DILocation(line: 442, column: 5, scope: !928)
!1049 = !DILocation(line: 370, column: 24, scope: !924)
!1050 = !DILocation(line: 370, column: 35, scope: !924)
!1051 = !DILocation(line: 370, column: 3, scope: !924)
!1052 = distinct !{!1052, !926, !1053, !447}
!1053 = !DILocation(line: 442, column: 5, scope: !925)
!1054 = !DILocation(line: 443, column: 10, scope: !857)
!1055 = !DILocation(line: 443, column: 3, scope: !857)
!1056 = distinct !DISubprogram(name: "paste_parallel", scope: !2, file: !2, line: 185, type: !858, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !181)
!1057 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1056, file: !2, line: 185, type: !161)
!1058 = !DILocation(line: 185, column: 24, scope: !1056)
!1059 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !1056, file: !2, line: 185, type: !635)
!1060 = !DILocation(line: 185, column: 39, scope: !1056)
!1061 = !DILocalVariable(name: "ok", scope: !1056, file: !2, line: 187, type: !155)
!1062 = !DILocation(line: 187, column: 8, scope: !1056)
!1063 = !DILocalVariable(name: "delbuf", scope: !1056, file: !2, line: 192, type: !127)
!1064 = !DILocation(line: 192, column: 9, scope: !1056)
!1065 = !DILocation(line: 192, column: 28, scope: !1056)
!1066 = !DILocation(line: 192, column: 35, scope: !1056)
!1067 = !DILocation(line: 192, column: 42, scope: !1056)
!1068 = !DILocation(line: 192, column: 40, scope: !1056)
!1069 = !DILocation(line: 192, column: 53, scope: !1056)
!1070 = !DILocation(line: 192, column: 18, scope: !1056)
!1071 = !DILocalVariable(name: "fileptr", scope: !1056, file: !2, line: 196, type: !1072)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!1073 = !DILocation(line: 196, column: 10, scope: !1056)
!1074 = !DILocation(line: 196, column: 30, scope: !1056)
!1075 = !DILocation(line: 196, column: 37, scope: !1056)
!1076 = !DILocation(line: 196, column: 20, scope: !1056)
!1077 = !DILocalVariable(name: "files_open", scope: !1056, file: !2, line: 199, type: !161)
!1078 = !DILocation(line: 199, column: 10, scope: !1056)
!1079 = !DILocalVariable(name: "opened_stdin", scope: !1056, file: !2, line: 202, type: !155)
!1080 = !DILocation(line: 202, column: 8, scope: !1056)
!1081 = !DILocation(line: 208, column: 19, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 208, column: 3)
!1083 = !DILocation(line: 208, column: 8, scope: !1082)
!1084 = !DILocation(line: 208, column: 24, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 208, column: 3)
!1086 = !DILocation(line: 208, column: 37, scope: !1085)
!1087 = !DILocation(line: 208, column: 35, scope: !1085)
!1088 = !DILocation(line: 208, column: 3, scope: !1082)
!1089 = !DILocation(line: 210, column: 18, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !2, line: 210, column: 11)
!1091 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 209, column: 5)
!1092 = !DILocation(line: 210, column: 26, scope: !1090)
!1093 = !DILocation(line: 210, column: 11, scope: !1090)
!1094 = !DILocation(line: 212, column: 27, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 211, column: 9)
!1096 = !DILocation(line: 213, column: 33, scope: !1095)
!1097 = !DILocation(line: 213, column: 11, scope: !1095)
!1098 = !DILocation(line: 213, column: 19, scope: !1095)
!1099 = !DILocation(line: 213, column: 31, scope: !1095)
!1100 = !DILocation(line: 214, column: 9, scope: !1095)
!1101 = !DILocation(line: 217, column: 40, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 216, column: 9)
!1103 = !DILocation(line: 217, column: 48, scope: !1102)
!1104 = !DILocation(line: 217, column: 33, scope: !1102)
!1105 = !DILocation(line: 217, column: 11, scope: !1102)
!1106 = !DILocation(line: 217, column: 19, scope: !1102)
!1107 = !DILocation(line: 217, column: 31, scope: !1102)
!1108 = !DILocation(line: 218, column: 15, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1102, file: !2, line: 218, column: 15)
!1110 = !DILocation(line: 218, column: 23, scope: !1109)
!1111 = !DILocation(line: 218, column: 35, scope: !1109)
!1112 = !DILocation(line: 219, column: 34, scope: !1109)
!1113 = !DILocation(line: 219, column: 55, scope: !1109)
!1114 = !DILocation(line: 219, column: 63, scope: !1109)
!1115 = !DILocation(line: 219, column: 47, scope: !1109)
!1116 = !DILocation(line: 219, column: 13, scope: !1109)
!1117 = !DILocation(line: 220, column: 28, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 220, column: 20)
!1119 = !DILocation(line: 220, column: 36, scope: !1118)
!1120 = !DILocation(line: 220, column: 20, scope: !1118)
!1121 = !DILocation(line: 220, column: 49, scope: !1118)
!1122 = !DILocation(line: 221, column: 26, scope: !1118)
!1123 = !DILocation(line: 221, column: 13, scope: !1118)
!1124 = !DILocation(line: 222, column: 20, scope: !1102)
!1125 = !DILocation(line: 222, column: 28, scope: !1102)
!1126 = !DILocation(line: 222, column: 11, scope: !1102)
!1127 = !DILocation(line: 224, column: 5, scope: !1091)
!1128 = !DILocation(line: 208, column: 45, scope: !1085)
!1129 = !DILocation(line: 208, column: 3, scope: !1085)
!1130 = distinct !{!1130, !1088, !1131, !447}
!1131 = !DILocation(line: 224, column: 5, scope: !1082)
!1132 = !DILocation(line: 226, column: 7, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 226, column: 7)
!1134 = !DILocation(line: 226, column: 20, scope: !1133)
!1135 = !DILocation(line: 226, column: 23, scope: !1133)
!1136 = !DILocation(line: 227, column: 29, scope: !1133)
!1137 = !DILocation(line: 227, column: 5, scope: !1133)
!1138 = !DILocation(line: 233, column: 3, scope: !1056)
!1139 = !DILocation(line: 233, column: 10, scope: !1056)
!1140 = !DILocalVariable(name: "somedone", scope: !1141, file: !2, line: 236, type: !155)
!1141 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 234, column: 5)
!1142 = !DILocation(line: 236, column: 12, scope: !1141)
!1143 = !DILocalVariable(name: "delimidx", scope: !1141, file: !2, line: 237, type: !308)
!1144 = !DILocation(line: 237, column: 13, scope: !1141)
!1145 = !DILocalVariable(name: "delimoff", scope: !1141, file: !2, line: 238, type: !308)
!1146 = !DILocation(line: 238, column: 13, scope: !1141)
!1147 = !DILocalVariable(name: "delims_saved", scope: !1141, file: !2, line: 239, type: !308)
!1148 = !DILocation(line: 239, column: 13, scope: !1141)
!1149 = !DILocalVariable(name: "i", scope: !1150, file: !2, line: 241, type: !161)
!1150 = distinct !DILexicalBlock(scope: !1141, file: !2, line: 241, column: 7)
!1151 = !DILocation(line: 241, column: 19, scope: !1150)
!1152 = !DILocation(line: 241, column: 12, scope: !1150)
!1153 = !DILocation(line: 241, column: 26, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1150, file: !2, line: 241, column: 7)
!1155 = !DILocation(line: 241, column: 30, scope: !1154)
!1156 = !DILocation(line: 241, column: 28, scope: !1154)
!1157 = !DILocation(line: 241, column: 37, scope: !1154)
!1158 = !DILocation(line: 241, column: 40, scope: !1154)
!1159 = !DILocation(line: 0, scope: !1154)
!1160 = !DILocation(line: 241, column: 7, scope: !1150)
!1161 = !DILocalVariable(name: "chr", scope: !1162, file: !2, line: 243, type: !83)
!1162 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 242, column: 9)
!1163 = !DILocation(line: 243, column: 15, scope: !1162)
!1164 = !DILocalVariable(name: "err", scope: !1162, file: !2, line: 244, type: !83)
!1165 = !DILocation(line: 244, column: 15, scope: !1162)
!1166 = !DILocalVariable(name: "sometodo", scope: !1162, file: !2, line: 245, type: !155)
!1167 = !DILocation(line: 245, column: 16, scope: !1162)
!1168 = !DILocation(line: 247, column: 15, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 247, column: 15)
!1170 = !DILocation(line: 247, column: 23, scope: !1169)
!1171 = !DILocation(line: 249, column: 27, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 248, column: 13)
!1173 = !DILocation(line: 249, column: 35, scope: !1172)
!1174 = !DILocation(line: 249, column: 21, scope: !1172)
!1175 = !DILocation(line: 249, column: 19, scope: !1172)
!1176 = !DILocation(line: 250, column: 21, scope: !1172)
!1177 = !DILocation(line: 250, column: 19, scope: !1172)
!1178 = !DILocation(line: 251, column: 19, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 251, column: 19)
!1180 = !DILocation(line: 251, column: 23, scope: !1179)
!1181 = !DILocation(line: 251, column: 30, scope: !1179)
!1182 = !DILocation(line: 251, column: 33, scope: !1179)
!1183 = !DILocation(line: 253, column: 31, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 253, column: 23)
!1185 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 252, column: 17)
!1186 = !DILocation(line: 253, column: 42, scope: !1184)
!1187 = !DILocation(line: 253, column: 56, scope: !1184)
!1188 = !DILocation(line: 253, column: 23, scope: !1184)
!1189 = !DILocation(line: 253, column: 67, scope: !1184)
!1190 = !DILocation(line: 253, column: 64, scope: !1184)
!1191 = !DILocation(line: 254, column: 21, scope: !1184)
!1192 = !DILocation(line: 255, column: 32, scope: !1185)
!1193 = !DILocation(line: 256, column: 17, scope: !1185)
!1194 = !DILocation(line: 258, column: 15, scope: !1172)
!1195 = !DILocation(line: 258, column: 22, scope: !1172)
!1196 = !DILocation(line: 258, column: 26, scope: !1172)
!1197 = !DILocation(line: 260, column: 28, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 259, column: 17)
!1199 = !DILocation(line: 261, column: 23, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 261, column: 23)
!1201 = !DILocation(line: 261, column: 30, scope: !1200)
!1202 = !DILocation(line: 261, column: 27, scope: !1200)
!1203 = !DILocation(line: 262, column: 21, scope: !1200)
!1204 = !DILocation(line: 263, column: 29, scope: !1198)
!1205 = !DILocation(line: 263, column: 19, scope: !1198)
!1206 = !DILocation(line: 264, column: 31, scope: !1198)
!1207 = !DILocation(line: 264, column: 39, scope: !1198)
!1208 = !DILocation(line: 264, column: 25, scope: !1198)
!1209 = !DILocation(line: 264, column: 23, scope: !1198)
!1210 = !DILocation(line: 265, column: 25, scope: !1198)
!1211 = !DILocation(line: 265, column: 23, scope: !1198)
!1212 = distinct !{!1212, !1194, !1213, !447}
!1213 = !DILocation(line: 266, column: 17, scope: !1172)
!1214 = !DILocation(line: 267, column: 13, scope: !1172)
!1215 = !DILocation(line: 269, column: 17, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 269, column: 15)
!1217 = !DILocation(line: 269, column: 15, scope: !1216)
!1218 = !DILocation(line: 273, column: 19, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 273, column: 19)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 270, column: 13)
!1221 = !DILocation(line: 273, column: 27, scope: !1219)
!1222 = !DILocation(line: 275, column: 32, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 275, column: 23)
!1224 = distinct !DILexicalBlock(scope: !1219, file: !2, line: 274, column: 17)
!1225 = !DILocation(line: 275, column: 40, scope: !1223)
!1226 = !DILocation(line: 275, column: 24, scope: !1223)
!1227 = !DILocation(line: 275, column: 23, scope: !1223)
!1228 = !DILocation(line: 276, column: 25, scope: !1223)
!1229 = !DILocation(line: 276, column: 21, scope: !1223)
!1230 = !DILocation(line: 277, column: 23, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 277, column: 23)
!1232 = !DILocation(line: 277, column: 31, scope: !1231)
!1233 = !DILocation(line: 277, column: 37, scope: !1231)
!1234 = !DILocation(line: 277, column: 34, scope: !1231)
!1235 = !DILocation(line: 278, column: 31, scope: !1231)
!1236 = !DILocation(line: 278, column: 39, scope: !1231)
!1237 = !DILocation(line: 278, column: 21, scope: !1231)
!1238 = !DILocation(line: 279, column: 36, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1231, file: !2, line: 279, column: 28)
!1240 = !DILocation(line: 279, column: 44, scope: !1239)
!1241 = !DILocation(line: 279, column: 28, scope: !1239)
!1242 = !DILocation(line: 279, column: 48, scope: !1239)
!1243 = !DILocation(line: 279, column: 55, scope: !1239)
!1244 = !DILocation(line: 279, column: 59, scope: !1239)
!1245 = !DILocation(line: 280, column: 27, scope: !1239)
!1246 = !DILocation(line: 280, column: 25, scope: !1239)
!1247 = !DILocation(line: 280, column: 21, scope: !1239)
!1248 = !DILocation(line: 281, column: 23, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 281, column: 23)
!1250 = !DILocation(line: 283, column: 33, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 282, column: 21)
!1252 = !DILocation(line: 283, column: 52, scope: !1251)
!1253 = !DILocation(line: 283, column: 60, scope: !1251)
!1254 = !DILocation(line: 283, column: 44, scope: !1251)
!1255 = !DILocation(line: 283, column: 23, scope: !1251)
!1256 = !DILocation(line: 284, column: 26, scope: !1251)
!1257 = !DILocation(line: 285, column: 21, scope: !1251)
!1258 = !DILocation(line: 287, column: 19, scope: !1224)
!1259 = !DILocation(line: 287, column: 27, scope: !1224)
!1260 = !DILocation(line: 287, column: 30, scope: !1224)
!1261 = !DILocation(line: 288, column: 29, scope: !1224)
!1262 = !DILocation(line: 289, column: 17, scope: !1224)
!1263 = !DILocation(line: 291, column: 19, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 291, column: 19)
!1265 = !DILocation(line: 291, column: 21, scope: !1264)
!1266 = !DILocation(line: 291, column: 28, scope: !1264)
!1267 = !DILocation(line: 291, column: 25, scope: !1264)
!1268 = !DILocation(line: 295, column: 23, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 295, column: 23)
!1270 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 292, column: 17)
!1271 = !DILocation(line: 298, column: 27, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 298, column: 27)
!1273 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 296, column: 21)
!1274 = !DILocation(line: 300, column: 39, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 300, column: 31)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !2, line: 299, column: 25)
!1277 = !DILocation(line: 300, column: 50, scope: !1275)
!1278 = !DILocation(line: 300, column: 64, scope: !1275)
!1279 = !DILocation(line: 300, column: 31, scope: !1275)
!1280 = !DILocation(line: 301, column: 34, scope: !1275)
!1281 = !DILocation(line: 301, column: 31, scope: !1275)
!1282 = !DILocation(line: 302, column: 29, scope: !1275)
!1283 = !DILocation(line: 303, column: 40, scope: !1276)
!1284 = !DILocation(line: 304, column: 25, scope: !1276)
!1285 = !DILocation(line: 305, column: 33, scope: !1273)
!1286 = !DILocation(line: 305, column: 23, scope: !1273)
!1287 = !DILocation(line: 306, column: 21, scope: !1273)
!1288 = !DILocation(line: 307, column: 19, scope: !1270)
!1289 = !DILocalVariable(name: "len", scope: !1290, file: !2, line: 312, type: !161)
!1290 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 310, column: 17)
!1291 = !DILocation(line: 312, column: 26, scope: !1290)
!1292 = !DILocation(line: 312, column: 32, scope: !1290)
!1293 = !DILocation(line: 312, column: 43, scope: !1290)
!1294 = !DILocation(line: 313, column: 23, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 313, column: 23)
!1296 = !DILocation(line: 313, column: 27, scope: !1295)
!1297 = !DILocation(line: 315, column: 31, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1295, file: !2, line: 314, column: 21)
!1299 = !DILocation(line: 315, column: 40, scope: !1298)
!1300 = !DILocation(line: 315, column: 23, scope: !1298)
!1301 = !DILocation(line: 315, column: 54, scope: !1298)
!1302 = !DILocation(line: 315, column: 63, scope: !1298)
!1303 = !DILocation(line: 315, column: 73, scope: !1298)
!1304 = !DILocation(line: 316, column: 39, scope: !1298)
!1305 = !DILocation(line: 316, column: 36, scope: !1298)
!1306 = !DILocation(line: 317, column: 21, scope: !1298)
!1307 = !DILocation(line: 318, column: 31, scope: !1290)
!1308 = !DILocation(line: 318, column: 28, scope: !1290)
!1309 = !DILocation(line: 319, column: 23, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 319, column: 23)
!1311 = !DILocation(line: 319, column: 37, scope: !1310)
!1312 = !DILocation(line: 319, column: 34, scope: !1310)
!1313 = !DILocation(line: 321, column: 32, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1310, file: !2, line: 320, column: 21)
!1315 = !DILocation(line: 322, column: 32, scope: !1314)
!1316 = !DILocation(line: 323, column: 21, scope: !1314)
!1317 = !DILocation(line: 325, column: 13, scope: !1220)
!1318 = !DILocation(line: 329, column: 24, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 327, column: 13)
!1320 = !DILocation(line: 332, column: 19, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 332, column: 19)
!1322 = !DILocation(line: 332, column: 21, scope: !1321)
!1323 = !DILocation(line: 332, column: 28, scope: !1321)
!1324 = !DILocation(line: 332, column: 25, scope: !1321)
!1325 = !DILocation(line: 334, column: 23, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 334, column: 23)
!1327 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 333, column: 17)
!1328 = !DILocation(line: 334, column: 30, scope: !1326)
!1329 = !DILocation(line: 334, column: 27, scope: !1326)
!1330 = !DILocation(line: 334, column: 41, scope: !1326)
!1331 = !DILocation(line: 334, column: 44, scope: !1326)
!1332 = !DILocation(line: 334, column: 48, scope: !1326)
!1333 = !DILocation(line: 335, column: 31, scope: !1326)
!1334 = !DILocation(line: 335, column: 21, scope: !1326)
!1335 = !DILocation(line: 336, column: 33, scope: !1327)
!1336 = !DILocation(line: 336, column: 42, scope: !1327)
!1337 = !DILocation(line: 336, column: 40, scope: !1327)
!1338 = !DILocation(line: 336, column: 52, scope: !1327)
!1339 = !DILocation(line: 336, column: 63, scope: !1327)
!1340 = !DILocation(line: 336, column: 19, scope: !1327)
!1341 = !DILocation(line: 337, column: 31, scope: !1327)
!1342 = !DILocation(line: 337, column: 42, scope: !1327)
!1343 = !DILocation(line: 337, column: 28, scope: !1327)
!1344 = !DILocation(line: 338, column: 23, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 338, column: 23)
!1346 = !DILocation(line: 338, column: 37, scope: !1345)
!1347 = !DILocation(line: 338, column: 34, scope: !1345)
!1348 = !DILocation(line: 340, column: 32, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 339, column: 21)
!1350 = !DILocation(line: 341, column: 32, scope: !1349)
!1351 = !DILocation(line: 342, column: 21, scope: !1349)
!1352 = !DILocation(line: 343, column: 17, scope: !1327)
!1353 = !DILocalVariable(name: "c", scope: !1354, file: !2, line: 348, type: !4)
!1354 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 345, column: 17)
!1355 = !DILocation(line: 348, column: 24, scope: !1354)
!1356 = !DILocation(line: 348, column: 29, scope: !1354)
!1357 = !DILocation(line: 348, column: 33, scope: !1354)
!1358 = !DILocation(line: 348, column: 42, scope: !1354)
!1359 = !DILocation(line: 348, column: 55, scope: !1354)
!1360 = !DILocation(line: 348, column: 28, scope: !1354)
!1361 = !DILocation(line: 349, column: 29, scope: !1354)
!1362 = !DILocation(line: 349, column: 19, scope: !1354)
!1363 = !DILocation(line: 352, column: 9, scope: !1162)
!1364 = !DILocation(line: 241, column: 53, scope: !1154)
!1365 = !DILocation(line: 241, column: 7, scope: !1154)
!1366 = distinct !{!1366, !1160, !1367, !447}
!1367 = !DILocation(line: 352, column: 9, scope: !1150)
!1368 = distinct !{!1368, !1138, !1369, !447}
!1369 = !DILocation(line: 353, column: 5, scope: !1056)
!1370 = !DILocation(line: 354, column: 9, scope: !1056)
!1371 = !DILocation(line: 354, column: 3, scope: !1056)
!1372 = !DILocation(line: 355, column: 9, scope: !1056)
!1373 = !DILocation(line: 355, column: 3, scope: !1056)
!1374 = !DILocation(line: 356, column: 10, scope: !1056)
!1375 = !DILocation(line: 356, column: 3, scope: !1056)
!1376 = distinct !DISubprogram(name: "output_delim", scope: !2, file: !2, line: 174, type: !1377, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !181)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{null, !179, !161}
!1379 = !DILocalVariable(name: "delimptr", arg: 1, scope: !1376, file: !2, line: 174, type: !179)
!1380 = !DILocation(line: 174, column: 27, scope: !1376)
!1381 = !DILocalVariable(name: "len", arg: 2, scope: !1376, file: !2, line: 174, type: !161)
!1382 = !DILocation(line: 174, column: 44, scope: !1376)
!1383 = !DILocation(line: 176, column: 7, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 176, column: 7)
!1385 = !DILocation(line: 176, column: 11, scope: !1384)
!1386 = !DILocation(line: 176, column: 15, scope: !1384)
!1387 = !DILocation(line: 176, column: 26, scope: !1384)
!1388 = !DILocation(line: 176, column: 39, scope: !1384)
!1389 = !DILocation(line: 176, column: 44, scope: !1384)
!1390 = !DILocation(line: 176, column: 18, scope: !1384)
!1391 = !DILocation(line: 176, column: 55, scope: !1384)
!1392 = !DILocation(line: 176, column: 52, scope: !1384)
!1393 = !DILocation(line: 177, column: 5, scope: !1384)
!1394 = !DILocation(line: 178, column: 1, scope: !1376)
!1395 = distinct !DISubprogram(name: "xputchar", scope: !2, file: !2, line: 164, type: !1396, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !181)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{null, !4}
!1398 = !DILocalVariable(name: "c", arg: 1, scope: !1395, file: !2, line: 164, type: !4)
!1399 = !DILocation(line: 164, column: 16, scope: !1395)
!1400 = !DILocation(line: 166, column: 16, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1395, file: !2, line: 166, column: 7)
!1402 = !DILocation(line: 166, column: 7, scope: !1401)
!1403 = !DILocation(line: 166, column: 19, scope: !1401)
!1404 = !DILocation(line: 167, column: 5, scope: !1401)
!1405 = !DILocation(line: 168, column: 1, scope: !1395)
!1406 = distinct !DISubprogram(name: "write_error", scope: !82, file: !82, line: 953, type: !364, scopeLine: 954, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !181)
!1407 = !DILocalVariable(name: "saved_errno", scope: !1406, file: !82, line: 955, type: !83)
!1408 = !DILocation(line: 955, column: 7, scope: !1406)
!1409 = !DILocation(line: 955, column: 21, scope: !1406)
!1410 = !DILocation(line: 956, column: 11, scope: !1406)
!1411 = !DILocation(line: 956, column: 3, scope: !1406)
!1412 = !DILocation(line: 957, column: 11, scope: !1406)
!1413 = !DILocation(line: 957, column: 3, scope: !1406)
!1414 = !DILocation(line: 958, column: 13, scope: !1406)
!1415 = !DILocation(line: 958, column: 3, scope: !1406)
!1416 = !DILocation(line: 959, column: 24, scope: !1406)
!1417 = !DILocation(line: 959, column: 37, scope: !1406)
!1418 = !DILocation(line: 959, column: 3, scope: !1406)
