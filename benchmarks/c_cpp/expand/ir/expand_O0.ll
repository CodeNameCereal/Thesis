; ModuleID = 'src/expand.c'
source_filename = "src/expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.infomap = type { ptr, ptr }
%struct.mbbuf_t = type { ptr, ptr, i64, i64, i64, i8 }
%struct.mcel_t = type { i32, i8, i8 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [66 x i8] c"Convert tabs in each FILE to spaces, writing to standard output.\0A\00", align 1, !dbg !12
@stdout = external global ptr, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"expand\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [63 x i8] c"  -i, --initial\0A         do not convert tabs after non blanks\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [61 x i8] c"  -t, --tabs=N\0A         have tabs N characters apart, not 8\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !42
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !52
@convert_entire_line = external global i8, align 1
@shortopts = internal constant [34 x i8] c"it:0::1::2::3::4::5::6::7::8::9::\00", align 16, !dbg !57
@optarg = external global ptr, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !93
@Version = external global ptr, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !98
@optind = external global i32, align 4
@exit_status = external global i32, align 4
@.str.13 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !103
@.str.14 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !108
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !113
@.str.15 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !121
@.str.16 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !126
@.str.17 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !128
@.str.18 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !133
@.str.19 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !138
@.str.20 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !143
@.str.21 = private unnamed_addr constant [4 x i8] c"dir\00", align 1, !dbg !145
@.str.22 = private unnamed_addr constant [3 x i8] c"ls\00", align 1, !dbg !147
@.str.23 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1, !dbg !152
@.str.24 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1, !dbg !154
@.str.25 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1, !dbg !156
@.str.26 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1, !dbg !158
@.str.27 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1, !dbg !160
@.str.28 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !165
@.str.29 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !167
@.str.30 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !169
@.str.31 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !171
@.str.32 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !173
@.str.33 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !175
@.str.34 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !177
@.str.35 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !182
@.str.36 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !187
@.str.37 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !192
@.str.38 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !194
@.str.39 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !196
@.str.40 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !198
@.str.41 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !200
@.str.42 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !202
@.str.43 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !204
@.str.44 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !209
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.19, ptr @.str.42 }, %struct.infomap { ptr @.str.9, ptr @.str.43 }, %struct.infomap { ptr @.str.28, ptr @.str.44 }, %struct.infomap { ptr @.str.29, ptr @.str.44 }, %struct.infomap { ptr @.str.30, ptr @.str.44 }, %struct.infomap { ptr @.str.31, ptr @.str.44 }, %struct.infomap zeroinitializer], align 16
@.str.45 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !211
@.str.46 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !216
@.str.47 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !221
@.str.48 = private unnamed_addr constant [5 x i8] c"tabs\00", align 1, !dbg !226
@.str.49 = private unnamed_addr constant [8 x i8] c"initial\00", align 1, !dbg !228
@.str.50 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !230
@.str.51 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !232
@longopts = internal constant [5 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.48, i32 1, [4 x i8] zeroinitializer, ptr null, i32 116, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.49, i32 0, [4 x i8] zeroinitializer, ptr null, i32 105, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.50, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -130, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.51, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -131, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16, !dbg !234
@expand.line_in = internal global [262144 x i8] zeroinitializer, align 16, !dbg !246
@.str.53 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1, !dbg !254
@.str.54 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !259

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !272 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !275, !DIExpression(), !276)
  %3 = load i32, ptr %2, align 4, !dbg !277
  %4 = icmp ne i32 %3, 0, !dbg !279
  br i1 %4, label %5, label %12, !dbg !279

5:                                                ; preds = %1
  br label %6, !dbg !280

6:                                                ; preds = %5
  %7 = load ptr, ptr @stderr, align 8, !dbg !281
  %8 = call ptr @gettext(ptr noundef @.str) #10, !dbg !281
  %9 = load ptr, ptr @program_name, align 8, !dbg !281
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef %8, ptr noundef %9) #10, !dbg !281
  br label %11, !dbg !281

11:                                               ; preds = %6
  br label %23, !dbg !281

12:                                               ; preds = %1
  %13 = call ptr @gettext(ptr noundef @.str.1) #10, !dbg !283
  %14 = load ptr, ptr @program_name, align 8, !dbg !285
  %15 = call i32 (ptr, ...) @rpl_printf(ptr noundef %13, ptr noundef %14), !dbg !286
  %16 = call ptr @gettext(ptr noundef @.str.2) #10, !dbg !287
  %17 = load ptr, ptr @stdout, align 8, !dbg !288
  %18 = call i32 @fputs_unlocked(ptr noundef %16, ptr noundef %17), !dbg !289
  call void @emit_stdin_note(), !dbg !290
  call void @emit_mandatory_arg_note(), !dbg !291
  %19 = call ptr @gettext(ptr noundef @.str.4) #10, !dbg !292
  call void @oputs_(ptr noundef @.str.3, ptr noundef %19), !dbg !293
  %20 = call ptr @gettext(ptr noundef @.str.5) #10, !dbg !294
  call void @oputs_(ptr noundef @.str.3, ptr noundef %20), !dbg !295
  call void @emit_tab_list_info(ptr noundef @.str.3), !dbg !296
  %21 = call ptr @gettext(ptr noundef @.str.6) #10, !dbg !297
  call void @oputs_(ptr noundef @.str.3, ptr noundef %21), !dbg !298
  %22 = call ptr @gettext(ptr noundef @.str.7) #10, !dbg !299
  call void @oputs_(ptr noundef @.str.3, ptr noundef %22), !dbg !300
  call void @emit_ancillary_info(ptr noundef @.str.3), !dbg !301
  br label %23

23:                                               ; preds = %12, %11
  %24 = load i32, ptr %2, align 4, !dbg !302
  call void @exit(i32 noundef %24) #11, !dbg !303
  unreachable, !dbg !303
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #1

declare i32 @rpl_printf(ptr noundef, ...) #2

