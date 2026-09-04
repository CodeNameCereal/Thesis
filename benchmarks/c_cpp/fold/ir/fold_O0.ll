; ModuleID = 'src/fold.c'
source_filename = "src/fold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.infomap = type { ptr, ptr }
%struct.mbbuf_t = type { ptr, ptr, i64, i64, i64, i8 }
%struct.mcel_t = type { i32, i8, i8 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [60 x i8] c"Wrap input lines in each FILE, writing to standard output.\0A\00", align 1, !dbg !12
@stdout = external global ptr, align 8
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
@counting_mode = internal global i32 0, align 4, !dbg !306
@break_spaces = internal global i8 0, align 1, !dbg !154
@optarg = external global ptr, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"invalid number of columns\00", align 1, !dbg !134
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !139
@Version = external global ptr, align 8
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !144
@optind = external global i32, align 4
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !149
@have_read_stdin = internal global i8 0, align 1, !dbg !157
@stdin = external global ptr, align 8
@.str.17 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !159
@.str.18 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !161
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !166
@.str.19 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !174
@.str.20 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !176
@.str.21 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !178
@.str.22 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !183
@.str.23 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !188
@.str.24 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !190
@.str.25 = private unnamed_addr constant [4 x i8] c"dir\00", align 1, !dbg !192
@.str.26 = private unnamed_addr constant [3 x i8] c"ls\00", align 1, !dbg !194
@.str.27 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1, !dbg !199
@.str.28 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1, !dbg !201
@.str.29 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1, !dbg !203
@.str.30 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1, !dbg !205
@.str.31 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1, !dbg !210
@.str.32 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !215
@.str.33 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !217
@.str.34 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !219
@.str.35 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !221
@.str.36 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !223
@.str.37 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !225
@.str.38 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !227
@.str.39 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !232
@.str.40 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !237
@.str.41 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !242
@.str.42 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !247
@.str.43 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !249
@.str.44 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !251
@.str.45 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !253
@.str.46 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !255
@.str.47 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !257
@.str.48 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !262
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.23, ptr @.str.46 }, %struct.infomap { ptr @.str.11, ptr @.str.47 }, %struct.infomap { ptr @.str.32, ptr @.str.48 }, %struct.infomap { ptr @.str.33, ptr @.str.48 }, %struct.infomap { ptr @.str.34, ptr @.str.48 }, %struct.infomap { ptr @.str.35, ptr @.str.48 }, %struct.infomap zeroinitializer], align 16
@.str.49 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !264
@.str.50 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !269
@.str.51 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !274
@.str.52 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1, !dbg !279
@.str.53 = private unnamed_addr constant [11 x i8] c"characters\00", align 1, !dbg !281
@.str.54 = private unnamed_addr constant [7 x i8] c"spaces\00", align 1, !dbg !286
@.str.55 = private unnamed_addr constant [6 x i8] c"width\00", align 1, !dbg !288
@.str.56 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !290
@.str.57 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !292
@longopts = internal constant [7 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.52, i32 0, [4 x i8] zeroinitializer, ptr null, i32 98, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.53, i32 0, [4 x i8] zeroinitializer, ptr null, i32 99, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.54, i32 0, [4 x i8] zeroinitializer, ptr null, i32 115, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.55, i32 1, [4 x i8] zeroinitializer, ptr null, i32 119, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.56, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -130, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.57, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -131, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16, !dbg !294
@fold_file.line_out = internal global [262144 x i8] zeroinitializer, align 16, !dbg !308
@fold_file.line_in = internal global [262144 x i8] zeroinitializer, align 16, !dbg !319
@.str.59 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !321
@.str.60 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !323
@.str.61 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !325
@last_character_width = internal global i32 0, align 4, !dbg !327

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !340 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !343, !DIExpression(), !344)
  %3 = load i32, ptr %2, align 4, !dbg !345
  %4 = icmp ne i32 %3, 0, !dbg !347
  br i1 %4, label %5, label %12, !dbg !347

5:                                                ; preds = %1
  br label %6, !dbg !348

6:                                                ; preds = %5
  %7 = load ptr, ptr @stderr, align 8, !dbg !349
  %8 = call ptr @gettext(ptr noundef @.str) #9, !dbg !349
  %9 = load ptr, ptr @program_name, align 8, !dbg !349
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef %8, ptr noundef %9) #9, !dbg !349
  br label %11, !dbg !349

11:                                               ; preds = %6
  br label %25, !dbg !349

12:                                               ; preds = %1
  %13 = call ptr @gettext(ptr noundef @.str.1) #9, !dbg !351
  %14 = load ptr, ptr @program_name, align 8, !dbg !353
  %15 = call i32 (ptr, ...) @rpl_printf(ptr noundef %13, ptr noundef %14), !dbg !354
  %16 = call ptr @gettext(ptr noundef @.str.2) #9, !dbg !355
  %17 = load ptr, ptr @stdout, align 8, !dbg !356
  %18 = call i32 @fputs_unlocked(ptr noundef %16, ptr noundef %17), !dbg !357
  call void @emit_stdin_note(), !dbg !358
  call void @emit_mandatory_arg_note(), !dbg !359
  %19 = call ptr @gettext(ptr noundef @.str.4) #9, !dbg !360
  call void @oputs_(ptr noundef @.str.3, ptr noundef %19), !dbg !361
  %20 = call ptr @gettext(ptr noundef @.str.5) #9, !dbg !362
  call void @oputs_(ptr noundef @.str.3, ptr noundef %20), !dbg !363
  %21 = call ptr @gettext(ptr noundef @.str.6) #9, !dbg !364
  call void @oputs_(ptr noundef @.str.3, ptr noundef %21), !dbg !365
  %22 = call ptr @gettext(ptr noundef @.str.7) #9, !dbg !366
  call void @oputs_(ptr noundef @.str.3, ptr noundef %22), !dbg !367
  %23 = call ptr @gettext(ptr noundef @.str.8) #9, !dbg !368
  call void @oputs_(ptr noundef @.str.3, ptr noundef %23), !dbg !369
  %24 = call ptr @gettext(ptr noundef @.str.9) #9, !dbg !370
  call void @oputs_(ptr noundef @.str.3, ptr noundef %24), !dbg !371
  call void @emit_ancillary_info(ptr noundef @.str.3), !dbg !372
  br label %25

25:                                               ; preds = %12, %11
  %26 = load i32, ptr %2, align 4, !dbg !373
  call void @exit(i32 noundef %26) #10, !dbg !374
  unreachable, !dbg !374
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #1

declare i32 @rpl_printf(ptr noundef, ...) #2

declare i32 @fputs_unlocked(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_stdin_note() #3 !dbg !375 {
  %1 = call ptr @gettext(ptr noundef @.str.17) #9, !dbg !378
  %2 = load ptr, ptr @stdout, align 8, !dbg !379
  %3 = call i32 @fputs_unlocked(ptr noundef %1, ptr noundef %2), !dbg !380
  ret void, !dbg !381
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_mandatory_arg_note() #3 !dbg !382 {
  %1 = call ptr @gettext(ptr noundef @.str.18) #9, !dbg !383
  %2 = load ptr, ptr @stdout, align 8, !dbg !384
  %3 = call i32 @fputs_unlocked(ptr noundef %1, ptr noundef %2), !dbg !385
  ret void, !dbg !386
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(ptr noundef %0, ptr noundef %1) #3 !dbg !168 {
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
    #dbg_declare(ptr %3, !387, !DIExpression(), !388)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !389, !DIExpression(), !390)
  %14 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !391
  %15 = icmp eq i32 %14, -1, !dbg !393
  br i1 %15, label %16, label %30, !dbg !393

16:                                               ; preds = %2
    #dbg_declare(ptr %5, !394, !DIExpression(), !396)
  %17 = call ptr @getenv(ptr noundef @.str.19) #9, !dbg !397
  store ptr %17, ptr %5, align 8, !dbg !396
  %18 = load ptr, ptr %5, align 8, !dbg !398
  %19 = icmp ne ptr %18, null, !dbg !398
  br i1 %19, label %20, label %27, !dbg !399

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 8, !dbg !400
  %22 = load i8, ptr %21, align 1, !dbg !401
  %23 = icmp ne i8 %22, 0, !dbg !401
  br i1 %23, label %24, label %27, !dbg !402

24:                                               ; preds = %20
  %25 = load ptr, ptr %5, align 8, !dbg !403
  %26 = call zeroext i1 @streq(ptr noundef %25, ptr noundef @.str.20), !dbg !404
  br label %27, !dbg !402

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !402
  store i32 %29, ptr @oputs_.help_no_sgr, align 4, !dbg !405
  br label %30, !dbg !406

30:                                               ; preds = %27, %2
  %31 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !407
  %32 = icmp ne i32 %31, 0, !dbg !407
  br i1 %32, label %33, label %37, !dbg !407

33:                                               ; preds = %30
  %34 = load ptr, ptr %4, align 8, !dbg !409
  %35 = load ptr, ptr @stdout, align 8, !dbg !411
  %36 = call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !412
  br label %274, !dbg !413

37:                                               ; preds = %30
    #dbg_declare(ptr %6, !414, !DIExpression(), !415)
  store i8 1, ptr %6, align 1, !dbg !415
    #dbg_declare(ptr %7, !416, !DIExpression(), !417)
  %38 = load ptr, ptr %4, align 8, !dbg !418
  %39 = load ptr, ptr %4, align 8, !dbg !419
  %40 = call i64 @strspn(ptr noundef %39, ptr noundef @.str.21) #11, !dbg !420
  %41 = getelementptr inbounds nuw i8, ptr %38, i64 %40, !dbg !421
  store ptr %41, ptr %7, align 8, !dbg !417
    #dbg_declare(ptr %8, !422, !DIExpression(), !423)
  %42 = load ptr, ptr %4, align 8, !dbg !424
  %43 = call ptr @strchr(ptr noundef %42, i32 noundef 45) #11, !dbg !425
  store ptr %43, ptr %8, align 8, !dbg !423
  %44 = load ptr, ptr %8, align 8, !dbg !426
  %45 = icmp ne ptr %44, null, !dbg !426
  br i1 %45, label %48, label %46, !dbg !428

46:                                               ; preds = %37
  %47 = load ptr, ptr %7, align 8, !dbg !429
  store ptr %47, ptr %8, align 8, !dbg !431
  store i8 0, ptr %6, align 1, !dbg !432
  br label %89, !dbg !433

48:                                               ; preds = %37
  %49 = load ptr, ptr %8, align 8, !dbg !434
  %50 = load ptr, ptr %7, align 8, !dbg !436
  %51 = icmp ne ptr %49, %50, !dbg !437
  br i1 %51, label %52, label %88, !dbg !437

52:                                               ; preds = %48
    #dbg_declare(ptr %9, !438, !DIExpression(), !440)
  %53 = load ptr, ptr %7, align 8, !dbg !441
  store ptr %53, ptr %9, align 8, !dbg !440
    #dbg_declare(ptr %10, !442, !DIExpression(), !443)
  store i64 0, ptr %10, align 8, !dbg !443
  br label %54, !dbg !444

54:                                               ; preds = %63, %52
  %55 = load ptr, ptr %9, align 8, !dbg !445
  %56 = load ptr, ptr %8, align 8, !dbg !446
  %57 = icmp ult ptr %55, %56, !dbg !447
  br i1 %57, label %58, label %61, !dbg !448

58:                                               ; preds = %54
  %59 = load i64, ptr %10, align 8, !dbg !449
  %60 = icmp ult i64 %59, 2, !dbg !450
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !451
  br i1 %62, label %63, label %82, !dbg !444

63:                                               ; preds = %61
  %64 = call ptr @__ctype_b_loc() #12, !dbg !452
  %65 = load ptr, ptr %64, align 8, !dbg !452
  %66 = load ptr, ptr %9, align 8, !dbg !453
  %67 = getelementptr inbounds nuw i8, ptr %66, i32 1, !dbg !453
  store ptr %67, ptr %9, align 8, !dbg !453
  %68 = load i8, ptr %66, align 1, !dbg !454
  %69 = sext i8 %68 to i32, !dbg !452
  %70 = sext i32 %69 to i64, !dbg !452
  %71 = getelementptr inbounds i16, ptr %65, i64 %70, !dbg !452
  %72 = load i16, ptr %71, align 2, !dbg !452
  %73 = zext i16 %72 to i32, !dbg !452
  %74 = and i32 %73, 8192, !dbg !452
  %75 = icmp ne i32 %74, 0, !dbg !455
  %76 = xor i1 %75, true, !dbg !455
  %77 = xor i1 %76, true, !dbg !456
  %78 = zext i1 %77 to i32, !dbg !456
  %79 = sext i32 %78 to i64, !dbg !456
  %80 = load i64, ptr %10, align 8, !dbg !457
  %81 = add i64 %80, %79, !dbg !457
  store i64 %81, ptr %10, align 8, !dbg !457
  br label %54, !dbg !444, !llvm.loop !458

82:                                               ; preds = %61
  %83 = load i64, ptr %10, align 8, !dbg !460
  %84 = icmp eq i64 %83, 2, !dbg !462
  br i1 %84, label %85, label %87, !dbg !462

85:                                               ; preds = %82
  %86 = load ptr, ptr %7, align 8, !dbg !463
  store ptr %86, ptr %8, align 8, !dbg !465
  store i8 0, ptr %6, align 1, !dbg !466
  br label %87, !dbg !467

87:                                               ; preds = %85, %82
  br label %88, !dbg !468

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
    #dbg_declare(ptr %11, !469, !DIExpression(), !470)
  %90 = load ptr, ptr %8, align 8, !dbg !471
  %91 = call i64 @strcspn(ptr noundef %90, ptr noundef @.str.22) #11, !dbg !472
  store i64 %91, ptr %11, align 8, !dbg !470
    #dbg_declare(ptr %12, !473, !DIExpression(), !474)
  %92 = load ptr, ptr %8, align 8, !dbg !475
  %93 = load i64, ptr %11, align 8, !dbg !476
  %94 = getelementptr inbounds nuw i8, ptr %92, i64 %93, !dbg !477
  store ptr %94, ptr %12, align 8, !dbg !474
  br label %95, !dbg !478

95:                                               ; preds = %161, %89
  %96 = load ptr, ptr %12, align 8, !dbg !479
  %97 = load i8, ptr %96, align 1, !dbg !480
  %98 = sext i8 %97 to i32, !dbg !480
  %99 = icmp ne i32 %98, 0, !dbg !480
  br i1 %99, label %100, label %105, !dbg !481

100:                                              ; preds = %95
  %101 = load ptr, ptr %12, align 8, !dbg !482
  %102 = load i8, ptr %101, align 1, !dbg !483
  %103 = sext i8 %102 to i32, !dbg !483
  %104 = icmp ne i32 %103, 10, !dbg !484
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !485
  br i1 %106, label %107, label %164, !dbg !478

107:                                              ; preds = %105
  %108 = load ptr, ptr %12, align 8, !dbg !486
  %109 = load i8, ptr %108, align 1, !dbg !489
  %110 = sext i8 %109 to i32, !dbg !489
  %111 = icmp eq i32 %110, 45, !dbg !490
  br i1 %111, label %112, label %119, !dbg !491

112:                                              ; preds = %107
  %113 = load ptr, ptr %12, align 8, !dbg !492
  %114 = getelementptr inbounds i8, ptr %113, i64 1, !dbg !493
  %115 = load i8, ptr %114, align 1, !dbg !493
  %116 = sext i8 %115 to i32, !dbg !493
  %117 = icmp eq i32 %116, 45, !dbg !494
  br i1 %117, label %118, label %119, !dbg !491

118:                                              ; preds = %112
  store i8 0, ptr %6, align 1, !dbg !495
  br label %119, !dbg !496

119:                                              ; preds = %118, %112, %107
  %120 = call ptr @__ctype_b_loc() #12, !dbg !497
  %121 = load ptr, ptr %120, align 8, !dbg !497
  %122 = load ptr, ptr %12, align 8, !dbg !499
  %123 = load i8, ptr %122, align 1, !dbg !500
  %124 = sext i8 %123 to i32, !dbg !497
  %125 = sext i32 %124 to i64, !dbg !497
  %126 = getelementptr inbounds i16, ptr %121, i64 %125, !dbg !497
  %127 = load i16, ptr %126, align 2, !dbg !497
  %128 = zext i16 %127 to i32, !dbg !497
  %129 = and i32 %128, 8192, !dbg !497
  %130 = icmp ne i32 %129, 0, !dbg !497
  br i1 %130, label %131, label %161, !dbg !497

131:                                              ; preds = %119
  %132 = load ptr, ptr %12, align 8, !dbg !501
  %133 = load i8, ptr %132, align 1, !dbg !504
  %134 = sext i8 %133 to i32, !dbg !504
  %135 = icmp eq i32 %134, 9, !dbg !505
  br i1 %135, label %149, label %136, !dbg !506

136:                                              ; preds = %131
  %137 = call ptr @__ctype_b_loc() #12, !dbg !507
  %138 = load ptr, ptr %137, align 8, !dbg !507
  %139 = load ptr, ptr %12, align 8, !dbg !508
  %140 = getelementptr inbounds i8, ptr %139, i64 1, !dbg !509
  %141 = load i8, ptr %140, align 1, !dbg !509
  %142 = sext i8 %141 to i32, !dbg !507
  %143 = sext i32 %142 to i64, !dbg !507
  %144 = getelementptr inbounds i16, ptr %138, i64 %143, !dbg !507
  %145 = load i16, ptr %144, align 2, !dbg !507
  %146 = zext i16 %145 to i32, !dbg !507
  %147 = and i32 %146, 8192, !dbg !507
  %148 = icmp ne i32 %147, 0, !dbg !507
  br i1 %148, label %149, label %150, !dbg !506

149:                                              ; preds = %136, %131
  br label %164, !dbg !510

150:                                              ; preds = %136
  %151 = load i8, ptr %6, align 1, !dbg !511
  %152 = trunc i8 %151 to i1, !dbg !511
  br i1 %152, label %160, label %153, !dbg !513

153:                                              ; preds = %150
  %154 = load ptr, ptr %12, align 8, !dbg !514
  %155 = getelementptr inbounds i8, ptr %154, i64 1, !dbg !515
  %156 = load i8, ptr %155, align 1, !dbg !515
  %157 = sext i8 %156 to i32, !dbg !515
  %158 = icmp ne i32 %157, 45, !dbg !516
  br i1 %158, label %159, label %160, !dbg !513

159:                                              ; preds = %153
  br label %164, !dbg !517

160:                                              ; preds = %153, %150
  br label %161, !dbg !518

161:                                              ; preds = %160, %119
  %162 = load ptr, ptr %12, align 8, !dbg !519
  %163 = getelementptr inbounds nuw i8, ptr %162, i32 1, !dbg !519
  store ptr %163, ptr %12, align 8, !dbg !519
  br label %95, !dbg !478, !llvm.loop !520

164:                                              ; preds = %159, %149, %105
  %165 = load ptr, ptr %4, align 8, !dbg !522
  %166 = load ptr, ptr %7, align 8, !dbg !523
  %167 = load ptr, ptr %4, align 8, !dbg !524
  %168 = ptrtoint ptr %166 to i64, !dbg !525
  %169 = ptrtoint ptr %167 to i64, !dbg !525
  %170 = sub i64 %168, %169, !dbg !525
  %171 = load ptr, ptr @stdout, align 8, !dbg !526
  %172 = call i64 @fwrite_unlocked(ptr noundef %165, i64 noundef 1, i64 noundef %170, ptr noundef %171), !dbg !527
    #dbg_declare(ptr %13, !528, !DIExpression(), !529)
  %173 = load ptr, ptr %3, align 8, !dbg !530
  %174 = call zeroext i1 @streq(ptr noundef %173, ptr noundef @.str.23), !dbg !531
  br i1 %174, label %175, label %176, !dbg !531

175:                                              ; preds = %164
  br label %232, !dbg !531

176:                                              ; preds = %164
  %177 = load ptr, ptr %3, align 8, !dbg !532
  %178 = call zeroext i1 @streq(ptr noundef %177, ptr noundef @.str.25), !dbg !533
  br i1 %178, label %179, label %180, !dbg !533

179:                                              ; preds = %176
  br label %230, !dbg !533

180:                                              ; preds = %176
  %181 = load ptr, ptr %3, align 8, !dbg !534
  %182 = call zeroext i1 @streq(ptr noundef %181, ptr noundef @.str.27), !dbg !535
  br i1 %182, label %183, label %184, !dbg !535

183:                                              ; preds = %180
  br label %228, !dbg !535

184:                                              ; preds = %180
  %185 = load ptr, ptr %3, align 8, !dbg !536
  %186 = call zeroext i1 @streq(ptr noundef %185, ptr noundef @.str.28), !dbg !537
  br i1 %186, label %187, label %188, !dbg !537

187:                                              ; preds = %184
  br label %226, !dbg !537

188:                                              ; preds = %184
  %189 = load ptr, ptr %3, align 8, !dbg !538
  %190 = call zeroext i1 @streq(ptr noundef %189, ptr noundef @.str.30), !dbg !539
  br i1 %190, label %191, label %192, !dbg !539

191:                                              ; preds = %188
  br label %224, !dbg !539

192:                                              ; preds = %188
  %193 = load ptr, ptr %3, align 8, !dbg !540
  %194 = call zeroext i1 @streq(ptr noundef %193, ptr noundef @.str.31), !dbg !541
  br i1 %194, label %195, label %196, !dbg !541

195:                                              ; preds = %192
  br label %222, !dbg !541

196:                                              ; preds = %192
  %197 = load ptr, ptr %3, align 8, !dbg !542
  %198 = call zeroext i1 @streq(ptr noundef %197, ptr noundef @.str.32), !dbg !543
  br i1 %198, label %199, label %200, !dbg !543

199:                                              ; preds = %196
  br label %220, !dbg !543

200:                                              ; preds = %196
  %201 = load ptr, ptr %3, align 8, !dbg !544
  %202 = call zeroext i1 @streq(ptr noundef %201, ptr noundef @.str.33), !dbg !545
  br i1 %202, label %203, label %204, !dbg !545

203:                                              ; preds = %200
  br label %218, !dbg !545

204:                                              ; preds = %200
  %205 = load ptr, ptr %3, align 8, !dbg !546
  %206 = call zeroext i1 @streq(ptr noundef %205, ptr noundef @.str.34), !dbg !547
  br i1 %206, label %207, label %208, !dbg !547

207:                                              ; preds = %204
  br label %216, !dbg !547

208:                                              ; preds = %204
  %209 = load ptr, ptr %3, align 8, !dbg !548
  %210 = call zeroext i1 @streq(ptr noundef %209, ptr noundef @.str.35), !dbg !549
  br i1 %210, label %211, label %212, !dbg !549

211:                                              ; preds = %208
  br label %214, !dbg !549

212:                                              ; preds = %208
  %213 = load ptr, ptr %3, align 8, !dbg !550
  br label %214, !dbg !549

214:                                              ; preds = %212, %211
  %215 = phi ptr [ @.str.29, %211 ], [ %213, %212 ], !dbg !549
  br label %216, !dbg !547

216:                                              ; preds = %214, %207
  %217 = phi ptr [ @.str.29, %207 ], [ %215, %214 ], !dbg !547
  br label %218, !dbg !545

218:                                              ; preds = %216, %203
  %219 = phi ptr [ @.str.29, %203 ], [ %217, %216 ], !dbg !545
  br label %220, !dbg !543

220:                                              ; preds = %218, %199
  %221 = phi ptr [ @.str.29, %199 ], [ %219, %218 ], !dbg !543
  br label %222, !dbg !541

222:                                              ; preds = %220, %195
  %223 = phi ptr [ @.str.29, %195 ], [ %221, %220 ], !dbg !541
  br label %224, !dbg !539

224:                                              ; preds = %222, %191
  %225 = phi ptr [ @.str.29, %191 ], [ %223, %222 ], !dbg !539
  br label %226, !dbg !537

226:                                              ; preds = %224, %187
  %227 = phi ptr [ @.str.29, %187 ], [ %225, %224 ], !dbg !537
  br label %228, !dbg !535

228:                                              ; preds = %226, %183
  %229 = phi ptr [ @.str.26, %183 ], [ %227, %226 ], !dbg !535
  br label %230, !dbg !533

230:                                              ; preds = %228, %179
  %231 = phi ptr [ @.str.26, %179 ], [ %229, %228 ], !dbg !533
  br label %232, !dbg !531

232:                                              ; preds = %230, %175
  %233 = phi ptr [ @.str.24, %175 ], [ %231, %230 ], !dbg !531
  store ptr %233, ptr %13, align 8, !dbg !529
  %234 = load ptr, ptr %8, align 8, !dbg !551
  %235 = call i32 @strncmp(ptr noundef %234, ptr noundef @.str.36, i64 noundef 6) #11, !dbg !553
  %236 = icmp eq i32 %235, 0, !dbg !553
  br i1 %236, label %241, label %237, !dbg !554

237:                                              ; preds = %232
  %238 = load ptr, ptr %8, align 8, !dbg !555
  %239 = call i32 @strncmp(ptr noundef %238, ptr noundef @.str.37, i64 noundef 9) #11, !dbg !556
  %240 = icmp eq i32 %239, 0, !dbg !556
  br i1 %240, label %241, label %248, !dbg !554

241:                                              ; preds = %237, %232
  %242 = load ptr, ptr %13, align 8, !dbg !557
  %243 = load ptr, ptr %13, align 8, !dbg !559
  %244 = load i64, ptr %11, align 8, !dbg !560
  %245 = trunc i64 %244 to i32, !dbg !561
  %246 = load ptr, ptr %8, align 8, !dbg !562
  %247 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str.38, ptr noundef @.str.39, ptr noundef %242, ptr noundef %243, i32 noundef %245, ptr noundef %246), !dbg !563
  br label %254, !dbg !564

