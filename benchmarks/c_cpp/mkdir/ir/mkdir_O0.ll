; ModuleID = 'src/mkdir.c'
source_filename = "src/mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.infomap = type { ptr, ptr }
%struct.mkdir_options = type { ptr, i32, i32, i32, i32, ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Usage: %s [OPTION]... DIRECTORY...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [58 x i8] c"Create the DIRECTORY(ies), if they do not already exist.\0A\00", align 1, !dbg !12
@stdout = external global ptr, align 8
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
@optarg = external global ptr, align 8
@.str.15 = private unnamed_addr constant [21 x i8] c"created directory %s\00", align 1, !dbg !74
@.str.16 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1, !dbg !79
@.str.17 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !84
@Version = external global ptr, align 8
@.str.18 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !89
@optind = external global i32, align 4
@.str.19 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !94
@.str.20 = private unnamed_addr constant [50 x i8] c"failed to set default file creation context to %s\00", align 1, !dbg !96
@.str.21 = private unnamed_addr constant [16 x i8] c"invalid mode %s\00", align 1, !dbg !98
@.str.22 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !100
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !103
@.str.23 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !178
@.str.24 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !183
@.str.25 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !185
@.str.26 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !190
@.str.27 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !192
@.str.28 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !197
@.str.29 = private unnamed_addr constant [4 x i8] c"dir\00", align 1, !dbg !199
@.str.30 = private unnamed_addr constant [3 x i8] c"ls\00", align 1, !dbg !201
@.str.31 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1, !dbg !206
@.str.32 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1, !dbg !208
@.str.33 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1, !dbg !210
@.str.34 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1, !dbg !212
@.str.35 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1, !dbg !217
@.str.36 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !222
@.str.37 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !224
@.str.38 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !226
@.str.39 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !228
@.str.40 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !230
@.str.41 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !232
@.str.42 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !234
@.str.43 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !239
@.str.44 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !244
@.str.45 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !249
@.str.46 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !254
@.str.47 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !256
@.str.48 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !258
@.str.49 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !260
@.str.50 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !262
@.str.51 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !264
@.str.52 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !269
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.27, ptr @.str.50 }, %struct.infomap { ptr @.str.12, ptr @.str.51 }, %struct.infomap { ptr @.str.36, ptr @.str.52 }, %struct.infomap { ptr @.str.37, ptr @.str.52 }, %struct.infomap { ptr @.str.38, ptr @.str.52 }, %struct.infomap { ptr @.str.39, ptr @.str.52 }, %struct.infomap zeroinitializer], align 16
@.str.53 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !271
@.str.54 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !276
@.str.55 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !281
@.str.56 = private unnamed_addr constant [8 x i8] c"context\00", align 1, !dbg !286
@.str.57 = private unnamed_addr constant [5 x i8] c"mode\00", align 1, !dbg !288
@.str.58 = private unnamed_addr constant [8 x i8] c"parents\00", align 1, !dbg !290
@.str.59 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1, !dbg !292
@.str.60 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !294
@.str.61 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !296
@longopts = internal constant [7 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.56, i32 2, [4 x i8] zeroinitializer, ptr null, i32 90, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.57, i32 1, [4 x i8] zeroinitializer, ptr null, i32 109, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.58, i32 0, [4 x i8] zeroinitializer, ptr null, i32 112, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.59, i32 0, [4 x i8] zeroinitializer, ptr null, i32 118, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.60, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -130, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.61, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -131, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16, !dbg !298
@.str.63 = private unnamed_addr constant [46 x i8] c"failed to set default creation context for %s\00", align 1, !dbg !310
@.str.64 = private unnamed_addr constant [33 x i8] c"failed to restore context for %s\00", align 1, !dbg !315

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !329 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !332, !DIExpression(), !333)
  %3 = load i32, ptr %2, align 4, !dbg !334
  %4 = icmp ne i32 %3, 0, !dbg !336
  br i1 %4, label %5, label %12, !dbg !336

5:                                                ; preds = %1
  br label %6, !dbg !337

6:                                                ; preds = %5
  %7 = load ptr, ptr @stderr, align 8, !dbg !338
  %8 = call ptr @gettext(ptr noundef @.str) #8, !dbg !338
  %9 = load ptr, ptr @program_name, align 8, !dbg !338
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef %8, ptr noundef %9) #8, !dbg !338
  br label %11, !dbg !338

11:                                               ; preds = %6
  br label %26, !dbg !338

12:                                               ; preds = %1
  %13 = call ptr @gettext(ptr noundef @.str.1) #8, !dbg !340
  %14 = load ptr, ptr @program_name, align 8, !dbg !342
  %15 = call i32 (ptr, ...) @rpl_printf(ptr noundef %13, ptr noundef %14), !dbg !343
  %16 = call ptr @gettext(ptr noundef @.str.2) #8, !dbg !344
  %17 = load ptr, ptr @stdout, align 8, !dbg !345
  %18 = call i32 @fputs_unlocked(ptr noundef %16, ptr noundef %17), !dbg !346
  call void @emit_mandatory_arg_note(), !dbg !347
  %19 = call ptr @gettext(ptr noundef @.str.4) #8, !dbg !348
  call void @oputs_(ptr noundef @.str.3, ptr noundef %19), !dbg !349
  %20 = call ptr @gettext(ptr noundef @.str.5) #8, !dbg !350
  call void @oputs_(ptr noundef @.str.3, ptr noundef %20), !dbg !351
  %21 = call ptr @gettext(ptr noundef @.str.6) #8, !dbg !352
  call void @oputs_(ptr noundef @.str.3, ptr noundef %21), !dbg !353
  %22 = call ptr @gettext(ptr noundef @.str.7) #8, !dbg !354
  call void @oputs_(ptr noundef @.str.3, ptr noundef %22), !dbg !355
  %23 = call ptr @gettext(ptr noundef @.str.8) #8, !dbg !356
  call void @oputs_(ptr noundef @.str.3, ptr noundef %23), !dbg !357
  %24 = call ptr @gettext(ptr noundef @.str.9) #8, !dbg !358
  call void @oputs_(ptr noundef @.str.3, ptr noundef %24), !dbg !359
  %25 = call ptr @gettext(ptr noundef @.str.10) #8, !dbg !360
  call void @oputs_(ptr noundef @.str.3, ptr noundef %25), !dbg !361
  call void @emit_ancillary_info(ptr noundef @.str.3), !dbg !362
  br label %26

26:                                               ; preds = %12, %11
  %27 = load i32, ptr %2, align 4, !dbg !363
  call void @exit(i32 noundef %27) #9, !dbg !364
  unreachable, !dbg !364
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #1

declare i32 @rpl_printf(ptr noundef, ...) #2

