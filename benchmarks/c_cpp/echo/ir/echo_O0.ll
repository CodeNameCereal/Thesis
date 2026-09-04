; ModuleID = 'src/echo.c'
source_filename = "src/echo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.infomap = type { ptr, ptr }

@.str = private unnamed_addr constant [12 x i8] c"status == 0\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"src/echo.c\00", align 1, !dbg !7
@__PRETTY_FUNCTION__.usage = private unnamed_addr constant [16 x i8] c"void usage(int)\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [63 x i8] c"Usage: %s [SHORT-OPTION]... [STRING]...\0A  or:  %s LONG-OPTION\0A\00", align 1, !dbg !18
@program_name = external global ptr, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"Echo the STRING(s) to standard output.\0A\0A\00", align 1, !dbg !23
@stdout = external global ptr, align 8
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
@.str.16 = private unnamed_addr constant [3 x i8] c"-n\00", align 1, !dbg !83
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !88
@.str.18 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !93
@.str.19 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !98
@.str.20 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !103
@.str.21 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !108
@.str.22 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !110
@Version = external global ptr, align 8
@.str.23 = private unnamed_addr constant [10 x i8] c"Brian Fox\00", align 1, !dbg !115
@.str.24 = private unnamed_addr constant [11 x i8] c"Chet Ramey\00", align 1, !dbg !117
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !119
@.str.25 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !153
@.str.26 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !155
@.str.27 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !157
@.str.28 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !162
@.str.29 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !167
@.str.30 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !172
@.str.31 = private unnamed_addr constant [4 x i8] c"dir\00", align 1, !dbg !174
@.str.32 = private unnamed_addr constant [3 x i8] c"ls\00", align 1, !dbg !176
@.str.33 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1, !dbg !178
@.str.34 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1, !dbg !180
@.str.35 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1, !dbg !182
@.str.36 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1, !dbg !184
@.str.37 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1, !dbg !186
@.str.38 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !191
@.str.39 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !193
@.str.40 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !195
@.str.41 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !197
@.str.42 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !199
@.str.43 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !204
@.str.44 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !209
@.str.45 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !214
@.str.46 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !219
@.str.47 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !221
@.str.48 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !223
@.str.49 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !225
@.str.50 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !227
@.str.51 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !229
@.str.52 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !234
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.29, ptr @.str.50 }, %struct.infomap { ptr @.str.18, ptr @.str.51 }, %struct.infomap { ptr @.str.38, ptr @.str.52 }, %struct.infomap { ptr @.str.39, ptr @.str.52 }, %struct.infomap { ptr @.str.40, ptr @.str.52 }, %struct.infomap { ptr @.str.41, ptr @.str.52 }, %struct.infomap zeroinitializer], align 16
@.str.53 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !236
@.str.54 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !241
@.str.55 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !246

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !257 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !260, !DIExpression(), !261)
  %3 = load i32, ptr %2, align 4, !dbg !262
  %4 = icmp eq i32 %3, 0, !dbg !265
  br i1 %4, label %5, label %6, !dbg !265

5:                                                ; preds = %1
  br label %7, !dbg !265

6:                                                ; preds = %1
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 41, ptr noundef @__PRETTY_FUNCTION__.usage) #8, !dbg !266
  unreachable, !dbg !266