248:                                              ; preds = %237
  %249 = load ptr, ptr %13, align 8, !dbg !565
  %250 = load i64, ptr %11, align 8, !dbg !567
  %251 = trunc i64 %250 to i32, !dbg !568
  %252 = load ptr, ptr %8, align 8, !dbg !569
  %253 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str.40, ptr noundef @.str.41, ptr noundef %249, i32 noundef %251, ptr noundef %252), !dbg !570
  br label %254

254:                                              ; preds = %248, %241
  %255 = load ptr, ptr @stdout, align 8, !dbg !571
  %256 = call i32 @fputs_unlocked(ptr noundef @.str.42, ptr noundef %255), !dbg !572
  %257 = load ptr, ptr @stdout, align 8, !dbg !573
  %258 = call i32 @fputs_unlocked(ptr noundef @.str.43, ptr noundef %257), !dbg !574
  %259 = load ptr, ptr %7, align 8, !dbg !575
  %260 = load ptr, ptr %12, align 8, !dbg !576
  %261 = load ptr, ptr %7, align 8, !dbg !577
  %262 = ptrtoint ptr %260 to i64, !dbg !578
  %263 = ptrtoint ptr %261 to i64, !dbg !578
  %264 = sub i64 %262, %263, !dbg !578
  %265 = load ptr, ptr @stdout, align 8, !dbg !579
  %266 = call i64 @fwrite_unlocked(ptr noundef %259, i64 noundef 1, i64 noundef %264, ptr noundef %265), !dbg !580
  %267 = load ptr, ptr @stdout, align 8, !dbg !581
  %268 = call i32 @fputs_unlocked(ptr noundef @.str.44, ptr noundef %267), !dbg !582
  %269 = load ptr, ptr @stdout, align 8, !dbg !583
  %270 = call i32 @fputs_unlocked(ptr noundef @.str.45, ptr noundef %269), !dbg !584
  %271 = load ptr, ptr %12, align 8, !dbg !585
  %272 = load ptr, ptr @stdout, align 8, !dbg !586
  %273 = call i32 @fputs_unlocked(ptr noundef %271, ptr noundef %272), !dbg !587
  br label %274, !dbg !588

274:                                              ; preds = %254, %33
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !589 {
  %2 = alloca ptr, align 8
  %3 = alloca [7 x %struct.infomap], align 16
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !592, !DIExpression(), !593)
    #dbg_declare(ptr %3, !594, !DIExpression(), !601)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %3, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !601
    #dbg_declare(ptr %4, !602, !DIExpression(), !603)
  %7 = load ptr, ptr %2, align 8, !dbg !604
  store ptr %7, ptr %4, align 8, !dbg !603
    #dbg_declare(ptr %5, !605, !DIExpression(), !607)
  %8 = getelementptr inbounds [7 x %struct.infomap], ptr %3, i64 0, i64 0, !dbg !608
  store ptr %8, ptr %5, align 8, !dbg !607
  br label %9, !dbg !609

9:                                                ; preds = %23, %1
  %10 = load ptr, ptr %5, align 8, !dbg !610
  %11 = getelementptr inbounds nuw %struct.infomap, ptr %10, i32 0, i32 0, !dbg !611
  %12 = load ptr, ptr %11, align 8, !dbg !611
  %13 = icmp ne ptr %12, null, !dbg !610
  br i1 %13, label %14, label %21, !dbg !612

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 8, !dbg !613
  %16 = load ptr, ptr %5, align 8, !dbg !614
  %17 = getelementptr inbounds nuw %struct.infomap, ptr %16, i32 0, i32 0, !dbg !615
  %18 = load ptr, ptr %17, align 8, !dbg !615
  %19 = call zeroext i1 @streq(ptr noundef %15, ptr noundef %18), !dbg !616
  %20 = xor i1 %19, true, !dbg !617
  br label %21

21:                                               ; preds = %14, %9
  %22 = phi i1 [ false, %9 ], [ %20, %14 ], !dbg !618
  br i1 %22, label %23, label %26, !dbg !609

23:                                               ; preds = %21
  %24 = load ptr, ptr %5, align 8, !dbg !619
  %25 = getelementptr inbounds nuw %struct.infomap, ptr %24, i32 1, !dbg !619
  store ptr %25, ptr %5, align 8, !dbg !619
  br label %9, !dbg !609, !llvm.loop !620

26:                                               ; preds = %21
  %27 = load ptr, ptr %5, align 8, !dbg !621
  %28 = getelementptr inbounds nuw %struct.infomap, ptr %27, i32 0, i32 1, !dbg !623
  %29 = load ptr, ptr %28, align 8, !dbg !623
  %30 = icmp ne ptr %29, null, !dbg !621
  br i1 %30, label %31, label %35, !dbg !621

31:                                               ; preds = %26
  %32 = load ptr, ptr %5, align 8, !dbg !624
  %33 = getelementptr inbounds nuw %struct.infomap, ptr %32, i32 0, i32 1, !dbg !625
  %34 = load ptr, ptr %33, align 8, !dbg !625
  store ptr %34, ptr %4, align 8, !dbg !626
  br label %35, !dbg !627

35:                                               ; preds = %31, %26
  call void @emit_bug_reporting_address(), !dbg !628
    #dbg_declare(ptr %6, !629, !DIExpression(), !630)
  %36 = load ptr, ptr %2, align 8, !dbg !631
  %37 = call zeroext i1 @streq(ptr noundef %36, ptr noundef @.str.23), !dbg !632
  br i1 %37, label %38, label %39, !dbg !632

38:                                               ; preds = %35
  br label %41, !dbg !632

39:                                               ; preds = %35
  %40 = load ptr, ptr %2, align 8, !dbg !633
  br label %41, !dbg !632

41:                                               ; preds = %39, %38
  %42 = phi ptr [ @.str.24, %38 ], [ %40, %39 ], !dbg !632
  store ptr %42, ptr %6, align 8, !dbg !630
  %43 = call ptr @gettext(ptr noundef @.str.49) #9, !dbg !634
  %44 = load ptr, ptr %6, align 8, !dbg !635
  %45 = call i32 (ptr, ...) @rpl_printf(ptr noundef %43, ptr noundef @.str.39, ptr noundef %44), !dbg !636
  %46 = call ptr @gettext(ptr noundef @.str.50) #9, !dbg !637
  %47 = load ptr, ptr %4, align 8, !dbg !638
  %48 = load ptr, ptr %4, align 8, !dbg !639
  %49 = load ptr, ptr %2, align 8, !dbg !640
  %50 = icmp eq ptr %48, %49, !dbg !641
  %51 = zext i1 %50 to i64, !dbg !639
  %52 = select i1 %50, ptr @.str.51, ptr @.str.10, !dbg !639
  %53 = call i32 (ptr, ...) @rpl_printf(ptr noundef %46, ptr noundef %47, ptr noundef %52), !dbg !642
  ret void, !dbg !643
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #3 !dbg !644 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca [2 x i8], align 1
  %10 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
    #dbg_declare(ptr %4, !648, !DIExpression(), !649)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !650, !DIExpression(), !651)
    #dbg_declare(ptr %6, !652, !DIExpression(), !653)
  store i64 80, ptr %6, align 8, !dbg !653
    #dbg_declare(ptr %7, !654, !DIExpression(), !655)
    #dbg_declare(ptr %8, !656, !DIExpression(), !657)
  %11 = load ptr, ptr %5, align 8, !dbg !658
  %12 = getelementptr inbounds ptr, ptr %11, i64 0, !dbg !658
  %13 = load ptr, ptr %12, align 8, !dbg !658
  call void @set_program_name(ptr noundef %13), !dbg !659
  %14 = call ptr @setlocale(i32 noundef 6, ptr noundef @.str.10) #9, !dbg !660
  %15 = call ptr @bindtextdomain(ptr noundef @.str.11, ptr noundef @.str.12) #9, !dbg !661
  %16 = call ptr @textdomain(ptr noundef @.str.11) #9, !dbg !662
  %17 = call i32 @atexit(ptr noundef @close_stdout) #9, !dbg !663
  br label %18, !dbg !664

