; ModuleID = 'src/nl.c'
source_filename = "src/nl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.re_pattern_buffer = type { ptr, i64, i64, i64, ptr, ptr, i64, i8 }
%struct.linebuffer = type { i64, i64, ptr }
%struct.infomap = type { ptr, ptr }
%struct.mcel_t = type { i32, i8, i8 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [62 x i8] c"Write each FILE to standard output, with line numbers added.\0A\00", align 1, !dbg !12
@stdout = external global ptr, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"nl\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [70 x i8] c"  -b, --body-numbering=STYLE      use STYLE for numbering body lines\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [70 x i8] c"  -d, --section-delimiter=CC      use CC for logical page delimiters\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [72 x i8] c"  -f, --footer-numbering=STYLE    use STYLE for numbering footer lines\0A\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [72 x i8] c"  -h, --header-numbering=STYLE    use STYLE for numbering header lines\0A\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [70 x i8] c"  -i, --line-increment=NUMBER     line number increment at each line\0A\00", align 1, !dbg !36
@.str.9 = private unnamed_addr constant [78 x i8] c"  -l, --join-blank-lines=NUMBER   group of NUMBER empty lines counted as one\0A\00", align 1, !dbg !38
@.str.10 = private unnamed_addr constant [75 x i8] c"  -n, --number-format=FORMAT      insert line numbers according to FORMAT\0A\00", align 1, !dbg !43
@.str.11 = private unnamed_addr constant [78 x i8] c"  -p, --no-renumber               do not reset line numbers for each section\0A\00", align 1, !dbg !48
@.str.12 = private unnamed_addr constant [75 x i8] c"  -s, --number-separator=STRING   add STRING after (possible) line number\0A\00", align 1, !dbg !50
@.str.13 = private unnamed_addr constant [73 x i8] c"  -v, --starting-line-number=NUMBER  first line number for each section\0A\00", align 1, !dbg !52
@.str.14 = private unnamed_addr constant [71 x i8] c"  -w, --number-width=NUMBER       use NUMBER columns for line numbers\0A\00", align 1, !dbg !57
@.str.15 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !62
@.str.16 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !67
@.str.17 = private unnamed_addr constant [323 x i8] c"\0ADefault options are: -bt -d'\\:' -fn -hn -i1 -l1 -n'rn' -s<TAB> -v1 -w6\0A\0ACC are two delimiter characters used to construct logical page delimiters;\0Aa missing second character implies ':'.  As a GNU extension one can specify\0Amore than two characters, and also specifying the empty string (-d '')\0Adisables section matching.\0A\00", align 1, !dbg !69
@.str.18 = private unnamed_addr constant [202 x i8] c"\0ASTYLE is one of:\0A\0A  a      number all lines\0A  t      number only nonempty lines\0A  n      number no lines\0A  pBRE   number only lines that contain a match for the basic regular\0A         expression, BRE\0A\00", align 1, !dbg !74
@.str.19 = private unnamed_addr constant [147 x i8] c"\0AFORMAT is one of:\0A\0A  ln     left justified, no leading zeros\0A  rn     right justified, no leading zeros\0A  rz     right justified, leading zeros\0A\0A\00", align 1, !dbg !79
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !84
@.str.21 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !89
@.str.22 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !94
@.str.23 = private unnamed_addr constant [22 x i8] c"h:b:f:v:i:pl:s:w:n:d:\00", align 1, !dbg !99
@header_type = internal global ptr @.str.90, align 8, !dbg !104
@header_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !260
@header_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !269
@.str.24 = private unnamed_addr constant [35 x i8] c"invalid header numbering style: %s\00", align 1, !dbg !172
@optarg = external global ptr, align 8
@body_type = internal global ptr @.str.91, align 8, !dbg !468
@body_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !232
@body_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !264
@.str.25 = private unnamed_addr constant [33 x i8] c"invalid body numbering style: %s\00", align 1, !dbg !177
@footer_type = internal global ptr @.str.90, align 8, !dbg !470
@footer_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !262
@footer_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !271
@.str.26 = private unnamed_addr constant [35 x i8] c"invalid footer numbering style: %s\00", align 1, !dbg !179
@.str.27 = private unnamed_addr constant [29 x i8] c"invalid starting line number\00", align 1, !dbg !181
@starting_line_number = internal global i64 1, align 8, !dbg !472
@.str.28 = private unnamed_addr constant [30 x i8] c"invalid line number increment\00", align 1, !dbg !186
@page_incr = internal global i64 1, align 8, !dbg !474
@reset_numbers = internal global i8 1, align 1, !dbg !476
@.str.29 = private unnamed_addr constant [35 x i8] c"invalid line number of blank lines\00", align 1, !dbg !191
@blank_join = internal global i64 1, align 8, !dbg !478
@separator_str = internal global ptr @.str.92, align 8, !dbg !482
@.str.30 = private unnamed_addr constant [32 x i8] c"invalid line number field width\00", align 1, !dbg !193
@lineno_width = internal global i32 6, align 4, !dbg !484
@.str.31 = private unnamed_addr constant [3 x i8] c"ln\00", align 1, !dbg !198
@FORMAT_LEFT = internal constant [8 x i8] c"%-*jd%s\00", align 1, !dbg !486
@lineno_format = internal global ptr @FORMAT_RIGHT_NOLZ, align 8, !dbg !489
@.str.32 = private unnamed_addr constant [3 x i8] c"rn\00", align 1, !dbg !200
@FORMAT_RIGHT_NOLZ = internal constant [7 x i8] c"%*jd%s\00", align 1, !dbg !491
@.str.33 = private unnamed_addr constant [3 x i8] c"rz\00", align 1, !dbg !202
@FORMAT_RIGHT_LZ = internal constant [8 x i8] c"%0*jd%s\00", align 1, !dbg !494
@.str.34 = private unnamed_addr constant [34 x i8] c"invalid line numbering format: %s\00", align 1, !dbg !204
@section_del = internal global ptr @DEFAULT_SECTION_DELIMITERS, align 8, !dbg !496
@.str.35 = private unnamed_addr constant [2 x i8] c":\00", align 1, !dbg !209
@.str.36 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !214
@Version = external global ptr, align 8
@.str.37 = private unnamed_addr constant [14 x i8] c"Scott Bartram\00", align 1, !dbg !219
@.str.38 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !221
@section_del_len = internal global i64 0, align 8, !dbg !273
@header_del_len = internal global i64 0, align 8, !dbg !275
@header_del = internal global ptr null, align 8, !dbg !503
@body_del_len = internal global i64 0, align 8, !dbg !277
@body_del = internal global ptr null, align 8, !dbg !505
@footer_del_len = internal global i64 0, align 8, !dbg !279
@footer_del = internal global ptr null, align 8, !dbg !507
@line_buf = internal global %struct.linebuffer zeroinitializer, align 8, !dbg !281
@print_no_line_fmt = internal global ptr null, align 8, !dbg !509
@line_no = internal global i64 0, align 8, !dbg !292
@current_type = internal global ptr null, align 8, !dbg !228
@current_regex = internal global ptr null, align 8, !dbg !511
@optind = external global i32, align 4
@.str.39 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !226
@have_read_stdin = internal global i8 0, align 1, !dbg !298
@stdin = external global ptr, align 8
@.str.40 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !300
@.str.41 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !305
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !307
@.str.42 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !313
@.str.43 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !318
@.str.44 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !320
@.str.45 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !325
@.str.46 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !330
@.str.47 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !332
@.str.48 = private unnamed_addr constant [4 x i8] c"dir\00", align 1, !dbg !334
@.str.49 = private unnamed_addr constant [3 x i8] c"ls\00", align 1, !dbg !336
@.str.50 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1, !dbg !338
@.str.51 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1, !dbg !340
@.str.52 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1, !dbg !342
@.str.53 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1, !dbg !344
@.str.54 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1, !dbg !349
@.str.55 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !354
@.str.56 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !356
@.str.57 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !358
@.str.58 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !360
@.str.59 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !362
@.str.60 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !364
@.str.61 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !366
@.str.62 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !371
@.str.63 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !376
@.str.64 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !381
@.str.65 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !386
@.str.66 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !388
@.str.67 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !390
@.str.68 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !392
@.str.69 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !394
@.str.70 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !396
@.str.71 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !398
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.46, ptr @.str.69 }, %struct.infomap { ptr @.str.21, ptr @.str.70 }, %struct.infomap { ptr @.str.55, ptr @.str.71 }, %struct.infomap { ptr @.str.56, ptr @.str.71 }, %struct.infomap { ptr @.str.57, ptr @.str.71 }, %struct.infomap { ptr @.str.58, ptr @.str.71 }, %struct.infomap zeroinitializer], align 16
@.str.72 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !400
@.str.73 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !405
@.str.74 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !410
@.str.75 = private unnamed_addr constant [17 x i8] c"header-numbering\00", align 1, !dbg !415
@.str.76 = private unnamed_addr constant [15 x i8] c"body-numbering\00", align 1, !dbg !417
@.str.77 = private unnamed_addr constant [17 x i8] c"footer-numbering\00", align 1, !dbg !419
@.str.78 = private unnamed_addr constant [21 x i8] c"starting-line-number\00", align 1, !dbg !421
@.str.79 = private unnamed_addr constant [15 x i8] c"line-increment\00", align 1, !dbg !426
@.str.80 = private unnamed_addr constant [12 x i8] c"no-renumber\00", align 1, !dbg !428
@.str.81 = private unnamed_addr constant [17 x i8] c"join-blank-lines\00", align 1, !dbg !430
@.str.82 = private unnamed_addr constant [17 x i8] c"number-separator\00", align 1, !dbg !432
@.str.83 = private unnamed_addr constant [13 x i8] c"number-width\00", align 1, !dbg !434
@.str.84 = private unnamed_addr constant [14 x i8] c"number-format\00", align 1, !dbg !439
@.str.85 = private unnamed_addr constant [18 x i8] c"section-delimiter\00", align 1, !dbg !441
@.str.86 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !446
@.str.87 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !448
@longopts = internal constant [14 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.75, i32 1, [4 x i8] zeroinitializer, ptr null, i32 104, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.76, i32 1, [4 x i8] zeroinitializer, ptr null, i32 98, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.77, i32 1, [4 x i8] zeroinitializer, ptr null, i32 102, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.78, i32 1, [4 x i8] zeroinitializer, ptr null, i32 118, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.79, i32 1, [4 x i8] zeroinitializer, ptr null, i32 105, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.80, i32 0, [4 x i8] zeroinitializer, ptr null, i32 112, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.81, i32 1, [4 x i8] zeroinitializer, ptr null, i32 108, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.82, i32 1, [4 x i8] zeroinitializer, ptr null, i32 115, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.83, i32 1, [4 x i8] zeroinitializer, ptr null, i32 119, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.84, i32 1, [4 x i8] zeroinitializer, ptr null, i32 110, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.85, i32 1, [4 x i8] zeroinitializer, ptr null, i32 100, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.86, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -130, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.87, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -131, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16, !dbg !450
@rpl_re_syntax_options = external global i64, align 8
@.str.89 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !462
@.str.90 = private unnamed_addr constant [2 x i8] c"n\00", align 1, !dbg !464
@.str.91 = private unnamed_addr constant [2 x i8] c"t\00", align 1, !dbg !466
@.str.92 = private unnamed_addr constant [2 x i8] c"\09\00", align 1, !dbg !480
@DEFAULT_SECTION_DELIMITERS = internal global [9 x i8] c"\\:\00\00\00\00\00\00\00", align 1, !dbg !498
@.str.93 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !514
@line_no_overflow = internal global i8 0, align 1, !dbg !516
@proc_text.blank_lines = internal global i64 0, align 8, !dbg !518
@.str.94 = private unnamed_addr constant [35 x i8] c"error in regular expression search\00", align 1, !dbg !523
@.str.95 = private unnamed_addr constant [21 x i8] c"line number overflow\00", align 1, !dbg !525
@.str.96 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !527

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !537 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !540, !DIExpression(), !541)
  %3 = load i32, ptr %2, align 4, !dbg !542
  %4 = icmp ne i32 %3, 0, !dbg !544
  br i1 %4, label %5, label %12, !dbg !544

5:                                                ; preds = %1
  br label %6, !dbg !545

6:                                                ; preds = %5
  %7 = load ptr, ptr @stderr, align 8, !dbg !546
  %8 = call ptr @gettext(ptr noundef @.str) #11, !dbg !546
  %9 = load ptr, ptr @program_name, align 8, !dbg !546
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef %8, ptr noundef %9) #11, !dbg !546
  br label %11, !dbg !546

11:                                               ; preds = %6
  br label %41, !dbg !546

12:                                               ; preds = %1
  %13 = call ptr @gettext(ptr noundef @.str.1) #11, !dbg !548
  %14 = load ptr, ptr @program_name, align 8, !dbg !550
  %15 = call i32 (ptr, ...) @rpl_printf(ptr noundef %13, ptr noundef %14), !dbg !551
  %16 = call ptr @gettext(ptr noundef @.str.2) #11, !dbg !552
  %17 = load ptr, ptr @stdout, align 8, !dbg !553
  %18 = call i32 @fputs_unlocked(ptr noundef %16, ptr noundef %17), !dbg !554
  call void @emit_stdin_note(), !dbg !555
  call void @emit_mandatory_arg_note(), !dbg !556
  %19 = call ptr @gettext(ptr noundef @.str.4) #11, !dbg !557
  call void @oputs_(ptr noundef @.str.3, ptr noundef %19), !dbg !558
  %20 = call ptr @gettext(ptr noundef @.str.5) #11, !dbg !559
  call void @oputs_(ptr noundef @.str.3, ptr noundef %20), !dbg !560
  %21 = call ptr @gettext(ptr noundef @.str.6) #11, !dbg !561
  call void @oputs_(ptr noundef @.str.3, ptr noundef %21), !dbg !562
  %22 = call ptr @gettext(ptr noundef @.str.7) #11, !dbg !563
  call void @oputs_(ptr noundef @.str.3, ptr noundef %22), !dbg !564
  %23 = call ptr @gettext(ptr noundef @.str.8) #11, !dbg !565
  call void @oputs_(ptr noundef @.str.3, ptr noundef %23), !dbg !566
  %24 = call ptr @gettext(ptr noundef @.str.9) #11, !dbg !567
  call void @oputs_(ptr noundef @.str.3, ptr noundef %24), !dbg !568
  %25 = call ptr @gettext(ptr noundef @.str.10) #11, !dbg !569
  call void @oputs_(ptr noundef @.str.3, ptr noundef %25), !dbg !570
  %26 = call ptr @gettext(ptr noundef @.str.11) #11, !dbg !571
  call void @oputs_(ptr noundef @.str.3, ptr noundef %26), !dbg !572
  %27 = call ptr @gettext(ptr noundef @.str.12) #11, !dbg !573
  call void @oputs_(ptr noundef @.str.3, ptr noundef %27), !dbg !574
  %28 = call ptr @gettext(ptr noundef @.str.13) #11, !dbg !575
  call void @oputs_(ptr noundef @.str.3, ptr noundef %28), !dbg !576
  %29 = call ptr @gettext(ptr noundef @.str.14) #11, !dbg !577
  call void @oputs_(ptr noundef @.str.3, ptr noundef %29), !dbg !578
  %30 = call ptr @gettext(ptr noundef @.str.15) #11, !dbg !579
  call void @oputs_(ptr noundef @.str.3, ptr noundef %30), !dbg !580
  %31 = call ptr @gettext(ptr noundef @.str.16) #11, !dbg !581
  call void @oputs_(ptr noundef @.str.3, ptr noundef %31), !dbg !582
  %32 = call ptr @gettext(ptr noundef @.str.17) #11, !dbg !583
  %33 = load ptr, ptr @stdout, align 8, !dbg !584
  %34 = call i32 @fputs_unlocked(ptr noundef %32, ptr noundef %33), !dbg !585
  %35 = call ptr @gettext(ptr noundef @.str.18) #11, !dbg !586
  %36 = load ptr, ptr @stdout, align 8, !dbg !587
  %37 = call i32 @fputs_unlocked(ptr noundef %35, ptr noundef %36), !dbg !588
  %38 = call ptr @gettext(ptr noundef @.str.19) #11, !dbg !589
  %39 = load ptr, ptr @stdout, align 8, !dbg !590
  %40 = call i32 @fputs_unlocked(ptr noundef %38, ptr noundef %39), !dbg !591
  call void @emit_ancillary_info(ptr noundef @.str.3), !dbg !592
  br label %41

41:                                               ; preds = %12, %11
  %42 = load i32, ptr %2, align 4, !dbg !593
  call void @exit(i32 noundef %42) #12, !dbg !594
  unreachable, !dbg !594
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #1

declare i32 @rpl_printf(ptr noundef, ...) #2