7:                                                ; preds = %5
  %8 = call ptr @gettext(ptr noundef @.str.2) #9, !dbg !267
  %9 = load ptr, ptr @program_name, align 8, !dbg !268
  %10 = load ptr, ptr @program_name, align 8, !dbg !269
  %11 = call i32 (ptr, ...) @rpl_printf(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !270
  %12 = call ptr @gettext(ptr noundef @.str.3) #9, !dbg !271
  %13 = load ptr, ptr @stdout, align 8, !dbg !272
  %14 = call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !273
  %15 = call ptr @gettext(ptr noundef @.str.5) #9, !dbg !274
  call void @oputs_(ptr noundef @.str.4, ptr noundef %15), !dbg !275
  %16 = call ptr @gettext(ptr noundef @.str.6) #9, !dbg !276
  call void @oputs_(ptr noundef @.str.4, ptr noundef %16), !dbg !277
  %17 = call ptr @gettext(ptr noundef @.str.7) #9, !dbg !278
  call void @oputs_(ptr noundef @.str.4, ptr noundef %17), !dbg !279
  %18 = call ptr @gettext(ptr noundef @.str.8) #9, !dbg !280
  call void @oputs_(ptr noundef @.str.4, ptr noundef %18), !dbg !281
  %19 = call ptr @gettext(ptr noundef @.str.9) #9, !dbg !282
  call void @oputs_(ptr noundef @.str.4, ptr noundef %19), !dbg !283
  %20 = call ptr @gettext(ptr noundef @.str.10) #9, !dbg !284
  %21 = load ptr, ptr @stdout, align 8, !dbg !285
  %22 = call i32 @fputs_unlocked(ptr noundef %20, ptr noundef %21), !dbg !286
  %23 = call ptr @gettext(ptr noundef @.str.11) #9, !dbg !287
  %24 = load ptr, ptr @stdout, align 8, !dbg !288
  %25 = call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !289
  %26 = call ptr @gettext(ptr noundef @.str.12) #9, !dbg !290
  %27 = load ptr, ptr @stdout, align 8, !dbg !291
  %28 = call i32 @fputs_unlocked(ptr noundef %26, ptr noundef %27), !dbg !292
  %29 = call ptr @gettext(ptr noundef @.str.13) #9, !dbg !293
  %30 = call i32 (ptr, ...) @rpl_printf(ptr noundef %29, ptr noundef @.str.4), !dbg !294
  %31 = call ptr @gettext(ptr noundef @.str.14) #9, !dbg !295
  %32 = load ptr, ptr @stdout, align 8, !dbg !296
  %33 = call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !297
  call void @emit_ancillary_info(ptr noundef @.str.4), !dbg !298
  %34 = load i32, ptr %2, align 4, !dbg !299
  call void @exit(i32 noundef %34) #8, !dbg !300
  unreachable, !dbg !300
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @rpl_printf(ptr noundef, ...) #2

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #3

declare i32 @fputs_unlocked(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(ptr noundef %0, ptr noundef %1) #4 !dbg !121 {
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
    #dbg_declare(ptr %3, !301, !DIExpression(), !302)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !303, !DIExpression(), !304)
  %14 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !305
  %15 = icmp eq i32 %14, -1, !dbg !307
  br i1 %15, label %16, label %30, !dbg !307

16:                                               ; preds = %2
    #dbg_declare(ptr %5, !308, !DIExpression(), !310)
  %17 = call ptr @getenv(ptr noundef @.str.25) #9, !dbg !311
  store ptr %17, ptr %5, align 8, !dbg !310
  %18 = load ptr, ptr %5, align 8, !dbg !312
  %19 = icmp ne ptr %18, null, !dbg !312
  br i1 %19, label %20, label %27, !dbg !313

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 8, !dbg !314
  %22 = load i8, ptr %21, align 1, !dbg !315
  %23 = icmp ne i8 %22, 0, !dbg !315
  br i1 %23, label %24, label %27, !dbg !316

24:                                               ; preds = %20
  %25 = load ptr, ptr %5, align 8, !dbg !317
  %26 = call zeroext i1 @streq(ptr noundef %25, ptr noundef @.str.26), !dbg !318
  br label %27, !dbg !316

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !316
  store i32 %29, ptr @oputs_.help_no_sgr, align 4, !dbg !319
  br label %30, !dbg !320

30:                                               ; preds = %27, %2
  %31 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !321
  %32 = icmp ne i32 %31, 0, !dbg !321
  br i1 %32, label %33, label %37, !dbg !321

33:                                               ; preds = %30
  %34 = load ptr, ptr %4, align 8, !dbg !323
  %35 = load ptr, ptr @stdout, align 8, !dbg !325
  %36 = call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !326
  br label %274, !dbg !327

37:                                               ; preds = %30
    #dbg_declare(ptr %6, !328, !DIExpression(), !330)
  store i8 1, ptr %6, align 1, !dbg !330
    #dbg_declare(ptr %7, !331, !DIExpression(), !332)
  %38 = load ptr, ptr %4, align 8, !dbg !333
  %39 = load ptr, ptr %4, align 8, !dbg !334
  %40 = call i64 @strspn(ptr noundef %39, ptr noundef @.str.27) #10, !dbg !335
  %41 = getelementptr inbounds nuw i8, ptr %38, i64 %40, !dbg !336
  store ptr %41, ptr %7, align 8, !dbg !332
    #dbg_declare(ptr %8, !337, !DIExpression(), !338)
  %42 = load ptr, ptr %4, align 8, !dbg !339
  %43 = call ptr @strchr(ptr noundef %42, i32 noundef 45) #10, !dbg !340
  store ptr %43, ptr %8, align 8, !dbg !338
  %44 = load ptr, ptr %8, align 8, !dbg !341
  %45 = icmp ne ptr %44, null, !dbg !341
  br i1 %45, label %48, label %46, !dbg !343

46:                                               ; preds = %37
  %47 = load ptr, ptr %7, align 8, !dbg !344
  store ptr %47, ptr %8, align 8, !dbg !346
  store i8 0, ptr %6, align 1, !dbg !347
  br label %89, !dbg !348

48:                                               ; preds = %37
  %49 = load ptr, ptr %8, align 8, !dbg !349
  %50 = load ptr, ptr %7, align 8, !dbg !351
  %51 = icmp ne ptr %49, %50, !dbg !352
  br i1 %51, label %52, label %88, !dbg !352

52:                                               ; preds = %48
    #dbg_declare(ptr %9, !353, !DIExpression(), !355)
  %53 = load ptr, ptr %7, align 8, !dbg !356
  store ptr %53, ptr %9, align 8, !dbg !355
    #dbg_declare(ptr %10, !357, !DIExpression(), !361)
  store i64 0, ptr %10, align 8, !dbg !361
  br label %54, !dbg !362

54:                                               ; preds = %63, %52
  %55 = load ptr, ptr %9, align 8, !dbg !363
  %56 = load ptr, ptr %8, align 8, !dbg !364
  %57 = icmp ult ptr %55, %56, !dbg !365
  br i1 %57, label %58, label %61, !dbg !366

58:                                               ; preds = %54
  %59 = load i64, ptr %10, align 8, !dbg !367
  %60 = icmp ult i64 %59, 2, !dbg !368
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !369
  br i1 %62, label %63, label %82, !dbg !362

63:                                               ; preds = %61
  %64 = call ptr @__ctype_b_loc() #11, !dbg !370
  %65 = load ptr, ptr %64, align 8, !dbg !370
  %66 = load ptr, ptr %9, align 8, !dbg !371
  %67 = getelementptr inbounds nuw i8, ptr %66, i32 1, !dbg !371
  store ptr %67, ptr %9, align 8, !dbg !371
  %68 = load i8, ptr %66, align 1, !dbg !372
  %69 = sext i8 %68 to i32, !dbg !370
  %70 = sext i32 %69 to i64, !dbg !370
  %71 = getelementptr inbounds i16, ptr %65, i64 %70, !dbg !370
  %72 = load i16, ptr %71, align 2, !dbg !370
  %73 = zext i16 %72 to i32, !dbg !370
  %74 = and i32 %73, 8192, !dbg !370
  %75 = icmp ne i32 %74, 0, !dbg !373
  %76 = xor i1 %75, true, !dbg !373
  %77 = xor i1 %76, true, !dbg !374
  %78 = zext i1 %77 to i32, !dbg !374
  %79 = sext i32 %78 to i64, !dbg !374
  %80 = load i64, ptr %10, align 8, !dbg !375
  %81 = add i64 %80, %79, !dbg !375
  store i64 %81, ptr %10, align 8, !dbg !375
  br label %54, !dbg !362, !llvm.loop !376

82:                                               ; preds = %61
  %83 = load i64, ptr %10, align 8, !dbg !378
  %84 = icmp eq i64 %83, 2, !dbg !380
  br i1 %84, label %85, label %87, !dbg !380

85:                                               ; preds = %82
  %86 = load ptr, ptr %7, align 8, !dbg !381
  store ptr %86, ptr %8, align 8, !dbg !383
  store i8 0, ptr %6, align 1, !dbg !384
  br label %87, !dbg !385

87:                                               ; preds = %85, %82
  br label %88, !dbg !386

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
    #dbg_declare(ptr %11, !387, !DIExpression(), !388)
  %90 = load ptr, ptr %8, align 8, !dbg !389
  %91 = call i64 @strcspn(ptr noundef %90, ptr noundef @.str.28) #10, !dbg !390
  store i64 %91, ptr %11, align 8, !dbg !388
    #dbg_declare(ptr %12, !391, !DIExpression(), !392)
  %92 = load ptr, ptr %8, align 8, !dbg !393
  %93 = load i64, ptr %11, align 8, !dbg !394
  %94 = getelementptr inbounds nuw i8, ptr %92, i64 %93, !dbg !395
  store ptr %94, ptr %12, align 8, !dbg !392
  br label %95, !dbg !396

95:                                               ; preds = %161, %89
  %96 = load ptr, ptr %12, align 8, !dbg !397
  %97 = load i8, ptr %96, align 1, !dbg !398
  %98 = sext i8 %97 to i32, !dbg !398
  %99 = icmp ne i32 %98, 0, !dbg !398
  br i1 %99, label %100, label %105, !dbg !399

100:                                              ; preds = %95
  %101 = load ptr, ptr %12, align 8, !dbg !400
  %102 = load i8, ptr %101, align 1, !dbg !401
  %103 = sext i8 %102 to i32, !dbg !401
  %104 = icmp ne i32 %103, 10, !dbg !402
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !403
  br i1 %106, label %107, label %164, !dbg !396

107:                                              ; preds = %105
  %108 = load ptr, ptr %12, align 8, !dbg !404
  %109 = load i8, ptr %108, align 1, !dbg !407
  %110 = sext i8 %109 to i32, !dbg !407
  %111 = icmp eq i32 %110, 45, !dbg !408
  br i1 %111, label %112, label %119, !dbg !409

112:                                              ; preds = %107
  %113 = load ptr, ptr %12, align 8, !dbg !410
  %114 = getelementptr inbounds i8, ptr %113, i64 1, !dbg !411
  %115 = load i8, ptr %114, align 1, !dbg !411
  %116 = sext i8 %115 to i32, !dbg !411
  %117 = icmp eq i32 %116, 45, !dbg !412
  br i1 %117, label %118, label %119, !dbg !409

118:                                              ; preds = %112
  store i8 0, ptr %6, align 1, !dbg !413
  br label %119, !dbg !414

119:                                              ; preds = %118, %112, %107
  %120 = call ptr @__ctype_b_loc() #11, !dbg !415
  %121 = load ptr, ptr %120, align 8, !dbg !415
  %122 = load ptr, ptr %12, align 8, !dbg !417
  %123 = load i8, ptr %122, align 1, !dbg !418
  %124 = sext i8 %123 to i32, !dbg !415
  %125 = sext i32 %124 to i64, !dbg !415
  %126 = getelementptr inbounds i16, ptr %121, i64 %125, !dbg !415
  %127 = load i16, ptr %126, align 2, !dbg !415
  %128 = zext i16 %127 to i32, !dbg !415
  %129 = and i32 %128, 8192, !dbg !415
  %130 = icmp ne i32 %129, 0, !dbg !415
  br i1 %130, label %131, label %161, !dbg !415

131:                                              ; preds = %119
  %132 = load ptr, ptr %12, align 8, !dbg !419
  %133 = load i8, ptr %132, align 1, !dbg !422
  %134 = sext i8 %133 to i32, !dbg !422
  %135 = icmp eq i32 %134, 9, !dbg !423
  br i1 %135, label %149, label %136, !dbg !424

136:                                              ; preds = %131
  %137 = call ptr @__ctype_b_loc() #11, !dbg !425
  %138 = load ptr, ptr %137, align 8, !dbg !425
  %139 = load ptr, ptr %12, align 8, !dbg !426
  %140 = getelementptr inbounds i8, ptr %139, i64 1, !dbg !427
  %141 = load i8, ptr %140, align 1, !dbg !427
  %142 = sext i8 %141 to i32, !dbg !425
  %143 = sext i32 %142 to i64, !dbg !425
  %144 = getelementptr inbounds i16, ptr %138, i64 %143, !dbg !425
  %145 = load i16, ptr %144, align 2, !dbg !425
  %146 = zext i16 %145 to i32, !dbg !425
  %147 = and i32 %146, 8192, !dbg !425
  %148 = icmp ne i32 %147, 0, !dbg !425
  br i1 %148, label %149, label %150, !dbg !424

149:                                              ; preds = %136, %131
  br label %164, !dbg !428

150:                                              ; preds = %136
  %151 = load i8, ptr %6, align 1, !dbg !429
  %152 = trunc i8 %151 to i1, !dbg !429
  br i1 %152, label %160, label %153, !dbg !431

153:                                              ; preds = %150
  %154 = load ptr, ptr %12, align 8, !dbg !432
  %155 = getelementptr inbounds i8, ptr %154, i64 1, !dbg !433
  %156 = load i8, ptr %155, align 1, !dbg !433
  %157 = sext i8 %156 to i32, !dbg !433
  %158 = icmp ne i32 %157, 45, !dbg !434
  br i1 %158, label %159, label %160, !dbg !431

159:                                              ; preds = %153
  br label %164, !dbg !435

160:                                              ; preds = %153, %150
  br label %161, !dbg !436

161:                                              ; preds = %160, %119
  %162 = load ptr, ptr %12, align 8, !dbg !437
  %163 = getelementptr inbounds nuw i8, ptr %162, i32 1, !dbg !437
  store ptr %163, ptr %12, align 8, !dbg !437
  br label %95, !dbg !396, !llvm.loop !438

164:                                              ; preds = %159, %149, %105
  %165 = load ptr, ptr %4, align 8, !dbg !440
  %166 = load ptr, ptr %7, align 8, !dbg !441
  %167 = load ptr, ptr %4, align 8, !dbg !442
  %168 = ptrtoint ptr %166 to i64, !dbg !443
  %169 = ptrtoint ptr %167 to i64, !dbg !443
  %170 = sub i64 %168, %169, !dbg !443
  %171 = load ptr, ptr @stdout, align 8, !dbg !444
  %172 = call i64 @fwrite_unlocked(ptr noundef %165, i64 noundef 1, i64 noundef %170, ptr noundef %171), !dbg !445
    #dbg_declare(ptr %13, !446, !DIExpression(), !447)
  %173 = load ptr, ptr %3, align 8, !dbg !448
  %174 = call zeroext i1 @streq(ptr noundef %173, ptr noundef @.str.29), !dbg !449
  br i1 %174, label %175, label %176, !dbg !449

175:                                              ; preds = %164
  br label %232, !dbg !449

176:                                              ; preds = %164
  %177 = load ptr, ptr %3, align 8, !dbg !450
  %178 = call zeroext i1 @streq(ptr noundef %177, ptr noundef @.str.31), !dbg !451
  br i1 %178, label %179, label %180, !dbg !451

179:                                              ; preds = %176
  br label %230, !dbg !451

180:                                              ; preds = %176
  %181 = load ptr, ptr %3, align 8, !dbg !452
  %182 = call zeroext i1 @streq(ptr noundef %181, ptr noundef @.str.33), !dbg !453
  br i1 %182, label %183, label %184, !dbg !453

183:                                              ; preds = %180
  br label %228, !dbg !453

184:                                              ; preds = %180
  %185 = load ptr, ptr %3, align 8, !dbg !454
  %186 = call zeroext i1 @streq(ptr noundef %185, ptr noundef @.str.34), !dbg !455
  br i1 %186, label %187, label %188, !dbg !455

187:                                              ; preds = %184
  br label %226, !dbg !455

188:                                              ; preds = %184
  %189 = load ptr, ptr %3, align 8, !dbg !456
  %190 = call zeroext i1 @streq(ptr noundef %189, ptr noundef @.str.36), !dbg !457
  br i1 %190, label %191, label %192, !dbg !457

191:                                              ; preds = %188
  br label %224, !dbg !457

192:                                              ; preds = %188
  %193 = load ptr, ptr %3, align 8, !dbg !458
  %194 = call zeroext i1 @streq(ptr noundef %193, ptr noundef @.str.37), !dbg !459
  br i1 %194, label %195, label %196, !dbg !459

195:                                              ; preds = %192
  br label %222, !dbg !459

196:                                              ; preds = %192
  %197 = load ptr, ptr %3, align 8, !dbg !460
  %198 = call zeroext i1 @streq(ptr noundef %197, ptr noundef @.str.38), !dbg !461
  br i1 %198, label %199, label %200, !dbg !461

199:                                              ; preds = %196
  br label %220, !dbg !461

200:                                              ; preds = %196
  %201 = load ptr, ptr %3, align 8, !dbg !462
  %202 = call zeroext i1 @streq(ptr noundef %201, ptr noundef @.str.39), !dbg !463
  br i1 %202, label %203, label %204, !dbg !463

203:                                              ; preds = %200
  br label %218, !dbg !463

204:                                              ; preds = %200
  %205 = load ptr, ptr %3, align 8, !dbg !464
  %206 = call zeroext i1 @streq(ptr noundef %205, ptr noundef @.str.40), !dbg !465
  br i1 %206, label %207, label %208, !dbg !465

207:                                              ; preds = %204
  br label %216, !dbg !465

208:                                              ; preds = %204
  %209 = load ptr, ptr %3, align 8, !dbg !466
  %210 = call zeroext i1 @streq(ptr noundef %209, ptr noundef @.str.41), !dbg !467
  br i1 %210, label %211, label %212, !dbg !467

211:                                              ; preds = %208
  br label %214, !dbg !467

212:                                              ; preds = %208
  %213 = load ptr, ptr %3, align 8, !dbg !468
  br label %214, !dbg !467

214:                                              ; preds = %212, %211
  %215 = phi ptr [ @.str.35, %211 ], [ %213, %212 ], !dbg !467
  br label %216, !dbg !465

216:                                              ; preds = %214, %207
  %217 = phi ptr [ @.str.35, %207 ], [ %215, %214 ], !dbg !465
  br label %218, !dbg !463

218:                                              ; preds = %216, %203
  %219 = phi ptr [ @.str.35, %203 ], [ %217, %216 ], !dbg !463
  br label %220, !dbg !461

220:                                              ; preds = %218, %199
  %221 = phi ptr [ @.str.35, %199 ], [ %219, %218 ], !dbg !461
  br label %222, !dbg !459

222:                                              ; preds = %220, %195
  %223 = phi ptr [ @.str.35, %195 ], [ %221, %220 ], !dbg !459
  br label %224, !dbg !457

224:                                              ; preds = %222, %191
  %225 = phi ptr [ @.str.35, %191 ], [ %223, %222 ], !dbg !457
  br label %226, !dbg !455

226:                                              ; preds = %224, %187
  %227 = phi ptr [ @.str.35, %187 ], [ %225, %224 ], !dbg !455
  br label %228, !dbg !453

228:                                              ; preds = %226, %183
  %229 = phi ptr [ @.str.32, %183 ], [ %227, %226 ], !dbg !453
  br label %230, !dbg !451

230:                                              ; preds = %228, %179
  %231 = phi ptr [ @.str.32, %179 ], [ %229, %228 ], !dbg !451
  br label %232, !dbg !449

232:                                              ; preds = %230, %175
  %233 = phi ptr [ @.str.30, %175 ], [ %231, %230 ], !dbg !449
  store ptr %233, ptr %13, align 8, !dbg !447
  %234 = load ptr, ptr %8, align 8, !dbg !469
  %235 = call i32 @strncmp(ptr noundef %234, ptr noundef @.str.20, i64 noundef 6) #10, !dbg !471
  %236 = icmp eq i32 %235, 0, !dbg !471
  br i1 %236, label %241, label %237, !dbg !472

237:                                              ; preds = %232
  %238 = load ptr, ptr %8, align 8, !dbg !473
  %239 = call i32 @strncmp(ptr noundef %238, ptr noundef @.str.21, i64 noundef 9) #10, !dbg !474
  %240 = icmp eq i32 %239, 0, !dbg !474
  br i1 %240, label %241, label %248, !dbg !472

241:                                              ; preds = %237, %232
  %242 = load ptr, ptr %13, align 8, !dbg !475
  %243 = load ptr, ptr %13, align 8, !dbg !477
  %244 = load i64, ptr %11, align 8, !dbg !478
  %245 = trunc i64 %244 to i32, !dbg !479
  %246 = load ptr, ptr %8, align 8, !dbg !480
  %247 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str.42, ptr noundef @.str.43, ptr noundef %242, ptr noundef %243, i32 noundef %245, ptr noundef %246), !dbg !481
  br label %254, !dbg !482

248:                                              ; preds = %237
  %249 = load ptr, ptr %13, align 8, !dbg !483
  %250 = load i64, ptr %11, align 8, !dbg !485
  %251 = trunc i64 %250 to i32, !dbg !486
  %252 = load ptr, ptr %8, align 8, !dbg !487
  %253 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str.44, ptr noundef @.str.45, ptr noundef %249, i32 noundef %251, ptr noundef %252), !dbg !488
  br label %254

254:                                              ; preds = %248, %241
  %255 = load ptr, ptr @stdout, align 8, !dbg !489
  %256 = call i32 @fputs_unlocked(ptr noundef @.str.46, ptr noundef %255), !dbg !490
  %257 = load ptr, ptr @stdout, align 8, !dbg !491
  %258 = call i32 @fputs_unlocked(ptr noundef @.str.47, ptr noundef %257), !dbg !492
  %259 = load ptr, ptr %7, align 8, !dbg !493
  %260 = load ptr, ptr %12, align 8, !dbg !494
  %261 = load ptr, ptr %7, align 8, !dbg !495
  %262 = ptrtoint ptr %260 to i64, !dbg !496
  %263 = ptrtoint ptr %261 to i64, !dbg !496
  %264 = sub i64 %262, %263, !dbg !496
  %265 = load ptr, ptr @stdout, align 8, !dbg !497
  %266 = call i64 @fwrite_unlocked(ptr noundef %259, i64 noundef 1, i64 noundef %264, ptr noundef %265), !dbg !498
  %267 = load ptr, ptr @stdout, align 8, !dbg !499
  %268 = call i32 @fputs_unlocked(ptr noundef @.str.48, ptr noundef %267), !dbg !500
  %269 = load ptr, ptr @stdout, align 8, !dbg !501
  %270 = call i32 @fputs_unlocked(ptr noundef @.str.49, ptr noundef %269), !dbg !502
  %271 = load ptr, ptr %12, align 8, !dbg !503
  %272 = load ptr, ptr @stdout, align 8, !dbg !504
  %273 = call i32 @fputs_unlocked(ptr noundef %271, ptr noundef %272), !dbg !505
  br label %274, !dbg !506