18:                                               ; preds = %51, %2
  %19 = load i32, ptr %4, align 4, !dbg !665
  %20 = load ptr, ptr %5, align 8, !dbg !666
  %21 = call i32 @getopt_long(i32 noundef %19, ptr noundef %20, ptr noundef @shortopts, ptr noundef @longopts, ptr noundef null) #9, !dbg !667
  store i32 %21, ptr %7, align 4, !dbg !668
  %22 = icmp ne i32 %21, -1, !dbg !669
  br i1 %22, label %23, label %52, !dbg !664

23:                                               ; preds = %18
    #dbg_declare(ptr %9, !670, !DIExpression(), !672)
  %24 = load i32, ptr %7, align 4, !dbg !673
  switch i32 %24, label %50 [
    i32 98, label %25
    i32 99, label %26
    i32 115, label %27
    i32 48, label %28
    i32 49, label %28
    i32 50, label %28
    i32 51, label %28
    i32 52, label %28
    i32 53, label %28
    i32 54, label %28
    i32 55, label %28
    i32 56, label %28
    i32 57, label %28
    i32 119, label %41
    i32 -130, label %45
    i32 -131, label %46
  ], !dbg !674

25:                                               ; preds = %23
  store i32 1, ptr @counting_mode, align 4, !dbg !675
  br label %51, !dbg !677

26:                                               ; preds = %23
  store i32 2, ptr @counting_mode, align 4, !dbg !678
  br label %51, !dbg !679

27:                                               ; preds = %23
  store i8 1, ptr @break_spaces, align 1, !dbg !680
  br label %51, !dbg !681

28:                                               ; preds = %23, %23, %23, %23, %23, %23, %23, %23, %23, %23
  %29 = load ptr, ptr @optarg, align 8, !dbg !682
  %30 = icmp ne ptr %29, null, !dbg !682
  br i1 %30, label %31, label %34, !dbg !682

31:                                               ; preds = %28
  %32 = load ptr, ptr @optarg, align 8, !dbg !684
  %33 = getelementptr inbounds i8, ptr %32, i32 -1, !dbg !684
  store ptr %33, ptr @optarg, align 8, !dbg !684
  br label %40, !dbg !685

34:                                               ; preds = %28
  %35 = load i32, ptr %7, align 4, !dbg !686
  %36 = trunc i32 %35 to i8, !dbg !686
  %37 = getelementptr inbounds [2 x i8], ptr %9, i64 0, i64 0, !dbg !688
  store i8 %36, ptr %37, align 1, !dbg !689
  %38 = getelementptr inbounds [2 x i8], ptr %9, i64 0, i64 1, !dbg !690
  store i8 0, ptr %38, align 1, !dbg !691
  %39 = getelementptr inbounds [2 x i8], ptr %9, i64 0, i64 0, !dbg !692
  store ptr %39, ptr @optarg, align 8, !dbg !693
  br label %40

40:                                               ; preds = %34, %31
  br label %41, !dbg !682

41:                                               ; preds = %23, %40
  %42 = load ptr, ptr @optarg, align 8, !dbg !694
  %43 = call ptr @gettext(ptr noundef @.str.13) #9, !dbg !695
  %44 = call i64 @xnumtoumax(ptr noundef %42, i32 noundef 10, i64 noundef 1, i64 noundef -10, ptr noundef @.str.10, ptr noundef %43, i32 noundef 0, i32 noundef 12), !dbg !696
  store i64 %44, ptr %6, align 8, !dbg !697
  br label %51, !dbg !698

45:                                               ; preds = %23
  call void @usage(i32 noundef 0) #13, !dbg !699
  unreachable, !dbg !699

46:                                               ; preds = %23
  %47 = load ptr, ptr @stdout, align 8, !dbg !700
  %48 = load ptr, ptr @Version, align 8, !dbg !700
  %49 = call ptr @proper_name_lite(ptr noundef @.str.15, ptr noundef @.str.15), !dbg !701
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %47, ptr noundef @.str.3, ptr noundef @.str.14, ptr noundef %48, ptr noundef %49, ptr noundef null), !dbg !700
  call void @exit(i32 noundef 0) #10, !dbg !700
  unreachable, !dbg !700

50:                                               ; preds = %23
  call void @usage(i32 noundef 1) #13, !dbg !702
  unreachable, !dbg !702

51:                                               ; preds = %41, %27, %26, %25
  br label %18, !dbg !664, !llvm.loop !703

52:                                               ; preds = %18
  %53 = load i32, ptr %4, align 4, !dbg !705
  %54 = load i32, ptr @optind, align 4, !dbg !707
  %55 = icmp eq i32 %53, %54, !dbg !708
  br i1 %55, label %56, label %60, !dbg !708

56:                                               ; preds = %52
  %57 = load i64, ptr %6, align 8, !dbg !709
  %58 = call zeroext i1 @fold_file(ptr noundef @.str.16, i64 noundef %57), !dbg !710
  %59 = zext i1 %58 to i8, !dbg !711
  store i8 %59, ptr %8, align 1, !dbg !711
  br label %85, !dbg !712

60:                                               ; preds = %52
  store i8 1, ptr %8, align 1, !dbg !713
    #dbg_declare(ptr %10, !715, !DIExpression(), !717)
  %61 = load i32, ptr @optind, align 4, !dbg !718
  store i32 %61, ptr %10, align 4, !dbg !717
  br label %62, !dbg !719

62:                                               ; preds = %81, %60
  %63 = load i32, ptr %10, align 4, !dbg !720
  %64 = load i32, ptr %4, align 4, !dbg !722
  %65 = icmp slt i32 %63, %64, !dbg !723
  br i1 %65, label %66, label %84, !dbg !724

66:                                               ; preds = %62
  %67 = load ptr, ptr %5, align 8, !dbg !725
  %68 = load i32, ptr %10, align 4, !dbg !726
  %69 = sext i32 %68 to i64, !dbg !725
  %70 = getelementptr inbounds ptr, ptr %67, i64 %69, !dbg !725
  %71 = load ptr, ptr %70, align 8, !dbg !725
  %72 = load i64, ptr %6, align 8, !dbg !727
  %73 = call zeroext i1 @fold_file(ptr noundef %71, i64 noundef %72), !dbg !728
  %74 = zext i1 %73 to i32, !dbg !728
  %75 = load i8, ptr %8, align 1, !dbg !729
  %76 = trunc i8 %75 to i1, !dbg !729
  %77 = zext i1 %76 to i32, !dbg !729
  %78 = and i32 %77, %74, !dbg !729
  %79 = icmp ne i32 %78, 0, !dbg !729
  %80 = zext i1 %79 to i8, !dbg !729
  store i8 %80, ptr %8, align 1, !dbg !729
  br label %81, !dbg !730

81:                                               ; preds = %66
  %82 = load i32, ptr %10, align 4, !dbg !731
  %83 = add nsw i32 %82, 1, !dbg !731
  store i32 %83, ptr %10, align 4, !dbg !731
  br label %62, !dbg !732, !llvm.loop !733

84:                                               ; preds = %62
  br label %85

85:                                               ; preds = %84, %56
  %86 = load i8, ptr @have_read_stdin, align 1, !dbg !735
  %87 = trunc i8 %86 to i1, !dbg !735
  br i1 %87, label %88, label %95, !dbg !737

88:                                               ; preds = %85
  %89 = load ptr, ptr @stdin, align 8, !dbg !738
  %90 = call i32 @rpl_fclose(ptr noundef %89), !dbg !739
  %91 = icmp eq i32 %90, -1, !dbg !740
  br i1 %91, label %92, label %95, !dbg !737

92:                                               ; preds = %88
  %93 = call ptr @__errno_location() #12, !dbg !741
  %94 = load i32, ptr %93, align 4, !dbg !741
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %94, ptr noundef @.str.16), !dbg !742
  unreachable, !dbg !742

95:                                               ; preds = %88, %85
  %96 = load i8, ptr %8, align 1, !dbg !743
  %97 = trunc i8 %96 to i1, !dbg !743
  %98 = zext i1 %97 to i64, !dbg !743
  %99 = select i1 %97, i32 0, i32 1, !dbg !743
  ret i32 %99, !dbg !744
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

declare i64 @xnumtoumax(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare ptr @proper_name_lite(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @fold_file(ptr noundef %0, i64 noundef %1) #3 !dbg !310 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mbbuf_t, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mcel_t, align 4
  %12 = alloca %struct.mcel_t, align 4
  %13 = alloca %struct.mcel_t, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca %struct.mcel_t, align 4
  %19 = alloca %struct.mcel_t, align 4
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca %struct.mcel_t, align 4
  %23 = alloca %struct.mcel_t, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !745, !DIExpression(), !746)
  store i64 %1, ptr %5, align 8
    #dbg_declare(ptr %5, !747, !DIExpression(), !748)
    #dbg_declare(ptr %6, !749, !DIExpression(), !802)
    #dbg_declare(ptr %7, !803, !DIExpression(), !804)
  store i64 0, ptr %7, align 8, !dbg !804
    #dbg_declare(ptr %8, !805, !DIExpression(), !808)
  store i64 0, ptr %8, align 8, !dbg !808
    #dbg_declare(ptr %9, !809, !DIExpression(), !820)
    #dbg_declare(ptr %10, !821, !DIExpression(), !822)
  %24 = load ptr, ptr %4, align 8, !dbg !823
  %25 = call zeroext i1 @streq(ptr noundef %24, ptr noundef @.str.16), !dbg !825
  br i1 %25, label %26, label %28, !dbg !825

26:                                               ; preds = %2
  %27 = load ptr, ptr @stdin, align 8, !dbg !826
  store ptr %27, ptr %6, align 8, !dbg !828
  store i8 1, ptr @have_read_stdin, align 1, !dbg !829
  br label %31, !dbg !830

28:                                               ; preds = %2
  %29 = load ptr, ptr %4, align 8, !dbg !831
  %30 = call noalias ptr @rpl_fopen(ptr noundef %29, ptr noundef @.str.59), !dbg !832
  store ptr %30, ptr %6, align 8, !dbg !833
  br label %31

31:                                               ; preds = %28, %26
  %32 = load ptr, ptr %6, align 8, !dbg !834
  %33 = icmp eq ptr %32, null, !dbg !836
  br i1 %33, label %34, label %39, !dbg !836

34:                                               ; preds = %31
  %35 = call ptr @__errno_location() #12, !dbg !837
  %36 = load i32, ptr %35, align 4, !dbg !837
  %37 = load ptr, ptr %4, align 8, !dbg !839
  %38 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %37), !dbg !840
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %36, ptr noundef @.str.60, ptr noundef %38), !dbg !841
  store i1 false, ptr %3, align 1, !dbg !842
  br label %209, !dbg !842

39:                                               ; preds = %31
  %40 = load ptr, ptr %6, align 8, !dbg !843
  call void @fadvise(ptr noundef %40, i32 noundef 2), !dbg !844
  %41 = load ptr, ptr %6, align 8, !dbg !845
  call void @mbbuf_init(ptr noundef %9, ptr noundef @fold_file.line_in, i64 noundef 262144, ptr noundef %41), !dbg !846
    #dbg_declare(ptr %11, !847, !DIExpression(), !859)
  br label %42, !dbg !860

42:                                               ; preds = %160, %138, %51, %39
  %43 = call i64 @mbbuf_get_char(ptr noundef %9), !dbg !861
  store i64 %43, ptr %13, align 4, !dbg !861
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %11, ptr align 4 %13, i64 8, i1 false), !dbg !861
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %12, ptr align 4 %11, i64 8, i1 false), !dbg !862
  %44 = getelementptr inbounds nuw %struct.mcel_t, ptr %12, i32 0, i32 0, !dbg !863
  %45 = load i32, ptr %44, align 4, !dbg !863
  %46 = icmp ne i32 %45, 1114112, !dbg !864
  br i1 %46, label %47, label %173, !dbg !860

47:                                               ; preds = %42
  %48 = getelementptr inbounds nuw %struct.mcel_t, ptr %11, i32 0, i32 0, !dbg !865
  %49 = load i32, ptr %48, align 4, !dbg !865
  %50 = icmp eq i32 %49, 10, !dbg !868
  br i1 %50, label %51, label %53, !dbg !868

51:                                               ; preds = %47
  %52 = load i64, ptr %8, align 8, !dbg !869
  call void @write_out(ptr noundef @fold_file.line_out, i64 noundef %52, i1 noundef zeroext true), !dbg !871
  store i64 0, ptr %8, align 8, !dbg !872
  store i64 0, ptr %7, align 8, !dbg !873
  br label %42, !dbg !874, !llvm.loop !875

53:                                               ; preds = %47
  br label %54, !dbg !877

54:                                               ; preds = %149, %133, %53
    #dbg_label(!878, !879)
  %55 = load i64, ptr %7, align 8, !dbg !880
  %56 = load i64, ptr %11, align 4, !dbg !881
  %57 = call i64 @adjust_column(i64 noundef %55, i64 %56), !dbg !881
  store i64 %57, ptr %7, align 8, !dbg !882
  %58 = load i64, ptr %7, align 8, !dbg !883
  %59 = load i64, ptr %5, align 8, !dbg !885
  %60 = icmp ugt i64 %58, %59, !dbg !886
  br i1 %60, label %61, label %151, !dbg !886

61:                                               ; preds = %54
  %62 = load i8, ptr @break_spaces, align 1, !dbg !887
  %63 = trunc i8 %62 to i1, !dbg !887
  br i1 %63, label %64, label %135, !dbg !887

64:                                               ; preds = %61
    #dbg_declare(ptr %14, !890, !DIExpression(), !892)
  store i32 0, ptr %14, align 4, !dbg !892
    #dbg_declare(ptr %15, !893, !DIExpression(), !894)
  %65 = load i64, ptr %8, align 8, !dbg !895
  store i64 %65, ptr %15, align 8, !dbg !894
    #dbg_declare(ptr %16, !896, !DIExpression(), !897)
  store ptr @fold_file.line_out, ptr %16, align 8, !dbg !897
    #dbg_declare(ptr %17, !898, !DIExpression(), !899)
  %66 = load ptr, ptr %16, align 8, !dbg !900
  %67 = load i64, ptr %15, align 8, !dbg !901
  %68 = getelementptr inbounds i8, ptr %66, i64 %67, !dbg !902
  store ptr %68, ptr %17, align 8, !dbg !899
    #dbg_declare(ptr %18, !903, !DIExpression(), !905)
  br label %69, !dbg !906

69:                                               ; preds = %88, %64
  %70 = load ptr, ptr %16, align 8, !dbg !907
  %71 = load ptr, ptr %17, align 8, !dbg !909
  %72 = icmp ult ptr %70, %71, !dbg !910
  br i1 %72, label %73, label %95, !dbg !911

73:                                               ; preds = %69
  %74 = load ptr, ptr %16, align 8, !dbg !912
  %75 = load ptr, ptr %17, align 8, !dbg !914
  %76 = call i64 @mcel_scan(ptr noundef %74, ptr noundef %75), !dbg !915
  store i64 %76, ptr %19, align 4, !dbg !915
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %18, ptr align 4 %19, i64 8, i1 false), !dbg !915
  %77 = getelementptr inbounds nuw %struct.mcel_t, ptr %18, i32 0, i32 0, !dbg !916
  %78 = load i32, ptr %77, align 4, !dbg !916
  %79 = call zeroext i1 @c32issep(i32 noundef %78) #11, !dbg !918
  br i1 %79, label %80, label %87, !dbg !918