declare i32 @fputs_unlocked(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_stdin_note() #3 !dbg !304 {
  %1 = call ptr @gettext(ptr noundef @.str.13) #10, !dbg !305
  %2 = load ptr, ptr @stdout, align 8, !dbg !306
  %3 = call i32 @fputs_unlocked(ptr noundef %1, ptr noundef %2), !dbg !307
  ret void, !dbg !308
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_mandatory_arg_note() #3 !dbg !309 {
  %1 = call ptr @gettext(ptr noundef @.str.14) #10, !dbg !310
  %2 = load ptr, ptr @stdout, align 8, !dbg !311
  %3 = call i32 @fputs_unlocked(ptr noundef %1, ptr noundef %2), !dbg !312
  ret void, !dbg !313
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(ptr noundef %0, ptr noundef %1) #3 !dbg !115 {
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
    #dbg_declare(ptr %3, !314, !DIExpression(), !315)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !316, !DIExpression(), !317)
  %14 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !318
  %15 = icmp eq i32 %14, -1, !dbg !320
  br i1 %15, label %16, label %30, !dbg !320

16:                                               ; preds = %2
    #dbg_declare(ptr %5, !321, !DIExpression(), !323)
  %17 = call ptr @getenv(ptr noundef @.str.15) #10, !dbg !324
  store ptr %17, ptr %5, align 8, !dbg !323
  %18 = load ptr, ptr %5, align 8, !dbg !325
  %19 = icmp ne ptr %18, null, !dbg !325
  br i1 %19, label %20, label %27, !dbg !326

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 8, !dbg !327
  %22 = load i8, ptr %21, align 1, !dbg !328
  %23 = icmp ne i8 %22, 0, !dbg !328
  br i1 %23, label %24, label %27, !dbg !329

24:                                               ; preds = %20
  %25 = load ptr, ptr %5, align 8, !dbg !330
  %26 = call zeroext i1 @streq(ptr noundef %25, ptr noundef @.str.16), !dbg !331
  br label %27, !dbg !329

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !329
  store i32 %29, ptr @oputs_.help_no_sgr, align 4, !dbg !332
  br label %30, !dbg !333

30:                                               ; preds = %27, %2
  %31 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !334
  %32 = icmp ne i32 %31, 0, !dbg !334
  br i1 %32, label %33, label %37, !dbg !334

33:                                               ; preds = %30
  %34 = load ptr, ptr %4, align 8, !dbg !336
  %35 = load ptr, ptr @stdout, align 8, !dbg !338
  %36 = call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !339
  br label %274, !dbg !340

37:                                               ; preds = %30
    #dbg_declare(ptr %6, !341, !DIExpression(), !342)
  store i8 1, ptr %6, align 1, !dbg !342
    #dbg_declare(ptr %7, !343, !DIExpression(), !344)
  %38 = load ptr, ptr %4, align 8, !dbg !345
  %39 = load ptr, ptr %4, align 8, !dbg !346
  %40 = call i64 @strspn(ptr noundef %39, ptr noundef @.str.17) #12, !dbg !347
  %41 = getelementptr inbounds nuw i8, ptr %38, i64 %40, !dbg !348
  store ptr %41, ptr %7, align 8, !dbg !344
    #dbg_declare(ptr %8, !349, !DIExpression(), !350)
  %42 = load ptr, ptr %4, align 8, !dbg !351
  %43 = call ptr @strchr(ptr noundef %42, i32 noundef 45) #12, !dbg !352
  store ptr %43, ptr %8, align 8, !dbg !350
  %44 = load ptr, ptr %8, align 8, !dbg !353
  %45 = icmp ne ptr %44, null, !dbg !353
  br i1 %45, label %48, label %46, !dbg !355

46:                                               ; preds = %37
  %47 = load ptr, ptr %7, align 8, !dbg !356
  store ptr %47, ptr %8, align 8, !dbg !358
  store i8 0, ptr %6, align 1, !dbg !359
  br label %89, !dbg !360

48:                                               ; preds = %37
  %49 = load ptr, ptr %8, align 8, !dbg !361
  %50 = load ptr, ptr %7, align 8, !dbg !363
  %51 = icmp ne ptr %49, %50, !dbg !364
  br i1 %51, label %52, label %88, !dbg !364

52:                                               ; preds = %48
    #dbg_declare(ptr %9, !365, !DIExpression(), !367)
  %53 = load ptr, ptr %7, align 8, !dbg !368
  store ptr %53, ptr %9, align 8, !dbg !367
    #dbg_declare(ptr %10, !369, !DIExpression(), !373)
  store i64 0, ptr %10, align 8, !dbg !373
  br label %54, !dbg !374

54:                                               ; preds = %63, %52
  %55 = load ptr, ptr %9, align 8, !dbg !375
  %56 = load ptr, ptr %8, align 8, !dbg !376
  %57 = icmp ult ptr %55, %56, !dbg !377
  br i1 %57, label %58, label %61, !dbg !378

58:                                               ; preds = %54
  %59 = load i64, ptr %10, align 8, !dbg !379
  %60 = icmp ult i64 %59, 2, !dbg !380
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !381
  br i1 %62, label %63, label %82, !dbg !374

63:                                               ; preds = %61
  %64 = call ptr @__ctype_b_loc() #13, !dbg !382
  %65 = load ptr, ptr %64, align 8, !dbg !382
  %66 = load ptr, ptr %9, align 8, !dbg !383
  %67 = getelementptr inbounds nuw i8, ptr %66, i32 1, !dbg !383
  store ptr %67, ptr %9, align 8, !dbg !383
  %68 = load i8, ptr %66, align 1, !dbg !384
  %69 = sext i8 %68 to i32, !dbg !382
  %70 = sext i32 %69 to i64, !dbg !382
  %71 = getelementptr inbounds i16, ptr %65, i64 %70, !dbg !382
  %72 = load i16, ptr %71, align 2, !dbg !382
  %73 = zext i16 %72 to i32, !dbg !382
  %74 = and i32 %73, 8192, !dbg !382
  %75 = icmp ne i32 %74, 0, !dbg !385
  %76 = xor i1 %75, true, !dbg !385
  %77 = xor i1 %76, true, !dbg !386
  %78 = zext i1 %77 to i32, !dbg !386
  %79 = sext i32 %78 to i64, !dbg !386
  %80 = load i64, ptr %10, align 8, !dbg !387
  %81 = add i64 %80, %79, !dbg !387
  store i64 %81, ptr %10, align 8, !dbg !387
  br label %54, !dbg !374, !llvm.loop !388

82:                                               ; preds = %61
  %83 = load i64, ptr %10, align 8, !dbg !390
  %84 = icmp eq i64 %83, 2, !dbg !392
  br i1 %84, label %85, label %87, !dbg !392

85:                                               ; preds = %82
  %86 = load ptr, ptr %7, align 8, !dbg !393
  store ptr %86, ptr %8, align 8, !dbg !395
  store i8 0, ptr %6, align 1, !dbg !396
  br label %87, !dbg !397

87:                                               ; preds = %85, %82
  br label %88, !dbg !398

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
    #dbg_declare(ptr %11, !399, !DIExpression(), !400)
  %90 = load ptr, ptr %8, align 8, !dbg !401
  %91 = call i64 @strcspn(ptr noundef %90, ptr noundef @.str.18) #12, !dbg !402
  store i64 %91, ptr %11, align 8, !dbg !400
    #dbg_declare(ptr %12, !403, !DIExpression(), !404)
  %92 = load ptr, ptr %8, align 8, !dbg !405
  %93 = load i64, ptr %11, align 8, !dbg !406
  %94 = getelementptr inbounds nuw i8, ptr %92, i64 %93, !dbg !407
  store ptr %94, ptr %12, align 8, !dbg !404
  br label %95, !dbg !408

95:                                               ; preds = %161, %89
  %96 = load ptr, ptr %12, align 8, !dbg !409
  %97 = load i8, ptr %96, align 1, !dbg !410
  %98 = sext i8 %97 to i32, !dbg !410
  %99 = icmp ne i32 %98, 0, !dbg !410
  br i1 %99, label %100, label %105, !dbg !411

100:                                              ; preds = %95
  %101 = load ptr, ptr %12, align 8, !dbg !412
  %102 = load i8, ptr %101, align 1, !dbg !413
  %103 = sext i8 %102 to i32, !dbg !413
  %104 = icmp ne i32 %103, 10, !dbg !414
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !415
  br i1 %106, label %107, label %164, !dbg !408

107:                                              ; preds = %105
  %108 = load ptr, ptr %12, align 8, !dbg !416
  %109 = load i8, ptr %108, align 1, !dbg !419
  %110 = sext i8 %109 to i32, !dbg !419
  %111 = icmp eq i32 %110, 45, !dbg !420
  br i1 %111, label %112, label %119, !dbg !421

112:                                              ; preds = %107
  %113 = load ptr, ptr %12, align 8, !dbg !422
  %114 = getelementptr inbounds i8, ptr %113, i64 1, !dbg !423
  %115 = load i8, ptr %114, align 1, !dbg !423
  %116 = sext i8 %115 to i32, !dbg !423
  %117 = icmp eq i32 %116, 45, !dbg !424
  br i1 %117, label %118, label %119, !dbg !421

118:                                              ; preds = %112
  store i8 0, ptr %6, align 1, !dbg !425
  br label %119, !dbg !426

119:                                              ; preds = %118, %112, %107
  %120 = call ptr @__ctype_b_loc() #13, !dbg !427
  %121 = load ptr, ptr %120, align 8, !dbg !427
  %122 = load ptr, ptr %12, align 8, !dbg !429
  %123 = load i8, ptr %122, align 1, !dbg !430
  %124 = sext i8 %123 to i32, !dbg !427
  %125 = sext i32 %124 to i64, !dbg !427
  %126 = getelementptr inbounds i16, ptr %121, i64 %125, !dbg !427
  %127 = load i16, ptr %126, align 2, !dbg !427
  %128 = zext i16 %127 to i32, !dbg !427
  %129 = and i32 %128, 8192, !dbg !427
  %130 = icmp ne i32 %129, 0, !dbg !427
  br i1 %130, label %131, label %161, !dbg !427

131:                                              ; preds = %119
  %132 = load ptr, ptr %12, align 8, !dbg !431
  %133 = load i8, ptr %132, align 1, !dbg !434
  %134 = sext i8 %133 to i32, !dbg !434
  %135 = icmp eq i32 %134, 9, !dbg !435
  br i1 %135, label %149, label %136, !dbg !436

136:                                              ; preds = %131
  %137 = call ptr @__ctype_b_loc() #13, !dbg !437
  %138 = load ptr, ptr %137, align 8, !dbg !437
  %139 = load ptr, ptr %12, align 8, !dbg !438
  %140 = getelementptr inbounds i8, ptr %139, i64 1, !dbg !439
  %141 = load i8, ptr %140, align 1, !dbg !439
  %142 = sext i8 %141 to i32, !dbg !437
  %143 = sext i32 %142 to i64, !dbg !437
  %144 = getelementptr inbounds i16, ptr %138, i64 %143, !dbg !437
  %145 = load i16, ptr %144, align 2, !dbg !437
  %146 = zext i16 %145 to i32, !dbg !437
  %147 = and i32 %146, 8192, !dbg !437
  %148 = icmp ne i32 %147, 0, !dbg !437
  br i1 %148, label %149, label %150, !dbg !436

149:                                              ; preds = %136, %131
  br label %164, !dbg !440

150:                                              ; preds = %136
  %151 = load i8, ptr %6, align 1, !dbg !441
  %152 = trunc i8 %151 to i1, !dbg !441
  br i1 %152, label %160, label %153, !dbg !443

153:                                              ; preds = %150
  %154 = load ptr, ptr %12, align 8, !dbg !444
  %155 = getelementptr inbounds i8, ptr %154, i64 1, !dbg !445
  %156 = load i8, ptr %155, align 1, !dbg !445
  %157 = sext i8 %156 to i32, !dbg !445
  %158 = icmp ne i32 %157, 45, !dbg !446
  br i1 %158, label %159, label %160, !dbg !443

159:                                              ; preds = %153
  br label %164, !dbg !447

160:                                              ; preds = %153, %150
  br label %161, !dbg !448

161:                                              ; preds = %160, %119
  %162 = load ptr, ptr %12, align 8, !dbg !449
  %163 = getelementptr inbounds nuw i8, ptr %162, i32 1, !dbg !449
  store ptr %163, ptr %12, align 8, !dbg !449
  br label %95, !dbg !408, !llvm.loop !450

164:                                              ; preds = %159, %149, %105
  %165 = load ptr, ptr %4, align 8, !dbg !452
  %166 = load ptr, ptr %7, align 8, !dbg !453
  %167 = load ptr, ptr %4, align 8, !dbg !454
  %168 = ptrtoint ptr %166 to i64, !dbg !455
  %169 = ptrtoint ptr %167 to i64, !dbg !455
  %170 = sub i64 %168, %169, !dbg !455
  %171 = load ptr, ptr @stdout, align 8, !dbg !456
  %172 = call i64 @fwrite_unlocked(ptr noundef %165, i64 noundef 1, i64 noundef %170, ptr noundef %171), !dbg !457
    #dbg_declare(ptr %13, !458, !DIExpression(), !459)
  %173 = load ptr, ptr %3, align 8, !dbg !460
  %174 = call zeroext i1 @streq(ptr noundef %173, ptr noundef @.str.19), !dbg !461
  br i1 %174, label %175, label %176, !dbg !461

175:                                              ; preds = %164
  br label %232, !dbg !461

176:                                              ; preds = %164
  %177 = load ptr, ptr %3, align 8, !dbg !462
  %178 = call zeroext i1 @streq(ptr noundef %177, ptr noundef @.str.21), !dbg !463
  br i1 %178, label %179, label %180, !dbg !463

179:                                              ; preds = %176
  br label %230, !dbg !463

180:                                              ; preds = %176
  %181 = load ptr, ptr %3, align 8, !dbg !464
  %182 = call zeroext i1 @streq(ptr noundef %181, ptr noundef @.str.23), !dbg !465
  br i1 %182, label %183, label %184, !dbg !465

183:                                              ; preds = %180
  br label %228, !dbg !465

184:                                              ; preds = %180
  %185 = load ptr, ptr %3, align 8, !dbg !466
  %186 = call zeroext i1 @streq(ptr noundef %185, ptr noundef @.str.24), !dbg !467
  br i1 %186, label %187, label %188, !dbg !467

187:                                              ; preds = %184
  br label %226, !dbg !467

188:                                              ; preds = %184
  %189 = load ptr, ptr %3, align 8, !dbg !468
  %190 = call zeroext i1 @streq(ptr noundef %189, ptr noundef @.str.26), !dbg !469
  br i1 %190, label %191, label %192, !dbg !469

191:                                              ; preds = %188
  br label %224, !dbg !469

192:                                              ; preds = %188
  %193 = load ptr, ptr %3, align 8, !dbg !470
  %194 = call zeroext i1 @streq(ptr noundef %193, ptr noundef @.str.27), !dbg !471
  br i1 %194, label %195, label %196, !dbg !471

195:                                              ; preds = %192
  br label %222, !dbg !471

196:                                              ; preds = %192
  %197 = load ptr, ptr %3, align 8, !dbg !472
  %198 = call zeroext i1 @streq(ptr noundef %197, ptr noundef @.str.28), !dbg !473
  br i1 %198, label %199, label %200, !dbg !473

199:                                              ; preds = %196
  br label %220, !dbg !473

200:                                              ; preds = %196
  %201 = load ptr, ptr %3, align 8, !dbg !474
  %202 = call zeroext i1 @streq(ptr noundef %201, ptr noundef @.str.29), !dbg !475
  br i1 %202, label %203, label %204, !dbg !475

203:                                              ; preds = %200
  br label %218, !dbg !475

204:                                              ; preds = %200
  %205 = load ptr, ptr %3, align 8, !dbg !476
  %206 = call zeroext i1 @streq(ptr noundef %205, ptr noundef @.str.30), !dbg !477
  br i1 %206, label %207, label %208, !dbg !477

207:                                              ; preds = %204
  br label %216, !dbg !477

208:                                              ; preds = %204
  %209 = load ptr, ptr %3, align 8, !dbg !478
  %210 = call zeroext i1 @streq(ptr noundef %209, ptr noundef @.str.31), !dbg !479
  br i1 %210, label %211, label %212, !dbg !479

211:                                              ; preds = %208
  br label %214, !dbg !479

212:                                              ; preds = %208
  %213 = load ptr, ptr %3, align 8, !dbg !480
  br label %214, !dbg !479

214:                                              ; preds = %212, %211
  %215 = phi ptr [ @.str.25, %211 ], [ %213, %212 ], !dbg !479
  br label %216, !dbg !477

216:                                              ; preds = %214, %207
  %217 = phi ptr [ @.str.25, %207 ], [ %215, %214 ], !dbg !477
  br label %218, !dbg !475

218:                                              ; preds = %216, %203
  %219 = phi ptr [ @.str.25, %203 ], [ %217, %216 ], !dbg !475
  br label %220, !dbg !473

220:                                              ; preds = %218, %199
  %221 = phi ptr [ @.str.25, %199 ], [ %219, %218 ], !dbg !473
  br label %222, !dbg !471

222:                                              ; preds = %220, %195
  %223 = phi ptr [ @.str.25, %195 ], [ %221, %220 ], !dbg !471
  br label %224, !dbg !469

224:                                              ; preds = %222, %191
  %225 = phi ptr [ @.str.25, %191 ], [ %223, %222 ], !dbg !469
  br label %226, !dbg !467

226:                                              ; preds = %224, %187
  %227 = phi ptr [ @.str.25, %187 ], [ %225, %224 ], !dbg !467
  br label %228, !dbg !465

228:                                              ; preds = %226, %183
  %229 = phi ptr [ @.str.22, %183 ], [ %227, %226 ], !dbg !465
  br label %230, !dbg !463

230:                                              ; preds = %228, %179
  %231 = phi ptr [ @.str.22, %179 ], [ %229, %228 ], !dbg !463
  br label %232, !dbg !461

232:                                              ; preds = %230, %175
  %233 = phi ptr [ @.str.20, %175 ], [ %231, %230 ], !dbg !461
  store ptr %233, ptr %13, align 8, !dbg !459
  %234 = load ptr, ptr %8, align 8, !dbg !481
  %235 = call i32 @strncmp(ptr noundef %234, ptr noundef @.str.32, i64 noundef 6) #12, !dbg !483
  %236 = icmp eq i32 %235, 0, !dbg !483
  br i1 %236, label %241, label %237, !dbg !484

237:                                              ; preds = %232
  %238 = load ptr, ptr %8, align 8, !dbg !485
  %239 = call i32 @strncmp(ptr noundef %238, ptr noundef @.str.33, i64 noundef 9) #12, !dbg !486
  %240 = icmp eq i32 %239, 0, !dbg !486
  br i1 %240, label %241, label %248, !dbg !484

241:                                              ; preds = %237, %232
  %242 = load ptr, ptr %13, align 8, !dbg !487
  %243 = load ptr, ptr %13, align 8, !dbg !489
  %244 = load i64, ptr %11, align 8, !dbg !490
  %245 = trunc i64 %244 to i32, !dbg !491
  %246 = load ptr, ptr %8, align 8, !dbg !492
  %247 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str.34, ptr noundef @.str.35, ptr noundef %242, ptr noundef %243, i32 noundef %245, ptr noundef %246), !dbg !493
  br label %254, !dbg !494