274:                                              ; preds = %254, %33
  ret void, !dbg !506
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #4 !dbg !507 {
  %2 = alloca ptr, align 8
  %3 = alloca [7 x %struct.infomap], align 16
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !510, !DIExpression(), !511)
    #dbg_declare(ptr %3, !512, !DIExpression(), !519)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %3, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !519
    #dbg_declare(ptr %4, !520, !DIExpression(), !521)
  %7 = load ptr, ptr %2, align 8, !dbg !522
  store ptr %7, ptr %4, align 8, !dbg !521
    #dbg_declare(ptr %5, !523, !DIExpression(), !525)
  %8 = getelementptr inbounds [7 x %struct.infomap], ptr %3, i64 0, i64 0, !dbg !526
  store ptr %8, ptr %5, align 8, !dbg !525
  br label %9, !dbg !527

9:                                                ; preds = %23, %1
  %10 = load ptr, ptr %5, align 8, !dbg !528
  %11 = getelementptr inbounds nuw %struct.infomap, ptr %10, i32 0, i32 0, !dbg !529
  %12 = load ptr, ptr %11, align 8, !dbg !529
  %13 = icmp ne ptr %12, null, !dbg !528
  br i1 %13, label %14, label %21, !dbg !530

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 8, !dbg !531
  %16 = load ptr, ptr %5, align 8, !dbg !532
  %17 = getelementptr inbounds nuw %struct.infomap, ptr %16, i32 0, i32 0, !dbg !533
  %18 = load ptr, ptr %17, align 8, !dbg !533
  %19 = call zeroext i1 @streq(ptr noundef %15, ptr noundef %18), !dbg !534
  %20 = xor i1 %19, true, !dbg !535
  br label %21

21:                                               ; preds = %14, %9
  %22 = phi i1 [ false, %9 ], [ %20, %14 ], !dbg !536
  br i1 %22, label %23, label %26, !dbg !527

23:                                               ; preds = %21
  %24 = load ptr, ptr %5, align 8, !dbg !537
  %25 = getelementptr inbounds nuw %struct.infomap, ptr %24, i32 1, !dbg !537
  store ptr %25, ptr %5, align 8, !dbg !537
  br label %9, !dbg !527, !llvm.loop !538

26:                                               ; preds = %21
  %27 = load ptr, ptr %5, align 8, !dbg !539
  %28 = getelementptr inbounds nuw %struct.infomap, ptr %27, i32 0, i32 1, !dbg !541
  %29 = load ptr, ptr %28, align 8, !dbg !541
  %30 = icmp ne ptr %29, null, !dbg !539
  br i1 %30, label %31, label %35, !dbg !539

31:                                               ; preds = %26
  %32 = load ptr, ptr %5, align 8, !dbg !542
  %33 = getelementptr inbounds nuw %struct.infomap, ptr %32, i32 0, i32 1, !dbg !543
  %34 = load ptr, ptr %33, align 8, !dbg !543
  store ptr %34, ptr %4, align 8, !dbg !544
  br label %35, !dbg !545

35:                                               ; preds = %31, %26
  call void @emit_bug_reporting_address(), !dbg !546
    #dbg_declare(ptr %6, !547, !DIExpression(), !548)
  %36 = load ptr, ptr %2, align 8, !dbg !549
  %37 = call zeroext i1 @streq(ptr noundef %36, ptr noundef @.str.29), !dbg !550
  br i1 %37, label %38, label %39, !dbg !550

38:                                               ; preds = %35
  br label %41, !dbg !550

39:                                               ; preds = %35
  %40 = load ptr, ptr %2, align 8, !dbg !551
  br label %41, !dbg !550

41:                                               ; preds = %39, %38
  %42 = phi ptr [ @.str.30, %38 ], [ %40, %39 ], !dbg !550
  store ptr %42, ptr %6, align 8, !dbg !548
  %43 = call ptr @gettext(ptr noundef @.str.53) #9, !dbg !552
  %44 = load ptr, ptr %6, align 8, !dbg !553
  %45 = call i32 (ptr, ...) @rpl_printf(ptr noundef %43, ptr noundef @.str.43, ptr noundef %44), !dbg !554
  %46 = call ptr @gettext(ptr noundef @.str.54) #9, !dbg !555
  %47 = load ptr, ptr %4, align 8, !dbg !556
  %48 = load ptr, ptr %4, align 8, !dbg !557
  %49 = load ptr, ptr %2, align 8, !dbg !558
  %50 = icmp eq ptr %48, %49, !dbg !559
  %51 = zext i1 %50 to i64, !dbg !557
  %52 = select i1 %50, ptr @.str.55, ptr @.str.17, !dbg !557
  %53 = call i32 (ptr, ...) @rpl_printf(ptr noundef %46, ptr noundef %47, ptr noundef %52), !dbg !560
  ret void, !dbg !561
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #4 !dbg !562 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
    #dbg_declare(ptr %4, !566, !DIExpression(), !567)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !568, !DIExpression(), !569)
    #dbg_declare(ptr %6, !570, !DIExpression(), !571)
  store i8 1, ptr %6, align 1, !dbg !571
    #dbg_declare(ptr %7, !572, !DIExpression(), !573)
  %15 = call ptr @getenv(ptr noundef @.str.15) #9, !dbg !574
  %16 = icmp ne ptr %15, null, !dbg !575
  %17 = xor i1 %16, true, !dbg !575
  %18 = xor i1 %17, true, !dbg !576
  %19 = zext i1 %18 to i8, !dbg !573
  store i8 %19, ptr %7, align 1, !dbg !573
    #dbg_declare(ptr %8, !577, !DIExpression(), !578)
  %20 = load i8, ptr %7, align 1, !dbg !579
  %21 = trunc i8 %20 to i1, !dbg !579
  br i1 %21, label %22, label %32, !dbg !580

22:                                               ; preds = %2
  %23 = load i32, ptr %4, align 4, !dbg !581
  %24 = icmp slt i32 1, %23, !dbg !582
  br i1 %24, label %25, label %30, !dbg !583

25:                                               ; preds = %22
  %26 = load ptr, ptr %5, align 8, !dbg !584
  %27 = getelementptr inbounds ptr, ptr %26, i64 1, !dbg !584
  %28 = load ptr, ptr %27, align 8, !dbg !584
  %29 = call zeroext i1 @streq(ptr noundef %28, ptr noundef @.str.16), !dbg !585
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi i1 [ false, %22 ], [ %29, %25 ], !dbg !586
  br label %32, !dbg !580

32:                                               ; preds = %30, %2
  %33 = phi i1 [ true, %2 ], [ %31, %30 ]
  %34 = zext i1 %33 to i8, !dbg !578
  store i8 %34, ptr %8, align 1, !dbg !578
    #dbg_declare(ptr %9, !587, !DIExpression(), !588)
  store i8 0, ptr %9, align 1, !dbg !588
  %35 = load ptr, ptr %5, align 8, !dbg !589
  %36 = getelementptr inbounds ptr, ptr %35, i64 0, !dbg !589
  %37 = load ptr, ptr %36, align 8, !dbg !589
  call void @set_program_name(ptr noundef %37), !dbg !590
  %38 = call ptr @setlocale(i32 noundef 6, ptr noundef @.str.17) #9, !dbg !591
  %39 = call ptr @bindtextdomain(ptr noundef @.str.18, ptr noundef @.str.19) #9, !dbg !592
  %40 = call ptr @textdomain(ptr noundef @.str.18) #9, !dbg !593
  %41 = call i32 @atexit(ptr noundef @close_stdout) #9, !dbg !594
  %42 = load i8, ptr %8, align 1, !dbg !595
  %43 = trunc i8 %42 to i1, !dbg !595
  br i1 %43, label %44, label %64, !dbg !597

44:                                               ; preds = %32
  %45 = load i32, ptr %4, align 4, !dbg !598
  %46 = icmp eq i32 %45, 2, !dbg !599
  br i1 %46, label %47, label %64, !dbg !597

47:                                               ; preds = %44
  %48 = load ptr, ptr %5, align 8, !dbg !600
  %49 = getelementptr inbounds ptr, ptr %48, i64 1, !dbg !600
  %50 = load ptr, ptr %49, align 8, !dbg !600
  %51 = call zeroext i1 @streq(ptr noundef %50, ptr noundef @.str.20), !dbg !603
  br i1 %51, label %52, label %53, !dbg !603

52:                                               ; preds = %47
  call void @usage(i32 noundef 0) #12, !dbg !604
  unreachable, !dbg !604

53:                                               ; preds = %47
  %54 = load ptr, ptr %5, align 8, !dbg !605
  %55 = getelementptr inbounds ptr, ptr %54, i64 1, !dbg !605
  %56 = load ptr, ptr %55, align 8, !dbg !605
  %57 = call zeroext i1 @streq(ptr noundef %56, ptr noundef @.str.21), !dbg !607
  br i1 %57, label %58, label %63, !dbg !607

58:                                               ; preds = %53
  %59 = load ptr, ptr @stdout, align 8, !dbg !608
  %60 = load ptr, ptr @Version, align 8, !dbg !610
  %61 = call ptr @proper_name_lite(ptr noundef @.str.23, ptr noundef @.str.23), !dbg !611
  %62 = call ptr @proper_name_lite(ptr noundef @.str.24, ptr noundef @.str.24), !dbg !611
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %59, ptr noundef @.str.4, ptr noundef @.str.22, ptr noundef %60, ptr noundef %61, ptr noundef %62, ptr noundef null), !dbg !612
  store i32 0, ptr %3, align 4, !dbg !613
  br label %311, !dbg !613

63:                                               ; preds = %53
  br label %64, !dbg !614

64:                                               ; preds = %63, %44, %32
  %65 = load i32, ptr %4, align 4, !dbg !615
  %66 = add nsw i32 %65, -1, !dbg !615
  store i32 %66, ptr %4, align 4, !dbg !615
  %67 = load ptr, ptr %5, align 8, !dbg !616
  %68 = getelementptr inbounds nuw ptr, ptr %67, i32 1, !dbg !616
  store ptr %68, ptr %5, align 8, !dbg !616
  %69 = load i8, ptr %8, align 1, !dbg !617
  %70 = trunc i8 %69 to i1, !dbg !617
  br i1 %70, label %71, label %131, !dbg !617

71:                                               ; preds = %64
  br label %72, !dbg !619

72:                                               ; preds = %125, %71
  %73 = load i32, ptr %4, align 4, !dbg !620
  %74 = icmp sgt i32 %73, 0, !dbg !621
  br i1 %74, label %75, label %82, !dbg !622

75:                                               ; preds = %72
  %76 = load ptr, ptr %5, align 8, !dbg !623
  %77 = getelementptr inbounds ptr, ptr %76, i64 0, !dbg !623
  %78 = load ptr, ptr %77, align 8, !dbg !623
  %79 = load i8, ptr %78, align 1, !dbg !624
  %80 = sext i8 %79 to i32, !dbg !624
  %81 = icmp eq i32 %80, 45, !dbg !625
  br label %82

82:                                               ; preds = %75, %72
  %83 = phi i1 [ false, %72 ], [ %81, %75 ], !dbg !626
  br i1 %83, label %84, label %130, !dbg !619

84:                                               ; preds = %82
    #dbg_declare(ptr %10, !627, !DIExpression(), !629)
  %85 = load ptr, ptr %5, align 8, !dbg !630
  %86 = getelementptr inbounds ptr, ptr %85, i64 0, !dbg !630
  %87 = load ptr, ptr %86, align 8, !dbg !630
  %88 = getelementptr inbounds i8, ptr %87, i64 1, !dbg !631
  store ptr %88, ptr %10, align 8, !dbg !629
    #dbg_declare(ptr %11, !632, !DIExpression(), !633)
  store i64 0, ptr %11, align 8, !dbg !634
  br label %89, !dbg !636

89:                                               ; preds = %104, %84
  %90 = load ptr, ptr %10, align 8, !dbg !637
  %91 = load i64, ptr %11, align 8, !dbg !639
  %92 = getelementptr inbounds nuw i8, ptr %90, i64 %91, !dbg !637
  %93 = load i8, ptr %92, align 1, !dbg !637
  %94 = icmp ne i8 %93, 0, !dbg !640
  br i1 %94, label %95, label %107, !dbg !640

95:                                               ; preds = %89
  %96 = load ptr, ptr %10, align 8, !dbg !641
  %97 = load i64, ptr %11, align 8, !dbg !642
  %98 = getelementptr inbounds nuw i8, ptr %96, i64 %97, !dbg !641
  %99 = load i8, ptr %98, align 1, !dbg !641
  %100 = sext i8 %99 to i32, !dbg !641
  switch i32 %100, label %102 [
    i32 101, label %101
    i32 69, label %101
    i32 110, label %101
  ], !dbg !643

101:                                              ; preds = %95, %95, %95
  br label %103, !dbg !644

102:                                              ; preds = %95
  br label %132, !dbg !646

103:                                              ; preds = %101
  br label %104, !dbg !647