declare i32 @fputs_unlocked(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_stdin_note() #3 !dbg !595 {
  %1 = call ptr @gettext(ptr noundef @.str.40) #11, !dbg !596
  %2 = load ptr, ptr @stdout, align 8, !dbg !597
  %3 = call i32 @fputs_unlocked(ptr noundef %1, ptr noundef %2), !dbg !598
  ret void, !dbg !599
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_mandatory_arg_note() #3 !dbg !600 {
  %1 = call ptr @gettext(ptr noundef @.str.41) #11, !dbg !601
  %2 = load ptr, ptr @stdout, align 8, !dbg !602
  %3 = call i32 @fputs_unlocked(ptr noundef %1, ptr noundef %2), !dbg !603
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(ptr noundef %0, ptr noundef %1) #3 !dbg !309 {
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
    #dbg_declare(ptr %3, !605, !DIExpression(), !606)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !607, !DIExpression(), !608)
  %14 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !609
  %15 = icmp eq i32 %14, -1, !dbg !611
  br i1 %15, label %16, label %30, !dbg !611

16:                                               ; preds = %2
    #dbg_declare(ptr %5, !612, !DIExpression(), !614)
  %17 = call ptr @getenv(ptr noundef @.str.42) #11, !dbg !615
  store ptr %17, ptr %5, align 8, !dbg !614
  %18 = load ptr, ptr %5, align 8, !dbg !616
  %19 = icmp ne ptr %18, null, !dbg !616
  br i1 %19, label %20, label %27, !dbg !617

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 8, !dbg !618
  %22 = load i8, ptr %21, align 1, !dbg !619
  %23 = icmp ne i8 %22, 0, !dbg !619
  br i1 %23, label %24, label %27, !dbg !620

24:                                               ; preds = %20
  %25 = load ptr, ptr %5, align 8, !dbg !621
  %26 = call zeroext i1 @streq(ptr noundef %25, ptr noundef @.str.43), !dbg !622
  br label %27, !dbg !620

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !620
  store i32 %29, ptr @oputs_.help_no_sgr, align 4, !dbg !623
  br label %30, !dbg !624

30:                                               ; preds = %27, %2
  %31 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !625
  %32 = icmp ne i32 %31, 0, !dbg !625
  br i1 %32, label %33, label %37, !dbg !625

33:                                               ; preds = %30
  %34 = load ptr, ptr %4, align 8, !dbg !627
  %35 = load ptr, ptr @stdout, align 8, !dbg !629
  %36 = call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !630
  br label %274, !dbg !631

37:                                               ; preds = %30
    #dbg_declare(ptr %6, !632, !DIExpression(), !633)
  store i8 1, ptr %6, align 1, !dbg !633
    #dbg_declare(ptr %7, !634, !DIExpression(), !635)
  %38 = load ptr, ptr %4, align 8, !dbg !636
  %39 = load ptr, ptr %4, align 8, !dbg !637
  %40 = call i64 @strspn(ptr noundef %39, ptr noundef @.str.44) #13, !dbg !638
  %41 = getelementptr inbounds nuw i8, ptr %38, i64 %40, !dbg !639
  store ptr %41, ptr %7, align 8, !dbg !635
    #dbg_declare(ptr %8, !640, !DIExpression(), !641)
  %42 = load ptr, ptr %4, align 8, !dbg !642
  %43 = call ptr @strchr(ptr noundef %42, i32 noundef 45) #13, !dbg !643
  store ptr %43, ptr %8, align 8, !dbg !641
  %44 = load ptr, ptr %8, align 8, !dbg !644
  %45 = icmp ne ptr %44, null, !dbg !644
  br i1 %45, label %48, label %46, !dbg !646

46:                                               ; preds = %37
  %47 = load ptr, ptr %7, align 8, !dbg !647
  store ptr %47, ptr %8, align 8, !dbg !649
  store i8 0, ptr %6, align 1, !dbg !650
  br label %89, !dbg !651

48:                                               ; preds = %37
  %49 = load ptr, ptr %8, align 8, !dbg !652
  %50 = load ptr, ptr %7, align 8, !dbg !654
  %51 = icmp ne ptr %49, %50, !dbg !655
  br i1 %51, label %52, label %88, !dbg !655

52:                                               ; preds = %48
    #dbg_declare(ptr %9, !656, !DIExpression(), !658)
  %53 = load ptr, ptr %7, align 8, !dbg !659
  store ptr %53, ptr %9, align 8, !dbg !658
    #dbg_declare(ptr %10, !660, !DIExpression(), !661)
  store i64 0, ptr %10, align 8, !dbg !661
  br label %54, !dbg !662

54:                                               ; preds = %63, %52
  %55 = load ptr, ptr %9, align 8, !dbg !663
  %56 = load ptr, ptr %8, align 8, !dbg !664
  %57 = icmp ult ptr %55, %56, !dbg !665
  br i1 %57, label %58, label %61, !dbg !666

58:                                               ; preds = %54
  %59 = load i64, ptr %10, align 8, !dbg !667
  %60 = icmp ult i64 %59, 2, !dbg !668
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !669
  br i1 %62, label %63, label %82, !dbg !662

63:                                               ; preds = %61
  %64 = call ptr @__ctype_b_loc() #14, !dbg !670
  %65 = load ptr, ptr %64, align 8, !dbg !670
  %66 = load ptr, ptr %9, align 8, !dbg !671
  %67 = getelementptr inbounds nuw i8, ptr %66, i32 1, !dbg !671
  store ptr %67, ptr %9, align 8, !dbg !671
  %68 = load i8, ptr %66, align 1, !dbg !672
  %69 = sext i8 %68 to i32, !dbg !670
  %70 = sext i32 %69 to i64, !dbg !670
  %71 = getelementptr inbounds i16, ptr %65, i64 %70, !dbg !670
  %72 = load i16, ptr %71, align 2, !dbg !670
  %73 = zext i16 %72 to i32, !dbg !670
  %74 = and i32 %73, 8192, !dbg !670
  %75 = icmp ne i32 %74, 0, !dbg !673
  %76 = xor i1 %75, true, !dbg !673
  %77 = xor i1 %76, true, !dbg !674
  %78 = zext i1 %77 to i32, !dbg !674
  %79 = sext i32 %78 to i64, !dbg !674
  %80 = load i64, ptr %10, align 8, !dbg !675
  %81 = add i64 %80, %79, !dbg !675
  store i64 %81, ptr %10, align 8, !dbg !675
  br label %54, !dbg !662, !llvm.loop !676

82:                                               ; preds = %61
  %83 = load i64, ptr %10, align 8, !dbg !678
  %84 = icmp eq i64 %83, 2, !dbg !680
  br i1 %84, label %85, label %87, !dbg !680

85:                                               ; preds = %82
  %86 = load ptr, ptr %7, align 8, !dbg !681
  store ptr %86, ptr %8, align 8, !dbg !683
  store i8 0, ptr %6, align 1, !dbg !684
  br label %87, !dbg !685

87:                                               ; preds = %85, %82
  br label %88, !dbg !686

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
    #dbg_declare(ptr %11, !687, !DIExpression(), !688)
  %90 = load ptr, ptr %8, align 8, !dbg !689
  %91 = call i64 @strcspn(ptr noundef %90, ptr noundef @.str.45) #13, !dbg !690
  store i64 %91, ptr %11, align 8, !dbg !688
    #dbg_declare(ptr %12, !691, !DIExpression(), !692)
  %92 = load ptr, ptr %8, align 8, !dbg !693
  %93 = load i64, ptr %11, align 8, !dbg !694
  %94 = getelementptr inbounds nuw i8, ptr %92, i64 %93, !dbg !695
  store ptr %94, ptr %12, align 8, !dbg !692
  br label %95, !dbg !696

95:                                               ; preds = %161, %89
  %96 = load ptr, ptr %12, align 8, !dbg !697
  %97 = load i8, ptr %96, align 1, !dbg !698
  %98 = sext i8 %97 to i32, !dbg !698
  %99 = icmp ne i32 %98, 0, !dbg !698
  br i1 %99, label %100, label %105, !dbg !699

100:                                              ; preds = %95
  %101 = load ptr, ptr %12, align 8, !dbg !700
  %102 = load i8, ptr %101, align 1, !dbg !701
  %103 = sext i8 %102 to i32, !dbg !701
  %104 = icmp ne i32 %103, 10, !dbg !702
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !703
  br i1 %106, label %107, label %164, !dbg !696

107:                                              ; preds = %105
  %108 = load ptr, ptr %12, align 8, !dbg !704
  %109 = load i8, ptr %108, align 1, !dbg !707
  %110 = sext i8 %109 to i32, !dbg !707
  %111 = icmp eq i32 %110, 45, !dbg !708
  br i1 %111, label %112, label %119, !dbg !709

112:                                              ; preds = %107
  %113 = load ptr, ptr %12, align 8, !dbg !710
  %114 = getelementptr inbounds i8, ptr %113, i64 1, !dbg !711
  %115 = load i8, ptr %114, align 1, !dbg !711
  %116 = sext i8 %115 to i32, !dbg !711
  %117 = icmp eq i32 %116, 45, !dbg !712
  br i1 %117, label %118, label %119, !dbg !709

118:                                              ; preds = %112
  store i8 0, ptr %6, align 1, !dbg !713
  br label %119, !dbg !714

119:                                              ; preds = %118, %112, %107
  %120 = call ptr @__ctype_b_loc() #14, !dbg !715
  %121 = load ptr, ptr %120, align 8, !dbg !715
  %122 = load ptr, ptr %12, align 8, !dbg !717
  %123 = load i8, ptr %122, align 1, !dbg !718
  %124 = sext i8 %123 to i32, !dbg !715
  %125 = sext i32 %124 to i64, !dbg !715
  %126 = getelementptr inbounds i16, ptr %121, i64 %125, !dbg !715
  %127 = load i16, ptr %126, align 2, !dbg !715
  %128 = zext i16 %127 to i32, !dbg !715
  %129 = and i32 %128, 8192, !dbg !715
  %130 = icmp ne i32 %129, 0, !dbg !715
  br i1 %130, label %131, label %161, !dbg !715

131:                                              ; preds = %119
  %132 = load ptr, ptr %12, align 8, !dbg !719
  %133 = load i8, ptr %132, align 1, !dbg !722
  %134 = sext i8 %133 to i32, !dbg !722
  %135 = icmp eq i32 %134, 9, !dbg !723
  br i1 %135, label %149, label %136, !dbg !724

136:                                              ; preds = %131
  %137 = call ptr @__ctype_b_loc() #14, !dbg !725
  %138 = load ptr, ptr %137, align 8, !dbg !725
  %139 = load ptr, ptr %12, align 8, !dbg !726
  %140 = getelementptr inbounds i8, ptr %139, i64 1, !dbg !727
  %141 = load i8, ptr %140, align 1, !dbg !727
  %142 = sext i8 %141 to i32, !dbg !725
  %143 = sext i32 %142 to i64, !dbg !725
  %144 = getelementptr inbounds i16, ptr %138, i64 %143, !dbg !725
  %145 = load i16, ptr %144, align 2, !dbg !725
  %146 = zext i16 %145 to i32, !dbg !725
  %147 = and i32 %146, 8192, !dbg !725
  %148 = icmp ne i32 %147, 0, !dbg !725
  br i1 %148, label %149, label %150, !dbg !724

149:                                              ; preds = %136, %131
  br label %164, !dbg !728

150:                                              ; preds = %136
  %151 = load i8, ptr %6, align 1, !dbg !729
  %152 = trunc i8 %151 to i1, !dbg !729
  br i1 %152, label %160, label %153, !dbg !731

153:                                              ; preds = %150
  %154 = load ptr, ptr %12, align 8, !dbg !732
  %155 = getelementptr inbounds i8, ptr %154, i64 1, !dbg !733
  %156 = load i8, ptr %155, align 1, !dbg !733
  %157 = sext i8 %156 to i32, !dbg !733
  %158 = icmp ne i32 %157, 45, !dbg !734
  br i1 %158, label %159, label %160, !dbg !731

159:                                              ; preds = %153
  br label %164, !dbg !735

160:                                              ; preds = %153, %150
  br label %161, !dbg !736

161:                                              ; preds = %160, %119
  %162 = load ptr, ptr %12, align 8, !dbg !737
  %163 = getelementptr inbounds nuw i8, ptr %162, i32 1, !dbg !737
  store ptr %163, ptr %12, align 8, !dbg !737
  br label %95, !dbg !696, !llvm.loop !738

164:                                              ; preds = %159, %149, %105
  %165 = load ptr, ptr %4, align 8, !dbg !740
  %166 = load ptr, ptr %7, align 8, !dbg !741
  %167 = load ptr, ptr %4, align 8, !dbg !742
  %168 = ptrtoint ptr %166 to i64, !dbg !743
  %169 = ptrtoint ptr %167 to i64, !dbg !743
  %170 = sub i64 %168, %169, !dbg !743
  %171 = load ptr, ptr @stdout, align 8, !dbg !744
  %172 = call i64 @fwrite_unlocked(ptr noundef %165, i64 noundef 1, i64 noundef %170, ptr noundef %171), !dbg !745
    #dbg_declare(ptr %13, !746, !DIExpression(), !747)
  %173 = load ptr, ptr %3, align 8, !dbg !748
  %174 = call zeroext i1 @streq(ptr noundef %173, ptr noundef @.str.46), !dbg !749
  br i1 %174, label %175, label %176, !dbg !749

175:                                              ; preds = %164
  br label %232, !dbg !749

176:                                              ; preds = %164
  %177 = load ptr, ptr %3, align 8, !dbg !750
  %178 = call zeroext i1 @streq(ptr noundef %177, ptr noundef @.str.48), !dbg !751
  br i1 %178, label %179, label %180, !dbg !751

179:                                              ; preds = %176
  br label %230, !dbg !751

180:                                              ; preds = %176
  %181 = load ptr, ptr %3, align 8, !dbg !752
  %182 = call zeroext i1 @streq(ptr noundef %181, ptr noundef @.str.50), !dbg !753
  br i1 %182, label %183, label %184, !dbg !753

183:                                              ; preds = %180
  br label %228, !dbg !753

184:                                              ; preds = %180
  %185 = load ptr, ptr %3, align 8, !dbg !754
  %186 = call zeroext i1 @streq(ptr noundef %185, ptr noundef @.str.51), !dbg !755
  br i1 %186, label %187, label %188, !dbg !755

187:                                              ; preds = %184
  br label %226, !dbg !755

188:                                              ; preds = %184
  %189 = load ptr, ptr %3, align 8, !dbg !756
  %190 = call zeroext i1 @streq(ptr noundef %189, ptr noundef @.str.53), !dbg !757
  br i1 %190, label %191, label %192, !dbg !757

191:                                              ; preds = %188
  br label %224, !dbg !757

192:                                              ; preds = %188
  %193 = load ptr, ptr %3, align 8, !dbg !758
  %194 = call zeroext i1 @streq(ptr noundef %193, ptr noundef @.str.54), !dbg !759
  br i1 %194, label %195, label %196, !dbg !759

195:                                              ; preds = %192
  br label %222, !dbg !759

196:                                              ; preds = %192
  %197 = load ptr, ptr %3, align 8, !dbg !760
  %198 = call zeroext i1 @streq(ptr noundef %197, ptr noundef @.str.55), !dbg !761
  br i1 %198, label %199, label %200, !dbg !761

199:                                              ; preds = %196
  br label %220, !dbg !761

200:                                              ; preds = %196
  %201 = load ptr, ptr %3, align 8, !dbg !762
  %202 = call zeroext i1 @streq(ptr noundef %201, ptr noundef @.str.56), !dbg !763
  br i1 %202, label %203, label %204, !dbg !763

203:                                              ; preds = %200
  br label %218, !dbg !763

204:                                              ; preds = %200
  %205 = load ptr, ptr %3, align 8, !dbg !764
  %206 = call zeroext i1 @streq(ptr noundef %205, ptr noundef @.str.57), !dbg !765
  br i1 %206, label %207, label %208, !dbg !765

207:                                              ; preds = %204
  br label %216, !dbg !765

208:                                              ; preds = %204
  %209 = load ptr, ptr %3, align 8, !dbg !766
  %210 = call zeroext i1 @streq(ptr noundef %209, ptr noundef @.str.58), !dbg !767
  br i1 %210, label %211, label %212, !dbg !767

211:                                              ; preds = %208
  br label %214, !dbg !767

212:                                              ; preds = %208
  %213 = load ptr, ptr %3, align 8, !dbg !768
  br label %214, !dbg !767

214:                                              ; preds = %212, %211
  %215 = phi ptr [ @.str.52, %211 ], [ %213, %212 ], !dbg !767
  br label %216, !dbg !765

216:                                              ; preds = %214, %207
  %217 = phi ptr [ @.str.52, %207 ], [ %215, %214 ], !dbg !765
  br label %218, !dbg !763

218:                                              ; preds = %216, %203
  %219 = phi ptr [ @.str.52, %203 ], [ %217, %216 ], !dbg !763
  br label %220, !dbg !761

220:                                              ; preds = %218, %199
  %221 = phi ptr [ @.str.52, %199 ], [ %219, %218 ], !dbg !761
  br label %222, !dbg !759

222:                                              ; preds = %220, %195
  %223 = phi ptr [ @.str.52, %195 ], [ %221, %220 ], !dbg !759
  br label %224, !dbg !757

224:                                              ; preds = %222, %191
  %225 = phi ptr [ @.str.52, %191 ], [ %223, %222 ], !dbg !757
  br label %226, !dbg !755

226:                                              ; preds = %224, %187
  %227 = phi ptr [ @.str.52, %187 ], [ %225, %224 ], !dbg !755
  br label %228, !dbg !753

228:                                              ; preds = %226, %183
  %229 = phi ptr [ @.str.49, %183 ], [ %227, %226 ], !dbg !753
  br label %230, !dbg !751

230:                                              ; preds = %228, %179
  %231 = phi ptr [ @.str.49, %179 ], [ %229, %228 ], !dbg !751
  br label %232, !dbg !749

232:                                              ; preds = %230, %175
  %233 = phi ptr [ @.str.47, %175 ], [ %231, %230 ], !dbg !749
  store ptr %233, ptr %13, align 8, !dbg !747
  %234 = load ptr, ptr %8, align 8, !dbg !769
  %235 = call i32 @strncmp(ptr noundef %234, ptr noundef @.str.59, i64 noundef 6) #13, !dbg !771
  %236 = icmp eq i32 %235, 0, !dbg !771
  br i1 %236, label %241, label %237, !dbg !772

237:                                              ; preds = %232
  %238 = load ptr, ptr %8, align 8, !dbg !773
  %239 = call i32 @strncmp(ptr noundef %238, ptr noundef @.str.60, i64 noundef 9) #13, !dbg !774
  %240 = icmp eq i32 %239, 0, !dbg !774
  br i1 %240, label %241, label %248, !dbg !772

241:                                              ; preds = %237, %232
  %242 = load ptr, ptr %13, align 8, !dbg !775
  %243 = load ptr, ptr %13, align 8, !dbg !777
  %244 = load i64, ptr %11, align 8, !dbg !778
  %245 = trunc i64 %244 to i32, !dbg !779
  %246 = load ptr, ptr %8, align 8, !dbg !780
  %247 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str.61, ptr noundef @.str.62, ptr noundef %242, ptr noundef %243, i32 noundef %245, ptr noundef %246), !dbg !781
  br label %254, !dbg !782

248:                                              ; preds = %237
  %249 = load ptr, ptr %13, align 8, !dbg !783
  %250 = load i64, ptr %11, align 8, !dbg !785
  %251 = trunc i64 %250 to i32, !dbg !786
  %252 = load ptr, ptr %8, align 8, !dbg !787
  %253 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str.63, ptr noundef @.str.64, ptr noundef %249, i32 noundef %251, ptr noundef %252), !dbg !788
  br label %254

254:                                              ; preds = %248, %241
  %255 = load ptr, ptr @stdout, align 8, !dbg !789
  %256 = call i32 @fputs_unlocked(ptr noundef @.str.65, ptr noundef %255), !dbg !790
  %257 = load ptr, ptr @stdout, align 8, !dbg !791
  %258 = call i32 @fputs_unlocked(ptr noundef @.str.66, ptr noundef %257), !dbg !792
  %259 = load ptr, ptr %7, align 8, !dbg !793
  %260 = load ptr, ptr %12, align 8, !dbg !794
  %261 = load ptr, ptr %7, align 8, !dbg !795
  %262 = ptrtoint ptr %260 to i64, !dbg !796
  %263 = ptrtoint ptr %261 to i64, !dbg !796
  %264 = sub i64 %262, %263, !dbg !796
  %265 = load ptr, ptr @stdout, align 8, !dbg !797
  %266 = call i64 @fwrite_unlocked(ptr noundef %259, i64 noundef 1, i64 noundef %264, ptr noundef %265), !dbg !798
  %267 = load ptr, ptr @stdout, align 8, !dbg !799
  %268 = call i32 @fputs_unlocked(ptr noundef @.str.67, ptr noundef %267), !dbg !800
  %269 = load ptr, ptr @stdout, align 8, !dbg !801
  %270 = call i32 @fputs_unlocked(ptr noundef @.str.68, ptr noundef %269), !dbg !802
  %271 = load ptr, ptr %12, align 8, !dbg !803
  %272 = load ptr, ptr @stdout, align 8, !dbg !804
  %273 = call i32 @fputs_unlocked(ptr noundef %271, ptr noundef %272), !dbg !805
  br label %274, !dbg !806

274:                                              ; preds = %254, %33
  ret void, !dbg !806
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !807 {
  %2 = alloca ptr, align 8
  %3 = alloca [7 x %struct.infomap], align 16
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !810, !DIExpression(), !811)
    #dbg_declare(ptr %3, !812, !DIExpression(), !819)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %3, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !819
    #dbg_declare(ptr %4, !820, !DIExpression(), !821)
  %7 = load ptr, ptr %2, align 8, !dbg !822
  store ptr %7, ptr %4, align 8, !dbg !821
    #dbg_declare(ptr %5, !823, !DIExpression(), !825)
  %8 = getelementptr inbounds [7 x %struct.infomap], ptr %3, i64 0, i64 0, !dbg !826
  store ptr %8, ptr %5, align 8, !dbg !825
  br label %9, !dbg !827

9:                                                ; preds = %23, %1
  %10 = load ptr, ptr %5, align 8, !dbg !828
  %11 = getelementptr inbounds nuw %struct.infomap, ptr %10, i32 0, i32 0, !dbg !829
  %12 = load ptr, ptr %11, align 8, !dbg !829
  %13 = icmp ne ptr %12, null, !dbg !828
  br i1 %13, label %14, label %21, !dbg !830

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 8, !dbg !831
  %16 = load ptr, ptr %5, align 8, !dbg !832
  %17 = getelementptr inbounds nuw %struct.infomap, ptr %16, i32 0, i32 0, !dbg !833
  %18 = load ptr, ptr %17, align 8, !dbg !833
  %19 = call zeroext i1 @streq(ptr noundef %15, ptr noundef %18), !dbg !834
  %20 = xor i1 %19, true, !dbg !835
  br label %21

21:                                               ; preds = %14, %9
  %22 = phi i1 [ false, %9 ], [ %20, %14 ], !dbg !836
  br i1 %22, label %23, label %26, !dbg !827

23:                                               ; preds = %21
  %24 = load ptr, ptr %5, align 8, !dbg !837
  %25 = getelementptr inbounds nuw %struct.infomap, ptr %24, i32 1, !dbg !837
  store ptr %25, ptr %5, align 8, !dbg !837
  br label %9, !dbg !827, !llvm.loop !838

26:                                               ; preds = %21
  %27 = load ptr, ptr %5, align 8, !dbg !839
  %28 = getelementptr inbounds nuw %struct.infomap, ptr %27, i32 0, i32 1, !dbg !841
  %29 = load ptr, ptr %28, align 8, !dbg !841
  %30 = icmp ne ptr %29, null, !dbg !839
  br i1 %30, label %31, label %35, !dbg !839

31:                                               ; preds = %26
  %32 = load ptr, ptr %5, align 8, !dbg !842
  %33 = getelementptr inbounds nuw %struct.infomap, ptr %32, i32 0, i32 1, !dbg !843
  %34 = load ptr, ptr %33, align 8, !dbg !843
  store ptr %34, ptr %4, align 8, !dbg !844
  br label %35, !dbg !845

35:                                               ; preds = %31, %26
  call void @emit_bug_reporting_address(), !dbg !846
    #dbg_declare(ptr %6, !847, !DIExpression(), !848)
  %36 = load ptr, ptr %2, align 8, !dbg !849
  %37 = call zeroext i1 @streq(ptr noundef %36, ptr noundef @.str.46), !dbg !850
  br i1 %37, label %38, label %39, !dbg !850

38:                                               ; preds = %35
  br label %41, !dbg !850

39:                                               ; preds = %35
  %40 = load ptr, ptr %2, align 8, !dbg !851
  br label %41, !dbg !850

41:                                               ; preds = %39, %38
  %42 = phi ptr [ @.str.47, %38 ], [ %40, %39 ], !dbg !850
  store ptr %42, ptr %6, align 8, !dbg !848
  %43 = call ptr @gettext(ptr noundef @.str.72) #11, !dbg !852
  %44 = load ptr, ptr %6, align 8, !dbg !853
  %45 = call i32 (ptr, ...) @rpl_printf(ptr noundef %43, ptr noundef @.str.62, ptr noundef %44), !dbg !854
  %46 = call ptr @gettext(ptr noundef @.str.73) #11, !dbg !855
  %47 = load ptr, ptr %4, align 8, !dbg !856
  %48 = load ptr, ptr %4, align 8, !dbg !857
  %49 = load ptr, ptr %2, align 8, !dbg !858
  %50 = icmp eq ptr %48, %49, !dbg !859
  %51 = zext i1 %50 to i64, !dbg !857
  %52 = select i1 %50, ptr @.str.74, ptr @.str.20, !dbg !857
  %53 = call i32 (ptr, ...) @rpl_printf(ptr noundef %46, ptr noundef %47, ptr noundef %52), !dbg !860
  ret void, !dbg !861
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #3 !dbg !862 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mcel_t, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
    #dbg_declare(ptr %4, !866, !DIExpression(), !867)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !868, !DIExpression(), !869)
    #dbg_declare(ptr %6, !870, !DIExpression(), !871)
    #dbg_declare(ptr %7, !872, !DIExpression(), !873)
    #dbg_declare(ptr %8, !874, !DIExpression(), !875)
  store i8 1, ptr %8, align 1, !dbg !875
  %13 = load ptr, ptr %5, align 8, !dbg !876
  %14 = getelementptr inbounds ptr, ptr %13, i64 0, !dbg !876
  %15 = load ptr, ptr %14, align 8, !dbg !876
  call void @set_program_name(ptr noundef %15), !dbg !877
  %16 = call ptr @setlocale(i32 noundef 6, ptr noundef @.str.20) #11, !dbg !878
  %17 = call ptr @bindtextdomain(ptr noundef @.str.21, ptr noundef @.str.22) #11, !dbg !879
  %18 = call ptr @textdomain(ptr noundef @.str.21) #11, !dbg !880
  %19 = call i32 @atexit(ptr noundef @close_stdout) #11, !dbg !881
  br label %20, !dbg !882