declare i32 @fputs_unlocked(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_mandatory_arg_note() #3 !dbg !365 {
  %1 = call ptr @gettext(ptr noundef @.str.22) #8, !dbg !368
  %2 = load ptr, ptr @stdout, align 8, !dbg !369
  %3 = call i32 @fputs_unlocked(ptr noundef %1, ptr noundef %2), !dbg !370
  ret void, !dbg !371
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(ptr noundef %0, ptr noundef %1) #3 !dbg !105 {
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
    #dbg_declare(ptr %3, !372, !DIExpression(), !373)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !374, !DIExpression(), !375)
  %14 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !376
  %15 = icmp eq i32 %14, -1, !dbg !378
  br i1 %15, label %16, label %30, !dbg !378

16:                                               ; preds = %2
    #dbg_declare(ptr %5, !379, !DIExpression(), !381)
  %17 = call ptr @getenv(ptr noundef @.str.23) #8, !dbg !382
  store ptr %17, ptr %5, align 8, !dbg !381
  %18 = load ptr, ptr %5, align 8, !dbg !383
  %19 = icmp ne ptr %18, null, !dbg !383
  br i1 %19, label %20, label %27, !dbg !384

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 8, !dbg !385
  %22 = load i8, ptr %21, align 1, !dbg !386
  %23 = icmp ne i8 %22, 0, !dbg !386
  br i1 %23, label %24, label %27, !dbg !387

24:                                               ; preds = %20
  %25 = load ptr, ptr %5, align 8, !dbg !388
  %26 = call zeroext i1 @streq(ptr noundef %25, ptr noundef @.str.24), !dbg !389
  br label %27, !dbg !387

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !387
  store i32 %29, ptr @oputs_.help_no_sgr, align 4, !dbg !390
  br label %30, !dbg !391

30:                                               ; preds = %27, %2
  %31 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !392
  %32 = icmp ne i32 %31, 0, !dbg !392
  br i1 %32, label %33, label %37, !dbg !392

33:                                               ; preds = %30
  %34 = load ptr, ptr %4, align 8, !dbg !394
  %35 = load ptr, ptr @stdout, align 8, !dbg !396
  %36 = call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !397
  br label %274, !dbg !398

37:                                               ; preds = %30
    #dbg_declare(ptr %6, !399, !DIExpression(), !401)
  store i8 1, ptr %6, align 1, !dbg !401
    #dbg_declare(ptr %7, !402, !DIExpression(), !403)
  %38 = load ptr, ptr %4, align 8, !dbg !404
  %39 = load ptr, ptr %4, align 8, !dbg !405
  %40 = call i64 @strspn(ptr noundef %39, ptr noundef @.str.25) #10, !dbg !406
  %41 = getelementptr inbounds nuw i8, ptr %38, i64 %40, !dbg !407
  store ptr %41, ptr %7, align 8, !dbg !403
    #dbg_declare(ptr %8, !408, !DIExpression(), !409)
  %42 = load ptr, ptr %4, align 8, !dbg !410
  %43 = call ptr @strchr(ptr noundef %42, i32 noundef 45) #10, !dbg !411
  store ptr %43, ptr %8, align 8, !dbg !409
  %44 = load ptr, ptr %8, align 8, !dbg !412
  %45 = icmp ne ptr %44, null, !dbg !412
  br i1 %45, label %48, label %46, !dbg !414

46:                                               ; preds = %37
  %47 = load ptr, ptr %7, align 8, !dbg !415
  store ptr %47, ptr %8, align 8, !dbg !417
  store i8 0, ptr %6, align 1, !dbg !418
  br label %89, !dbg !419

48:                                               ; preds = %37
  %49 = load ptr, ptr %8, align 8, !dbg !420
  %50 = load ptr, ptr %7, align 8, !dbg !422
  %51 = icmp ne ptr %49, %50, !dbg !423
  br i1 %51, label %52, label %88, !dbg !423

52:                                               ; preds = %48
    #dbg_declare(ptr %9, !424, !DIExpression(), !426)
  %53 = load ptr, ptr %7, align 8, !dbg !427
  store ptr %53, ptr %9, align 8, !dbg !426
    #dbg_declare(ptr %10, !428, !DIExpression(), !432)
  store i64 0, ptr %10, align 8, !dbg !432
  br label %54, !dbg !433

54:                                               ; preds = %63, %52
  %55 = load ptr, ptr %9, align 8, !dbg !434
  %56 = load ptr, ptr %8, align 8, !dbg !435
  %57 = icmp ult ptr %55, %56, !dbg !436
  br i1 %57, label %58, label %61, !dbg !437

58:                                               ; preds = %54
  %59 = load i64, ptr %10, align 8, !dbg !438
  %60 = icmp ult i64 %59, 2, !dbg !439
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !440
  br i1 %62, label %63, label %82, !dbg !433

63:                                               ; preds = %61
  %64 = call ptr @__ctype_b_loc() #11, !dbg !441
  %65 = load ptr, ptr %64, align 8, !dbg !441
  %66 = load ptr, ptr %9, align 8, !dbg !442
  %67 = getelementptr inbounds nuw i8, ptr %66, i32 1, !dbg !442
  store ptr %67, ptr %9, align 8, !dbg !442
  %68 = load i8, ptr %66, align 1, !dbg !443
  %69 = sext i8 %68 to i32, !dbg !441
  %70 = sext i32 %69 to i64, !dbg !441
  %71 = getelementptr inbounds i16, ptr %65, i64 %70, !dbg !441
  %72 = load i16, ptr %71, align 2, !dbg !441
  %73 = zext i16 %72 to i32, !dbg !441
  %74 = and i32 %73, 8192, !dbg !441
  %75 = icmp ne i32 %74, 0, !dbg !444
  %76 = xor i1 %75, true, !dbg !444
  %77 = xor i1 %76, true, !dbg !445
  %78 = zext i1 %77 to i32, !dbg !445
  %79 = sext i32 %78 to i64, !dbg !445
  %80 = load i64, ptr %10, align 8, !dbg !446
  %81 = add i64 %80, %79, !dbg !446
  store i64 %81, ptr %10, align 8, !dbg !446
  br label %54, !dbg !433, !llvm.loop !447

82:                                               ; preds = %61
  %83 = load i64, ptr %10, align 8, !dbg !449
  %84 = icmp eq i64 %83, 2, !dbg !451
  br i1 %84, label %85, label %87, !dbg !451

85:                                               ; preds = %82
  %86 = load ptr, ptr %7, align 8, !dbg !452
  store ptr %86, ptr %8, align 8, !dbg !454
  store i8 0, ptr %6, align 1, !dbg !455
  br label %87, !dbg !456

87:                                               ; preds = %85, %82
  br label %88, !dbg !457

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
    #dbg_declare(ptr %11, !458, !DIExpression(), !459)
  %90 = load ptr, ptr %8, align 8, !dbg !460
  %91 = call i64 @strcspn(ptr noundef %90, ptr noundef @.str.26) #10, !dbg !461
  store i64 %91, ptr %11, align 8, !dbg !459
    #dbg_declare(ptr %12, !462, !DIExpression(), !463)
  %92 = load ptr, ptr %8, align 8, !dbg !464
  %93 = load i64, ptr %11, align 8, !dbg !465
  %94 = getelementptr inbounds nuw i8, ptr %92, i64 %93, !dbg !466
  store ptr %94, ptr %12, align 8, !dbg !463
  br label %95, !dbg !467

95:                                               ; preds = %161, %89
  %96 = load ptr, ptr %12, align 8, !dbg !468
  %97 = load i8, ptr %96, align 1, !dbg !469
  %98 = sext i8 %97 to i32, !dbg !469
  %99 = icmp ne i32 %98, 0, !dbg !469
  br i1 %99, label %100, label %105, !dbg !470

100:                                              ; preds = %95
  %101 = load ptr, ptr %12, align 8, !dbg !471
  %102 = load i8, ptr %101, align 1, !dbg !472
  %103 = sext i8 %102 to i32, !dbg !472
  %104 = icmp ne i32 %103, 10, !dbg !473
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !474
  br i1 %106, label %107, label %164, !dbg !467

107:                                              ; preds = %105
  %108 = load ptr, ptr %12, align 8, !dbg !475
  %109 = load i8, ptr %108, align 1, !dbg !478
  %110 = sext i8 %109 to i32, !dbg !478
  %111 = icmp eq i32 %110, 45, !dbg !479
  br i1 %111, label %112, label %119, !dbg !480

112:                                              ; preds = %107
  %113 = load ptr, ptr %12, align 8, !dbg !481
  %114 = getelementptr inbounds i8, ptr %113, i64 1, !dbg !482
  %115 = load i8, ptr %114, align 1, !dbg !482
  %116 = sext i8 %115 to i32, !dbg !482
  %117 = icmp eq i32 %116, 45, !dbg !483
  br i1 %117, label %118, label %119, !dbg !480

118:                                              ; preds = %112
  store i8 0, ptr %6, align 1, !dbg !484
  br label %119, !dbg !485

119:                                              ; preds = %118, %112, %107
  %120 = call ptr @__ctype_b_loc() #11, !dbg !486
  %121 = load ptr, ptr %120, align 8, !dbg !486
  %122 = load ptr, ptr %12, align 8, !dbg !488
  %123 = load i8, ptr %122, align 1, !dbg !489
  %124 = sext i8 %123 to i32, !dbg !486
  %125 = sext i32 %124 to i64, !dbg !486
  %126 = getelementptr inbounds i16, ptr %121, i64 %125, !dbg !486
  %127 = load i16, ptr %126, align 2, !dbg !486
  %128 = zext i16 %127 to i32, !dbg !486
  %129 = and i32 %128, 8192, !dbg !486
  %130 = icmp ne i32 %129, 0, !dbg !486
  br i1 %130, label %131, label %161, !dbg !486

131:                                              ; preds = %119
  %132 = load ptr, ptr %12, align 8, !dbg !490
  %133 = load i8, ptr %132, align 1, !dbg !493
  %134 = sext i8 %133 to i32, !dbg !493
  %135 = icmp eq i32 %134, 9, !dbg !494
  br i1 %135, label %149, label %136, !dbg !495

136:                                              ; preds = %131
  %137 = call ptr @__ctype_b_loc() #11, !dbg !496
  %138 = load ptr, ptr %137, align 8, !dbg !496
  %139 = load ptr, ptr %12, align 8, !dbg !497
  %140 = getelementptr inbounds i8, ptr %139, i64 1, !dbg !498
  %141 = load i8, ptr %140, align 1, !dbg !498
  %142 = sext i8 %141 to i32, !dbg !496
  %143 = sext i32 %142 to i64, !dbg !496
  %144 = getelementptr inbounds i16, ptr %138, i64 %143, !dbg !496
  %145 = load i16, ptr %144, align 2, !dbg !496
  %146 = zext i16 %145 to i32, !dbg !496
  %147 = and i32 %146, 8192, !dbg !496
  %148 = icmp ne i32 %147, 0, !dbg !496
  br i1 %148, label %149, label %150, !dbg !495

149:                                              ; preds = %136, %131
  br label %164, !dbg !499

150:                                              ; preds = %136
  %151 = load i8, ptr %6, align 1, !dbg !500
  %152 = trunc i8 %151 to i1, !dbg !500
  br i1 %152, label %160, label %153, !dbg !502

153:                                              ; preds = %150
  %154 = load ptr, ptr %12, align 8, !dbg !503
  %155 = getelementptr inbounds i8, ptr %154, i64 1, !dbg !504
  %156 = load i8, ptr %155, align 1, !dbg !504
  %157 = sext i8 %156 to i32, !dbg !504
  %158 = icmp ne i32 %157, 45, !dbg !505
  br i1 %158, label %159, label %160, !dbg !502

159:                                              ; preds = %153
  br label %164, !dbg !506

160:                                              ; preds = %153, %150
  br label %161, !dbg !507

161:                                              ; preds = %160, %119
  %162 = load ptr, ptr %12, align 8, !dbg !508
  %163 = getelementptr inbounds nuw i8, ptr %162, i32 1, !dbg !508
  store ptr %163, ptr %12, align 8, !dbg !508
  br label %95, !dbg !467, !llvm.loop !509

164:                                              ; preds = %159, %149, %105
  %165 = load ptr, ptr %4, align 8, !dbg !511
  %166 = load ptr, ptr %7, align 8, !dbg !512
  %167 = load ptr, ptr %4, align 8, !dbg !513
  %168 = ptrtoint ptr %166 to i64, !dbg !514
  %169 = ptrtoint ptr %167 to i64, !dbg !514
  %170 = sub i64 %168, %169, !dbg !514
  %171 = load ptr, ptr @stdout, align 8, !dbg !515
  %172 = call i64 @fwrite_unlocked(ptr noundef %165, i64 noundef 1, i64 noundef %170, ptr noundef %171), !dbg !516
    #dbg_declare(ptr %13, !517, !DIExpression(), !518)
  %173 = load ptr, ptr %3, align 8, !dbg !519
  %174 = call zeroext i1 @streq(ptr noundef %173, ptr noundef @.str.27), !dbg !520
  br i1 %174, label %175, label %176, !dbg !520

175:                                              ; preds = %164
  br label %232, !dbg !520

176:                                              ; preds = %164
  %177 = load ptr, ptr %3, align 8, !dbg !521
  %178 = call zeroext i1 @streq(ptr noundef %177, ptr noundef @.str.29), !dbg !522
  br i1 %178, label %179, label %180, !dbg !522

179:                                              ; preds = %176
  br label %230, !dbg !522

180:                                              ; preds = %176
  %181 = load ptr, ptr %3, align 8, !dbg !523
  %182 = call zeroext i1 @streq(ptr noundef %181, ptr noundef @.str.31), !dbg !524
  br i1 %182, label %183, label %184, !dbg !524

183:                                              ; preds = %180
  br label %228, !dbg !524

184:                                              ; preds = %180
  %185 = load ptr, ptr %3, align 8, !dbg !525
  %186 = call zeroext i1 @streq(ptr noundef %185, ptr noundef @.str.32), !dbg !526
  br i1 %186, label %187, label %188, !dbg !526

187:                                              ; preds = %184
  br label %226, !dbg !526

188:                                              ; preds = %184
  %189 = load ptr, ptr %3, align 8, !dbg !527
  %190 = call zeroext i1 @streq(ptr noundef %189, ptr noundef @.str.34), !dbg !528
  br i1 %190, label %191, label %192, !dbg !528

191:                                              ; preds = %188
  br label %224, !dbg !528

192:                                              ; preds = %188
  %193 = load ptr, ptr %3, align 8, !dbg !529
  %194 = call zeroext i1 @streq(ptr noundef %193, ptr noundef @.str.35), !dbg !530
  br i1 %194, label %195, label %196, !dbg !530

195:                                              ; preds = %192
  br label %222, !dbg !530

196:                                              ; preds = %192
  %197 = load ptr, ptr %3, align 8, !dbg !531
  %198 = call zeroext i1 @streq(ptr noundef %197, ptr noundef @.str.36), !dbg !532
  br i1 %198, label %199, label %200, !dbg !532

199:                                              ; preds = %196
  br label %220, !dbg !532

200:                                              ; preds = %196
  %201 = load ptr, ptr %3, align 8, !dbg !533
  %202 = call zeroext i1 @streq(ptr noundef %201, ptr noundef @.str.37), !dbg !534
  br i1 %202, label %203, label %204, !dbg !534

203:                                              ; preds = %200
  br label %218, !dbg !534

204:                                              ; preds = %200
  %205 = load ptr, ptr %3, align 8, !dbg !535
  %206 = call zeroext i1 @streq(ptr noundef %205, ptr noundef @.str.38), !dbg !536
  br i1 %206, label %207, label %208, !dbg !536

207:                                              ; preds = %204
  br label %216, !dbg !536

208:                                              ; preds = %204
  %209 = load ptr, ptr %3, align 8, !dbg !537
  %210 = call zeroext i1 @streq(ptr noundef %209, ptr noundef @.str.39), !dbg !538
  br i1 %210, label %211, label %212, !dbg !538

211:                                              ; preds = %208
  br label %214, !dbg !538

212:                                              ; preds = %208
  %213 = load ptr, ptr %3, align 8, !dbg !539
  br label %214, !dbg !538

214:                                              ; preds = %212, %211
  %215 = phi ptr [ @.str.33, %211 ], [ %213, %212 ], !dbg !538
  br label %216, !dbg !536

216:                                              ; preds = %214, %207
  %217 = phi ptr [ @.str.33, %207 ], [ %215, %214 ], !dbg !536
  br label %218, !dbg !534

218:                                              ; preds = %216, %203
  %219 = phi ptr [ @.str.33, %203 ], [ %217, %216 ], !dbg !534
  br label %220, !dbg !532

220:                                              ; preds = %218, %199
  %221 = phi ptr [ @.str.33, %199 ], [ %219, %218 ], !dbg !532
  br label %222, !dbg !530

222:                                              ; preds = %220, %195
  %223 = phi ptr [ @.str.33, %195 ], [ %221, %220 ], !dbg !530
  br label %224, !dbg !528

224:                                              ; preds = %222, %191
  %225 = phi ptr [ @.str.33, %191 ], [ %223, %222 ], !dbg !528
  br label %226, !dbg !526

226:                                              ; preds = %224, %187
  %227 = phi ptr [ @.str.33, %187 ], [ %225, %224 ], !dbg !526
  br label %228, !dbg !524

228:                                              ; preds = %226, %183
  %229 = phi ptr [ @.str.30, %183 ], [ %227, %226 ], !dbg !524
  br label %230, !dbg !522

230:                                              ; preds = %228, %179
  %231 = phi ptr [ @.str.30, %179 ], [ %229, %228 ], !dbg !522
  br label %232, !dbg !520

232:                                              ; preds = %230, %175
  %233 = phi ptr [ @.str.28, %175 ], [ %231, %230 ], !dbg !520
  store ptr %233, ptr %13, align 8, !dbg !518
  %234 = load ptr, ptr %8, align 8, !dbg !540
  %235 = call i32 @strncmp(ptr noundef %234, ptr noundef @.str.40, i64 noundef 6) #10, !dbg !542
  %236 = icmp eq i32 %235, 0, !dbg !542
  br i1 %236, label %241, label %237, !dbg !543

237:                                              ; preds = %232
  %238 = load ptr, ptr %8, align 8, !dbg !544
  %239 = call i32 @strncmp(ptr noundef %238, ptr noundef @.str.41, i64 noundef 9) #10, !dbg !545
  %240 = icmp eq i32 %239, 0, !dbg !545
  br i1 %240, label %241, label %248, !dbg !543

241:                                              ; preds = %237, %232
  %242 = load ptr, ptr %13, align 8, !dbg !546
  %243 = load ptr, ptr %13, align 8, !dbg !548
  %244 = load i64, ptr %11, align 8, !dbg !549
  %245 = trunc i64 %244 to i32, !dbg !550
  %246 = load ptr, ptr %8, align 8, !dbg !551
  %247 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str.42, ptr noundef @.str.43, ptr noundef %242, ptr noundef %243, i32 noundef %245, ptr noundef %246), !dbg !552
  br label %254, !dbg !553

248:                                              ; preds = %237
  %249 = load ptr, ptr %13, align 8, !dbg !554
  %250 = load i64, ptr %11, align 8, !dbg !556
  %251 = trunc i64 %250 to i32, !dbg !557
  %252 = load ptr, ptr %8, align 8, !dbg !558
  %253 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str.44, ptr noundef @.str.45, ptr noundef %249, i32 noundef %251, ptr noundef %252), !dbg !559
  br label %254

254:                                              ; preds = %248, %241
  %255 = load ptr, ptr @stdout, align 8, !dbg !560
  %256 = call i32 @fputs_unlocked(ptr noundef @.str.46, ptr noundef %255), !dbg !561
  %257 = load ptr, ptr @stdout, align 8, !dbg !562
  %258 = call i32 @fputs_unlocked(ptr noundef @.str.47, ptr noundef %257), !dbg !563
  %259 = load ptr, ptr %7, align 8, !dbg !564
  %260 = load ptr, ptr %12, align 8, !dbg !565
  %261 = load ptr, ptr %7, align 8, !dbg !566
  %262 = ptrtoint ptr %260 to i64, !dbg !567
  %263 = ptrtoint ptr %261 to i64, !dbg !567
  %264 = sub i64 %262, %263, !dbg !567
  %265 = load ptr, ptr @stdout, align 8, !dbg !568
  %266 = call i64 @fwrite_unlocked(ptr noundef %259, i64 noundef 1, i64 noundef %264, ptr noundef %265), !dbg !569
  %267 = load ptr, ptr @stdout, align 8, !dbg !570
  %268 = call i32 @fputs_unlocked(ptr noundef @.str.48, ptr noundef %267), !dbg !571
  %269 = load ptr, ptr @stdout, align 8, !dbg !572
  %270 = call i32 @fputs_unlocked(ptr noundef @.str.49, ptr noundef %269), !dbg !573
  %271 = load ptr, ptr %12, align 8, !dbg !574
  %272 = load ptr, ptr @stdout, align 8, !dbg !575
  %273 = call i32 @fputs_unlocked(ptr noundef %271, ptr noundef %272), !dbg !576
  br label %274, !dbg !577

274:                                              ; preds = %254, %33
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !578 {
  %2 = alloca ptr, align 8
  %3 = alloca [7 x %struct.infomap], align 16
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !581, !DIExpression(), !582)
    #dbg_declare(ptr %3, !583, !DIExpression(), !590)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %3, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !590
    #dbg_declare(ptr %4, !591, !DIExpression(), !592)
  %7 = load ptr, ptr %2, align 8, !dbg !593
  store ptr %7, ptr %4, align 8, !dbg !592
    #dbg_declare(ptr %5, !594, !DIExpression(), !596)
  %8 = getelementptr inbounds [7 x %struct.infomap], ptr %3, i64 0, i64 0, !dbg !597
  store ptr %8, ptr %5, align 8, !dbg !596
  br label %9, !dbg !598

9:                                                ; preds = %23, %1
  %10 = load ptr, ptr %5, align 8, !dbg !599
  %11 = getelementptr inbounds nuw %struct.infomap, ptr %10, i32 0, i32 0, !dbg !600
  %12 = load ptr, ptr %11, align 8, !dbg !600
  %13 = icmp ne ptr %12, null, !dbg !599
  br i1 %13, label %14, label %21, !dbg !601

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 8, !dbg !602
  %16 = load ptr, ptr %5, align 8, !dbg !603
  %17 = getelementptr inbounds nuw %struct.infomap, ptr %16, i32 0, i32 0, !dbg !604
  %18 = load ptr, ptr %17, align 8, !dbg !604
  %19 = call zeroext i1 @streq(ptr noundef %15, ptr noundef %18), !dbg !605
  %20 = xor i1 %19, true, !dbg !606
  br label %21