248:                                              ; preds = %237
  %249 = load ptr, ptr %13, align 8, !dbg !495
  %250 = load i64, ptr %11, align 8, !dbg !497
  %251 = trunc i64 %250 to i32, !dbg !498
  %252 = load ptr, ptr %8, align 8, !dbg !499
  %253 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str.36, ptr noundef @.str.37, ptr noundef %249, i32 noundef %251, ptr noundef %252), !dbg !500
  br label %254

254:                                              ; preds = %248, %241
  %255 = load ptr, ptr @stdout, align 8, !dbg !501
  %256 = call i32 @fputs_unlocked(ptr noundef @.str.38, ptr noundef %255), !dbg !502
  %257 = load ptr, ptr @stdout, align 8, !dbg !503
  %258 = call i32 @fputs_unlocked(ptr noundef @.str.39, ptr noundef %257), !dbg !504
  %259 = load ptr, ptr %7, align 8, !dbg !505
  %260 = load ptr, ptr %12, align 8, !dbg !506
  %261 = load ptr, ptr %7, align 8, !dbg !507
  %262 = ptrtoint ptr %260 to i64, !dbg !508
  %263 = ptrtoint ptr %261 to i64, !dbg !508
  %264 = sub i64 %262, %263, !dbg !508
  %265 = load ptr, ptr @stdout, align 8, !dbg !509
  %266 = call i64 @fwrite_unlocked(ptr noundef %259, i64 noundef 1, i64 noundef %264, ptr noundef %265), !dbg !510
  %267 = load ptr, ptr @stdout, align 8, !dbg !511
  %268 = call i32 @fputs_unlocked(ptr noundef @.str.40, ptr noundef %267), !dbg !512
  %269 = load ptr, ptr @stdout, align 8, !dbg !513
  %270 = call i32 @fputs_unlocked(ptr noundef @.str.41, ptr noundef %269), !dbg !514
  %271 = load ptr, ptr %12, align 8, !dbg !515
  %272 = load ptr, ptr @stdout, align 8, !dbg !516
  %273 = call i32 @fputs_unlocked(ptr noundef %271, ptr noundef %272), !dbg !517
  br label %274, !dbg !518

274:                                              ; preds = %254, %33
  ret void, !dbg !518
}

declare void @emit_tab_list_info(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !519 {
  %2 = alloca ptr, align 8
  %3 = alloca [7 x %struct.infomap], align 16
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !522, !DIExpression(), !523)
    #dbg_declare(ptr %3, !524, !DIExpression(), !531)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %3, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !531
    #dbg_declare(ptr %4, !532, !DIExpression(), !533)
  %7 = load ptr, ptr %2, align 8, !dbg !534
  store ptr %7, ptr %4, align 8, !dbg !533
    #dbg_declare(ptr %5, !535, !DIExpression(), !537)
  %8 = getelementptr inbounds [7 x %struct.infomap], ptr %3, i64 0, i64 0, !dbg !538
  store ptr %8, ptr %5, align 8, !dbg !537
  br label %9, !dbg !539

9:                                                ; preds = %23, %1
  %10 = load ptr, ptr %5, align 8, !dbg !540
  %11 = getelementptr inbounds nuw %struct.infomap, ptr %10, i32 0, i32 0, !dbg !541
  %12 = load ptr, ptr %11, align 8, !dbg !541
  %13 = icmp ne ptr %12, null, !dbg !540
  br i1 %13, label %14, label %21, !dbg !542

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 8, !dbg !543
  %16 = load ptr, ptr %5, align 8, !dbg !544
  %17 = getelementptr inbounds nuw %struct.infomap, ptr %16, i32 0, i32 0, !dbg !545
  %18 = load ptr, ptr %17, align 8, !dbg !545
  %19 = call zeroext i1 @streq(ptr noundef %15, ptr noundef %18), !dbg !546
  %20 = xor i1 %19, true, !dbg !547
  br label %21

21:                                               ; preds = %14, %9
  %22 = phi i1 [ false, %9 ], [ %20, %14 ], !dbg !548
  br i1 %22, label %23, label %26, !dbg !539

23:                                               ; preds = %21
  %24 = load ptr, ptr %5, align 8, !dbg !549
  %25 = getelementptr inbounds nuw %struct.infomap, ptr %24, i32 1, !dbg !549
  store ptr %25, ptr %5, align 8, !dbg !549
  br label %9, !dbg !539, !llvm.loop !550

26:                                               ; preds = %21
  %27 = load ptr, ptr %5, align 8, !dbg !551
  %28 = getelementptr inbounds nuw %struct.infomap, ptr %27, i32 0, i32 1, !dbg !553
  %29 = load ptr, ptr %28, align 8, !dbg !553
  %30 = icmp ne ptr %29, null, !dbg !551
  br i1 %30, label %31, label %35, !dbg !551

31:                                               ; preds = %26
  %32 = load ptr, ptr %5, align 8, !dbg !554
  %33 = getelementptr inbounds nuw %struct.infomap, ptr %32, i32 0, i32 1, !dbg !555
  %34 = load ptr, ptr %33, align 8, !dbg !555
  store ptr %34, ptr %4, align 8, !dbg !556
  br label %35, !dbg !557

35:                                               ; preds = %31, %26
  call void @emit_bug_reporting_address(), !dbg !558
    #dbg_declare(ptr %6, !559, !DIExpression(), !560)
  %36 = load ptr, ptr %2, align 8, !dbg !561
  %37 = call zeroext i1 @streq(ptr noundef %36, ptr noundef @.str.19), !dbg !562
  br i1 %37, label %38, label %39, !dbg !562

38:                                               ; preds = %35
  br label %41, !dbg !562

39:                                               ; preds = %35
  %40 = load ptr, ptr %2, align 8, !dbg !563
  br label %41, !dbg !562

41:                                               ; preds = %39, %38
  %42 = phi ptr [ @.str.20, %38 ], [ %40, %39 ], !dbg !562
  store ptr %42, ptr %6, align 8, !dbg !560
  %43 = call ptr @gettext(ptr noundef @.str.45) #10, !dbg !564
  %44 = load ptr, ptr %6, align 8, !dbg !565
  %45 = call i32 (ptr, ...) @rpl_printf(ptr noundef %43, ptr noundef @.str.35, ptr noundef %44), !dbg !566
  %46 = call ptr @gettext(ptr noundef @.str.46) #10, !dbg !567
  %47 = load ptr, ptr %4, align 8, !dbg !568
  %48 = load ptr, ptr %4, align 8, !dbg !569
  %49 = load ptr, ptr %2, align 8, !dbg !570
  %50 = icmp eq ptr %48, %49, !dbg !571
  %51 = zext i1 %50 to i64, !dbg !569
  %52 = select i1 %50, ptr @.str.47, ptr @.str.8, !dbg !569
  %53 = call i32 (ptr, ...) @rpl_printf(ptr noundef %46, ptr noundef %47, ptr noundef %52), !dbg !572
  ret void, !dbg !573
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #3 !dbg !574 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i8], align 1
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
    #dbg_declare(ptr %4, !578, !DIExpression(), !579)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !580, !DIExpression(), !581)
    #dbg_declare(ptr %6, !582, !DIExpression(), !583)
  %8 = load ptr, ptr %5, align 8, !dbg !584
  %9 = getelementptr inbounds ptr, ptr %8, i64 0, !dbg !584
  %10 = load ptr, ptr %9, align 8, !dbg !584
  call void @set_program_name(ptr noundef %10), !dbg !585
  %11 = call ptr @setlocale(i32 noundef 6, ptr noundef @.str.8) #10, !dbg !586
  %12 = call ptr @bindtextdomain(ptr noundef @.str.9, ptr noundef @.str.10) #10, !dbg !587
  %13 = call ptr @textdomain(ptr noundef @.str.9) #10, !dbg !588
  %14 = call i32 @atexit(ptr noundef @close_stdout) #10, !dbg !589
  store i8 1, ptr @convert_entire_line, align 1, !dbg !590
  br label %15, !dbg !591

15:                                               ; preds = %44, %2
  %16 = load i32, ptr %4, align 4, !dbg !592
  %17 = load ptr, ptr %5, align 8, !dbg !593
  %18 = call i32 @getopt_long(i32 noundef %16, ptr noundef %17, ptr noundef @shortopts, ptr noundef @longopts, ptr noundef null) #10, !dbg !594
  store i32 %18, ptr %6, align 4, !dbg !595
  %19 = icmp ne i32 %18, -1, !dbg !596
  br i1 %19, label %20, label %45, !dbg !591

20:                                               ; preds = %15
  %21 = load i32, ptr %6, align 4, !dbg !597
  switch i32 %21, label %43 [
    i32 105, label %22
    i32 116, label %23
    i32 48, label %25
    i32 49, label %25
    i32 50, label %25
    i32 51, label %25
    i32 52, label %25
    i32 53, label %25
    i32 54, label %25
    i32 55, label %25
    i32 56, label %25
    i32 57, label %25
    i32 -130, label %38
    i32 -131, label %39
  ], !dbg !599

22:                                               ; preds = %20
  store i8 0, ptr @convert_entire_line, align 1, !dbg !600
  br label %44, !dbg !602

23:                                               ; preds = %20
  %24 = load ptr, ptr @optarg, align 8, !dbg !603
  call void @parse_tab_stops(ptr noundef %24), !dbg !604
  br label %44, !dbg !605

25:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20, %20, %20
  %26 = load ptr, ptr @optarg, align 8, !dbg !606
  %27 = icmp ne ptr %26, null, !dbg !606
  br i1 %27, label %28, label %31, !dbg !606

28:                                               ; preds = %25
  %29 = load ptr, ptr @optarg, align 8, !dbg !608
  %30 = getelementptr inbounds i8, ptr %29, i64 -1, !dbg !609
  call void @parse_tab_stops(ptr noundef %30), !dbg !610
  br label %37, !dbg !610

31:                                               ; preds = %25
    #dbg_declare(ptr %7, !611, !DIExpression(), !613)
  %32 = load i32, ptr %6, align 4, !dbg !614
  %33 = trunc i32 %32 to i8, !dbg !614
  %34 = getelementptr inbounds [2 x i8], ptr %7, i64 0, i64 0, !dbg !615
  store i8 %33, ptr %34, align 1, !dbg !616
  %35 = getelementptr inbounds [2 x i8], ptr %7, i64 0, i64 1, !dbg !617
  store i8 0, ptr %35, align 1, !dbg !618
  %36 = getelementptr inbounds [2 x i8], ptr %7, i64 0, i64 0, !dbg !619
  call void @parse_tab_stops(ptr noundef %36), !dbg !620
  br label %37

37:                                               ; preds = %31, %28
  br label %44, !dbg !621

38:                                               ; preds = %20
  call void @usage(i32 noundef 0) #14, !dbg !622
  unreachable, !dbg !622

39:                                               ; preds = %20
  %40 = load ptr, ptr @stdout, align 8, !dbg !623
  %41 = load ptr, ptr @Version, align 8, !dbg !623
  %42 = call ptr @proper_name_lite(ptr noundef @.str.12, ptr noundef @.str.12), !dbg !624
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %40, ptr noundef @.str.3, ptr noundef @.str.11, ptr noundef %41, ptr noundef %42, ptr noundef null), !dbg !623
  call void @exit(i32 noundef 0) #11, !dbg !623
  unreachable, !dbg !623