104:                                              ; preds = %103
  %105 = load i64, ptr %11, align 8, !dbg !648
  %106 = add i64 %105, 1, !dbg !648
  store i64 %106, ptr %11, align 8, !dbg !648
  br label %89, !dbg !649, !llvm.loop !650

107:                                              ; preds = %89
  %108 = load i64, ptr %11, align 8, !dbg !652
  %109 = icmp eq i64 %108, 0, !dbg !654
  br i1 %109, label %110, label %111, !dbg !654

110:                                              ; preds = %107
  br label %132, !dbg !655

111:                                              ; preds = %107
  br label %112, !dbg !656

112:                                              ; preds = %124, %111
  %113 = load ptr, ptr %10, align 8, !dbg !657
  %114 = load i8, ptr %113, align 1, !dbg !658
  %115 = icmp ne i8 %114, 0, !dbg !656
  br i1 %115, label %116, label %125, !dbg !656

116:                                              ; preds = %112
  %117 = load ptr, ptr %10, align 8, !dbg !659
  %118 = getelementptr inbounds nuw i8, ptr %117, i32 1, !dbg !659
  store ptr %118, ptr %10, align 8, !dbg !659
  %119 = load i8, ptr %117, align 1, !dbg !660
  %120 = sext i8 %119 to i32, !dbg !660
  switch i32 %120, label %124 [
    i32 101, label %121
    i32 69, label %122
    i32 110, label %123
  ], !dbg !661

121:                                              ; preds = %116
  store i8 1, ptr %9, align 1, !dbg !662
  br label %124, !dbg !664

122:                                              ; preds = %116
  store i8 0, ptr %9, align 1, !dbg !665
  br label %124, !dbg !666

123:                                              ; preds = %116
  store i8 0, ptr %6, align 1, !dbg !667
  br label %124, !dbg !668

124:                                              ; preds = %116, %123, %122, %121
  br label %112, !dbg !656, !llvm.loop !669

125:                                              ; preds = %112
  %126 = load i32, ptr %4, align 4, !dbg !671
  %127 = add nsw i32 %126, -1, !dbg !671
  store i32 %127, ptr %4, align 4, !dbg !671
  %128 = load ptr, ptr %5, align 8, !dbg !672
  %129 = getelementptr inbounds nuw ptr, ptr %128, i32 1, !dbg !672
  store ptr %129, ptr %5, align 8, !dbg !672
  br label %72, !dbg !619, !llvm.loop !673

130:                                              ; preds = %82
  br label %131, !dbg !619

131:                                              ; preds = %130, %64
  br label %132, !dbg !617

132:                                              ; preds = %131, %110, %102
    #dbg_label(!675, !676)
  %133 = load i8, ptr %9, align 1, !dbg !677
  %134 = trunc i8 %133 to i1, !dbg !677
  br i1 %134, label %138, label %135, !dbg !679

135:                                              ; preds = %132
  %136 = load i8, ptr %7, align 1, !dbg !680
  %137 = trunc i8 %136 to i1, !dbg !680
  br i1 %137, label %138, label %285, !dbg !679

138:                                              ; preds = %135, %132
  br label %139, !dbg !681

139:                                              ; preds = %283, %138
  %140 = load i32, ptr %4, align 4, !dbg !683
  %141 = icmp sgt i32 %140, 0, !dbg !684
  br i1 %141, label %142, label %284, !dbg !681

142:                                              ; preds = %139
    #dbg_declare(ptr %12, !685, !DIExpression(), !687)
  %143 = load ptr, ptr %5, align 8, !dbg !688
  %144 = getelementptr inbounds ptr, ptr %143, i64 0, !dbg !688
  %145 = load ptr, ptr %144, align 8, !dbg !688
  store ptr %145, ptr %12, align 8, !dbg !687
    #dbg_declare(ptr %13, !689, !DIExpression(), !691)
  br label %146, !dbg !692

146:                                              ; preds = %270, %142
  %147 = load ptr, ptr %12, align 8, !dbg !693
  %148 = getelementptr inbounds nuw i8, ptr %147, i32 1, !dbg !693
  store ptr %148, ptr %12, align 8, !dbg !693
  %149 = load i8, ptr %147, align 1, !dbg !694
  store i8 %149, ptr %13, align 1, !dbg !695
  %150 = icmp ne i8 %149, 0, !dbg !692
  br i1 %150, label %151, label %274, !dbg !692

151:                                              ; preds = %146
  %152 = load i8, ptr %13, align 1, !dbg !696
  %153 = zext i8 %152 to i32, !dbg !696
  %154 = icmp eq i32 %153, 92, !dbg !699
  br i1 %154, label %155, label %270, !dbg !700

155:                                              ; preds = %151
  %156 = load ptr, ptr %12, align 8, !dbg !701
  %157 = load i8, ptr %156, align 1, !dbg !702
  %158 = sext i8 %157 to i32, !dbg !702
  %159 = icmp ne i32 %158, 0, !dbg !702
  br i1 %159, label %160, label %270, !dbg !700

160:                                              ; preds = %155
  %161 = load ptr, ptr %12, align 8, !dbg !703
  %162 = getelementptr inbounds nuw i8, ptr %161, i32 1, !dbg !703
  store ptr %162, ptr %12, align 8, !dbg !703
  %163 = load i8, ptr %161, align 1, !dbg !705
  store i8 %163, ptr %13, align 1, !dbg !706
  %164 = zext i8 %163 to i32, !dbg !707
  switch i32 %164, label %267 [
    i32 97, label %165
    i32 98, label %166
    i32 99, label %167
    i32 101, label %168
    i32 102, label %169
    i32 110, label %170
    i32 114, label %171
    i32 116, label %172
    i32 118, label %173
    i32 120, label %174
    i32 48, label %203
    i32 49, label %218
    i32 50, label %218
    i32 51, label %218
    i32 52, label %218
    i32 53, label %218
    i32 54, label %218
    i32 55, label %218
    i32 92, label %265
  ], !dbg !708

165:                                              ; preds = %160
  store i8 7, ptr %13, align 1, !dbg !709
  br label %269, !dbg !711

166:                                              ; preds = %160
  store i8 8, ptr %13, align 1, !dbg !712
  br label %269, !dbg !713

167:                                              ; preds = %160
  store i32 0, ptr %3, align 4, !dbg !714
  br label %311, !dbg !714

168:                                              ; preds = %160
  store i8 27, ptr %13, align 1, !dbg !715
  br label %269, !dbg !716

169:                                              ; preds = %160
  store i8 12, ptr %13, align 1, !dbg !717
  br label %269, !dbg !718

170:                                              ; preds = %160
  store i8 10, ptr %13, align 1, !dbg !719
  br label %269, !dbg !720

171:                                              ; preds = %160
  store i8 13, ptr %13, align 1, !dbg !721
  br label %269, !dbg !722

172:                                              ; preds = %160
  store i8 9, ptr %13, align 1, !dbg !723
  br label %269, !dbg !724

173:                                              ; preds = %160
  store i8 11, ptr %13, align 1, !dbg !725
  br label %269, !dbg !726

174:                                              ; preds = %160
    #dbg_declare(ptr %14, !727, !DIExpression(), !729)
  %175 = load ptr, ptr %12, align 8, !dbg !730
  %176 = load i8, ptr %175, align 1, !dbg !731
  store i8 %176, ptr %14, align 1, !dbg !729
  %177 = load i8, ptr %14, align 1, !dbg !732
  %178 = zext i8 %177 to i32, !dbg !732
  %179 = call zeroext i1 @c_isxdigit(i32 noundef %178), !dbg !734
  br i1 %179, label %181, label %180, !dbg !735

180:                                              ; preds = %174
  br label %266, !dbg !736

181:                                              ; preds = %174
  %182 = load ptr, ptr %12, align 8, !dbg !737
  %183 = getelementptr inbounds nuw i8, ptr %182, i32 1, !dbg !737
  store ptr %183, ptr %12, align 8, !dbg !737
  %184 = load i8, ptr %14, align 1, !dbg !738
  %185 = call i32 @hextobin(i8 noundef zeroext %184), !dbg !739
  %186 = trunc i32 %185 to i8, !dbg !739
  store i8 %186, ptr %13, align 1, !dbg !740
  %187 = load ptr, ptr %12, align 8, !dbg !741
  %188 = load i8, ptr %187, align 1, !dbg !742
  store i8 %188, ptr %14, align 1, !dbg !743
  %189 = load i8, ptr %14, align 1, !dbg !744
  %190 = zext i8 %189 to i32, !dbg !744
  %191 = call zeroext i1 @c_isxdigit(i32 noundef %190), !dbg !746
  br i1 %191, label %192, label %202, !dbg !746

192:                                              ; preds = %181
  %193 = load ptr, ptr %12, align 8, !dbg !747
  %194 = getelementptr inbounds nuw i8, ptr %193, i32 1, !dbg !747
  store ptr %194, ptr %12, align 8, !dbg !747
  %195 = load i8, ptr %13, align 1, !dbg !749
  %196 = zext i8 %195 to i32, !dbg !749
  %197 = mul nsw i32 %196, 16, !dbg !750
  %198 = load i8, ptr %14, align 1, !dbg !751
  %199 = call i32 @hextobin(i8 noundef zeroext %198), !dbg !752
  %200 = add nsw i32 %197, %199, !dbg !753
  %201 = trunc i32 %200 to i8, !dbg !749
  store i8 %201, ptr %13, align 1, !dbg !754
  br label %202, !dbg !755

202:                                              ; preds = %192, %181
  br label %269, !dbg !756

203:                                              ; preds = %160
  store i8 0, ptr %13, align 1, !dbg !757
  %204 = load ptr, ptr %12, align 8, !dbg !758
  %205 = load i8, ptr %204, align 1, !dbg !760
  %206 = sext i8 %205 to i32, !dbg !760
  %207 = icmp sle i32 48, %206, !dbg !761
  br i1 %207, label %208, label %213, !dbg !762

208:                                              ; preds = %203
  %209 = load ptr, ptr %12, align 8, !dbg !763
  %210 = load i8, ptr %209, align 1, !dbg !764
  %211 = sext i8 %210 to i32, !dbg !764
  %212 = icmp sle i32 %211, 55, !dbg !765
  br i1 %212, label %214, label %213, !dbg !766

213:                                              ; preds = %208, %203
  br label %269, !dbg !767

214:                                              ; preds = %208
  %215 = load ptr, ptr %12, align 8, !dbg !768
  %216 = getelementptr inbounds nuw i8, ptr %215, i32 1, !dbg !768
  store ptr %216, ptr %12, align 8, !dbg !768
  %217 = load i8, ptr %215, align 1, !dbg !769
  store i8 %217, ptr %13, align 1, !dbg !770
  br label %218, !dbg !771

218:                                              ; preds = %160, %160, %160, %160, %160, %160, %160, %214
  %219 = load i8, ptr %13, align 1, !dbg !772
  %220 = zext i8 %219 to i32, !dbg !772
  %221 = sub nsw i32 %220, 48, !dbg !772
  %222 = trunc i32 %221 to i8, !dbg !772
  store i8 %222, ptr %13, align 1, !dbg !772
  %223 = load ptr, ptr %12, align 8, !dbg !773
  %224 = load i8, ptr %223, align 1, !dbg !775
  %225 = sext i8 %224 to i32, !dbg !775
  %226 = icmp sle i32 48, %225, !dbg !776
  br i1 %226, label %227, label %243, !dbg !777

227:                                              ; preds = %218
  %228 = load ptr, ptr %12, align 8, !dbg !778
  %229 = load i8, ptr %228, align 1, !dbg !779
  %230 = sext i8 %229 to i32, !dbg !779
  %231 = icmp sle i32 %230, 55, !dbg !780
  br i1 %231, label %232, label %243, !dbg !777

232:                                              ; preds = %227
  %233 = load i8, ptr %13, align 1, !dbg !781
  %234 = zext i8 %233 to i32, !dbg !781
  %235 = mul nsw i32 %234, 8, !dbg !782
  %236 = load ptr, ptr %12, align 8, !dbg !783
  %237 = getelementptr inbounds nuw i8, ptr %236, i32 1, !dbg !783
  store ptr %237, ptr %12, align 8, !dbg !783
  %238 = load i8, ptr %236, align 1, !dbg !784
  %239 = sext i8 %238 to i32, !dbg !784
  %240 = sub nsw i32 %239, 48, !dbg !785
  %241 = add nsw i32 %235, %240, !dbg !786
  %242 = trunc i32 %241 to i8, !dbg !781
  store i8 %242, ptr %13, align 1, !dbg !787
  br label %243, !dbg !788

243:                                              ; preds = %232, %227, %218
  %244 = load ptr, ptr %12, align 8, !dbg !789
  %245 = load i8, ptr %244, align 1, !dbg !791
  %246 = sext i8 %245 to i32, !dbg !791
  %247 = icmp sle i32 48, %246, !dbg !792
  br i1 %247, label %248, label %264, !dbg !793

248:                                              ; preds = %243
  %249 = load ptr, ptr %12, align 8, !dbg !794
  %250 = load i8, ptr %249, align 1, !dbg !795
  %251 = sext i8 %250 to i32, !dbg !795
  %252 = icmp sle i32 %251, 55, !dbg !796
  br i1 %252, label %253, label %264, !dbg !793