21:                                               ; preds = %14, %9
  %22 = phi i1 [ false, %9 ], [ %20, %14 ], !dbg !607
  br i1 %22, label %23, label %26, !dbg !598

23:                                               ; preds = %21
  %24 = load ptr, ptr %5, align 8, !dbg !608
  %25 = getelementptr inbounds nuw %struct.infomap, ptr %24, i32 1, !dbg !608
  store ptr %25, ptr %5, align 8, !dbg !608
  br label %9, !dbg !598, !llvm.loop !609

26:                                               ; preds = %21
  %27 = load ptr, ptr %5, align 8, !dbg !610
  %28 = getelementptr inbounds nuw %struct.infomap, ptr %27, i32 0, i32 1, !dbg !612
  %29 = load ptr, ptr %28, align 8, !dbg !612
  %30 = icmp ne ptr %29, null, !dbg !610
  br i1 %30, label %31, label %35, !dbg !610

31:                                               ; preds = %26
  %32 = load ptr, ptr %5, align 8, !dbg !613
  %33 = getelementptr inbounds nuw %struct.infomap, ptr %32, i32 0, i32 1, !dbg !614
  %34 = load ptr, ptr %33, align 8, !dbg !614
  store ptr %34, ptr %4, align 8, !dbg !615
  br label %35, !dbg !616

35:                                               ; preds = %31, %26
  call void @emit_bug_reporting_address(), !dbg !617
    #dbg_declare(ptr %6, !618, !DIExpression(), !619)
  %36 = load ptr, ptr %2, align 8, !dbg !620
  %37 = call zeroext i1 @streq(ptr noundef %36, ptr noundef @.str.27), !dbg !621
  br i1 %37, label %38, label %39, !dbg !621

38:                                               ; preds = %35
  br label %41, !dbg !621

39:                                               ; preds = %35
  %40 = load ptr, ptr %2, align 8, !dbg !622
  br label %41, !dbg !621

41:                                               ; preds = %39, %38
  %42 = phi ptr [ @.str.28, %38 ], [ %40, %39 ], !dbg !621
  store ptr %42, ptr %6, align 8, !dbg !619
  %43 = call ptr @gettext(ptr noundef @.str.53) #8, !dbg !623
  %44 = load ptr, ptr %6, align 8, !dbg !624
  %45 = call i32 (ptr, ...) @rpl_printf(ptr noundef %43, ptr noundef @.str.43, ptr noundef %44), !dbg !625
  %46 = call ptr @gettext(ptr noundef @.str.54) #8, !dbg !626
  %47 = load ptr, ptr %4, align 8, !dbg !627
  %48 = load ptr, ptr %4, align 8, !dbg !628
  %49 = load ptr, ptr %2, align 8, !dbg !629
  %50 = icmp eq ptr %48, %49, !dbg !630
  %51 = zext i1 %50 to i64, !dbg !628
  %52 = select i1 %50, ptr @.str.55, ptr @.str.11, !dbg !628
  %53 = call i32 (ptr, ...) @rpl_printf(ptr noundef %46, ptr noundef %47, ptr noundef %52), !dbg !631
  ret void, !dbg !632
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #3 !dbg !633 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca %struct.mkdir_options, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
    #dbg_declare(ptr %4, !637, !DIExpression(), !638)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !639, !DIExpression(), !640)
    #dbg_declare(ptr %6, !641, !DIExpression(), !642)
  store ptr null, ptr %6, align 8, !dbg !642
    #dbg_declare(ptr %7, !643, !DIExpression(), !644)
    #dbg_declare(ptr %8, !645, !DIExpression(), !646)
  store ptr null, ptr %8, align 8, !dbg !646
    #dbg_declare(ptr %9, !647, !DIExpression(), !665)
  %13 = getelementptr inbounds nuw %struct.mkdir_options, ptr %9, i32 0, i32 0, !dbg !666
  store ptr null, ptr %13, align 8, !dbg !667
  %14 = getelementptr inbounds nuw %struct.mkdir_options, ptr %9, i32 0, i32 3, !dbg !668
  store i32 511, ptr %14, align 8, !dbg !669
  %15 = getelementptr inbounds nuw %struct.mkdir_options, ptr %9, i32 0, i32 4, !dbg !670
  store i32 0, ptr %15, align 4, !dbg !671
  %16 = getelementptr inbounds nuw %struct.mkdir_options, ptr %9, i32 0, i32 6, !dbg !672
  store ptr null, ptr %16, align 8, !dbg !673
  %17 = getelementptr inbounds nuw %struct.mkdir_options, ptr %9, i32 0, i32 5, !dbg !674
  store ptr null, ptr %17, align 8, !dbg !675
  %18 = load ptr, ptr %5, align 8, !dbg !676
  %19 = getelementptr inbounds ptr, ptr %18, i64 0, !dbg !676
  %20 = load ptr, ptr %19, align 8, !dbg !676
  call void @set_program_name(ptr noundef %20), !dbg !677
  %21 = call ptr @setlocale(i32 noundef 6, ptr noundef @.str.11) #8, !dbg !678
  %22 = call ptr @bindtextdomain(ptr noundef @.str.12, ptr noundef @.str.13) #8, !dbg !679
  %23 = call ptr @textdomain(ptr noundef @.str.12) #8, !dbg !680
  %24 = call i32 @atexit(ptr noundef @close_stdout) #8, !dbg !681
  br label %25, !dbg !682

25:                                               ; preds = %56, %2
  %26 = load i32, ptr %4, align 4, !dbg !683
  %27 = load ptr, ptr %5, align 8, !dbg !684
  %28 = call i32 @getopt_long(i32 noundef %26, ptr noundef %27, ptr noundef @.str.14, ptr noundef @longopts, ptr noundef null) #8, !dbg !685
  store i32 %28, ptr %7, align 4, !dbg !686
  %29 = icmp ne i32 %28, -1, !dbg !687
  br i1 %29, label %30, label %57, !dbg !682

30:                                               ; preds = %25
  %31 = load i32, ptr %7, align 4, !dbg !688
  switch i32 %31, label %55 [
    i32 112, label %32
    i32 109, label %34
    i32 118, label %36
    i32 90, label %39
    i32 -130, label %50
    i32 -131, label %51
  ], !dbg !690

32:                                               ; preds = %30
  %33 = getelementptr inbounds nuw %struct.mkdir_options, ptr %9, i32 0, i32 0, !dbg !691
  store ptr @make_ancestor, ptr %33, align 8, !dbg !693
  br label %56, !dbg !694

34:                                               ; preds = %30
  %35 = load ptr, ptr @optarg, align 8, !dbg !695
  store ptr %35, ptr %6, align 8, !dbg !696
  br label %56, !dbg !697

36:                                               ; preds = %30
  %37 = call ptr @gettext(ptr noundef @.str.15) #8, !dbg !698
  %38 = getelementptr inbounds nuw %struct.mkdir_options, ptr %9, i32 0, i32 6, !dbg !699
  store ptr %37, ptr %38, align 8, !dbg !700
  br label %56, !dbg !701

39:                                               ; preds = %30
  %40 = call zeroext i1 @is_smack_enabled(), !dbg !702
  br i1 %40, label %41, label %43, !dbg !702

41:                                               ; preds = %39
  %42 = load ptr, ptr @optarg, align 8, !dbg !704
  store ptr %42, ptr %8, align 8, !dbg !706
  br label %49, !dbg !707

43:                                               ; preds = %39
  %44 = load ptr, ptr @optarg, align 8, !dbg !708
  %45 = icmp ne ptr %44, null, !dbg !708
  br i1 %45, label %46, label %48, !dbg !708

46:                                               ; preds = %43
  %47 = call ptr @gettext(ptr noundef @.str.16) #8, !dbg !711
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %47), !dbg !713
  br label %48, !dbg !714

48:                                               ; preds = %46, %43
  br label %49

49:                                               ; preds = %48, %41
  br label %56, !dbg !715

50:                                               ; preds = %30
  call void @usage(i32 noundef 0) #12, !dbg !716
  unreachable, !dbg !716

51:                                               ; preds = %30
  %52 = load ptr, ptr @stdout, align 8, !dbg !717
  %53 = load ptr, ptr @Version, align 8, !dbg !717
  %54 = call ptr @proper_name_lite(ptr noundef @.str.18, ptr noundef @.str.18), !dbg !718
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %52, ptr noundef @.str.3, ptr noundef @.str.17, ptr noundef %53, ptr noundef %54, ptr noundef null), !dbg !717
  call void @exit(i32 noundef 0) #9, !dbg !717
  unreachable, !dbg !717

55:                                               ; preds = %30
  call void @usage(i32 noundef 1) #12, !dbg !719
  unreachable, !dbg !719

56:                                               ; preds = %49, %36, %34, %32
  br label %25, !dbg !682, !llvm.loop !720

57:                                               ; preds = %25
  %58 = load i32, ptr @optind, align 4, !dbg !722
  %59 = load i32, ptr %4, align 4, !dbg !724
  %60 = icmp eq i32 %58, %59, !dbg !725
  br i1 %60, label %61, label %63, !dbg !725

61:                                               ; preds = %57
  %62 = call ptr @gettext(ptr noundef @.str.19) #8, !dbg !726
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %62), !dbg !728
  call void @usage(i32 noundef 1) #12, !dbg !729
  unreachable, !dbg !729

63:                                               ; preds = %57
  %64 = load ptr, ptr %8, align 8, !dbg !730
  %65 = icmp ne ptr %64, null, !dbg !730
  br i1 %65, label %66, label %84, !dbg !730

66:                                               ; preds = %63
    #dbg_declare(ptr %10, !732, !DIExpression(), !734)
  store i32 0, ptr %10, align 4, !dbg !734
  %67 = call zeroext i1 @is_smack_enabled(), !dbg !735
  br i1 %67, label %68, label %71, !dbg !735

68:                                               ; preds = %66
  %69 = load ptr, ptr %8, align 8, !dbg !737
  %70 = call i32 @smack_set_label_for_self(ptr noundef %69), !dbg !738
  store i32 %70, ptr %10, align 4, !dbg !739
  br label %74, !dbg !740

71:                                               ; preds = %66
  %72 = load ptr, ptr %8, align 8, !dbg !741
  %73 = call i32 @setfscreatecon(ptr noundef %72), !dbg !742
  store i32 %73, ptr %10, align 4, !dbg !743
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, ptr %10, align 4, !dbg !744
  %76 = icmp slt i32 %75, 0, !dbg !746
  br i1 %76, label %77, label %83, !dbg !746

77:                                               ; preds = %74
  %78 = call ptr @__errno_location() #11, !dbg !747
  %79 = load i32, ptr %78, align 4, !dbg !747
  %80 = call ptr @gettext(ptr noundef @.str.20) #8, !dbg !748
  %81 = load ptr, ptr %8, align 8, !dbg !749
  %82 = call ptr @quote(ptr noundef %81), !dbg !750
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %79, ptr noundef %80, ptr noundef %82), !dbg !751
  unreachable, !dbg !751

83:                                               ; preds = %74
  br label %84, !dbg !752

84:                                               ; preds = %83, %63
  %85 = getelementptr inbounds nuw %struct.mkdir_options, ptr %9, i32 0, i32 0, !dbg !753
  %86 = load ptr, ptr %85, align 8, !dbg !753
  %87 = icmp ne ptr %86, null, !dbg !755
  br i1 %87, label %91, label %88, !dbg !756

88:                                               ; preds = %84
  %89 = load ptr, ptr %6, align 8, !dbg !757
  %90 = icmp ne ptr %89, null, !dbg !757
  br i1 %90, label %91, label %128, !dbg !756

91:                                               ; preds = %88, %84
    #dbg_declare(ptr %11, !758, !DIExpression(), !760)
  %92 = call i32 @umask(i32 noundef 0) #8, !dbg !761
  store i32 %92, ptr %11, align 4, !dbg !760
  %93 = load i32, ptr %11, align 4, !dbg !762
  %94 = and i32 %93, -193, !dbg !763
  %95 = getelementptr inbounds nuw %struct.mkdir_options, ptr %9, i32 0, i32 1, !dbg !764
  store i32 %94, ptr %95, align 8, !dbg !765
  %96 = load ptr, ptr %6, align 8, !dbg !766
  %97 = icmp ne ptr %96, null, !dbg !766
  br i1 %97, label %98, label %120, !dbg !766

98:                                               ; preds = %91
    #dbg_declare(ptr %12, !768, !DIExpression(), !773)
  %99 = load ptr, ptr %6, align 8, !dbg !774
  %100 = call noalias ptr @mode_compile(ptr noundef %99), !dbg !775
  store ptr %100, ptr %12, align 8, !dbg !773
  %101 = load ptr, ptr %12, align 8, !dbg !776
  %102 = icmp ne ptr %101, null, !dbg !776
  br i1 %102, label %107, label %103, !dbg !778

103:                                              ; preds = %98
  %104 = call ptr @gettext(ptr noundef @.str.21) #8, !dbg !779
  %105 = load ptr, ptr %6, align 8, !dbg !780
  %106 = call ptr @quote(ptr noundef %105), !dbg !781
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %104, ptr noundef %106), !dbg !782
  unreachable, !dbg !782

107:                                              ; preds = %98
  %108 = load i32, ptr %11, align 4, !dbg !783
  %109 = load ptr, ptr %12, align 8, !dbg !784
  %110 = getelementptr inbounds nuw %struct.mkdir_options, ptr %9, i32 0, i32 4, !dbg !785
  %111 = call i32 @mode_adjust(i32 noundef 511, i1 noundef zeroext true, i32 noundef %108, ptr noundef %109, ptr noundef %110), !dbg !786
  %112 = getelementptr inbounds nuw %struct.mkdir_options, ptr %9, i32 0, i32 3, !dbg !787
  store i32 %111, ptr %112, align 8, !dbg !788
  %113 = load i32, ptr %11, align 4, !dbg !789
  %114 = getelementptr inbounds nuw %struct.mkdir_options, ptr %9, i32 0, i32 3, !dbg !790
  %115 = load i32, ptr %114, align 8, !dbg !790
  %116 = xor i32 %115, -1, !dbg !791
  %117 = and i32 %113, %116, !dbg !792
  %118 = getelementptr inbounds nuw %struct.mkdir_options, ptr %9, i32 0, i32 2, !dbg !793
  store i32 %117, ptr %118, align 4, !dbg !794
  %119 = load ptr, ptr %12, align 8, !dbg !795
  call void @free(ptr noundef %119) #8, !dbg !796
  br label %124, !dbg !797

120:                                              ; preds = %91
  %121 = getelementptr inbounds nuw %struct.mkdir_options, ptr %9, i32 0, i32 3, !dbg !798
  store i32 511, ptr %121, align 8, !dbg !800
  %122 = load i32, ptr %11, align 4, !dbg !801
  %123 = getelementptr inbounds nuw %struct.mkdir_options, ptr %9, i32 0, i32 2, !dbg !802
  store i32 %122, ptr %123, align 4, !dbg !803
  br label %124