43:                                               ; preds = %20
  call void @usage(i32 noundef 1) #14, !dbg !625
  unreachable, !dbg !625

44:                                               ; preds = %37, %23, %22
  br label %15, !dbg !591, !llvm.loop !626

45:                                               ; preds = %15
  call void @finalize_tab_stops(), !dbg !628
  %46 = load i32, ptr @optind, align 4, !dbg !629
  %47 = load i32, ptr %4, align 4, !dbg !630
  %48 = icmp slt i32 %46, %47, !dbg !631
  br i1 %48, label %49, label %54, !dbg !629

49:                                               ; preds = %45
  %50 = load ptr, ptr %5, align 8, !dbg !632
  %51 = load i32, ptr @optind, align 4, !dbg !633
  %52 = sext i32 %51 to i64, !dbg !632
  %53 = getelementptr inbounds ptr, ptr %50, i64 %52, !dbg !632
  br label %55, !dbg !629

54:                                               ; preds = %45
  br label %55, !dbg !629

55:                                               ; preds = %54, %49
  %56 = phi ptr [ %53, %49 ], [ null, %54 ], !dbg !629
  call void @set_file_list(ptr noundef %56), !dbg !634
  call void @expand(), !dbg !635
  call void @cleanup_file_list_stdin(), !dbg !636
  %57 = load i32, ptr @exit_status, align 4, !dbg !637
  ret i32 %57, !dbg !638
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

declare void @parse_tab_stops(ptr noundef) #2

declare void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare ptr @proper_name_lite(ptr noundef, ptr noundef) #2

declare void @finalize_tab_stops() #2

declare void @set_file_list(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand() #3 !dbg !248 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.mbbuf_t, align 8
  %3 = alloca %struct.mcel_t, align 4
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mcel_t, align 4
  %8 = alloca %struct.mcel_t, align 4
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
    #dbg_declare(ptr %1, !639, !DIExpression(), !692)
  %12 = call ptr @next_file(ptr noundef null), !dbg !693
  store ptr %12, ptr %1, align 8, !dbg !692
  %13 = load ptr, ptr %1, align 8, !dbg !694
  %14 = icmp ne ptr %13, null, !dbg !694
  br i1 %14, label %16, label %15, !dbg !696

15:                                               ; preds = %0
  br label %138, !dbg !697

16:                                               ; preds = %0
    #dbg_declare(ptr %2, !698, !DIExpression(), !711)
  %17 = load ptr, ptr %1, align 8, !dbg !712
  call void @mbbuf_init(ptr noundef %2, ptr noundef @expand.line_in, i64 noundef 262144, ptr noundef %17), !dbg !713
  br label %18, !dbg !714

18:                                               ; preds = %16, %137
    #dbg_declare(ptr %3, !715, !DIExpression(), !728)
    #dbg_declare(ptr %4, !729, !DIExpression(), !730)
  store i8 1, ptr %4, align 1, !dbg !730
    #dbg_declare(ptr %5, !731, !DIExpression(), !737)
  store i64 0, ptr %5, align 8, !dbg !737
    #dbg_declare(ptr %6, !738, !DIExpression(), !739)
  store i64 0, ptr %6, align 8, !dbg !739
  br label %19, !dbg !740

19:                                               ; preds = %133, %18
  br label %20, !dbg !741

20:                                               ; preds = %31, %19
  %21 = call i64 @mbbuf_get_char(ptr noundef %2), !dbg !743
  store i64 %21, ptr %8, align 4, !dbg !743
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %8, i64 8, i1 false), !dbg !743
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %7, ptr align 4 %3, i64 8, i1 false), !dbg !744
  %22 = getelementptr inbounds nuw %struct.mcel_t, ptr %7, i32 0, i32 0, !dbg !745
  %23 = load i32, ptr %22, align 4, !dbg !745
  %24 = icmp eq i32 %23, 1114112, !dbg !746
  br i1 %24, label %25, label %29, !dbg !747

25:                                               ; preds = %20
  %26 = load ptr, ptr %1, align 8, !dbg !748
  %27 = call ptr @next_file(ptr noundef %26), !dbg !749
  store ptr %27, ptr %1, align 8, !dbg !750
  %28 = icmp ne ptr %27, null, !dbg !747
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i1 [ false, %20 ], [ %28, %25 ], !dbg !751
  br i1 %30, label %31, label %33, !dbg !741

31:                                               ; preds = %29
  %32 = load ptr, ptr %1, align 8, !dbg !752
  call void @mbbuf_init(ptr noundef %2, ptr noundef @expand.line_in, i64 noundef 262144, ptr noundef %32), !dbg !753
  br label %20, !dbg !741, !llvm.loop !754

33:                                               ; preds = %29
  %34 = load i8, ptr %4, align 1, !dbg !756
  %35 = trunc i8 %34 to i1, !dbg !756
  br i1 %35, label %36, label %115, !dbg !756

36:                                               ; preds = %33
  %37 = load i8, ptr @convert_entire_line, align 1, !dbg !758
  %38 = trunc i8 %37 to i1, !dbg !758
  br i1 %38, label %43, label %39, !dbg !760

39:                                               ; preds = %36
  %40 = getelementptr inbounds nuw %struct.mcel_t, ptr %3, i32 0, i32 0, !dbg !761
  %41 = load i32, ptr %40, align 4, !dbg !761
  %42 = call zeroext i1 @c32issep(i32 noundef %41) #12, !dbg !762
  br label %43, !dbg !760

43:                                               ; preds = %39, %36
  %44 = phi i1 [ true, %36 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32, !dbg !760
  %46 = load i8, ptr %4, align 1, !dbg !763
  %47 = trunc i8 %46 to i1, !dbg !763
  %48 = zext i1 %47 to i32, !dbg !763
  %49 = and i32 %48, %45, !dbg !763
  %50 = icmp ne i32 %49, 0, !dbg !763
  %51 = zext i1 %50 to i8, !dbg !763
  store i8 %51, ptr %4, align 1, !dbg !763
  %52 = getelementptr inbounds nuw %struct.mcel_t, ptr %3, i32 0, i32 0, !dbg !764
  %53 = load i32, ptr %52, align 4, !dbg !764
  %54 = icmp eq i32 %53, 9, !dbg !766
  br i1 %54, label %55, label %73, !dbg !766

55:                                               ; preds = %43
    #dbg_declare(ptr %9, !767, !DIExpression(), !769)
    #dbg_declare(ptr %10, !770, !DIExpression(), !771)
  %56 = load i64, ptr %5, align 8, !dbg !772
  %57 = call i64 @get_next_tab_column(i64 noundef %56, ptr noundef %6, ptr noundef %9), !dbg !773
  store i64 %57, ptr %10, align 8, !dbg !771
  br label %58, !dbg !774

58:                                               ; preds = %67, %55
  %59 = load i64, ptr %5, align 8, !dbg !775
  %60 = add nsw i64 %59, 1, !dbg !775
  store i64 %60, ptr %5, align 8, !dbg !775
  %61 = load i64, ptr %10, align 8, !dbg !776
  %62 = icmp slt i64 %60, %61, !dbg !777
  br i1 %62, label %63, label %68, !dbg !774

63:                                               ; preds = %58
  %64 = call i32 @putchar_unlocked(i32 noundef 32), !dbg !778
  %65 = icmp slt i32 %64, 0, !dbg !780
  br i1 %65, label %66, label %67, !dbg !780

66:                                               ; preds = %63
  call void @write_error(), !dbg !781
  br label %67, !dbg !781

67:                                               ; preds = %66, %63
  br label %58, !dbg !774, !llvm.loop !782

68:                                               ; preds = %58
  %69 = call i32 @putchar_unlocked(i32 noundef 32), !dbg !784
  %70 = icmp slt i32 %69, 0, !dbg !786
  br i1 %70, label %71, label %72, !dbg !786

71:                                               ; preds = %68
  call void @write_error(), !dbg !787
  br label %72, !dbg !787

72:                                               ; preds = %71, %68
  br label %133, !dbg !788

73:                                               ; preds = %43
  %74 = getelementptr inbounds nuw %struct.mcel_t, ptr %3, i32 0, i32 0, !dbg !789
  %75 = load i32, ptr %74, align 4, !dbg !789
  %76 = icmp eq i32 %75, 8, !dbg !791
  br i1 %76, label %77, label %94, !dbg !791

77:                                               ; preds = %73
  %78 = load i64, ptr %5, align 8, !dbg !792
  %79 = icmp ne i64 %78, 0, !dbg !794
  %80 = xor i1 %79, true, !dbg !794
  %81 = xor i1 %80, true, !dbg !795
  %82 = zext i1 %81 to i32, !dbg !795
  %83 = sext i32 %82 to i64, !dbg !795
  %84 = load i64, ptr %5, align 8, !dbg !796
  %85 = sub nsw i64 %84, %83, !dbg !796
  store i64 %85, ptr %5, align 8, !dbg !796
  %86 = load i64, ptr %6, align 8, !dbg !797
  %87 = icmp ne i64 %86, 0, !dbg !798
  %88 = xor i1 %87, true, !dbg !798
  %89 = xor i1 %88, true, !dbg !799
  %90 = zext i1 %89 to i32, !dbg !799
  %91 = sext i32 %90 to i64, !dbg !799
  %92 = load i64, ptr %6, align 8, !dbg !800
  %93 = sub nsw i64 %92, %91, !dbg !800
  store i64 %93, ptr %6, align 8, !dbg !800
  br label %113, !dbg !801

94:                                               ; preds = %73
    #dbg_declare(ptr %11, !802, !DIExpression(), !804)
  %95 = getelementptr inbounds nuw %struct.mcel_t, ptr %3, i32 0, i32 0, !dbg !805
  %96 = load i32, ptr %95, align 4, !dbg !805
  %97 = call i32 @c32width(i32 noundef %96), !dbg !806
  store i32 %97, ptr %11, align 4, !dbg !804
  %98 = load i64, ptr %5, align 8, !dbg !807
  %99 = load i32, ptr %11, align 4, !dbg !809
  %100 = icmp slt i32 %99, 0, !dbg !810
  br i1 %100, label %101, label %102, !dbg !809

101:                                              ; preds = %94
  br label %104, !dbg !809

102:                                              ; preds = %94
  %103 = load i32, ptr %11, align 4, !dbg !811
  br label %104, !dbg !809

104:                                              ; preds = %102, %101
  %105 = phi i32 [ 1, %101 ], [ %103, %102 ], !dbg !809
  %106 = sext i32 %105 to i64, !dbg !812
  %107 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %98, i64 %106), !dbg !812
  %108 = extractvalue { i64, i1 } %107, 1, !dbg !812
  %109 = extractvalue { i64, i1 } %107, 0, !dbg !812
  store i64 %109, ptr %5, align 8, !dbg !812
  br i1 %108, label %110, label %112, !dbg !812

110:                                              ; preds = %104
  %111 = call ptr @gettext(ptr noundef @.str.53) #10, !dbg !813
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %111), !dbg !814
  unreachable, !dbg !814

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %77
  br label %114

114:                                              ; preds = %113
  br label %115, !dbg !815

115:                                              ; preds = %114, %33
  %116 = getelementptr inbounds nuw %struct.mcel_t, ptr %3, i32 0, i32 0, !dbg !816
  %117 = load i32, ptr %116, align 4, !dbg !816
  %118 = icmp eq i32 %117, 1114112, !dbg !818
  br i1 %118, label %119, label %120, !dbg !818