20:                                               ; preds = %148, %2
  %21 = load i32, ptr %4, align 4, !dbg !883
  %22 = load ptr, ptr %5, align 8, !dbg !884
  %23 = call i32 @getopt_long(i32 noundef %21, ptr noundef %22, ptr noundef @.str.23, ptr noundef @longopts, ptr noundef null) #11, !dbg !885
  store i32 %23, ptr %6, align 4, !dbg !886
  %24 = icmp ne i32 %23, -1, !dbg !887
  br i1 %24, label %25, label %149, !dbg !882

25:                                               ; preds = %20
  %26 = load i32, ptr %6, align 4, !dbg !888
  switch i32 %26, label %147 [
    i32 104, label %27
    i32 98, label %34
    i32 102, label %41
    i32 118, label %48
    i32 105, label %52
    i32 112, label %56
    i32 108, label %57
    i32 115, label %61
    i32 119, label %63
    i32 110, label %68
    i32 100, label %87
    i32 -130, label %141
    i32 -131, label %142
  ], !dbg !890

27:                                               ; preds = %25
  %28 = call zeroext i1 @build_type_arg(ptr noundef @header_type, ptr noundef @header_regex, ptr noundef @header_fastmap), !dbg !891
  br i1 %28, label %33, label %29, !dbg !894

29:                                               ; preds = %27
  %30 = call ptr @gettext(ptr noundef @.str.24) #11, !dbg !895
  %31 = load ptr, ptr @optarg, align 8, !dbg !897
  %32 = call ptr @quote(ptr noundef %31), !dbg !898
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %30, ptr noundef %32), !dbg !899
  store i8 0, ptr %8, align 1, !dbg !900
  br label %33, !dbg !901

33:                                               ; preds = %29, %27
  br label %148, !dbg !902

34:                                               ; preds = %25
  %35 = call zeroext i1 @build_type_arg(ptr noundef @body_type, ptr noundef @body_regex, ptr noundef @body_fastmap), !dbg !903
  br i1 %35, label %40, label %36, !dbg !905

36:                                               ; preds = %34
  %37 = call ptr @gettext(ptr noundef @.str.25) #11, !dbg !906
  %38 = load ptr, ptr @optarg, align 8, !dbg !908
  %39 = call ptr @quote(ptr noundef %38), !dbg !909
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %37, ptr noundef %39), !dbg !910
  store i8 0, ptr %8, align 1, !dbg !911
  br label %40, !dbg !912

40:                                               ; preds = %36, %34
  br label %148, !dbg !913

41:                                               ; preds = %25
  %42 = call zeroext i1 @build_type_arg(ptr noundef @footer_type, ptr noundef @footer_regex, ptr noundef @footer_fastmap), !dbg !914
  br i1 %42, label %47, label %43, !dbg !916

43:                                               ; preds = %41
  %44 = call ptr @gettext(ptr noundef @.str.26) #11, !dbg !917
  %45 = load ptr, ptr @optarg, align 8, !dbg !919
  %46 = call ptr @quote(ptr noundef %45), !dbg !920
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %44, ptr noundef %46), !dbg !921
  store i8 0, ptr %8, align 1, !dbg !922
  br label %47, !dbg !923

47:                                               ; preds = %43, %41
  br label %148, !dbg !924

48:                                               ; preds = %25
  %49 = load ptr, ptr @optarg, align 8, !dbg !925
  %50 = call ptr @gettext(ptr noundef @.str.27) #11, !dbg !926
  %51 = call i64 @xdectoimax(ptr noundef %49, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807, ptr noundef @.str.20, ptr noundef %50, i32 noundef 0), !dbg !927
  store i64 %51, ptr @starting_line_number, align 8, !dbg !928
  br label %148, !dbg !929

52:                                               ; preds = %25
  %53 = load ptr, ptr @optarg, align 8, !dbg !930
  %54 = call ptr @gettext(ptr noundef @.str.28) #11, !dbg !931
  %55 = call i64 @xdectoimax(ptr noundef %53, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807, ptr noundef @.str.20, ptr noundef %54, i32 noundef 0), !dbg !932
  store i64 %55, ptr @page_incr, align 8, !dbg !933
  br label %148, !dbg !934

56:                                               ; preds = %25
  store i8 0, ptr @reset_numbers, align 1, !dbg !935
  br label %148, !dbg !936

57:                                               ; preds = %25
  %58 = load ptr, ptr @optarg, align 8, !dbg !937
  %59 = call ptr @gettext(ptr noundef @.str.29) #11, !dbg !938
  %60 = call i64 @xnumtoimax(ptr noundef %58, i32 noundef 10, i64 noundef 1, i64 noundef 9223372036854775807, ptr noundef @.str.20, ptr noundef %59, i32 noundef 0, i32 noundef 6), !dbg !939
  store i64 %60, ptr @blank_join, align 8, !dbg !940
  br label %148, !dbg !941

61:                                               ; preds = %25
  %62 = load ptr, ptr @optarg, align 8, !dbg !942
  store ptr %62, ptr @separator_str, align 8, !dbg !943
  br label %148, !dbg !944

63:                                               ; preds = %25
  %64 = load ptr, ptr @optarg, align 8, !dbg !945
  %65 = call ptr @gettext(ptr noundef @.str.30) #11, !dbg !946
  %66 = call i64 @xnumtoimax(ptr noundef %64, i32 noundef 10, i64 noundef 1, i64 noundef 2147483647, ptr noundef @.str.20, ptr noundef %65, i32 noundef 0, i32 noundef 4), !dbg !947
  %67 = trunc i64 %66 to i32, !dbg !947
  store i32 %67, ptr @lineno_width, align 4, !dbg !948
  br label %148, !dbg !949

68:                                               ; preds = %25
  %69 = load ptr, ptr @optarg, align 8, !dbg !950
  %70 = call zeroext i1 @streq(ptr noundef %69, ptr noundef @.str.31), !dbg !952
  br i1 %70, label %71, label %72, !dbg !952

71:                                               ; preds = %68
  store ptr @FORMAT_LEFT, ptr @lineno_format, align 8, !dbg !953
  br label %86, !dbg !954

72:                                               ; preds = %68
  %73 = load ptr, ptr @optarg, align 8, !dbg !955
  %74 = call zeroext i1 @streq(ptr noundef %73, ptr noundef @.str.32), !dbg !957
  br i1 %74, label %75, label %76, !dbg !957

75:                                               ; preds = %72
  store ptr @FORMAT_RIGHT_NOLZ, ptr @lineno_format, align 8, !dbg !958
  br label %85, !dbg !959

76:                                               ; preds = %72
  %77 = load ptr, ptr @optarg, align 8, !dbg !960
  %78 = call zeroext i1 @streq(ptr noundef %77, ptr noundef @.str.33), !dbg !962
  br i1 %78, label %79, label %80, !dbg !962

79:                                               ; preds = %76
  store ptr @FORMAT_RIGHT_LZ, ptr @lineno_format, align 8, !dbg !963
  br label %84, !dbg !964

80:                                               ; preds = %76
  %81 = call ptr @gettext(ptr noundef @.str.34) #11, !dbg !965
  %82 = load ptr, ptr @optarg, align 8, !dbg !967
  %83 = call ptr @quote(ptr noundef %82), !dbg !968
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %81, ptr noundef %83), !dbg !969
  store i8 0, ptr %8, align 1, !dbg !970
  br label %84

84:                                               ; preds = %80, %79
  br label %85

85:                                               ; preds = %84, %75
  br label %86

86:                                               ; preds = %85, %71
  br label %148, !dbg !971

87:                                               ; preds = %25
  %88 = load ptr, ptr @optarg, align 8, !dbg !972
  %89 = call i64 @strlen(ptr noundef %88) #13, !dbg !973
  store i64 %89, ptr %7, align 8, !dbg !974
  %90 = call i64 @__ctype_get_mb_cur_max() #11, !dbg !975
  %91 = icmp ult i64 1, %90, !dbg !977
  br i1 %91, label %92, label %130, !dbg !977

92:                                               ; preds = %87
    #dbg_declare(ptr %9, !978, !DIExpression(), !980)
  %93 = load ptr, ptr @optarg, align 8, !dbg !981
  store ptr %93, ptr %9, align 8, !dbg !980
    #dbg_declare(ptr %10, !982, !DIExpression(), !983)
  %94 = load ptr, ptr %9, align 8, !dbg !984
  %95 = load i64, ptr %7, align 8, !dbg !985
  %96 = getelementptr inbounds nuw i8, ptr %94, i64 %95, !dbg !986
  store ptr %96, ptr %10, align 8, !dbg !983
    #dbg_declare(ptr %11, !987, !DIExpression(), !988)
  store i32 0, ptr %11, align 4, !dbg !988
  br label %97, !dbg !989

97:                                               ; preds = %116, %92
  %98 = load ptr, ptr %9, align 8, !dbg !990
  %99 = load ptr, ptr %10, align 8, !dbg !993
  %100 = icmp ult ptr %98, %99, !dbg !994
  br i1 %100, label %101, label %104, !dbg !995

101:                                              ; preds = %97
  %102 = load i32, ptr %11, align 4, !dbg !996
  %103 = icmp slt i32 %102, 2, !dbg !997
  br label %104

104:                                              ; preds = %101, %97
  %105 = phi i1 [ false, %97 ], [ %103, %101 ], !dbg !998
  br i1 %105, label %106, label %119, !dbg !999

106:                                              ; preds = %104
  %107 = load ptr, ptr %9, align 8, !dbg !1000
  %108 = load ptr, ptr %10, align 8, !dbg !1001
  %109 = call i64 @mcel_scan(ptr noundef %107, ptr noundef %108), !dbg !1002
  store i64 %109, ptr %12, align 4, !dbg !1002
  %110 = getelementptr inbounds nuw %struct.mcel_t, ptr %12, i32 0, i32 2, !dbg !1003
  %111 = load i8, ptr %110, align 1, !dbg !1003
  %112 = zext i8 %111 to i32, !dbg !1002
  %113 = load ptr, ptr %9, align 8, !dbg !1004
  %114 = sext i32 %112 to i64, !dbg !1004
  %115 = getelementptr inbounds i8, ptr %113, i64 %114, !dbg !1004
  store ptr %115, ptr %9, align 8, !dbg !1004
  br label %116, !dbg !1005

116:                                              ; preds = %106
  %117 = load i32, ptr %11, align 4, !dbg !1006
  %118 = add nsw i32 %117, 1, !dbg !1006
  store i32 %118, ptr %11, align 4, !dbg !1006
  br label %97, !dbg !1007, !llvm.loop !1008

119:                                              ; preds = %104
  %120 = load i32, ptr %11, align 4, !dbg !1010
  %121 = icmp eq i32 %120, 1, !dbg !1012
  br i1 %121, label %122, label %127, !dbg !1012

122:                                              ; preds = %119
  %123 = load ptr, ptr @section_del, align 8, !dbg !1013
  %124 = load ptr, ptr @optarg, align 8, !dbg !1014
  %125 = load i64, ptr %7, align 8, !dbg !1015
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %123, ptr align 1 %124, i64 %125, i1 false), !dbg !1016
  %126 = getelementptr inbounds i8, ptr %123, i64 %125, !dbg !1016
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %126, ptr align 1 @.str.35, i64 2, i1 false), !dbg !1017
  br label %129, !dbg !1017

127:                                              ; preds = %119
  %128 = load ptr, ptr @optarg, align 8, !dbg !1018
  store ptr %128, ptr @section_del, align 8, !dbg !1019
  br label %129

129:                                              ; preds = %127, %122
  br label %140, !dbg !1020

130:                                              ; preds = %87
  %131 = load i64, ptr %7, align 8, !dbg !1021
  %132 = icmp eq i64 %131, 1, !dbg !1024
  br i1 %132, label %133, label %137, !dbg !1024

133:                                              ; preds = %130
  %134 = load ptr, ptr @optarg, align 8, !dbg !1025
  %135 = load i8, ptr %134, align 1, !dbg !1026
  %136 = load ptr, ptr @section_del, align 8, !dbg !1027
  store i8 %135, ptr %136, align 1, !dbg !1028
  br label %139, !dbg !1029

137:                                              ; preds = %130
  %138 = load ptr, ptr @optarg, align 8, !dbg !1030
  store ptr %138, ptr @section_del, align 8, !dbg !1031
  br label %139

139:                                              ; preds = %137, %133
  br label %140

140:                                              ; preds = %139, %129
  br label %148, !dbg !1032

141:                                              ; preds = %25
  call void @usage(i32 noundef 0) #15, !dbg !1033
  unreachable, !dbg !1033

142:                                              ; preds = %25
  %143 = load ptr, ptr @stdout, align 8, !dbg !1034
  %144 = load ptr, ptr @Version, align 8, !dbg !1034
  %145 = call ptr @proper_name_lite(ptr noundef @.str.37, ptr noundef @.str.37), !dbg !1035
  %146 = call ptr @proper_name_lite(ptr noundef @.str.38, ptr noundef @.str.38), !dbg !1035
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %143, ptr noundef @.str.3, ptr noundef @.str.36, ptr noundef %144, ptr noundef %145, ptr noundef %146, ptr noundef null), !dbg !1034
  call void @exit(i32 noundef 0) #12, !dbg !1034
  unreachable, !dbg !1034

147:                                              ; preds = %25
  store i8 0, ptr %8, align 1, !dbg !1036
  br label %148, !dbg !1037

148:                                              ; preds = %147, %140, %86, %63, %61, %57, %56, %52, %48, %47, %40, %33
  br label %20, !dbg !882, !llvm.loop !1038

149:                                              ; preds = %20
  %150 = load i8, ptr %8, align 1, !dbg !1040
  %151 = trunc i8 %150 to i1, !dbg !1040
  br i1 %151, label %153, label %152, !dbg !1042

152:                                              ; preds = %149
  call void @usage(i32 noundef 1) #15, !dbg !1043
  unreachable, !dbg !1043

153:                                              ; preds = %149
  %154 = load ptr, ptr @section_del, align 8, !dbg !1044
  %155 = call i64 @strlen(ptr noundef %154) #13, !dbg !1045
  store i64 %155, ptr %7, align 8, !dbg !1046
  store i64 %155, ptr @section_del_len, align 8, !dbg !1047
  %156 = load i64, ptr %7, align 8, !dbg !1048
  %157 = mul i64 %156, 3, !dbg !1049
  store i64 %157, ptr @header_del_len, align 8, !dbg !1050
  %158 = load i64, ptr @header_del_len, align 8, !dbg !1051
  %159 = add i64 %158, 1, !dbg !1052
  %160 = call noalias nonnull ptr @xmalloc(i64 noundef %159) #16, !dbg !1053
  store ptr %160, ptr @header_del, align 8, !dbg !1054
  %161 = load ptr, ptr @header_del, align 8, !dbg !1055
  %162 = load ptr, ptr @section_del, align 8, !dbg !1056
  %163 = call ptr @stpcpy(ptr noundef %161, ptr noundef %162) #11, !dbg !1057
  %164 = load ptr, ptr @section_del, align 8, !dbg !1058
  %165 = call ptr @stpcpy(ptr noundef %163, ptr noundef %164) #11, !dbg !1059
  %166 = load ptr, ptr @section_del, align 8, !dbg !1060
  %167 = call ptr @stpcpy(ptr noundef %165, ptr noundef %166) #11, !dbg !1061
  %168 = load i64, ptr %7, align 8, !dbg !1062
  %169 = mul i64 %168, 2, !dbg !1063
  store i64 %169, ptr @body_del_len, align 8, !dbg !1064
  %170 = load ptr, ptr @header_del, align 8, !dbg !1065
  %171 = load i64, ptr %7, align 8, !dbg !1066
  %172 = getelementptr inbounds nuw i8, ptr %170, i64 %171, !dbg !1067
  store ptr %172, ptr @body_del, align 8, !dbg !1068
  %173 = load i64, ptr %7, align 8, !dbg !1069
  store i64 %173, ptr @footer_del_len, align 8, !dbg !1070
  %174 = load ptr, ptr @body_del, align 8, !dbg !1071
  %175 = load i64, ptr %7, align 8, !dbg !1072
  %176 = getelementptr inbounds nuw i8, ptr %174, i64 %175, !dbg !1073
  store ptr %176, ptr @footer_del, align 8, !dbg !1074
  call void @initbuffer(ptr noundef @line_buf), !dbg !1075
  %177 = load ptr, ptr @separator_str, align 8, !dbg !1076
  %178 = call i64 @strlen(ptr noundef %177) #13, !dbg !1077
  store i64 %178, ptr %7, align 8, !dbg !1078
  %179 = load i32, ptr @lineno_width, align 4, !dbg !1079
  %180 = sext i32 %179 to i64, !dbg !1079
  %181 = load i64, ptr %7, align 8, !dbg !1080
  %182 = add i64 %180, %181, !dbg !1081
  %183 = add i64 %182, 1, !dbg !1082
  %184 = call noalias nonnull ptr @xmalloc(i64 noundef %183) #16, !dbg !1083
  store ptr %184, ptr @print_no_line_fmt, align 8, !dbg !1084
  %185 = load ptr, ptr @print_no_line_fmt, align 8, !dbg !1085
  %186 = load i32, ptr @lineno_width, align 4, !dbg !1086
  %187 = sext i32 %186 to i64, !dbg !1086
  %188 = load i64, ptr %7, align 8, !dbg !1087
  %189 = add i64 %187, %188, !dbg !1088
  call void @llvm.memset.p0.i64(ptr align 1 %185, i8 32, i64 %189, i1 false), !dbg !1089
  %190 = load ptr, ptr @print_no_line_fmt, align 8, !dbg !1090
  %191 = load i32, ptr @lineno_width, align 4, !dbg !1091
  %192 = sext i32 %191 to i64, !dbg !1091
  %193 = load i64, ptr %7, align 8, !dbg !1092
  %194 = add i64 %192, %193, !dbg !1093
  %195 = getelementptr inbounds nuw i8, ptr %190, i64 %194, !dbg !1090
  store i8 0, ptr %195, align 1, !dbg !1094
  %196 = load i64, ptr @starting_line_number, align 8, !dbg !1095
  store i64 %196, ptr @line_no, align 8, !dbg !1096
  %197 = load ptr, ptr @body_type, align 8, !dbg !1097
  store ptr %197, ptr @current_type, align 8, !dbg !1098
  store ptr @body_regex, ptr @current_regex, align 8, !dbg !1099
  %198 = load i32, ptr @optind, align 4, !dbg !1100
  %199 = load i32, ptr %4, align 4, !dbg !1102
  %200 = icmp eq i32 %198, %199, !dbg !1103
  br i1 %200, label %201, label %204, !dbg !1103

201:                                              ; preds = %153
  %202 = call zeroext i1 @nl_file(ptr noundef @.str.39), !dbg !1104
  %203 = zext i1 %202 to i8, !dbg !1105
  store i8 %203, ptr %8, align 1, !dbg !1105
  br label %227, !dbg !1106

204:                                              ; preds = %153
  br label %205, !dbg !1107

205:                                              ; preds = %223, %204
  %206 = load i32, ptr @optind, align 4, !dbg !1108
  %207 = load i32, ptr %4, align 4, !dbg !1111
  %208 = icmp slt i32 %206, %207, !dbg !1112
  br i1 %208, label %209, label %226, !dbg !1113

209:                                              ; preds = %205
  %210 = load ptr, ptr %5, align 8, !dbg !1114
  %211 = load i32, ptr @optind, align 4, !dbg !1115
  %212 = sext i32 %211 to i64, !dbg !1114
  %213 = getelementptr inbounds ptr, ptr %210, i64 %212, !dbg !1114
  %214 = load ptr, ptr %213, align 8, !dbg !1114
  %215 = call zeroext i1 @nl_file(ptr noundef %214), !dbg !1116
  %216 = zext i1 %215 to i32, !dbg !1116
  %217 = load i8, ptr %8, align 1, !dbg !1117
  %218 = trunc i8 %217 to i1, !dbg !1117
  %219 = zext i1 %218 to i32, !dbg !1117
  %220 = and i32 %219, %216, !dbg !1117
  %221 = icmp ne i32 %220, 0, !dbg !1117
  %222 = zext i1 %221 to i8, !dbg !1117
  store i8 %222, ptr %8, align 1, !dbg !1117
  br label %223, !dbg !1118

223:                                              ; preds = %209
  %224 = load i32, ptr @optind, align 4, !dbg !1119
  %225 = add nsw i32 %224, 1, !dbg !1119
  store i32 %225, ptr @optind, align 4, !dbg !1119
  br label %205, !dbg !1120, !llvm.loop !1121

226:                                              ; preds = %205
  br label %227

227:                                              ; preds = %226, %201
  %228 = load i8, ptr @have_read_stdin, align 1, !dbg !1123
  %229 = trunc i8 %228 to i1, !dbg !1123
  br i1 %229, label %230, label %237, !dbg !1125

230:                                              ; preds = %227
  %231 = load ptr, ptr @stdin, align 8, !dbg !1126
  %232 = call i32 @rpl_fclose(ptr noundef %231), !dbg !1127
  %233 = icmp eq i32 %232, -1, !dbg !1128
  br i1 %233, label %234, label %237, !dbg !1125