124:                                              ; preds = %120, %107
  %125 = getelementptr inbounds nuw %struct.mkdir_options, ptr %9, i32 0, i32 2, !dbg !804
  %126 = load i32, ptr %125, align 4, !dbg !804
  %127 = call i32 @umask(i32 noundef %126) #8, !dbg !805
  br label %128, !dbg !806

128:                                              ; preds = %124, %88
  %129 = load i32, ptr %4, align 4, !dbg !807
  %130 = load i32, ptr @optind, align 4, !dbg !808
  %131 = sub nsw i32 %129, %130, !dbg !809
  %132 = load ptr, ptr %5, align 8, !dbg !810
  %133 = load i32, ptr @optind, align 4, !dbg !811
  %134 = sext i32 %133 to i64, !dbg !812
  %135 = getelementptr inbounds ptr, ptr %132, i64 %134, !dbg !812
  %136 = call i32 @savewd_process_files(i32 noundef %131, ptr noundef %135, ptr noundef @process_dir, ptr noundef %9), !dbg !813
  ret i32 %136, !dbg !814
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

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_ancestor(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 !dbg !815 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !816, !DIExpression(), !817)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !818, !DIExpression(), !819)
  store ptr %2, ptr %6, align 8
    #dbg_declare(ptr %6, !820, !DIExpression(), !821)
    #dbg_declare(ptr %7, !822, !DIExpression(), !825)
  %10 = load ptr, ptr %6, align 8, !dbg !826
  store ptr %10, ptr %7, align 8, !dbg !825
  %11 = load ptr, ptr %7, align 8, !dbg !827
  %12 = getelementptr inbounds nuw %struct.mkdir_options, ptr %11, i32 0, i32 5, !dbg !829
  %13 = load ptr, ptr %12, align 8, !dbg !829
  %14 = icmp ne ptr %13, null, !dbg !827
  br i1 %14, label %15, label %32, !dbg !830

15:                                               ; preds = %3
  %16 = load ptr, ptr %7, align 8, !dbg !831
  %17 = getelementptr inbounds nuw %struct.mkdir_options, ptr %16, i32 0, i32 5, !dbg !832
  %18 = load ptr, ptr %17, align 8, !dbg !832
  %19 = load ptr, ptr %5, align 8, !dbg !833
  %20 = call i32 @defaultcon(ptr noundef %18, ptr noundef %19, i32 noundef 16384), !dbg !834
  %21 = icmp slt i32 %20, 0, !dbg !835
  br i1 %21, label %22, label %32, !dbg !836

22:                                               ; preds = %15
  %23 = call ptr @__errno_location() #11, !dbg !837
  %24 = load i32, ptr %23, align 4, !dbg !837
  %25 = call zeroext i1 @ignorable_ctx_err(i32 noundef %24), !dbg !838
  br i1 %25, label %32, label %26, !dbg !836

26:                                               ; preds = %22
  %27 = call ptr @__errno_location() #11, !dbg !839
  %28 = load i32, ptr %27, align 4, !dbg !839
  %29 = call ptr @gettext(ptr noundef @.str.63) #8, !dbg !840
  %30 = load ptr, ptr %4, align 8, !dbg !841
  %31 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %30), !dbg !842
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %28, ptr noundef %29, ptr noundef %31), !dbg !843
  br label %32, !dbg !843

32:                                               ; preds = %26, %22, %15, %3
  %33 = load ptr, ptr %7, align 8, !dbg !844
  %34 = getelementptr inbounds nuw %struct.mkdir_options, ptr %33, i32 0, i32 1, !dbg !846
  %35 = load i32, ptr %34, align 8, !dbg !846
  %36 = load ptr, ptr %7, align 8, !dbg !847
  %37 = getelementptr inbounds nuw %struct.mkdir_options, ptr %36, i32 0, i32 2, !dbg !848
  %38 = load i32, ptr %37, align 4, !dbg !848
  %39 = icmp ne i32 %35, %38, !dbg !849
  br i1 %39, label %40, label %45, !dbg !849

40:                                               ; preds = %32
  %41 = load ptr, ptr %7, align 8, !dbg !850
  %42 = getelementptr inbounds nuw %struct.mkdir_options, ptr %41, i32 0, i32 1, !dbg !851
  %43 = load i32, ptr %42, align 8, !dbg !851
  %44 = call i32 @umask(i32 noundef %43) #8, !dbg !852
  br label %45, !dbg !852

45:                                               ; preds = %40, %32
    #dbg_declare(ptr %8, !853, !DIExpression(), !854)
  %46 = load ptr, ptr %5, align 8, !dbg !855
  %47 = call i32 @mkdir(ptr noundef %46, i32 noundef 511) #8, !dbg !856
  store i32 %47, ptr %8, align 4, !dbg !854
  %48 = load ptr, ptr %7, align 8, !dbg !857
  %49 = getelementptr inbounds nuw %struct.mkdir_options, ptr %48, i32 0, i32 1, !dbg !859
  %50 = load i32, ptr %49, align 8, !dbg !859
  %51 = load ptr, ptr %7, align 8, !dbg !860
  %52 = getelementptr inbounds nuw %struct.mkdir_options, ptr %51, i32 0, i32 2, !dbg !861
  %53 = load i32, ptr %52, align 4, !dbg !861
  %54 = icmp ne i32 %50, %53, !dbg !862
  br i1 %54, label %55, label %64, !dbg !862

55:                                               ; preds = %45
    #dbg_declare(ptr %9, !863, !DIExpression(), !865)
  %56 = call ptr @__errno_location() #11, !dbg !866
  %57 = load i32, ptr %56, align 4, !dbg !866
  store i32 %57, ptr %9, align 4, !dbg !865
  %58 = load ptr, ptr %7, align 8, !dbg !867
  %59 = getelementptr inbounds nuw %struct.mkdir_options, ptr %58, i32 0, i32 2, !dbg !868
  %60 = load i32, ptr %59, align 4, !dbg !868
  %61 = call i32 @umask(i32 noundef %60) #8, !dbg !869
  %62 = load i32, ptr %9, align 4, !dbg !870
  %63 = call ptr @__errno_location() #11, !dbg !871
  store i32 %62, ptr %63, align 4, !dbg !872
  br label %64, !dbg !873

64:                                               ; preds = %55, %45
  %65 = load i32, ptr %8, align 4, !dbg !874
  %66 = icmp eq i32 %65, 0, !dbg !876
  br i1 %66, label %67, label %76, !dbg !876

67:                                               ; preds = %64
  %68 = load ptr, ptr %7, align 8, !dbg !877
  %69 = getelementptr inbounds nuw %struct.mkdir_options, ptr %68, i32 0, i32 1, !dbg !879
  %70 = load i32, ptr %69, align 8, !dbg !879
  %71 = and i32 %70, 256, !dbg !880
  %72 = icmp ne i32 %71, 0, !dbg !881
  %73 = zext i1 %72 to i32, !dbg !881
  store i32 %73, ptr %8, align 4, !dbg !882
  %74 = load ptr, ptr %4, align 8, !dbg !883
  %75 = load ptr, ptr %6, align 8, !dbg !884
  call void @announce_mkdir(ptr noundef %74, ptr noundef %75), !dbg !885
  br label %76, !dbg !886

76:                                               ; preds = %67, %64
  %77 = load i32, ptr %8, align 4, !dbg !887
  ret i32 %77, !dbg !888
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @is_smack_enabled() #3 !dbg !889 {
  ret i1 false, !dbg !893
}

declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

declare void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare ptr @proper_name_lite(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_set_label_for_self(ptr noundef %0) #3 !dbg !894 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !897, !DIExpression(), !898)
  ret i32 -1, !dbg !899
}

declare i32 @setfscreatecon(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #5

declare ptr @quote(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @umask(i32 noundef) #1

declare noalias ptr @mode_compile(ptr noundef) #2

declare i32 @mode_adjust(i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

declare i32 @savewd_process_files(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_dir(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 !dbg !900 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !904, !DIExpression(), !905)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !906, !DIExpression(), !907)
  store ptr %2, ptr %6, align 8
    #dbg_declare(ptr %6, !908, !DIExpression(), !909)
    #dbg_declare(ptr %7, !910, !DIExpression(), !911)
  %9 = load ptr, ptr %6, align 8, !dbg !912
  store ptr %9, ptr %7, align 8, !dbg !911
  %10 = load ptr, ptr %7, align 8, !dbg !913
  %11 = getelementptr inbounds nuw %struct.mkdir_options, ptr %10, i32 0, i32 5, !dbg !915
  %12 = load ptr, ptr %11, align 8, !dbg !915
  %13 = icmp ne ptr %12, null, !dbg !913
  br i1 %13, label %14, label %37, !dbg !913

14:                                               ; preds = %3
  %15 = load ptr, ptr %7, align 8, !dbg !916
  %16 = getelementptr inbounds nuw %struct.mkdir_options, ptr %15, i32 0, i32 0, !dbg !919
  %17 = load ptr, ptr %16, align 8, !dbg !919
  %18 = icmp ne ptr %17, null, !dbg !916
  br i1 %18, label %36, label %19, !dbg !920

19:                                               ; preds = %14
  %20 = load ptr, ptr %7, align 8, !dbg !921
  %21 = getelementptr inbounds nuw %struct.mkdir_options, ptr %20, i32 0, i32 5, !dbg !922
  %22 = load ptr, ptr %21, align 8, !dbg !922
  %23 = load ptr, ptr %4, align 8, !dbg !923
  %24 = call i32 @defaultcon(ptr noundef %22, ptr noundef %23, i32 noundef 16384), !dbg !924
  %25 = icmp slt i32 %24, 0, !dbg !925
  br i1 %25, label %26, label %36, !dbg !926

26:                                               ; preds = %19
  %27 = call ptr @__errno_location() #11, !dbg !927
  %28 = load i32, ptr %27, align 4, !dbg !927
  %29 = call zeroext i1 @ignorable_ctx_err(i32 noundef %28), !dbg !928
  br i1 %29, label %36, label %30, !dbg !926

30:                                               ; preds = %26
  %31 = call ptr @__errno_location() #11, !dbg !929
  %32 = load i32, ptr %31, align 4, !dbg !929
  %33 = call ptr @gettext(ptr noundef @.str.63) #8, !dbg !930
  %34 = load ptr, ptr %4, align 8, !dbg !931
  %35 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %34), !dbg !932
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %32, ptr noundef %33, ptr noundef %35), !dbg !933
  br label %36, !dbg !933

36:                                               ; preds = %30, %26, %19, %14
  br label %37, !dbg !934

37:                                               ; preds = %36, %3
    #dbg_declare(ptr %8, !935, !DIExpression(), !936)
  %38 = load ptr, ptr %4, align 8, !dbg !937
  %39 = load ptr, ptr %5, align 8, !dbg !938
  %40 = load ptr, ptr %7, align 8, !dbg !939
  %41 = getelementptr inbounds nuw %struct.mkdir_options, ptr %40, i32 0, i32 0, !dbg !940
  %42 = load ptr, ptr %41, align 8, !dbg !940
  %43 = load ptr, ptr %6, align 8, !dbg !941
  %44 = load ptr, ptr %7, align 8, !dbg !942
  %45 = getelementptr inbounds nuw %struct.mkdir_options, ptr %44, i32 0, i32 3, !dbg !943
  %46 = load i32, ptr %45, align 8, !dbg !943
  %47 = load ptr, ptr %7, align 8, !dbg !944
  %48 = getelementptr inbounds nuw %struct.mkdir_options, ptr %47, i32 0, i32 4, !dbg !945
  %49 = load i32, ptr %48, align 4, !dbg !945
  %50 = call zeroext i1 @make_dir_parents(ptr noundef %38, ptr noundef %39, ptr noundef %42, ptr noundef %43, i32 noundef %46, ptr noundef @announce_mkdir, i32 noundef %49, i32 noundef -1, i32 noundef -1, i1 noundef zeroext true), !dbg !946
  %51 = zext i1 %50 to i64, !dbg !946
  %52 = select i1 %50, i32 0, i32 1, !dbg !946
  store i32 %52, ptr %8, align 4, !dbg !936
  %53 = load i32, ptr %8, align 4, !dbg !947
  %54 = icmp eq i32 %53, 0, !dbg !949
  br i1 %54, label %55, label %83, !dbg !950

55:                                               ; preds = %37
  %56 = load ptr, ptr %7, align 8, !dbg !951
  %57 = getelementptr inbounds nuw %struct.mkdir_options, ptr %56, i32 0, i32 5, !dbg !952
  %58 = load ptr, ptr %57, align 8, !dbg !952
  %59 = icmp ne ptr %58, null, !dbg !951
  br i1 %59, label %60, label %83, !dbg !953

60:                                               ; preds = %55
  %61 = load ptr, ptr %7, align 8, !dbg !954
  %62 = getelementptr inbounds nuw %struct.mkdir_options, ptr %61, i32 0, i32 0, !dbg !955
  %63 = load ptr, ptr %62, align 8, !dbg !955
  %64 = icmp ne ptr %63, null, !dbg !954
  br i1 %64, label %65, label %83, !dbg !953

65:                                               ; preds = %60
  %66 = load ptr, ptr %7, align 8, !dbg !956
  %67 = getelementptr inbounds nuw %struct.mkdir_options, ptr %66, i32 0, i32 5, !dbg !959
  %68 = load ptr, ptr %67, align 8, !dbg !959
  %69 = load ptr, ptr %4, align 8, !dbg !960
  %70 = call ptr @last_component(ptr noundef %69) #10, !dbg !961
  %71 = call zeroext i1 @restorecon(ptr noundef %68, ptr noundef %70, i1 noundef zeroext false), !dbg !962
  br i1 %71, label %82, label %72, !dbg !963

72:                                               ; preds = %65
  %73 = call ptr @__errno_location() #11, !dbg !964
  %74 = load i32, ptr %73, align 4, !dbg !964
  %75 = call zeroext i1 @ignorable_ctx_err(i32 noundef %74), !dbg !965
  br i1 %75, label %82, label %76, !dbg !963

76:                                               ; preds = %72
  %77 = call ptr @__errno_location() #11, !dbg !966
  %78 = load i32, ptr %77, align 4, !dbg !966
  %79 = call ptr @gettext(ptr noundef @.str.64) #8, !dbg !967
  %80 = load ptr, ptr %4, align 8, !dbg !968
  %81 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %80), !dbg !969
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %78, ptr noundef %79, ptr noundef %81), !dbg !970
  br label %82, !dbg !970

82:                                               ; preds = %76, %72, %65
  br label %83, !dbg !971