253:                                              ; preds = %248
  %254 = load i8, ptr %13, align 1, !dbg !797
  %255 = zext i8 %254 to i32, !dbg !797
  %256 = mul nsw i32 %255, 8, !dbg !798
  %257 = load ptr, ptr %12, align 8, !dbg !799
  %258 = getelementptr inbounds nuw i8, ptr %257, i32 1, !dbg !799
  store ptr %258, ptr %12, align 8, !dbg !799
  %259 = load i8, ptr %257, align 1, !dbg !800
  %260 = sext i8 %259 to i32, !dbg !800
  %261 = sub nsw i32 %260, 48, !dbg !801
  %262 = add nsw i32 %256, %261, !dbg !802
  %263 = trunc i32 %262 to i8, !dbg !797
  store i8 %263, ptr %13, align 1, !dbg !803
  br label %264, !dbg !804

264:                                              ; preds = %253, %248, %243
  br label %269, !dbg !805

265:                                              ; preds = %160
  br label %269, !dbg !806

266:                                              ; preds = %180
    #dbg_label(!807, !808)
  br label %267, !dbg !806

267:                                              ; preds = %160, %266
  %268 = call i32 @putchar_unlocked(i32 noundef 92), !dbg !809
  br label %269, !dbg !810

269:                                              ; preds = %267, %265, %264, %213, %202, %173, %172, %171, %170, %169, %168, %166, %165
  br label %270, !dbg !811

270:                                              ; preds = %269, %155, %151
  %271 = load i8, ptr %13, align 1, !dbg !812
  %272 = zext i8 %271 to i32, !dbg !812
  %273 = call i32 @putchar_unlocked(i32 noundef %272), !dbg !813
  br label %146, !dbg !692, !llvm.loop !814

274:                                              ; preds = %146
  %275 = load i32, ptr %4, align 4, !dbg !816
  %276 = add nsw i32 %275, -1, !dbg !816
  store i32 %276, ptr %4, align 4, !dbg !816
  %277 = load ptr, ptr %5, align 8, !dbg !817
  %278 = getelementptr inbounds nuw ptr, ptr %277, i32 1, !dbg !817
  store ptr %278, ptr %5, align 8, !dbg !817
  %279 = load i32, ptr %4, align 4, !dbg !818
  %280 = icmp sgt i32 %279, 0, !dbg !820
  br i1 %280, label %281, label %283, !dbg !820

281:                                              ; preds = %274
  %282 = call i32 @putchar_unlocked(i32 noundef 32), !dbg !821
  br label %283, !dbg !821

283:                                              ; preds = %281, %274
  br label %139, !dbg !681, !llvm.loop !822

284:                                              ; preds = %139
  br label %305, !dbg !824

285:                                              ; preds = %135
  br label %286, !dbg !825

286:                                              ; preds = %303, %285
  %287 = load i32, ptr %4, align 4, !dbg !827
  %288 = icmp sgt i32 %287, 0, !dbg !828
  br i1 %288, label %289, label %304, !dbg !825

289:                                              ; preds = %286
  %290 = load ptr, ptr %5, align 8, !dbg !829
  %291 = getelementptr inbounds ptr, ptr %290, i64 0, !dbg !829
  %292 = load ptr, ptr %291, align 8, !dbg !829
  %293 = load ptr, ptr @stdout, align 8, !dbg !831
  %294 = call i32 @fputs_unlocked(ptr noundef %292, ptr noundef %293), !dbg !832
  %295 = load i32, ptr %4, align 4, !dbg !833
  %296 = add nsw i32 %295, -1, !dbg !833
  store i32 %296, ptr %4, align 4, !dbg !833
  %297 = load ptr, ptr %5, align 8, !dbg !834
  %298 = getelementptr inbounds nuw ptr, ptr %297, i32 1, !dbg !834
  store ptr %298, ptr %5, align 8, !dbg !834
  %299 = load i32, ptr %4, align 4, !dbg !835
  %300 = icmp sgt i32 %299, 0, !dbg !837
  br i1 %300, label %301, label %303, !dbg !837

301:                                              ; preds = %289
  %302 = call i32 @putchar_unlocked(i32 noundef 32), !dbg !838
  br label %303, !dbg !838

303:                                              ; preds = %301, %289
  br label %286, !dbg !825, !llvm.loop !839

304:                                              ; preds = %286
  br label %305

305:                                              ; preds = %304, %284
  %306 = load i8, ptr %6, align 1, !dbg !841
  %307 = trunc i8 %306 to i1, !dbg !841
  br i1 %307, label %308, label %310, !dbg !841

308:                                              ; preds = %305
  %309 = call i32 @putchar_unlocked(i32 noundef 10), !dbg !843
  br label %310, !dbg !843

310:                                              ; preds = %308, %305
  store i32 0, ptr %3, align 4, !dbg !844
  br label %311, !dbg !844

311:                                              ; preds = %310, %167, %58
  %312 = load i32, ptr %3, align 4, !dbg !845
  ret i32 %312, !dbg !845
}

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #3

declare zeroext i1 @streq(ptr noundef, ptr noundef) #2