234:                                              ; preds = %230
  %235 = call ptr @__errno_location() #14, !dbg !1129
  %236 = load i32, ptr %235, align 4, !dbg !1129
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %236, ptr noundef @.str.39), !dbg !1130
  unreachable, !dbg !1130

237:                                              ; preds = %230, %227
  %238 = load i8, ptr %8, align 1, !dbg !1131
  %239 = trunc i8 %238 to i1, !dbg !1131
  %240 = zext i1 %239 to i64, !dbg !1131
  %241 = select i1 %239, i32 0, i32 1, !dbg !1131
  ret i32 %241, !dbg !1132
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
define internal zeroext i1 @build_type_arg(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 !dbg !1133 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1137, !DIExpression(), !1138)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !1139, !DIExpression(), !1140)
  store ptr %2, ptr %6, align 8
    #dbg_declare(ptr %6, !1141, !DIExpression(), !1142)
    #dbg_declare(ptr %7, !1143, !DIExpression(), !1144)
    #dbg_declare(ptr %8, !1145, !DIExpression(), !1146)
  store i8 1, ptr %8, align 1, !dbg !1146
  %9 = load ptr, ptr @optarg, align 8, !dbg !1147
  %10 = load i8, ptr %9, align 1, !dbg !1148
  %11 = sext i8 %10 to i32, !dbg !1148
  switch i32 %11, label %38 [
    i32 97, label %12
    i32 116, label %12
    i32 110, label %12
    i32 112, label %15
  ], !dbg !1149

12:                                               ; preds = %3, %3, %3
  %13 = load ptr, ptr @optarg, align 8, !dbg !1150
  %14 = load ptr, ptr %4, align 8, !dbg !1152
  store ptr %13, ptr %14, align 8, !dbg !1153
  br label %39, !dbg !1154

15:                                               ; preds = %3
  %16 = load ptr, ptr @optarg, align 8, !dbg !1155
  %17 = getelementptr inbounds nuw i8, ptr %16, i32 1, !dbg !1155
  store ptr %17, ptr @optarg, align 8, !dbg !1155
  %18 = load ptr, ptr %4, align 8, !dbg !1156
  store ptr %16, ptr %18, align 8, !dbg !1157
  %19 = load ptr, ptr %5, align 8, !dbg !1158
  %20 = getelementptr inbounds nuw %struct.re_pattern_buffer, ptr %19, i32 0, i32 0, !dbg !1159
  store ptr null, ptr %20, align 8, !dbg !1160
  %21 = load ptr, ptr %5, align 8, !dbg !1161
  %22 = getelementptr inbounds nuw %struct.re_pattern_buffer, ptr %21, i32 0, i32 1, !dbg !1162
  store i64 0, ptr %22, align 8, !dbg !1163
  %23 = load ptr, ptr %6, align 8, !dbg !1164
  %24 = load ptr, ptr %5, align 8, !dbg !1165
  %25 = getelementptr inbounds nuw %struct.re_pattern_buffer, ptr %24, i32 0, i32 4, !dbg !1166
  store ptr %23, ptr %25, align 8, !dbg !1167
  %26 = load ptr, ptr %5, align 8, !dbg !1168
  %27 = getelementptr inbounds nuw %struct.re_pattern_buffer, ptr %26, i32 0, i32 5, !dbg !1169
  store ptr null, ptr %27, align 8, !dbg !1170
  store i64 710, ptr @rpl_re_syntax_options, align 8, !dbg !1171
  %28 = load ptr, ptr @optarg, align 8, !dbg !1172
  %29 = load ptr, ptr @optarg, align 8, !dbg !1173
  %30 = call i64 @strlen(ptr noundef %29) #13, !dbg !1174
  %31 = load ptr, ptr %5, align 8, !dbg !1175
  %32 = call ptr @rpl_re_compile_pattern(ptr noundef %28, i64 noundef %30, ptr noundef %31), !dbg !1176
  store ptr %32, ptr %7, align 8, !dbg !1177
  %33 = load ptr, ptr %7, align 8, !dbg !1178
  %34 = icmp ne ptr %33, null, !dbg !1178
  br i1 %34, label %35, label %37, !dbg !1178

35:                                               ; preds = %15
  %36 = load ptr, ptr %7, align 8, !dbg !1180
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef @.str.89, ptr noundef %36), !dbg !1181
  unreachable, !dbg !1181

37:                                               ; preds = %15
  br label %39, !dbg !1182

38:                                               ; preds = %3
  store i8 0, ptr %8, align 1, !dbg !1183
  br label %39, !dbg !1184

39:                                               ; preds = %38, %37, %12
  %40 = load i8, ptr %8, align 1, !dbg !1185
  %41 = trunc i8 %40 to i1, !dbg !1185
  ret i1 %41, !dbg !1186
}

declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

declare ptr @quote(ptr noundef) #2

declare i64 @xdectoimax(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare i64 @xnumtoimax(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare zeroext i1 @streq(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #1

declare i64 @mcel_scan(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

declare void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare ptr @proper_name_lite(ptr noundef, ptr noundef) #2

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @xmalloc(i64 noundef) #7

; Function Attrs: nounwind
declare ptr @stpcpy(ptr noundef, ptr noundef) #1

declare void @initbuffer(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @nl_file(ptr noundef %0) #3 !dbg !1187 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1190, !DIExpression(), !1191)
    #dbg_declare(ptr %4, !1192, !DIExpression(), !1243)
  %6 = load ptr, ptr %3, align 8, !dbg !1244
  %7 = call zeroext i1 @streq(ptr noundef %6, ptr noundef @.str.39), !dbg !1246
  br i1 %7, label %8, label %16, !dbg !1246

8:                                                ; preds = %1
  store i8 1, ptr @have_read_stdin, align 1, !dbg !1247
  %9 = load ptr, ptr @stdin, align 8, !dbg !1249
  store ptr %9, ptr %4, align 8, !dbg !1250
  %10 = load ptr, ptr %4, align 8, !dbg !1251
  %11 = icmp ne ptr %10, null, !dbg !1252
  br i1 %11, label %12, label %13, !dbg !1252

12:                                               ; preds = %8
  br label %15, !dbg !1252

13:                                               ; preds = %8
  unreachable, !dbg !1252

14:                                               ; No predecessors!
  br label %15, !dbg !1252

15:                                               ; preds = %14, %12
  br label %27, !dbg !1253

16:                                               ; preds = %1
  %17 = load ptr, ptr %3, align 8, !dbg !1254
  %18 = call noalias ptr @rpl_fopen(ptr noundef %17, ptr noundef @.str.93), !dbg !1256
  store ptr %18, ptr %4, align 8, !dbg !1257
  %19 = load ptr, ptr %4, align 8, !dbg !1258
  %20 = icmp eq ptr %19, null, !dbg !1260
  br i1 %20, label %21, label %26, !dbg !1260

21:                                               ; preds = %16
  %22 = call ptr @__errno_location() #14, !dbg !1261
  %23 = load i32, ptr %22, align 4, !dbg !1261
  %24 = load ptr, ptr %3, align 8, !dbg !1263
  %25 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %24), !dbg !1264
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %23, ptr noundef @.str.89, ptr noundef %25), !dbg !1265
  store i1 false, ptr %2, align 1, !dbg !1266
  br label %60, !dbg !1266

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26, %15
  %28 = load ptr, ptr %4, align 8, !dbg !1267
  call void @fadvise(ptr noundef %28, i32 noundef 2), !dbg !1268
  %29 = load ptr, ptr %4, align 8, !dbg !1269
  call void @process_file(ptr noundef %29), !dbg !1270
    #dbg_declare(ptr %5, !1271, !DIExpression(), !1272)
  %30 = call ptr @__errno_location() #14, !dbg !1273
  %31 = load i32, ptr %30, align 4, !dbg !1273
  store i32 %31, ptr %5, align 4, !dbg !1272
  %32 = load ptr, ptr %4, align 8, !dbg !1274
  %33 = call i32 @ferror_unlocked(ptr noundef %32) #11, !dbg !1276
  %34 = icmp ne i32 %33, 0, !dbg !1276
  br i1 %34, label %36, label %35, !dbg !1277

35:                                               ; preds = %27
  store i32 0, ptr %5, align 4, !dbg !1278
  br label %36, !dbg !1279

36:                                               ; preds = %35, %27
  %37 = load ptr, ptr %3, align 8, !dbg !1280
  %38 = call zeroext i1 @streq(ptr noundef %37, ptr noundef @.str.39), !dbg !1282
  br i1 %38, label %39, label %41, !dbg !1282

39:                                               ; preds = %36
  %40 = load ptr, ptr %4, align 8, !dbg !1283
  call void @clearerr_unlocked(ptr noundef %40) #11, !dbg !1284
  br label %52, !dbg !1284

41:                                               ; preds = %36
  %42 = load ptr, ptr %4, align 8, !dbg !1285
  %43 = call i32 @rpl_fclose(ptr noundef %42), !dbg !1287
  %44 = icmp ne i32 %43, 0, !dbg !1288
  br i1 %44, label %45, label %51, !dbg !1289

45:                                               ; preds = %41
  %46 = load i32, ptr %5, align 4, !dbg !1290
  %47 = icmp ne i32 %46, 0, !dbg !1290
  br i1 %47, label %51, label %48, !dbg !1289

48:                                               ; preds = %45
  %49 = call ptr @__errno_location() #14, !dbg !1291
  %50 = load i32, ptr %49, align 4, !dbg !1291
  store i32 %50, ptr %5, align 4, !dbg !1292
  br label %51, !dbg !1293

51:                                               ; preds = %48, %45, %41
  br label %52

52:                                               ; preds = %51, %39
  %53 = load i32, ptr %5, align 4, !dbg !1294
  %54 = icmp ne i32 %53, 0, !dbg !1294
  br i1 %54, label %55, label %59, !dbg !1294

55:                                               ; preds = %52
  %56 = load i32, ptr %5, align 4, !dbg !1296
  %57 = load ptr, ptr %3, align 8, !dbg !1298
  %58 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %57), !dbg !1299
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %56, ptr noundef @.str.89, ptr noundef %58), !dbg !1300
  store i1 false, ptr %2, align 1, !dbg !1301
  br label %60, !dbg !1301

59:                                               ; preds = %52
  store i1 true, ptr %2, align 1, !dbg !1302
  br label %60, !dbg !1302

60:                                               ; preds = %59, %55, %21
  %61 = load i1, ptr %2, align 1, !dbg !1303
  ret i1 %61, !dbg !1303
}

declare i32 @rpl_fclose(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #9

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strspn(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #5

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #9

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strcspn(ptr noundef, ptr noundef) #5

declare i64 @fwrite_unlocked(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #5

declare void @emit_bug_reporting_address() #2

declare ptr @rpl_re_compile_pattern(ptr noundef, i64 noundef, ptr noundef) #2

declare noalias ptr @rpl_fopen(ptr noundef, ptr noundef) #2

declare ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) #2

declare void @fadvise(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_file(ptr noundef %0) #3 !dbg !1304 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1307, !DIExpression(), !1308)
  br label %3, !dbg !1309

3:                                                ; preds = %18, %1
  %4 = load ptr, ptr %2, align 8, !dbg !1310
  %5 = call ptr @readlinebuffer(ptr noundef @line_buf, ptr noundef %4), !dbg !1311
  %6 = icmp ne ptr %5, null, !dbg !1309
  br i1 %6, label %7, label %19, !dbg !1309

7:                                                ; preds = %3
  %8 = call i32 @check_section(), !dbg !1312
  switch i32 %8, label %13 [
    i32 0, label %9
    i32 1, label %10
    i32 2, label %11
    i32 3, label %12
  ], !dbg !1314

9:                                                ; preds = %7
  call void @proc_header(), !dbg !1315
  br label %13, !dbg !1317

10:                                               ; preds = %7
  call void @proc_body(), !dbg !1318
  br label %13, !dbg !1319

11:                                               ; preds = %7
  call void @proc_footer(), !dbg !1320
  br label %13, !dbg !1321

12:                                               ; preds = %7
  call void @proc_text(), !dbg !1322
  br label %13, !dbg !1323

13:                                               ; preds = %7, %12, %11, %10, %9
  %14 = load ptr, ptr @stdout, align 8, !dbg !1324
  %15 = call i32 @ferror_unlocked(ptr noundef %14) #11, !dbg !1326
  %16 = icmp ne i32 %15, 0, !dbg !1326
  br i1 %16, label %17, label %18, !dbg !1326

17:                                               ; preds = %13
  call void @write_error(), !dbg !1327
  br label %18, !dbg !1327

18:                                               ; preds = %17, %13
  br label %3, !dbg !1309, !llvm.loop !1328

19:                                               ; preds = %3
  ret void, !dbg !1330
}

; Function Attrs: nounwind
declare i32 @ferror_unlocked(ptr noundef) #1

; Function Attrs: nounwind
declare void @clearerr_unlocked(ptr noundef) #1

declare ptr @readlinebuffer(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_section() #3 !dbg !1331 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
    #dbg_declare(ptr %2, !1334, !DIExpression(), !1335)
  %3 = load i64, ptr getelementptr inbounds nuw (%struct.linebuffer, ptr @line_buf, i32 0, i32 1), align 8, !dbg !1336
  %4 = sub nsw i64 %3, 1, !dbg !1337
  store i64 %4, ptr %2, align 8, !dbg !1335
  %5 = load i64, ptr %2, align 8, !dbg !1338
  %6 = load i64, ptr @section_del_len, align 8, !dbg !1340
  %7 = icmp ult i64 %5, %6, !dbg !1341
  br i1 %7, label %17, label %8, !dbg !1342

8:                                                ; preds = %0
  %9 = load i64, ptr @footer_del_len, align 8, !dbg !1343
  %10 = load i64, ptr @section_del_len, align 8, !dbg !1344
  %11 = icmp ult i64 %9, %10, !dbg !1345
  br i1 %11, label %17, label %12, !dbg !1346

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds nuw (%struct.linebuffer, ptr @line_buf, i32 0, i32 2), align 8, !dbg !1347
  %14 = load ptr, ptr @section_del, align 8, !dbg !1348
  %15 = load i64, ptr @section_del_len, align 8, !dbg !1349
  %16 = call zeroext i1 @memeq(ptr noundef %13, ptr noundef %14, i64 noundef %15), !dbg !1350
  br i1 %16, label %18, label %17, !dbg !1346

17:                                               ; preds = %12, %8, %0
  store i32 3, ptr %1, align 4, !dbg !1351
  br label %49, !dbg !1351

18:                                               ; preds = %12
  %19 = load i64, ptr %2, align 8, !dbg !1352
  %20 = load i64, ptr @header_del_len, align 8, !dbg !1354
  %21 = icmp eq i64 %19, %20, !dbg !1355
  br i1 %21, label %22, label %28, !dbg !1356

22:                                               ; preds = %18
  %23 = load ptr, ptr getelementptr inbounds nuw (%struct.linebuffer, ptr @line_buf, i32 0, i32 2), align 8, !dbg !1357
  %24 = load ptr, ptr @header_del, align 8, !dbg !1358
  %25 = load i64, ptr @header_del_len, align 8, !dbg !1359
  %26 = call zeroext i1 @memeq(ptr noundef %23, ptr noundef %24, i64 noundef %25), !dbg !1360
  br i1 %26, label %27, label %28, !dbg !1356

27:                                               ; preds = %22
  store i32 0, ptr %1, align 4, !dbg !1361
  br label %49, !dbg !1361

28:                                               ; preds = %22, %18
  %29 = load i64, ptr %2, align 8, !dbg !1362
  %30 = load i64, ptr @body_del_len, align 8, !dbg !1364
  %31 = icmp eq i64 %29, %30, !dbg !1365
  br i1 %31, label %32, label %38, !dbg !1366

32:                                               ; preds = %28
  %33 = load ptr, ptr getelementptr inbounds nuw (%struct.linebuffer, ptr @line_buf, i32 0, i32 2), align 8, !dbg !1367
  %34 = load ptr, ptr @body_del, align 8, !dbg !1368
  %35 = load i64, ptr @body_del_len, align 8, !dbg !1369
  %36 = call zeroext i1 @memeq(ptr noundef %33, ptr noundef %34, i64 noundef %35), !dbg !1370
  br i1 %36, label %37, label %38, !dbg !1366

37:                                               ; preds = %32
  store i32 1, ptr %1, align 4, !dbg !1371
  br label %49, !dbg !1371

38:                                               ; preds = %32, %28
  %39 = load i64, ptr %2, align 8, !dbg !1372
  %40 = load i64, ptr @footer_del_len, align 8, !dbg !1374
  %41 = icmp eq i64 %39, %40, !dbg !1375
  br i1 %41, label %42, label %48, !dbg !1376

42:                                               ; preds = %38
  %43 = load ptr, ptr getelementptr inbounds nuw (%struct.linebuffer, ptr @line_buf, i32 0, i32 2), align 8, !dbg !1377
  %44 = load ptr, ptr @footer_del, align 8, !dbg !1378
  %45 = load i64, ptr @footer_del_len, align 8, !dbg !1379
  %46 = call zeroext i1 @memeq(ptr noundef %43, ptr noundef %44, i64 noundef %45), !dbg !1380
  br i1 %46, label %47, label %48, !dbg !1376

47:                                               ; preds = %42
  store i32 2, ptr %1, align 4, !dbg !1381
  br label %49, !dbg !1381

48:                                               ; preds = %42, %38
  store i32 3, ptr %1, align 4, !dbg !1382
  br label %49, !dbg !1382

49:                                               ; preds = %48, %47, %37, %27, %17
  %50 = load i32, ptr %1, align 4, !dbg !1383
  ret i32 %50, !dbg !1383
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_header() #3 !dbg !1384 {
  %1 = load ptr, ptr @header_type, align 8, !dbg !1385
  store ptr %1, ptr @current_type, align 8, !dbg !1386
  store ptr @header_regex, ptr @current_regex, align 8, !dbg !1387
  call void @reset_lineno(), !dbg !1388
  %2 = call i32 @putchar_unlocked(i32 noundef 10), !dbg !1389
  ret void, !dbg !1390
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_body() #3 !dbg !1391 {
  %1 = load ptr, ptr @body_type, align 8, !dbg !1392
  store ptr %1, ptr @current_type, align 8, !dbg !1393
  store ptr @body_regex, ptr @current_regex, align 8, !dbg !1394
  call void @reset_lineno(), !dbg !1395
  %2 = call i32 @putchar_unlocked(i32 noundef 10), !dbg !1396
  ret void, !dbg !1397
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_footer() #3 !dbg !1398 {
  %1 = load ptr, ptr @footer_type, align 8, !dbg !1399
  store ptr %1, ptr @current_type, align 8, !dbg !1400
  store ptr @footer_regex, ptr @current_regex, align 8, !dbg !1401
  call void @reset_lineno(), !dbg !1402
  %2 = call i32 @putchar_unlocked(i32 noundef 10), !dbg !1403
  ret void, !dbg !1404
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_text() #3 !dbg !520 {
  %1 = load ptr, ptr @current_type, align 8, !dbg !1405
  %2 = load i8, ptr %1, align 1, !dbg !1406
  %3 = sext i8 %2 to i32, !dbg !1406
  switch i32 %3, label %54 [
    i32 97, label %4
    i32 116, label %23
    i32 110, label %32
    i32 112, label %36
  ], !dbg !1407

4:                                                ; preds = %0
  %5 = load i64, ptr @blank_join, align 8, !dbg !1408
  %6 = icmp sgt i64 %5, 1, !dbg !1411
  br i1 %6, label %7, label %21, !dbg !1411

7:                                                ; preds = %4
  %8 = load i64, ptr getelementptr inbounds nuw (%struct.linebuffer, ptr @line_buf, i32 0, i32 1), align 8, !dbg !1412
  %9 = icmp slt i64 1, %8, !dbg !1415
  br i1 %9, label %15, label %10, !dbg !1416

10:                                               ; preds = %7
  %11 = load i64, ptr @proc_text.blank_lines, align 8, !dbg !1417
  %12 = add nsw i64 %11, 1, !dbg !1417
  store i64 %12, ptr @proc_text.blank_lines, align 8, !dbg !1417
  %13 = load i64, ptr @blank_join, align 8, !dbg !1418
  %14 = icmp eq i64 %12, %13, !dbg !1419
  br i1 %14, label %15, label %16, !dbg !1416

15:                                               ; preds = %10, %7
  call void @print_lineno(), !dbg !1420
  store i64 0, ptr @proc_text.blank_lines, align 8, !dbg !1422
  br label %20, !dbg !1423

16:                                               ; preds = %10
  %17 = load ptr, ptr @print_no_line_fmt, align 8, !dbg !1424
  %18 = load ptr, ptr @stdout, align 8, !dbg !1425
  %19 = call i32 @fputs_unlocked(ptr noundef %17, ptr noundef %18), !dbg !1426
  br label %20

20:                                               ; preds = %16, %15
  br label %22, !dbg !1427

21:                                               ; preds = %4
  call void @print_lineno(), !dbg !1428
  br label %22

22:                                               ; preds = %21, %20
  br label %54, !dbg !1429

23:                                               ; preds = %0
  %24 = load i64, ptr getelementptr inbounds nuw (%struct.linebuffer, ptr @line_buf, i32 0, i32 1), align 8, !dbg !1430
  %25 = icmp slt i64 1, %24, !dbg !1432
  br i1 %25, label %26, label %27, !dbg !1432

26:                                               ; preds = %23
  call void @print_lineno(), !dbg !1433
  br label %31, !dbg !1433

27:                                               ; preds = %23
  %28 = load ptr, ptr @print_no_line_fmt, align 8, !dbg !1434
  %29 = load ptr, ptr @stdout, align 8, !dbg !1435
  %30 = call i32 @fputs_unlocked(ptr noundef %28, ptr noundef %29), !dbg !1436
  br label %31

31:                                               ; preds = %27, %26
  br label %54, !dbg !1437

32:                                               ; preds = %0
  %33 = load ptr, ptr @print_no_line_fmt, align 8, !dbg !1438
  %34 = load ptr, ptr @stdout, align 8, !dbg !1439
  %35 = call i32 @fputs_unlocked(ptr noundef %33, ptr noundef %34), !dbg !1440
  br label %54, !dbg !1441

36:                                               ; preds = %0
  %37 = load ptr, ptr @current_regex, align 8, !dbg !1442
  %38 = load ptr, ptr getelementptr inbounds nuw (%struct.linebuffer, ptr @line_buf, i32 0, i32 2), align 8, !dbg !1443
  %39 = load i64, ptr getelementptr inbounds nuw (%struct.linebuffer, ptr @line_buf, i32 0, i32 1), align 8, !dbg !1444
  %40 = sub nsw i64 %39, 1, !dbg !1445
  %41 = load i64, ptr getelementptr inbounds nuw (%struct.linebuffer, ptr @line_buf, i32 0, i32 1), align 8, !dbg !1446
  %42 = sub nsw i64 %41, 1, !dbg !1447
  %43 = call i64 @rpl_re_search(ptr noundef %37, ptr noundef %38, i64 noundef %40, i64 noundef 0, i64 noundef %42, ptr noundef null), !dbg !1448
  switch i64 %43, label %52 [
    i64 -2, label %44
    i64 -1, label %48
  ], !dbg !1449

44:                                               ; preds = %36
  %45 = call ptr @__errno_location() #14, !dbg !1450
  %46 = load i32, ptr %45, align 4, !dbg !1450
  %47 = call ptr @gettext(ptr noundef @.str.94) #11, !dbg !1452
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %46, ptr noundef %47), !dbg !1453
  unreachable, !dbg !1453

48:                                               ; preds = %36
  %49 = load ptr, ptr @print_no_line_fmt, align 8, !dbg !1454
  %50 = load ptr, ptr @stdout, align 8, !dbg !1455
  %51 = call i32 @fputs_unlocked(ptr noundef %49, ptr noundef %50), !dbg !1456
  br label %53, !dbg !1457

52:                                               ; preds = %36
  call void @print_lineno(), !dbg !1458
  br label %53, !dbg !1459

53:                                               ; preds = %52, %48
  br label %54, !dbg !1460

54:                                               ; preds = %53, %0, %32, %31, %22
  %55 = load ptr, ptr getelementptr inbounds nuw (%struct.linebuffer, ptr @line_buf, i32 0, i32 2), align 8, !dbg !1461
  %56 = load i64, ptr getelementptr inbounds nuw (%struct.linebuffer, ptr @line_buf, i32 0, i32 1), align 8, !dbg !1462
  %57 = load ptr, ptr @stdout, align 8, !dbg !1463
  %58 = call i64 @fwrite_unlocked(ptr noundef %55, i64 noundef 1, i64 noundef %56, ptr noundef %57), !dbg !1464
  ret void, !dbg !1465
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_error() #3 !dbg !1466 {
  %1 = alloca i32, align 4
    #dbg_declare(ptr %1, !1467, !DIExpression(), !1468)
  %2 = call ptr @__errno_location() #14, !dbg !1469
  %3 = load i32, ptr %2, align 4, !dbg !1469
  store i32 %3, ptr %1, align 4, !dbg !1468
  %4 = load ptr, ptr @stdout, align 8, !dbg !1470
  %5 = call i32 @fflush_unlocked(ptr noundef %4), !dbg !1471
  %6 = load ptr, ptr @stdout, align 8, !dbg !1472
  %7 = call i32 @fpurge(ptr noundef %6), !dbg !1473
  %8 = load ptr, ptr @stdout, align 8, !dbg !1474
  call void @clearerr_unlocked(ptr noundef %8) #11, !dbg !1475
  %9 = load i32, ptr %1, align 4, !dbg !1476
  %10 = call ptr @gettext(ptr noundef @.str.96) #11, !dbg !1477
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %9, ptr noundef %10), !dbg !1478
  unreachable, !dbg !1478
}