119:                                              ; preds = %115
  br label %138, !dbg !819

120:                                              ; preds = %115
  %121 = load i64, ptr %3, align 4, !dbg !820
  %122 = call ptr @mbbuf_char_offset(ptr noundef %2, i64 %121), !dbg !820
  %123 = getelementptr inbounds nuw %struct.mcel_t, ptr %3, i32 0, i32 2, !dbg !821
  %124 = load i8, ptr %123, align 1, !dbg !821
  %125 = zext i8 %124 to i64, !dbg !822
  %126 = load ptr, ptr @stdout, align 8, !dbg !823
  %127 = call i64 @fwrite_unlocked(ptr noundef %122, i64 noundef 1, i64 noundef %125, ptr noundef %126), !dbg !824
  %128 = load ptr, ptr @stdout, align 8, !dbg !825
  %129 = call i32 @ferror_unlocked(ptr noundef %128) #10, !dbg !827
  %130 = icmp ne i32 %129, 0, !dbg !827
  br i1 %130, label %131, label %132, !dbg !827

131:                                              ; preds = %120
  call void @write_error(), !dbg !828
  br label %132, !dbg !828

132:                                              ; preds = %131, %120
  br label %133, !dbg !829

133:                                              ; preds = %132, %72
  %134 = getelementptr inbounds nuw %struct.mcel_t, ptr %3, i32 0, i32 0, !dbg !830
  %135 = load i32, ptr %134, align 4, !dbg !830
  %136 = icmp ne i32 %135, 10, !dbg !831
  br i1 %136, label %19, label %137, !dbg !829, !llvm.loop !832

137:                                              ; preds = %133
  br label %18, !dbg !714, !llvm.loop !834

138:                                              ; preds = %119, %15
  ret void, !dbg !836
}

declare void @cleanup_file_list_stdin() #2

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #1

declare zeroext i1 @streq(ptr noundef, ptr noundef) #2

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

declare ptr @next_file(ptr noundef) #2

declare void @mbbuf_init(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i64 @mbbuf_get_char(ptr noundef) #2

; Function Attrs: noinline nounwind optnone willreturn memory(read) uwtable
define internal zeroext i1 @c32issep(i32 noundef %0) #8 !dbg !837 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !840, !DIExpression(), !841)
  %3 = load i32, ptr %2, align 4, !dbg !842
  %4 = call i32 @c32isblank(i32 noundef %3), !dbg !843
  %5 = icmp ne i32 %4, 0, !dbg !844
  %6 = xor i1 %5, true, !dbg !844
  %7 = xor i1 %6, true, !dbg !845
  ret i1 %7, !dbg !846
}

declare i64 @get_next_tab_column(i64 noundef, ptr noundef, ptr noundef) #2

declare i32 @putchar_unlocked(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_error() #3 !dbg !847 {
  %1 = alloca i32, align 4
    #dbg_declare(ptr %1, !848, !DIExpression(), !849)
  %2 = call ptr @__errno_location() #13, !dbg !850
  %3 = load i32, ptr %2, align 4, !dbg !850
  store i32 %3, ptr %1, align 4, !dbg !849
  %4 = load ptr, ptr @stdout, align 8, !dbg !851
  %5 = call i32 @fflush_unlocked(ptr noundef %4), !dbg !852
  %6 = load ptr, ptr @stdout, align 8, !dbg !853
  %7 = call i32 @fpurge(ptr noundef %6), !dbg !854
  %8 = load ptr, ptr @stdout, align 8, !dbg !855
  call void @clearerr_unlocked(ptr noundef %8) #10, !dbg !856
  %9 = load i32, ptr %1, align 4, !dbg !857
  %10 = call ptr @gettext(ptr noundef @.str.54) #10, !dbg !858
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %9, ptr noundef %10), !dbg !859
  unreachable, !dbg !859
}