80:                                               ; preds = %73
  %81 = getelementptr inbounds nuw %struct.mcel_t, ptr %18, i32 0, i32 2, !dbg !919
  %82 = load i8, ptr %81, align 1, !dbg !919
  %83 = zext i8 %82 to i32, !dbg !921
  store i32 %83, ptr %14, align 4, !dbg !922
  %84 = load ptr, ptr %16, align 8, !dbg !923
  %85 = ptrtoint ptr %84 to i64, !dbg !924
  %86 = sub i64 %85, ptrtoint (ptr @fold_file.line_out to i64), !dbg !924
  store i64 %86, ptr %15, align 8, !dbg !925
  br label %87, !dbg !926

87:                                               ; preds = %80, %73
  br label %88, !dbg !927

88:                                               ; preds = %87
  %89 = getelementptr inbounds nuw %struct.mcel_t, ptr %18, i32 0, i32 2, !dbg !928
  %90 = load i8, ptr %89, align 1, !dbg !928
  %91 = zext i8 %90 to i32, !dbg !929
  %92 = load ptr, ptr %16, align 8, !dbg !930
  %93 = sext i32 %91 to i64, !dbg !930
  %94 = getelementptr inbounds i8, ptr %92, i64 %93, !dbg !930
  store ptr %94, ptr %16, align 8, !dbg !930
  br label %69, !dbg !931, !llvm.loop !932

95:                                               ; preds = %69
  %96 = load i32, ptr %14, align 4, !dbg !934
  %97 = icmp ne i32 %96, 0, !dbg !934
  br i1 %97, label %98, label %134, !dbg !934

98:                                               ; preds = %95
  %99 = load i32, ptr %14, align 4, !dbg !936
  %100 = sext i32 %99 to i64, !dbg !936
  %101 = load i64, ptr %15, align 8, !dbg !938
  %102 = add nsw i64 %101, %100, !dbg !938
  store i64 %102, ptr %15, align 8, !dbg !938
  %103 = load i64, ptr %15, align 8, !dbg !939
  call void @write_out(ptr noundef @fold_file.line_out, i64 noundef %103, i1 noundef zeroext true), !dbg !940
  %104 = load i64, ptr %15, align 8, !dbg !941
  %105 = getelementptr inbounds i8, ptr @fold_file.line_out, i64 %104, !dbg !942
  %106 = load i64, ptr %8, align 8, !dbg !943
  %107 = load i64, ptr %15, align 8, !dbg !944
  %108 = sub nsw i64 %106, %107, !dbg !945
  call void @llvm.memmove.p0.p0.i64(ptr align 16 @fold_file.line_out, ptr align 1 %105, i64 %108, i1 false), !dbg !942
  %109 = load i64, ptr %15, align 8, !dbg !946
  %110 = load i64, ptr %8, align 8, !dbg !947
  %111 = sub nsw i64 %110, %109, !dbg !947
  store i64 %111, ptr %8, align 8, !dbg !947
  store i64 0, ptr %7, align 8, !dbg !948
    #dbg_declare(ptr %20, !949, !DIExpression(), !950)
  store ptr @fold_file.line_out, ptr %20, align 8, !dbg !950
    #dbg_declare(ptr %21, !951, !DIExpression(), !952)
  %112 = load ptr, ptr %20, align 8, !dbg !953
  %113 = load i64, ptr %8, align 8, !dbg !954
  %114 = getelementptr inbounds i8, ptr %112, i64 %113, !dbg !955
  store ptr %114, ptr %21, align 8, !dbg !952
    #dbg_declare(ptr %22, !956, !DIExpression(), !958)
  br label %115, !dbg !959

115:                                              ; preds = %126, %98
  %116 = load ptr, ptr %20, align 8, !dbg !960
  %117 = load ptr, ptr %21, align 8, !dbg !962
  %118 = icmp ult ptr %116, %117, !dbg !963
  br i1 %118, label %119, label %133, !dbg !964

119:                                              ; preds = %115
  %120 = load ptr, ptr %20, align 8, !dbg !965
  %121 = load ptr, ptr %21, align 8, !dbg !967
  %122 = call i64 @mcel_scan(ptr noundef %120, ptr noundef %121), !dbg !968
  store i64 %122, ptr %23, align 4, !dbg !968
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %22, ptr align 4 %23, i64 8, i1 false), !dbg !968
  %123 = load i64, ptr %7, align 8, !dbg !969
  %124 = load i64, ptr %22, align 4, !dbg !970
  %125 = call i64 @adjust_column(i64 noundef %123, i64 %124), !dbg !970
  store i64 %125, ptr %7, align 8, !dbg !971
  br label %126, !dbg !972

126:                                              ; preds = %119
  %127 = getelementptr inbounds nuw %struct.mcel_t, ptr %22, i32 0, i32 2, !dbg !973
  %128 = load i8, ptr %127, align 1, !dbg !973
  %129 = zext i8 %128 to i32, !dbg !974
  %130 = load ptr, ptr %20, align 8, !dbg !975
  %131 = sext i32 %129 to i64, !dbg !975
  %132 = getelementptr inbounds i8, ptr %130, i64 %131, !dbg !975
  store ptr %132, ptr %20, align 8, !dbg !975
  br label %115, !dbg !976, !llvm.loop !977

133:                                              ; preds = %115
  br label %54, !dbg !979

134:                                              ; preds = %95
  br label %135, !dbg !980

135:                                              ; preds = %134, %61
  %136 = load i64, ptr %8, align 8, !dbg !981
  %137 = icmp eq i64 %136, 0, !dbg !983
  br i1 %137, label %138, label %149, !dbg !983

138:                                              ; preds = %135
  %139 = load i64, ptr %11, align 4, !dbg !984
  %140 = call ptr @mbbuf_char_offset(ptr noundef %9, i64 %139), !dbg !984
  %141 = getelementptr inbounds nuw %struct.mcel_t, ptr %11, i32 0, i32 2, !dbg !986
  %142 = load i8, ptr %141, align 1, !dbg !986
  %143 = zext i8 %142 to i64, !dbg !987
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 @fold_file.line_out, ptr align 1 %140, i64 %143, i1 false), !dbg !988
  %144 = getelementptr inbounds nuw %struct.mcel_t, ptr %11, i32 0, i32 2, !dbg !989
  %145 = load i8, ptr %144, align 1, !dbg !989
  %146 = zext i8 %145 to i64, !dbg !990
  %147 = load i64, ptr %8, align 8, !dbg !991
  %148 = add nsw i64 %147, %146, !dbg !991
  store i64 %148, ptr %8, align 8, !dbg !991
  br label %42, !dbg !992, !llvm.loop !875

149:                                              ; preds = %135
  %150 = load i64, ptr %8, align 8, !dbg !993
  call void @write_out(ptr noundef @fold_file.line_out, i64 noundef %150, i1 noundef zeroext true), !dbg !994
  store i64 0, ptr %8, align 8, !dbg !995
  store i64 0, ptr %7, align 8, !dbg !996
  br label %54, !dbg !997

151:                                              ; preds = %54
  %152 = load i64, ptr %8, align 8, !dbg !998
  %153 = getelementptr inbounds nuw %struct.mcel_t, ptr %11, i32 0, i32 2, !dbg !1000
  %154 = load i8, ptr %153, align 1, !dbg !1000
  %155 = zext i8 %154 to i64, !dbg !1001
  %156 = add nsw i64 %152, %155, !dbg !1002
  %157 = icmp ule i64 262144, %156, !dbg !1003
  br i1 %157, label %158, label %160, !dbg !1003

158:                                              ; preds = %151
  %159 = load i64, ptr %8, align 8, !dbg !1004
  call void @write_out(ptr noundef @fold_file.line_out, i64 noundef %159, i1 noundef zeroext false), !dbg !1006
  store i64 0, ptr %8, align 8, !dbg !1007
  br label %160, !dbg !1008

160:                                              ; preds = %158, %151
  %161 = load i64, ptr %8, align 8, !dbg !1009
  %162 = getelementptr inbounds i8, ptr @fold_file.line_out, i64 %161, !dbg !1010
  %163 = load i64, ptr %11, align 4, !dbg !1011
  %164 = call ptr @mbbuf_char_offset(ptr noundef %9, i64 %163), !dbg !1011
  %165 = getelementptr inbounds nuw %struct.mcel_t, ptr %11, i32 0, i32 2, !dbg !1012
  %166 = load i8, ptr %165, align 1, !dbg !1012
  %167 = zext i8 %166 to i64, !dbg !1013
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %162, ptr align 1 %164, i64 %167, i1 false), !dbg !1010
  %168 = getelementptr inbounds nuw %struct.mcel_t, ptr %11, i32 0, i32 2, !dbg !1014
  %169 = load i8, ptr %168, align 1, !dbg !1014
  %170 = zext i8 %169 to i64, !dbg !1015
  %171 = load i64, ptr %8, align 8, !dbg !1016
  %172 = add nsw i64 %171, %170, !dbg !1016
  store i64 %172, ptr %8, align 8, !dbg !1016
  br label %42, !dbg !860, !llvm.loop !875

173:                                              ; preds = %42
  %174 = call ptr @__errno_location() #12, !dbg !1017
  %175 = load i32, ptr %174, align 4, !dbg !1017
  store i32 %175, ptr %10, align 4, !dbg !1018
  %176 = load ptr, ptr %6, align 8, !dbg !1019
  %177 = call i32 @ferror_unlocked(ptr noundef %176) #9, !dbg !1021
  %178 = icmp ne i32 %177, 0, !dbg !1021
  br i1 %178, label %180, label %179, !dbg !1022

179:                                              ; preds = %173
  store i32 0, ptr %10, align 4, !dbg !1023
  br label %180, !dbg !1024

180:                                              ; preds = %179, %173
  %181 = load i64, ptr %8, align 8, !dbg !1025
  %182 = icmp ne i64 %181, 0, !dbg !1025
  br i1 %182, label %183, label %185, !dbg !1025

183:                                              ; preds = %180
  %184 = load i64, ptr %8, align 8, !dbg !1027
  call void @write_out(ptr noundef @fold_file.line_out, i64 noundef %184, i1 noundef zeroext false), !dbg !1028
  br label %185, !dbg !1028

185:                                              ; preds = %183, %180
  %186 = load ptr, ptr %4, align 8, !dbg !1029
  %187 = call zeroext i1 @streq(ptr noundef %186, ptr noundef @.str.16), !dbg !1031
  br i1 %187, label %188, label %190, !dbg !1031

188:                                              ; preds = %185
  %189 = load ptr, ptr %6, align 8, !dbg !1032
  call void @clearerr_unlocked(ptr noundef %189) #9, !dbg !1033
  br label %201, !dbg !1033

190:                                              ; preds = %185
  %191 = load ptr, ptr %6, align 8, !dbg !1034
  %192 = call i32 @rpl_fclose(ptr noundef %191), !dbg !1036
  %193 = icmp ne i32 %192, 0, !dbg !1037
  br i1 %193, label %194, label %200, !dbg !1038

194:                                              ; preds = %190
  %195 = load i32, ptr %10, align 4, !dbg !1039
  %196 = icmp ne i32 %195, 0, !dbg !1039
  br i1 %196, label %200, label %197, !dbg !1038

197:                                              ; preds = %194
  %198 = call ptr @__errno_location() #12, !dbg !1040
  %199 = load i32, ptr %198, align 4, !dbg !1040
  store i32 %199, ptr %10, align 4, !dbg !1041
  br label %200, !dbg !1042

200:                                              ; preds = %197, %194, %190
  br label %201

201:                                              ; preds = %200, %188
  %202 = load i32, ptr %10, align 4, !dbg !1043
  %203 = icmp ne i32 %202, 0, !dbg !1043
  br i1 %203, label %204, label %208, !dbg !1043

204:                                              ; preds = %201
  %205 = load i32, ptr %10, align 4, !dbg !1045
  %206 = load ptr, ptr %4, align 8, !dbg !1047
  %207 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %206), !dbg !1048
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %205, ptr noundef @.str.60, ptr noundef %207), !dbg !1049
  store i1 false, ptr %3, align 1, !dbg !1050
  br label %209, !dbg !1050

208:                                              ; preds = %201
  store i1 true, ptr %3, align 1, !dbg !1051
  br label %209, !dbg !1051

209:                                              ; preds = %208, %204, %34
  %210 = load i1, ptr %3, align 1, !dbg !1052
  ret i1 %210, !dbg !1052
}

declare i32 @rpl_fclose(ptr noundef) #2

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

declare noalias ptr @rpl_fopen(ptr noundef, ptr noundef) #2

declare ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) #2

declare void @fadvise(ptr noundef, i32 noundef) #2

declare void @mbbuf_init(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i64 @mbbuf_get_char(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_out(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) #3 !dbg !1053 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1056, !DIExpression(), !1057)
  store i64 %1, ptr %5, align 8
    #dbg_declare(ptr %5, !1058, !DIExpression(), !1059)
  %7 = zext i1 %2 to i8
  store i8 %7, ptr %6, align 1
    #dbg_declare(ptr %6, !1060, !DIExpression(), !1061)
  %8 = load ptr, ptr %4, align 8, !dbg !1062
  %9 = load i64, ptr %5, align 8, !dbg !1064
  %10 = load ptr, ptr @stdout, align 8, !dbg !1065
  %11 = call i64 @fwrite_unlocked(ptr noundef %8, i64 noundef 1, i64 noundef %9, ptr noundef %10), !dbg !1066
  %12 = load i64, ptr %5, align 8, !dbg !1067
  %13 = icmp ne i64 %11, %12, !dbg !1068
  br i1 %13, label %20, label %14, !dbg !1069

14:                                               ; preds = %3
  %15 = load i8, ptr %6, align 1, !dbg !1070
  %16 = trunc i8 %15 to i1, !dbg !1070
  br i1 %16, label %17, label %21, !dbg !1071

17:                                               ; preds = %14
  %18 = call i32 @putchar_unlocked(i32 noundef 10), !dbg !1072
  %19 = icmp slt i32 %18, 0, !dbg !1073
  br i1 %19, label %20, label %21, !dbg !1069

20:                                               ; preds = %17, %3
  call void @write_error(), !dbg !1074
  br label %21, !dbg !1074

21:                                               ; preds = %20, %17, %14
  ret void, !dbg !1075
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adjust_column(i64 noundef %0, i64 %1) #3 !dbg !1076 {
  %3 = alloca %struct.mcel_t, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %1, ptr %3, align 4
  store i64 %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1079, !DIExpression(), !1080)
    #dbg_declare(ptr %3, !1081, !DIExpression(), !1082)
  %6 = load i32, ptr @counting_mode, align 4, !dbg !1083
  %7 = icmp ne i32 %6, 1, !dbg !1085
  br i1 %7, label %8, label %59, !dbg !1085

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw %struct.mcel_t, ptr %3, i32 0, i32 0, !dbg !1086
  %10 = load i32, ptr %9, align 4, !dbg !1086
  %11 = icmp eq i32 %10, 8, !dbg !1089
  br i1 %11, label %12, label %21, !dbg !1089

12:                                               ; preds = %8
  %13 = load i64, ptr %4, align 8, !dbg !1090
  %14 = icmp ugt i64 %13, 0, !dbg !1093
  br i1 %14, label %15, label %20, !dbg !1093

15:                                               ; preds = %12
  %16 = load i32, ptr @last_character_width, align 4, !dbg !1094
  %17 = sext i32 %16 to i64, !dbg !1094
  %18 = load i64, ptr %4, align 8, !dbg !1095
  %19 = sub i64 %18, %17, !dbg !1095
  store i64 %19, ptr %4, align 8, !dbg !1095
  br label %20, !dbg !1096

20:                                               ; preds = %15, %12
  br label %58, !dbg !1097

21:                                               ; preds = %8
  %22 = getelementptr inbounds nuw %struct.mcel_t, ptr %3, i32 0, i32 0, !dbg !1098
  %23 = load i32, ptr %22, align 4, !dbg !1098
  %24 = icmp eq i32 %23, 13, !dbg !1100
  br i1 %24, label %25, label %26, !dbg !1100

25:                                               ; preds = %21
  store i64 0, ptr %4, align 8, !dbg !1101
  br label %57, !dbg !1102

26:                                               ; preds = %21
  %27 = getelementptr inbounds nuw %struct.mcel_t, ptr %3, i32 0, i32 0, !dbg !1103
  %28 = load i32, ptr %27, align 4, !dbg !1103
  %29 = icmp eq i32 %28, 9, !dbg !1105
  br i1 %29, label %30, label %36, !dbg !1105

30:                                               ; preds = %26
  %31 = load i64, ptr %4, align 8, !dbg !1106
  %32 = urem i64 %31, 8, !dbg !1107
  %33 = sub i64 8, %32, !dbg !1108
  %34 = load i64, ptr %4, align 8, !dbg !1109
  %35 = add i64 %34, %33, !dbg !1109
  store i64 %35, ptr %4, align 8, !dbg !1109
  br label %56, !dbg !1110

36:                                               ; preds = %26
  %37 = load i32, ptr @counting_mode, align 4, !dbg !1111
  %38 = icmp eq i32 %37, 2, !dbg !1114
  br i1 %38, label %39, label %40, !dbg !1114

39:                                               ; preds = %36
  store i32 1, ptr @last_character_width, align 4, !dbg !1115
  br label %51, !dbg !1116

40:                                               ; preds = %36
    #dbg_declare(ptr %5, !1117, !DIExpression(), !1119)
  %41 = getelementptr inbounds nuw %struct.mcel_t, ptr %3, i32 0, i32 0, !dbg !1120
  %42 = load i32, ptr %41, align 4, !dbg !1120
  %43 = call i32 @c32width(i32 noundef %42), !dbg !1121
  store i32 %43, ptr %5, align 4, !dbg !1119
  %44 = load i32, ptr %5, align 4, !dbg !1122
  %45 = icmp slt i32 %44, 0, !dbg !1123
  br i1 %45, label %46, label %47, !dbg !1122

46:                                               ; preds = %40
  br label %49, !dbg !1122

47:                                               ; preds = %40
  %48 = load i32, ptr %5, align 4, !dbg !1124
  br label %49, !dbg !1122

49:                                               ; preds = %47, %46
  %50 = phi i32 [ 1, %46 ], [ %48, %47 ], !dbg !1122
  store i32 %50, ptr @last_character_width, align 4, !dbg !1125
  br label %51

51:                                               ; preds = %49, %39
  %52 = load i32, ptr @last_character_width, align 4, !dbg !1126
  %53 = sext i32 %52 to i64, !dbg !1126
  %54 = load i64, ptr %4, align 8, !dbg !1127
  %55 = add i64 %54, %53, !dbg !1127
  store i64 %55, ptr %4, align 8, !dbg !1127
  br label %56

56:                                               ; preds = %51, %30
  br label %57

57:                                               ; preds = %56, %25
  br label %58

58:                                               ; preds = %57, %20
  br label %65, !dbg !1128

59:                                               ; preds = %2
  %60 = getelementptr inbounds nuw %struct.mcel_t, ptr %3, i32 0, i32 2, !dbg !1129
  %61 = load i8, ptr %60, align 1, !dbg !1129
  %62 = zext i8 %61 to i64, !dbg !1130
  %63 = load i64, ptr %4, align 8, !dbg !1131
  %64 = add i64 %63, %62, !dbg !1131
  store i64 %64, ptr %4, align 8, !dbg !1131
  br label %65

65:                                               ; preds = %59, %58
  %66 = load i64, ptr %4, align 8, !dbg !1132
  ret i64 %66, !dbg !1133
}