declare zeroext i1 @memeq(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_lineno() #3 !dbg !1479 {
  %1 = load i8, ptr @reset_numbers, align 1, !dbg !1480
  %2 = trunc i8 %1 to i1, !dbg !1480
  br i1 %2, label %3, label %5, !dbg !1480

3:                                                ; preds = %0
  %4 = load i64, ptr @starting_line_number, align 8, !dbg !1482
  store i64 %4, ptr @line_no, align 8, !dbg !1484
  store i8 0, ptr @line_no_overflow, align 1, !dbg !1485
  br label %5, !dbg !1486

5:                                                ; preds = %3, %0
  ret void, !dbg !1487
}

declare i32 @putchar_unlocked(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_lineno() #3 !dbg !1488 {
  %1 = load i8, ptr @line_no_overflow, align 1, !dbg !1489
  %2 = trunc i8 %1 to i1, !dbg !1489
  br i1 %2, label %3, label %5, !dbg !1489

3:                                                ; preds = %0
  %4 = call ptr @gettext(ptr noundef @.str.95) #11, !dbg !1491
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %4), !dbg !1492
  unreachable, !dbg !1492

5:                                                ; preds = %0
  %6 = load ptr, ptr @lineno_format, align 8, !dbg !1493
  %7 = load i32, ptr @lineno_width, align 4, !dbg !1494
  %8 = load i64, ptr @line_no, align 8, !dbg !1495
  %9 = load ptr, ptr @separator_str, align 8, !dbg !1496
  %10 = call i32 (ptr, ...) @rpl_printf(ptr noundef %6, i32 noundef %7, i64 noundef %8, ptr noundef %9), !dbg !1497
  %11 = load i64, ptr @line_no, align 8, !dbg !1498
  %12 = load i64, ptr @page_incr, align 8, !dbg !1500
  %13 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %11, i64 %12), !dbg !1501
  %14 = extractvalue { i64, i1 } %13, 1, !dbg !1501
  %15 = extractvalue { i64, i1 } %13, 0, !dbg !1501
  store i64 %15, ptr @line_no, align 8, !dbg !1501
  br i1 %14, label %16, label %17, !dbg !1501

16:                                               ; preds = %5
  store i8 1, ptr @line_no_overflow, align 1, !dbg !1502
  br label %17, !dbg !1503

17:                                               ; preds = %16, %5
  ret void, !dbg !1504
}