declare i32 @c32width(i32 noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #9

declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

declare ptr @mbbuf_char_offset(ptr noundef, i64) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(ptr noundef) #1

declare i32 @c32isblank(i32 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #6

declare i32 @fflush_unlocked(ptr noundef) #2

declare i32 @fpurge(ptr noundef) #2

; Function Attrs: nounwind
declare void @clearerr_unlocked(ptr noundef) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noinline nounwind optnone willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { noreturn }

!llvm.dbg.cu = !{!59}
!llvm.module.flags = !{!264, !265, !266, !267, !268, !269, !270}
!llvm.ident = !{!271}

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
!58 = distinct !DIGlobalVariable(name: "shortopts", scope: !59, file: !2, line: 52, type: !261, isLocal: true, isDefinition: true)
!59 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !60, retainedTypes: !87, globals: !92, splitDebugInlining: false, nameTableKind: None)
!60 = !{!61, !67, !83}
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
!87 = !{!88, !89, !63, !90, !91}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!90 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!91 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!92 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !93, !98, !103, !108, !113, !121, !126, !128, !133, !138, !143, !145, !147, !152, !154, !156, !158, !160, !165, !167, !169, !171, !173, !175, !177, !182, !187, !192, !194, !196, !198, !200, !202, !204, !209, !211, !216, !221, !57, !226, !228, !230, !232, !234, !246, !254, !259}
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 229, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 14)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 229, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 16)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !62, line: 748, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 56)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !62, line: 755, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 75)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !115, file: !62, line: 594, type: !63, isLocal: true, isDefinition: true)
!115 = distinct !DISubprogram(name: "oputs_", scope: !62, file: !62, line: 592, type: !116, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !120)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !118, !118}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!120 = !{}
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !62, line: 604, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 5)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !62, line: 605, type: !123, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !62, line: 614, type: !130, isLocal: true, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 4)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !62, line: 639, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 6)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !62, line: 667, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 2)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !62, line: 667, type: !123, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !62, line: 668, type: !130, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !62, line: 668, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 3)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !62, line: 669, type: !123, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !62, line: 670, type: !135, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !62, line: 670, type: !135, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !62, line: 671, type: !19, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !62, line: 672, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 8)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !62, line: 673, type: !49, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !62, line: 674, type: !49, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !62, line: 675, type: !49, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !62, line: 676, type: !49, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !62, line: 682, type: !19, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !62, line: 683, type: !49, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !62, line: 688, type: !179, isLocal: true, isDefinition: true)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 17)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !62, line: 688, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 40)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !62, line: 695, type: !189, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 15)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !62, line: 695, type: !29, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !62, line: 698, type: !149, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !62, line: 702, type: !123, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !62, line: 707, type: !123, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !62, line: 710, type: !162, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !62, line: 858, type: !100, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !62, line: 859, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 22)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !62, line: 860, type: !189, isLocal: true, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !62, line: 882, type: !213, isLocal: true, isDefinition: true)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 27)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !62, line: 884, type: !218, isLocal: true, isDefinition: true)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 51)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !62, line: 885, type: !223, isLocal: true, isDefinition: true)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 12)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !123, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !162, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !123, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !162, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "longopts", scope: !59, file: !2, line: 54, type: !236, isLocal: true, isDefinition: true)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 1280, elements: !124)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !239, line: 50, size: 256, elements: !240)
!239 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!240 = !{!241, !242, !243, !245}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !238, file: !239, line: 52, baseType: !118, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !238, file: !239, line: 55, baseType: !63, size: 32, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !238, file: !239, line: 56, baseType: !244, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !238, file: !239, line: 57, baseType: !63, size: 32, offset: 192)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "line_in", scope: !248, file: !2, line: 110, type: !251, isLocal: true, isDefinition: true)
!248 = distinct !DISubprogram(name: "expand", scope: !2, file: !2, line: 102, type: !249, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !120)
!249 = !DISubroutineType(types: !250)
!250 = !{null}
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2097152, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 262144)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !2, line: 172, type: !256, isLocal: true, isDefinition: true)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 23)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !62, line: 959, type: !223, isLocal: true, isDefinition: true)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 272, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 34)
!264 = !{i32 7, !"Dwarf Version", i32 5}
!265 = !{i32 2, !"Debug Info Version", i32 3}
!266 = !{i32 1, !"wchar_size", i32 4}
!267 = !{i32 8, !"PIC Level", i32 2}
!268 = !{i32 7, !"PIE Level", i32 2}
!269 = !{i32 7, !"uwtable", i32 2}
!270 = !{i32 7, !"frame-pointer", i32 2}
!271 = !{!"Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)"}
!272 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 64, type: !273, scopeLine: 65, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !120)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !63}
!275 = !DILocalVariable(name: "status", arg: 1, scope: !272, file: !2, line: 64, type: !63)
!276 = !DILocation(line: 64, column: 12, scope: !272)
!277 = !DILocation(line: 66, column: 7, scope: !278)
!278 = distinct !DILexicalBlock(scope: !272, file: !2, line: 66, column: 7)
!279 = !DILocation(line: 66, column: 14, scope: !278)
!280 = !DILocation(line: 67, column: 5, scope: !278)
!281 = !DILocation(line: 67, column: 5, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !2, line: 67, column: 5)
!283 = !DILocation(line: 70, column: 15, scope: !284)
!284 = distinct !DILexicalBlock(scope: !278, file: !2, line: 69, column: 5)
!285 = !DILocation(line: 73, column: 15, scope: !284)
!286 = !DILocation(line: 70, column: 7, scope: !284)
!287 = !DILocation(line: 74, column: 14, scope: !284)
!288 = !DILocation(line: 76, column: 5, scope: !284)
!289 = !DILocation(line: 74, column: 7, scope: !284)
!290 = !DILocation(line: 78, column: 7, scope: !284)
!291 = !DILocation(line: 79, column: 7, scope: !284)
!292 = !DILocation(line: 81, column: 14, scope: !284)
!293 = !DILocation(line: 81, column: 7, scope: !284)
!294 = !DILocation(line: 85, column: 14, scope: !284)
!295 = !DILocation(line: 85, column: 7, scope: !284)
!296 = !DILocation(line: 89, column: 7, scope: !284)
!297 = !DILocation(line: 90, column: 14, scope: !284)
!298 = !DILocation(line: 90, column: 7, scope: !284)
!299 = !DILocation(line: 91, column: 14, scope: !284)
!300 = !DILocation(line: 91, column: 7, scope: !284)
!301 = !DILocation(line: 92, column: 7, scope: !284)
!302 = !DILocation(line: 94, column: 9, scope: !272)
!303 = !DILocation(line: 94, column: 3, scope: !272)
!304 = distinct !DISubprogram(name: "emit_stdin_note", scope: !62, file: !62, line: 746, type: !249, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59)
!305 = !DILocation(line: 748, column: 10, scope: !304)
!306 = !DILocation(line: 750, column: 5, scope: !304)
!307 = !DILocation(line: 748, column: 3, scope: !304)
!308 = !DILocation(line: 751, column: 1, scope: !304)
!309 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !62, file: !62, line: 753, type: !249, scopeLine: 754, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59)
!310 = !DILocation(line: 755, column: 10, scope: !309)
!311 = !DILocation(line: 757, column: 5, scope: !309)
!312 = !DILocation(line: 755, column: 3, scope: !309)
!313 = !DILocation(line: 758, column: 1, scope: !309)
!314 = !DILocalVariable(name: "program", arg: 1, scope: !115, file: !62, line: 592, type: !118)
!315 = !DILocation(line: 592, column: 34, scope: !115)
!316 = !DILocalVariable(name: "option", arg: 2, scope: !115, file: !62, line: 592, type: !118)
!317 = !DILocation(line: 592, column: 55, scope: !115)
!318 = !DILocation(line: 600, column: 7, scope: !319)
!319 = distinct !DILexicalBlock(scope: !115, file: !62, line: 600, column: 7)
!320 = !DILocation(line: 600, column: 19, scope: !319)
!321 = !DILocalVariable(name: "term", scope: !322, file: !62, line: 604, type: !118)
!322 = distinct !DILexicalBlock(scope: !319, file: !62, line: 601, column: 5)
!323 = !DILocation(line: 604, column: 19, scope: !322)
!324 = !DILocation(line: 604, column: 26, scope: !322)
!325 = !DILocation(line: 605, column: 23, scope: !322)
!326 = !DILocation(line: 605, column: 28, scope: !322)
!327 = !DILocation(line: 605, column: 33, scope: !322)
!328 = !DILocation(line: 605, column: 32, scope: !322)
!329 = !DILocation(line: 605, column: 38, scope: !322)
!330 = !DILocation(line: 605, column: 48, scope: !322)
!331 = !DILocation(line: 605, column: 41, scope: !322)
!332 = !DILocation(line: 605, column: 19, scope: !322)
!333 = !DILocation(line: 606, column: 5, scope: !322)
!334 = !DILocation(line: 607, column: 7, scope: !335)
!335 = distinct !DILexicalBlock(scope: !115, file: !62, line: 607, column: 7)
!336 = !DILocation(line: 609, column: 14, scope: !337)
!337 = distinct !DILexicalBlock(scope: !335, file: !62, line: 608, column: 5)
!338 = !DILocation(line: 609, column: 22, scope: !337)
!339 = !DILocation(line: 609, column: 7, scope: !337)
!340 = !DILocation(line: 610, column: 7, scope: !337)
!341 = !DILocalVariable(name: "double_space", scope: !115, file: !62, line: 613, type: !91)
!342 = !DILocation(line: 613, column: 8, scope: !115)
!343 = !DILocalVariable(name: "first_word", scope: !115, file: !62, line: 614, type: !118)
!344 = !DILocation(line: 614, column: 15, scope: !115)
!345 = !DILocation(line: 614, column: 28, scope: !115)
!346 = !DILocation(line: 614, column: 45, scope: !115)
!347 = !DILocation(line: 614, column: 37, scope: !115)
!348 = !DILocation(line: 614, column: 35, scope: !115)
!349 = !DILocalVariable(name: "option_text", scope: !115, file: !62, line: 615, type: !118)
!350 = !DILocation(line: 615, column: 15, scope: !115)
!351 = !DILocation(line: 615, column: 37, scope: !115)
!352 = !DILocation(line: 615, column: 29, scope: !115)
!353 = !DILocation(line: 616, column: 8, scope: !354)
!354 = distinct !DILexicalBlock(scope: !115, file: !62, line: 616, column: 7)
!355 = !DILocation(line: 616, column: 7, scope: !354)
!356 = !DILocation(line: 618, column: 21, scope: !357)
!357 = distinct !DILexicalBlock(scope: !354, file: !62, line: 617, column: 5)
!358 = !DILocation(line: 618, column: 19, scope: !357)
!359 = !DILocation(line: 621, column: 20, scope: !357)
!360 = !DILocation(line: 622, column: 5, scope: !357)
!361 = !DILocation(line: 623, column: 12, scope: !362)
!362 = distinct !DILexicalBlock(scope: !354, file: !62, line: 623, column: 12)
!363 = !DILocation(line: 623, column: 27, scope: !362)
!364 = !DILocation(line: 623, column: 24, scope: !362)
!365 = !DILocalVariable(name: "s", scope: !366, file: !62, line: 627, type: !118)
!366 = distinct !DILexicalBlock(scope: !362, file: !62, line: 624, column: 5)
!367 = !DILocation(line: 627, column: 19, scope: !366)
!368 = !DILocation(line: 627, column: 23, scope: !366)
!369 = !DILocalVariable(name: "spaces", scope: !366, file: !62, line: 628, type: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !371, line: 18, baseType: !372)
!371 = !DIFile(filename: "/usr/lib/llvm-22/lib/clang/22/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!372 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!373 = !DILocation(line: 628, column: 14, scope: !366)
!374 = !DILocation(line: 629, column: 7, scope: !366)
!375 = !DILocation(line: 629, column: 14, scope: !366)
!376 = !DILocation(line: 629, column: 18, scope: !366)
!377 = !DILocation(line: 629, column: 16, scope: !366)
!378 = !DILocation(line: 629, column: 30, scope: !366)
!379 = !DILocation(line: 629, column: 33, scope: !366)
!380 = !DILocation(line: 629, column: 40, scope: !366)
!381 = !DILocation(line: 0, scope: !366)
!382 = !DILocation(line: 630, column: 21, scope: !366)
!383 = !DILocation(line: 630, column: 32, scope: !366)
!384 = !DILocation(line: 630, column: 30, scope: !366)
!385 = !DILocation(line: 630, column: 20, scope: !366)
!386 = !DILocation(line: 630, column: 19, scope: !366)
!387 = !DILocation(line: 630, column: 16, scope: !366)
!388 = distinct !{!388, !374, !382, !389}
!389 = !{!"llvm.loop.mustprogress"}
!390 = !DILocation(line: 631, column: 11, scope: !391)
!391 = distinct !DILexicalBlock(scope: !366, file: !62, line: 631, column: 11)
!392 = !DILocation(line: 631, column: 18, scope: !391)
!393 = !DILocation(line: 634, column: 25, scope: !394)
!394 = distinct !DILexicalBlock(scope: !391, file: !62, line: 632, column: 9)
!395 = !DILocation(line: 634, column: 23, scope: !394)
!396 = !DILocation(line: 635, column: 24, scope: !394)
!397 = !DILocation(line: 636, column: 9, scope: !394)
!398 = !DILocation(line: 637, column: 5, scope: !366)
!399 = !DILocalVariable(name: "anchor_len", scope: !115, file: !62, line: 639, type: !370)
!400 = !DILocation(line: 639, column: 10, scope: !115)
!401 = !DILocation(line: 639, column: 32, scope: !115)
!402 = !DILocation(line: 639, column: 23, scope: !115)
!403 = !DILocalVariable(name: "desc_text", scope: !115, file: !62, line: 644, type: !118)
!404 = !DILocation(line: 644, column: 15, scope: !115)
!405 = !DILocation(line: 644, column: 27, scope: !115)
!406 = !DILocation(line: 644, column: 41, scope: !115)
!407 = !DILocation(line: 644, column: 39, scope: !115)
!408 = !DILocation(line: 645, column: 3, scope: !115)
!409 = !DILocation(line: 645, column: 11, scope: !115)
!410 = !DILocation(line: 645, column: 10, scope: !115)
!411 = !DILocation(line: 645, column: 21, scope: !115)
!412 = !DILocation(line: 645, column: 25, scope: !115)
!413 = !DILocation(line: 645, column: 24, scope: !115)
!414 = !DILocation(line: 645, column: 35, scope: !115)
!415 = !DILocation(line: 0, scope: !115)
!416 = !DILocation(line: 647, column: 12, scope: !417)
!417 = distinct !DILexicalBlock(scope: !418, file: !62, line: 647, column: 11)
!418 = distinct !DILexicalBlock(scope: !115, file: !62, line: 646, column: 5)
!419 = !DILocation(line: 647, column: 11, scope: !417)
!420 = !DILocation(line: 647, column: 22, scope: !417)
!421 = !DILocation(line: 647, column: 29, scope: !417)
!422 = !DILocation(line: 647, column: 34, scope: !417)
!423 = !DILocation(line: 647, column: 32, scope: !417)
!424 = !DILocation(line: 647, column: 49, scope: !417)
!425 = !DILocation(line: 648, column: 22, scope: !417)
!426 = !DILocation(line: 648, column: 9, scope: !417)
!427 = !DILocation(line: 649, column: 11, scope: !428)
!428 = distinct !DILexicalBlock(scope: !418, file: !62, line: 649, column: 11)
!429 = !DILocation(line: 649, column: 21, scope: !428)
!430 = !DILocation(line: 649, column: 20, scope: !428)
!431 = !DILocation(line: 651, column: 16, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !62, line: 651, column: 15)
!433 = distinct !DILexicalBlock(scope: !428, file: !62, line: 650, column: 9)
!434 = !DILocation(line: 651, column: 15, scope: !432)
!435 = !DILocation(line: 651, column: 26, scope: !432)
!436 = !DILocation(line: 651, column: 34, scope: !432)
!437 = !DILocation(line: 651, column: 37, scope: !432)
!438 = !DILocation(line: 651, column: 48, scope: !432)
!439 = !DILocation(line: 651, column: 46, scope: !432)
!440 = !DILocation(line: 652, column: 13, scope: !432)
!441 = !DILocation(line: 655, column: 16, scope: !442)
!442 = distinct !DILexicalBlock(scope: !433, file: !62, line: 655, column: 15)
!443 = !DILocation(line: 655, column: 29, scope: !442)
!444 = !DILocation(line: 655, column: 34, scope: !442)
!445 = !DILocation(line: 655, column: 32, scope: !442)
!446 = !DILocation(line: 655, column: 49, scope: !442)
!447 = !DILocation(line: 656, column: 13, scope: !442)
!448 = !DILocation(line: 657, column: 9, scope: !433)
!449 = !DILocation(line: 659, column: 16, scope: !418)
!450 = distinct !{!450, !408, !451, !389}
!451 = !DILocation(line: 660, column: 5, scope: !115)
!452 = !DILocation(line: 663, column: 11, scope: !115)
!453 = !DILocation(line: 663, column: 22, scope: !115)
!454 = !DILocation(line: 663, column: 35, scope: !115)
!455 = !DILocation(line: 663, column: 33, scope: !115)
!456 = !DILocation(line: 663, column: 43, scope: !115)
!457 = !DILocation(line: 663, column: 3, scope: !115)
!458 = !DILocalVariable(name: "url_program", scope: !115, file: !62, line: 667, type: !118)
!459 = !DILocation(line: 667, column: 15, scope: !115)
!460 = !DILocation(line: 667, column: 38, scope: !115)
!461 = !DILocation(line: 667, column: 31, scope: !115)
!462 = !DILocation(line: 668, column: 38, scope: !115)
!463 = !DILocation(line: 668, column: 31, scope: !115)
!464 = !DILocation(line: 669, column: 38, scope: !115)
!465 = !DILocation(line: 669, column: 31, scope: !115)
!466 = !DILocation(line: 670, column: 38, scope: !115)
!467 = !DILocation(line: 670, column: 31, scope: !115)
!468 = !DILocation(line: 671, column: 38, scope: !115)
!469 = !DILocation(line: 671, column: 31, scope: !115)
!470 = !DILocation(line: 672, column: 38, scope: !115)
!471 = !DILocation(line: 672, column: 31, scope: !115)
!472 = !DILocation(line: 673, column: 38, scope: !115)
!473 = !DILocation(line: 673, column: 31, scope: !115)
!474 = !DILocation(line: 674, column: 38, scope: !115)
!475 = !DILocation(line: 674, column: 31, scope: !115)
!476 = !DILocation(line: 675, column: 38, scope: !115)
!477 = !DILocation(line: 675, column: 31, scope: !115)
!478 = !DILocation(line: 676, column: 38, scope: !115)
!479 = !DILocation(line: 676, column: 31, scope: !115)
!480 = !DILocation(line: 677, column: 31, scope: !115)
!481 = !DILocation(line: 682, column: 18, scope: !482)
!482 = distinct !DILexicalBlock(scope: !115, file: !62, line: 682, column: 7)
!483 = !DILocation(line: 682, column: 7, scope: !482)
!484 = !DILocation(line: 683, column: 7, scope: !482)
!485 = !DILocation(line: 683, column: 21, scope: !482)
!486 = !DILocation(line: 683, column: 10, scope: !482)
!487 = !DILocation(line: 689, column: 15, scope: !488)
!488 = distinct !DILexicalBlock(scope: !482, file: !62, line: 684, column: 5)
!489 = !DILocation(line: 689, column: 28, scope: !488)
!490 = !DILocation(line: 689, column: 47, scope: !488)
!491 = !DILocation(line: 689, column: 41, scope: !488)
!492 = !DILocation(line: 689, column: 59, scope: !488)
!493 = !DILocation(line: 688, column: 7, scope: !488)
!494 = !DILocation(line: 690, column: 5, scope: !488)
!495 = !DILocation(line: 695, column: 48, scope: !496)
!496 = distinct !DILexicalBlock(scope: !482, file: !62, line: 692, column: 5)
!497 = !DILocation(line: 696, column: 21, scope: !496)
!498 = !DILocation(line: 696, column: 15, scope: !496)
!499 = !DILocation(line: 696, column: 33, scope: !496)
!500 = !DILocation(line: 695, column: 7, scope: !496)
!501 = !DILocation(line: 698, column: 20, scope: !115)
!502 = !DILocation(line: 698, column: 3, scope: !115)
!503 = !DILocation(line: 702, column: 21, scope: !115)
!504 = !DILocation(line: 702, column: 3, scope: !115)
!505 = !DILocation(line: 705, column: 11, scope: !115)
!506 = !DILocation(line: 705, column: 26, scope: !115)
!507 = !DILocation(line: 705, column: 38, scope: !115)
!508 = !DILocation(line: 705, column: 36, scope: !115)
!509 = !DILocation(line: 705, column: 50, scope: !115)
!510 = !DILocation(line: 705, column: 3, scope: !115)
!511 = !DILocation(line: 707, column: 21, scope: !115)
!512 = !DILocation(line: 707, column: 3, scope: !115)
!513 = !DILocation(line: 710, column: 28, scope: !115)
!514 = !DILocation(line: 710, column: 3, scope: !115)
!515 = !DILocation(line: 714, column: 10, scope: !115)
!516 = !DILocation(line: 714, column: 21, scope: !115)
!517 = !DILocation(line: 714, column: 3, scope: !115)
!518 = !DILocation(line: 715, column: 1, scope: !115)
!519 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !62, file: !62, line: 855, type: !520, scopeLine: 856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !120)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !118}
!522 = !DILocalVariable(name: "program", arg: 1, scope: !519, file: !62, line: 855, type: !118)
!523 = !DILocation(line: 855, column: 34, scope: !519)
!524 = !DILocalVariable(name: "infomap", scope: !519, file: !62, line: 857, type: !525)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 896, elements: !20)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !519, file: !62, line: 857, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !527, file: !62, line: 857, baseType: !118, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !527, file: !62, line: 857, baseType: !118, size: 64, offset: 64)
!531 = !DILocation(line: 857, column: 67, scope: !519)
!532 = !DILocalVariable(name: "node", scope: !519, file: !62, line: 867, type: !118)
!533 = !DILocation(line: 867, column: 15, scope: !519)
!534 = !DILocation(line: 867, column: 22, scope: !519)
!535 = !DILocalVariable(name: "map_prog", scope: !519, file: !62, line: 868, type: !536)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!537 = !DILocation(line: 868, column: 25, scope: !519)
!538 = !DILocation(line: 868, column: 36, scope: !519)
!539 = !DILocation(line: 870, column: 3, scope: !519)
!540 = !DILocation(line: 870, column: 10, scope: !519)
!541 = !DILocation(line: 870, column: 20, scope: !519)
!542 = !DILocation(line: 870, column: 28, scope: !519)
!543 = !DILocation(line: 870, column: 40, scope: !519)
!544 = !DILocation(line: 870, column: 49, scope: !519)
!545 = !DILocation(line: 870, column: 59, scope: !519)
!546 = !DILocation(line: 870, column: 33, scope: !519)
!547 = !DILocation(line: 870, column: 31, scope: !519)
!548 = !DILocation(line: 0, scope: !519)
!549 = !DILocation(line: 871, column: 13, scope: !519)
!550 = distinct !{!550, !539, !549, !389}
!551 = !DILocation(line: 873, column: 7, scope: !552)
!552 = distinct !DILexicalBlock(scope: !519, file: !62, line: 873, column: 7)
!553 = !DILocation(line: 873, column: 17, scope: !552)
!554 = !DILocation(line: 874, column: 12, scope: !552)
!555 = !DILocation(line: 874, column: 22, scope: !552)
!556 = !DILocation(line: 874, column: 10, scope: !552)
!557 = !DILocation(line: 874, column: 5, scope: !552)
!558 = !DILocation(line: 876, column: 3, scope: !519)
!559 = !DILocalVariable(name: "url_program", scope: !519, file: !62, line: 881, type: !118)
!560 = !DILocation(line: 881, column: 15, scope: !519)
!561 = !DILocation(line: 881, column: 36, scope: !519)
!562 = !DILocation(line: 881, column: 29, scope: !519)
!563 = !DILocation(line: 881, column: 61, scope: !519)
!564 = !DILocation(line: 882, column: 11, scope: !519)
!565 = !DILocation(line: 883, column: 24, scope: !519)
!566 = !DILocation(line: 882, column: 3, scope: !519)
!567 = !DILocation(line: 884, column: 11, scope: !519)
!568 = !DILocation(line: 885, column: 11, scope: !519)
!569 = !DILocation(line: 885, column: 17, scope: !519)
!570 = !DILocation(line: 885, column: 25, scope: !519)
!571 = !DILocation(line: 885, column: 22, scope: !519)
!572 = !DILocation(line: 884, column: 3, scope: !519)
!573 = !DILocation(line: 886, column: 1, scope: !519)
!574 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 189, type: !575, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !120)
!575 = !DISubroutineType(types: !576)
!576 = !{!63, !63, !577}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!578 = !DILocalVariable(name: "argc", arg: 1, scope: !574, file: !2, line: 189, type: !63)
!579 = !DILocation(line: 189, column: 11, scope: !574)
!580 = !DILocalVariable(name: "argv", arg: 2, scope: !574, file: !2, line: 189, type: !577)
!581 = !DILocation(line: 189, column: 24, scope: !574)
!582 = !DILocalVariable(name: "c", scope: !574, file: !2, line: 191, type: !63)
!583 = !DILocation(line: 191, column: 7, scope: !574)
!584 = !DILocation(line: 194, column: 21, scope: !574)
!585 = !DILocation(line: 194, column: 3, scope: !574)
!586 = !DILocation(line: 195, column: 3, scope: !574)
!587 = !DILocation(line: 196, column: 3, scope: !574)
!588 = !DILocation(line: 197, column: 3, scope: !574)
!589 = !DILocation(line: 199, column: 3, scope: !574)
!590 = !DILocation(line: 200, column: 23, scope: !574)
!591 = !DILocation(line: 202, column: 3, scope: !574)
!592 = !DILocation(line: 202, column: 28, scope: !574)
!593 = !DILocation(line: 202, column: 34, scope: !574)
!594 = !DILocation(line: 202, column: 15, scope: !574)
!595 = !DILocation(line: 202, column: 13, scope: !574)
!596 = !DILocation(line: 202, column: 68, scope: !574)
!597 = !DILocation(line: 204, column: 15, scope: !598)
!598 = distinct !DILexicalBlock(scope: !574, file: !2, line: 203, column: 5)
!599 = !DILocation(line: 204, column: 7, scope: !598)
!600 = !DILocation(line: 207, column: 31, scope: !601)
!601 = distinct !DILexicalBlock(scope: !598, file: !2, line: 205, column: 9)
!602 = !DILocation(line: 208, column: 11, scope: !601)
!603 = !DILocation(line: 211, column: 28, scope: !601)
!604 = !DILocation(line: 211, column: 11, scope: !601)
!605 = !DILocation(line: 212, column: 11, scope: !601)
!606 = !DILocation(line: 216, column: 15, scope: !607)
!607 = distinct !DILexicalBlock(scope: !601, file: !2, line: 216, column: 15)
!608 = !DILocation(line: 217, column: 30, scope: !607)
!609 = !DILocation(line: 217, column: 37, scope: !607)
!610 = !DILocation(line: 217, column: 13, scope: !607)
!611 = !DILocalVariable(name: "tab_stop", scope: !612, file: !2, line: 220, type: !140)
!612 = distinct !DILexicalBlock(scope: !607, file: !2, line: 219, column: 13)
!613 = !DILocation(line: 220, column: 20, scope: !612)
!614 = !DILocation(line: 221, column: 29, scope: !612)
!615 = !DILocation(line: 221, column: 15, scope: !612)
!616 = !DILocation(line: 221, column: 27, scope: !612)
!617 = !DILocation(line: 222, column: 15, scope: !612)
!618 = !DILocation(line: 222, column: 27, scope: !612)
!619 = !DILocation(line: 223, column: 32, scope: !612)
!620 = !DILocation(line: 223, column: 15, scope: !612)
!621 = !DILocation(line: 225, column: 11, scope: !601)
!622 = !DILocation(line: 227, column: 9, scope: !601)
!623 = !DILocation(line: 229, column: 9, scope: !601)
!624 = !DILocation(line: 229, column: 49, scope: !601)
!625 = !DILocation(line: 232, column: 11, scope: !601)
!626 = distinct !{!626, !591, !627, !389}
!627 = !DILocation(line: 234, column: 5, scope: !574)
!628 = !DILocation(line: 236, column: 3, scope: !574)
!629 = !DILocation(line: 238, column: 18, scope: !574)
!630 = !DILocation(line: 238, column: 27, scope: !574)
!631 = !DILocation(line: 238, column: 25, scope: !574)
!632 = !DILocation(line: 238, column: 35, scope: !574)
!633 = !DILocation(line: 238, column: 40, scope: !574)
!634 = !DILocation(line: 238, column: 3, scope: !574)
!635 = !DILocation(line: 240, column: 3, scope: !574)
!636 = !DILocation(line: 242, column: 3, scope: !574)
!637 = !DILocation(line: 244, column: 10, scope: !574)
!638 = !DILocation(line: 244, column: 3, scope: !574)
!639 = !DILocalVariable(name: "fp", scope: !248, file: !2, line: 105, type: !640)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !642, line: 7, baseType: !643)
!642 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !644, line: 49, size: 1728, elements: !645)
!644 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!645 = !{!646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !661, !663, !664, !665, !669, !670, !672, !673, !676, !678, !681, !684, !685, !686, !687, !688}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !643, file: !644, line: 51, baseType: !63, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !643, file: !644, line: 54, baseType: !88, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !643, file: !644, line: 55, baseType: !88, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !643, file: !644, line: 56, baseType: !88, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !643, file: !644, line: 57, baseType: !88, size: 64, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !643, file: !644, line: 58, baseType: !88, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !643, file: !644, line: 59, baseType: !88, size: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !643, file: !644, line: 60, baseType: !88, size: 64, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !643, file: !644, line: 61, baseType: !88, size: 64, offset: 512)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !643, file: !644, line: 64, baseType: !88, size: 64, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !643, file: !644, line: 65, baseType: !88, size: 64, offset: 640)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !643, file: !644, line: 66, baseType: !88, size: 64, offset: 704)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !643, file: !644, line: 68, baseType: !659, size: 64, offset: 768)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !644, line: 36, flags: DIFlagFwdDecl)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !643, file: !644, line: 70, baseType: !662, size: 64, offset: 832)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !643, file: !644, line: 72, baseType: !63, size: 32, offset: 896)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !643, file: !644, line: 73, baseType: !63, size: 32, offset: 928)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !643, file: !644, line: 74, baseType: !666, size: 64, offset: 960)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !667, line: 152, baseType: !668)
!667 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!668 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !643, file: !644, line: 77, baseType: !90, size: 16, offset: 1024)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !643, file: !644, line: 78, baseType: !671, size: 8, offset: 1040)
!671 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !643, file: !644, line: 79, baseType: !44, size: 8, offset: 1048)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !643, file: !644, line: 81, baseType: !674, size: 64, offset: 1088)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !644, line: 43, baseType: null)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !643, file: !644, line: 89, baseType: !677, size: 64, offset: 1152)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !667, line: 153, baseType: !668)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !643, file: !644, line: 91, baseType: !679, size: 64, offset: 1216)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !644, line: 37, flags: DIFlagFwdDecl)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !643, file: !644, line: 92, baseType: !682, size: 64, offset: 1280)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !644, line: 38, flags: DIFlagFwdDecl)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !643, file: !644, line: 93, baseType: !662, size: 64, offset: 1344)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !643, file: !644, line: 94, baseType: !89, size: 64, offset: 1408)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !643, file: !644, line: 95, baseType: !370, size: 64, offset: 1472)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !643, file: !644, line: 96, baseType: !63, size: 32, offset: 1536)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !643, file: !644, line: 98, baseType: !689, size: 160, offset: 1568)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !690)
!690 = !{!691}
!691 = !DISubrange(count: 20)
!692 = !DILocation(line: 105, column: 9, scope: !248)
!693 = !DILocation(line: 105, column: 14, scope: !248)
!694 = !DILocation(line: 107, column: 8, scope: !695)
!695 = distinct !DILexicalBlock(scope: !248, file: !2, line: 107, column: 7)
!696 = !DILocation(line: 107, column: 7, scope: !695)
!697 = !DILocation(line: 108, column: 5, scope: !695)
!698 = !DILocalVariable(name: "mbbuf", scope: !248, file: !2, line: 111, type: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbbuf_t", file: !700, line: 55, baseType: !701)
!700 = !DIFile(filename: "./lib/mbbuf.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "867c2b5cbb0e5fe89cf43ca8d008516b")
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !700, line: 47, size: 384, elements: !702)
!702 = !{!703, !704, !705, !708, !709, !710}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !701, file: !700, line: 49, baseType: !88, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !701, file: !700, line: 50, baseType: !640, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !701, file: !700, line: 51, baseType: !706, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !707, line: 137, baseType: !668)
!707 = !DIFile(filename: "./lib/idx.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "a342c053ede588630cf36a09403114d3")
!708 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !701, file: !700, line: 52, baseType: !706, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !701, file: !700, line: 53, baseType: !706, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !701, file: !700, line: 54, baseType: !91, size: 8, offset: 320)
!711 = !DILocation(line: 111, column: 11, scope: !248)
!712 = !DILocation(line: 112, column: 48, scope: !248)
!713 = !DILocation(line: 112, column: 3, scope: !248)
!714 = !DILocation(line: 114, column: 3, scope: !248)
!715 = !DILocalVariable(name: "g", scope: !716, file: !2, line: 117, type: !717)
!716 = distinct !DILexicalBlock(scope: !248, file: !2, line: 115, column: 5)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !84, line: 143, baseType: !718)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !84, line: 138, size: 64, elements: !719)
!719 = !{!720, !725, !727}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !718, file: !84, line: 140, baseType: !721, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !722, line: 37, baseType: !723)
!722 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !667, line: 57, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !667, line: 42, baseType: !69)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !718, file: !84, line: 141, baseType: !726, size: 8, offset: 32)
!726 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !718, file: !84, line: 142, baseType: !726, size: 8, offset: 40)
!728 = !DILocation(line: 117, column: 14, scope: !716)
!729 = !DILocalVariable(name: "convert", scope: !716, file: !2, line: 120, type: !91)
!730 = !DILocation(line: 120, column: 12, scope: !716)
!731 = !DILocalVariable(name: "column", scope: !716, file: !2, line: 127, type: !732)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "colno", file: !733, line: 20, baseType: !734)
!733 = !DIFile(filename: "src/expand-common.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "a812a23c6054c0178c7555c3090cc098")
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !735, line: 101, baseType: !736)
!735 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !667, line: 72, baseType: !668)
!737 = !DILocation(line: 127, column: 13, scope: !716)
!738 = !DILocalVariable(name: "tab_index", scope: !716, file: !2, line: 130, type: !706)
!739 = !DILocation(line: 130, column: 13, scope: !716)
!740 = !DILocation(line: 135, column: 7, scope: !716)
!741 = !DILocation(line: 137, column: 11, scope: !742)
!742 = distinct !DILexicalBlock(scope: !716, file: !2, line: 136, column: 9)
!743 = !DILocation(line: 137, column: 23, scope: !742)
!744 = !DILocation(line: 137, column: 21, scope: !742)
!745 = !DILocation(line: 137, column: 48, scope: !742)
!746 = !DILocation(line: 137, column: 51, scope: !742)
!747 = !DILocation(line: 138, column: 18, scope: !742)
!748 = !DILocation(line: 138, column: 38, scope: !742)
!749 = !DILocation(line: 138, column: 27, scope: !742)
!750 = !DILocation(line: 138, column: 25, scope: !742)
!751 = !DILocation(line: 0, scope: !742)
!752 = !DILocation(line: 139, column: 58, scope: !742)
!753 = !DILocation(line: 139, column: 13, scope: !742)
!754 = distinct !{!754, !741, !755, !389}
!755 = !DILocation(line: 139, column: 60, scope: !742)
!756 = !DILocation(line: 141, column: 15, scope: !757)
!757 = distinct !DILexicalBlock(scope: !742, file: !2, line: 141, column: 15)
!758 = !DILocation(line: 143, column: 26, scope: !759)
!759 = distinct !DILexicalBlock(scope: !757, file: !2, line: 142, column: 13)
!760 = !DILocation(line: 143, column: 46, scope: !759)
!761 = !DILocation(line: 143, column: 61, scope: !759)
!762 = !DILocation(line: 143, column: 49, scope: !759)
!763 = !DILocation(line: 143, column: 23, scope: !759)
!764 = !DILocation(line: 145, column: 21, scope: !765)
!765 = distinct !DILexicalBlock(scope: !759, file: !2, line: 145, column: 19)
!766 = !DILocation(line: 145, column: 24, scope: !765)
!767 = !DILocalVariable(name: "last_tab", scope: !768, file: !2, line: 148, type: !91)
!768 = distinct !DILexicalBlock(scope: !765, file: !2, line: 146, column: 17)
!769 = !DILocation(line: 148, column: 24, scope: !768)
!770 = !DILocalVariable(name: "next_tab_column", scope: !768, file: !2, line: 149, type: !732)
!771 = !DILocation(line: 149, column: 25, scope: !768)
!772 = !DILocation(line: 150, column: 44, scope: !768)
!773 = !DILocation(line: 150, column: 23, scope: !768)
!774 = !DILocation(line: 152, column: 19, scope: !768)
!775 = !DILocation(line: 152, column: 26, scope: !768)
!776 = !DILocation(line: 152, column: 37, scope: !768)
!777 = !DILocation(line: 152, column: 35, scope: !768)
!778 = !DILocation(line: 153, column: 25, scope: !779)
!779 = distinct !DILexicalBlock(scope: !768, file: !2, line: 153, column: 25)
!780 = !DILocation(line: 153, column: 39, scope: !779)
!781 = !DILocation(line: 154, column: 23, scope: !779)
!782 = distinct !{!782, !774, !783, !389}
!783 = !DILocation(line: 154, column: 36, scope: !768)
!784 = !DILocation(line: 156, column: 23, scope: !785)
!785 = distinct !DILexicalBlock(scope: !768, file: !2, line: 156, column: 23)
!786 = !DILocation(line: 156, column: 37, scope: !785)
!787 = !DILocation(line: 157, column: 21, scope: !785)
!788 = !DILocation(line: 159, column: 19, scope: !768)
!789 = !DILocation(line: 161, column: 26, scope: !790)
!790 = distinct !DILexicalBlock(scope: !765, file: !2, line: 161, column: 24)
!791 = !DILocation(line: 161, column: 29, scope: !790)
!792 = !DILocation(line: 165, column: 31, scope: !793)
!793 = distinct !DILexicalBlock(scope: !790, file: !2, line: 162, column: 17)
!794 = !DILocation(line: 165, column: 30, scope: !793)
!795 = !DILocation(line: 165, column: 29, scope: !793)
!796 = !DILocation(line: 165, column: 26, scope: !793)
!797 = !DILocation(line: 166, column: 34, scope: !793)
!798 = !DILocation(line: 166, column: 33, scope: !793)
!799 = !DILocation(line: 166, column: 32, scope: !793)
!800 = !DILocation(line: 166, column: 29, scope: !793)
!801 = !DILocation(line: 167, column: 17, scope: !793)
!802 = !DILocalVariable(name: "width", scope: !803, file: !2, line: 170, type: !63)
!803 = distinct !DILexicalBlock(scope: !790, file: !2, line: 169, column: 17)
!804 = !DILocation(line: 170, column: 23, scope: !803)
!805 = !DILocation(line: 170, column: 43, scope: !803)
!806 = !DILocation(line: 170, column: 31, scope: !803)
!807 = !DILocation(line: 171, column: 41, scope: !808)
!808 = distinct !DILexicalBlock(scope: !803, file: !2, line: 171, column: 23)
!809 = !DILocation(line: 171, column: 49, scope: !808)
!810 = !DILocation(line: 171, column: 55, scope: !808)
!811 = !DILocation(line: 171, column: 65, scope: !808)
!812 = !DILocation(line: 171, column: 23, scope: !808)
!813 = !DILocation(line: 172, column: 45, scope: !808)
!814 = !DILocation(line: 172, column: 21, scope: !808)
!815 = !DILocation(line: 175, column: 13, scope: !759)
!816 = !DILocation(line: 177, column: 17, scope: !817)
!817 = distinct !DILexicalBlock(scope: !742, file: !2, line: 177, column: 15)
!818 = !DILocation(line: 177, column: 20, scope: !817)
!819 = !DILocation(line: 178, column: 13, scope: !817)
!820 = !DILocation(line: 180, column: 19, scope: !742)
!821 = !DILocation(line: 180, column: 67, scope: !742)
!822 = !DILocation(line: 180, column: 65, scope: !742)
!823 = !DILocation(line: 180, column: 72, scope: !742)
!824 = !DILocation(line: 180, column: 11, scope: !742)
!825 = !DILocation(line: 181, column: 23, scope: !826)
!826 = distinct !DILexicalBlock(scope: !742, file: !2, line: 181, column: 15)
!827 = !DILocation(line: 181, column: 15, scope: !826)
!828 = !DILocation(line: 182, column: 13, scope: !826)
!829 = !DILocation(line: 183, column: 9, scope: !742)
!830 = !DILocation(line: 184, column: 16, scope: !716)
!831 = !DILocation(line: 184, column: 19, scope: !716)
!832 = distinct !{!832, !740, !833, !389}
!833 = !DILocation(line: 184, column: 26, scope: !716)
!834 = distinct !{!834, !714, !835}
!835 = !DILocation(line: 185, column: 5, scope: !248)
!836 = !DILocation(line: 186, column: 1, scope: !248)
!837 = distinct !DISubprogram(name: "c32issep", scope: !62, file: !62, line: 183, type: !838, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !120)
!838 = !DISubroutineType(types: !839)
!839 = !{!91, !721}
!840 = !DILocalVariable(name: "wc", arg: 1, scope: !837, file: !62, line: 183, type: !721)
!841 = !DILocation(line: 183, column: 20, scope: !837)
!842 = !DILocation(line: 186, column: 25, scope: !837)
!843 = !DILocation(line: 186, column: 13, scope: !837)
!844 = !DILocation(line: 186, column: 11, scope: !837)
!845 = !DILocation(line: 186, column: 10, scope: !837)
!846 = !DILocation(line: 186, column: 3, scope: !837)
!847 = distinct !DISubprogram(name: "write_error", scope: !62, file: !62, line: 953, type: !249, scopeLine: 954, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !120)
!848 = !DILocalVariable(name: "saved_errno", scope: !847, file: !62, line: 955, type: !63)
!849 = !DILocation(line: 955, column: 7, scope: !847)
!850 = !DILocation(line: 955, column: 21, scope: !847)
!851 = !DILocation(line: 956, column: 11, scope: !847)
!852 = !DILocation(line: 956, column: 3, scope: !847)
!853 = !DILocation(line: 957, column: 11, scope: !847)
!854 = !DILocation(line: 957, column: 3, scope: !847)
!855 = !DILocation(line: 958, column: 13, scope: !847)
!856 = !DILocation(line: 958, column: 3, scope: !847)
!857 = !DILocation(line: 959, column: 24, scope: !847)
!858 = !DILocation(line: 959, column: 37, scope: !847)
!859 = !DILocation(line: 959, column: 3, scope: !847)