83:                                               ; preds = %82, %60, %55, %37
  %84 = load i32, ptr %8, align 4, !dbg !972
  ret i32 %84, !dbg !973
}

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

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @defaultcon(ptr noundef %0, ptr noundef %1, i32 noundef %2) #3 !dbg !974 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !978, !DIExpression(), !979)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !980, !DIExpression(), !981)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !982, !DIExpression(), !983)
  %7 = call ptr @__errno_location() #11, !dbg !984
  store i32 95, ptr %7, align 4, !dbg !985
  ret i32 -1, !dbg !986
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @ignorable_ctx_err(i32 noundef %0) #3 !dbg !987 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !990, !DIExpression(), !991)
  %3 = load i32, ptr %2, align 4, !dbg !992
  %4 = icmp eq i32 %3, 95, !dbg !993
  br i1 %4, label %8, label %5, !dbg !994

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4, !dbg !995
  %7 = icmp eq i32 %6, 61, !dbg !996
  br label %8, !dbg !994

8:                                                ; preds = %5, %1
  %9 = phi i1 [ true, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !997
}

declare ptr @quotearg_style(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @mkdir(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @announce_mkdir(ptr noundef %0, ptr noundef %1) #3 !dbg !998 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1001, !DIExpression(), !1002)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1003, !DIExpression(), !1004)
    #dbg_declare(ptr %5, !1005, !DIExpression(), !1006)
  %6 = load ptr, ptr %4, align 8, !dbg !1007
  store ptr %6, ptr %5, align 8, !dbg !1006
  %7 = load ptr, ptr %5, align 8, !dbg !1008
  %8 = getelementptr inbounds nuw %struct.mkdir_options, ptr %7, i32 0, i32 6, !dbg !1010
  %9 = load ptr, ptr %8, align 8, !dbg !1010
  %10 = icmp ne ptr %9, null, !dbg !1008
  br i1 %10, label %11, label %18, !dbg !1008

11:                                               ; preds = %2
  %12 = load ptr, ptr @stdout, align 8, !dbg !1011
  %13 = load ptr, ptr %5, align 8, !dbg !1012
  %14 = getelementptr inbounds nuw %struct.mkdir_options, ptr %13, i32 0, i32 6, !dbg !1013
  %15 = load ptr, ptr %14, align 8, !dbg !1013
  %16 = load ptr, ptr %3, align 8, !dbg !1014
  %17 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %16), !dbg !1015
  call void (ptr, ptr, ...) @prog_fprintf(ptr noundef %12, ptr noundef %15, ptr noundef %17), !dbg !1016
  br label %18, !dbg !1016

18:                                               ; preds = %11, %2
  ret void, !dbg !1017
}

declare void @prog_fprintf(ptr noundef, ptr noundef, ...) #2