declare void @set_program_name(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare ptr @bindtextdomain(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare ptr @textdomain(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @atexit(ptr noundef) #3

declare void @close_stdout() #2

declare void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare ptr @proper_name_lite(ptr noundef, ptr noundef) #2

declare zeroext i1 @c_isxdigit(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hextobin(i8 noundef zeroext %0) #4 !dbg !846 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
    #dbg_declare(ptr %3, !849, !DIExpression(), !850)
  %4 = load i8, ptr %3, align 1, !dbg !851
  %5 = zext i8 %4 to i32, !dbg !851
  switch i32 %5, label %6 [
    i32 97, label %10
    i32 65, label %10
    i32 98, label %11
    i32 66, label %11
    i32 99, label %12
    i32 67, label %12
    i32 100, label %13
    i32 68, label %13
    i32 101, label %14
    i32 69, label %14
    i32 102, label %15
    i32 70, label %15
  ], !dbg !852

6:                                                ; preds = %1
  %7 = load i8, ptr %3, align 1, !dbg !853
  %8 = zext i8 %7 to i32, !dbg !853
  %9 = sub nsw i32 %8, 48, !dbg !855
  store i32 %9, ptr %2, align 4, !dbg !856
  br label %16, !dbg !856

10:                                               ; preds = %1, %1
  store i32 10, ptr %2, align 4, !dbg !857
  br label %16, !dbg !857

11:                                               ; preds = %1, %1
  store i32 11, ptr %2, align 4, !dbg !858
  br label %16, !dbg !858

12:                                               ; preds = %1, %1
  store i32 12, ptr %2, align 4, !dbg !859
  br label %16, !dbg !859

13:                                               ; preds = %1, %1
  store i32 13, ptr %2, align 4, !dbg !860
  br label %16, !dbg !860

14:                                               ; preds = %1, %1
  store i32 14, ptr %2, align 4, !dbg !861
  br label %16, !dbg !861

15:                                               ; preds = %1, %1
  store i32 15, ptr %2, align 4, !dbg !862
  br label %16, !dbg !862

16:                                               ; preds = %15, %14, %13, %12, %11, %10, %6
  %17 = load i32, ptr %2, align 4, !dbg !863
  ret i32 %17, !dbg !863
}

declare i32 @putchar_unlocked(i32 noundef) #2

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

attributes #0 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { noreturn }

!llvm.dbg.cu = !{!126}
!llvm.module.flags = !{!249, !250, !251, !252, !253, !254, !255}
!llvm.ident = !{!256}

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
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 3)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 1)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 10)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 24)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 7)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !2, line: 149, type: !95, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 14)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !95, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !9, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !121, file: !122, line: 594, type: !150, isLocal: true, isDefinition: true)
!121 = distinct !DISubprogram(name: "oputs_", scope: !122, file: !122, line: 592, type: !123, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !126, retainedNodes: !248)
!122 = !DIFile(filename: "src/system.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "6a9c30566098770bfb4561b49834f302")
!123 = !DISubroutineType(types: !124)
!124 = !{null, !125, !125}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!126 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !127, retainedTypes: !147, globals: !152, splitDebugInlining: false, nameTableKind: None)
!127 = !{!128, !132}
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 33, baseType: !129, size: 32, elements: !130)
!129 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!130 = !{!131}
!131 = !DIEnumerator(name: "DEFAULT_ECHO_TO_XPG", value: 0)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !133, line: 46, baseType: !129, size: 32, elements: !134)
!133 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146}
!135 = !DIEnumerator(name: "_ISupper", value: 256)
!136 = !DIEnumerator(name: "_ISlower", value: 512)
!137 = !DIEnumerator(name: "_ISalpha", value: 1024)
!138 = !DIEnumerator(name: "_ISdigit", value: 2048)
!139 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!140 = !DIEnumerator(name: "_ISspace", value: 8192)
!141 = !DIEnumerator(name: "_ISprint", value: 16384)
!142 = !DIEnumerator(name: "_ISgraph", value: 32768)
!143 = !DIEnumerator(name: "_ISblank", value: 1)
!144 = !DIEnumerator(name: "_IScntrl", value: 2)
!145 = !DIEnumerator(name: "_ISpunct", value: 4)
!146 = !DIEnumerator(name: "_ISalnum", value: 8)
!147 = !{!148, !149, !150, !151}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!150 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!151 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!152 = !{!0, !7, !12, !18, !23, !28, !33, !38, !43, !48, !53, !58, !60, !65, !70, !75, !80, !83, !88, !93, !98, !103, !108, !110, !115, !117, !119, !153, !155, !157, !162, !167, !172, !174, !176, !178, !180, !182, !184, !186, !191, !193, !195, !197, !199, !204, !209, !214, !219, !221, !223, !225, !227, !229, !234, !236, !241, !246}
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !122, line: 604, type: !30, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !122, line: 605, type: !30, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !122, line: 614, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 4)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !122, line: 639, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 6)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !122, line: 667, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 2)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !122, line: 667, type: !30, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !122, line: 668, type: !159, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !122, line: 668, type: !85, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !122, line: 669, type: !30, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !122, line: 670, type: !164, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !122, line: 670, type: !164, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !122, line: 671, type: !105, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !122, line: 672, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 8)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !122, line: 673, type: !95, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !122, line: 674, type: !95, isLocal: true, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !122, line: 675, type: !95, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !122, line: 676, type: !95, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !122, line: 688, type: !201, isLocal: true, isDefinition: true)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 17)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !122, line: 688, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 40)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !122, line: 695, type: !211, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 15)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !122, line: 695, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 61)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !122, line: 698, type: !85, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !122, line: 702, type: !30, isLocal: true, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !122, line: 707, type: !30, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !122, line: 710, type: !188, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !122, line: 858, type: !82, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !122, line: 859, type: !231, isLocal: true, isDefinition: true)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 22)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !122, line: 860, type: !211, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !122, line: 882, type: !238, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 27)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !122, line: 884, type: !243, isLocal: true, isDefinition: true)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 51)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !122, line: 885, type: !3, isLocal: true, isDefinition: true)
!248 = !{}
!249 = !{i32 7, !"Dwarf Version", i32 5}
!250 = !{i32 2, !"Debug Info Version", i32 3}
!251 = !{i32 1, !"wchar_size", i32 4}
!252 = !{i32 8, !"PIC Level", i32 2}
!253 = !{i32 7, !"PIE Level", i32 2}
!254 = !{i32 7, !"uwtable", i32 2}
!255 = !{i32 7, !"frame-pointer", i32 2}
!256 = !{!"Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)"}
!257 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 37, type: !258, scopeLine: 38, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !126, retainedNodes: !248)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !150}
!260 = !DILocalVariable(name: "status", arg: 1, scope: !257, file: !2, line: 37, type: !150)
!261 = !DILocation(line: 37, column: 12, scope: !257)
!262 = !DILocation(line: 41, column: 11, scope: !263)
!263 = distinct !DILexicalBlock(scope: !264, file: !2, line: 41, column: 11)
!264 = distinct !DILexicalBlock(scope: !257, file: !2, line: 41, column: 3)
!265 = !DILocation(line: 41, column: 18, scope: !263)
!266 = !DILocation(line: 41, column: 3, scope: !263)
!267 = !DILocation(line: 43, column: 11, scope: !257)
!268 = !DILocation(line: 46, column: 5, scope: !257)
!269 = !DILocation(line: 46, column: 19, scope: !257)
!270 = !DILocation(line: 43, column: 3, scope: !257)
!271 = !DILocation(line: 47, column: 10, scope: !257)
!272 = !DILocation(line: 50, column: 5, scope: !257)
!273 = !DILocation(line: 47, column: 3, scope: !257)
!274 = !DILocation(line: 51, column: 10, scope: !257)
!275 = !DILocation(line: 51, column: 3, scope: !257)
!276 = !DILocation(line: 54, column: 10, scope: !257)
!277 = !DILocation(line: 54, column: 3, scope: !257)
!278 = !DILocation(line: 61, column: 10, scope: !257)
!279 = !DILocation(line: 61, column: 3, scope: !257)
!280 = !DILocation(line: 68, column: 10, scope: !257)
!281 = !DILocation(line: 68, column: 3, scope: !257)
!282 = !DILocation(line: 69, column: 10, scope: !257)
!283 = !DILocation(line: 69, column: 3, scope: !257)
!284 = !DILocation(line: 70, column: 10, scope: !257)
!285 = !DILocation(line: 74, column: 5, scope: !257)
!286 = !DILocation(line: 70, column: 3, scope: !257)
!287 = !DILocation(line: 75, column: 10, scope: !257)
!288 = !DILocation(line: 86, column: 5, scope: !257)
!289 = !DILocation(line: 75, column: 3, scope: !257)
!290 = !DILocation(line: 87, column: 10, scope: !257)
!291 = !DILocation(line: 90, column: 5, scope: !257)
!292 = !DILocation(line: 87, column: 3, scope: !257)
!293 = !DILocation(line: 91, column: 11, scope: !257)
!294 = !DILocation(line: 91, column: 3, scope: !257)
!295 = !DILocation(line: 92, column: 10, scope: !257)
!296 = !DILocation(line: 95, column: 5, scope: !257)
!297 = !DILocation(line: 92, column: 3, scope: !257)
!298 = !DILocation(line: 96, column: 3, scope: !257)
!299 = !DILocation(line: 97, column: 9, scope: !257)
!300 = !DILocation(line: 97, column: 3, scope: !257)
!301 = !DILocalVariable(name: "program", arg: 1, scope: !121, file: !122, line: 592, type: !125)
!302 = !DILocation(line: 592, column: 34, scope: !121)
!303 = !DILocalVariable(name: "option", arg: 2, scope: !121, file: !122, line: 592, type: !125)
!304 = !DILocation(line: 592, column: 55, scope: !121)
!305 = !DILocation(line: 600, column: 7, scope: !306)
!306 = distinct !DILexicalBlock(scope: !121, file: !122, line: 600, column: 7)
!307 = !DILocation(line: 600, column: 19, scope: !306)
!308 = !DILocalVariable(name: "term", scope: !309, file: !122, line: 604, type: !125)
!309 = distinct !DILexicalBlock(scope: !306, file: !122, line: 601, column: 5)
!310 = !DILocation(line: 604, column: 19, scope: !309)
!311 = !DILocation(line: 604, column: 26, scope: !309)
!312 = !DILocation(line: 605, column: 23, scope: !309)
!313 = !DILocation(line: 605, column: 28, scope: !309)
!314 = !DILocation(line: 605, column: 33, scope: !309)
!315 = !DILocation(line: 605, column: 32, scope: !309)
!316 = !DILocation(line: 605, column: 38, scope: !309)
!317 = !DILocation(line: 605, column: 48, scope: !309)
!318 = !DILocation(line: 605, column: 41, scope: !309)
!319 = !DILocation(line: 605, column: 19, scope: !309)
!320 = !DILocation(line: 606, column: 5, scope: !309)
!321 = !DILocation(line: 607, column: 7, scope: !322)
!322 = distinct !DILexicalBlock(scope: !121, file: !122, line: 607, column: 7)
!323 = !DILocation(line: 609, column: 14, scope: !324)
!324 = distinct !DILexicalBlock(scope: !322, file: !122, line: 608, column: 5)
!325 = !DILocation(line: 609, column: 22, scope: !324)
!326 = !DILocation(line: 609, column: 7, scope: !324)
!327 = !DILocation(line: 610, column: 7, scope: !324)
!328 = !DILocalVariable(name: "double_space", scope: !121, file: !122, line: 613, type: !329)
!329 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!330 = !DILocation(line: 613, column: 8, scope: !121)
!331 = !DILocalVariable(name: "first_word", scope: !121, file: !122, line: 614, type: !125)
!332 = !DILocation(line: 614, column: 15, scope: !121)
!333 = !DILocation(line: 614, column: 28, scope: !121)
!334 = !DILocation(line: 614, column: 45, scope: !121)
!335 = !DILocation(line: 614, column: 37, scope: !121)
!336 = !DILocation(line: 614, column: 35, scope: !121)
!337 = !DILocalVariable(name: "option_text", scope: !121, file: !122, line: 615, type: !125)
!338 = !DILocation(line: 615, column: 15, scope: !121)
!339 = !DILocation(line: 615, column: 37, scope: !121)
!340 = !DILocation(line: 615, column: 29, scope: !121)
!341 = !DILocation(line: 616, column: 8, scope: !342)
!342 = distinct !DILexicalBlock(scope: !121, file: !122, line: 616, column: 7)
!343 = !DILocation(line: 616, column: 7, scope: !342)
!344 = !DILocation(line: 618, column: 21, scope: !345)
!345 = distinct !DILexicalBlock(scope: !342, file: !122, line: 617, column: 5)
!346 = !DILocation(line: 618, column: 19, scope: !345)
!347 = !DILocation(line: 621, column: 20, scope: !345)
!348 = !DILocation(line: 622, column: 5, scope: !345)
!349 = !DILocation(line: 623, column: 12, scope: !350)
!350 = distinct !DILexicalBlock(scope: !342, file: !122, line: 623, column: 12)
!351 = !DILocation(line: 623, column: 27, scope: !350)
!352 = !DILocation(line: 623, column: 24, scope: !350)
!353 = !DILocalVariable(name: "s", scope: !354, file: !122, line: 627, type: !125)
!354 = distinct !DILexicalBlock(scope: !350, file: !122, line: 624, column: 5)
!355 = !DILocation(line: 627, column: 19, scope: !354)
!356 = !DILocation(line: 627, column: 23, scope: !354)
!357 = !DILocalVariable(name: "spaces", scope: !354, file: !122, line: 628, type: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !359, line: 18, baseType: !360)
!359 = !DIFile(filename: "/usr/lib/llvm-22/lib/clang/22/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!360 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!361 = !DILocation(line: 628, column: 14, scope: !354)
!362 = !DILocation(line: 629, column: 7, scope: !354)
!363 = !DILocation(line: 629, column: 14, scope: !354)
!364 = !DILocation(line: 629, column: 18, scope: !354)
!365 = !DILocation(line: 629, column: 16, scope: !354)
!366 = !DILocation(line: 629, column: 30, scope: !354)
!367 = !DILocation(line: 629, column: 33, scope: !354)
!368 = !DILocation(line: 629, column: 40, scope: !354)
!369 = !DILocation(line: 0, scope: !354)
!370 = !DILocation(line: 630, column: 21, scope: !354)
!371 = !DILocation(line: 630, column: 32, scope: !354)
!372 = !DILocation(line: 630, column: 30, scope: !354)
!373 = !DILocation(line: 630, column: 20, scope: !354)
!374 = !DILocation(line: 630, column: 19, scope: !354)
!375 = !DILocation(line: 630, column: 16, scope: !354)
!376 = distinct !{!376, !362, !370, !377}
!377 = !{!"llvm.loop.mustprogress"}
!378 = !DILocation(line: 631, column: 11, scope: !379)
!379 = distinct !DILexicalBlock(scope: !354, file: !122, line: 631, column: 11)
!380 = !DILocation(line: 631, column: 18, scope: !379)
!381 = !DILocation(line: 634, column: 25, scope: !382)
!382 = distinct !DILexicalBlock(scope: !379, file: !122, line: 632, column: 9)
!383 = !DILocation(line: 634, column: 23, scope: !382)
!384 = !DILocation(line: 635, column: 24, scope: !382)
!385 = !DILocation(line: 636, column: 9, scope: !382)
!386 = !DILocation(line: 637, column: 5, scope: !354)
!387 = !DILocalVariable(name: "anchor_len", scope: !121, file: !122, line: 639, type: !358)
!388 = !DILocation(line: 639, column: 10, scope: !121)
!389 = !DILocation(line: 639, column: 32, scope: !121)
!390 = !DILocation(line: 639, column: 23, scope: !121)
!391 = !DILocalVariable(name: "desc_text", scope: !121, file: !122, line: 644, type: !125)
!392 = !DILocation(line: 644, column: 15, scope: !121)
!393 = !DILocation(line: 644, column: 27, scope: !121)
!394 = !DILocation(line: 644, column: 41, scope: !121)
!395 = !DILocation(line: 644, column: 39, scope: !121)
!396 = !DILocation(line: 645, column: 3, scope: !121)
!397 = !DILocation(line: 645, column: 11, scope: !121)
!398 = !DILocation(line: 645, column: 10, scope: !121)
!399 = !DILocation(line: 645, column: 21, scope: !121)
!400 = !DILocation(line: 645, column: 25, scope: !121)
!401 = !DILocation(line: 645, column: 24, scope: !121)
!402 = !DILocation(line: 645, column: 35, scope: !121)
!403 = !DILocation(line: 0, scope: !121)
!404 = !DILocation(line: 647, column: 12, scope: !405)
!405 = distinct !DILexicalBlock(scope: !406, file: !122, line: 647, column: 11)
!406 = distinct !DILexicalBlock(scope: !121, file: !122, line: 646, column: 5)
!407 = !DILocation(line: 647, column: 11, scope: !405)
!408 = !DILocation(line: 647, column: 22, scope: !405)
!409 = !DILocation(line: 647, column: 29, scope: !405)
!410 = !DILocation(line: 647, column: 34, scope: !405)
!411 = !DILocation(line: 647, column: 32, scope: !405)
!412 = !DILocation(line: 647, column: 49, scope: !405)
!413 = !DILocation(line: 648, column: 22, scope: !405)
!414 = !DILocation(line: 648, column: 9, scope: !405)
!415 = !DILocation(line: 649, column: 11, scope: !416)
!416 = distinct !DILexicalBlock(scope: !406, file: !122, line: 649, column: 11)
!417 = !DILocation(line: 649, column: 21, scope: !416)
!418 = !DILocation(line: 649, column: 20, scope: !416)
!419 = !DILocation(line: 651, column: 16, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !122, line: 651, column: 15)
!421 = distinct !DILexicalBlock(scope: !416, file: !122, line: 650, column: 9)
!422 = !DILocation(line: 651, column: 15, scope: !420)
!423 = !DILocation(line: 651, column: 26, scope: !420)
!424 = !DILocation(line: 651, column: 34, scope: !420)
!425 = !DILocation(line: 651, column: 37, scope: !420)
!426 = !DILocation(line: 651, column: 48, scope: !420)
!427 = !DILocation(line: 651, column: 46, scope: !420)
!428 = !DILocation(line: 652, column: 13, scope: !420)
!429 = !DILocation(line: 655, column: 16, scope: !430)
!430 = distinct !DILexicalBlock(scope: !421, file: !122, line: 655, column: 15)
!431 = !DILocation(line: 655, column: 29, scope: !430)
!432 = !DILocation(line: 655, column: 34, scope: !430)
!433 = !DILocation(line: 655, column: 32, scope: !430)
!434 = !DILocation(line: 655, column: 49, scope: !430)
!435 = !DILocation(line: 656, column: 13, scope: !430)
!436 = !DILocation(line: 657, column: 9, scope: !421)
!437 = !DILocation(line: 659, column: 16, scope: !406)
!438 = distinct !{!438, !396, !439, !377}
!439 = !DILocation(line: 660, column: 5, scope: !121)
!440 = !DILocation(line: 663, column: 11, scope: !121)
!441 = !DILocation(line: 663, column: 22, scope: !121)
!442 = !DILocation(line: 663, column: 35, scope: !121)
!443 = !DILocation(line: 663, column: 33, scope: !121)
!444 = !DILocation(line: 663, column: 43, scope: !121)
!445 = !DILocation(line: 663, column: 3, scope: !121)
!446 = !DILocalVariable(name: "url_program", scope: !121, file: !122, line: 667, type: !125)
!447 = !DILocation(line: 667, column: 15, scope: !121)
!448 = !DILocation(line: 667, column: 38, scope: !121)
!449 = !DILocation(line: 667, column: 31, scope: !121)
!450 = !DILocation(line: 668, column: 38, scope: !121)
!451 = !DILocation(line: 668, column: 31, scope: !121)
!452 = !DILocation(line: 669, column: 38, scope: !121)
!453 = !DILocation(line: 669, column: 31, scope: !121)
!454 = !DILocation(line: 670, column: 38, scope: !121)
!455 = !DILocation(line: 670, column: 31, scope: !121)
!456 = !DILocation(line: 671, column: 38, scope: !121)
!457 = !DILocation(line: 671, column: 31, scope: !121)
!458 = !DILocation(line: 672, column: 38, scope: !121)
!459 = !DILocation(line: 672, column: 31, scope: !121)
!460 = !DILocation(line: 673, column: 38, scope: !121)
!461 = !DILocation(line: 673, column: 31, scope: !121)
!462 = !DILocation(line: 674, column: 38, scope: !121)
!463 = !DILocation(line: 674, column: 31, scope: !121)
!464 = !DILocation(line: 675, column: 38, scope: !121)
!465 = !DILocation(line: 675, column: 31, scope: !121)
!466 = !DILocation(line: 676, column: 38, scope: !121)
!467 = !DILocation(line: 676, column: 31, scope: !121)
!468 = !DILocation(line: 677, column: 31, scope: !121)
!469 = !DILocation(line: 682, column: 18, scope: !470)
!470 = distinct !DILexicalBlock(scope: !121, file: !122, line: 682, column: 7)
!471 = !DILocation(line: 682, column: 7, scope: !470)
!472 = !DILocation(line: 683, column: 7, scope: !470)
!473 = !DILocation(line: 683, column: 21, scope: !470)
!474 = !DILocation(line: 683, column: 10, scope: !470)
!475 = !DILocation(line: 689, column: 15, scope: !476)
!476 = distinct !DILexicalBlock(scope: !470, file: !122, line: 684, column: 5)
!477 = !DILocation(line: 689, column: 28, scope: !476)
!478 = !DILocation(line: 689, column: 47, scope: !476)
!479 = !DILocation(line: 689, column: 41, scope: !476)
!480 = !DILocation(line: 689, column: 59, scope: !476)
!481 = !DILocation(line: 688, column: 7, scope: !476)
!482 = !DILocation(line: 690, column: 5, scope: !476)
!483 = !DILocation(line: 695, column: 48, scope: !484)
!484 = distinct !DILexicalBlock(scope: !470, file: !122, line: 692, column: 5)
!485 = !DILocation(line: 696, column: 21, scope: !484)
!486 = !DILocation(line: 696, column: 15, scope: !484)
!487 = !DILocation(line: 696, column: 33, scope: !484)
!488 = !DILocation(line: 695, column: 7, scope: !484)
!489 = !DILocation(line: 698, column: 20, scope: !121)
!490 = !DILocation(line: 698, column: 3, scope: !121)
!491 = !DILocation(line: 702, column: 21, scope: !121)
!492 = !DILocation(line: 702, column: 3, scope: !121)
!493 = !DILocation(line: 705, column: 11, scope: !121)
!494 = !DILocation(line: 705, column: 26, scope: !121)
!495 = !DILocation(line: 705, column: 38, scope: !121)
!496 = !DILocation(line: 705, column: 36, scope: !121)
!497 = !DILocation(line: 705, column: 50, scope: !121)
!498 = !DILocation(line: 705, column: 3, scope: !121)
!499 = !DILocation(line: 707, column: 21, scope: !121)
!500 = !DILocation(line: 707, column: 3, scope: !121)
!501 = !DILocation(line: 710, column: 28, scope: !121)
!502 = !DILocation(line: 710, column: 3, scope: !121)
!503 = !DILocation(line: 714, column: 10, scope: !121)
!504 = !DILocation(line: 714, column: 21, scope: !121)
!505 = !DILocation(line: 714, column: 3, scope: !121)
!506 = !DILocation(line: 715, column: 1, scope: !121)
!507 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !122, file: !122, line: 855, type: !508, scopeLine: 856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !126, retainedNodes: !248)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !125}
!510 = !DILocalVariable(name: "program", arg: 1, scope: !507, file: !122, line: 855, type: !125)
!511 = !DILocation(line: 855, column: 34, scope: !507)
!512 = !DILocalVariable(name: "infomap", scope: !507, file: !122, line: 857, type: !513)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 896, elements: !106)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !507, file: !122, line: 857, size: 128, elements: !516)
!516 = !{!517, !518}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !515, file: !122, line: 857, baseType: !125, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !515, file: !122, line: 857, baseType: !125, size: 64, offset: 64)
!519 = !DILocation(line: 857, column: 67, scope: !507)
!520 = !DILocalVariable(name: "node", scope: !507, file: !122, line: 867, type: !125)
!521 = !DILocation(line: 867, column: 15, scope: !507)
!522 = !DILocation(line: 867, column: 22, scope: !507)
!523 = !DILocalVariable(name: "map_prog", scope: !507, file: !122, line: 868, type: !524)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!525 = !DILocation(line: 868, column: 25, scope: !507)
!526 = !DILocation(line: 868, column: 36, scope: !507)
!527 = !DILocation(line: 870, column: 3, scope: !507)
!528 = !DILocation(line: 870, column: 10, scope: !507)
!529 = !DILocation(line: 870, column: 20, scope: !507)
!530 = !DILocation(line: 870, column: 28, scope: !507)
!531 = !DILocation(line: 870, column: 40, scope: !507)
!532 = !DILocation(line: 870, column: 49, scope: !507)
!533 = !DILocation(line: 870, column: 59, scope: !507)
!534 = !DILocation(line: 870, column: 33, scope: !507)
!535 = !DILocation(line: 870, column: 31, scope: !507)
!536 = !DILocation(line: 0, scope: !507)
!537 = !DILocation(line: 871, column: 13, scope: !507)
!538 = distinct !{!538, !527, !537, !377}
!539 = !DILocation(line: 873, column: 7, scope: !540)
!540 = distinct !DILexicalBlock(scope: !507, file: !122, line: 873, column: 7)
!541 = !DILocation(line: 873, column: 17, scope: !540)
!542 = !DILocation(line: 874, column: 12, scope: !540)
!543 = !DILocation(line: 874, column: 22, scope: !540)
!544 = !DILocation(line: 874, column: 10, scope: !540)
!545 = !DILocation(line: 874, column: 5, scope: !540)
!546 = !DILocation(line: 876, column: 3, scope: !507)
!547 = !DILocalVariable(name: "url_program", scope: !507, file: !122, line: 881, type: !125)
!548 = !DILocation(line: 881, column: 15, scope: !507)
!549 = !DILocation(line: 881, column: 36, scope: !507)
!550 = !DILocation(line: 881, column: 29, scope: !507)
!551 = !DILocation(line: 881, column: 61, scope: !507)
!552 = !DILocation(line: 882, column: 11, scope: !507)
!553 = !DILocation(line: 883, column: 24, scope: !507)
!554 = !DILocation(line: 882, column: 3, scope: !507)
!555 = !DILocation(line: 884, column: 11, scope: !507)
!556 = !DILocation(line: 885, column: 11, scope: !507)
!557 = !DILocation(line: 885, column: 17, scope: !507)
!558 = !DILocation(line: 885, column: 25, scope: !507)
!559 = !DILocation(line: 885, column: 22, scope: !507)
!560 = !DILocation(line: 884, column: 3, scope: !507)
!561 = !DILocation(line: 886, column: 1, scope: !507)
!562 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 121, type: !563, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !126, retainedNodes: !248)
!563 = !DISubroutineType(types: !564)
!564 = !{!150, !150, !565}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!566 = !DILocalVariable(name: "argc", arg: 1, scope: !562, file: !2, line: 121, type: !150)
!567 = !DILocation(line: 121, column: 11, scope: !562)
!568 = !DILocalVariable(name: "argv", arg: 2, scope: !562, file: !2, line: 121, type: !565)
!569 = !DILocation(line: 121, column: 24, scope: !562)
!570 = !DILocalVariable(name: "display_return", scope: !562, file: !2, line: 123, type: !329)
!571 = !DILocation(line: 123, column: 8, scope: !562)
!572 = !DILocalVariable(name: "posixly_correct", scope: !562, file: !2, line: 124, type: !329)
!573 = !DILocation(line: 124, column: 8, scope: !562)
!574 = !DILocation(line: 124, column: 28, scope: !562)
!575 = !DILocation(line: 124, column: 27, scope: !562)
!576 = !DILocation(line: 124, column: 26, scope: !562)
!577 = !DILocalVariable(name: "allow_options", scope: !562, file: !2, line: 125, type: !329)
!578 = !DILocation(line: 125, column: 8, scope: !562)
!579 = !DILocation(line: 126, column: 8, scope: !562)
!580 = !DILocation(line: 127, column: 6, scope: !562)
!581 = !DILocation(line: 127, column: 39, scope: !562)
!582 = !DILocation(line: 127, column: 37, scope: !562)
!583 = !DILocation(line: 127, column: 44, scope: !562)
!584 = !DILocation(line: 127, column: 54, scope: !562)
!585 = !DILocation(line: 127, column: 47, scope: !562)
!586 = !DILocation(line: 0, scope: !562)
!587 = !DILocalVariable(name: "do_v9", scope: !562, file: !2, line: 132, type: !329)
!588 = !DILocation(line: 132, column: 8, scope: !562)
!589 = !DILocation(line: 135, column: 21, scope: !562)
!590 = !DILocation(line: 135, column: 3, scope: !562)
!591 = !DILocation(line: 136, column: 3, scope: !562)
!592 = !DILocation(line: 137, column: 3, scope: !562)
!593 = !DILocation(line: 138, column: 3, scope: !562)
!594 = !DILocation(line: 140, column: 3, scope: !562)
!595 = !DILocation(line: 144, column: 7, scope: !596)
!596 = distinct !DILexicalBlock(scope: !562, file: !2, line: 144, column: 7)
!597 = !DILocation(line: 144, column: 21, scope: !596)
!598 = !DILocation(line: 144, column: 24, scope: !596)
!599 = !DILocation(line: 144, column: 29, scope: !596)
!600 = !DILocation(line: 146, column: 18, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !2, line: 146, column: 11)
!602 = distinct !DILexicalBlock(scope: !596, file: !2, line: 145, column: 5)
!603 = !DILocation(line: 146, column: 11, scope: !601)
!604 = !DILocation(line: 147, column: 9, scope: !601)
!605 = !DILocation(line: 149, column: 18, scope: !606)
!606 = distinct !DILexicalBlock(scope: !602, file: !2, line: 149, column: 11)
!607 = !DILocation(line: 149, column: 11, scope: !606)
!608 = !DILocation(line: 151, column: 24, scope: !609)
!609 = distinct !DILexicalBlock(scope: !606, file: !2, line: 150, column: 9)
!610 = !DILocation(line: 151, column: 60, scope: !609)
!611 = !DILocation(line: 151, column: 69, scope: !609)
!612 = !DILocation(line: 151, column: 11, scope: !609)
!613 = !DILocation(line: 153, column: 11, scope: !609)
!614 = !DILocation(line: 155, column: 5, scope: !602)
!615 = !DILocation(line: 157, column: 3, scope: !562)
!616 = !DILocation(line: 158, column: 3, scope: !562)
!617 = !DILocation(line: 160, column: 7, scope: !618)
!618 = distinct !DILexicalBlock(scope: !562, file: !2, line: 160, column: 7)
!619 = !DILocation(line: 161, column: 5, scope: !618)
!620 = !DILocation(line: 161, column: 12, scope: !618)
!621 = !DILocation(line: 161, column: 17, scope: !618)
!622 = !DILocation(line: 161, column: 21, scope: !618)
!623 = !DILocation(line: 161, column: 25, scope: !618)
!624 = !DILocation(line: 161, column: 24, scope: !618)
!625 = !DILocation(line: 161, column: 33, scope: !618)
!626 = !DILocation(line: 0, scope: !618)
!627 = !DILocalVariable(name: "temp", scope: !628, file: !2, line: 163, type: !125)
!628 = distinct !DILexicalBlock(scope: !618, file: !2, line: 162, column: 7)
!629 = !DILocation(line: 163, column: 21, scope: !628)
!630 = !DILocation(line: 163, column: 28, scope: !628)
!631 = !DILocation(line: 163, column: 36, scope: !628)
!632 = !DILocalVariable(name: "i", scope: !628, file: !2, line: 164, type: !358)
!633 = !DILocation(line: 164, column: 16, scope: !628)
!634 = !DILocation(line: 170, column: 16, scope: !635)
!635 = distinct !DILexicalBlock(scope: !628, file: !2, line: 170, column: 9)
!636 = !DILocation(line: 170, column: 14, scope: !635)
!637 = !DILocation(line: 170, column: 21, scope: !638)
!638 = distinct !DILexicalBlock(scope: !635, file: !2, line: 170, column: 9)
!639 = !DILocation(line: 170, column: 26, scope: !638)
!640 = !DILocation(line: 170, column: 9, scope: !635)
!641 = !DILocation(line: 171, column: 19, scope: !638)
!642 = !DILocation(line: 171, column: 24, scope: !638)
!643 = !DILocation(line: 171, column: 11, scope: !638)
!644 = !DILocation(line: 174, column: 15, scope: !645)
!645 = distinct !DILexicalBlock(scope: !638, file: !2, line: 172, column: 13)
!646 = !DILocation(line: 176, column: 15, scope: !645)
!647 = !DILocation(line: 177, column: 13, scope: !645)
!648 = !DILocation(line: 170, column: 31, scope: !638)
!649 = !DILocation(line: 170, column: 9, scope: !638)
!650 = distinct !{!650, !640, !651, !377}
!651 = !DILocation(line: 177, column: 13, scope: !635)
!652 = !DILocation(line: 179, column: 13, scope: !653)
!653 = distinct !DILexicalBlock(scope: !628, file: !2, line: 179, column: 13)
!654 = !DILocation(line: 179, column: 15, scope: !653)
!655 = !DILocation(line: 180, column: 11, scope: !653)
!656 = !DILocation(line: 184, column: 9, scope: !628)
!657 = !DILocation(line: 184, column: 17, scope: !628)
!658 = !DILocation(line: 184, column: 16, scope: !628)
!659 = !DILocation(line: 185, column: 24, scope: !628)
!660 = !DILocation(line: 185, column: 19, scope: !628)
!661 = !DILocation(line: 185, column: 11, scope: !628)
!662 = !DILocation(line: 188, column: 21, scope: !663)
!663 = distinct !DILexicalBlock(scope: !628, file: !2, line: 186, column: 13)
!664 = !DILocation(line: 189, column: 15, scope: !663)
!665 = !DILocation(line: 192, column: 21, scope: !663)
!666 = !DILocation(line: 193, column: 15, scope: !663)
!667 = !DILocation(line: 196, column: 30, scope: !663)
!668 = !DILocation(line: 197, column: 15, scope: !663)
!669 = distinct !{!669, !656, !670, !377}
!670 = !DILocation(line: 198, column: 13, scope: !628)
!671 = !DILocation(line: 200, column: 13, scope: !628)
!672 = !DILocation(line: 201, column: 13, scope: !628)
!673 = distinct !{!673, !619, !674, !377}
!674 = !DILocation(line: 202, column: 7, scope: !618)
!675 = !DILabel(scope: !562, name: "just_echo", file: !2, line: 204, column: 1)
!676 = !DILocation(line: 204, column: 1, scope: !562)
!677 = !DILocation(line: 206, column: 7, scope: !678)
!678 = distinct !DILexicalBlock(scope: !562, file: !2, line: 206, column: 7)
!679 = !DILocation(line: 206, column: 13, scope: !678)
!680 = !DILocation(line: 206, column: 16, scope: !678)
!681 = !DILocation(line: 208, column: 7, scope: !682)
!682 = distinct !DILexicalBlock(scope: !678, file: !2, line: 207, column: 5)
!683 = !DILocation(line: 208, column: 14, scope: !682)
!684 = !DILocation(line: 208, column: 19, scope: !682)
!685 = !DILocalVariable(name: "s", scope: !686, file: !2, line: 210, type: !125)
!686 = distinct !DILexicalBlock(scope: !682, file: !2, line: 209, column: 9)
!687 = !DILocation(line: 210, column: 23, scope: !686)
!688 = !DILocation(line: 210, column: 27, scope: !686)
!689 = !DILocalVariable(name: "c", scope: !686, file: !2, line: 211, type: !690)
!690 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!691 = !DILocation(line: 211, column: 25, scope: !686)
!692 = !DILocation(line: 213, column: 11, scope: !686)
!693 = !DILocation(line: 213, column: 25, scope: !686)
!694 = !DILocation(line: 213, column: 23, scope: !686)
!695 = !DILocation(line: 213, column: 21, scope: !686)
!696 = !DILocation(line: 215, column: 19, scope: !697)
!697 = distinct !DILexicalBlock(scope: !698, file: !2, line: 215, column: 19)
!698 = distinct !DILexicalBlock(scope: !686, file: !2, line: 214, column: 13)
!699 = !DILocation(line: 215, column: 21, scope: !697)
!700 = !DILocation(line: 215, column: 29, scope: !697)
!701 = !DILocation(line: 215, column: 33, scope: !697)
!702 = !DILocation(line: 215, column: 32, scope: !697)
!703 = !DILocation(line: 217, column: 33, scope: !704)
!704 = distinct !DILexicalBlock(scope: !697, file: !2, line: 216, column: 17)
!705 = !DILocation(line: 217, column: 31, scope: !704)
!706 = !DILocation(line: 217, column: 29, scope: !704)
!707 = !DILocation(line: 217, column: 27, scope: !704)
!708 = !DILocation(line: 217, column: 19, scope: !704)
!709 = !DILocation(line: 219, column: 33, scope: !710)
!710 = distinct !DILexicalBlock(scope: !704, file: !2, line: 218, column: 21)
!711 = !DILocation(line: 219, column: 41, scope: !710)
!712 = !DILocation(line: 220, column: 33, scope: !710)
!713 = !DILocation(line: 220, column: 41, scope: !710)
!714 = !DILocation(line: 221, column: 31, scope: !710)
!715 = !DILocation(line: 222, column: 33, scope: !710)
!716 = !DILocation(line: 222, column: 43, scope: !710)
!717 = !DILocation(line: 223, column: 33, scope: !710)
!718 = !DILocation(line: 223, column: 41, scope: !710)
!719 = !DILocation(line: 224, column: 33, scope: !710)
!720 = !DILocation(line: 224, column: 41, scope: !710)
!721 = !DILocation(line: 225, column: 33, scope: !710)
!722 = !DILocation(line: 225, column: 41, scope: !710)
!723 = !DILocation(line: 226, column: 33, scope: !710)
!724 = !DILocation(line: 226, column: 41, scope: !710)
!725 = !DILocation(line: 227, column: 33, scope: !710)
!726 = !DILocation(line: 227, column: 41, scope: !710)
!727 = !DILocalVariable(name: "ch", scope: !728, file: !2, line: 230, type: !690)
!728 = distinct !DILexicalBlock(scope: !710, file: !2, line: 229, column: 23)
!729 = !DILocation(line: 230, column: 39, scope: !728)
!730 = !DILocation(line: 230, column: 45, scope: !728)
!731 = !DILocation(line: 230, column: 44, scope: !728)
!732 = !DILocation(line: 231, column: 43, scope: !733)
!733 = distinct !DILexicalBlock(scope: !728, file: !2, line: 231, column: 29)
!734 = !DILocation(line: 231, column: 31, scope: !733)
!735 = !DILocation(line: 231, column: 29, scope: !733)
!736 = !DILocation(line: 232, column: 27, scope: !733)
!737 = !DILocation(line: 233, column: 26, scope: !728)
!738 = !DILocation(line: 234, column: 39, scope: !728)
!739 = !DILocation(line: 234, column: 29, scope: !728)
!740 = !DILocation(line: 234, column: 27, scope: !728)
!741 = !DILocation(line: 235, column: 31, scope: !728)
!742 = !DILocation(line: 235, column: 30, scope: !728)
!743 = !DILocation(line: 235, column: 28, scope: !728)
!744 = !DILocation(line: 236, column: 41, scope: !745)
!745 = distinct !DILexicalBlock(scope: !728, file: !2, line: 236, column: 29)
!746 = !DILocation(line: 236, column: 29, scope: !745)
!747 = !DILocation(line: 238, column: 30, scope: !748)
!748 = distinct !DILexicalBlock(scope: !745, file: !2, line: 237, column: 27)
!749 = !DILocation(line: 239, column: 33, scope: !748)
!750 = !DILocation(line: 239, column: 35, scope: !748)
!751 = !DILocation(line: 239, column: 52, scope: !748)
!752 = !DILocation(line: 239, column: 42, scope: !748)
!753 = !DILocation(line: 239, column: 40, scope: !748)
!754 = !DILocation(line: 239, column: 31, scope: !748)
!755 = !DILocation(line: 240, column: 27, scope: !748)
!756 = !DILocation(line: 242, column: 23, scope: !710)
!757 = !DILocation(line: 244, column: 25, scope: !710)
!758 = !DILocation(line: 245, column: 38, scope: !759)
!759 = distinct !DILexicalBlock(scope: !710, file: !2, line: 245, column: 27)
!760 = !DILocation(line: 245, column: 37, scope: !759)
!761 = !DILocation(line: 245, column: 34, scope: !759)
!762 = !DILocation(line: 245, column: 40, scope: !759)
!763 = !DILocation(line: 245, column: 44, scope: !759)
!764 = !DILocation(line: 245, column: 43, scope: !759)
!765 = !DILocation(line: 245, column: 46, scope: !759)
!766 = !DILocation(line: 245, column: 27, scope: !759)
!767 = !DILocation(line: 246, column: 25, scope: !759)
!768 = !DILocation(line: 247, column: 29, scope: !710)
!769 = !DILocation(line: 247, column: 27, scope: !710)
!770 = !DILocation(line: 247, column: 25, scope: !710)
!771 = !DILocation(line: 247, column: 23, scope: !710)
!772 = !DILocation(line: 251, column: 25, scope: !710)
!773 = !DILocation(line: 252, column: 35, scope: !774)
!774 = distinct !DILexicalBlock(scope: !710, file: !2, line: 252, column: 27)
!775 = !DILocation(line: 252, column: 34, scope: !774)
!776 = !DILocation(line: 252, column: 31, scope: !774)
!777 = !DILocation(line: 252, column: 37, scope: !774)
!778 = !DILocation(line: 252, column: 41, scope: !774)
!779 = !DILocation(line: 252, column: 40, scope: !774)
!780 = !DILocation(line: 252, column: 43, scope: !774)
!781 = !DILocation(line: 253, column: 29, scope: !774)
!782 = !DILocation(line: 253, column: 31, scope: !774)
!783 = !DILocation(line: 253, column: 40, scope: !774)
!784 = !DILocation(line: 253, column: 38, scope: !774)
!785 = !DILocation(line: 253, column: 43, scope: !774)
!786 = !DILocation(line: 253, column: 35, scope: !774)
!787 = !DILocation(line: 253, column: 27, scope: !774)
!788 = !DILocation(line: 253, column: 25, scope: !774)
!789 = !DILocation(line: 254, column: 35, scope: !790)
!790 = distinct !DILexicalBlock(scope: !710, file: !2, line: 254, column: 27)
!791 = !DILocation(line: 254, column: 34, scope: !790)
!792 = !DILocation(line: 254, column: 31, scope: !790)
!793 = !DILocation(line: 254, column: 37, scope: !790)
!794 = !DILocation(line: 254, column: 41, scope: !790)
!795 = !DILocation(line: 254, column: 40, scope: !790)
!796 = !DILocation(line: 254, column: 43, scope: !790)
!797 = !DILocation(line: 255, column: 29, scope: !790)
!798 = !DILocation(line: 255, column: 31, scope: !790)
!799 = !DILocation(line: 255, column: 40, scope: !790)
!800 = !DILocation(line: 255, column: 38, scope: !790)
!801 = !DILocation(line: 255, column: 43, scope: !790)
!802 = !DILocation(line: 255, column: 35, scope: !790)
!803 = !DILocation(line: 255, column: 27, scope: !790)
!804 = !DILocation(line: 255, column: 25, scope: !790)
!805 = !DILocation(line: 256, column: 23, scope: !710)
!806 = !DILocation(line: 257, column: 32, scope: !710)
!807 = !DILabel(scope: !710, name: "not_an_escape", file: !2, line: 259, column: 21)
!808 = !DILocation(line: 259, column: 21, scope: !710)
!809 = !DILocation(line: 260, column: 31, scope: !710)
!810 = !DILocation(line: 260, column: 47, scope: !710)
!811 = !DILocation(line: 262, column: 17, scope: !704)
!812 = !DILocation(line: 263, column: 24, scope: !698)
!813 = !DILocation(line: 263, column: 15, scope: !698)
!814 = distinct !{!814, !692, !815, !377}
!815 = !DILocation(line: 264, column: 13, scope: !686)
!816 = !DILocation(line: 265, column: 15, scope: !686)
!817 = !DILocation(line: 266, column: 15, scope: !686)
!818 = !DILocation(line: 267, column: 15, scope: !819)
!819 = distinct !DILexicalBlock(scope: !686, file: !2, line: 267, column: 15)
!820 = !DILocation(line: 267, column: 20, scope: !819)
!821 = !DILocation(line: 268, column: 13, scope: !819)
!822 = distinct !{!822, !681, !823, !377}
!823 = !DILocation(line: 269, column: 9, scope: !682)
!824 = !DILocation(line: 270, column: 5, scope: !682)
!825 = !DILocation(line: 273, column: 7, scope: !826)
!826 = distinct !DILexicalBlock(scope: !678, file: !2, line: 272, column: 5)
!827 = !DILocation(line: 273, column: 14, scope: !826)
!828 = !DILocation(line: 273, column: 19, scope: !826)
!829 = !DILocation(line: 275, column: 18, scope: !830)
!830 = distinct !DILexicalBlock(scope: !826, file: !2, line: 274, column: 9)
!831 = !DILocation(line: 275, column: 27, scope: !830)
!832 = !DILocation(line: 275, column: 11, scope: !830)
!833 = !DILocation(line: 276, column: 15, scope: !830)
!834 = !DILocation(line: 277, column: 15, scope: !830)
!835 = !DILocation(line: 278, column: 15, scope: !836)
!836 = distinct !DILexicalBlock(scope: !830, file: !2, line: 278, column: 15)
!837 = !DILocation(line: 278, column: 20, scope: !836)
!838 = !DILocation(line: 279, column: 13, scope: !836)
!839 = distinct !{!839, !825, !840, !377}
!840 = !DILocation(line: 280, column: 9, scope: !826)
!841 = !DILocation(line: 283, column: 7, scope: !842)
!842 = distinct !DILexicalBlock(scope: !562, file: !2, line: 283, column: 7)
!843 = !DILocation(line: 284, column: 5, scope: !842)
!844 = !DILocation(line: 285, column: 3, scope: !562)
!845 = !DILocation(line: 286, column: 1, scope: !562)
!846 = distinct !DISubprogram(name: "hextobin", scope: !2, file: !2, line: 102, type: !847, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !126, retainedNodes: !248)
!847 = !DISubroutineType(types: !848)
!848 = !{!150, !690}
!849 = !DILocalVariable(name: "c", arg: 1, scope: !846, file: !2, line: 102, type: !690)
!850 = !DILocation(line: 102, column: 25, scope: !846)
!851 = !DILocation(line: 104, column: 11, scope: !846)
!852 = !DILocation(line: 104, column: 3, scope: !846)
!853 = !DILocation(line: 106, column: 21, scope: !854)
!854 = distinct !DILexicalBlock(scope: !846, file: !2, line: 105, column: 5)
!855 = !DILocation(line: 106, column: 23, scope: !854)
!856 = !DILocation(line: 106, column: 14, scope: !854)
!857 = !DILocation(line: 107, column: 25, scope: !854)
!858 = !DILocation(line: 108, column: 25, scope: !854)
!859 = !DILocation(line: 109, column: 25, scope: !854)
!860 = !DILocation(line: 110, column: 25, scope: !854)
!861 = !DILocation(line: 111, column: 25, scope: !854)
!862 = !DILocation(line: 112, column: 25, scope: !854)
!863 = !DILocation(line: 114, column: 1, scope: !846)