declare i64 @rpl_re_search(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #10

declare i32 @fflush_unlocked(ptr noundef) #2

declare i32 @fpurge(ptr noundef) #2

attributes #0 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { noreturn }
attributes #16 = { allocsize(0) }

!llvm.dbg.cu = !{!106}
!llvm.module.flags = !{!529, !530, !531, !532, !533, !534, !535}
!llvm.ident = !{!536}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 178, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/nl.c", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "07c189a22e7a32e0222ef52bf431f505")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 62)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 192, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 3)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 192, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 560, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 70)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !24, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 198, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 576, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 72)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 201, type: !31, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 204, type: !24, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 207, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 624, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 78)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 210, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 75)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 213, type: !40, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 216, type: !45, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 219, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 73)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 222, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 71)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 225, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 50)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 226, type: !14, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2584, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 323)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 236, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1616, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 202)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 246, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1176, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 147)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 506, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 1)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 507, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 10)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 507, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 24)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 512, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 22)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "header_type", scope: !106, file: !2, line: 69, type: !230, isLocal: true, isDefinition: true)
!106 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, retainedTypes: !166, globals: !171, splitDebugInlining: false, nameTableKind: None)
!107 = !{!108, !116, !122, !137, !151, !160}
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !109, line: 24, baseType: !110, size: 32, elements: !111)
!109 = !DIFile(filename: "./lib/xdectoint.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!110 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!111 = !{!112, !113, !114, !115}
!112 = !DIEnumerator(name: "XTOINT_MIN_QUIET", value: 1)
!113 = !DIEnumerator(name: "XTOINT_MAX_QUIET", value: 2)
!114 = !DIEnumerator(name: "XTOINT_MIN_RANGE", value: 4)
!115 = !DIEnumerator(name: "XTOINT_MAX_RANGE", value: 8)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !117, line: 356, baseType: !118, size: 32, elements: !119)
!117 = !DIFile(filename: "src/system.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "6a9c30566098770bfb4561b49834f302")
!118 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!119 = !{!120, !121}
!120 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!121 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !123, line: 46, baseType: !110, size: 32, elements: !124)
!123 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!125 = !DIEnumerator(name: "_ISupper", value: 256)
!126 = !DIEnumerator(name: "_ISlower", value: 512)
!127 = !DIEnumerator(name: "_ISalpha", value: 1024)
!128 = !DIEnumerator(name: "_ISdigit", value: 2048)
!129 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!130 = !DIEnumerator(name: "_ISspace", value: 8192)
!131 = !DIEnumerator(name: "_ISprint", value: 16384)
!132 = !DIEnumerator(name: "_ISgraph", value: 32768)
!133 = !DIEnumerator(name: "_ISblank", value: 1)
!134 = !DIEnumerator(name: "_IScntrl", value: 2)
!135 = !DIEnumerator(name: "_ISpunct", value: 4)
!136 = !DIEnumerator(name: "_ISalnum", value: 8)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !138, line: 42, baseType: !110, size: 32, elements: !139)
!138 = !DIFile(filename: "./lib/quotearg.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!140 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!141 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!142 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!143 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!144 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!145 = !DIEnumerator(name: "c_quoting_style", value: 5)
!146 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!147 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!148 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!149 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!150 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !152, line: 44, baseType: !110, size: 32, elements: !153)
!152 = !DIFile(filename: "./lib/fadvise.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!153 = !{!154, !155, !156, !157, !158, !159}
!154 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!155 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!156 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!157 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!158 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!159 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "section", file: !2, line: 60, baseType: !110, size: 32, elements: !161)
!161 = !{!162, !163, !164, !165}
!162 = !DIEnumerator(name: "Header", value: 0)
!163 = !DIEnumerator(name: "Body", value: 1)
!164 = !DIEnumerator(name: "Footer", value: 2)
!165 = !DIEnumerator(name: "Text", value: 3)
!166 = !{!167, !168, !118, !169, !170}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!169 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!170 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!171 = !{!0, !7, !12, !17, !22, !27, !29, !34, !36, !38, !43, !48, !50, !52, !57, !62, !67, !69, !74, !79, !84, !89, !94, !99, !172, !177, !179, !181, !186, !191, !193, !198, !200, !202, !204, !209, !214, !219, !221, !226, !228, !232, !260, !262, !264, !269, !271, !273, !275, !277, !279, !281, !292, !298, !300, !305, !307, !313, !318, !320, !325, !330, !332, !334, !336, !338, !340, !342, !344, !349, !354, !356, !358, !360, !362, !364, !366, !371, !376, !381, !386, !388, !390, !392, !394, !396, !398, !400, !405, !410, !415, !417, !419, !421, !426, !428, !430, !432, !434, !439, !441, !446, !448, !450, !462, !464, !104, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !489, !491, !494, !496, !498, !503, !505, !507, !509, !511, !514, !516, !518, !523, !525, !527}
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !2, line: 521, type: !174, isLocal: true, isDefinition: true)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 35)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !2, line: 529, type: !9, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !2, line: 537, type: !174, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !2, line: 544, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 29)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !2, line: 549, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 30)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !2, line: 556, type: !174, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !2, line: 564, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 32)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !2, line: 568, type: !19, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !2, line: 570, type: !19, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !2, line: 572, type: !19, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !2, line: 576, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 34)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !2, line: 591, type: !211, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 2)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !2, line: 604, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 14)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !2, line: 604, type: !216, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !2, line: 604, type: !223, isLocal: true, isDefinition: true)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 16)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !2, line: 643, type: !211, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "current_type", scope: !106, file: !2, line: 75, type: !230, isLocal: true, isDefinition: true)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "body_regex", scope: !106, file: !2, line: 78, type: !234, isLocal: true, isDefinition: true)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_pattern_buffer", file: !235, line: 413, size: 512, elements: !236)
!235 = !DIFile(filename: "./lib/regex.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "c7ce0bd618e9dd1feda94c2b9b45d3f8")
!236 = !{!237, !240, !245, !246, !248, !249, !252, !253, !254, !255, !256, !257, !258, !259}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !234, file: !235, line: 417, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_dfa_t", file: !235, line: 417, flags: DIFlagFwdDecl)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !234, file: !235, line: 420, baseType: !241, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_long_size_t", file: !235, line: 49, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !243, line: 18, baseType: !244)
!243 = !DIFile(filename: "/usr/lib/llvm-22/lib/clang/22/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!244 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !234, file: !235, line: 423, baseType: !241, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "syntax", scope: !234, file: !235, line: 426, baseType: !247, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_syntax_t", file: !235, line: 71, baseType: !244)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap", scope: !234, file: !235, line: 431, baseType: !167, size: 64, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !234, file: !235, line: 437, baseType: !250, size: 64, offset: 320)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !234, file: !235, line: 440, baseType: !242, size: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_null", scope: !234, file: !235, line: 446, baseType: !110, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "regs_allocated", scope: !234, file: !235, line: 457, baseType: !110, size: 2, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap_accurate", scope: !234, file: !235, line: 461, baseType: !110, size: 1, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "no_sub", scope: !234, file: !235, line: 465, baseType: !110, size: 1, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "not_bol", scope: !234, file: !235, line: 469, baseType: !110, size: 1, offset: 453, flags: DIFlagBitField, extraData: i64 448)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "not_eol", scope: !234, file: !235, line: 472, baseType: !110, size: 1, offset: 454, flags: DIFlagBitField, extraData: i64 448)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "newline_anchor", scope: !234, file: !235, line: 475, baseType: !110, size: 1, offset: 455, flags: DIFlagBitField, extraData: i64 448)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "header_regex", scope: !106, file: !2, line: 81, type: !234, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "footer_regex", scope: !106, file: !2, line: 84, type: !234, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "body_fastmap", scope: !106, file: !2, line: 87, type: !266, isLocal: true, isDefinition: true)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 256)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(name: "header_fastmap", scope: !106, file: !2, line: 88, type: !266, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "footer_fastmap", scope: !106, file: !2, line: 89, type: !266, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(name: "section_del_len", scope: !106, file: !2, line: 101, type: !242, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(name: "header_del_len", scope: !106, file: !2, line: 107, type: !242, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(name: "body_del_len", scope: !106, file: !2, line: 113, type: !242, isLocal: true, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(name: "footer_del_len", scope: !106, file: !2, line: 119, type: !242, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(name: "line_buf", scope: !106, file: !2, line: 122, type: !283, isLocal: true, isDefinition: true)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !284, line: 32, size: 192, elements: !285)
!284 = !DIFile(filename: "./lib/linebuffer.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "e2597f62c7d5286d9e09d95cf657d3bc")
!285 = !{!286, !290, !291}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !283, file: !284, line: 34, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !288, line: 137, baseType: !289)
!288 = !DIFile(filename: "./lib/idx.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "a342c053ede588630cf36a09403114d3")
!289 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !283, file: !284, line: 35, baseType: !287, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !283, file: !284, line: 36, baseType: !167, size: 64, offset: 128)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(name: "line_no", scope: !106, file: !2, line: 146, type: !294, isLocal: true, isDefinition: true)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !295, line: 101, baseType: !296)
!295 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !297, line: 72, baseType: !289)
!297 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !106, file: !2, line: 152, type: !170, isLocal: true, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !117, line: 748, type: !302, isLocal: true, isDefinition: true)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 56)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !117, line: 755, type: !45, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !309, file: !117, line: 594, type: !118, isLocal: true, isDefinition: true)
!309 = distinct !DISubprogram(name: "oputs_", scope: !117, file: !117, line: 592, type: !310, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106, retainedNodes: !312)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !230, !230}
!312 = !{}
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !117, line: 604, type: !315, isLocal: true, isDefinition: true)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 5)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !117, line: 605, type: !315, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !117, line: 614, type: !322, isLocal: true, isDefinition: true)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 4)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !117, line: 639, type: !327, isLocal: true, isDefinition: true)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 6)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !117, line: 667, type: !211, isLocal: true, isDefinition: true)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !117, line: 667, type: !315, isLocal: true, isDefinition: true)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !117, line: 668, type: !322, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !117, line: 668, type: !19, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !117, line: 669, type: !315, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !117, line: 670, type: !327, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !117, line: 670, type: !327, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !117, line: 671, type: !346, isLocal: true, isDefinition: true)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 7)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !117, line: 672, type: !351, isLocal: true, isDefinition: true)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 8)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !117, line: 673, type: !91, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !117, line: 674, type: !91, isLocal: true, isDefinition: true)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !117, line: 675, type: !91, isLocal: true, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !117, line: 676, type: !91, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !117, line: 682, type: !346, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !117, line: 683, type: !91, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !117, line: 688, type: !368, isLocal: true, isDefinition: true)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 17)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !117, line: 688, type: !373, isLocal: true, isDefinition: true)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 40)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !117, line: 695, type: !378, isLocal: true, isDefinition: true)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 15)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !117, line: 695, type: !383, isLocal: true, isDefinition: true)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 61)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !117, line: 698, type: !19, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !117, line: 702, type: !315, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !117, line: 707, type: !315, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !117, line: 710, type: !351, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !117, line: 858, type: !223, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !117, line: 859, type: !101, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !117, line: 860, type: !378, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !117, line: 882, type: !402, isLocal: true, isDefinition: true)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 27)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !117, line: 884, type: !407, isLocal: true, isDefinition: true)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 51)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !117, line: 885, type: !412, isLocal: true, isDefinition: true)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 12)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !2, line: 156, type: !368, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !2, line: 157, type: !378, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !368, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !423, isLocal: true, isDefinition: true)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 21)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !378, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !2, line: 161, type: !412, isLocal: true, isDefinition: true)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !368, isLocal: true, isDefinition: true)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !368, isLocal: true, isDefinition: true)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !436, isLocal: true, isDefinition: true)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !437)
!437 = !{!438}
!438 = !DISubrange(count: 13)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !2, line: 165, type: !216, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !2, line: 166, type: !443, isLocal: true, isDefinition: true)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !444)
!444 = !{!445}
!445 = !DISubrange(count: 18)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !2, line: 167, type: !315, isLocal: true, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !2, line: 168, type: !351, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(name: "longopts", scope: !106, file: !2, line: 154, type: !452, isLocal: true, isDefinition: true)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 3584, elements: !217)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !455, line: 50, size: 256, elements: !456)
!455 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!456 = !{!457, !458, !459, !461}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !454, file: !455, line: 52, baseType: !230, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !454, file: !455, line: 55, baseType: !118, size: 32, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !454, file: !455, line: 56, baseType: !460, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !454, file: !455, line: 57, baseType: !118, size: 32, offset: 192)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !2, line: 287, type: !19, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !211, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !211, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(name: "body_type", scope: !106, file: !2, line: 66, type: !230, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(name: "footer_type", scope: !106, file: !2, line: 72, type: !230, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(name: "starting_line_number", scope: !106, file: !2, line: 128, type: !294, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(name: "page_incr", scope: !106, file: !2, line: 131, type: !294, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(name: "reset_numbers", scope: !106, file: !2, line: 134, type: !170, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(name: "blank_join", scope: !106, file: !2, line: 137, type: !294, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !211, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(name: "separator_str", scope: !106, file: !2, line: 95, type: !230, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(name: "lineno_width", scope: !106, file: !2, line: 140, type: !118, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(name: "FORMAT_LEFT", scope: !106, file: !2, line: 53, type: !488, isLocal: true, isDefinition: true)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 64, elements: !352)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(name: "lineno_format", scope: !106, file: !2, line: 143, type: !230, isLocal: true, isDefinition: true)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(name: "FORMAT_RIGHT_NOLZ", scope: !106, file: !2, line: 47, type: !493, isLocal: true, isDefinition: true)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 56, elements: !347)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(name: "FORMAT_RIGHT_LZ", scope: !106, file: !2, line: 50, type: !488, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(name: "section_del", scope: !106, file: !2, line: 98, type: !167, isLocal: true, isDefinition: true)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "DEFAULT_SECTION_DELIMITERS", scope: !106, file: !2, line: 56, type: !500, isLocal: true, isDefinition: true)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !501)
!501 = !{!502}
!502 = !DISubrange(count: 9)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(name: "header_del", scope: !106, file: !2, line: 104, type: !167, isLocal: true, isDefinition: true)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(name: "body_del", scope: !106, file: !2, line: 110, type: !167, isLocal: true, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(name: "footer_del", scope: !106, file: !2, line: 116, type: !167, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(name: "print_no_line_fmt", scope: !106, file: !2, line: 125, type: !167, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(name: "current_regex", scope: !106, file: !2, line: 92, type: !513, isLocal: true, isDefinition: true)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !2, line: 470, type: !211, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(name: "line_no_overflow", scope: !106, file: !2, line: 149, type: !170, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(name: "blank_lines", scope: !520, file: !2, line: 358, type: !294, isLocal: true, isDefinition: true)
!520 = distinct !DISubprogram(name: "proc_text", scope: !2, file: !2, line: 356, type: !521, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106)
!521 = !DISubroutineType(types: !522)
!522 = !{null}
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !2, line: 390, type: !174, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !2, line: 302, type: !423, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !117, line: 959, type: !412, isLocal: true, isDefinition: true)
!529 = !{i32 7, !"Dwarf Version", i32 5}
!530 = !{i32 2, !"Debug Info Version", i32 3}
!531 = !{i32 1, !"wchar_size", i32 4}
!532 = !{i32 8, !"PIC Level", i32 2}
!533 = !{i32 7, !"PIE Level", i32 2}
!534 = !{i32 7, !"uwtable", i32 2}
!535 = !{i32 7, !"frame-pointer", i32 2}
!536 = !{!"Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)"}
!537 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 175, type: !538, scopeLine: 176, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !312)
!538 = !DISubroutineType(types: !539)
!539 = !{null, !118}
!540 = !DILocalVariable(name: "status", arg: 1, scope: !537, file: !2, line: 175, type: !118)
!541 = !DILocation(line: 175, column: 12, scope: !537)
!542 = !DILocation(line: 177, column: 7, scope: !543)
!543 = distinct !DILexicalBlock(scope: !537, file: !2, line: 177, column: 7)
!544 = !DILocation(line: 177, column: 14, scope: !543)
!545 = !DILocation(line: 178, column: 5, scope: !543)
!546 = !DILocation(line: 178, column: 5, scope: !547)
!547 = distinct !DILexicalBlock(scope: !543, file: !2, line: 178, column: 5)
!548 = !DILocation(line: 181, column: 15, scope: !549)
!549 = distinct !DILexicalBlock(scope: !543, file: !2, line: 180, column: 5)
!550 = !DILocation(line: 184, column: 15, scope: !549)
!551 = !DILocation(line: 181, column: 7, scope: !549)
!552 = !DILocation(line: 185, column: 14, scope: !549)
!553 = !DILocation(line: 187, column: 5, scope: !549)
!554 = !DILocation(line: 185, column: 7, scope: !549)
!555 = !DILocation(line: 189, column: 7, scope: !549)
!556 = !DILocation(line: 190, column: 7, scope: !549)
!557 = !DILocation(line: 192, column: 14, scope: !549)
!558 = !DILocation(line: 192, column: 7, scope: !549)
!559 = !DILocation(line: 195, column: 14, scope: !549)
!560 = !DILocation(line: 195, column: 7, scope: !549)
!561 = !DILocation(line: 198, column: 14, scope: !549)
!562 = !DILocation(line: 198, column: 7, scope: !549)
!563 = !DILocation(line: 201, column: 14, scope: !549)
!564 = !DILocation(line: 201, column: 7, scope: !549)
!565 = !DILocation(line: 204, column: 14, scope: !549)
!566 = !DILocation(line: 204, column: 7, scope: !549)
!567 = !DILocation(line: 207, column: 14, scope: !549)
!568 = !DILocation(line: 207, column: 7, scope: !549)
!569 = !DILocation(line: 210, column: 14, scope: !549)
!570 = !DILocation(line: 210, column: 7, scope: !549)
!571 = !DILocation(line: 213, column: 14, scope: !549)
!572 = !DILocation(line: 213, column: 7, scope: !549)
!573 = !DILocation(line: 216, column: 14, scope: !549)
!574 = !DILocation(line: 216, column: 7, scope: !549)
!575 = !DILocation(line: 219, column: 14, scope: !549)
!576 = !DILocation(line: 219, column: 7, scope: !549)
!577 = !DILocation(line: 222, column: 14, scope: !549)
!578 = !DILocation(line: 222, column: 7, scope: !549)
!579 = !DILocation(line: 225, column: 14, scope: !549)
!580 = !DILocation(line: 225, column: 7, scope: !549)
!581 = !DILocation(line: 226, column: 14, scope: !549)
!582 = !DILocation(line: 226, column: 7, scope: !549)
!583 = !DILocation(line: 227, column: 14, scope: !549)
!584 = !DILocation(line: 235, column: 5, scope: !549)
!585 = !DILocation(line: 227, column: 7, scope: !549)
!586 = !DILocation(line: 236, column: 14, scope: !549)
!587 = !DILocation(line: 245, column: 5, scope: !549)
!588 = !DILocation(line: 236, column: 7, scope: !549)
!589 = !DILocation(line: 246, column: 14, scope: !549)
!590 = !DILocation(line: 254, column: 5, scope: !549)
!591 = !DILocation(line: 246, column: 7, scope: !549)
!592 = !DILocation(line: 255, column: 7, scope: !549)
!593 = !DILocation(line: 257, column: 9, scope: !537)
!594 = !DILocation(line: 257, column: 3, scope: !537)
!595 = distinct !DISubprogram(name: "emit_stdin_note", scope: !117, file: !117, line: 746, type: !521, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106)
!596 = !DILocation(line: 748, column: 10, scope: !595)
!597 = !DILocation(line: 750, column: 5, scope: !595)
!598 = !DILocation(line: 748, column: 3, scope: !595)
!599 = !DILocation(line: 751, column: 1, scope: !595)
!600 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !117, file: !117, line: 753, type: !521, scopeLine: 754, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106)
!601 = !DILocation(line: 755, column: 10, scope: !600)
!602 = !DILocation(line: 757, column: 5, scope: !600)
!603 = !DILocation(line: 755, column: 3, scope: !600)
!604 = !DILocation(line: 758, column: 1, scope: !600)
!605 = !DILocalVariable(name: "program", arg: 1, scope: !309, file: !117, line: 592, type: !230)
!606 = !DILocation(line: 592, column: 34, scope: !309)
!607 = !DILocalVariable(name: "option", arg: 2, scope: !309, file: !117, line: 592, type: !230)
!608 = !DILocation(line: 592, column: 55, scope: !309)
!609 = !DILocation(line: 600, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !309, file: !117, line: 600, column: 7)
!611 = !DILocation(line: 600, column: 19, scope: !610)
!612 = !DILocalVariable(name: "term", scope: !613, file: !117, line: 604, type: !230)
!613 = distinct !DILexicalBlock(scope: !610, file: !117, line: 601, column: 5)
!614 = !DILocation(line: 604, column: 19, scope: !613)
!615 = !DILocation(line: 604, column: 26, scope: !613)
!616 = !DILocation(line: 605, column: 23, scope: !613)
!617 = !DILocation(line: 605, column: 28, scope: !613)
!618 = !DILocation(line: 605, column: 33, scope: !613)
!619 = !DILocation(line: 605, column: 32, scope: !613)
!620 = !DILocation(line: 605, column: 38, scope: !613)
!621 = !DILocation(line: 605, column: 48, scope: !613)
!622 = !DILocation(line: 605, column: 41, scope: !613)
!623 = !DILocation(line: 605, column: 19, scope: !613)
!624 = !DILocation(line: 606, column: 5, scope: !613)
!625 = !DILocation(line: 607, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !309, file: !117, line: 607, column: 7)
!627 = !DILocation(line: 609, column: 14, scope: !628)
!628 = distinct !DILexicalBlock(scope: !626, file: !117, line: 608, column: 5)
!629 = !DILocation(line: 609, column: 22, scope: !628)
!630 = !DILocation(line: 609, column: 7, scope: !628)
!631 = !DILocation(line: 610, column: 7, scope: !628)
!632 = !DILocalVariable(name: "double_space", scope: !309, file: !117, line: 613, type: !170)
!633 = !DILocation(line: 613, column: 8, scope: !309)
!634 = !DILocalVariable(name: "first_word", scope: !309, file: !117, line: 614, type: !230)
!635 = !DILocation(line: 614, column: 15, scope: !309)
!636 = !DILocation(line: 614, column: 28, scope: !309)
!637 = !DILocation(line: 614, column: 45, scope: !309)
!638 = !DILocation(line: 614, column: 37, scope: !309)
!639 = !DILocation(line: 614, column: 35, scope: !309)
!640 = !DILocalVariable(name: "option_text", scope: !309, file: !117, line: 615, type: !230)
!641 = !DILocation(line: 615, column: 15, scope: !309)
!642 = !DILocation(line: 615, column: 37, scope: !309)
!643 = !DILocation(line: 615, column: 29, scope: !309)
!644 = !DILocation(line: 616, column: 8, scope: !645)
!645 = distinct !DILexicalBlock(scope: !309, file: !117, line: 616, column: 7)
!646 = !DILocation(line: 616, column: 7, scope: !645)
!647 = !DILocation(line: 618, column: 21, scope: !648)
!648 = distinct !DILexicalBlock(scope: !645, file: !117, line: 617, column: 5)
!649 = !DILocation(line: 618, column: 19, scope: !648)
!650 = !DILocation(line: 621, column: 20, scope: !648)
!651 = !DILocation(line: 622, column: 5, scope: !648)
!652 = !DILocation(line: 623, column: 12, scope: !653)
!653 = distinct !DILexicalBlock(scope: !645, file: !117, line: 623, column: 12)
!654 = !DILocation(line: 623, column: 27, scope: !653)
!655 = !DILocation(line: 623, column: 24, scope: !653)
!656 = !DILocalVariable(name: "s", scope: !657, file: !117, line: 627, type: !230)
!657 = distinct !DILexicalBlock(scope: !653, file: !117, line: 624, column: 5)
!658 = !DILocation(line: 627, column: 19, scope: !657)
!659 = !DILocation(line: 627, column: 23, scope: !657)
!660 = !DILocalVariable(name: "spaces", scope: !657, file: !117, line: 628, type: !242)
!661 = !DILocation(line: 628, column: 14, scope: !657)
!662 = !DILocation(line: 629, column: 7, scope: !657)
!663 = !DILocation(line: 629, column: 14, scope: !657)
!664 = !DILocation(line: 629, column: 18, scope: !657)
!665 = !DILocation(line: 629, column: 16, scope: !657)
!666 = !DILocation(line: 629, column: 30, scope: !657)
!667 = !DILocation(line: 629, column: 33, scope: !657)
!668 = !DILocation(line: 629, column: 40, scope: !657)
!669 = !DILocation(line: 0, scope: !657)
!670 = !DILocation(line: 630, column: 21, scope: !657)
!671 = !DILocation(line: 630, column: 32, scope: !657)
!672 = !DILocation(line: 630, column: 30, scope: !657)
!673 = !DILocation(line: 630, column: 20, scope: !657)
!674 = !DILocation(line: 630, column: 19, scope: !657)
!675 = !DILocation(line: 630, column: 16, scope: !657)
!676 = distinct !{!676, !662, !670, !677}
!677 = !{!"llvm.loop.mustprogress"}
!678 = !DILocation(line: 631, column: 11, scope: !679)
!679 = distinct !DILexicalBlock(scope: !657, file: !117, line: 631, column: 11)
!680 = !DILocation(line: 631, column: 18, scope: !679)
!681 = !DILocation(line: 634, column: 25, scope: !682)
!682 = distinct !DILexicalBlock(scope: !679, file: !117, line: 632, column: 9)
!683 = !DILocation(line: 634, column: 23, scope: !682)
!684 = !DILocation(line: 635, column: 24, scope: !682)
!685 = !DILocation(line: 636, column: 9, scope: !682)
!686 = !DILocation(line: 637, column: 5, scope: !657)
!687 = !DILocalVariable(name: "anchor_len", scope: !309, file: !117, line: 639, type: !242)
!688 = !DILocation(line: 639, column: 10, scope: !309)
!689 = !DILocation(line: 639, column: 32, scope: !309)
!690 = !DILocation(line: 639, column: 23, scope: !309)
!691 = !DILocalVariable(name: "desc_text", scope: !309, file: !117, line: 644, type: !230)
!692 = !DILocation(line: 644, column: 15, scope: !309)
!693 = !DILocation(line: 644, column: 27, scope: !309)
!694 = !DILocation(line: 644, column: 41, scope: !309)
!695 = !DILocation(line: 644, column: 39, scope: !309)
!696 = !DILocation(line: 645, column: 3, scope: !309)
!697 = !DILocation(line: 645, column: 11, scope: !309)
!698 = !DILocation(line: 645, column: 10, scope: !309)
!699 = !DILocation(line: 645, column: 21, scope: !309)
!700 = !DILocation(line: 645, column: 25, scope: !309)
!701 = !DILocation(line: 645, column: 24, scope: !309)
!702 = !DILocation(line: 645, column: 35, scope: !309)
!703 = !DILocation(line: 0, scope: !309)
!704 = !DILocation(line: 647, column: 12, scope: !705)
!705 = distinct !DILexicalBlock(scope: !706, file: !117, line: 647, column: 11)
!706 = distinct !DILexicalBlock(scope: !309, file: !117, line: 646, column: 5)
!707 = !DILocation(line: 647, column: 11, scope: !705)
!708 = !DILocation(line: 647, column: 22, scope: !705)
!709 = !DILocation(line: 647, column: 29, scope: !705)
!710 = !DILocation(line: 647, column: 34, scope: !705)
!711 = !DILocation(line: 647, column: 32, scope: !705)
!712 = !DILocation(line: 647, column: 49, scope: !705)
!713 = !DILocation(line: 648, column: 22, scope: !705)
!714 = !DILocation(line: 648, column: 9, scope: !705)
!715 = !DILocation(line: 649, column: 11, scope: !716)
!716 = distinct !DILexicalBlock(scope: !706, file: !117, line: 649, column: 11)
!717 = !DILocation(line: 649, column: 21, scope: !716)
!718 = !DILocation(line: 649, column: 20, scope: !716)
!719 = !DILocation(line: 651, column: 16, scope: !720)
!720 = distinct !DILexicalBlock(scope: !721, file: !117, line: 651, column: 15)
!721 = distinct !DILexicalBlock(scope: !716, file: !117, line: 650, column: 9)
!722 = !DILocation(line: 651, column: 15, scope: !720)
!723 = !DILocation(line: 651, column: 26, scope: !720)
!724 = !DILocation(line: 651, column: 34, scope: !720)
!725 = !DILocation(line: 651, column: 37, scope: !720)
!726 = !DILocation(line: 651, column: 48, scope: !720)
!727 = !DILocation(line: 651, column: 46, scope: !720)
!728 = !DILocation(line: 652, column: 13, scope: !720)
!729 = !DILocation(line: 655, column: 16, scope: !730)
!730 = distinct !DILexicalBlock(scope: !721, file: !117, line: 655, column: 15)
!731 = !DILocation(line: 655, column: 29, scope: !730)
!732 = !DILocation(line: 655, column: 34, scope: !730)
!733 = !DILocation(line: 655, column: 32, scope: !730)
!734 = !DILocation(line: 655, column: 49, scope: !730)
!735 = !DILocation(line: 656, column: 13, scope: !730)
!736 = !DILocation(line: 657, column: 9, scope: !721)
!737 = !DILocation(line: 659, column: 16, scope: !706)
!738 = distinct !{!738, !696, !739, !677}
!739 = !DILocation(line: 660, column: 5, scope: !309)
!740 = !DILocation(line: 663, column: 11, scope: !309)
!741 = !DILocation(line: 663, column: 22, scope: !309)
!742 = !DILocation(line: 663, column: 35, scope: !309)
!743 = !DILocation(line: 663, column: 33, scope: !309)
!744 = !DILocation(line: 663, column: 43, scope: !309)
!745 = !DILocation(line: 663, column: 3, scope: !309)
!746 = !DILocalVariable(name: "url_program", scope: !309, file: !117, line: 667, type: !230)
!747 = !DILocation(line: 667, column: 15, scope: !309)
!748 = !DILocation(line: 667, column: 38, scope: !309)
!749 = !DILocation(line: 667, column: 31, scope: !309)
!750 = !DILocation(line: 668, column: 38, scope: !309)
!751 = !DILocation(line: 668, column: 31, scope: !309)
!752 = !DILocation(line: 669, column: 38, scope: !309)
!753 = !DILocation(line: 669, column: 31, scope: !309)
!754 = !DILocation(line: 670, column: 38, scope: !309)
!755 = !DILocation(line: 670, column: 31, scope: !309)
!756 = !DILocation(line: 671, column: 38, scope: !309)
!757 = !DILocation(line: 671, column: 31, scope: !309)
!758 = !DILocation(line: 672, column: 38, scope: !309)
!759 = !DILocation(line: 672, column: 31, scope: !309)
!760 = !DILocation(line: 673, column: 38, scope: !309)
!761 = !DILocation(line: 673, column: 31, scope: !309)
!762 = !DILocation(line: 674, column: 38, scope: !309)
!763 = !DILocation(line: 674, column: 31, scope: !309)
!764 = !DILocation(line: 675, column: 38, scope: !309)
!765 = !DILocation(line: 675, column: 31, scope: !309)
!766 = !DILocation(line: 676, column: 38, scope: !309)
!767 = !DILocation(line: 676, column: 31, scope: !309)
!768 = !DILocation(line: 677, column: 31, scope: !309)
!769 = !DILocation(line: 682, column: 18, scope: !770)
!770 = distinct !DILexicalBlock(scope: !309, file: !117, line: 682, column: 7)
!771 = !DILocation(line: 682, column: 7, scope: !770)
!772 = !DILocation(line: 683, column: 7, scope: !770)
!773 = !DILocation(line: 683, column: 21, scope: !770)
!774 = !DILocation(line: 683, column: 10, scope: !770)
!775 = !DILocation(line: 689, column: 15, scope: !776)
!776 = distinct !DILexicalBlock(scope: !770, file: !117, line: 684, column: 5)
!777 = !DILocation(line: 689, column: 28, scope: !776)
!778 = !DILocation(line: 689, column: 47, scope: !776)
!779 = !DILocation(line: 689, column: 41, scope: !776)
!780 = !DILocation(line: 689, column: 59, scope: !776)
!781 = !DILocation(line: 688, column: 7, scope: !776)
!782 = !DILocation(line: 690, column: 5, scope: !776)
!783 = !DILocation(line: 695, column: 48, scope: !784)
!784 = distinct !DILexicalBlock(scope: !770, file: !117, line: 692, column: 5)
!785 = !DILocation(line: 696, column: 21, scope: !784)
!786 = !DILocation(line: 696, column: 15, scope: !784)
!787 = !DILocation(line: 696, column: 33, scope: !784)
!788 = !DILocation(line: 695, column: 7, scope: !784)
!789 = !DILocation(line: 698, column: 20, scope: !309)
!790 = !DILocation(line: 698, column: 3, scope: !309)
!791 = !DILocation(line: 702, column: 21, scope: !309)
!792 = !DILocation(line: 702, column: 3, scope: !309)
!793 = !DILocation(line: 705, column: 11, scope: !309)
!794 = !DILocation(line: 705, column: 26, scope: !309)
!795 = !DILocation(line: 705, column: 38, scope: !309)
!796 = !DILocation(line: 705, column: 36, scope: !309)
!797 = !DILocation(line: 705, column: 50, scope: !309)
!798 = !DILocation(line: 705, column: 3, scope: !309)
!799 = !DILocation(line: 707, column: 21, scope: !309)
!800 = !DILocation(line: 707, column: 3, scope: !309)
!801 = !DILocation(line: 710, column: 28, scope: !309)
!802 = !DILocation(line: 710, column: 3, scope: !309)
!803 = !DILocation(line: 714, column: 10, scope: !309)
!804 = !DILocation(line: 714, column: 21, scope: !309)
!805 = !DILocation(line: 714, column: 3, scope: !309)
!806 = !DILocation(line: 715, column: 1, scope: !309)
!807 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !117, file: !117, line: 855, type: !808, scopeLine: 856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106, retainedNodes: !312)
!808 = !DISubroutineType(types: !809)
!809 = !{null, !230}
!810 = !DILocalVariable(name: "program", arg: 1, scope: !807, file: !117, line: 855, type: !230)
!811 = !DILocation(line: 855, column: 34, scope: !807)
!812 = !DILocalVariable(name: "infomap", scope: !807, file: !117, line: 857, type: !813)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 896, elements: !347)
!814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !815)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !807, file: !117, line: 857, size: 128, elements: !816)
!816 = !{!817, !818}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !815, file: !117, line: 857, baseType: !230, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !815, file: !117, line: 857, baseType: !230, size: 64, offset: 64)
!819 = !DILocation(line: 857, column: 67, scope: !807)
!820 = !DILocalVariable(name: "node", scope: !807, file: !117, line: 867, type: !230)
!821 = !DILocation(line: 867, column: 15, scope: !807)
!822 = !DILocation(line: 867, column: 22, scope: !807)
!823 = !DILocalVariable(name: "map_prog", scope: !807, file: !117, line: 868, type: !824)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!825 = !DILocation(line: 868, column: 25, scope: !807)
!826 = !DILocation(line: 868, column: 36, scope: !807)
!827 = !DILocation(line: 870, column: 3, scope: !807)
!828 = !DILocation(line: 870, column: 10, scope: !807)
!829 = !DILocation(line: 870, column: 20, scope: !807)
!830 = !DILocation(line: 870, column: 28, scope: !807)
!831 = !DILocation(line: 870, column: 40, scope: !807)
!832 = !DILocation(line: 870, column: 49, scope: !807)
!833 = !DILocation(line: 870, column: 59, scope: !807)
!834 = !DILocation(line: 870, column: 33, scope: !807)
!835 = !DILocation(line: 870, column: 31, scope: !807)
!836 = !DILocation(line: 0, scope: !807)
!837 = !DILocation(line: 871, column: 13, scope: !807)
!838 = distinct !{!838, !827, !837, !677}
!839 = !DILocation(line: 873, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !807, file: !117, line: 873, column: 7)
!841 = !DILocation(line: 873, column: 17, scope: !840)
!842 = !DILocation(line: 874, column: 12, scope: !840)
!843 = !DILocation(line: 874, column: 22, scope: !840)
!844 = !DILocation(line: 874, column: 10, scope: !840)
!845 = !DILocation(line: 874, column: 5, scope: !840)
!846 = !DILocation(line: 876, column: 3, scope: !807)
!847 = !DILocalVariable(name: "url_program", scope: !807, file: !117, line: 881, type: !230)
!848 = !DILocation(line: 881, column: 15, scope: !807)
!849 = !DILocation(line: 881, column: 36, scope: !807)
!850 = !DILocation(line: 881, column: 29, scope: !807)
!851 = !DILocation(line: 881, column: 61, scope: !807)
!852 = !DILocation(line: 882, column: 11, scope: !807)
!853 = !DILocation(line: 883, column: 24, scope: !807)
!854 = !DILocation(line: 882, column: 3, scope: !807)
!855 = !DILocation(line: 884, column: 11, scope: !807)
!856 = !DILocation(line: 885, column: 11, scope: !807)
!857 = !DILocation(line: 885, column: 17, scope: !807)
!858 = !DILocation(line: 885, column: 25, scope: !807)
!859 = !DILocation(line: 885, column: 22, scope: !807)
!860 = !DILocation(line: 884, column: 3, scope: !807)
!861 = !DILocation(line: 886, column: 1, scope: !807)
!862 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 498, type: !863, scopeLine: 499, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !312)
!863 = !DISubroutineType(types: !864)
!864 = !{!118, !118, !865}
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!866 = !DILocalVariable(name: "argc", arg: 1, scope: !862, file: !2, line: 498, type: !118)
!867 = !DILocation(line: 498, column: 11, scope: !862)
!868 = !DILocalVariable(name: "argv", arg: 2, scope: !862, file: !2, line: 498, type: !865)
!869 = !DILocation(line: 498, column: 24, scope: !862)
!870 = !DILocalVariable(name: "c", scope: !862, file: !2, line: 500, type: !118)
!871 = !DILocation(line: 500, column: 7, scope: !862)
!872 = !DILocalVariable(name: "len", scope: !862, file: !2, line: 501, type: !242)
!873 = !DILocation(line: 501, column: 10, scope: !862)
!874 = !DILocalVariable(name: "ok", scope: !862, file: !2, line: 502, type: !170)
!875 = !DILocation(line: 502, column: 8, scope: !862)
!876 = !DILocation(line: 505, column: 21, scope: !862)
!877 = !DILocation(line: 505, column: 3, scope: !862)
!878 = !DILocation(line: 506, column: 3, scope: !862)
!879 = !DILocation(line: 507, column: 3, scope: !862)
!880 = !DILocation(line: 508, column: 3, scope: !862)
!881 = !DILocation(line: 510, column: 3, scope: !862)
!882 = !DILocation(line: 512, column: 3, scope: !862)
!883 = !DILocation(line: 512, column: 28, scope: !862)
!884 = !DILocation(line: 512, column: 34, scope: !862)
!885 = !DILocation(line: 512, column: 15, scope: !862)
!886 = !DILocation(line: 512, column: 13, scope: !862)
!887 = !DILocation(line: 514, column: 10, scope: !862)
!888 = !DILocation(line: 516, column: 15, scope: !889)
!889 = distinct !DILexicalBlock(scope: !862, file: !2, line: 515, column: 5)
!890 = !DILocation(line: 516, column: 7, scope: !889)
!891 = !DILocation(line: 519, column: 17, scope: !892)
!892 = distinct !DILexicalBlock(scope: !893, file: !2, line: 519, column: 15)
!893 = distinct !DILexicalBlock(scope: !889, file: !2, line: 517, column: 9)
!894 = !DILocation(line: 519, column: 15, scope: !892)
!895 = !DILocation(line: 521, column: 28, scope: !896)
!896 = distinct !DILexicalBlock(scope: !892, file: !2, line: 520, column: 13)
!897 = !DILocation(line: 522, column: 29, scope: !896)
!898 = !DILocation(line: 522, column: 22, scope: !896)
!899 = !DILocation(line: 521, column: 15, scope: !896)
!900 = !DILocation(line: 523, column: 18, scope: !896)
!901 = !DILocation(line: 524, column: 13, scope: !896)
!902 = !DILocation(line: 525, column: 11, scope: !893)
!903 = !DILocation(line: 527, column: 17, scope: !904)
!904 = distinct !DILexicalBlock(scope: !893, file: !2, line: 527, column: 15)
!905 = !DILocation(line: 527, column: 15, scope: !904)
!906 = !DILocation(line: 529, column: 28, scope: !907)
!907 = distinct !DILexicalBlock(scope: !904, file: !2, line: 528, column: 13)
!908 = !DILocation(line: 530, column: 29, scope: !907)
!909 = !DILocation(line: 530, column: 22, scope: !907)
!910 = !DILocation(line: 529, column: 15, scope: !907)
!911 = !DILocation(line: 531, column: 18, scope: !907)
!912 = !DILocation(line: 532, column: 13, scope: !907)
!913 = !DILocation(line: 533, column: 11, scope: !893)
!914 = !DILocation(line: 535, column: 17, scope: !915)
!915 = distinct !DILexicalBlock(scope: !893, file: !2, line: 535, column: 15)
!916 = !DILocation(line: 535, column: 15, scope: !915)
!917 = !DILocation(line: 537, column: 28, scope: !918)
!918 = distinct !DILexicalBlock(scope: !915, file: !2, line: 536, column: 13)
!919 = !DILocation(line: 538, column: 29, scope: !918)
!920 = !DILocation(line: 538, column: 22, scope: !918)
!921 = !DILocation(line: 537, column: 15, scope: !918)
!922 = !DILocation(line: 539, column: 18, scope: !918)
!923 = !DILocation(line: 540, column: 13, scope: !918)
!924 = !DILocation(line: 541, column: 11, scope: !893)
!925 = !DILocation(line: 543, column: 46, scope: !893)
!926 = !DILocation(line: 544, column: 46, scope: !893)
!927 = !DILocation(line: 543, column: 34, scope: !893)
!928 = !DILocation(line: 543, column: 32, scope: !893)
!929 = !DILocation(line: 546, column: 11, scope: !893)
!930 = !DILocation(line: 548, column: 35, scope: !893)
!931 = !DILocation(line: 549, column: 35, scope: !893)
!932 = !DILocation(line: 548, column: 23, scope: !893)
!933 = !DILocation(line: 548, column: 21, scope: !893)
!934 = !DILocation(line: 550, column: 11, scope: !893)
!935 = !DILocation(line: 552, column: 25, scope: !893)
!936 = !DILocation(line: 553, column: 11, scope: !893)
!937 = !DILocation(line: 555, column: 36, scope: !893)
!938 = !DILocation(line: 556, column: 36, scope: !893)
!939 = !DILocation(line: 555, column: 24, scope: !893)
!940 = !DILocation(line: 555, column: 22, scope: !893)
!941 = !DILocation(line: 558, column: 11, scope: !893)
!942 = !DILocation(line: 560, column: 27, scope: !893)
!943 = !DILocation(line: 560, column: 25, scope: !893)
!944 = !DILocation(line: 561, column: 11, scope: !893)
!945 = !DILocation(line: 563, column: 38, scope: !893)
!946 = !DILocation(line: 564, column: 38, scope: !893)
!947 = !DILocation(line: 563, column: 26, scope: !893)
!948 = !DILocation(line: 563, column: 24, scope: !893)
!949 = !DILocation(line: 566, column: 11, scope: !893)
!950 = !DILocation(line: 568, column: 22, scope: !951)
!951 = distinct !DILexicalBlock(scope: !893, file: !2, line: 568, column: 15)
!952 = !DILocation(line: 568, column: 15, scope: !951)
!953 = !DILocation(line: 569, column: 27, scope: !951)
!954 = !DILocation(line: 569, column: 13, scope: !951)
!955 = !DILocation(line: 570, column: 27, scope: !956)
!956 = distinct !DILexicalBlock(scope: !951, file: !2, line: 570, column: 20)
!957 = !DILocation(line: 570, column: 20, scope: !956)
!958 = !DILocation(line: 571, column: 27, scope: !956)
!959 = !DILocation(line: 571, column: 13, scope: !956)
!960 = !DILocation(line: 572, column: 27, scope: !961)
!961 = distinct !DILexicalBlock(scope: !956, file: !2, line: 572, column: 20)
!962 = !DILocation(line: 572, column: 20, scope: !961)
!963 = !DILocation(line: 573, column: 27, scope: !961)
!964 = !DILocation(line: 573, column: 13, scope: !961)
!965 = !DILocation(line: 576, column: 28, scope: !966)
!966 = distinct !DILexicalBlock(scope: !961, file: !2, line: 575, column: 13)
!967 = !DILocation(line: 577, column: 29, scope: !966)
!968 = !DILocation(line: 577, column: 22, scope: !966)
!969 = !DILocation(line: 576, column: 15, scope: !966)
!970 = !DILocation(line: 578, column: 18, scope: !966)
!971 = !DILocation(line: 580, column: 11, scope: !893)
!972 = !DILocation(line: 582, column: 25, scope: !893)
!973 = !DILocation(line: 582, column: 17, scope: !893)
!974 = !DILocation(line: 582, column: 15, scope: !893)
!975 = !DILocation(line: 583, column: 19, scope: !976)
!976 = distinct !DILexicalBlock(scope: !893, file: !2, line: 583, column: 15)
!977 = !DILocation(line: 583, column: 17, scope: !976)
!978 = !DILocalVariable(name: "p", scope: !979, file: !2, line: 585, type: !230)
!979 = distinct !DILexicalBlock(scope: !976, file: !2, line: 584, column: 13)
!980 = !DILocation(line: 585, column: 27, scope: !979)
!981 = !DILocation(line: 585, column: 31, scope: !979)
!982 = !DILocalVariable(name: "lim", scope: !979, file: !2, line: 586, type: !230)
!983 = !DILocation(line: 586, column: 27, scope: !979)
!984 = !DILocation(line: 586, column: 33, scope: !979)
!985 = !DILocation(line: 586, column: 37, scope: !979)
!986 = !DILocation(line: 586, column: 35, scope: !979)
!987 = !DILocalVariable(name: "n_chars", scope: !979, file: !2, line: 587, type: !118)
!988 = !DILocation(line: 587, column: 19, scope: !979)
!989 = !DILocation(line: 588, column: 15, scope: !979)
!990 = !DILocation(line: 588, column: 22, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !2, line: 588, column: 15)
!992 = distinct !DILexicalBlock(scope: !979, file: !2, line: 588, column: 15)
!993 = !DILocation(line: 588, column: 26, scope: !991)
!994 = !DILocation(line: 588, column: 24, scope: !991)
!995 = !DILocation(line: 588, column: 30, scope: !991)
!996 = !DILocation(line: 588, column: 33, scope: !991)
!997 = !DILocation(line: 588, column: 41, scope: !991)
!998 = !DILocation(line: 0, scope: !991)
!999 = !DILocation(line: 588, column: 15, scope: !992)
!1000 = !DILocation(line: 589, column: 35, scope: !991)
!1001 = !DILocation(line: 589, column: 38, scope: !991)
!1002 = !DILocation(line: 589, column: 24, scope: !991)
!1003 = !DILocation(line: 589, column: 43, scope: !991)
!1004 = !DILocation(line: 589, column: 21, scope: !991)
!1005 = !DILocation(line: 589, column: 19, scope: !991)
!1006 = !DILocation(line: 588, column: 46, scope: !991)
!1007 = !DILocation(line: 588, column: 15, scope: !991)
!1008 = distinct !{!1008, !999, !1009, !677}
!1009 = !DILocation(line: 589, column: 43, scope: !992)
!1010 = !DILocation(line: 590, column: 19, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !979, file: !2, line: 590, column: 19)
!1012 = !DILocation(line: 590, column: 27, scope: !1011)
!1013 = !DILocation(line: 591, column: 34, scope: !1011)
!1014 = !DILocation(line: 591, column: 47, scope: !1011)
!1015 = !DILocation(line: 591, column: 55, scope: !1011)
!1016 = !DILocation(line: 591, column: 25, scope: !1011)
!1017 = !DILocation(line: 591, column: 17, scope: !1011)
!1018 = !DILocation(line: 593, column: 31, scope: !1011)
!1019 = !DILocation(line: 593, column: 29, scope: !1011)
!1020 = !DILocation(line: 594, column: 13, scope: !979)
!1021 = !DILocation(line: 597, column: 19, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !2, line: 597, column: 19)
!1023 = distinct !DILexicalBlock(scope: !976, file: !2, line: 596, column: 13)
!1024 = !DILocation(line: 597, column: 23, scope: !1022)
!1025 = !DILocation(line: 598, column: 33, scope: !1022)
!1026 = !DILocation(line: 598, column: 32, scope: !1022)
!1027 = !DILocation(line: 598, column: 18, scope: !1022)
!1028 = !DILocation(line: 598, column: 30, scope: !1022)
!1029 = !DILocation(line: 598, column: 17, scope: !1022)
!1030 = !DILocation(line: 600, column: 31, scope: !1022)
!1031 = !DILocation(line: 600, column: 29, scope: !1022)
!1032 = !DILocation(line: 602, column: 11, scope: !893)
!1033 = !DILocation(line: 603, column: 9, scope: !893)
!1034 = !DILocation(line: 604, column: 9, scope: !893)
!1035 = !DILocation(line: 604, column: 49, scope: !893)
!1036 = !DILocation(line: 606, column: 14, scope: !893)
!1037 = !DILocation(line: 607, column: 11, scope: !893)
!1038 = distinct !{!1038, !882, !1039, !677}
!1039 = !DILocation(line: 609, column: 5, scope: !862)
!1040 = !DILocation(line: 611, column: 8, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !862, file: !2, line: 611, column: 7)
!1042 = !DILocation(line: 611, column: 7, scope: !1041)
!1043 = !DILocation(line: 612, column: 5, scope: !1041)
!1044 = !DILocation(line: 615, column: 35, scope: !862)
!1045 = !DILocation(line: 615, column: 27, scope: !862)
!1046 = !DILocation(line: 615, column: 25, scope: !862)
!1047 = !DILocation(line: 615, column: 19, scope: !862)
!1048 = !DILocation(line: 617, column: 20, scope: !862)
!1049 = !DILocation(line: 617, column: 24, scope: !862)
!1050 = !DILocation(line: 617, column: 18, scope: !862)
!1051 = !DILocation(line: 618, column: 25, scope: !862)
!1052 = !DILocation(line: 618, column: 40, scope: !862)
!1053 = !DILocation(line: 618, column: 16, scope: !862)
!1054 = !DILocation(line: 618, column: 14, scope: !862)
!1055 = !DILocation(line: 619, column: 27, scope: !862)
!1056 = !DILocation(line: 619, column: 39, scope: !862)
!1057 = !DILocation(line: 619, column: 19, scope: !862)
!1058 = !DILocation(line: 619, column: 53, scope: !862)
!1059 = !DILocation(line: 619, column: 11, scope: !862)
!1060 = !DILocation(line: 619, column: 67, scope: !862)
!1061 = !DILocation(line: 619, column: 3, scope: !862)
!1062 = !DILocation(line: 621, column: 18, scope: !862)
!1063 = !DILocation(line: 621, column: 22, scope: !862)
!1064 = !DILocation(line: 621, column: 16, scope: !862)
!1065 = !DILocation(line: 622, column: 14, scope: !862)
!1066 = !DILocation(line: 622, column: 27, scope: !862)
!1067 = !DILocation(line: 622, column: 25, scope: !862)
!1068 = !DILocation(line: 622, column: 12, scope: !862)
!1069 = !DILocation(line: 624, column: 20, scope: !862)
!1070 = !DILocation(line: 624, column: 18, scope: !862)
!1071 = !DILocation(line: 625, column: 16, scope: !862)
!1072 = !DILocation(line: 625, column: 27, scope: !862)
!1073 = !DILocation(line: 625, column: 25, scope: !862)
!1074 = !DILocation(line: 625, column: 14, scope: !862)
!1075 = !DILocation(line: 628, column: 3, scope: !862)
!1076 = !DILocation(line: 631, column: 17, scope: !862)
!1077 = !DILocation(line: 631, column: 9, scope: !862)
!1078 = !DILocation(line: 631, column: 7, scope: !862)
!1079 = !DILocation(line: 632, column: 32, scope: !862)
!1080 = !DILocation(line: 632, column: 47, scope: !862)
!1081 = !DILocation(line: 632, column: 45, scope: !862)
!1082 = !DILocation(line: 632, column: 51, scope: !862)
!1083 = !DILocation(line: 632, column: 23, scope: !862)
!1084 = !DILocation(line: 632, column: 21, scope: !862)
!1085 = !DILocation(line: 633, column: 11, scope: !862)
!1086 = !DILocation(line: 633, column: 35, scope: !862)
!1087 = !DILocation(line: 633, column: 50, scope: !862)
!1088 = !DILocation(line: 633, column: 48, scope: !862)
!1089 = !DILocation(line: 633, column: 3, scope: !862)
!1090 = !DILocation(line: 634, column: 3, scope: !862)
!1091 = !DILocation(line: 634, column: 21, scope: !862)
!1092 = !DILocation(line: 634, column: 36, scope: !862)
!1093 = !DILocation(line: 634, column: 34, scope: !862)
!1094 = !DILocation(line: 634, column: 41, scope: !862)
!1095 = !DILocation(line: 636, column: 13, scope: !862)
!1096 = !DILocation(line: 636, column: 11, scope: !862)
!1097 = !DILocation(line: 637, column: 18, scope: !862)
!1098 = !DILocation(line: 637, column: 16, scope: !862)
!1099 = !DILocation(line: 638, column: 17, scope: !862)
!1100 = !DILocation(line: 642, column: 7, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !862, file: !2, line: 642, column: 7)
!1102 = !DILocation(line: 642, column: 17, scope: !1101)
!1103 = !DILocation(line: 642, column: 14, scope: !1101)
!1104 = !DILocation(line: 643, column: 10, scope: !1101)
!1105 = !DILocation(line: 643, column: 8, scope: !1101)
!1106 = !DILocation(line: 643, column: 5, scope: !1101)
!1107 = !DILocation(line: 645, column: 5, scope: !1101)
!1108 = !DILocation(line: 645, column: 12, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 645, column: 5)
!1110 = distinct !DILexicalBlock(scope: !1101, file: !2, line: 645, column: 5)
!1111 = !DILocation(line: 645, column: 21, scope: !1109)
!1112 = !DILocation(line: 645, column: 19, scope: !1109)
!1113 = !DILocation(line: 645, column: 5, scope: !1110)
!1114 = !DILocation(line: 646, column: 22, scope: !1109)
!1115 = !DILocation(line: 646, column: 27, scope: !1109)
!1116 = !DILocation(line: 646, column: 13, scope: !1109)
!1117 = !DILocation(line: 646, column: 10, scope: !1109)
!1118 = !DILocation(line: 646, column: 7, scope: !1109)
!1119 = !DILocation(line: 645, column: 33, scope: !1109)
!1120 = !DILocation(line: 645, column: 5, scope: !1109)
!1121 = distinct !{!1121, !1113, !1122, !677}
!1122 = !DILocation(line: 646, column: 34, scope: !1110)
!1123 = !DILocation(line: 648, column: 7, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !862, file: !2, line: 648, column: 7)
!1125 = !DILocation(line: 648, column: 23, scope: !1124)
!1126 = !DILocation(line: 648, column: 34, scope: !1124)
!1127 = !DILocation(line: 648, column: 26, scope: !1124)
!1128 = !DILocation(line: 648, column: 41, scope: !1124)
!1129 = !DILocation(line: 649, column: 26, scope: !1124)
!1130 = !DILocation(line: 649, column: 5, scope: !1124)
!1131 = !DILocation(line: 651, column: 10, scope: !862)
!1132 = !DILocation(line: 651, column: 3, scope: !862)
!1133 = distinct !DISubprogram(name: "build_type_arg", scope: !2, file: !2, line: 264, type: !1134, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106, retainedNodes: !312)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!170, !1136, !513, !167}
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!1137 = !DILocalVariable(name: "typep", arg: 1, scope: !1133, file: !2, line: 264, type: !1136)
!1138 = !DILocation(line: 264, column: 30, scope: !1133)
!1139 = !DILocalVariable(name: "regexp", arg: 2, scope: !1133, file: !2, line: 265, type: !513)
!1140 = !DILocation(line: 265, column: 43, scope: !1133)
!1141 = !DILocalVariable(name: "fastmap", arg: 3, scope: !1133, file: !2, line: 265, type: !167)
!1142 = !DILocation(line: 265, column: 57, scope: !1133)
!1143 = !DILocalVariable(name: "errmsg", scope: !1133, file: !2, line: 267, type: !230)
!1144 = !DILocation(line: 267, column: 15, scope: !1133)
!1145 = !DILocalVariable(name: "rval", scope: !1133, file: !2, line: 268, type: !170)
!1146 = !DILocation(line: 268, column: 8, scope: !1133)
!1147 = !DILocation(line: 270, column: 12, scope: !1133)
!1148 = !DILocation(line: 270, column: 11, scope: !1133)
!1149 = !DILocation(line: 270, column: 3, scope: !1133)
!1150 = !DILocation(line: 275, column: 16, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 271, column: 5)
!1152 = !DILocation(line: 275, column: 8, scope: !1151)
!1153 = !DILocation(line: 275, column: 14, scope: !1151)
!1154 = !DILocation(line: 276, column: 7, scope: !1151)
!1155 = !DILocation(line: 278, column: 22, scope: !1151)
!1156 = !DILocation(line: 278, column: 8, scope: !1151)
!1157 = !DILocation(line: 278, column: 14, scope: !1151)
!1158 = !DILocation(line: 279, column: 7, scope: !1151)
!1159 = !DILocation(line: 279, column: 15, scope: !1151)
!1160 = !DILocation(line: 279, column: 22, scope: !1151)
!1161 = !DILocation(line: 280, column: 7, scope: !1151)
!1162 = !DILocation(line: 280, column: 15, scope: !1151)
!1163 = !DILocation(line: 280, column: 25, scope: !1151)
!1164 = !DILocation(line: 281, column: 25, scope: !1151)
!1165 = !DILocation(line: 281, column: 7, scope: !1151)
!1166 = !DILocation(line: 281, column: 15, scope: !1151)
!1167 = !DILocation(line: 281, column: 23, scope: !1151)
!1168 = !DILocation(line: 282, column: 7, scope: !1151)
!1169 = !DILocation(line: 282, column: 15, scope: !1151)
!1170 = !DILocation(line: 282, column: 25, scope: !1151)
!1171 = !DILocation(line: 283, column: 25, scope: !1151)
!1172 = !DILocation(line: 285, column: 36, scope: !1151)
!1173 = !DILocation(line: 285, column: 52, scope: !1151)
!1174 = !DILocation(line: 285, column: 44, scope: !1151)
!1175 = !DILocation(line: 285, column: 61, scope: !1151)
!1176 = !DILocation(line: 285, column: 16, scope: !1151)
!1177 = !DILocation(line: 285, column: 14, scope: !1151)
!1178 = !DILocation(line: 286, column: 11, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 286, column: 11)
!1180 = !DILocation(line: 287, column: 40, scope: !1179)
!1181 = !DILocation(line: 287, column: 9, scope: !1179)
!1182 = !DILocation(line: 288, column: 7, scope: !1151)
!1183 = !DILocation(line: 290, column: 12, scope: !1151)
!1184 = !DILocation(line: 291, column: 7, scope: !1151)
!1185 = !DILocation(line: 293, column: 10, scope: !1133)
!1186 = !DILocation(line: 293, column: 3, scope: !1133)
!1187 = distinct !DISubprogram(name: "nl_file", scope: !2, file: !2, line: 458, type: !1188, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106, retainedNodes: !312)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!170, !230}
!1190 = !DILocalVariable(name: "file", arg: 1, scope: !1187, file: !2, line: 458, type: !230)
!1191 = !DILocation(line: 458, column: 22, scope: !1187)
!1192 = !DILocalVariable(name: "stream", scope: !1187, file: !2, line: 460, type: !1193)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1195, line: 7, baseType: !1196)
!1195 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1197, line: 49, size: 1728, elements: !1198)
!1197 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1214, !1216, !1217, !1218, !1220, !1221, !1223, !1224, !1227, !1229, !1232, !1235, !1236, !1237, !1238, !1239}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1196, file: !1197, line: 51, baseType: !118, size: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1196, file: !1197, line: 54, baseType: !167, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1196, file: !1197, line: 55, baseType: !167, size: 64, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1196, file: !1197, line: 56, baseType: !167, size: 64, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1196, file: !1197, line: 57, baseType: !167, size: 64, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1196, file: !1197, line: 58, baseType: !167, size: 64, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1196, file: !1197, line: 59, baseType: !167, size: 64, offset: 384)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1196, file: !1197, line: 60, baseType: !167, size: 64, offset: 448)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1196, file: !1197, line: 61, baseType: !167, size: 64, offset: 512)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1196, file: !1197, line: 64, baseType: !167, size: 64, offset: 576)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1196, file: !1197, line: 65, baseType: !167, size: 64, offset: 640)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1196, file: !1197, line: 66, baseType: !167, size: 64, offset: 704)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1196, file: !1197, line: 68, baseType: !1212, size: 64, offset: 768)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1197, line: 36, flags: DIFlagFwdDecl)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1196, file: !1197, line: 70, baseType: !1215, size: 64, offset: 832)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1196, file: !1197, line: 72, baseType: !118, size: 32, offset: 896)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1196, file: !1197, line: 73, baseType: !118, size: 32, offset: 928)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1196, file: !1197, line: 74, baseType: !1219, size: 64, offset: 960)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !297, line: 152, baseType: !289)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1196, file: !1197, line: 77, baseType: !169, size: 16, offset: 1024)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1196, file: !1197, line: 78, baseType: !1222, size: 8, offset: 1040)
!1222 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1196, file: !1197, line: 79, baseType: !86, size: 8, offset: 1048)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1196, file: !1197, line: 81, baseType: !1225, size: 64, offset: 1088)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1197, line: 43, baseType: null)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1196, file: !1197, line: 89, baseType: !1228, size: 64, offset: 1152)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !297, line: 153, baseType: !289)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1196, file: !1197, line: 91, baseType: !1230, size: 64, offset: 1216)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1197, line: 37, flags: DIFlagFwdDecl)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1196, file: !1197, line: 92, baseType: !1233, size: 64, offset: 1280)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1197, line: 38, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1196, file: !1197, line: 93, baseType: !1215, size: 64, offset: 1344)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1196, file: !1197, line: 94, baseType: !168, size: 64, offset: 1408)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1196, file: !1197, line: 95, baseType: !242, size: 64, offset: 1472)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1196, file: !1197, line: 96, baseType: !118, size: 32, offset: 1536)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1196, file: !1197, line: 98, baseType: !1240, size: 160, offset: 1568)
!1240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !1241)
!1241 = !{!1242}
!1242 = !DISubrange(count: 20)
!1243 = !DILocation(line: 460, column: 9, scope: !1187)
!1244 = !DILocation(line: 462, column: 14, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 462, column: 7)
!1246 = !DILocation(line: 462, column: 7, scope: !1245)
!1247 = !DILocation(line: 464, column: 23, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1245, file: !2, line: 463, column: 5)
!1249 = !DILocation(line: 465, column: 16, scope: !1248)
!1250 = !DILocation(line: 465, column: 14, scope: !1248)
!1251 = !DILocation(line: 466, column: 15, scope: !1248)
!1252 = !DILocation(line: 466, column: 7, scope: !1248)
!1253 = !DILocation(line: 467, column: 5, scope: !1248)
!1254 = !DILocation(line: 470, column: 23, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1245, file: !2, line: 469, column: 5)
!1256 = !DILocation(line: 470, column: 16, scope: !1255)
!1257 = !DILocation(line: 470, column: 14, scope: !1255)
!1258 = !DILocation(line: 471, column: 11, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 471, column: 11)
!1260 = !DILocation(line: 471, column: 18, scope: !1259)
!1261 = !DILocation(line: 473, column: 21, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1259, file: !2, line: 472, column: 9)
!1263 = !DILocation(line: 473, column: 42, scope: !1262)
!1264 = !DILocation(line: 473, column: 34, scope: !1262)
!1265 = !DILocation(line: 473, column: 11, scope: !1262)
!1266 = !DILocation(line: 474, column: 11, scope: !1262)
!1267 = !DILocation(line: 478, column: 12, scope: !1187)
!1268 = !DILocation(line: 478, column: 3, scope: !1187)
!1269 = !DILocation(line: 480, column: 17, scope: !1187)
!1270 = !DILocation(line: 480, column: 3, scope: !1187)
!1271 = !DILocalVariable(name: "err", scope: !1187, file: !2, line: 482, type: !118)
!1272 = !DILocation(line: 482, column: 7, scope: !1187)
!1273 = !DILocation(line: 482, column: 13, scope: !1187)
!1274 = !DILocation(line: 483, column: 16, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 483, column: 7)
!1276 = !DILocation(line: 483, column: 8, scope: !1275)
!1277 = !DILocation(line: 483, column: 7, scope: !1275)
!1278 = !DILocation(line: 484, column: 9, scope: !1275)
!1279 = !DILocation(line: 484, column: 5, scope: !1275)
!1280 = !DILocation(line: 485, column: 14, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 485, column: 7)
!1282 = !DILocation(line: 485, column: 7, scope: !1281)
!1283 = !DILocation(line: 486, column: 15, scope: !1281)
!1284 = !DILocation(line: 486, column: 5, scope: !1281)
!1285 = !DILocation(line: 487, column: 20, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 487, column: 12)
!1287 = !DILocation(line: 487, column: 12, scope: !1286)
!1288 = !DILocation(line: 487, column: 28, scope: !1286)
!1289 = !DILocation(line: 487, column: 33, scope: !1286)
!1290 = !DILocation(line: 487, column: 37, scope: !1286)
!1291 = !DILocation(line: 488, column: 11, scope: !1286)
!1292 = !DILocation(line: 488, column: 9, scope: !1286)
!1293 = !DILocation(line: 488, column: 5, scope: !1286)
!1294 = !DILocation(line: 489, column: 7, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 489, column: 7)
!1296 = !DILocation(line: 491, column: 17, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1295, file: !2, line: 490, column: 5)
!1298 = !DILocation(line: 491, column: 36, scope: !1297)
!1299 = !DILocation(line: 491, column: 28, scope: !1297)
!1300 = !DILocation(line: 491, column: 7, scope: !1297)
!1301 = !DILocation(line: 492, column: 7, scope: !1297)
!1302 = !DILocation(line: 494, column: 3, scope: !1187)
!1303 = !DILocation(line: 495, column: 1, scope: !1187)
!1304 = distinct !DISubprogram(name: "process_file", scope: !2, file: !2, line: 429, type: !1305, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106, retainedNodes: !312)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{null, !1193}
!1307 = !DILocalVariable(name: "fp", arg: 1, scope: !1304, file: !2, line: 429, type: !1193)
!1308 = !DILocation(line: 429, column: 21, scope: !1304)
!1309 = !DILocation(line: 431, column: 3, scope: !1304)
!1310 = !DILocation(line: 431, column: 37, scope: !1304)
!1311 = !DILocation(line: 431, column: 10, scope: !1304)
!1312 = !DILocation(line: 433, column: 15, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 432, column: 5)
!1314 = !DILocation(line: 433, column: 7, scope: !1313)
!1315 = !DILocation(line: 436, column: 11, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 434, column: 9)
!1317 = !DILocation(line: 437, column: 11, scope: !1316)
!1318 = !DILocation(line: 439, column: 11, scope: !1316)
!1319 = !DILocation(line: 440, column: 11, scope: !1316)
!1320 = !DILocation(line: 442, column: 11, scope: !1316)
!1321 = !DILocation(line: 443, column: 11, scope: !1316)
!1322 = !DILocation(line: 445, column: 11, scope: !1316)
!1323 = !DILocation(line: 446, column: 11, scope: !1316)
!1324 = !DILocation(line: 449, column: 19, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 449, column: 11)
!1326 = !DILocation(line: 449, column: 11, scope: !1325)
!1327 = !DILocation(line: 450, column: 9, scope: !1325)
!1328 = distinct !{!1328, !1309, !1329, !677}
!1329 = !DILocation(line: 451, column: 5, scope: !1304)
!1330 = !DILocation(line: 452, column: 1, scope: !1304)
!1331 = distinct !DISubprogram(name: "check_section", scope: !2, file: !2, line: 407, type: !1332, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106, retainedNodes: !312)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!160}
!1334 = !DILocalVariable(name: "len", scope: !1331, file: !2, line: 409, type: !242)
!1335 = !DILocation(line: 409, column: 10, scope: !1331)
!1336 = !DILocation(line: 409, column: 25, scope: !1331)
!1337 = !DILocation(line: 409, column: 32, scope: !1331)
!1338 = !DILocation(line: 411, column: 7, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 411, column: 7)
!1340 = !DILocation(line: 411, column: 13, scope: !1339)
!1341 = !DILocation(line: 411, column: 11, scope: !1339)
!1342 = !DILocation(line: 411, column: 29, scope: !1339)
!1343 = !DILocation(line: 411, column: 32, scope: !1339)
!1344 = !DILocation(line: 411, column: 49, scope: !1339)
!1345 = !DILocation(line: 411, column: 47, scope: !1339)
!1346 = !DILocation(line: 412, column: 7, scope: !1339)
!1347 = !DILocation(line: 412, column: 27, scope: !1339)
!1348 = !DILocation(line: 412, column: 35, scope: !1339)
!1349 = !DILocation(line: 412, column: 48, scope: !1339)
!1350 = !DILocation(line: 412, column: 11, scope: !1339)
!1351 = !DILocation(line: 413, column: 5, scope: !1339)
!1352 = !DILocation(line: 414, column: 7, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 414, column: 7)
!1354 = !DILocation(line: 414, column: 14, scope: !1353)
!1355 = !DILocation(line: 414, column: 11, scope: !1353)
!1356 = !DILocation(line: 415, column: 7, scope: !1353)
!1357 = !DILocation(line: 415, column: 26, scope: !1353)
!1358 = !DILocation(line: 415, column: 34, scope: !1353)
!1359 = !DILocation(line: 415, column: 46, scope: !1353)
!1360 = !DILocation(line: 415, column: 10, scope: !1353)
!1361 = !DILocation(line: 416, column: 5, scope: !1353)
!1362 = !DILocation(line: 417, column: 7, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 417, column: 7)
!1364 = !DILocation(line: 417, column: 14, scope: !1363)
!1365 = !DILocation(line: 417, column: 11, scope: !1363)
!1366 = !DILocation(line: 418, column: 7, scope: !1363)
!1367 = !DILocation(line: 418, column: 26, scope: !1363)
!1368 = !DILocation(line: 418, column: 34, scope: !1363)
!1369 = !DILocation(line: 418, column: 44, scope: !1363)
!1370 = !DILocation(line: 418, column: 10, scope: !1363)
!1371 = !DILocation(line: 419, column: 5, scope: !1363)
!1372 = !DILocation(line: 420, column: 7, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 420, column: 7)
!1374 = !DILocation(line: 420, column: 14, scope: !1373)
!1375 = !DILocation(line: 420, column: 11, scope: !1373)
!1376 = !DILocation(line: 421, column: 7, scope: !1373)
!1377 = !DILocation(line: 421, column: 26, scope: !1373)
!1378 = !DILocation(line: 421, column: 34, scope: !1373)
!1379 = !DILocation(line: 421, column: 46, scope: !1373)
!1380 = !DILocation(line: 421, column: 10, scope: !1373)
!1381 = !DILocation(line: 422, column: 5, scope: !1373)
!1382 = !DILocation(line: 423, column: 3, scope: !1331)
!1383 = !DILocation(line: 424, column: 1, scope: !1331)
!1384 = distinct !DISubprogram(name: "proc_header", scope: !2, file: !2, line: 323, type: !521, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106)
!1385 = !DILocation(line: 325, column: 18, scope: !1384)
!1386 = !DILocation(line: 325, column: 16, scope: !1384)
!1387 = !DILocation(line: 326, column: 17, scope: !1384)
!1388 = !DILocation(line: 327, column: 3, scope: !1384)
!1389 = !DILocation(line: 328, column: 3, scope: !1384)
!1390 = !DILocation(line: 329, column: 1, scope: !1384)
!1391 = distinct !DISubprogram(name: "proc_body", scope: !2, file: !2, line: 334, type: !521, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106)
!1392 = !DILocation(line: 336, column: 18, scope: !1391)
!1393 = !DILocation(line: 336, column: 16, scope: !1391)
!1394 = !DILocation(line: 337, column: 17, scope: !1391)
!1395 = !DILocation(line: 338, column: 3, scope: !1391)
!1396 = !DILocation(line: 339, column: 3, scope: !1391)
!1397 = !DILocation(line: 340, column: 1, scope: !1391)
!1398 = distinct !DISubprogram(name: "proc_footer", scope: !2, file: !2, line: 345, type: !521, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106)
!1399 = !DILocation(line: 347, column: 18, scope: !1398)
!1400 = !DILocation(line: 347, column: 16, scope: !1398)
!1401 = !DILocation(line: 348, column: 17, scope: !1398)
!1402 = !DILocation(line: 349, column: 3, scope: !1398)
!1403 = !DILocation(line: 350, column: 3, scope: !1398)
!1404 = !DILocation(line: 351, column: 1, scope: !1398)
!1405 = !DILocation(line: 360, column: 12, scope: !520)
!1406 = !DILocation(line: 360, column: 11, scope: !520)
!1407 = !DILocation(line: 360, column: 3, scope: !520)
!1408 = !DILocation(line: 363, column: 11, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 363, column: 11)
!1410 = distinct !DILexicalBlock(scope: !520, file: !2, line: 361, column: 5)
!1411 = !DILocation(line: 363, column: 22, scope: !1409)
!1412 = !DILocation(line: 365, column: 28, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 365, column: 15)
!1414 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 364, column: 9)
!1415 = !DILocation(line: 365, column: 17, scope: !1413)
!1416 = !DILocation(line: 365, column: 35, scope: !1413)
!1417 = !DILocation(line: 365, column: 38, scope: !1413)
!1418 = !DILocation(line: 365, column: 55, scope: !1413)
!1419 = !DILocation(line: 365, column: 52, scope: !1413)
!1420 = !DILocation(line: 367, column: 15, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1413, file: !2, line: 366, column: 13)
!1422 = !DILocation(line: 368, column: 27, scope: !1421)
!1423 = !DILocation(line: 369, column: 13, scope: !1421)
!1424 = !DILocation(line: 371, column: 20, scope: !1413)
!1425 = !DILocation(line: 371, column: 39, scope: !1413)
!1426 = !DILocation(line: 371, column: 13, scope: !1413)
!1427 = !DILocation(line: 372, column: 9, scope: !1414)
!1428 = !DILocation(line: 374, column: 9, scope: !1409)
!1429 = !DILocation(line: 375, column: 7, scope: !1410)
!1430 = !DILocation(line: 377, column: 24, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 377, column: 11)
!1432 = !DILocation(line: 377, column: 13, scope: !1431)
!1433 = !DILocation(line: 378, column: 9, scope: !1431)
!1434 = !DILocation(line: 380, column: 16, scope: !1431)
!1435 = !DILocation(line: 380, column: 35, scope: !1431)
!1436 = !DILocation(line: 380, column: 9, scope: !1431)
!1437 = !DILocation(line: 381, column: 7, scope: !1410)
!1438 = !DILocation(line: 383, column: 14, scope: !1410)
!1439 = !DILocation(line: 383, column: 33, scope: !1410)
!1440 = !DILocation(line: 383, column: 7, scope: !1410)
!1441 = !DILocation(line: 384, column: 7, scope: !1410)
!1442 = !DILocation(line: 386, column: 26, scope: !1410)
!1443 = !DILocation(line: 386, column: 50, scope: !1410)
!1444 = !DILocation(line: 386, column: 67, scope: !1410)
!1445 = !DILocation(line: 386, column: 74, scope: !1410)
!1446 = !DILocation(line: 387, column: 38, scope: !1410)
!1447 = !DILocation(line: 387, column: 45, scope: !1410)
!1448 = !DILocation(line: 386, column: 15, scope: !1410)
!1449 = !DILocation(line: 386, column: 7, scope: !1410)
!1450 = !DILocation(line: 390, column: 32, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 388, column: 9)
!1452 = !DILocation(line: 390, column: 39, scope: !1451)
!1453 = !DILocation(line: 390, column: 11, scope: !1451)
!1454 = !DILocation(line: 393, column: 18, scope: !1451)
!1455 = !DILocation(line: 393, column: 37, scope: !1451)
!1456 = !DILocation(line: 393, column: 11, scope: !1451)
!1457 = !DILocation(line: 394, column: 11, scope: !1451)
!1458 = !DILocation(line: 397, column: 11, scope: !1451)
!1459 = !DILocation(line: 398, column: 11, scope: !1451)
!1460 = !DILocation(line: 400, column: 5, scope: !1410)
!1461 = !DILocation(line: 401, column: 20, scope: !520)
!1462 = !DILocation(line: 401, column: 52, scope: !520)
!1463 = !DILocation(line: 401, column: 60, scope: !520)
!1464 = !DILocation(line: 401, column: 3, scope: !520)
!1465 = !DILocation(line: 402, column: 1, scope: !520)
!1466 = distinct !DISubprogram(name: "write_error", scope: !117, file: !117, line: 953, type: !521, scopeLine: 954, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106, retainedNodes: !312)
!1467 = !DILocalVariable(name: "saved_errno", scope: !1466, file: !117, line: 955, type: !118)
!1468 = !DILocation(line: 955, column: 7, scope: !1466)
!1469 = !DILocation(line: 955, column: 21, scope: !1466)
!1470 = !DILocation(line: 956, column: 11, scope: !1466)
!1471 = !DILocation(line: 956, column: 3, scope: !1466)
!1472 = !DILocation(line: 957, column: 11, scope: !1466)
!1473 = !DILocation(line: 957, column: 3, scope: !1466)
!1474 = !DILocation(line: 958, column: 13, scope: !1466)
!1475 = !DILocation(line: 958, column: 3, scope: !1466)
!1476 = !DILocation(line: 959, column: 24, scope: !1466)
!1477 = !DILocation(line: 959, column: 37, scope: !1466)
!1478 = !DILocation(line: 959, column: 3, scope: !1466)
!1479 = distinct !DISubprogram(name: "reset_lineno", scope: !2, file: !2, line: 311, type: !521, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106)
!1480 = !DILocation(line: 313, column: 7, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 313, column: 7)
!1482 = !DILocation(line: 315, column: 17, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1481, file: !2, line: 314, column: 5)
!1484 = !DILocation(line: 315, column: 15, scope: !1483)
!1485 = !DILocation(line: 316, column: 24, scope: !1483)
!1486 = !DILocation(line: 317, column: 5, scope: !1483)
!1487 = !DILocation(line: 318, column: 1, scope: !1479)
!1488 = distinct !DISubprogram(name: "print_lineno", scope: !2, file: !2, line: 299, type: !521, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106)
!1489 = !DILocation(line: 301, column: 7, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 301, column: 7)
!1491 = !DILocation(line: 302, column: 29, scope: !1490)
!1492 = !DILocation(line: 302, column: 5, scope: !1490)
!1493 = !DILocation(line: 304, column: 11, scope: !1488)
!1494 = !DILocation(line: 304, column: 26, scope: !1488)
!1495 = !DILocation(line: 304, column: 40, scope: !1488)
!1496 = !DILocation(line: 304, column: 49, scope: !1488)
!1497 = !DILocation(line: 304, column: 3, scope: !1488)
!1498 = !DILocation(line: 306, column: 26, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 306, column: 7)
!1500 = !DILocation(line: 306, column: 35, scope: !1499)
!1501 = !DILocation(line: 306, column: 7, scope: !1499)
!1502 = !DILocation(line: 307, column: 22, scope: !1499)
!1503 = !DILocation(line: 307, column: 5, scope: !1499)
!1504 = !DILocation(line: 308, column: 1, scope: !1488)