declare zeroext i1 @make_dir_parents(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @restorecon(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #3 !dbg !1018 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1021, !DIExpression(), !1022)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !1023, !DIExpression(), !1024)
  %7 = zext i1 %2 to i8
  store i8 %7, ptr %6, align 1
    #dbg_declare(ptr %6, !1025, !DIExpression(), !1026)
  %8 = call ptr @__errno_location() #11, !dbg !1027
  store i32 95, ptr %8, align 4, !dbg !1028
  ret i1 false, !dbg !1029
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @last_component(ptr noundef) #6

attributes #0 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { noreturn }

!llvm.dbg.cu = !{!110}
!llvm.module.flags = !{!321, !322, !323, !324, !325, !326, !327}
!llvm.ident = !{!328}

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
!97 = distinct !DIGlobalVariable(scope: null, file: !2, line: 287, type: !49, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !91, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !102, line: 755, type: !24, isLocal: true, isDefinition: true)
!102 = !DIFile(filename: "src/system.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "6a9c30566098770bfb4561b49834f302")
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !105, file: !102, line: 594, type: !113, isLocal: true, isDefinition: true)
!105 = distinct !DISubprogram(name: "oputs_", scope: !102, file: !102, line: 592, type: !106, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !110, retainedNodes: !320)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !108, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!110 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !111, retainedTypes: !169, globals: !177, splitDebugInlining: false, nameTableKind: None)
!111 = !{!112, !117, !133, !147}
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !102, line: 356, baseType: !113, size: 32, elements: !114)
!113 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!114 = !{!115, !116}
!115 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!116 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !118, line: 46, baseType: !119, size: 32, elements: !120)
!118 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!119 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132}
!121 = !DIEnumerator(name: "_ISupper", value: 256)
!122 = !DIEnumerator(name: "_ISlower", value: 512)
!123 = !DIEnumerator(name: "_ISalpha", value: 1024)
!124 = !DIEnumerator(name: "_ISdigit", value: 2048)
!125 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!126 = !DIEnumerator(name: "_ISspace", value: 8192)
!127 = !DIEnumerator(name: "_ISprint", value: 16384)
!128 = !DIEnumerator(name: "_ISgraph", value: 32768)
!129 = !DIEnumerator(name: "_ISblank", value: 1)
!130 = !DIEnumerator(name: "_IScntrl", value: 2)
!131 = !DIEnumerator(name: "_ISpunct", value: 4)
!132 = !DIEnumerator(name: "_ISalnum", value: 8)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !134, line: 42, baseType: !119, size: 32, elements: !135)
!134 = !DIFile(filename: "./lib/quotearg.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146}
!136 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!137 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!138 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!139 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!140 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!141 = !DIEnumerator(name: "c_quoting_style", value: 5)
!142 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!143 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!144 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!145 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!146 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !149, file: !148, line: 45, baseType: !119, size: 32, elements: !162)
!148 = !DIFile(filename: "./lib/savewd.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "ad4dd1c19e06c974b5c544edb9d47f86")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !148, line: 42, size: 64, elements: !150)
!150 = !{!151, !152}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !149, file: !148, line: 73, baseType: !147, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !149, file: !148, line: 81, baseType: !153, size: 32, offset: 32)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !149, file: !148, line: 76, size: 32, elements: !154)
!154 = !{!155, !156, !157}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !153, file: !148, line: 78, baseType: !113, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !153, file: !148, line: 79, baseType: !113, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !153, file: !148, line: 80, baseType: !158, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !159, line: 97, baseType: !160)
!159 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !161, line: 154, baseType: !113)
!161 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!162 = !{!163, !164, !165, !166, !167, !168}
!163 = !DIEnumerator(name: "INITIAL_STATE", value: 0)
!164 = !DIEnumerator(name: "FD_STATE", value: 1)
!165 = !DIEnumerator(name: "FD_POST_CHDIR_STATE", value: 2)
!166 = !DIEnumerator(name: "FORKING_STATE", value: 3)
!167 = !DIEnumerator(name: "ERROR_STATE", value: 4)
!168 = !DIEnumerator(name: "FINAL_STATE", value: 5)
!169 = !{!170, !171, !113, !172, !173, !175}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!172 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !159, line: 79, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !161, line: 146, baseType: !119)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !159, line: 64, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !161, line: 147, baseType: !119)
!177 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !72, !74, !79, !84, !89, !94, !96, !98, !100, !103, !178, !183, !185, !190, !192, !197, !199, !201, !206, !208, !210, !212, !217, !222, !224, !226, !228, !230, !232, !234, !239, !244, !249, !254, !256, !258, !260, !262, !264, !269, !271, !276, !281, !286, !288, !290, !292, !294, !296, !298, !310, !315}
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !102, line: 604, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 5)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !102, line: 605, type: !180, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !102, line: 614, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 4)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !102, line: 639, type: !19, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !102, line: 667, type: !194, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 2)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !102, line: 667, type: !180, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !102, line: 668, type: !187, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !102, line: 668, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 3)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !102, line: 669, type: !180, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !102, line: 670, type: !19, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !102, line: 670, type: !19, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !102, line: 671, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 7)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !102, line: 672, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 8)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !102, line: 673, type: !64, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !102, line: 674, type: !64, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !102, line: 675, type: !64, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !102, line: 676, type: !64, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !102, line: 682, type: !214, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !102, line: 683, type: !64, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !102, line: 688, type: !236, isLocal: true, isDefinition: true)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 17)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !102, line: 688, type: !241, isLocal: true, isDefinition: true)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 40)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !102, line: 695, type: !246, isLocal: true, isDefinition: true)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 15)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !102, line: 695, type: !251, isLocal: true, isDefinition: true)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 61)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !102, line: 698, type: !203, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !102, line: 702, type: !180, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !102, line: 707, type: !180, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !102, line: 710, type: !219, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !102, line: 858, type: !91, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !102, line: 859, type: !266, isLocal: true, isDefinition: true)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 22)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !102, line: 860, type: !246, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !102, line: 882, type: !273, isLocal: true, isDefinition: true)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 27)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !102, line: 884, type: !278, isLocal: true, isDefinition: true)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 51)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !102, line: 885, type: !283, isLocal: true, isDefinition: true)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 12)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !219, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !180, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !219, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !219, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !180, isLocal: true, isDefinition: true)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !219, isLocal: true, isDefinition: true)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "longopts", scope: !110, file: !2, line: 39, type: !300, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 1792, elements: !215)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !303, line: 50, size: 256, elements: !304)
!303 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!304 = !{!305, !306, !307, !309}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !302, file: !303, line: 52, baseType: !108, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !302, file: !303, line: 55, baseType: !113, size: 32, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !302, file: !303, line: 56, baseType: !308, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !302, file: !303, line: 57, baseType: !113, size: 32, offset: 192)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !312, isLocal: true, isDefinition: true)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 46)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !2, line: 194, type: !317, isLocal: true, isDefinition: true)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 33)
!320 = !{}
!321 = !{i32 7, !"Dwarf Version", i32 5}
!322 = !{i32 2, !"Debug Info Version", i32 3}
!323 = !{i32 1, !"wchar_size", i32 4}
!324 = !{i32 8, !"PIC Level", i32 2}
!325 = !{i32 7, !"PIE Level", i32 2}
!326 = !{i32 7, !"uwtable", i32 2}
!327 = !{i32 7, !"frame-pointer", i32 2}
!328 = !{!"Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)"}
!329 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 51, type: !330, scopeLine: 52, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !320)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !113}
!332 = !DILocalVariable(name: "status", arg: 1, scope: !329, file: !2, line: 51, type: !113)
!333 = !DILocation(line: 51, column: 12, scope: !329)
!334 = !DILocation(line: 53, column: 7, scope: !335)
!335 = distinct !DILexicalBlock(scope: !329, file: !2, line: 53, column: 7)
!336 = !DILocation(line: 53, column: 14, scope: !335)
!337 = !DILocation(line: 54, column: 5, scope: !335)
!338 = !DILocation(line: 54, column: 5, scope: !339)
!339 = distinct !DILexicalBlock(scope: !335, file: !2, line: 54, column: 5)
!340 = !DILocation(line: 57, column: 15, scope: !341)
!341 = distinct !DILexicalBlock(scope: !335, file: !2, line: 56, column: 5)
!342 = !DILocation(line: 57, column: 58, scope: !341)
!343 = !DILocation(line: 57, column: 7, scope: !341)
!344 = !DILocation(line: 58, column: 14, scope: !341)
!345 = !DILocation(line: 60, column: 5, scope: !341)
!346 = !DILocation(line: 58, column: 7, scope: !341)
!347 = !DILocation(line: 62, column: 7, scope: !341)
!348 = !DILocation(line: 64, column: 14, scope: !341)
!349 = !DILocation(line: 64, column: 7, scope: !341)
!350 = !DILocation(line: 68, column: 14, scope: !341)
!351 = !DILocation(line: 68, column: 7, scope: !341)
!352 = !DILocation(line: 73, column: 14, scope: !341)
!353 = !DILocation(line: 73, column: 7, scope: !341)
!354 = !DILocation(line: 77, column: 14, scope: !341)
!355 = !DILocation(line: 77, column: 7, scope: !341)
!356 = !DILocation(line: 82, column: 14, scope: !341)
!357 = !DILocation(line: 82, column: 7, scope: !341)
!358 = !DILocation(line: 87, column: 14, scope: !341)
!359 = !DILocation(line: 87, column: 7, scope: !341)
!360 = !DILocation(line: 88, column: 14, scope: !341)
!361 = !DILocation(line: 88, column: 7, scope: !341)
!362 = !DILocation(line: 89, column: 7, scope: !341)
!363 = !DILocation(line: 91, column: 9, scope: !329)
!364 = !DILocation(line: 91, column: 3, scope: !329)
!365 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !102, file: !102, line: 753, type: !366, scopeLine: 754, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !110)
!366 = !DISubroutineType(types: !367)
!367 = !{null}
!368 = !DILocation(line: 755, column: 10, scope: !365)
!369 = !DILocation(line: 757, column: 5, scope: !365)
!370 = !DILocation(line: 755, column: 3, scope: !365)
!371 = !DILocation(line: 758, column: 1, scope: !365)
!372 = !DILocalVariable(name: "program", arg: 1, scope: !105, file: !102, line: 592, type: !108)
!373 = !DILocation(line: 592, column: 34, scope: !105)
!374 = !DILocalVariable(name: "option", arg: 2, scope: !105, file: !102, line: 592, type: !108)
!375 = !DILocation(line: 592, column: 55, scope: !105)
!376 = !DILocation(line: 600, column: 7, scope: !377)
!377 = distinct !DILexicalBlock(scope: !105, file: !102, line: 600, column: 7)
!378 = !DILocation(line: 600, column: 19, scope: !377)
!379 = !DILocalVariable(name: "term", scope: !380, file: !102, line: 604, type: !108)
!380 = distinct !DILexicalBlock(scope: !377, file: !102, line: 601, column: 5)
!381 = !DILocation(line: 604, column: 19, scope: !380)
!382 = !DILocation(line: 604, column: 26, scope: !380)
!383 = !DILocation(line: 605, column: 23, scope: !380)
!384 = !DILocation(line: 605, column: 28, scope: !380)
!385 = !DILocation(line: 605, column: 33, scope: !380)
!386 = !DILocation(line: 605, column: 32, scope: !380)
!387 = !DILocation(line: 605, column: 38, scope: !380)
!388 = !DILocation(line: 605, column: 48, scope: !380)
!389 = !DILocation(line: 605, column: 41, scope: !380)
!390 = !DILocation(line: 605, column: 19, scope: !380)
!391 = !DILocation(line: 606, column: 5, scope: !380)
!392 = !DILocation(line: 607, column: 7, scope: !393)
!393 = distinct !DILexicalBlock(scope: !105, file: !102, line: 607, column: 7)
!394 = !DILocation(line: 609, column: 14, scope: !395)
!395 = distinct !DILexicalBlock(scope: !393, file: !102, line: 608, column: 5)
!396 = !DILocation(line: 609, column: 22, scope: !395)
!397 = !DILocation(line: 609, column: 7, scope: !395)
!398 = !DILocation(line: 610, column: 7, scope: !395)
!399 = !DILocalVariable(name: "double_space", scope: !105, file: !102, line: 613, type: !400)
!400 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!401 = !DILocation(line: 613, column: 8, scope: !105)
!402 = !DILocalVariable(name: "first_word", scope: !105, file: !102, line: 614, type: !108)
!403 = !DILocation(line: 614, column: 15, scope: !105)
!404 = !DILocation(line: 614, column: 28, scope: !105)
!405 = !DILocation(line: 614, column: 45, scope: !105)
!406 = !DILocation(line: 614, column: 37, scope: !105)
!407 = !DILocation(line: 614, column: 35, scope: !105)
!408 = !DILocalVariable(name: "option_text", scope: !105, file: !102, line: 615, type: !108)
!409 = !DILocation(line: 615, column: 15, scope: !105)
!410 = !DILocation(line: 615, column: 37, scope: !105)
!411 = !DILocation(line: 615, column: 29, scope: !105)
!412 = !DILocation(line: 616, column: 8, scope: !413)
!413 = distinct !DILexicalBlock(scope: !105, file: !102, line: 616, column: 7)
!414 = !DILocation(line: 616, column: 7, scope: !413)
!415 = !DILocation(line: 618, column: 21, scope: !416)
!416 = distinct !DILexicalBlock(scope: !413, file: !102, line: 617, column: 5)
!417 = !DILocation(line: 618, column: 19, scope: !416)
!418 = !DILocation(line: 621, column: 20, scope: !416)
!419 = !DILocation(line: 622, column: 5, scope: !416)
!420 = !DILocation(line: 623, column: 12, scope: !421)
!421 = distinct !DILexicalBlock(scope: !413, file: !102, line: 623, column: 12)
!422 = !DILocation(line: 623, column: 27, scope: !421)
!423 = !DILocation(line: 623, column: 24, scope: !421)
!424 = !DILocalVariable(name: "s", scope: !425, file: !102, line: 627, type: !108)
!425 = distinct !DILexicalBlock(scope: !421, file: !102, line: 624, column: 5)
!426 = !DILocation(line: 627, column: 19, scope: !425)
!427 = !DILocation(line: 627, column: 23, scope: !425)
!428 = !DILocalVariable(name: "spaces", scope: !425, file: !102, line: 628, type: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !430, line: 18, baseType: !431)
!430 = !DIFile(filename: "/usr/lib/llvm-22/lib/clang/22/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!431 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!432 = !DILocation(line: 628, column: 14, scope: !425)
!433 = !DILocation(line: 629, column: 7, scope: !425)
!434 = !DILocation(line: 629, column: 14, scope: !425)
!435 = !DILocation(line: 629, column: 18, scope: !425)
!436 = !DILocation(line: 629, column: 16, scope: !425)
!437 = !DILocation(line: 629, column: 30, scope: !425)
!438 = !DILocation(line: 629, column: 33, scope: !425)
!439 = !DILocation(line: 629, column: 40, scope: !425)
!440 = !DILocation(line: 0, scope: !425)
!441 = !DILocation(line: 630, column: 21, scope: !425)
!442 = !DILocation(line: 630, column: 32, scope: !425)
!443 = !DILocation(line: 630, column: 30, scope: !425)
!444 = !DILocation(line: 630, column: 20, scope: !425)
!445 = !DILocation(line: 630, column: 19, scope: !425)
!446 = !DILocation(line: 630, column: 16, scope: !425)
!447 = distinct !{!447, !433, !441, !448}
!448 = !{!"llvm.loop.mustprogress"}
!449 = !DILocation(line: 631, column: 11, scope: !450)
!450 = distinct !DILexicalBlock(scope: !425, file: !102, line: 631, column: 11)
!451 = !DILocation(line: 631, column: 18, scope: !450)
!452 = !DILocation(line: 634, column: 25, scope: !453)
!453 = distinct !DILexicalBlock(scope: !450, file: !102, line: 632, column: 9)
!454 = !DILocation(line: 634, column: 23, scope: !453)
!455 = !DILocation(line: 635, column: 24, scope: !453)
!456 = !DILocation(line: 636, column: 9, scope: !453)
!457 = !DILocation(line: 637, column: 5, scope: !425)
!458 = !DILocalVariable(name: "anchor_len", scope: !105, file: !102, line: 639, type: !429)
!459 = !DILocation(line: 639, column: 10, scope: !105)
!460 = !DILocation(line: 639, column: 32, scope: !105)
!461 = !DILocation(line: 639, column: 23, scope: !105)
!462 = !DILocalVariable(name: "desc_text", scope: !105, file: !102, line: 644, type: !108)
!463 = !DILocation(line: 644, column: 15, scope: !105)
!464 = !DILocation(line: 644, column: 27, scope: !105)
!465 = !DILocation(line: 644, column: 41, scope: !105)
!466 = !DILocation(line: 644, column: 39, scope: !105)
!467 = !DILocation(line: 645, column: 3, scope: !105)
!468 = !DILocation(line: 645, column: 11, scope: !105)
!469 = !DILocation(line: 645, column: 10, scope: !105)
!470 = !DILocation(line: 645, column: 21, scope: !105)
!471 = !DILocation(line: 645, column: 25, scope: !105)
!472 = !DILocation(line: 645, column: 24, scope: !105)
!473 = !DILocation(line: 645, column: 35, scope: !105)
!474 = !DILocation(line: 0, scope: !105)
!475 = !DILocation(line: 647, column: 12, scope: !476)
!476 = distinct !DILexicalBlock(scope: !477, file: !102, line: 647, column: 11)
!477 = distinct !DILexicalBlock(scope: !105, file: !102, line: 646, column: 5)
!478 = !DILocation(line: 647, column: 11, scope: !476)
!479 = !DILocation(line: 647, column: 22, scope: !476)
!480 = !DILocation(line: 647, column: 29, scope: !476)
!481 = !DILocation(line: 647, column: 34, scope: !476)
!482 = !DILocation(line: 647, column: 32, scope: !476)
!483 = !DILocation(line: 647, column: 49, scope: !476)
!484 = !DILocation(line: 648, column: 22, scope: !476)
!485 = !DILocation(line: 648, column: 9, scope: !476)
!486 = !DILocation(line: 649, column: 11, scope: !487)
!487 = distinct !DILexicalBlock(scope: !477, file: !102, line: 649, column: 11)
!488 = !DILocation(line: 649, column: 21, scope: !487)
!489 = !DILocation(line: 649, column: 20, scope: !487)
!490 = !DILocation(line: 651, column: 16, scope: !491)
!491 = distinct !DILexicalBlock(scope: !492, file: !102, line: 651, column: 15)
!492 = distinct !DILexicalBlock(scope: !487, file: !102, line: 650, column: 9)
!493 = !DILocation(line: 651, column: 15, scope: !491)
!494 = !DILocation(line: 651, column: 26, scope: !491)
!495 = !DILocation(line: 651, column: 34, scope: !491)
!496 = !DILocation(line: 651, column: 37, scope: !491)
!497 = !DILocation(line: 651, column: 48, scope: !491)
!498 = !DILocation(line: 651, column: 46, scope: !491)
!499 = !DILocation(line: 652, column: 13, scope: !491)
!500 = !DILocation(line: 655, column: 16, scope: !501)
!501 = distinct !DILexicalBlock(scope: !492, file: !102, line: 655, column: 15)
!502 = !DILocation(line: 655, column: 29, scope: !501)
!503 = !DILocation(line: 655, column: 34, scope: !501)
!504 = !DILocation(line: 655, column: 32, scope: !501)
!505 = !DILocation(line: 655, column: 49, scope: !501)
!506 = !DILocation(line: 656, column: 13, scope: !501)
!507 = !DILocation(line: 657, column: 9, scope: !492)
!508 = !DILocation(line: 659, column: 16, scope: !477)
!509 = distinct !{!509, !467, !510, !448}
!510 = !DILocation(line: 660, column: 5, scope: !105)
!511 = !DILocation(line: 663, column: 11, scope: !105)
!512 = !DILocation(line: 663, column: 22, scope: !105)
!513 = !DILocation(line: 663, column: 35, scope: !105)
!514 = !DILocation(line: 663, column: 33, scope: !105)
!515 = !DILocation(line: 663, column: 43, scope: !105)
!516 = !DILocation(line: 663, column: 3, scope: !105)
!517 = !DILocalVariable(name: "url_program", scope: !105, file: !102, line: 667, type: !108)
!518 = !DILocation(line: 667, column: 15, scope: !105)
!519 = !DILocation(line: 667, column: 38, scope: !105)
!520 = !DILocation(line: 667, column: 31, scope: !105)
!521 = !DILocation(line: 668, column: 38, scope: !105)
!522 = !DILocation(line: 668, column: 31, scope: !105)
!523 = !DILocation(line: 669, column: 38, scope: !105)
!524 = !DILocation(line: 669, column: 31, scope: !105)
!525 = !DILocation(line: 670, column: 38, scope: !105)
!526 = !DILocation(line: 670, column: 31, scope: !105)
!527 = !DILocation(line: 671, column: 38, scope: !105)
!528 = !DILocation(line: 671, column: 31, scope: !105)
!529 = !DILocation(line: 672, column: 38, scope: !105)
!530 = !DILocation(line: 672, column: 31, scope: !105)
!531 = !DILocation(line: 673, column: 38, scope: !105)
!532 = !DILocation(line: 673, column: 31, scope: !105)
!533 = !DILocation(line: 674, column: 38, scope: !105)
!534 = !DILocation(line: 674, column: 31, scope: !105)
!535 = !DILocation(line: 675, column: 38, scope: !105)
!536 = !DILocation(line: 675, column: 31, scope: !105)
!537 = !DILocation(line: 676, column: 38, scope: !105)
!538 = !DILocation(line: 676, column: 31, scope: !105)
!539 = !DILocation(line: 677, column: 31, scope: !105)
!540 = !DILocation(line: 682, column: 18, scope: !541)
!541 = distinct !DILexicalBlock(scope: !105, file: !102, line: 682, column: 7)
!542 = !DILocation(line: 682, column: 7, scope: !541)
!543 = !DILocation(line: 683, column: 7, scope: !541)
!544 = !DILocation(line: 683, column: 21, scope: !541)
!545 = !DILocation(line: 683, column: 10, scope: !541)
!546 = !DILocation(line: 689, column: 15, scope: !547)
!547 = distinct !DILexicalBlock(scope: !541, file: !102, line: 684, column: 5)
!548 = !DILocation(line: 689, column: 28, scope: !547)
!549 = !DILocation(line: 689, column: 47, scope: !547)
!550 = !DILocation(line: 689, column: 41, scope: !547)
!551 = !DILocation(line: 689, column: 59, scope: !547)
!552 = !DILocation(line: 688, column: 7, scope: !547)
!553 = !DILocation(line: 690, column: 5, scope: !547)
!554 = !DILocation(line: 695, column: 48, scope: !555)
!555 = distinct !DILexicalBlock(scope: !541, file: !102, line: 692, column: 5)
!556 = !DILocation(line: 696, column: 21, scope: !555)
!557 = !DILocation(line: 696, column: 15, scope: !555)
!558 = !DILocation(line: 696, column: 33, scope: !555)
!559 = !DILocation(line: 695, column: 7, scope: !555)
!560 = !DILocation(line: 698, column: 20, scope: !105)
!561 = !DILocation(line: 698, column: 3, scope: !105)
!562 = !DILocation(line: 702, column: 21, scope: !105)
!563 = !DILocation(line: 702, column: 3, scope: !105)
!564 = !DILocation(line: 705, column: 11, scope: !105)
!565 = !DILocation(line: 705, column: 26, scope: !105)
!566 = !DILocation(line: 705, column: 38, scope: !105)
!567 = !DILocation(line: 705, column: 36, scope: !105)
!568 = !DILocation(line: 705, column: 50, scope: !105)
!569 = !DILocation(line: 705, column: 3, scope: !105)
!570 = !DILocation(line: 707, column: 21, scope: !105)
!571 = !DILocation(line: 707, column: 3, scope: !105)
!572 = !DILocation(line: 710, column: 28, scope: !105)
!573 = !DILocation(line: 710, column: 3, scope: !105)
!574 = !DILocation(line: 714, column: 10, scope: !105)
!575 = !DILocation(line: 714, column: 21, scope: !105)
!576 = !DILocation(line: 714, column: 3, scope: !105)
!577 = !DILocation(line: 715, column: 1, scope: !105)
!578 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !102, file: !102, line: 855, type: !579, scopeLine: 856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !110, retainedNodes: !320)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !108}
!581 = !DILocalVariable(name: "program", arg: 1, scope: !578, file: !102, line: 855, type: !108)
!582 = !DILocation(line: 855, column: 34, scope: !578)
!583 = !DILocalVariable(name: "infomap", scope: !578, file: !102, line: 857, type: !584)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 896, elements: !215)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !578, file: !102, line: 857, size: 128, elements: !587)
!587 = !{!588, !589}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !586, file: !102, line: 857, baseType: !108, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !586, file: !102, line: 857, baseType: !108, size: 64, offset: 64)
!590 = !DILocation(line: 857, column: 67, scope: !578)
!591 = !DILocalVariable(name: "node", scope: !578, file: !102, line: 867, type: !108)
!592 = !DILocation(line: 867, column: 15, scope: !578)
!593 = !DILocation(line: 867, column: 22, scope: !578)
!594 = !DILocalVariable(name: "map_prog", scope: !578, file: !102, line: 868, type: !595)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!596 = !DILocation(line: 868, column: 25, scope: !578)
!597 = !DILocation(line: 868, column: 36, scope: !578)
!598 = !DILocation(line: 870, column: 3, scope: !578)
!599 = !DILocation(line: 870, column: 10, scope: !578)
!600 = !DILocation(line: 870, column: 20, scope: !578)
!601 = !DILocation(line: 870, column: 28, scope: !578)
!602 = !DILocation(line: 870, column: 40, scope: !578)
!603 = !DILocation(line: 870, column: 49, scope: !578)
!604 = !DILocation(line: 870, column: 59, scope: !578)
!605 = !DILocation(line: 870, column: 33, scope: !578)
!606 = !DILocation(line: 870, column: 31, scope: !578)
!607 = !DILocation(line: 0, scope: !578)
!608 = !DILocation(line: 871, column: 13, scope: !578)
!609 = distinct !{!609, !598, !608, !448}
!610 = !DILocation(line: 873, column: 7, scope: !611)
!611 = distinct !DILexicalBlock(scope: !578, file: !102, line: 873, column: 7)
!612 = !DILocation(line: 873, column: 17, scope: !611)
!613 = !DILocation(line: 874, column: 12, scope: !611)
!614 = !DILocation(line: 874, column: 22, scope: !611)
!615 = !DILocation(line: 874, column: 10, scope: !611)
!616 = !DILocation(line: 874, column: 5, scope: !611)
!617 = !DILocation(line: 876, column: 3, scope: !578)
!618 = !DILocalVariable(name: "url_program", scope: !578, file: !102, line: 881, type: !108)
!619 = !DILocation(line: 881, column: 15, scope: !578)
!620 = !DILocation(line: 881, column: 36, scope: !578)
!621 = !DILocation(line: 881, column: 29, scope: !578)
!622 = !DILocation(line: 881, column: 61, scope: !578)
!623 = !DILocation(line: 882, column: 11, scope: !578)
!624 = !DILocation(line: 883, column: 24, scope: !578)
!625 = !DILocation(line: 882, column: 3, scope: !578)
!626 = !DILocation(line: 884, column: 11, scope: !578)
!627 = !DILocation(line: 885, column: 11, scope: !578)
!628 = !DILocation(line: 885, column: 17, scope: !578)
!629 = !DILocation(line: 885, column: 25, scope: !578)
!630 = !DILocation(line: 885, column: 22, scope: !578)
!631 = !DILocation(line: 884, column: 3, scope: !578)
!632 = !DILocation(line: 886, column: 1, scope: !578)
!633 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 202, type: !634, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !320)
!634 = !DISubroutineType(types: !635)
!635 = !{!113, !113, !636}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!637 = !DILocalVariable(name: "argc", arg: 1, scope: !633, file: !2, line: 202, type: !113)
!638 = !DILocation(line: 202, column: 11, scope: !633)
!639 = !DILocalVariable(name: "argv", arg: 2, scope: !633, file: !2, line: 202, type: !636)
!640 = !DILocation(line: 202, column: 24, scope: !633)
!641 = !DILocalVariable(name: "specified_mode", scope: !633, file: !2, line: 204, type: !108)
!642 = !DILocation(line: 204, column: 15, scope: !633)
!643 = !DILocalVariable(name: "optc", scope: !633, file: !2, line: 205, type: !113)
!644 = !DILocation(line: 205, column: 7, scope: !633)
!645 = !DILocalVariable(name: "scontext", scope: !633, file: !2, line: 206, type: !108)
!646 = !DILocation(line: 206, column: 15, scope: !633)
!647 = !DILocalVariable(name: "options", scope: !633, file: !2, line: 207, type: !648)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mkdir_options", file: !2, line: 95, size: 320, elements: !649)
!649 = !{!650, !654, !657, !658, !659, !660, !664}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "make_ancestor_function", scope: !648, file: !2, line: 99, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!113, !108, !108, !171}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "umask_ancestor", scope: !648, file: !2, line: 102, baseType: !655, size: 32, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !159, line: 69, baseType: !656)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !161, line: 150, baseType: !119)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "umask_self", scope: !648, file: !2, line: 105, baseType: !655, size: 32, offset: 96)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !648, file: !2, line: 108, baseType: !655, size: 32, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "mode_bits", scope: !648, file: !2, line: 111, baseType: !655, size: 32, offset: 160)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "set_security_context", scope: !648, file: !2, line: 114, baseType: !661, size: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DICompositeType(tag: DW_TAG_structure_type, name: "selabel_handle", file: !663, line: 53, flags: DIFlagFwdDecl)
!663 = !DIFile(filename: "./lib/selinux/label.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "a430a70cff1d2c3fd1539e29c9e5e879")
!664 = !DIDerivedType(tag: DW_TAG_member, name: "created_directory_format", scope: !648, file: !2, line: 117, baseType: !108, size: 64, offset: 256)
!665 = !DILocation(line: 207, column: 24, scope: !633)
!666 = !DILocation(line: 209, column: 11, scope: !633)
!667 = !DILocation(line: 209, column: 34, scope: !633)
!668 = !DILocation(line: 210, column: 11, scope: !633)
!669 = !DILocation(line: 210, column: 16, scope: !633)
!670 = !DILocation(line: 211, column: 11, scope: !633)
!671 = !DILocation(line: 211, column: 21, scope: !633)
!672 = !DILocation(line: 212, column: 11, scope: !633)
!673 = !DILocation(line: 212, column: 36, scope: !633)
!674 = !DILocation(line: 213, column: 11, scope: !633)
!675 = !DILocation(line: 213, column: 32, scope: !633)
!676 = !DILocation(line: 216, column: 21, scope: !633)
!677 = !DILocation(line: 216, column: 3, scope: !633)
!678 = !DILocation(line: 217, column: 3, scope: !633)
!679 = !DILocation(line: 218, column: 3, scope: !633)
!680 = !DILocation(line: 219, column: 3, scope: !633)
!681 = !DILocation(line: 221, column: 3, scope: !633)
!682 = !DILocation(line: 223, column: 3, scope: !633)
!683 = !DILocation(line: 223, column: 31, scope: !633)
!684 = !DILocation(line: 223, column: 37, scope: !633)
!685 = !DILocation(line: 223, column: 18, scope: !633)
!686 = !DILocation(line: 223, column: 16, scope: !633)
!687 = !DILocation(line: 223, column: 69, scope: !633)
!688 = !DILocation(line: 225, column: 15, scope: !689)
!689 = distinct !DILexicalBlock(scope: !633, file: !2, line: 224, column: 5)
!690 = !DILocation(line: 225, column: 7, scope: !689)
!691 = !DILocation(line: 228, column: 19, scope: !692)
!692 = distinct !DILexicalBlock(scope: !689, file: !2, line: 226, column: 9)
!693 = !DILocation(line: 228, column: 42, scope: !692)
!694 = !DILocation(line: 229, column: 11, scope: !692)
!695 = !DILocation(line: 231, column: 28, scope: !692)
!696 = !DILocation(line: 231, column: 26, scope: !692)
!697 = !DILocation(line: 232, column: 11, scope: !692)
!698 = !DILocation(line: 234, column: 46, scope: !692)
!699 = !DILocation(line: 234, column: 19, scope: !692)
!700 = !DILocation(line: 234, column: 44, scope: !692)
!701 = !DILocation(line: 235, column: 11, scope: !692)
!702 = !DILocation(line: 237, column: 15, scope: !703)
!703 = distinct !DILexicalBlock(scope: !692, file: !2, line: 237, column: 15)
!704 = !DILocation(line: 240, column: 26, scope: !705)
!705 = distinct !DILexicalBlock(scope: !703, file: !2, line: 238, column: 13)
!706 = !DILocation(line: 240, column: 24, scope: !705)
!707 = !DILocation(line: 241, column: 13, scope: !705)
!708 = !DILocation(line: 254, column: 20, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !2, line: 254, column: 20)
!710 = distinct !DILexicalBlock(scope: !703, file: !2, line: 242, column: 20)
!711 = !DILocation(line: 257, column: 22, scope: !712)
!712 = distinct !DILexicalBlock(scope: !709, file: !2, line: 255, column: 13)
!713 = !DILocation(line: 256, column: 15, scope: !712)
!714 = !DILocation(line: 259, column: 13, scope: !712)
!715 = !DILocation(line: 260, column: 11, scope: !692)
!716 = !DILocation(line: 261, column: 9, scope: !692)
!717 = !DILocation(line: 262, column: 9, scope: !692)
!718 = !DILocation(line: 262, column: 49, scope: !692)
!719 = !DILocation(line: 264, column: 11, scope: !692)
!720 = distinct !{!720, !682, !721, !448}
!721 = !DILocation(line: 266, column: 5, scope: !633)
!722 = !DILocation(line: 268, column: 7, scope: !723)
!723 = distinct !DILexicalBlock(scope: !633, file: !2, line: 268, column: 7)
!724 = !DILocation(line: 268, column: 17, scope: !723)
!725 = !DILocation(line: 268, column: 14, scope: !723)
!726 = !DILocation(line: 270, column: 20, scope: !727)
!727 = distinct !DILexicalBlock(scope: !723, file: !2, line: 269, column: 5)
!728 = !DILocation(line: 270, column: 7, scope: !727)
!729 = !DILocation(line: 271, column: 7, scope: !727)
!730 = !DILocation(line: 277, column: 7, scope: !731)
!731 = distinct !DILexicalBlock(scope: !633, file: !2, line: 277, column: 7)
!732 = !DILocalVariable(name: "ret", scope: !733, file: !2, line: 279, type: !113)
!733 = distinct !DILexicalBlock(scope: !731, file: !2, line: 278, column: 5)
!734 = !DILocation(line: 279, column: 11, scope: !733)
!735 = !DILocation(line: 280, column: 11, scope: !736)
!736 = distinct !DILexicalBlock(scope: !733, file: !2, line: 280, column: 11)
!737 = !DILocation(line: 281, column: 41, scope: !736)
!738 = !DILocation(line: 281, column: 15, scope: !736)
!739 = !DILocation(line: 281, column: 13, scope: !736)
!740 = !DILocation(line: 281, column: 9, scope: !736)
!741 = !DILocation(line: 283, column: 31, scope: !736)
!742 = !DILocation(line: 283, column: 15, scope: !736)
!743 = !DILocation(line: 283, column: 13, scope: !736)
!744 = !DILocation(line: 285, column: 11, scope: !745)
!745 = distinct !DILexicalBlock(scope: !733, file: !2, line: 285, column: 11)
!746 = !DILocation(line: 285, column: 15, scope: !745)
!747 = !DILocation(line: 286, column: 30, scope: !745)
!748 = !DILocation(line: 287, column: 16, scope: !745)
!749 = !DILocation(line: 288, column: 23, scope: !745)
!750 = !DILocation(line: 288, column: 16, scope: !745)
!751 = !DILocation(line: 286, column: 9, scope: !745)
!752 = !DILocation(line: 289, column: 5, scope: !733)
!753 = !DILocation(line: 292, column: 15, scope: !754)
!754 = distinct !DILexicalBlock(scope: !633, file: !2, line: 292, column: 7)
!755 = !DILocation(line: 292, column: 7, scope: !754)
!756 = !DILocation(line: 292, column: 38, scope: !754)
!757 = !DILocation(line: 292, column: 41, scope: !754)
!758 = !DILocalVariable(name: "umask_value", scope: !759, file: !2, line: 294, type: !655)
!759 = distinct !DILexicalBlock(scope: !754, file: !2, line: 293, column: 5)
!760 = !DILocation(line: 294, column: 14, scope: !759)
!761 = !DILocation(line: 294, column: 28, scope: !759)
!762 = !DILocation(line: 295, column: 32, scope: !759)
!763 = !DILocation(line: 295, column: 44, scope: !759)
!764 = !DILocation(line: 295, column: 15, scope: !759)
!765 = !DILocation(line: 295, column: 30, scope: !759)
!766 = !DILocation(line: 297, column: 11, scope: !767)
!767 = distinct !DILexicalBlock(scope: !759, file: !2, line: 297, column: 11)
!768 = !DILocalVariable(name: "change", scope: !769, file: !2, line: 299, type: !770)
!769 = distinct !DILexicalBlock(scope: !767, file: !2, line: 298, column: 9)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !772, line: 35, flags: DIFlagFwdDecl)
!772 = !DIFile(filename: "./lib/modechange.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "9eab5b9bb2ae0bc3e8fcf755a7ffd94e")
!773 = !DILocation(line: 299, column: 31, scope: !769)
!774 = !DILocation(line: 299, column: 54, scope: !769)
!775 = !DILocation(line: 299, column: 40, scope: !769)
!776 = !DILocation(line: 300, column: 16, scope: !777)
!777 = distinct !DILexicalBlock(scope: !769, file: !2, line: 300, column: 15)
!778 = !DILocation(line: 300, column: 15, scope: !777)
!779 = !DILocation(line: 301, column: 37, scope: !777)
!780 = !DILocation(line: 302, column: 27, scope: !777)
!781 = !DILocation(line: 302, column: 20, scope: !777)
!782 = !DILocation(line: 301, column: 13, scope: !777)
!783 = !DILocation(line: 303, column: 56, scope: !769)
!784 = !DILocation(line: 303, column: 69, scope: !769)
!785 = !DILocation(line: 304, column: 48, scope: !769)
!786 = !DILocation(line: 303, column: 26, scope: !769)
!787 = !DILocation(line: 303, column: 19, scope: !769)
!788 = !DILocation(line: 303, column: 24, scope: !769)
!789 = !DILocation(line: 305, column: 32, scope: !769)
!790 = !DILocation(line: 305, column: 55, scope: !769)
!791 = !DILocation(line: 305, column: 46, scope: !769)
!792 = !DILocation(line: 305, column: 44, scope: !769)
!793 = !DILocation(line: 305, column: 19, scope: !769)
!794 = !DILocation(line: 305, column: 30, scope: !769)
!795 = !DILocation(line: 306, column: 17, scope: !769)
!796 = !DILocation(line: 306, column: 11, scope: !769)
!797 = !DILocation(line: 307, column: 9, scope: !769)
!798 = !DILocation(line: 310, column: 19, scope: !799)
!799 = distinct !DILexicalBlock(scope: !767, file: !2, line: 309, column: 9)
!800 = !DILocation(line: 310, column: 24, scope: !799)
!801 = !DILocation(line: 311, column: 32, scope: !799)
!802 = !DILocation(line: 311, column: 19, scope: !799)
!803 = !DILocation(line: 311, column: 30, scope: !799)
!804 = !DILocation(line: 314, column: 22, scope: !759)
!805 = !DILocation(line: 314, column: 7, scope: !759)
!806 = !DILocation(line: 315, column: 5, scope: !759)
!807 = !DILocation(line: 317, column: 32, scope: !633)
!808 = !DILocation(line: 317, column: 39, scope: !633)
!809 = !DILocation(line: 317, column: 37, scope: !633)
!810 = !DILocation(line: 317, column: 47, scope: !633)
!811 = !DILocation(line: 317, column: 54, scope: !633)
!812 = !DILocation(line: 317, column: 52, scope: !633)
!813 = !DILocation(line: 317, column: 10, scope: !633)
!814 = !DILocation(line: 317, column: 3, scope: !633)
!815 = distinct !DISubprogram(name: "make_ancestor", scope: !2, file: !2, line: 135, type: !652, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !110, retainedNodes: !320)
!816 = !DILocalVariable(name: "dir", arg: 1, scope: !815, file: !2, line: 135, type: !108)
!817 = !DILocation(line: 135, column: 28, scope: !815)
!818 = !DILocalVariable(name: "component", arg: 2, scope: !815, file: !2, line: 135, type: !108)
!819 = !DILocation(line: 135, column: 45, scope: !815)
!820 = !DILocalVariable(name: "options", arg: 3, scope: !815, file: !2, line: 135, type: !171)
!821 = !DILocation(line: 135, column: 62, scope: !815)
!822 = !DILocalVariable(name: "o", scope: !815, file: !2, line: 137, type: !823)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !648)
!825 = !DILocation(line: 137, column: 31, scope: !815)
!826 = !DILocation(line: 137, column: 35, scope: !815)
!827 = !DILocation(line: 139, column: 7, scope: !828)
!828 = distinct !DILexicalBlock(scope: !815, file: !2, line: 139, column: 7)
!829 = !DILocation(line: 139, column: 10, scope: !828)
!830 = !DILocation(line: 140, column: 7, scope: !828)
!831 = !DILocation(line: 140, column: 22, scope: !828)
!832 = !DILocation(line: 140, column: 25, scope: !828)
!833 = !DILocation(line: 140, column: 47, scope: !828)
!834 = !DILocation(line: 140, column: 10, scope: !828)
!835 = !DILocation(line: 140, column: 67, scope: !828)
!836 = !DILocation(line: 141, column: 7, scope: !828)
!837 = !DILocation(line: 141, column: 31, scope: !828)
!838 = !DILocation(line: 141, column: 12, scope: !828)
!839 = !DILocation(line: 142, column: 15, scope: !828)
!840 = !DILocation(line: 142, column: 22, scope: !828)
!841 = !DILocation(line: 143, column: 21, scope: !828)
!842 = !DILocation(line: 143, column: 12, scope: !828)
!843 = !DILocation(line: 142, column: 5, scope: !828)
!844 = !DILocation(line: 145, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !815, file: !2, line: 145, column: 7)
!846 = !DILocation(line: 145, column: 10, scope: !845)
!847 = !DILocation(line: 145, column: 28, scope: !845)
!848 = !DILocation(line: 145, column: 31, scope: !845)
!849 = !DILocation(line: 145, column: 25, scope: !845)
!850 = !DILocation(line: 146, column: 12, scope: !845)
!851 = !DILocation(line: 146, column: 15, scope: !845)
!852 = !DILocation(line: 146, column: 5, scope: !845)
!853 = !DILocalVariable(name: "r", scope: !815, file: !2, line: 147, type: !113)
!854 = !DILocation(line: 147, column: 7, scope: !815)
!855 = !DILocation(line: 147, column: 18, scope: !815)
!856 = !DILocation(line: 147, column: 11, scope: !815)
!857 = !DILocation(line: 148, column: 7, scope: !858)
!858 = distinct !DILexicalBlock(scope: !815, file: !2, line: 148, column: 7)
!859 = !DILocation(line: 148, column: 10, scope: !858)
!860 = !DILocation(line: 148, column: 28, scope: !858)
!861 = !DILocation(line: 148, column: 31, scope: !858)
!862 = !DILocation(line: 148, column: 25, scope: !858)
!863 = !DILocalVariable(name: "mkdir_errno", scope: !864, file: !2, line: 150, type: !113)
!864 = distinct !DILexicalBlock(scope: !858, file: !2, line: 149, column: 5)
!865 = !DILocation(line: 150, column: 11, scope: !864)
!866 = !DILocation(line: 150, column: 25, scope: !864)
!867 = !DILocation(line: 151, column: 14, scope: !864)
!868 = !DILocation(line: 151, column: 17, scope: !864)
!869 = !DILocation(line: 151, column: 7, scope: !864)
!870 = !DILocation(line: 152, column: 15, scope: !864)
!871 = !DILocation(line: 152, column: 7, scope: !864)
!872 = !DILocation(line: 152, column: 13, scope: !864)
!873 = !DILocation(line: 153, column: 5, scope: !864)
!874 = !DILocation(line: 154, column: 7, scope: !875)
!875 = distinct !DILexicalBlock(scope: !815, file: !2, line: 154, column: 7)
!876 = !DILocation(line: 154, column: 9, scope: !875)
!877 = !DILocation(line: 156, column: 12, scope: !878)
!878 = distinct !DILexicalBlock(scope: !875, file: !2, line: 155, column: 5)
!879 = !DILocation(line: 156, column: 15, scope: !878)
!880 = !DILocation(line: 156, column: 30, scope: !878)
!881 = !DILocation(line: 156, column: 41, scope: !878)
!882 = !DILocation(line: 156, column: 9, scope: !878)
!883 = !DILocation(line: 157, column: 23, scope: !878)
!884 = !DILocation(line: 157, column: 28, scope: !878)
!885 = !DILocation(line: 157, column: 7, scope: !878)
!886 = !DILocation(line: 158, column: 5, scope: !878)
!887 = !DILocation(line: 159, column: 10, scope: !815)
!888 = !DILocation(line: 159, column: 3, scope: !815)
!889 = distinct !DISubprogram(name: "is_smack_enabled", scope: !890, file: !890, line: 37, type: !891, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !110)
!890 = !DIFile(filename: "./lib/smack.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "f8a0c9df6e268b12bd40a2b1000b787d")
!891 = !DISubroutineType(types: !892)
!892 = !{!400}
!893 = !DILocation(line: 42, column: 3, scope: !889)
!894 = distinct !DISubprogram(name: "smack_set_label_for_self", scope: !890, file: !890, line: 30, type: !895, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !110, retainedNodes: !320)
!895 = !DISubroutineType(types: !896)
!896 = !{!113, !108}
!897 = !DILocalVariable(name: "label", arg: 1, scope: !894, file: !890, line: 30, type: !108)
!898 = !DILocation(line: 30, column: 52, scope: !894)
!899 = !DILocation(line: 32, column: 3, scope: !894)
!900 = distinct !DISubprogram(name: "process_dir", scope: !2, file: !2, line: 164, type: !901, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !110, retainedNodes: !320)
!901 = !DISubroutineType(types: !902)
!902 = !{!113, !170, !903, !171}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!904 = !DILocalVariable(name: "dir", arg: 1, scope: !900, file: !2, line: 164, type: !170)
!905 = !DILocation(line: 164, column: 20, scope: !900)
!906 = !DILocalVariable(name: "wd", arg: 2, scope: !900, file: !2, line: 164, type: !903)
!907 = !DILocation(line: 164, column: 40, scope: !900)
!908 = !DILocalVariable(name: "options", arg: 3, scope: !900, file: !2, line: 164, type: !171)
!909 = !DILocation(line: 164, column: 50, scope: !900)
!910 = !DILocalVariable(name: "o", scope: !900, file: !2, line: 166, type: !823)
!911 = !DILocation(line: 166, column: 31, scope: !900)
!912 = !DILocation(line: 166, column: 35, scope: !900)
!913 = !DILocation(line: 169, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !900, file: !2, line: 169, column: 7)
!915 = !DILocation(line: 169, column: 10, scope: !914)
!916 = !DILocation(line: 171, column: 13, scope: !917)
!917 = distinct !DILexicalBlock(scope: !918, file: !2, line: 171, column: 11)
!918 = distinct !DILexicalBlock(scope: !914, file: !2, line: 170, column: 5)
!919 = !DILocation(line: 171, column: 16, scope: !917)
!920 = !DILocation(line: 172, column: 11, scope: !917)
!921 = !DILocation(line: 172, column: 26, scope: !917)
!922 = !DILocation(line: 172, column: 29, scope: !917)
!923 = !DILocation(line: 172, column: 51, scope: !917)
!924 = !DILocation(line: 172, column: 14, scope: !917)
!925 = !DILocation(line: 172, column: 65, scope: !917)
!926 = !DILocation(line: 173, column: 11, scope: !917)
!927 = !DILocation(line: 173, column: 35, scope: !917)
!928 = !DILocation(line: 173, column: 16, scope: !917)
!929 = !DILocation(line: 174, column: 19, scope: !917)
!930 = !DILocation(line: 174, column: 26, scope: !917)
!931 = !DILocation(line: 175, column: 25, scope: !917)
!932 = !DILocation(line: 175, column: 16, scope: !917)
!933 = !DILocation(line: 174, column: 9, scope: !917)
!934 = !DILocation(line: 176, column: 5, scope: !918)
!935 = !DILocalVariable(name: "ret", scope: !900, file: !2, line: 178, type: !113)
!936 = !DILocation(line: 178, column: 7, scope: !900)
!937 = !DILocation(line: 178, column: 32, scope: !900)
!938 = !DILocation(line: 178, column: 37, scope: !900)
!939 = !DILocation(line: 178, column: 41, scope: !900)
!940 = !DILocation(line: 178, column: 44, scope: !900)
!941 = !DILocation(line: 178, column: 68, scope: !900)
!942 = !DILocation(line: 179, column: 32, scope: !900)
!943 = !DILocation(line: 179, column: 35, scope: !900)
!944 = !DILocation(line: 180, column: 32, scope: !900)
!945 = !DILocation(line: 180, column: 35, scope: !900)
!946 = !DILocation(line: 178, column: 14, scope: !900)
!947 = !DILocation(line: 189, column: 7, scope: !948)
!948 = distinct !DILexicalBlock(scope: !900, file: !2, line: 189, column: 7)
!949 = !DILocation(line: 189, column: 11, scope: !948)
!950 = !DILocation(line: 189, column: 27, scope: !948)
!951 = !DILocation(line: 189, column: 30, scope: !948)
!952 = !DILocation(line: 189, column: 33, scope: !948)
!953 = !DILocation(line: 190, column: 7, scope: !948)
!954 = !DILocation(line: 190, column: 10, scope: !948)
!955 = !DILocation(line: 190, column: 13, scope: !948)
!956 = !DILocation(line: 192, column: 25, scope: !957)
!957 = distinct !DILexicalBlock(scope: !958, file: !2, line: 192, column: 11)
!958 = distinct !DILexicalBlock(scope: !948, file: !2, line: 191, column: 5)
!959 = !DILocation(line: 192, column: 28, scope: !957)
!960 = !DILocation(line: 192, column: 66, scope: !957)
!961 = !DILocation(line: 192, column: 50, scope: !957)
!962 = !DILocation(line: 192, column: 13, scope: !957)
!963 = !DILocation(line: 193, column: 11, scope: !957)
!964 = !DILocation(line: 193, column: 35, scope: !957)
!965 = !DILocation(line: 193, column: 16, scope: !957)
!966 = !DILocation(line: 194, column: 19, scope: !957)
!967 = !DILocation(line: 194, column: 26, scope: !957)
!968 = !DILocation(line: 195, column: 25, scope: !957)
!969 = !DILocation(line: 195, column: 16, scope: !957)
!970 = !DILocation(line: 194, column: 9, scope: !957)
!971 = !DILocation(line: 196, column: 5, scope: !958)
!972 = !DILocation(line: 198, column: 10, scope: !900)
!973 = !DILocation(line: 198, column: 3, scope: !900)
!974 = distinct !DISubprogram(name: "defaultcon", scope: !975, file: !975, line: 49, type: !976, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !110, retainedNodes: !320)
!975 = !DIFile(filename: "src/selinux.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "13efa93c67c6cc8e1be8195655a2b752")
!976 = !DISubroutineType(types: !977)
!977 = !{!113, !661, !108, !655}
!978 = !DILocalVariable(name: "selabel_handle", arg: 1, scope: !974, file: !975, line: 49, type: !661)
!979 = !DILocation(line: 49, column: 49, scope: !974)
!980 = !DILocalVariable(name: "path", arg: 2, scope: !974, file: !975, line: 50, type: !108)
!981 = !DILocation(line: 50, column: 38, scope: !974)
!982 = !DILocalVariable(name: "mode", arg: 3, scope: !974, file: !975, line: 50, type: !655)
!983 = !DILocation(line: 50, column: 64, scope: !974)
!984 = !DILocation(line: 51, column: 3, scope: !974)
!985 = !DILocation(line: 51, column: 9, scope: !974)
!986 = !DILocation(line: 51, column: 20, scope: !974)
!987 = distinct !DISubprogram(name: "ignorable_ctx_err", scope: !975, file: !975, line: 27, type: !988, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !110, retainedNodes: !320)
!988 = !DISubroutineType(types: !989)
!989 = !{!400, !113}
!990 = !DILocalVariable(name: "err", arg: 1, scope: !987, file: !975, line: 27, type: !113)
!991 = !DILocation(line: 27, column: 24, scope: !987)
!992 = !DILocation(line: 29, column: 10, scope: !987)
!993 = !DILocation(line: 29, column: 14, scope: !987)
!994 = !DILocation(line: 29, column: 25, scope: !987)
!995 = !DILocation(line: 29, column: 28, scope: !987)
!996 = !DILocation(line: 29, column: 32, scope: !987)
!997 = !DILocation(line: 29, column: 3, scope: !987)
!998 = distinct !DISubprogram(name: "announce_mkdir", scope: !2, file: !2, line: 122, type: !999, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !110, retainedNodes: !320)
!999 = !DISubroutineType(types: !1000)
!1000 = !{null, !108, !171}
!1001 = !DILocalVariable(name: "dir", arg: 1, scope: !998, file: !2, line: 122, type: !108)
!1002 = !DILocation(line: 122, column: 29, scope: !998)
!1003 = !DILocalVariable(name: "options", arg: 2, scope: !998, file: !2, line: 122, type: !171)
!1004 = !DILocation(line: 122, column: 40, scope: !998)
!1005 = !DILocalVariable(name: "o", scope: !998, file: !2, line: 124, type: !823)
!1006 = !DILocation(line: 124, column: 31, scope: !998)
!1007 = !DILocation(line: 124, column: 35, scope: !998)
!1008 = !DILocation(line: 125, column: 7, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !998, file: !2, line: 125, column: 7)
!1010 = !DILocation(line: 125, column: 10, scope: !1009)
!1011 = !DILocation(line: 126, column: 19, scope: !1009)
!1012 = !DILocation(line: 126, column: 27, scope: !1009)
!1013 = !DILocation(line: 126, column: 30, scope: !1009)
!1014 = !DILocation(line: 126, column: 65, scope: !1009)
!1015 = !DILocation(line: 126, column: 56, scope: !1009)
!1016 = !DILocation(line: 126, column: 5, scope: !1009)
!1017 = !DILocation(line: 127, column: 1, scope: !998)
!1018 = distinct !DISubprogram(name: "restorecon", scope: !975, file: !975, line: 44, type: !1019, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !110, retainedNodes: !320)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!400, !661, !108, !400}
!1021 = !DILocalVariable(name: "selabel_handle", arg: 1, scope: !1018, file: !975, line: 44, type: !661)
!1022 = !DILocation(line: 44, column: 49, scope: !1018)
!1023 = !DILocalVariable(name: "path", arg: 2, scope: !1018, file: !975, line: 45, type: !108)
!1024 = !DILocation(line: 45, column: 38, scope: !1018)
!1025 = !DILocalVariable(name: "recurse", arg: 3, scope: !1018, file: !975, line: 45, type: !400)
!1026 = !DILocation(line: 45, column: 62, scope: !1018)
!1027 = !DILocation(line: 46, column: 3, scope: !1018)
!1028 = !DILocation(line: 46, column: 9, scope: !1018)
!1029 = !DILocation(line: 46, column: 20, scope: !1018)