declare i64 @mcel_scan(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone willreturn memory(read) uwtable
define internal zeroext i1 @c32issep(i32 noundef %0) #8 !dbg !1134 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !1137, !DIExpression(), !1138)
  %3 = load i32, ptr %2, align 4, !dbg !1139
  %4 = call i32 @c32isblank(i32 noundef %3), !dbg !1140
  %5 = icmp ne i32 %4, 0, !dbg !1141
  %6 = xor i1 %5, true, !dbg !1141
  %7 = xor i1 %6, true, !dbg !1142
  ret i1 %7, !dbg !1143
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

declare ptr @mbbuf_char_offset(ptr noundef, i64) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(ptr noundef) #1

; Function Attrs: nounwind
declare void @clearerr_unlocked(ptr noundef) #1

declare i32 @putchar_unlocked(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_error() #3 !dbg !1144 {
  %1 = alloca i32, align 4
    #dbg_declare(ptr %1, !1145, !DIExpression(), !1146)
  %2 = call ptr @__errno_location() #12, !dbg !1147
  %3 = load i32, ptr %2, align 4, !dbg !1147
  store i32 %3, ptr %1, align 4, !dbg !1146
  %4 = load ptr, ptr @stdout, align 8, !dbg !1148
  %5 = call i32 @fflush_unlocked(ptr noundef %4), !dbg !1149
  %6 = load ptr, ptr @stdout, align 8, !dbg !1150
  %7 = call i32 @fpurge(ptr noundef %6), !dbg !1151
  %8 = load ptr, ptr @stdout, align 8, !dbg !1152
  call void @clearerr_unlocked(ptr noundef %8) #9, !dbg !1153
  %9 = load i32, ptr %1, align 4, !dbg !1154
  %10 = call ptr @gettext(ptr noundef @.str.61) #9, !dbg !1155
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %9, ptr noundef %10), !dbg !1156
  unreachable, !dbg !1156
}

declare i32 @fflush_unlocked(ptr noundef) #2

declare i32 @fpurge(ptr noundef) #2

declare i32 @c32width(i32 noundef) #2

declare i32 @c32isblank(i32 noundef) #2

attributes #0 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noinline nounwind optnone willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { noreturn }

!llvm.dbg.cu = !{!66}
!llvm.module.flags = !{!332, !333, !334, !335, !336, !337, !338}
!llvm.ident = !{!339}

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
!65 = distinct !DIGlobalVariable(name: "shortopts", scope: !66, file: !2, line: 56, type: !329, isLocal: true, isDefinition: true)
!66 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, retainedTypes: !129, globals: !133, splitDebugInlining: false, nameTableKind: None)
!67 = !{!68, !74, !81, !87, !102, !116, !125}
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
!129 = !{!130, !131, !83, !132}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!132 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!133 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !49, !54, !59, !134, !139, !144, !149, !154, !157, !159, !161, !166, !174, !176, !178, !183, !188, !190, !192, !194, !199, !201, !203, !205, !210, !215, !217, !219, !221, !223, !225, !227, !232, !237, !242, !247, !249, !251, !253, !255, !257, !262, !264, !269, !274, !64, !279, !281, !286, !288, !290, !292, !294, !306, !308, !319, !321, !323, !325, !327}
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !2, line: 334, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 26)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !2, line: 340, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 14)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 340, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 16)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !2, line: 348, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 2)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "break_spaces", scope: !66, file: !2, line: 40, type: !156, isLocal: true, isDefinition: true)
!156 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !66, file: !2, line: 51, type: !156, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !82, line: 748, type: !24, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !82, line: 755, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 75)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !168, file: !82, line: 594, type: !83, isLocal: true, isDefinition: true)
!168 = distinct !DISubprogram(name: "oputs_", scope: !82, file: !82, line: 592, type: !169, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !173)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !171, !171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!173 = !{}
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !82, line: 604, type: !19, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !82, line: 605, type: !19, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !82, line: 614, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 4)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !82, line: 639, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 6)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !82, line: 667, type: !151, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !82, line: 667, type: !19, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !82, line: 668, type: !180, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !82, line: 668, type: !196, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 3)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !82, line: 669, type: !19, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !82, line: 670, type: !185, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !82, line: 670, type: !185, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(scope: null, file: !82, line: 671, type: !207, isLocal: true, isDefinition: true)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 7)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !82, line: 672, type: !212, isLocal: true, isDefinition: true)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 8)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !82, line: 673, type: !56, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !82, line: 674, type: !56, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !82, line: 675, type: !56, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !82, line: 676, type: !56, isLocal: true, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !82, line: 682, type: !207, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !82, line: 683, type: !56, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !82, line: 688, type: !229, isLocal: true, isDefinition: true)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 17)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !82, line: 688, type: !234, isLocal: true, isDefinition: true)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 40)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !82, line: 695, type: !239, isLocal: true, isDefinition: true)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 15)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !82, line: 695, type: !244, isLocal: true, isDefinition: true)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 61)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !82, line: 698, type: !196, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !82, line: 702, type: !19, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !82, line: 707, type: !19, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !82, line: 710, type: !212, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !82, line: 858, type: !146, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !82, line: 859, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 22)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !82, line: 860, type: !239, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !82, line: 882, type: !266, isLocal: true, isDefinition: true)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 27)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !82, line: 884, type: !271, isLocal: true, isDefinition: true)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 51)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !82, line: 885, type: !276, isLocal: true, isDefinition: true)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 12)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !185, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !283, isLocal: true, isDefinition: true)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 11)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !207, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !185, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !19, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !212, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(name: "longopts", scope: !66, file: !2, line: 58, type: !296, isLocal: true, isDefinition: true)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 1792, elements: !208)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !299, line: 50, size: 256, elements: !300)
!299 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!300 = !{!301, !302, !303, !305}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !298, file: !299, line: 52, baseType: !171, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !298, file: !299, line: 55, baseType: !83, size: 32, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !298, file: !299, line: 56, baseType: !304, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !298, file: !299, line: 57, baseType: !83, size: 32, offset: 192)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(name: "counting_mode", scope: !66, file: !2, line: 48, type: !68, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(name: "line_out", scope: !310, file: !2, line: 164, type: !316, isLocal: true, isDefinition: true)
!310 = distinct !DISubprogram(name: "fold_file", scope: !2, file: !2, line: 159, type: !311, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !173)
!311 = !DISubroutineType(types: !312)
!312 = !{!156, !171, !313}
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !314, line: 18, baseType: !315)
!314 = !DIFile(filename: "/usr/lib/llvm-22/lib/clang/22/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!315 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2097152, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 262144)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "line_in", scope: !310, file: !2, line: 165, type: !316, isLocal: true, isDefinition: true)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !151, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !196, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !82, line: 959, type: !276, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(name: "last_character_width", scope: !66, file: !2, line: 54, type: !83, isLocal: true, isDefinition: true)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 288, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 36)
!332 = !{i32 7, !"Dwarf Version", i32 5}
!333 = !{i32 2, !"Debug Info Version", i32 3}
!334 = !{i32 1, !"wchar_size", i32 4}
!335 = !{i32 8, !"PIC Level", i32 2}
!336 = !{i32 7, !"PIE Level", i32 2}
!337 = !{i32 7, !"uwtable", i32 2}
!338 = !{i32 7, !"frame-pointer", i32 2}
!339 = !{!"Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)"}
!340 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 70, type: !341, scopeLine: 71, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !173)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !83}
!343 = !DILocalVariable(name: "status", arg: 1, scope: !340, file: !2, line: 70, type: !83)
!344 = !DILocation(line: 70, column: 12, scope: !340)
!345 = !DILocation(line: 72, column: 7, scope: !346)
!346 = distinct !DILexicalBlock(scope: !340, file: !2, line: 72, column: 7)
!347 = !DILocation(line: 72, column: 14, scope: !346)
!348 = !DILocation(line: 73, column: 5, scope: !346)
!349 = !DILocation(line: 73, column: 5, scope: !350)
!350 = distinct !DILexicalBlock(scope: !346, file: !2, line: 73, column: 5)
!351 = !DILocation(line: 76, column: 15, scope: !352)
!352 = distinct !DILexicalBlock(scope: !346, file: !2, line: 75, column: 5)
!353 = !DILocation(line: 79, column: 15, scope: !352)
!354 = !DILocation(line: 76, column: 7, scope: !352)
!355 = !DILocation(line: 80, column: 14, scope: !352)
!356 = !DILocation(line: 82, column: 5, scope: !352)
!357 = !DILocation(line: 80, column: 7, scope: !352)
!358 = !DILocation(line: 84, column: 7, scope: !352)
!359 = !DILocation(line: 85, column: 7, scope: !352)
!360 = !DILocation(line: 87, column: 14, scope: !352)
!361 = !DILocation(line: 87, column: 7, scope: !352)
!362 = !DILocation(line: 91, column: 14, scope: !352)
!363 = !DILocation(line: 91, column: 7, scope: !352)
!364 = !DILocation(line: 95, column: 14, scope: !352)
!365 = !DILocation(line: 95, column: 7, scope: !352)
!366 = !DILocation(line: 99, column: 14, scope: !352)
!367 = !DILocation(line: 99, column: 7, scope: !352)
!368 = !DILocation(line: 103, column: 14, scope: !352)
!369 = !DILocation(line: 103, column: 7, scope: !352)
!370 = !DILocation(line: 104, column: 14, scope: !352)
!371 = !DILocation(line: 104, column: 7, scope: !352)
!372 = !DILocation(line: 105, column: 7, scope: !352)
!373 = !DILocation(line: 107, column: 9, scope: !340)
!374 = !DILocation(line: 107, column: 3, scope: !340)
!375 = distinct !DISubprogram(name: "emit_stdin_note", scope: !82, file: !82, line: 746, type: !376, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66)
!376 = !DISubroutineType(types: !377)
!377 = !{null}
!378 = !DILocation(line: 748, column: 10, scope: !375)
!379 = !DILocation(line: 750, column: 5, scope: !375)
!380 = !DILocation(line: 748, column: 3, scope: !375)
!381 = !DILocation(line: 751, column: 1, scope: !375)
!382 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !82, file: !82, line: 753, type: !376, scopeLine: 754, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66)
!383 = !DILocation(line: 755, column: 10, scope: !382)
!384 = !DILocation(line: 757, column: 5, scope: !382)
!385 = !DILocation(line: 755, column: 3, scope: !382)
!386 = !DILocation(line: 758, column: 1, scope: !382)
!387 = !DILocalVariable(name: "program", arg: 1, scope: !168, file: !82, line: 592, type: !171)
!388 = !DILocation(line: 592, column: 34, scope: !168)
!389 = !DILocalVariable(name: "option", arg: 2, scope: !168, file: !82, line: 592, type: !171)
!390 = !DILocation(line: 592, column: 55, scope: !168)
!391 = !DILocation(line: 600, column: 7, scope: !392)
!392 = distinct !DILexicalBlock(scope: !168, file: !82, line: 600, column: 7)
!393 = !DILocation(line: 600, column: 19, scope: !392)
!394 = !DILocalVariable(name: "term", scope: !395, file: !82, line: 604, type: !171)
!395 = distinct !DILexicalBlock(scope: !392, file: !82, line: 601, column: 5)
!396 = !DILocation(line: 604, column: 19, scope: !395)
!397 = !DILocation(line: 604, column: 26, scope: !395)
!398 = !DILocation(line: 605, column: 23, scope: !395)
!399 = !DILocation(line: 605, column: 28, scope: !395)
!400 = !DILocation(line: 605, column: 33, scope: !395)
!401 = !DILocation(line: 605, column: 32, scope: !395)
!402 = !DILocation(line: 605, column: 38, scope: !395)
!403 = !DILocation(line: 605, column: 48, scope: !395)
!404 = !DILocation(line: 605, column: 41, scope: !395)
!405 = !DILocation(line: 605, column: 19, scope: !395)
!406 = !DILocation(line: 606, column: 5, scope: !395)
!407 = !DILocation(line: 607, column: 7, scope: !408)
!408 = distinct !DILexicalBlock(scope: !168, file: !82, line: 607, column: 7)
!409 = !DILocation(line: 609, column: 14, scope: !410)
!410 = distinct !DILexicalBlock(scope: !408, file: !82, line: 608, column: 5)
!411 = !DILocation(line: 609, column: 22, scope: !410)
!412 = !DILocation(line: 609, column: 7, scope: !410)
!413 = !DILocation(line: 610, column: 7, scope: !410)
!414 = !DILocalVariable(name: "double_space", scope: !168, file: !82, line: 613, type: !156)
!415 = !DILocation(line: 613, column: 8, scope: !168)
!416 = !DILocalVariable(name: "first_word", scope: !168, file: !82, line: 614, type: !171)
!417 = !DILocation(line: 614, column: 15, scope: !168)
!418 = !DILocation(line: 614, column: 28, scope: !168)
!419 = !DILocation(line: 614, column: 45, scope: !168)
!420 = !DILocation(line: 614, column: 37, scope: !168)
!421 = !DILocation(line: 614, column: 35, scope: !168)
!422 = !DILocalVariable(name: "option_text", scope: !168, file: !82, line: 615, type: !171)
!423 = !DILocation(line: 615, column: 15, scope: !168)
!424 = !DILocation(line: 615, column: 37, scope: !168)
!425 = !DILocation(line: 615, column: 29, scope: !168)
!426 = !DILocation(line: 616, column: 8, scope: !427)
!427 = distinct !DILexicalBlock(scope: !168, file: !82, line: 616, column: 7)
!428 = !DILocation(line: 616, column: 7, scope: !427)
!429 = !DILocation(line: 618, column: 21, scope: !430)
!430 = distinct !DILexicalBlock(scope: !427, file: !82, line: 617, column: 5)
!431 = !DILocation(line: 618, column: 19, scope: !430)
!432 = !DILocation(line: 621, column: 20, scope: !430)
!433 = !DILocation(line: 622, column: 5, scope: !430)
!434 = !DILocation(line: 623, column: 12, scope: !435)
!435 = distinct !DILexicalBlock(scope: !427, file: !82, line: 623, column: 12)
!436 = !DILocation(line: 623, column: 27, scope: !435)
!437 = !DILocation(line: 623, column: 24, scope: !435)
!438 = !DILocalVariable(name: "s", scope: !439, file: !82, line: 627, type: !171)
!439 = distinct !DILexicalBlock(scope: !435, file: !82, line: 624, column: 5)
!440 = !DILocation(line: 627, column: 19, scope: !439)
!441 = !DILocation(line: 627, column: 23, scope: !439)
!442 = !DILocalVariable(name: "spaces", scope: !439, file: !82, line: 628, type: !313)
!443 = !DILocation(line: 628, column: 14, scope: !439)
!444 = !DILocation(line: 629, column: 7, scope: !439)
!445 = !DILocation(line: 629, column: 14, scope: !439)
!446 = !DILocation(line: 629, column: 18, scope: !439)
!447 = !DILocation(line: 629, column: 16, scope: !439)
!448 = !DILocation(line: 629, column: 30, scope: !439)
!449 = !DILocation(line: 629, column: 33, scope: !439)
!450 = !DILocation(line: 629, column: 40, scope: !439)
!451 = !DILocation(line: 0, scope: !439)
!452 = !DILocation(line: 630, column: 21, scope: !439)
!453 = !DILocation(line: 630, column: 32, scope: !439)
!454 = !DILocation(line: 630, column: 30, scope: !439)
!455 = !DILocation(line: 630, column: 20, scope: !439)
!456 = !DILocation(line: 630, column: 19, scope: !439)
!457 = !DILocation(line: 630, column: 16, scope: !439)
!458 = distinct !{!458, !444, !452, !459}
!459 = !{!"llvm.loop.mustprogress"}
!460 = !DILocation(line: 631, column: 11, scope: !461)
!461 = distinct !DILexicalBlock(scope: !439, file: !82, line: 631, column: 11)
!462 = !DILocation(line: 631, column: 18, scope: !461)
!463 = !DILocation(line: 634, column: 25, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !82, line: 632, column: 9)
!465 = !DILocation(line: 634, column: 23, scope: !464)
!466 = !DILocation(line: 635, column: 24, scope: !464)
!467 = !DILocation(line: 636, column: 9, scope: !464)
!468 = !DILocation(line: 637, column: 5, scope: !439)
!469 = !DILocalVariable(name: "anchor_len", scope: !168, file: !82, line: 639, type: !313)
!470 = !DILocation(line: 639, column: 10, scope: !168)
!471 = !DILocation(line: 639, column: 32, scope: !168)
!472 = !DILocation(line: 639, column: 23, scope: !168)
!473 = !DILocalVariable(name: "desc_text", scope: !168, file: !82, line: 644, type: !171)
!474 = !DILocation(line: 644, column: 15, scope: !168)
!475 = !DILocation(line: 644, column: 27, scope: !168)
!476 = !DILocation(line: 644, column: 41, scope: !168)
!477 = !DILocation(line: 644, column: 39, scope: !168)
!478 = !DILocation(line: 645, column: 3, scope: !168)
!479 = !DILocation(line: 645, column: 11, scope: !168)
!480 = !DILocation(line: 645, column: 10, scope: !168)
!481 = !DILocation(line: 645, column: 21, scope: !168)
!482 = !DILocation(line: 645, column: 25, scope: !168)
!483 = !DILocation(line: 645, column: 24, scope: !168)
!484 = !DILocation(line: 645, column: 35, scope: !168)
!485 = !DILocation(line: 0, scope: !168)
!486 = !DILocation(line: 647, column: 12, scope: !487)
!487 = distinct !DILexicalBlock(scope: !488, file: !82, line: 647, column: 11)
!488 = distinct !DILexicalBlock(scope: !168, file: !82, line: 646, column: 5)
!489 = !DILocation(line: 647, column: 11, scope: !487)
!490 = !DILocation(line: 647, column: 22, scope: !487)
!491 = !DILocation(line: 647, column: 29, scope: !487)
!492 = !DILocation(line: 647, column: 34, scope: !487)
!493 = !DILocation(line: 647, column: 32, scope: !487)
!494 = !DILocation(line: 647, column: 49, scope: !487)
!495 = !DILocation(line: 648, column: 22, scope: !487)
!496 = !DILocation(line: 648, column: 9, scope: !487)
!497 = !DILocation(line: 649, column: 11, scope: !498)
!498 = distinct !DILexicalBlock(scope: !488, file: !82, line: 649, column: 11)
!499 = !DILocation(line: 649, column: 21, scope: !498)
!500 = !DILocation(line: 649, column: 20, scope: !498)
!501 = !DILocation(line: 651, column: 16, scope: !502)
!502 = distinct !DILexicalBlock(scope: !503, file: !82, line: 651, column: 15)
!503 = distinct !DILexicalBlock(scope: !498, file: !82, line: 650, column: 9)
!504 = !DILocation(line: 651, column: 15, scope: !502)
!505 = !DILocation(line: 651, column: 26, scope: !502)
!506 = !DILocation(line: 651, column: 34, scope: !502)
!507 = !DILocation(line: 651, column: 37, scope: !502)
!508 = !DILocation(line: 651, column: 48, scope: !502)
!509 = !DILocation(line: 651, column: 46, scope: !502)
!510 = !DILocation(line: 652, column: 13, scope: !502)
!511 = !DILocation(line: 655, column: 16, scope: !512)
!512 = distinct !DILexicalBlock(scope: !503, file: !82, line: 655, column: 15)
!513 = !DILocation(line: 655, column: 29, scope: !512)
!514 = !DILocation(line: 655, column: 34, scope: !512)
!515 = !DILocation(line: 655, column: 32, scope: !512)
!516 = !DILocation(line: 655, column: 49, scope: !512)
!517 = !DILocation(line: 656, column: 13, scope: !512)
!518 = !DILocation(line: 657, column: 9, scope: !503)
!519 = !DILocation(line: 659, column: 16, scope: !488)
!520 = distinct !{!520, !478, !521, !459}
!521 = !DILocation(line: 660, column: 5, scope: !168)
!522 = !DILocation(line: 663, column: 11, scope: !168)
!523 = !DILocation(line: 663, column: 22, scope: !168)
!524 = !DILocation(line: 663, column: 35, scope: !168)
!525 = !DILocation(line: 663, column: 33, scope: !168)
!526 = !DILocation(line: 663, column: 43, scope: !168)
!527 = !DILocation(line: 663, column: 3, scope: !168)
!528 = !DILocalVariable(name: "url_program", scope: !168, file: !82, line: 667, type: !171)
!529 = !DILocation(line: 667, column: 15, scope: !168)
!530 = !DILocation(line: 667, column: 38, scope: !168)
!531 = !DILocation(line: 667, column: 31, scope: !168)
!532 = !DILocation(line: 668, column: 38, scope: !168)
!533 = !DILocation(line: 668, column: 31, scope: !168)
!534 = !DILocation(line: 669, column: 38, scope: !168)
!535 = !DILocation(line: 669, column: 31, scope: !168)
!536 = !DILocation(line: 670, column: 38, scope: !168)
!537 = !DILocation(line: 670, column: 31, scope: !168)
!538 = !DILocation(line: 671, column: 38, scope: !168)
!539 = !DILocation(line: 671, column: 31, scope: !168)
!540 = !DILocation(line: 672, column: 38, scope: !168)
!541 = !DILocation(line: 672, column: 31, scope: !168)
!542 = !DILocation(line: 673, column: 38, scope: !168)
!543 = !DILocation(line: 673, column: 31, scope: !168)
!544 = !DILocation(line: 674, column: 38, scope: !168)
!545 = !DILocation(line: 674, column: 31, scope: !168)
!546 = !DILocation(line: 675, column: 38, scope: !168)
!547 = !DILocation(line: 675, column: 31, scope: !168)
!548 = !DILocation(line: 676, column: 38, scope: !168)
!549 = !DILocation(line: 676, column: 31, scope: !168)
!550 = !DILocation(line: 677, column: 31, scope: !168)
!551 = !DILocation(line: 682, column: 18, scope: !552)
!552 = distinct !DILexicalBlock(scope: !168, file: !82, line: 682, column: 7)
!553 = !DILocation(line: 682, column: 7, scope: !552)
!554 = !DILocation(line: 683, column: 7, scope: !552)
!555 = !DILocation(line: 683, column: 21, scope: !552)
!556 = !DILocation(line: 683, column: 10, scope: !552)
!557 = !DILocation(line: 689, column: 15, scope: !558)
!558 = distinct !DILexicalBlock(scope: !552, file: !82, line: 684, column: 5)
!559 = !DILocation(line: 689, column: 28, scope: !558)
!560 = !DILocation(line: 689, column: 47, scope: !558)
!561 = !DILocation(line: 689, column: 41, scope: !558)
!562 = !DILocation(line: 689, column: 59, scope: !558)
!563 = !DILocation(line: 688, column: 7, scope: !558)
!564 = !DILocation(line: 690, column: 5, scope: !558)
!565 = !DILocation(line: 695, column: 48, scope: !566)
!566 = distinct !DILexicalBlock(scope: !552, file: !82, line: 692, column: 5)
!567 = !DILocation(line: 696, column: 21, scope: !566)
!568 = !DILocation(line: 696, column: 15, scope: !566)
!569 = !DILocation(line: 696, column: 33, scope: !566)
!570 = !DILocation(line: 695, column: 7, scope: !566)
!571 = !DILocation(line: 698, column: 20, scope: !168)
!572 = !DILocation(line: 698, column: 3, scope: !168)
!573 = !DILocation(line: 702, column: 21, scope: !168)
!574 = !DILocation(line: 702, column: 3, scope: !168)
!575 = !DILocation(line: 705, column: 11, scope: !168)
!576 = !DILocation(line: 705, column: 26, scope: !168)
!577 = !DILocation(line: 705, column: 38, scope: !168)
!578 = !DILocation(line: 705, column: 36, scope: !168)
!579 = !DILocation(line: 705, column: 50, scope: !168)
!580 = !DILocation(line: 705, column: 3, scope: !168)
!581 = !DILocation(line: 707, column: 21, scope: !168)
!582 = !DILocation(line: 707, column: 3, scope: !168)
!583 = !DILocation(line: 710, column: 28, scope: !168)
!584 = !DILocation(line: 710, column: 3, scope: !168)
!585 = !DILocation(line: 714, column: 10, scope: !168)
!586 = !DILocation(line: 714, column: 21, scope: !168)
!587 = !DILocation(line: 714, column: 3, scope: !168)
!588 = !DILocation(line: 715, column: 1, scope: !168)
!589 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !82, file: !82, line: 855, type: !590, scopeLine: 856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !173)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !171}
!592 = !DILocalVariable(name: "program", arg: 1, scope: !589, file: !82, line: 855, type: !171)
!593 = !DILocation(line: 855, column: 34, scope: !589)
!594 = !DILocalVariable(name: "infomap", scope: !589, file: !82, line: 857, type: !595)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 896, elements: !208)
!596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !597)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !589, file: !82, line: 857, size: 128, elements: !598)
!598 = !{!599, !600}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !597, file: !82, line: 857, baseType: !171, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !597, file: !82, line: 857, baseType: !171, size: 64, offset: 64)
!601 = !DILocation(line: 857, column: 67, scope: !589)
!602 = !DILocalVariable(name: "node", scope: !589, file: !82, line: 867, type: !171)
!603 = !DILocation(line: 867, column: 15, scope: !589)
!604 = !DILocation(line: 867, column: 22, scope: !589)
!605 = !DILocalVariable(name: "map_prog", scope: !589, file: !82, line: 868, type: !606)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!607 = !DILocation(line: 868, column: 25, scope: !589)
!608 = !DILocation(line: 868, column: 36, scope: !589)
!609 = !DILocation(line: 870, column: 3, scope: !589)
!610 = !DILocation(line: 870, column: 10, scope: !589)
!611 = !DILocation(line: 870, column: 20, scope: !589)
!612 = !DILocation(line: 870, column: 28, scope: !589)
!613 = !DILocation(line: 870, column: 40, scope: !589)
!614 = !DILocation(line: 870, column: 49, scope: !589)
!615 = !DILocation(line: 870, column: 59, scope: !589)
!616 = !DILocation(line: 870, column: 33, scope: !589)
!617 = !DILocation(line: 870, column: 31, scope: !589)
!618 = !DILocation(line: 0, scope: !589)
!619 = !DILocation(line: 871, column: 13, scope: !589)
!620 = distinct !{!620, !609, !619, !459}
!621 = !DILocation(line: 873, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !589, file: !82, line: 873, column: 7)
!623 = !DILocation(line: 873, column: 17, scope: !622)
!624 = !DILocation(line: 874, column: 12, scope: !622)
!625 = !DILocation(line: 874, column: 22, scope: !622)
!626 = !DILocation(line: 874, column: 10, scope: !622)
!627 = !DILocation(line: 874, column: 5, scope: !622)
!628 = !DILocation(line: 876, column: 3, scope: !589)
!629 = !DILocalVariable(name: "url_program", scope: !589, file: !82, line: 881, type: !171)
!630 = !DILocation(line: 881, column: 15, scope: !589)
!631 = !DILocation(line: 881, column: 36, scope: !589)
!632 = !DILocation(line: 881, column: 29, scope: !589)
!633 = !DILocation(line: 881, column: 61, scope: !589)
!634 = !DILocation(line: 882, column: 11, scope: !589)
!635 = !DILocation(line: 883, column: 24, scope: !589)
!636 = !DILocation(line: 882, column: 3, scope: !589)
!637 = !DILocation(line: 884, column: 11, scope: !589)
!638 = !DILocation(line: 885, column: 11, scope: !589)
!639 = !DILocation(line: 885, column: 17, scope: !589)
!640 = !DILocation(line: 885, column: 25, scope: !589)
!641 = !DILocation(line: 885, column: 22, scope: !589)
!642 = !DILocation(line: 884, column: 3, scope: !589)
!643 = !DILocation(line: 886, column: 1, scope: !589)
!644 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 289, type: !645, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !173)
!645 = !DISubroutineType(types: !646)
!646 = !{!83, !83, !647}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!648 = !DILocalVariable(name: "argc", arg: 1, scope: !644, file: !2, line: 289, type: !83)
!649 = !DILocation(line: 289, column: 11, scope: !644)
!650 = !DILocalVariable(name: "argv", arg: 2, scope: !644, file: !2, line: 289, type: !647)
!651 = !DILocation(line: 289, column: 24, scope: !644)
!652 = !DILocalVariable(name: "width", scope: !644, file: !2, line: 291, type: !313)
!653 = !DILocation(line: 291, column: 10, scope: !644)
!654 = !DILocalVariable(name: "optc", scope: !644, file: !2, line: 292, type: !83)
!655 = !DILocation(line: 292, column: 7, scope: !644)
!656 = !DILocalVariable(name: "ok", scope: !644, file: !2, line: 293, type: !156)
!657 = !DILocation(line: 293, column: 8, scope: !644)
!658 = !DILocation(line: 296, column: 21, scope: !644)
!659 = !DILocation(line: 296, column: 3, scope: !644)
!660 = !DILocation(line: 297, column: 3, scope: !644)
!661 = !DILocation(line: 298, column: 3, scope: !644)
!662 = !DILocation(line: 299, column: 3, scope: !644)
!663 = !DILocation(line: 301, column: 3, scope: !644)
!664 = !DILocation(line: 303, column: 3, scope: !644)
!665 = !DILocation(line: 303, column: 31, scope: !644)
!666 = !DILocation(line: 303, column: 37, scope: !644)
!667 = !DILocation(line: 303, column: 18, scope: !644)
!668 = !DILocation(line: 303, column: 16, scope: !644)
!669 = !DILocation(line: 303, column: 71, scope: !644)
!670 = !DILocalVariable(name: "optargbuf", scope: !671, file: !2, line: 305, type: !151)
!671 = distinct !DILexicalBlock(scope: !644, file: !2, line: 304, column: 5)
!672 = !DILocation(line: 305, column: 12, scope: !671)
!673 = !DILocation(line: 307, column: 15, scope: !671)
!674 = !DILocation(line: 307, column: 7, scope: !671)
!675 = !DILocation(line: 310, column: 25, scope: !676)
!676 = distinct !DILexicalBlock(scope: !671, file: !2, line: 308, column: 9)
!677 = !DILocation(line: 311, column: 11, scope: !676)
!678 = !DILocation(line: 314, column: 25, scope: !676)
!679 = !DILocation(line: 315, column: 11, scope: !676)
!680 = !DILocation(line: 318, column: 24, scope: !676)
!681 = !DILocation(line: 319, column: 11, scope: !676)
!682 = !DILocation(line: 323, column: 15, scope: !683)
!683 = distinct !DILexicalBlock(scope: !676, file: !2, line: 323, column: 15)
!684 = !DILocation(line: 324, column: 19, scope: !683)
!685 = !DILocation(line: 324, column: 13, scope: !683)
!686 = !DILocation(line: 327, column: 30, scope: !687)
!687 = distinct !DILexicalBlock(scope: !683, file: !2, line: 326, column: 13)
!688 = !DILocation(line: 327, column: 15, scope: !687)
!689 = !DILocation(line: 327, column: 28, scope: !687)
!690 = !DILocation(line: 328, column: 15, scope: !687)
!691 = !DILocation(line: 328, column: 28, scope: !687)
!692 = !DILocation(line: 329, column: 24, scope: !687)
!693 = !DILocation(line: 329, column: 22, scope: !687)
!694 = !DILocation(line: 333, column: 31, scope: !676)
!695 = !DILocation(line: 334, column: 31, scope: !676)
!696 = !DILocation(line: 333, column: 19, scope: !676)
!697 = !DILocation(line: 333, column: 17, scope: !676)
!698 = !DILocation(line: 336, column: 11, scope: !676)
!699 = !DILocation(line: 338, column: 9, scope: !676)
!700 = !DILocation(line: 340, column: 9, scope: !676)
!701 = !DILocation(line: 340, column: 49, scope: !676)
!702 = !DILocation(line: 343, column: 11, scope: !676)
!703 = distinct !{!703, !664, !704, !459}
!704 = !DILocation(line: 345, column: 5, scope: !644)
!705 = !DILocation(line: 347, column: 7, scope: !706)
!706 = distinct !DILexicalBlock(scope: !644, file: !2, line: 347, column: 7)
!707 = !DILocation(line: 347, column: 15, scope: !706)
!708 = !DILocation(line: 347, column: 12, scope: !706)
!709 = !DILocation(line: 348, column: 26, scope: !706)
!710 = !DILocation(line: 348, column: 10, scope: !706)
!711 = !DILocation(line: 348, column: 8, scope: !706)
!712 = !DILocation(line: 348, column: 5, scope: !706)
!713 = !DILocation(line: 351, column: 10, scope: !714)
!714 = distinct !DILexicalBlock(scope: !706, file: !2, line: 350, column: 5)
!715 = !DILocalVariable(name: "i", scope: !716, file: !2, line: 352, type: !83)
!716 = distinct !DILexicalBlock(scope: !714, file: !2, line: 352, column: 7)
!717 = !DILocation(line: 352, column: 16, scope: !716)
!718 = !DILocation(line: 352, column: 20, scope: !716)
!719 = !DILocation(line: 352, column: 12, scope: !716)
!720 = !DILocation(line: 352, column: 28, scope: !721)
!721 = distinct !DILexicalBlock(scope: !716, file: !2, line: 352, column: 7)
!722 = !DILocation(line: 352, column: 32, scope: !721)
!723 = !DILocation(line: 352, column: 30, scope: !721)
!724 = !DILocation(line: 352, column: 7, scope: !716)
!725 = !DILocation(line: 353, column: 26, scope: !721)
!726 = !DILocation(line: 353, column: 31, scope: !721)
!727 = !DILocation(line: 353, column: 35, scope: !721)
!728 = !DILocation(line: 353, column: 15, scope: !721)
!729 = !DILocation(line: 353, column: 12, scope: !721)
!730 = !DILocation(line: 353, column: 9, scope: !721)
!731 = !DILocation(line: 352, column: 39, scope: !721)
!732 = !DILocation(line: 352, column: 7, scope: !721)
!733 = distinct !{!733, !724, !734, !459}
!734 = !DILocation(line: 353, column: 40, scope: !716)
!735 = !DILocation(line: 356, column: 7, scope: !736)
!736 = distinct !DILexicalBlock(scope: !644, file: !2, line: 356, column: 7)
!737 = !DILocation(line: 356, column: 23, scope: !736)
!738 = !DILocation(line: 356, column: 34, scope: !736)
!739 = !DILocation(line: 356, column: 26, scope: !736)
!740 = !DILocation(line: 356, column: 41, scope: !736)
!741 = !DILocation(line: 357, column: 26, scope: !736)
!742 = !DILocation(line: 357, column: 5, scope: !736)
!743 = !DILocation(line: 359, column: 10, scope: !644)
!744 = !DILocation(line: 359, column: 3, scope: !644)
!745 = !DILocalVariable(name: "filename", arg: 1, scope: !310, file: !2, line: 159, type: !171)
!746 = !DILocation(line: 159, column: 24, scope: !310)
!747 = !DILocalVariable(name: "width", arg: 2, scope: !310, file: !2, line: 159, type: !313)
!748 = !DILocation(line: 159, column: 41, scope: !310)
!749 = !DILocalVariable(name: "istream", scope: !310, file: !2, line: 161, type: !750)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !752, line: 7, baseType: !753)
!752 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !754, line: 49, size: 1728, elements: !755)
!754 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!755 = !{!756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !771, !773, !774, !775, !779, !780, !782, !783, !786, !788, !791, !794, !795, !796, !797, !798}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !753, file: !754, line: 51, baseType: !83, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !753, file: !754, line: 54, baseType: !130, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !753, file: !754, line: 55, baseType: !130, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !753, file: !754, line: 56, baseType: !130, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !753, file: !754, line: 57, baseType: !130, size: 64, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !753, file: !754, line: 58, baseType: !130, size: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !753, file: !754, line: 59, baseType: !130, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !753, file: !754, line: 60, baseType: !130, size: 64, offset: 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !753, file: !754, line: 61, baseType: !130, size: 64, offset: 512)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !753, file: !754, line: 64, baseType: !130, size: 64, offset: 576)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !753, file: !754, line: 65, baseType: !130, size: 64, offset: 640)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !753, file: !754, line: 66, baseType: !130, size: 64, offset: 704)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !753, file: !754, line: 68, baseType: !769, size: 64, offset: 768)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !754, line: 36, flags: DIFlagFwdDecl)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !753, file: !754, line: 70, baseType: !772, size: 64, offset: 832)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !753, file: !754, line: 72, baseType: !83, size: 32, offset: 896)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !753, file: !754, line: 73, baseType: !83, size: 32, offset: 928)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !753, file: !754, line: 74, baseType: !776, size: 64, offset: 960)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !777, line: 152, baseType: !778)
!777 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!778 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !753, file: !754, line: 77, baseType: !132, size: 16, offset: 1024)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !753, file: !754, line: 78, baseType: !781, size: 8, offset: 1040)
!781 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !753, file: !754, line: 79, baseType: !51, size: 8, offset: 1048)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !753, file: !754, line: 81, baseType: !784, size: 64, offset: 1088)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !754, line: 43, baseType: null)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !753, file: !754, line: 89, baseType: !787, size: 64, offset: 1152)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !777, line: 153, baseType: !778)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !753, file: !754, line: 91, baseType: !789, size: 64, offset: 1216)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !754, line: 37, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !753, file: !754, line: 92, baseType: !792, size: 64, offset: 1280)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !754, line: 38, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !753, file: !754, line: 93, baseType: !772, size: 64, offset: 1344)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !753, file: !754, line: 94, baseType: !131, size: 64, offset: 1408)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !753, file: !754, line: 95, baseType: !313, size: 64, offset: 1472)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !753, file: !754, line: 96, baseType: !83, size: 32, offset: 1536)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !753, file: !754, line: 98, baseType: !799, size: 160, offset: 1568)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !800)
!800 = !{!801}
!801 = !DISubrange(count: 20)
!802 = !DILocation(line: 161, column: 9, scope: !310)
!803 = !DILocalVariable(name: "column", scope: !310, file: !2, line: 162, type: !313)
!804 = !DILocation(line: 162, column: 10, scope: !310)
!805 = !DILocalVariable(name: "offset_out", scope: !310, file: !2, line: 163, type: !806)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !807, line: 137, baseType: !778)
!807 = !DIFile(filename: "./lib/idx.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "a342c053ede588630cf36a09403114d3")
!808 = !DILocation(line: 163, column: 9, scope: !310)
!809 = !DILocalVariable(name: "mbbuf", scope: !310, file: !2, line: 166, type: !810)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbbuf_t", file: !811, line: 55, baseType: !812)
!811 = !DIFile(filename: "./lib/mbbuf.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "867c2b5cbb0e5fe89cf43ca8d008516b")
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !811, line: 47, size: 384, elements: !813)
!813 = !{!814, !815, !816, !817, !818, !819}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !812, file: !811, line: 49, baseType: !130, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !812, file: !811, line: 50, baseType: !750, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !812, file: !811, line: 51, baseType: !806, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !812, file: !811, line: 52, baseType: !806, size: 64, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !812, file: !811, line: 53, baseType: !806, size: 64, offset: 256)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !812, file: !811, line: 54, baseType: !156, size: 8, offset: 320)
!820 = !DILocation(line: 166, column: 11, scope: !310)
!821 = !DILocalVariable(name: "saved_errno", scope: !310, file: !2, line: 167, type: !83)
!822 = !DILocation(line: 167, column: 7, scope: !310)
!823 = !DILocation(line: 169, column: 14, scope: !824)
!824 = distinct !DILexicalBlock(scope: !310, file: !2, line: 169, column: 7)
!825 = !DILocation(line: 169, column: 7, scope: !824)
!826 = !DILocation(line: 171, column: 17, scope: !827)
!827 = distinct !DILexicalBlock(scope: !824, file: !2, line: 170, column: 5)
!828 = !DILocation(line: 171, column: 15, scope: !827)
!829 = !DILocation(line: 172, column: 23, scope: !827)
!830 = !DILocation(line: 173, column: 5, scope: !827)
!831 = !DILocation(line: 175, column: 22, scope: !824)
!832 = !DILocation(line: 175, column: 15, scope: !824)
!833 = !DILocation(line: 175, column: 13, scope: !824)
!834 = !DILocation(line: 177, column: 7, scope: !835)
!835 = distinct !DILexicalBlock(scope: !310, file: !2, line: 177, column: 7)
!836 = !DILocation(line: 177, column: 15, scope: !835)
!837 = !DILocation(line: 179, column: 17, scope: !838)
!838 = distinct !DILexicalBlock(scope: !835, file: !2, line: 178, column: 5)
!839 = !DILocation(line: 179, column: 38, scope: !838)
!840 = !DILocation(line: 179, column: 30, scope: !838)
!841 = !DILocation(line: 179, column: 7, scope: !838)
!842 = !DILocation(line: 180, column: 7, scope: !838)
!843 = !DILocation(line: 183, column: 12, scope: !310)
!844 = !DILocation(line: 183, column: 3, scope: !310)
!845 = !DILocation(line: 184, column: 48, scope: !310)
!846 = !DILocation(line: 184, column: 3, scope: !310)
!847 = !DILocalVariable(name: "g", scope: !310, file: !2, line: 186, type: !848)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !126, line: 143, baseType: !849)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 138, size: 64, elements: !850)
!850 = !{!851, !856, !858}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !849, file: !126, line: 140, baseType: !852, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !853, line: 37, baseType: !854)
!853 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !777, line: 57, baseType: !855)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !777, line: 42, baseType: !69)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !849, file: !126, line: 141, baseType: !857, size: 8, offset: 32)
!857 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !849, file: !126, line: 142, baseType: !857, size: 8, offset: 40)
!859 = !DILocation(line: 186, column: 10, scope: !310)
!860 = !DILocation(line: 187, column: 3, scope: !310)
!861 = !DILocation(line: 187, column: 15, scope: !310)
!862 = !DILocation(line: 187, column: 13, scope: !310)
!863 = !DILocation(line: 187, column: 40, scope: !310)
!864 = !DILocation(line: 187, column: 43, scope: !310)
!865 = !DILocation(line: 189, column: 13, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !2, line: 189, column: 11)
!867 = distinct !DILexicalBlock(scope: !310, file: !2, line: 188, column: 5)
!868 = !DILocation(line: 189, column: 16, scope: !866)
!869 = !DILocation(line: 191, column: 32, scope: !870)
!870 = distinct !DILexicalBlock(scope: !866, file: !2, line: 190, column: 9)
!871 = !DILocation(line: 191, column: 11, scope: !870)
!872 = !DILocation(line: 192, column: 31, scope: !870)
!873 = !DILocation(line: 192, column: 18, scope: !870)
!874 = !DILocation(line: 193, column: 11, scope: !870)
!875 = distinct !{!875, !860, !876, !459}
!876 = !DILocation(line: 265, column: 5, scope: !310)
!877 = !DILocation(line: 189, column: 19, scope: !866)
!878 = !DILabel(scope: !867, name: "rescan", file: !2, line: 195, column: 5)
!879 = !DILocation(line: 195, column: 5, scope: !867)
!880 = !DILocation(line: 196, column: 31, scope: !867)
!881 = !DILocation(line: 196, column: 16, scope: !867)
!882 = !DILocation(line: 196, column: 14, scope: !867)
!883 = !DILocation(line: 198, column: 11, scope: !884)
!884 = distinct !DILexicalBlock(scope: !867, file: !2, line: 198, column: 11)
!885 = !DILocation(line: 198, column: 20, scope: !884)
!886 = !DILocation(line: 198, column: 18, scope: !884)
!887 = !DILocation(line: 203, column: 15, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !2, line: 203, column: 15)
!889 = distinct !DILexicalBlock(scope: !884, file: !2, line: 199, column: 9)
!890 = !DILocalVariable(name: "space_length", scope: !891, file: !2, line: 205, type: !83)
!891 = distinct !DILexicalBlock(scope: !888, file: !2, line: 204, column: 13)
!892 = !DILocation(line: 205, column: 19, scope: !891)
!893 = !DILocalVariable(name: "logical_end", scope: !891, file: !2, line: 206, type: !806)
!894 = !DILocation(line: 206, column: 21, scope: !891)
!895 = !DILocation(line: 206, column: 35, scope: !891)
!896 = !DILocalVariable(name: "logical_p", scope: !891, file: !2, line: 207, type: !130)
!897 = !DILocation(line: 207, column: 21, scope: !891)
!898 = !DILocalVariable(name: "logical_lim", scope: !891, file: !2, line: 208, type: !130)
!899 = !DILocation(line: 208, column: 21, scope: !891)
!900 = !DILocation(line: 208, column: 35, scope: !891)
!901 = !DILocation(line: 208, column: 47, scope: !891)
!902 = !DILocation(line: 208, column: 45, scope: !891)
!903 = !DILocalVariable(name: "g2", scope: !904, file: !2, line: 210, type: !848)
!904 = distinct !DILexicalBlock(scope: !891, file: !2, line: 210, column: 15)
!905 = !DILocation(line: 210, column: 27, scope: !904)
!906 = !DILocation(line: 210, column: 20, scope: !904)
!907 = !DILocation(line: 210, column: 31, scope: !908)
!908 = distinct !DILexicalBlock(scope: !904, file: !2, line: 210, column: 15)
!909 = !DILocation(line: 210, column: 43, scope: !908)
!910 = !DILocation(line: 210, column: 41, scope: !908)
!911 = !DILocation(line: 210, column: 15, scope: !904)
!912 = !DILocation(line: 212, column: 35, scope: !913)
!913 = distinct !DILexicalBlock(scope: !908, file: !2, line: 211, column: 17)
!914 = !DILocation(line: 212, column: 46, scope: !913)
!915 = !DILocation(line: 212, column: 24, scope: !913)
!916 = !DILocation(line: 213, column: 36, scope: !917)
!917 = distinct !DILexicalBlock(scope: !913, file: !2, line: 213, column: 23)
!918 = !DILocation(line: 213, column: 23, scope: !917)
!919 = !DILocation(line: 215, column: 41, scope: !920)
!920 = distinct !DILexicalBlock(scope: !917, file: !2, line: 214, column: 21)
!921 = !DILocation(line: 215, column: 38, scope: !920)
!922 = !DILocation(line: 215, column: 36, scope: !920)
!923 = !DILocation(line: 216, column: 37, scope: !920)
!924 = !DILocation(line: 216, column: 47, scope: !920)
!925 = !DILocation(line: 216, column: 35, scope: !920)
!926 = !DILocation(line: 217, column: 21, scope: !920)
!927 = !DILocation(line: 218, column: 17, scope: !913)
!928 = !DILocation(line: 210, column: 72, scope: !908)
!929 = !DILocation(line: 210, column: 69, scope: !908)
!930 = !DILocation(line: 210, column: 66, scope: !908)
!931 = !DILocation(line: 210, column: 15, scope: !908)
!932 = distinct !{!932, !911, !933, !459}
!933 = !DILocation(line: 218, column: 17, scope: !904)
!934 = !DILocation(line: 220, column: 19, scope: !935)
!935 = distinct !DILexicalBlock(scope: !891, file: !2, line: 220, column: 19)
!936 = !DILocation(line: 222, column: 34, scope: !937)
!937 = distinct !DILexicalBlock(scope: !935, file: !2, line: 221, column: 17)
!938 = !DILocation(line: 222, column: 31, scope: !937)
!939 = !DILocation(line: 224, column: 40, scope: !937)
!940 = !DILocation(line: 224, column: 19, scope: !937)
!941 = !DILocation(line: 227, column: 49, scope: !937)
!942 = !DILocation(line: 227, column: 19, scope: !937)
!943 = !DILocation(line: 228, column: 28, scope: !937)
!944 = !DILocation(line: 228, column: 41, scope: !937)
!945 = !DILocation(line: 228, column: 39, scope: !937)
!946 = !DILocation(line: 229, column: 33, scope: !937)
!947 = !DILocation(line: 229, column: 30, scope: !937)
!948 = !DILocation(line: 230, column: 26, scope: !937)
!949 = !DILocalVariable(name: "printed_p", scope: !937, file: !2, line: 231, type: !130)
!950 = !DILocation(line: 231, column: 25, scope: !937)
!951 = !DILocalVariable(name: "printed_lim", scope: !937, file: !2, line: 232, type: !130)
!952 = !DILocation(line: 232, column: 25, scope: !937)
!953 = !DILocation(line: 232, column: 39, scope: !937)
!954 = !DILocation(line: 232, column: 51, scope: !937)
!955 = !DILocation(line: 232, column: 49, scope: !937)
!956 = !DILocalVariable(name: "g2", scope: !957, file: !2, line: 233, type: !848)
!957 = distinct !DILexicalBlock(scope: !937, file: !2, line: 233, column: 19)
!958 = !DILocation(line: 233, column: 31, scope: !957)
!959 = !DILocation(line: 233, column: 24, scope: !957)
!960 = !DILocation(line: 233, column: 35, scope: !961)
!961 = distinct !DILexicalBlock(scope: !957, file: !2, line: 233, column: 19)
!962 = !DILocation(line: 233, column: 47, scope: !961)
!963 = !DILocation(line: 233, column: 45, scope: !961)
!964 = !DILocation(line: 233, column: 19, scope: !957)
!965 = !DILocation(line: 236, column: 39, scope: !966)
!966 = distinct !DILexicalBlock(scope: !961, file: !2, line: 235, column: 21)
!967 = !DILocation(line: 236, column: 50, scope: !966)
!968 = !DILocation(line: 236, column: 28, scope: !966)
!969 = !DILocation(line: 237, column: 47, scope: !966)
!970 = !DILocation(line: 237, column: 32, scope: !966)
!971 = !DILocation(line: 237, column: 30, scope: !966)
!972 = !DILocation(line: 238, column: 21, scope: !966)
!973 = !DILocation(line: 234, column: 40, scope: !961)
!974 = !DILocation(line: 234, column: 37, scope: !961)
!975 = !DILocation(line: 234, column: 34, scope: !961)
!976 = !DILocation(line: 233, column: 19, scope: !961)
!977 = distinct !{!977, !964, !978, !459}
!978 = !DILocation(line: 238, column: 21, scope: !957)
!979 = !DILocation(line: 239, column: 19, scope: !937)
!980 = !DILocation(line: 241, column: 13, scope: !891)
!981 = !DILocation(line: 243, column: 15, scope: !982)
!982 = distinct !DILexicalBlock(scope: !889, file: !2, line: 243, column: 15)
!983 = !DILocation(line: 243, column: 26, scope: !982)
!984 = !DILocation(line: 245, column: 33, scope: !985)
!985 = distinct !DILexicalBlock(scope: !982, file: !2, line: 244, column: 13)
!986 = !DILocation(line: 245, column: 66, scope: !985)
!987 = !DILocation(line: 245, column: 64, scope: !985)
!988 = !DILocation(line: 245, column: 15, scope: !985)
!989 = !DILocation(line: 246, column: 31, scope: !985)
!990 = !DILocation(line: 246, column: 29, scope: !985)
!991 = !DILocation(line: 246, column: 26, scope: !985)
!992 = !DILocation(line: 247, column: 15, scope: !985)
!993 = !DILocation(line: 250, column: 32, scope: !889)
!994 = !DILocation(line: 250, column: 11, scope: !889)
!995 = !DILocation(line: 251, column: 31, scope: !889)
!996 = !DILocation(line: 251, column: 18, scope: !889)
!997 = !DILocation(line: 252, column: 11, scope: !889)
!998 = !DILocation(line: 257, column: 30, scope: !999)
!999 = distinct !DILexicalBlock(scope: !867, file: !2, line: 257, column: 11)
!1000 = !DILocation(line: 257, column: 45, scope: !999)
!1001 = !DILocation(line: 257, column: 43, scope: !999)
!1002 = !DILocation(line: 257, column: 41, scope: !999)
!1003 = !DILocation(line: 257, column: 27, scope: !999)
!1004 = !DILocation(line: 259, column: 32, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !999, file: !2, line: 258, column: 9)
!1006 = !DILocation(line: 259, column: 11, scope: !1005)
!1007 = !DILocation(line: 260, column: 22, scope: !1005)
!1008 = !DILocation(line: 261, column: 9, scope: !1005)
!1009 = !DILocation(line: 263, column: 26, scope: !867)
!1010 = !DILocation(line: 263, column: 7, scope: !867)
!1011 = !DILocation(line: 263, column: 38, scope: !867)
!1012 = !DILocation(line: 263, column: 71, scope: !867)
!1013 = !DILocation(line: 263, column: 69, scope: !867)
!1014 = !DILocation(line: 264, column: 23, scope: !867)
!1015 = !DILocation(line: 264, column: 21, scope: !867)
!1016 = !DILocation(line: 264, column: 18, scope: !867)
!1017 = !DILocation(line: 267, column: 17, scope: !310)
!1018 = !DILocation(line: 267, column: 15, scope: !310)
!1019 = !DILocation(line: 268, column: 16, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !310, file: !2, line: 268, column: 7)
!1021 = !DILocation(line: 268, column: 8, scope: !1020)
!1022 = !DILocation(line: 268, column: 7, scope: !1020)
!1023 = !DILocation(line: 269, column: 17, scope: !1020)
!1024 = !DILocation(line: 269, column: 5, scope: !1020)
!1025 = !DILocation(line: 271, column: 7, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !310, file: !2, line: 271, column: 7)
!1027 = !DILocation(line: 272, column: 26, scope: !1026)
!1028 = !DILocation(line: 272, column: 5, scope: !1026)
!1029 = !DILocation(line: 274, column: 14, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !310, file: !2, line: 274, column: 7)
!1031 = !DILocation(line: 274, column: 7, scope: !1030)
!1032 = !DILocation(line: 275, column: 15, scope: !1030)
!1033 = !DILocation(line: 275, column: 5, scope: !1030)
!1034 = !DILocation(line: 276, column: 20, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 276, column: 12)
!1036 = !DILocation(line: 276, column: 12, scope: !1035)
!1037 = !DILocation(line: 276, column: 29, scope: !1035)
!1038 = !DILocation(line: 276, column: 34, scope: !1035)
!1039 = !DILocation(line: 276, column: 38, scope: !1035)
!1040 = !DILocation(line: 277, column: 19, scope: !1035)
!1041 = !DILocation(line: 277, column: 17, scope: !1035)
!1042 = !DILocation(line: 277, column: 5, scope: !1035)
!1043 = !DILocation(line: 279, column: 7, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !310, file: !2, line: 279, column: 7)
!1045 = !DILocation(line: 281, column: 17, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 280, column: 5)
!1047 = !DILocation(line: 281, column: 44, scope: !1046)
!1048 = !DILocation(line: 281, column: 36, scope: !1046)
!1049 = !DILocation(line: 281, column: 7, scope: !1046)
!1050 = !DILocation(line: 282, column: 7, scope: !1046)
!1051 = !DILocation(line: 285, column: 3, scope: !310)
!1052 = !DILocation(line: 286, column: 1, scope: !310)
!1053 = distinct !DISubprogram(name: "write_out", scope: !2, file: !2, line: 147, type: !1054, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !173)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{null, !171, !313, !156}
!1056 = !DILocalVariable(name: "line", arg: 1, scope: !1053, file: !2, line: 147, type: !171)
!1057 = !DILocation(line: 147, column: 24, scope: !1053)
!1058 = !DILocalVariable(name: "line_len", arg: 2, scope: !1053, file: !2, line: 147, type: !313)
!1059 = !DILocation(line: 147, column: 37, scope: !1053)
!1060 = !DILocalVariable(name: "newline", arg: 3, scope: !1053, file: !2, line: 147, type: !156)
!1061 = !DILocation(line: 147, column: 52, scope: !1053)
!1062 = !DILocation(line: 149, column: 15, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1053, file: !2, line: 149, column: 7)
!1064 = !DILocation(line: 149, column: 36, scope: !1063)
!1065 = !DILocation(line: 149, column: 46, scope: !1063)
!1066 = !DILocation(line: 149, column: 7, scope: !1063)
!1067 = !DILocation(line: 149, column: 57, scope: !1063)
!1068 = !DILocation(line: 149, column: 54, scope: !1063)
!1069 = !DILocation(line: 150, column: 7, scope: !1063)
!1070 = !DILocation(line: 150, column: 11, scope: !1063)
!1071 = !DILocation(line: 150, column: 19, scope: !1063)
!1072 = !DILocation(line: 150, column: 22, scope: !1063)
!1073 = !DILocation(line: 150, column: 37, scope: !1063)
!1074 = !DILocation(line: 151, column: 5, scope: !1063)
!1075 = !DILocation(line: 152, column: 1, scope: !1053)
!1076 = distinct !DISubprogram(name: "adjust_column", scope: !2, file: !2, line: 115, type: !1077, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !173)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!313, !313, !848}
!1079 = !DILocalVariable(name: "column", arg: 1, scope: !1076, file: !2, line: 115, type: !313)
!1080 = !DILocation(line: 115, column: 23, scope: !1076)
!1081 = !DILocalVariable(name: "g", arg: 2, scope: !1076, file: !2, line: 115, type: !848)
!1082 = !DILocation(line: 115, column: 38, scope: !1076)
!1083 = !DILocation(line: 117, column: 7, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 117, column: 7)
!1085 = !DILocation(line: 117, column: 21, scope: !1084)
!1086 = !DILocation(line: 119, column: 13, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 119, column: 11)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 118, column: 5)
!1089 = !DILocation(line: 119, column: 16, scope: !1087)
!1090 = !DILocation(line: 121, column: 15, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !2, line: 121, column: 15)
!1092 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 120, column: 9)
!1093 = !DILocation(line: 121, column: 22, scope: !1091)
!1094 = !DILocation(line: 122, column: 23, scope: !1091)
!1095 = !DILocation(line: 122, column: 20, scope: !1091)
!1096 = !DILocation(line: 122, column: 13, scope: !1091)
!1097 = !DILocation(line: 123, column: 9, scope: !1092)
!1098 = !DILocation(line: 124, column: 18, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 124, column: 16)
!1100 = !DILocation(line: 124, column: 21, scope: !1099)
!1101 = !DILocation(line: 125, column: 16, scope: !1099)
!1102 = !DILocation(line: 125, column: 9, scope: !1099)
!1103 = !DILocation(line: 126, column: 18, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 126, column: 16)
!1105 = !DILocation(line: 126, column: 21, scope: !1104)
!1106 = !DILocation(line: 127, column: 31, scope: !1104)
!1107 = !DILocation(line: 127, column: 38, scope: !1104)
!1108 = !DILocation(line: 127, column: 29, scope: !1104)
!1109 = !DILocation(line: 127, column: 16, scope: !1104)
!1110 = !DILocation(line: 127, column: 9, scope: !1104)
!1111 = !DILocation(line: 130, column: 15, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !2, line: 130, column: 15)
!1113 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 129, column: 9)
!1114 = !DILocation(line: 130, column: 29, scope: !1112)
!1115 = !DILocation(line: 131, column: 34, scope: !1112)
!1116 = !DILocation(line: 131, column: 13, scope: !1112)
!1117 = !DILocalVariable(name: "width", scope: !1118, file: !2, line: 134, type: !83)
!1118 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 133, column: 13)
!1119 = !DILocation(line: 134, column: 19, scope: !1118)
!1120 = !DILocation(line: 134, column: 39, scope: !1118)
!1121 = !DILocation(line: 134, column: 27, scope: !1118)
!1122 = !DILocation(line: 136, column: 38, scope: !1118)
!1123 = !DILocation(line: 136, column: 44, scope: !1118)
!1124 = !DILocation(line: 136, column: 54, scope: !1118)
!1125 = !DILocation(line: 136, column: 36, scope: !1118)
!1126 = !DILocation(line: 138, column: 21, scope: !1113)
!1127 = !DILocation(line: 138, column: 18, scope: !1113)
!1128 = !DILocation(line: 140, column: 5, scope: !1088)
!1129 = !DILocation(line: 142, column: 17, scope: !1084)
!1130 = !DILocation(line: 142, column: 15, scope: !1084)
!1131 = !DILocation(line: 142, column: 12, scope: !1084)
!1132 = !DILocation(line: 143, column: 10, scope: !1076)
!1133 = !DILocation(line: 143, column: 3, scope: !1076)
!1134 = distinct !DISubprogram(name: "c32issep", scope: !82, file: !82, line: 183, type: !1135, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !173)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!156, !852}
!1137 = !DILocalVariable(name: "wc", arg: 1, scope: !1134, file: !82, line: 183, type: !852)
!1138 = !DILocation(line: 183, column: 20, scope: !1134)
!1139 = !DILocation(line: 186, column: 25, scope: !1134)
!1140 = !DILocation(line: 186, column: 13, scope: !1134)
!1141 = !DILocation(line: 186, column: 11, scope: !1134)
!1142 = !DILocation(line: 186, column: 10, scope: !1134)
!1143 = !DILocation(line: 186, column: 3, scope: !1134)
!1144 = distinct !DISubprogram(name: "write_error", scope: !82, file: !82, line: 953, type: !376, scopeLine: 954, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !173)
!1145 = !DILocalVariable(name: "saved_errno", scope: !1144, file: !82, line: 955, type: !83)
!1146 = !DILocation(line: 955, column: 7, scope: !1144)
!1147 = !DILocation(line: 955, column: 21, scope: !1144)
!1148 = !DILocation(line: 956, column: 11, scope: !1144)
!1149 = !DILocation(line: 956, column: 3, scope: !1144)
!1150 = !DILocation(line: 957, column: 11, scope: !1144)
!1151 = !DILocation(line: 957, column: 3, scope: !1144)
!1152 = !DILocation(line: 958, column: 13, scope: !1144)
!1153 = !DILocation(line: 958, column: 3, scope: !1144)
!1154 = !DILocation(line: 959, column: 24, scope: !1144)
!1155 = !DILocation(line: 959, column: 37, scope: !1144)
!1156 = !DILocation(line: 959, column: 3, scope: !1144)
