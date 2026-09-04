; ModuleID = 'src/nl.c'
source_filename = "src/nl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.re_pattern_buffer = type { ptr, i64, i64, i64, ptr, ptr, i64, i8 }
%struct.linebuffer = type { i64, i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [62 x i8] c"Write each FILE to standard output, with line numbers added.\0A\00", align 1, !dbg !12
@stdout = external local_unnamed_addr global ptr, align 8
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
@header_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !270
@header_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !279
@.str.24 = private unnamed_addr constant [35 x i8] c"invalid header numbering style: %s\00", align 1, !dbg !188
@optarg = external local_unnamed_addr global ptr, align 8
@body_type = internal global ptr @.str.91, align 8, !dbg !552
@body_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !246
@body_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !274
@.str.25 = private unnamed_addr constant [33 x i8] c"invalid body numbering style: %s\00", align 1, !dbg !193
@footer_type = internal global ptr @.str.90, align 8, !dbg !554
@footer_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !272
@footer_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !281
@.str.26 = private unnamed_addr constant [35 x i8] c"invalid footer numbering style: %s\00", align 1, !dbg !195
@.str.27 = private unnamed_addr constant [29 x i8] c"invalid starting line number\00", align 1, !dbg !197
@starting_line_number = internal unnamed_addr global i64 1, align 8, !dbg !556
@.str.28 = private unnamed_addr constant [30 x i8] c"invalid line number increment\00", align 1, !dbg !202
@page_incr = internal unnamed_addr global i64 1, align 8, !dbg !558
@reset_numbers = internal unnamed_addr global i1 false, align 1, !dbg !618
@.str.29 = private unnamed_addr constant [35 x i8] c"invalid line number of blank lines\00", align 1, !dbg !207
@blank_join = internal unnamed_addr global i64 1, align 8, !dbg !562
@separator_str = internal unnamed_addr global ptr @.str.92, align 8, !dbg !566
@.str.30 = private unnamed_addr constant [32 x i8] c"invalid line number field width\00", align 1, !dbg !209
@lineno_width = internal unnamed_addr global i32 6, align 4, !dbg !568
@FORMAT_LEFT = internal constant [8 x i8] c"%-*jd%s\00", align 1, !dbg !570
@lineno_format = internal unnamed_addr global ptr @FORMAT_RIGHT_NOLZ, align 8, !dbg !573
@FORMAT_RIGHT_NOLZ = internal constant [7 x i8] c"%*jd%s\00", align 1, !dbg !575
@FORMAT_RIGHT_LZ = internal constant [8 x i8] c"%0*jd%s\00", align 1, !dbg !578
@.str.34 = private unnamed_addr constant [34 x i8] c"invalid line numbering format: %s\00", align 1, !dbg !220
@section_del = internal unnamed_addr global ptr @DEFAULT_SECTION_DELIMITERS, align 8, !dbg !580
@.str.36 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !230
@Version = external local_unnamed_addr global ptr, align 8
@.str.37 = private unnamed_addr constant [14 x i8] c"Scott Bartram\00", align 1, !dbg !235
@.str.38 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !237
@section_del_len = internal unnamed_addr global i64 0, align 8, !dbg !283
@header_del_len = internal unnamed_addr global i64 0, align 8, !dbg !285
@header_del = internal unnamed_addr global ptr null, align 8, !dbg !587
@body_del_len = internal unnamed_addr global i64 0, align 8, !dbg !287
@body_del = internal unnamed_addr global ptr null, align 8, !dbg !589
@footer_del_len = internal unnamed_addr global i64 0, align 8, !dbg !289
@footer_del = internal unnamed_addr global ptr null, align 8, !dbg !591
@line_buf = internal global %struct.linebuffer zeroinitializer, align 8, !dbg !291
@print_no_line_fmt = internal unnamed_addr global ptr null, align 8, !dbg !593
@line_no = internal unnamed_addr global i64 0, align 8, !dbg !302
@current_type = internal unnamed_addr global ptr null, align 8, !dbg !244
@current_regex = internal unnamed_addr global ptr null, align 8, !dbg !595
@optind = external local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !242
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !619
@stdin = external local_unnamed_addr global ptr, align 8
@.str.40 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !310
@.str.41 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !315
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !317
@.str.42 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !397
@.str.43 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !402
@.str.44 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !404
@.str.45 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !409
@.str.59 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !446
@.str.60 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !448
@.str.61 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !450
@.str.62 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !455
@.str.63 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !460
@.str.64 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !465
@.str.65 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !470
@.str.66 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !472
@.str.67 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !474
@.str.68 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !476
@.str.72 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !484
@.str.73 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !489
@.str.74 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !494
@.str.75 = private unnamed_addr constant [17 x i8] c"header-numbering\00", align 1, !dbg !499
@.str.76 = private unnamed_addr constant [15 x i8] c"body-numbering\00", align 1, !dbg !501
@.str.77 = private unnamed_addr constant [17 x i8] c"footer-numbering\00", align 1, !dbg !503
@.str.78 = private unnamed_addr constant [21 x i8] c"starting-line-number\00", align 1, !dbg !505
@.str.79 = private unnamed_addr constant [15 x i8] c"line-increment\00", align 1, !dbg !510
@.str.80 = private unnamed_addr constant [12 x i8] c"no-renumber\00", align 1, !dbg !512
@.str.81 = private unnamed_addr constant [17 x i8] c"join-blank-lines\00", align 1, !dbg !514
@.str.82 = private unnamed_addr constant [17 x i8] c"number-separator\00", align 1, !dbg !516
@.str.83 = private unnamed_addr constant [13 x i8] c"number-width\00", align 1, !dbg !518
@.str.84 = private unnamed_addr constant [14 x i8] c"number-format\00", align 1, !dbg !523
@.str.85 = private unnamed_addr constant [18 x i8] c"section-delimiter\00", align 1, !dbg !525
@.str.86 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !530
@.str.87 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !532
@longopts = internal constant [14 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.75, i32 1, [4 x i8] zeroinitializer, ptr null, i32 104, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.76, i32 1, [4 x i8] zeroinitializer, ptr null, i32 98, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.77, i32 1, [4 x i8] zeroinitializer, ptr null, i32 102, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.78, i32 1, [4 x i8] zeroinitializer, ptr null, i32 118, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.79, i32 1, [4 x i8] zeroinitializer, ptr null, i32 105, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.80, i32 0, [4 x i8] zeroinitializer, ptr null, i32 112, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.81, i32 1, [4 x i8] zeroinitializer, ptr null, i32 108, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.82, i32 1, [4 x i8] zeroinitializer, ptr null, i32 115, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.83, i32 1, [4 x i8] zeroinitializer, ptr null, i32 119, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.84, i32 1, [4 x i8] zeroinitializer, ptr null, i32 110, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.85, i32 1, [4 x i8] zeroinitializer, ptr null, i32 100, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.86, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -130, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.87, i32 0, [4 x i8] zeroinitializer, ptr null, i32 -131, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16, !dbg !534
@rpl_re_syntax_options = external local_unnamed_addr global i64, align 8
@.str.89 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !546
@.str.90 = private unnamed_addr constant [2 x i8] c"n\00", align 1, !dbg !548
@.str.91 = private unnamed_addr constant [2 x i8] c"t\00", align 1, !dbg !550
@.str.92 = private unnamed_addr constant [2 x i8] c"\09\00", align 1, !dbg !564
@DEFAULT_SECTION_DELIMITERS = internal global [9 x i8] c"\\:\00\00\00\00\00\00\00", align 1, !dbg !582
@.str.93 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !598
@line_no_overflow = internal unnamed_addr global i1 false, align 1, !dbg !620
@proc_text.blank_lines = internal unnamed_addr global i64 0, align 8, !dbg !602
@.str.94 = private unnamed_addr constant [35 x i8] c"error in regular expression search\00", align 1, !dbg !612
@.str.95 = private unnamed_addr constant [21 x i8] c"line number overflow\00", align 1, !dbg !614
@.str.96 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !616

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !633 {
    #dbg_value(i32 %0, !637, !DIExpression(), !638)
  %2 = icmp eq i32 %0, 0, !dbg !639
  br i1 %2, label %8, label %3, !dbg !641

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !642, !tbaa !644
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #16, !dbg !642
  %6 = load ptr, ptr @program_name, align 8, !dbg !642, !tbaa !647
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #16, !dbg !642
  br label %47, !dbg !642

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #16, !dbg !649
  %10 = load ptr, ptr @program_name, align 8, !dbg !651, !tbaa !647
  %11 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %9, ptr noundef %10) #16, !dbg !652
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #16, !dbg !653
  %13 = load ptr, ptr @stdout, align 8, !dbg !654, !tbaa !644
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !655
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #16, !dbg !656
  %16 = load ptr, ptr @stdout, align 8, !dbg !659, !tbaa !644
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !660
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #16, !dbg !661
  %19 = load ptr, ptr @stdout, align 8, !dbg !664, !tbaa !644
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !665
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #16, !dbg !666
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !667
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #16, !dbg !668
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !669
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #16, !dbg !670
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !671
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #16, !dbg !672
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !673
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #16, !dbg !674
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !675
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #16, !dbg !676
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !677
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #16, !dbg !678
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !679
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #16, !dbg !680
  tail call fastcc void @oputs_(ptr noundef %28), !dbg !681
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #16, !dbg !682
  tail call fastcc void @oputs_(ptr noundef %29), !dbg !683
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #16, !dbg !684
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !685
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #16, !dbg !686
  tail call fastcc void @oputs_(ptr noundef %31), !dbg !687
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #16, !dbg !688
  tail call fastcc void @oputs_(ptr noundef %32), !dbg !689
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #16, !dbg !690
  tail call fastcc void @oputs_(ptr noundef %33), !dbg !691
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #16, !dbg !692
  %35 = load ptr, ptr @stdout, align 8, !dbg !693, !tbaa !644
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !694
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #16, !dbg !695
  %38 = load ptr, ptr @stdout, align 8, !dbg !696, !tbaa !644
  %39 = tail call i32 @fputs_unlocked(ptr noundef %37, ptr noundef %38), !dbg !697
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #16, !dbg !698
  %41 = load ptr, ptr @stdout, align 8, !dbg !699, !tbaa !644
  %42 = tail call i32 @fputs_unlocked(ptr noundef %40, ptr noundef %41), !dbg !700
    #dbg_value(ptr @.str.3, !701, !DIExpression(), !717)
    #dbg_value(ptr poison, !714, !DIExpression(), !717)
    #dbg_value(ptr @.str.3, !713, !DIExpression(), !717)
  tail call void @emit_bug_reporting_address() #16, !dbg !719
    #dbg_value(ptr @.str.3, !716, !DIExpression(), !717)
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.72, i32 noundef 5) #16, !dbg !720
  %44 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %43, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.3) #16, !dbg !721
  %45 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.73, i32 noundef 5) #16, !dbg !722
  %46 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %45, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.74) #16, !dbg !723
  br label %47

47:                                               ; preds = %8, %3
  tail call void @exit(i32 noundef %0) #17, !dbg !724
  unreachable, !dbg !724
}

declare !dbg !725 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !731 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !735 i32 @rpl_printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare !dbg !739 noundef i32 @fputs_unlocked(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !319 {
    #dbg_value(ptr @.str.3, !323, !DIExpression(), !743)
    #dbg_value(ptr %0, !324, !DIExpression(), !743)
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !744, !tbaa !629
  %3 = icmp eq i32 %2, -1, !dbg !745
  br i1 %3, label %4, label %16, !dbg !746

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.42) #16, !dbg !747
    #dbg_value(ptr %5, !325, !DIExpression(), !748)
  %6 = icmp eq ptr %5, null, !dbg !749
  br i1 %6, label %14, label %7, !dbg !750

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !751, !tbaa !752
  %9 = icmp eq i8 %8, 0, !dbg !753
  br i1 %9, label %14, label %10, !dbg !754

10:                                               ; preds = %7
    #dbg_value(ptr %5, !755, !DIExpression(), !762)
    #dbg_value(ptr @.str.43, !761, !DIExpression(), !762)
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.43) #18, !dbg !764
  %12 = icmp eq i32 %11, 0, !dbg !765
  %13 = zext i1 %12 to i32, !dbg !766
  br label %14, !dbg !767

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !768, !tbaa !629
  br label %16, !dbg !769

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !770
  %18 = icmp eq i32 %17, 0, !dbg !772
  br i1 %18, label %19, label %114, !dbg !773

19:                                               ; preds = %16
    #dbg_value(i8 1, !328, !DIExpression(), !743)
  %20 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.44) #18, !dbg !774
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 %20, !dbg !775
    #dbg_value(ptr %21, !329, !DIExpression(), !743)
  %22 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #18, !dbg !776
    #dbg_value(ptr %22, !330, !DIExpression(), !743)
  %23 = icmp eq ptr %22, null, !dbg !777
  br i1 %23, label %48, label %24, !dbg !778

24:                                               ; preds = %19
    #dbg_value(ptr %21, !331, !DIExpression(), !779)
    #dbg_value(i64 0, !335, !DIExpression(), !779)
  %25 = icmp ult ptr %21, %22
  br i1 %25, label %26, label %48, !dbg !780

26:                                               ; preds = %24
  %27 = tail call ptr @__ctype_b_loc() #19, !dbg !743
  %28 = load ptr, ptr %27, align 8, !tbaa !781
  br label %29, !dbg !783

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %21, %26 ], [ %32, %29 ]
  %31 = phi i64 [ 0, %26 ], [ %41, %29 ]
    #dbg_value(ptr %30, !331, !DIExpression(), !779)
    #dbg_value(i64 %31, !335, !DIExpression(), !779)
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 1, !dbg !784
    #dbg_value(ptr %32, !331, !DIExpression(), !779)
  %33 = load i8, ptr %30, align 1, !dbg !785, !tbaa !752
  %34 = sext i8 %33 to i64, !dbg !786
  %35 = getelementptr inbounds i16, ptr %28, i64 %34, !dbg !786
  %36 = load i16, ptr %35, align 2, !dbg !786, !tbaa !787
  %37 = freeze i16 %36, !dbg !789
  %38 = lshr i16 %37, 13, !dbg !789
  %39 = and i16 %38, 1, !dbg !789
  %40 = zext nneg i16 %39 to i64, !dbg !789
  %41 = add i64 %31, %40, !dbg !790
    #dbg_value(i64 %41, !335, !DIExpression(), !779)
  %42 = icmp ult ptr %32, %22, !dbg !791
  %43 = icmp samesign ult i64 %41, 2, !dbg !792
  %44 = select i1 %42, i1 %43, i1 false, !dbg !792
  br i1 %44, label %29, label %45, !dbg !793, !llvm.loop !794

45:                                               ; preds = %29
  %46 = icmp ne i64 %41, 2, !dbg !797
  %47 = select i1 %46, ptr %22, ptr %21, !dbg !799
  br label %48, !dbg !799

48:                                               ; preds = %45, %19, %24
  %49 = phi ptr [ %21, %19 ], [ %22, %24 ], [ %47, %45 ], !dbg !743
  %50 = phi i1 [ false, %19 ], [ true, %24 ], [ %46, %45 ], !dbg !743
    #dbg_value(i8 poison, !328, !DIExpression(), !743)
    #dbg_value(ptr %49, !330, !DIExpression(), !743)
  %51 = tail call i64 @strcspn(ptr noundef nonnull %49, ptr noundef nonnull @.str.45) #18, !dbg !800
    #dbg_value(i64 %51, !336, !DIExpression(), !743)
  %52 = getelementptr inbounds nuw i8, ptr %49, i64 %51, !dbg !801
    #dbg_value(ptr %52, !337, !DIExpression(), !743)
  br label %53, !dbg !802

53:                                               ; preds = %84, %48
  %54 = phi ptr [ %52, %48 ], [ %85, %84 ], !dbg !743
  %55 = phi i1 [ %50, %48 ], [ %63, %84 ], !dbg !743
    #dbg_value(i8 poison, !328, !DIExpression(), !743)
    #dbg_value(ptr %54, !337, !DIExpression(), !743)
  %56 = load i8, ptr %54, align 1, !dbg !803, !tbaa !752
  switch i8 %56, label %62 [
    i8 0, label %86
    i8 10, label %86
    i8 45, label %57
  ], !dbg !804

57:                                               ; preds = %53
  %58 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !805
  %59 = load i8, ptr %58, align 1, !dbg !805, !tbaa !752
  %60 = icmp ne i8 %59, 45, !dbg !808
  %61 = select i1 %60, i1 %55, i1 false, !dbg !809
  br label %62, !dbg !809

62:                                               ; preds = %57, %53
  %63 = phi i1 [ %55, %53 ], [ %61, %57 ], !dbg !743
    #dbg_value(i8 poison, !328, !DIExpression(), !743)
  %64 = tail call ptr @__ctype_b_loc() #19, !dbg !810
  %65 = load ptr, ptr %64, align 8, !dbg !810, !tbaa !781
  %66 = sext i8 %56 to i64, !dbg !810
  %67 = getelementptr inbounds i16, ptr %65, i64 %66, !dbg !810
  %68 = load i16, ptr %67, align 2, !dbg !810, !tbaa !787
  %69 = and i16 %68, 8192, !dbg !810
  %70 = icmp eq i16 %69, 0, !dbg !812
  br i1 %70, label %84, label %71, !dbg !813

71:                                               ; preds = %62
  %72 = icmp eq i8 %56, 9, !dbg !814
  br i1 %72, label %86, label %73, !dbg !817

73:                                               ; preds = %71
  %74 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !818
  %75 = load i8, ptr %74, align 1, !dbg !818, !tbaa !752
  %76 = sext i8 %75 to i64, !dbg !819
  %77 = getelementptr inbounds i16, ptr %65, i64 %76, !dbg !819
  %78 = load i16, ptr %77, align 2, !dbg !819, !tbaa !787
  %79 = and i16 %78, 8192, !dbg !819
  %80 = icmp eq i16 %79, 0, !dbg !820
  %81 = icmp eq i8 %75, 45
  %82 = or i1 %63, %81
  %83 = select i1 %80, i1 %82, i1 false, !dbg !821
  br i1 %83, label %84, label %86, !dbg !821

84:                                               ; preds = %73, %62
  %85 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !822
    #dbg_value(ptr %85, !337, !DIExpression(), !743)
  br label %53, !dbg !802, !llvm.loop !823

86:                                               ; preds = %53, %53, %71, %73
  %87 = ptrtoint ptr %21 to i64, !dbg !825
  %88 = load ptr, ptr @stdout, align 8, !dbg !826, !tbaa !644
  %89 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %0, i64 noundef 1, i64 noundef %20, ptr noundef %88), !dbg !827
    #dbg_value(ptr @.str.3, !755, !DIExpression(), !828)
    #dbg_value(ptr poison, !761, !DIExpression(), !828)
    #dbg_value(ptr @.str.3, !755, !DIExpression(), !830)
    #dbg_value(ptr poison, !761, !DIExpression(), !830)
    #dbg_value(ptr @.str.3, !755, !DIExpression(), !832)
    #dbg_value(ptr poison, !761, !DIExpression(), !832)
    #dbg_value(ptr @.str.3, !755, !DIExpression(), !834)
    #dbg_value(ptr poison, !761, !DIExpression(), !834)
    #dbg_value(ptr @.str.3, !755, !DIExpression(), !836)
    #dbg_value(ptr poison, !761, !DIExpression(), !836)
    #dbg_value(ptr @.str.3, !755, !DIExpression(), !838)
    #dbg_value(ptr poison, !761, !DIExpression(), !838)
    #dbg_value(ptr @.str.3, !755, !DIExpression(), !840)
    #dbg_value(ptr poison, !761, !DIExpression(), !840)
    #dbg_value(ptr @.str.3, !755, !DIExpression(), !842)
    #dbg_value(ptr poison, !761, !DIExpression(), !842)
    #dbg_value(ptr @.str.3, !755, !DIExpression(), !844)
    #dbg_value(ptr poison, !761, !DIExpression(), !844)
    #dbg_value(ptr @.str.3, !755, !DIExpression(), !846)
    #dbg_value(ptr poison, !761, !DIExpression(), !846)
    #dbg_value(ptr @.str.3, !392, !DIExpression(), !743)
  %90 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(7) @.str.59, i64 noundef 6) #18, !dbg !848
  %91 = icmp eq i32 %90, 0, !dbg !850
  br i1 %91, label %95, label %92, !dbg !851

92:                                               ; preds = %86
  %93 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(10) @.str.60, i64 noundef 9) #18, !dbg !852
  %94 = icmp eq i32 %93, 0, !dbg !853
  br i1 %94, label %95, label %98, !dbg !854

95:                                               ; preds = %92, %86
  %96 = trunc i64 %51 to i32, !dbg !855
  %97 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %96, ptr noundef nonnull %49) #16, !dbg !857
  br label %101, !dbg !858

98:                                               ; preds = %92
  %99 = trunc i64 %51 to i32, !dbg !859
  %100 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.3, i32 noundef %99, ptr noundef nonnull %49) #16, !dbg !861
  br label %101

101:                                              ; preds = %98, %95
  %102 = load ptr, ptr @stdout, align 8, !dbg !862, !tbaa !644
  %103 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.65, ptr noundef %102), !dbg !863
  %104 = load ptr, ptr @stdout, align 8, !dbg !864, !tbaa !644
  %105 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.66, ptr noundef %104), !dbg !865
  %106 = ptrtoint ptr %54 to i64, !dbg !866
  %107 = sub i64 %106, %87, !dbg !866
  %108 = load ptr, ptr @stdout, align 8, !dbg !867, !tbaa !644
  %109 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %21, i64 noundef 1, i64 noundef %107, ptr noundef %108), !dbg !868
  %110 = load ptr, ptr @stdout, align 8, !dbg !869, !tbaa !644
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.67, ptr noundef %110), !dbg !870
  %112 = load ptr, ptr @stdout, align 8, !dbg !871, !tbaa !644
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.68, ptr noundef %112), !dbg !872
  br label %114, !dbg !873

114:                                              ; preds = %16, %101
  %115 = phi ptr [ %54, %101 ], [ %0, %16 ]
  %116 = load ptr, ptr @stdout, align 8, !dbg !743, !tbaa !644
  %117 = tail call i32 @fputs_unlocked(ptr noundef %115, ptr noundef %116), !dbg !743
  ret void, !dbg !874
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #6 !dbg !875 {
  %3 = alloca %struct.__mbstate_t, align 4, !DIAssignID !892
    #dbg_assign(i1 poison, !893, !DIExpression(), !892, ptr %3, !DIExpression(), !925)
  %4 = alloca i32, align 4, !DIAssignID !929
    #dbg_value(i32 %0, !880, !DIExpression(), !930)
    #dbg_value(ptr %1, !881, !DIExpression(), !930)
    #dbg_value(i8 1, !884, !DIExpression(), !930)
  %5 = load ptr, ptr %1, align 8, !dbg !931, !tbaa !647
  tail call void @set_program_name(ptr noundef %5) #16, !dbg !932
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.20) #16, !dbg !933
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #16, !dbg !934
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.21) #16, !dbg !935
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #16, !dbg !936
  br label %10, !dbg !937

10:                                               ; preds = %13, %2
  %11 = phi i1 [ true, %2 ], [ %14, %13 ], !dbg !930
    #dbg_value(i8 poison, !884, !DIExpression(), !930)
  %12 = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @longopts, ptr noundef null) #16, !dbg !938
    #dbg_value(i32 %12, !882, !DIExpression(), !930)
  switch i32 %12, label %13 [
    i32 -1, label %132
    i32 104, label %15
    i32 98, label %21
    i32 102, label %27
    i32 118, label %33
    i32 105, label %37
    i32 112, label %41
    i32 108, label %42
    i32 115, label %46
    i32 119, label %48
    i32 110, label %53
    i32 100, label %87
    i32 -130, label %126
    i32 -131, label %127
  ], !dbg !939

13:                                               ; preds = %10, %113, %117, %125, %122, %64, %82, %83, %73, %27, %29, %21, %23, %15, %17, %48, %46, %42, %41, %37, %33
  %14 = phi i1 [ %11, %113 ], [ %11, %15 ], [ false, %17 ], [ %11, %21 ], [ false, %23 ], [ %11, %27 ], [ false, %29 ], [ %11, %33 ], [ %11, %37 ], [ %11, %41 ], [ %11, %42 ], [ %11, %46 ], [ %11, %48 ], [ %11, %64 ], [ %11, %73 ], [ %11, %82 ], [ false, %83 ], [ %11, %125 ], [ %11, %122 ], [ %11, %117 ], [ false, %10 ]
  br label %10, !dbg !938, !llvm.loop !940

15:                                               ; preds = %10
  %16 = call fastcc zeroext i1 @build_type_arg(ptr noundef nonnull @header_type, ptr noundef nonnull @header_regex, ptr noundef nonnull @header_fastmap), !dbg !942
  br i1 %16, label %13, label %17, !dbg !944

17:                                               ; preds = %15
  %18 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #16, !dbg !945
  %19 = load ptr, ptr @optarg, align 8, !dbg !947, !tbaa !647
  %20 = call ptr @quote(ptr noundef %19) #16, !dbg !948
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %18, ptr noundef %20) #16, !dbg !949
    #dbg_value(i8 0, !884, !DIExpression(), !930)
  br label %13, !dbg !950

21:                                               ; preds = %10
  %22 = call fastcc zeroext i1 @build_type_arg(ptr noundef nonnull @body_type, ptr noundef nonnull @body_regex, ptr noundef nonnull @body_fastmap), !dbg !951
  br i1 %22, label %13, label %23, !dbg !953

23:                                               ; preds = %21
  %24 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #16, !dbg !954
  %25 = load ptr, ptr @optarg, align 8, !dbg !956, !tbaa !647
  %26 = call ptr @quote(ptr noundef %25) #16, !dbg !957
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %24, ptr noundef %26) #16, !dbg !958
    #dbg_value(i8 0, !884, !DIExpression(), !930)
  br label %13, !dbg !959

27:                                               ; preds = %10
  %28 = call fastcc zeroext i1 @build_type_arg(ptr noundef nonnull @footer_type, ptr noundef nonnull @footer_regex, ptr noundef nonnull @footer_fastmap), !dbg !960
  br i1 %28, label %13, label %29, !dbg !962

29:                                               ; preds = %27
  %30 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #16, !dbg !963
  %31 = load ptr, ptr @optarg, align 8, !dbg !965, !tbaa !647
  %32 = call ptr @quote(ptr noundef %31) #16, !dbg !966
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %30, ptr noundef %32) #16, !dbg !967
    #dbg_value(i8 0, !884, !DIExpression(), !930)
  br label %13, !dbg !968

33:                                               ; preds = %10
  %34 = load ptr, ptr @optarg, align 8, !dbg !969, !tbaa !647
  %35 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #16, !dbg !970
  %36 = call i64 @xdectoimax(ptr noundef %34, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807, ptr noundef nonnull @.str.20, ptr noundef %35, i32 noundef 0) #16, !dbg !971
  store i64 %36, ptr @starting_line_number, align 8, !dbg !972, !tbaa !973
  br label %13, !dbg !975

37:                                               ; preds = %10
  %38 = load ptr, ptr @optarg, align 8, !dbg !976, !tbaa !647
  %39 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #16, !dbg !977
  %40 = call i64 @xdectoimax(ptr noundef %38, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807, ptr noundef nonnull @.str.20, ptr noundef %39, i32 noundef 0) #16, !dbg !978
  store i64 %40, ptr @page_incr, align 8, !dbg !979, !tbaa !973
  br label %13, !dbg !980

41:                                               ; preds = %10
  store i1 true, ptr @reset_numbers, align 1, !dbg !981
  br label %13, !dbg !982

42:                                               ; preds = %10
  %43 = load ptr, ptr @optarg, align 8, !dbg !983, !tbaa !647
  %44 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #16, !dbg !984
  %45 = call i64 @xnumtoimax(ptr noundef %43, i32 noundef 10, i64 noundef 1, i64 noundef 9223372036854775807, ptr noundef nonnull @.str.20, ptr noundef %44, i32 noundef 0, i32 noundef 6) #16, !dbg !985
  store i64 %45, ptr @blank_join, align 8, !dbg !986, !tbaa !973
  br label %13, !dbg !987

46:                                               ; preds = %10
  %47 = load ptr, ptr @optarg, align 8, !dbg !988, !tbaa !647
  store ptr %47, ptr @separator_str, align 8, !dbg !989, !tbaa !647
  br label %13, !dbg !990

48:                                               ; preds = %10
  %49 = load ptr, ptr @optarg, align 8, !dbg !991, !tbaa !647
  %50 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #16, !dbg !992
  %51 = call i64 @xnumtoimax(ptr noundef %49, i32 noundef 10, i64 noundef 1, i64 noundef 2147483647, ptr noundef nonnull @.str.20, ptr noundef %50, i32 noundef 0, i32 noundef 4) #16, !dbg !993
  %52 = trunc i64 %51 to i32, !dbg !994
  store i32 %52, ptr @lineno_width, align 4, !dbg !995, !tbaa !629
  br label %13, !dbg !996

53:                                               ; preds = %10
  %54 = load ptr, ptr @optarg, align 8, !dbg !997, !tbaa !647
    #dbg_value(ptr %54, !755, !DIExpression(), !999)
    #dbg_value(ptr poison, !761, !DIExpression(), !999)
  %55 = load i8, ptr %54, align 1, !dbg !1001
  switch i8 %55, label %83 [
    i8 108, label %56
    i8 114, label %65
  ], !dbg !1001

56:                                               ; preds = %53
  %57 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !1001
  %58 = load i8, ptr %57, align 1, !dbg !1001
  %59 = icmp eq i8 %58, 110, !dbg !1001
  br i1 %59, label %60, label %83, !dbg !1001

60:                                               ; preds = %56
  %61 = getelementptr inbounds nuw i8, ptr %54, i64 2, !dbg !1001
  %62 = load i8, ptr %61, align 1, !dbg !1001
  %63 = icmp eq i8 %62, 0, !dbg !1002
  br i1 %63, label %64, label %83, !dbg !1003

64:                                               ; preds = %60
  store ptr @FORMAT_LEFT, ptr @lineno_format, align 8, !dbg !1004, !tbaa !647
  br label %13, !dbg !1005

65:                                               ; preds = %53
  %66 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !1006
  %67 = load i8, ptr %66, align 1, !dbg !1006
  %68 = icmp eq i8 %67, 110, !dbg !1006
  br i1 %68, label %69, label %74, !dbg !1006

69:                                               ; preds = %65
  %70 = getelementptr inbounds nuw i8, ptr %54, i64 2, !dbg !1006
  %71 = load i8, ptr %70, align 1, !dbg !1006
  %72 = icmp eq i8 %71, 0, !dbg !1009
  br i1 %72, label %73, label %74, !dbg !1010

73:                                               ; preds = %69
  store ptr @FORMAT_RIGHT_NOLZ, ptr @lineno_format, align 8, !dbg !1011, !tbaa !647
  br label %13, !dbg !1012

74:                                               ; preds = %69, %65
  %75 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !1013
  %76 = load i8, ptr %75, align 1, !dbg !1013
  %77 = icmp eq i8 %76, 122, !dbg !1013
  br i1 %77, label %78, label %83, !dbg !1013

78:                                               ; preds = %74
  %79 = getelementptr inbounds nuw i8, ptr %54, i64 2, !dbg !1013
  %80 = load i8, ptr %79, align 1, !dbg !1013
  %81 = icmp eq i8 %80, 0, !dbg !1016
  br i1 %81, label %82, label %83, !dbg !1017

82:                                               ; preds = %78
  store ptr @FORMAT_RIGHT_LZ, ptr @lineno_format, align 8, !dbg !1018, !tbaa !647
  br label %13, !dbg !1019

83:                                               ; preds = %53, %56, %60, %74, %78
  %84 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #16, !dbg !1020
  %85 = load ptr, ptr @optarg, align 8, !dbg !1022, !tbaa !647
  %86 = call ptr @quote(ptr noundef %85) #16, !dbg !1023
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %84, ptr noundef %86) #16, !dbg !1024
    #dbg_value(i8 0, !884, !DIExpression(), !930)
  br label %13

87:                                               ; preds = %10
  %88 = load ptr, ptr @optarg, align 8, !dbg !1025, !tbaa !647
  %89 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %88) #18, !dbg !1026
    #dbg_value(i64 %89, !883, !DIExpression(), !930)
  %90 = call i64 @__ctype_get_mb_cur_max() #16, !dbg !1027
  %91 = icmp ugt i64 %90, 1, !dbg !1028
  br i1 %91, label %92, label %119, !dbg !1029

92:                                               ; preds = %87
  %93 = load ptr, ptr @optarg, align 8, !dbg !1030, !tbaa !647
    #dbg_value(ptr %93, !885, !DIExpression(), !1031)
    #dbg_value(!DIArgList(ptr %93, i64 %89), !890, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1031)
    #dbg_value(i32 0, !891, !DIExpression(), !1031)
  %94 = icmp eq i64 %89, 0, !dbg !1032
  br i1 %94, label %117, label %95, !dbg !1033

95:                                               ; preds = %92
    #dbg_value(!DIArgList(ptr %93, i64 %89), !890, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1031)
    #dbg_value(ptr %93, !885, !DIExpression(), !1031)
    #dbg_value(i32 poison, !891, !DIExpression(), !1031)
    #dbg_assign(i1 poison, !911, !DIExpression(), !929, ptr %4, !DIExpression(), !925)
    #dbg_value(ptr %93, !908, !DIExpression(), !925)
    #dbg_value(!DIArgList(ptr %93, i64 %89), !909, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !925)
  %96 = load i8, ptr %93, align 1, !dbg !1034, !tbaa !752
    #dbg_value(i8 %96, !910, !DIExpression(), !925)
    #dbg_value(i8 %96, !1035, !DIExpression(), !1040)
  %97 = icmp sgt i8 %96, -1, !dbg !1043
  br i1 %97, label %102, label %98, !dbg !1044

98:                                               ; preds = %95
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !dbg !1045
  store i32 0, ptr %3, align 4, !dbg !1046, !tbaa !1047, !DIAssignID !1049
    #dbg_assign(i32 0, !893, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !1049, ptr %3, !DIExpression(), !925)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !dbg !1050
  %99 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %93, i64 noundef %89, ptr noundef nonnull %3) #16, !dbg !1051
    #dbg_value(i64 %99, !912, !DIExpression(), !925)
  %100 = icmp slt i64 %99, 0, !dbg !1052
  %101 = select i1 %100, i64 1, i64 %99, !dbg !1054, !prof !1055
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !dbg !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !dbg !1056
  br label %102

102:                                              ; preds = %98, %95
  %103 = phi i64 [ %101, %98 ], [ 1, %95 ], !dbg !925
  %104 = getelementptr inbounds nuw i8, ptr %93, i64 %103, !dbg !1057
    #dbg_value(ptr %104, !885, !DIExpression(), !1031)
    #dbg_value(i32 poison, !891, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1031)
  %105 = icmp samesign ult i64 %103, %89, !dbg !1058
  br i1 %105, label %106, label %113, !dbg !1059

106:                                              ; preds = %102
  %107 = sub nsw i64 %89, %103
    #dbg_value(ptr %104, !885, !DIExpression(), !1031)
    #dbg_value(i32 poison, !891, !DIExpression(), !1031)
    #dbg_assign(i1 poison, !911, !DIExpression(), !929, ptr %4, !DIExpression(), !925)
    #dbg_value(ptr %104, !908, !DIExpression(), !925)
    #dbg_value(!DIArgList(ptr %93, i64 %89), !909, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !925)
  %108 = load i8, ptr %104, align 1, !dbg !1060, !tbaa !752
    #dbg_value(i8 %108, !910, !DIExpression(), !925)
    #dbg_value(i8 %108, !1035, !DIExpression(), !1040)
  %109 = icmp sgt i8 %108, -1, !dbg !1061
  br i1 %109, label %112, label %110, !dbg !1062

110:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !dbg !1045
  store i32 0, ptr %3, align 4, !dbg !1063, !tbaa !1047, !DIAssignID !1049
    #dbg_assign(i32 0, !893, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !1049, ptr %3, !DIExpression(), !925)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !dbg !1050
  %111 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %104, i64 noundef %107, ptr noundef nonnull %3) #16, !dbg !1064
    #dbg_value(i64 %111, !912, !DIExpression(), !925)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !dbg !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !dbg !1056
  br label %112

112:                                              ; preds = %106, %110
  br i1 %105, label %117, label %113, !dbg !1065

113:                                              ; preds = %102, %112
  %114 = load ptr, ptr @section_del, align 8, !dbg !1067, !tbaa !647
  %115 = load ptr, ptr @optarg, align 8, !dbg !1068, !tbaa !647
    #dbg_value(ptr %114, !1069, !DIExpression(), !1081)
    #dbg_value(ptr %115, !1079, !DIExpression(), !1081)
    #dbg_value(i64 %89, !1080, !DIExpression(), !1081)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %114, ptr noundef nonnull align 1 %115, i64 noundef %89, i1 noundef false) #16, !dbg !1083
  %116 = getelementptr inbounds i8, ptr %114, i64 %89, !dbg !1083
    #dbg_value(ptr %116, !1084, !DIExpression(), !1089)
    #dbg_value(ptr poison, !1087, !DIExpression(), !1089)
    #dbg_value(i64 2, !1088, !DIExpression(), !1089)
  store i16 58, ptr %116, align 1, !dbg !1091
  br label %13, !dbg !1092

117:                                              ; preds = %92, %112
  %118 = load ptr, ptr @optarg, align 8, !dbg !1093, !tbaa !647
  store ptr %118, ptr @section_del, align 8, !dbg !1094, !tbaa !647
  br label %13

119:                                              ; preds = %87
  %120 = icmp eq i64 %89, 1, !dbg !1095
  %121 = load ptr, ptr @optarg, align 8, !dbg !1098, !tbaa !647
  br i1 %120, label %122, label %125, !dbg !1099

122:                                              ; preds = %119
  %123 = load i8, ptr %121, align 1, !dbg !1100, !tbaa !752
  %124 = load ptr, ptr @section_del, align 8, !dbg !1101, !tbaa !647
  store i8 %123, ptr %124, align 1, !dbg !1102, !tbaa !752
  br label %13, !dbg !1103

125:                                              ; preds = %119
  store ptr %121, ptr @section_del, align 8, !dbg !1104, !tbaa !647
  br label %13

126:                                              ; preds = %10
  call void @usage(i32 noundef 0) #20, !dbg !1105
  unreachable, !dbg !1105

127:                                              ; preds = %10
  %128 = load ptr, ptr @stdout, align 8, !dbg !1106, !tbaa !644
  %129 = load ptr, ptr @Version, align 8, !dbg !1106, !tbaa !647
  %130 = call ptr @proper_name_lite(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.37) #16, !dbg !1107
  %131 = call ptr @proper_name_lite(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.38) #16, !dbg !1107
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %128, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.36, ptr noundef %129, ptr noundef %130, ptr noundef %131, ptr noundef null) #16, !dbg !1106
  call void @exit(i32 noundef 0) #17, !dbg !1106
  unreachable, !dbg !1106

132:                                              ; preds = %10
  br i1 %11, label %134, label %133, !dbg !1108

133:                                              ; preds = %132
  call void @usage(i32 noundef 1) #20, !dbg !1110
  unreachable, !dbg !1110

134:                                              ; preds = %132
  %135 = load ptr, ptr @section_del, align 8, !dbg !1111, !tbaa !647
  %136 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %135) #18, !dbg !1112
    #dbg_value(i64 %136, !883, !DIExpression(), !930)
  store i64 %136, ptr @section_del_len, align 8, !dbg !1113, !tbaa !973
  %137 = mul i64 %136, 3, !dbg !1114
  store i64 %137, ptr @header_del_len, align 8, !dbg !1115, !tbaa !973
  %138 = add i64 %137, 1, !dbg !1116
  %139 = call noalias nonnull ptr @xmalloc(i64 noundef %138) #21, !dbg !1117
  store ptr %139, ptr @header_del, align 8, !dbg !1118, !tbaa !647
  %140 = load ptr, ptr @section_del, align 8, !dbg !1119, !tbaa !647
    #dbg_value(ptr %139, !1120, !DIExpression(), !1127)
    #dbg_value(ptr %140, !1126, !DIExpression(), !1127)
  %141 = call ptr @stpcpy(ptr nonnull %139, ptr %140), !dbg !1129
    #dbg_value(ptr %141, !1120, !DIExpression(), !1130)
    #dbg_value(ptr %140, !1126, !DIExpression(), !1130)
  %142 = call ptr @stpcpy(ptr %141, ptr %140), !dbg !1132
    #dbg_value(ptr %142, !1120, !DIExpression(), !1133)
    #dbg_value(ptr %140, !1126, !DIExpression(), !1133)
  %143 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %142, ptr noundef nonnull dereferenceable(1) %140), !dbg !1135
  %144 = shl i64 %136, 1, !dbg !1136
  store i64 %144, ptr @body_del_len, align 8, !dbg !1137, !tbaa !973
  %145 = load ptr, ptr @header_del, align 8, !dbg !1138, !tbaa !647
  %146 = getelementptr inbounds nuw i8, ptr %145, i64 %136, !dbg !1139
  store ptr %146, ptr @body_del, align 8, !dbg !1140, !tbaa !647
  store i64 %136, ptr @footer_del_len, align 8, !dbg !1141, !tbaa !973
  %147 = getelementptr inbounds nuw i8, ptr %146, i64 %136, !dbg !1142
  store ptr %147, ptr @footer_del, align 8, !dbg !1143, !tbaa !647
  call void @initbuffer(ptr noundef nonnull @line_buf) #16, !dbg !1144
  %148 = load ptr, ptr @separator_str, align 8, !dbg !1145, !tbaa !647
  %149 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %148) #18, !dbg !1146
    #dbg_value(i64 %149, !883, !DIExpression(), !930)
  %150 = load i32, ptr @lineno_width, align 4, !dbg !1147, !tbaa !629
  %151 = sext i32 %150 to i64, !dbg !1147
  %152 = add i64 %149, 1, !dbg !1148
  %153 = add i64 %152, %151, !dbg !1149
  %154 = call noalias nonnull ptr @xmalloc(i64 noundef %153) #21, !dbg !1150
  store ptr %154, ptr @print_no_line_fmt, align 8, !dbg !1151, !tbaa !647
  %155 = load i32, ptr @lineno_width, align 4, !dbg !1152, !tbaa !629
  %156 = sext i32 %155 to i64, !dbg !1152
  %157 = add i64 %149, %156, !dbg !1153
    #dbg_value(ptr %154, !1154, !DIExpression(), !1161)
    #dbg_value(i32 32, !1159, !DIExpression(), !1161)
    #dbg_value(i64 %157, !1160, !DIExpression(), !1161)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %154, i8 noundef 32, i64 noundef %157, i1 noundef false) #16, !dbg !1163
  %158 = getelementptr i8, ptr %154, i64 %149, !dbg !1164
  %159 = getelementptr i8, ptr %158, i64 %156, !dbg !1164
  store i8 0, ptr %159, align 1, !dbg !1165, !tbaa !752
  %160 = load i64, ptr @starting_line_number, align 8, !dbg !1166, !tbaa !973
  store i64 %160, ptr @line_no, align 8, !dbg !1167, !tbaa !973
  %161 = load ptr, ptr @body_type, align 8, !dbg !1168, !tbaa !647
  store ptr %161, ptr @current_type, align 8, !dbg !1169, !tbaa !647
  store ptr @body_regex, ptr @current_regex, align 8, !dbg !1170, !tbaa !1171
  %162 = load i32, ptr @optind, align 4, !dbg !1173, !tbaa !629
  %163 = icmp eq i32 %162, %0, !dbg !1175
  br i1 %163, label %166, label %164, !dbg !1176

164:                                              ; preds = %134
    #dbg_value(i8 1, !884, !DIExpression(), !930)
  %165 = icmp slt i32 %162, %0, !dbg !1177
  br i1 %165, label %168, label %179, !dbg !1180

166:                                              ; preds = %134
  %167 = call fastcc zeroext i1 @nl_file(ptr noundef nonnull @.str.39), !dbg !1181
    #dbg_value(i1 %167, !884, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !930)
  br label %179, !dbg !1182

168:                                              ; preds = %164, %168
  %169 = phi i32 [ %177, %168 ], [ %162, %164 ]
  %170 = phi i1 [ %175, %168 ], [ true, %164 ]
    #dbg_value(i8 poison, !884, !DIExpression(), !930)
  %171 = sext i32 %169 to i64, !dbg !1183
  %172 = getelementptr inbounds ptr, ptr %1, i64 %171, !dbg !1183
  %173 = load ptr, ptr %172, align 8, !dbg !1183, !tbaa !647
  %174 = call fastcc zeroext i1 @nl_file(ptr noundef %173), !dbg !1184
  %175 = select i1 %174, i1 %170, i1 false, !dbg !1185
    #dbg_value(i1 %175, !884, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !930)
  %176 = load i32, ptr @optind, align 4, !dbg !1186, !tbaa !629
  %177 = add nsw i32 %176, 1, !dbg !1187
  store i32 %177, ptr @optind, align 4, !dbg !1188, !tbaa !629
  %178 = icmp slt i32 %177, %0, !dbg !1189
  br i1 %178, label %168, label %179, !dbg !1190, !llvm.loop !1191

179:                                              ; preds = %168, %164, %166
  %180 = phi i1 [ %167, %166 ], [ true, %164 ], [ %175, %168 ]
    #dbg_value(i1 %180, !884, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !930)
  %181 = load i1, ptr @have_read_stdin, align 1, !dbg !1194
  br i1 %181, label %182, label %189, !dbg !1196

182:                                              ; preds = %179
  %183 = load ptr, ptr @stdin, align 8, !dbg !1197, !tbaa !644
  %184 = call i32 @rpl_fclose(ptr noundef %183) #16, !dbg !1198
  %185 = icmp eq i32 %184, -1, !dbg !1199
  br i1 %185, label %186, label %189, !dbg !1200

186:                                              ; preds = %182
  %187 = tail call ptr @__errno_location() #19, !dbg !1201
  %188 = load i32, ptr %187, align 4, !dbg !1201, !tbaa !629
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %188, ptr noundef nonnull @.str.39) #16, !dbg !1202
  unreachable, !dbg !1202

189:                                              ; preds = %182, %179
    #dbg_value(i1 %180, !884, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !930)
  %190 = xor i1 %180, true, !dbg !1203
  %191 = zext i1 %190 to i32, !dbg !1203
  ret i32 %191, !dbg !1204
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

declare !dbg !1205 void @set_program_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !1207 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1211 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1214 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1217 i32 @atexit(ptr noundef) local_unnamed_addr #3

declare void @close_stdout() #1

; Function Attrs: nounwind
declare !dbg !1222 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @build_type_arg(ptr noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 !dbg !1228 {
    #dbg_value(ptr %0, !1233, !DIExpression(), !1238)
    #dbg_value(ptr %1, !1234, !DIExpression(), !1238)
    #dbg_value(ptr %2, !1235, !DIExpression(), !1238)
    #dbg_value(i8 1, !1237, !DIExpression(), !1238)
  %4 = load ptr, ptr @optarg, align 8, !dbg !1239, !tbaa !647
  %5 = load i8, ptr %4, align 1, !dbg !1240, !tbaa !752
  switch i8 %5, label %16 [
    i8 97, label %6
    i8 116, label %6
    i8 110, label %6
    i8 112, label %7
  ], !dbg !1241

6:                                                ; preds = %3, %3, %3
  store ptr %4, ptr %0, align 8, !dbg !1242, !tbaa !647
  br label %16, !dbg !1244

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 1, !dbg !1245
  store ptr %8, ptr @optarg, align 8, !dbg !1246, !tbaa !647
  store ptr %4, ptr %0, align 8, !dbg !1247, !tbaa !647
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !1248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !1249
  store ptr %2, ptr %9, align 8, !dbg !1250, !tbaa !1251
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !1254
  store ptr null, ptr %10, align 8, !dbg !1255, !tbaa !1256
  store i64 710, ptr @rpl_re_syntax_options, align 8, !dbg !1257, !tbaa !973
  %11 = load ptr, ptr @optarg, align 8, !dbg !1258, !tbaa !647
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #18, !dbg !1259
  %13 = tail call ptr @rpl_re_compile_pattern(ptr noundef nonnull %11, i64 noundef %12, ptr noundef nonnull %1) #16, !dbg !1260
    #dbg_value(ptr %13, !1236, !DIExpression(), !1238)
  %14 = icmp eq ptr %13, null, !dbg !1261
  br i1 %14, label %16, label %15, !dbg !1263

15:                                               ; preds = %7
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.89, ptr noundef nonnull %13) #16, !dbg !1264
  unreachable, !dbg !1264

16:                                               ; preds = %3, %7, %6
  %17 = phi i1 [ true, %7 ], [ true, %6 ], [ false, %3 ], !dbg !1238
    #dbg_value(i8 poison, !1237, !DIExpression(), !1238)
  ret i1 %17, !dbg !1265
}

declare !dbg !1266 void @error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !1270 ptr @quote(ptr noundef) local_unnamed_addr #1

declare !dbg !1274 i64 @xdectoimax(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !1277 i64 @xnumtoimax(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1280 i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !1284 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

declare !dbg !1287 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !1291 ptr @proper_name_lite(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare !dbg !1295 noalias nonnull ptr @xmalloc(i64 noundef) local_unnamed_addr #9

declare !dbg !1299 void @initbuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @nl_file(ptr noundef %0) unnamed_addr #6 !dbg !1303 {
    #dbg_value(ptr %0, !1307, !DIExpression(), !1310)
    #dbg_value(ptr %0, !755, !DIExpression(), !1311)
    #dbg_value(ptr @.str.39, !761, !DIExpression(), !1311)
  %2 = load i8, ptr %0, align 1, !dbg !1314
  %3 = icmp eq i8 %2, 45, !dbg !1314
  br i1 %3, label %4, label %10, !dbg !1314

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !1314
  %6 = load i8, ptr %5, align 1, !dbg !1314
  %7 = icmp eq i8 %6, 0, !dbg !1315
  br i1 %7, label %8, label %10, !dbg !1316

8:                                                ; preds = %4
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1317
  %9 = load ptr, ptr @stdin, align 8, !dbg !1319, !tbaa !644, !nonnull !1320, !noundef !1320
    #dbg_value(ptr %9, !1308, !DIExpression(), !1310)
  br label %16, !dbg !1321

10:                                               ; preds = %1, %4
  %11 = tail call noalias ptr @rpl_fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.93) #16, !dbg !1322
    #dbg_value(ptr %11, !1308, !DIExpression(), !1310)
  %12 = icmp eq ptr %11, null, !dbg !1324
  br i1 %12, label %13, label %16, !dbg !1326

13:                                               ; preds = %10
  %14 = tail call ptr @__errno_location() #19, !dbg !1327
  %15 = load i32, ptr %14, align 4, !dbg !1327, !tbaa !629
  br label %247, !dbg !1329

16:                                               ; preds = %10, %8
  %17 = phi ptr [ %9, %8 ], [ %11, %10 ], !dbg !1330
    #dbg_value(ptr %17, !1308, !DIExpression(), !1310)
  tail call void @fadvise(ptr noundef nonnull %17, i32 noundef 2) #16, !dbg !1331
    #dbg_value(ptr %17, !1332, !DIExpression(), !1337)
  br label %18, !dbg !1339

18:                                               ; preds = %210, %16
  %19 = tail call ptr @readlinebuffer(ptr noundef nonnull @line_buf, ptr noundef nonnull %17) #16, !dbg !1340
  %20 = icmp eq ptr %19, null, !dbg !1341
  br i1 %20, label %223, label %21, !dbg !1342

21:                                               ; preds = %18
  %22 = load i64, ptr getelementptr inbounds nuw (i8, ptr @line_buf, i64 8), align 8, !dbg !1343, !tbaa !1351
  %23 = add nsw i64 %22, -1, !dbg !1353
    #dbg_value(i64 %23, !1348, !DIExpression(), !1354)
  %24 = load i64, ptr @section_del_len, align 8, !dbg !1355, !tbaa !973
  %25 = icmp ult i64 %23, %24, !dbg !1357
  %26 = load i64, ptr @footer_del_len, align 8
  %27 = icmp ult i64 %26, %24
  %28 = select i1 %25, i1 true, i1 %27, !dbg !1358
  br i1 %28, label %102, label %29, !dbg !1358

29:                                               ; preds = %21
  %30 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @line_buf, i64 16), align 8, !dbg !1359, !tbaa !1360
  %31 = load ptr, ptr @section_del, align 8, !dbg !1361, !tbaa !647
    #dbg_value(ptr %30, !1362, !DIExpression(), !1369)
    #dbg_value(ptr %31, !1367, !DIExpression(), !1369)
    #dbg_value(i64 %24, !1368, !DIExpression(), !1369)
  %32 = tail call i32 @bcmp(ptr %30, ptr %31, i64 %24), !dbg !1371
  %33 = icmp eq i32 %32, 0, !dbg !1372
  br i1 %33, label %34, label %102, !dbg !1373

34:                                               ; preds = %29
  %35 = load i64, ptr @header_del_len, align 8, !dbg !1374, !tbaa !973
  %36 = icmp eq i64 %23, %35, !dbg !1376
  br i1 %36, label %37, label %41, !dbg !1377

37:                                               ; preds = %34
  %38 = load ptr, ptr @header_del, align 8, !dbg !1378, !tbaa !647
    #dbg_value(ptr %30, !1362, !DIExpression(), !1379)
    #dbg_value(ptr %38, !1367, !DIExpression(), !1379)
    #dbg_value(i64 %35, !1368, !DIExpression(), !1379)
  %39 = tail call i32 @bcmp(ptr %30, ptr %38, i64 %23), !dbg !1381
  %40 = icmp eq i32 %39, 0, !dbg !1382
  br i1 %40, label %54, label %41, !dbg !1383

41:                                               ; preds = %37, %34
  %42 = load i64, ptr @body_del_len, align 8, !dbg !1384, !tbaa !973
  %43 = icmp eq i64 %23, %42, !dbg !1386
  br i1 %43, label %44, label %48, !dbg !1387

44:                                               ; preds = %41
  %45 = load ptr, ptr @body_del, align 8, !dbg !1388, !tbaa !647
    #dbg_value(ptr %30, !1362, !DIExpression(), !1389)
    #dbg_value(ptr %45, !1367, !DIExpression(), !1389)
    #dbg_value(i64 %42, !1368, !DIExpression(), !1389)
  %46 = tail call i32 @bcmp(ptr %30, ptr %45, i64 %23), !dbg !1391
  %47 = icmp eq i32 %46, 0, !dbg !1392
  br i1 %47, label %70, label %48, !dbg !1393

48:                                               ; preds = %44, %41
  %49 = icmp eq i64 %23, %26, !dbg !1394
  br i1 %49, label %50, label %102, !dbg !1396

50:                                               ; preds = %48
  %51 = load ptr, ptr @footer_del, align 8, !dbg !1397, !tbaa !647
    #dbg_value(ptr %30, !1362, !DIExpression(), !1398)
    #dbg_value(ptr %51, !1367, !DIExpression(), !1398)
    #dbg_value(i64 %26, !1368, !DIExpression(), !1398)
  %52 = tail call i32 @bcmp(ptr %30, ptr %51, i64 %23), !dbg !1400
  %53 = icmp eq i32 %52, 0, !dbg !1401
  br i1 %53, label %86, label %102, !dbg !1402

54:                                               ; preds = %37
  %55 = load ptr, ptr @header_type, align 8, !dbg !1403, !tbaa !647
  store ptr %55, ptr @current_type, align 8, !dbg !1407, !tbaa !647
  store ptr @header_regex, ptr @current_regex, align 8, !dbg !1408, !tbaa !1171
  %56 = load i1, ptr @reset_numbers, align 1, !dbg !1409
  br i1 %56, label %59, label %57, !dbg !1413

57:                                               ; preds = %54
  %58 = load i64, ptr @starting_line_number, align 8, !dbg !1414, !tbaa !973
  store i64 %58, ptr @line_no, align 8, !dbg !1416, !tbaa !973
  store i1 false, ptr @line_no_overflow, align 1, !dbg !1417
  br label %59, !dbg !1418

59:                                               ; preds = %57, %54
    #dbg_value(i32 10, !1419, !DIExpression(), !1425)
  %60 = load ptr, ptr @stdout, align 8, !dbg !1427, !tbaa !644
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 40, !dbg !1428
  %62 = load ptr, ptr %61, align 8, !dbg !1428, !tbaa !1429
  %63 = getelementptr inbounds nuw i8, ptr %60, i64 48, !dbg !1428
  %64 = load ptr, ptr %63, align 8, !dbg !1428, !tbaa !1434
  %65 = icmp ult ptr %62, %64, !dbg !1428
  br i1 %65, label %68, label %66, !dbg !1435, !prof !1436

66:                                               ; preds = %59
  %67 = tail call i32 @__overflow(ptr noundef nonnull %60, i32 noundef 10) #16, !dbg !1428
  br label %210, !dbg !1428

68:                                               ; preds = %59
  %69 = getelementptr inbounds nuw i8, ptr %62, i64 1, !dbg !1437
  store ptr %69, ptr %61, align 8, !dbg !1438, !tbaa !1429
  store i8 10, ptr %62, align 1, !dbg !1439, !tbaa !752
  br label %210, !dbg !1428

70:                                               ; preds = %44
  %71 = load ptr, ptr @body_type, align 8, !dbg !1440, !tbaa !647
  store ptr %71, ptr @current_type, align 8, !dbg !1443, !tbaa !647
  store ptr @body_regex, ptr @current_regex, align 8, !dbg !1444, !tbaa !1171
  %72 = load i1, ptr @reset_numbers, align 1, !dbg !1445
  br i1 %72, label %75, label %73, !dbg !1447

73:                                               ; preds = %70
  %74 = load i64, ptr @starting_line_number, align 8, !dbg !1448, !tbaa !973
  store i64 %74, ptr @line_no, align 8, !dbg !1449, !tbaa !973
  store i1 false, ptr @line_no_overflow, align 1, !dbg !1450
  br label %75, !dbg !1451

75:                                               ; preds = %73, %70
    #dbg_value(i32 10, !1419, !DIExpression(), !1452)
  %76 = load ptr, ptr @stdout, align 8, !dbg !1454, !tbaa !644
  %77 = getelementptr inbounds nuw i8, ptr %76, i64 40, !dbg !1455
  %78 = load ptr, ptr %77, align 8, !dbg !1455, !tbaa !1429
  %79 = getelementptr inbounds nuw i8, ptr %76, i64 48, !dbg !1455
  %80 = load ptr, ptr %79, align 8, !dbg !1455, !tbaa !1434
  %81 = icmp ult ptr %78, %80, !dbg !1455
  br i1 %81, label %84, label %82, !dbg !1456, !prof !1436

82:                                               ; preds = %75
  %83 = tail call i32 @__overflow(ptr noundef nonnull %76, i32 noundef 10) #16, !dbg !1455
  br label %210, !dbg !1455

84:                                               ; preds = %75
  %85 = getelementptr inbounds nuw i8, ptr %78, i64 1, !dbg !1457
  store ptr %85, ptr %77, align 8, !dbg !1458, !tbaa !1429
  store i8 10, ptr %78, align 1, !dbg !1459, !tbaa !752
  br label %210, !dbg !1455

86:                                               ; preds = %50
  %87 = load ptr, ptr @footer_type, align 8, !dbg !1460, !tbaa !647
  store ptr %87, ptr @current_type, align 8, !dbg !1463, !tbaa !647
  store ptr @footer_regex, ptr @current_regex, align 8, !dbg !1464, !tbaa !1171
  %88 = load i1, ptr @reset_numbers, align 1, !dbg !1465
  br i1 %88, label %91, label %89, !dbg !1467

89:                                               ; preds = %86
  %90 = load i64, ptr @starting_line_number, align 8, !dbg !1468, !tbaa !973
  store i64 %90, ptr @line_no, align 8, !dbg !1469, !tbaa !973
  store i1 false, ptr @line_no_overflow, align 1, !dbg !1470
  br label %91, !dbg !1471

91:                                               ; preds = %89, %86
    #dbg_value(i32 10, !1419, !DIExpression(), !1472)
  %92 = load ptr, ptr @stdout, align 8, !dbg !1474, !tbaa !644
  %93 = getelementptr inbounds nuw i8, ptr %92, i64 40, !dbg !1475
  %94 = load ptr, ptr %93, align 8, !dbg !1475, !tbaa !1429
  %95 = getelementptr inbounds nuw i8, ptr %92, i64 48, !dbg !1475
  %96 = load ptr, ptr %95, align 8, !dbg !1475, !tbaa !1434
  %97 = icmp ult ptr %94, %96, !dbg !1475
  br i1 %97, label %100, label %98, !dbg !1476, !prof !1436

98:                                               ; preds = %91
  %99 = tail call i32 @__overflow(ptr noundef nonnull %92, i32 noundef 10) #16, !dbg !1475
  br label %210, !dbg !1475

100:                                              ; preds = %91
  %101 = getelementptr inbounds nuw i8, ptr %94, i64 1, !dbg !1477
  store ptr %101, ptr %93, align 8, !dbg !1478, !tbaa !1429
  store i8 10, ptr %94, align 1, !dbg !1479, !tbaa !752
  br label %210, !dbg !1475

102:                                              ; preds = %50, %48, %29, %21
  %103 = load ptr, ptr @current_type, align 8, !dbg !1480, !tbaa !647
  %104 = load i8, ptr %103, align 1, !dbg !1482, !tbaa !752
  switch i8 %104, label %205 [
    i8 97, label %105
    i8 116, label %151
    i8 110, label %173
    i8 112, label %177
  ], !dbg !1483

105:                                              ; preds = %102
  %106 = load i64, ptr @blank_join, align 8, !dbg !1484, !tbaa !973
  %107 = icmp sgt i64 %106, 1, !dbg !1487
  br i1 %107, label %108, label %135, !dbg !1488

108:                                              ; preds = %105
  %109 = icmp sgt i64 %22, 1, !dbg !1489
  br i1 %109, label %114, label %110, !dbg !1492

110:                                              ; preds = %108
  %111 = load i64, ptr @proc_text.blank_lines, align 8, !dbg !1493, !tbaa !973
  %112 = add nsw i64 %111, 1, !dbg !1494
  store i64 %112, ptr @proc_text.blank_lines, align 8, !dbg !1495, !tbaa !973
  %113 = icmp eq i64 %112, %106, !dbg !1496
  br i1 %113, label %114, label %131, !dbg !1497

114:                                              ; preds = %110, %108
  %115 = load i1, ptr @line_no_overflow, align 1, !dbg !1498
  br i1 %115, label %116, label %118, !dbg !1503

116:                                              ; preds = %114
  %117 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.95, i32 noundef 5) #16, !dbg !1504
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %117) #16, !dbg !1505
  unreachable, !dbg !1505

118:                                              ; preds = %114
  %119 = load ptr, ptr @lineno_format, align 8, !dbg !1506, !tbaa !647
  %120 = load i32, ptr @lineno_width, align 4, !dbg !1507, !tbaa !629
  %121 = load i64, ptr @line_no, align 8, !dbg !1508, !tbaa !973
  %122 = load ptr, ptr @separator_str, align 8, !dbg !1509, !tbaa !647
  %123 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %119, i32 noundef %120, i64 noundef %121, ptr noundef %122) #16, !dbg !1510
  %124 = load i64, ptr @line_no, align 8, !dbg !1511, !tbaa !973
  %125 = load i64, ptr @page_incr, align 8, !dbg !1513, !tbaa !973
  %126 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %124, i64 %125), !dbg !1514
  %127 = extractvalue { i64, i1 } %126, 1, !dbg !1515
  %128 = extractvalue { i64, i1 } %126, 0, !dbg !1514
  store i64 %128, ptr @line_no, align 8, !dbg !1514
  br i1 %127, label %129, label %130, !dbg !1516

129:                                              ; preds = %118
  store i1 true, ptr @line_no_overflow, align 1, !dbg !1517
  br label %130, !dbg !1518

130:                                              ; preds = %129, %118
  store i64 0, ptr @proc_text.blank_lines, align 8, !dbg !1519, !tbaa !973
  br label %205, !dbg !1520

131:                                              ; preds = %110
  %132 = load ptr, ptr @print_no_line_fmt, align 8, !dbg !1521, !tbaa !647
  %133 = load ptr, ptr @stdout, align 8, !dbg !1522, !tbaa !644
  %134 = tail call i32 @fputs_unlocked(ptr noundef %132, ptr noundef %133), !dbg !1523
  br label %205

135:                                              ; preds = %105
  %136 = load i1, ptr @line_no_overflow, align 1, !dbg !1524
  br i1 %136, label %137, label %139, !dbg !1526

137:                                              ; preds = %135
  %138 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.95, i32 noundef 5) #16, !dbg !1527
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %138) #16, !dbg !1528
  unreachable, !dbg !1528

139:                                              ; preds = %135
  %140 = load ptr, ptr @lineno_format, align 8, !dbg !1529, !tbaa !647
  %141 = load i32, ptr @lineno_width, align 4, !dbg !1530, !tbaa !629
  %142 = load i64, ptr @line_no, align 8, !dbg !1531, !tbaa !973
  %143 = load ptr, ptr @separator_str, align 8, !dbg !1532, !tbaa !647
  %144 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %140, i32 noundef %141, i64 noundef %142, ptr noundef %143) #16, !dbg !1533
  %145 = load i64, ptr @line_no, align 8, !dbg !1534, !tbaa !973
  %146 = load i64, ptr @page_incr, align 8, !dbg !1535, !tbaa !973
  %147 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %145, i64 %146), !dbg !1536
  %148 = extractvalue { i64, i1 } %147, 1, !dbg !1537
  %149 = extractvalue { i64, i1 } %147, 0, !dbg !1536
  store i64 %149, ptr @line_no, align 8, !dbg !1536
  br i1 %148, label %150, label %205, !dbg !1538

150:                                              ; preds = %139
  store i1 true, ptr @line_no_overflow, align 1, !dbg !1539
  br label %205, !dbg !1540

151:                                              ; preds = %102
  %152 = icmp sgt i64 %22, 1, !dbg !1541
  br i1 %152, label %153, label %169, !dbg !1543

153:                                              ; preds = %151
  %154 = load i1, ptr @line_no_overflow, align 1, !dbg !1544
  br i1 %154, label %155, label %157, !dbg !1546

155:                                              ; preds = %153
  %156 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.95, i32 noundef 5) #16, !dbg !1547
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %156) #16, !dbg !1548
  unreachable, !dbg !1548

157:                                              ; preds = %153
  %158 = load ptr, ptr @lineno_format, align 8, !dbg !1549, !tbaa !647
  %159 = load i32, ptr @lineno_width, align 4, !dbg !1550, !tbaa !629
  %160 = load i64, ptr @line_no, align 8, !dbg !1551, !tbaa !973
  %161 = load ptr, ptr @separator_str, align 8, !dbg !1552, !tbaa !647
  %162 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %158, i32 noundef %159, i64 noundef %160, ptr noundef %161) #16, !dbg !1553
  %163 = load i64, ptr @line_no, align 8, !dbg !1554, !tbaa !973
  %164 = load i64, ptr @page_incr, align 8, !dbg !1555, !tbaa !973
  %165 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %163, i64 %164), !dbg !1556
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !1557
  %167 = extractvalue { i64, i1 } %165, 0, !dbg !1556
  store i64 %167, ptr @line_no, align 8, !dbg !1556
  br i1 %166, label %168, label %205, !dbg !1558

168:                                              ; preds = %157
  store i1 true, ptr @line_no_overflow, align 1, !dbg !1559
  br label %205, !dbg !1560

169:                                              ; preds = %151
  %170 = load ptr, ptr @print_no_line_fmt, align 8, !dbg !1561, !tbaa !647
  %171 = load ptr, ptr @stdout, align 8, !dbg !1562, !tbaa !644
  %172 = tail call i32 @fputs_unlocked(ptr noundef %170, ptr noundef %171), !dbg !1563
  br label %205

173:                                              ; preds = %102
  %174 = load ptr, ptr @print_no_line_fmt, align 8, !dbg !1564, !tbaa !647
  %175 = load ptr, ptr @stdout, align 8, !dbg !1565, !tbaa !644
  %176 = tail call i32 @fputs_unlocked(ptr noundef %174, ptr noundef %175), !dbg !1566
  br label %205, !dbg !1567

177:                                              ; preds = %102
  %178 = load ptr, ptr @current_regex, align 8, !dbg !1568, !tbaa !1171
  %179 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @line_buf, i64 16), align 8, !dbg !1569, !tbaa !1360
  %180 = tail call i64 @rpl_re_search(ptr noundef %178, ptr noundef %179, i64 noundef %23, i64 noundef 0, i64 noundef %23, ptr noundef null) #16, !dbg !1570
  switch i64 %180, label %189 [
    i64 -2, label %181
    i64 -1, label %185
  ], !dbg !1571

181:                                              ; preds = %177
  %182 = tail call ptr @__errno_location() #19, !dbg !1572
  %183 = load i32, ptr %182, align 4, !dbg !1572, !tbaa !629
  %184 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.94, i32 noundef 5) #16, !dbg !1574
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %183, ptr noundef %184) #16, !dbg !1575
  unreachable, !dbg !1575

185:                                              ; preds = %177
  %186 = load ptr, ptr @print_no_line_fmt, align 8, !dbg !1576, !tbaa !647
  %187 = load ptr, ptr @stdout, align 8, !dbg !1577, !tbaa !644
  %188 = tail call i32 @fputs_unlocked(ptr noundef %186, ptr noundef %187), !dbg !1578
  br label %205, !dbg !1579

189:                                              ; preds = %177
  %190 = load i1, ptr @line_no_overflow, align 1, !dbg !1580
  br i1 %190, label %191, label %193, !dbg !1582

191:                                              ; preds = %189
  %192 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.95, i32 noundef 5) #16, !dbg !1583
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %192) #16, !dbg !1584
  unreachable, !dbg !1584

193:                                              ; preds = %189
  %194 = load ptr, ptr @lineno_format, align 8, !dbg !1585, !tbaa !647
  %195 = load i32, ptr @lineno_width, align 4, !dbg !1586, !tbaa !629
  %196 = load i64, ptr @line_no, align 8, !dbg !1587, !tbaa !973
  %197 = load ptr, ptr @separator_str, align 8, !dbg !1588, !tbaa !647
  %198 = tail call i32 (ptr, ...) @rpl_printf(ptr noundef %194, i32 noundef %195, i64 noundef %196, ptr noundef %197) #16, !dbg !1589
  %199 = load i64, ptr @line_no, align 8, !dbg !1590, !tbaa !973
  %200 = load i64, ptr @page_incr, align 8, !dbg !1591, !tbaa !973
  %201 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %199, i64 %200), !dbg !1592
  %202 = extractvalue { i64, i1 } %201, 1, !dbg !1593
  %203 = extractvalue { i64, i1 } %201, 0, !dbg !1592
  store i64 %203, ptr @line_no, align 8, !dbg !1592
  br i1 %202, label %204, label %205, !dbg !1594

204:                                              ; preds = %193
  store i1 true, ptr @line_no_overflow, align 1, !dbg !1595
  br label %205, !dbg !1596

205:                                              ; preds = %204, %193, %185, %173, %169, %168, %157, %150, %139, %131, %130, %102
  %206 = load i64, ptr getelementptr inbounds nuw (i8, ptr @line_buf, i64 8), align 8, !dbg !1597, !tbaa !1351
  %207 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @line_buf, i64 16), align 8, !dbg !1598, !tbaa !1360
  %208 = load ptr, ptr @stdout, align 8, !dbg !1599, !tbaa !644
  %209 = tail call i64 @fwrite_unlocked(ptr noundef %207, i64 noundef 1, i64 noundef %206, ptr noundef %208), !dbg !1600
  br label %210, !dbg !1600

210:                                              ; preds = %205, %100, %98, %84, %82, %68, %66
  %211 = load ptr, ptr @stdout, align 8, !dbg !1601, !tbaa !644
    #dbg_value(ptr %211, !1603, !DIExpression(), !1608)
  %212 = load i32, ptr %211, align 8, !dbg !1610, !tbaa !1611
  %213 = and i32 %212, 32, !dbg !1612
  %214 = icmp eq i32 %213, 0, !dbg !1612
  br i1 %214, label %18, label %215, !dbg !1613, !llvm.loop !1614

215:                                              ; preds = %210
  %216 = tail call ptr @__errno_location() #19, !dbg !1616
  %217 = load i32, ptr %216, align 4, !dbg !1621, !tbaa !629
    #dbg_value(i32 %217, !1619, !DIExpression(), !1622)
  %218 = tail call i32 @fflush_unlocked(ptr noundef nonnull %211) #16, !dbg !1623
  %219 = load ptr, ptr @stdout, align 8, !dbg !1624, !tbaa !644
  %220 = tail call i32 @fpurge(ptr noundef %219) #16, !dbg !1625
  %221 = load ptr, ptr @stdout, align 8, !dbg !1626, !tbaa !644
  tail call void @clearerr_unlocked(ptr noundef %221) #16, !dbg !1627
  %222 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.96, i32 noundef 5) #16, !dbg !1628
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %217, ptr noundef %222) #16, !dbg !1629
  unreachable, !dbg !1629

223:                                              ; preds = %18
  %224 = tail call ptr @__errno_location() #19, !dbg !1630
  %225 = load i32, ptr %224, align 4, !dbg !1631, !tbaa !629
    #dbg_value(i32 %225, !1309, !DIExpression(), !1310)
    #dbg_value(ptr %17, !1603, !DIExpression(), !1632)
  %226 = load i32, ptr %17, align 8, !dbg !1635, !tbaa !1611
  %227 = and i32 %226, 32, !dbg !1636
  %228 = icmp eq i32 %227, 0, !dbg !1636
  %229 = select i1 %228, i32 0, i32 %225, !dbg !1637
    #dbg_value(i32 %229, !1309, !DIExpression(), !1310)
    #dbg_value(ptr %0, !755, !DIExpression(), !1638)
    #dbg_value(ptr @.str.39, !761, !DIExpression(), !1638)
  %230 = load i8, ptr %0, align 1, !dbg !1641
  %231 = icmp eq i8 %230, 45, !dbg !1641
  br i1 %231, label %232, label %237, !dbg !1641

232:                                              ; preds = %223
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !1641
  %234 = load i8, ptr %233, align 1, !dbg !1641
  %235 = icmp eq i8 %234, 0, !dbg !1642
  br i1 %235, label %236, label %237, !dbg !1643

236:                                              ; preds = %232
  tail call void @clearerr_unlocked(ptr noundef nonnull %17) #16, !dbg !1644
  br label %244, !dbg !1644

237:                                              ; preds = %223, %232
  %238 = tail call i32 @rpl_fclose(ptr noundef nonnull %17) #16, !dbg !1645
  %239 = icmp eq i32 %238, 0, !dbg !1647
  %240 = icmp ne i32 %229, 0
  %241 = select i1 %239, i1 true, i1 %240, !dbg !1648
  br i1 %241, label %244, label %242, !dbg !1648

242:                                              ; preds = %237
  %243 = load i32, ptr %224, align 4, !dbg !1649, !tbaa !629
    #dbg_value(i32 %243, !1309, !DIExpression(), !1310)
  br label %244, !dbg !1650

244:                                              ; preds = %237, %242, %236
  %245 = phi i32 [ %229, %236 ], [ %229, %237 ], [ %243, %242 ], !dbg !1310
    #dbg_value(i32 %245, !1309, !DIExpression(), !1310)
  %246 = icmp eq i32 %245, 0, !dbg !1651
  br i1 %246, label %250, label %247, !dbg !1653

247:                                              ; preds = %244, %13
  %248 = phi i32 [ %15, %13 ], [ %245, %244 ]
  %249 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef nonnull %0) #16, !dbg !1310
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %248, ptr noundef nonnull @.str.89, ptr noundef %249) #16, !dbg !1310
  br label %250, !dbg !1654

250:                                              ; preds = %247, %244
  %251 = phi i1 [ true, %244 ], [ false, %247 ], !dbg !1310
  ret i1 %251, !dbg !1654
}

declare !dbg !1655 i32 @rpl_fclose(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1656 ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1660 noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1661 i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1664 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1667 ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1673 i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !1674 noundef i64 @fwrite_unlocked(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1677 i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

declare !dbg !1680 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !1683 void @emit_bug_reporting_address() local_unnamed_addr #1

declare !dbg !1684 ptr @rpl_re_compile_pattern(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare !dbg !1687 i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare !dbg !1690 i64 @rpl_mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1696 noalias ptr @rpl_fopen(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1699 ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1702 void @fadvise(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !1706 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

declare !dbg !1707 ptr @readlinebuffer(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1710 i64 @rpl_re_search(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #12

declare !dbg !1724 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #1

declare !dbg !1725 i32 @fpurge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias readonly captures(none)) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias readonly captures(none)) #15

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind willreturn memory(none) }
attributes #20 = { noreturn }
attributes #21 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!106}
!llvm.module.flags = !{!621, !622, !623, !624, !625, !626, !627}
!llvm.ident = !{!628}
!llvm.errno.tbaa = !{!629}

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
!105 = distinct !DIGlobalVariable(name: "header_type", scope: !106, file: !2, line: 69, type: !183, isLocal: true, isDefinition: true)
!106 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, retainedTypes: !176, globals: !187, splitDebugInlining: false, nameTableKind: None)
!107 = !{!108, !116, !122, !137, !141, !144, !147, !161, !170}
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
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !138, line: 131, baseType: !110, size: 32, elements: !139)
!138 = !DIFile(filename: "./lib/mcel.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3579582c4826b47e433381dcd966e882")
!139 = !{!140}
!140 = !DIEnumerator(name: "MCEL_ERR_MIN", value: 128)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !138, line: 127, baseType: !110, size: 32, elements: !142)
!142 = !{!143}
!143 = !DIEnumerator(name: "MCEL_LEN_MAX", value: 4)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !138, line: 130, baseType: !110, size: 32, elements: !145)
!145 = !{!146}
!146 = !DIEnumerator(name: "MCEL_CHAR_MAX", value: 1114111)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !148, line: 42, baseType: !110, size: 32, elements: !149)
!148 = !DIFile(filename: "./lib/quotearg.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160}
!150 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!151 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!152 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!153 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!154 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!155 = !DIEnumerator(name: "c_quoting_style", value: 5)
!156 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!157 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!158 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!159 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!160 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !162, line: 44, baseType: !110, size: 32, elements: !163)
!162 = !DIFile(filename: "./lib/fadvise.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!163 = !{!164, !165, !166, !167, !168, !169}
!164 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!165 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!166 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!167 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!168 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!169 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "section", file: !2, line: 60, baseType: !110, size: 32, elements: !171)
!171 = !{!172, !173, !174, !175}
!172 = !DIEnumerator(name: "Header", value: 0)
!173 = !DIEnumerator(name: "Body", value: 1)
!174 = !DIEnumerator(name: "Footer", value: 2)
!175 = !DIEnumerator(name: "Text", value: 3)
!176 = !{!177, !178, !118, !179, !180, !183, !185, !186}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!179 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !181, line: 18, baseType: !182)
!181 = !DIFile(filename: "/usr/lib/llvm-22/lib/clang/22/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!182 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!185 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!186 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!187 = !{!0, !7, !12, !17, !22, !27, !29, !34, !36, !38, !43, !48, !50, !52, !57, !62, !67, !69, !74, !79, !84, !89, !94, !99, !188, !193, !195, !197, !202, !207, !209, !214, !216, !218, !220, !225, !230, !235, !237, !242, !244, !246, !270, !272, !274, !279, !281, !283, !285, !287, !289, !291, !302, !308, !310, !315, !317, !397, !402, !404, !409, !414, !416, !418, !420, !422, !424, !426, !428, !433, !438, !440, !442, !444, !446, !448, !450, !455, !460, !465, !470, !472, !474, !476, !478, !480, !482, !484, !489, !494, !499, !501, !503, !505, !510, !512, !514, !516, !518, !523, !525, !530, !532, !534, !546, !548, !104, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !573, !575, !578, !580, !582, !587, !589, !591, !593, !595, !598, !600, !602, !612, !614, !616}
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !2, line: 521, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 35)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !2, line: 529, type: !9, isLocal: true, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !2, line: 537, type: !190, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !2, line: 544, type: !199, isLocal: true, isDefinition: true)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 29)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !2, line: 549, type: !204, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 30)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !2, line: 556, type: !190, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !2, line: 564, type: !211, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 32)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !2, line: 568, type: !19, isLocal: true, isDefinition: true)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !2, line: 570, type: !19, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !2, line: 572, type: !19, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !2, line: 576, type: !222, isLocal: true, isDefinition: true)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 34)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !2, line: 591, type: !227, isLocal: true, isDefinition: true)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 2)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !2, line: 604, type: !232, isLocal: true, isDefinition: true)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 14)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !2, line: 604, type: !232, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !2, line: 604, type: !239, isLocal: true, isDefinition: true)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 16)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !2, line: 643, type: !227, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "current_type", scope: !106, file: !2, line: 75, type: !183, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "body_regex", scope: !106, file: !2, line: 78, type: !248, isLocal: true, isDefinition: true)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_pattern_buffer", file: !249, line: 413, size: 512, elements: !250)
!249 = !DIFile(filename: "./lib/regex.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "c7ce0bd618e9dd1feda94c2b9b45d3f8")
!250 = !{!251, !254, !256, !257, !259, !260, !262, !263, !264, !265, !266, !267, !268, !269}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !248, file: !249, line: 417, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_dfa_t", file: !249, line: 417, flags: DIFlagFwdDecl)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !248, file: !249, line: 420, baseType: !255, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_long_size_t", file: !249, line: 49, baseType: !180)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !248, file: !249, line: 423, baseType: !255, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "syntax", scope: !248, file: !249, line: 426, baseType: !258, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_syntax_t", file: !249, line: 71, baseType: !182)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap", scope: !248, file: !249, line: 431, baseType: !177, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !248, file: !249, line: 437, baseType: !261, size: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !248, file: !249, line: 440, baseType: !180, size: 64, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_null", scope: !248, file: !249, line: 446, baseType: !110, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "regs_allocated", scope: !248, file: !249, line: 457, baseType: !110, size: 2, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap_accurate", scope: !248, file: !249, line: 461, baseType: !110, size: 1, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "no_sub", scope: !248, file: !249, line: 465, baseType: !110, size: 1, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "not_bol", scope: !248, file: !249, line: 469, baseType: !110, size: 1, offset: 453, flags: DIFlagBitField, extraData: i64 448)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "not_eol", scope: !248, file: !249, line: 472, baseType: !110, size: 1, offset: 454, flags: DIFlagBitField, extraData: i64 448)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "newline_anchor", scope: !248, file: !249, line: 475, baseType: !110, size: 1, offset: 455, flags: DIFlagBitField, extraData: i64 448)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "header_regex", scope: !106, file: !2, line: 81, type: !248, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "footer_regex", scope: !106, file: !2, line: 84, type: !248, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "body_fastmap", scope: !106, file: !2, line: 87, type: !276, isLocal: true, isDefinition: true)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 256)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(name: "header_fastmap", scope: !106, file: !2, line: 88, type: !276, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(name: "footer_fastmap", scope: !106, file: !2, line: 89, type: !276, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(name: "section_del_len", scope: !106, file: !2, line: 101, type: !180, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "header_del_len", scope: !106, file: !2, line: 107, type: !180, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(name: "body_del_len", scope: !106, file: !2, line: 113, type: !180, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(name: "footer_del_len", scope: !106, file: !2, line: 119, type: !180, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "line_buf", scope: !106, file: !2, line: 122, type: !293, isLocal: true, isDefinition: true)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !294, line: 32, size: 192, elements: !295)
!294 = !DIFile(filename: "./lib/linebuffer.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "e2597f62c7d5286d9e09d95cf657d3bc")
!295 = !{!296, !300, !301}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !293, file: !294, line: 34, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !298, line: 137, baseType: !299)
!298 = !DIFile(filename: "./lib/idx.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "a342c053ede588630cf36a09403114d3")
!299 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !293, file: !294, line: 35, baseType: !297, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !293, file: !294, line: 36, baseType: !177, size: 64, offset: 128)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "line_no", scope: !106, file: !2, line: 146, type: !304, isLocal: true, isDefinition: true)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !305, line: 101, baseType: !306)
!305 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !307, line: 72, baseType: !299)
!307 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !106, file: !2, line: 152, type: !186, isLocal: true, isDefinition: true)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !117, line: 748, type: !312, isLocal: true, isDefinition: true)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 56)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !117, line: 755, type: !45, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !319, file: !117, line: 594, type: !118, isLocal: true, isDefinition: true)
!319 = distinct !DISubprogram(name: "oputs_", scope: !117, file: !117, line: 592, type: !320, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !322, keyInstructions: true)
!320 = !DISubroutineType(cc: DW_CC_nocall, types: !321)
!321 = !{null, !183, !183}
!322 = !{!323, !324, !325, !328, !329, !330, !331, !335, !336, !337, !338, !340, !391, !392, !393, !395, !396}
!323 = !DILocalVariable(name: "program", arg: 1, scope: !319, file: !117, line: 592, type: !183)
!324 = !DILocalVariable(name: "option", arg: 2, scope: !319, file: !117, line: 592, type: !183)
!325 = !DILocalVariable(name: "term", scope: !326, file: !117, line: 604, type: !183)
!326 = distinct !DILexicalBlock(scope: !327, file: !117, line: 601, column: 5)
!327 = distinct !DILexicalBlock(scope: !319, file: !117, line: 600, column: 7)
!328 = !DILocalVariable(name: "double_space", scope: !319, file: !117, line: 613, type: !186)
!329 = !DILocalVariable(name: "first_word", scope: !319, file: !117, line: 614, type: !183)
!330 = !DILocalVariable(name: "option_text", scope: !319, file: !117, line: 615, type: !183)
!331 = !DILocalVariable(name: "s", scope: !332, file: !117, line: 627, type: !183)
!332 = distinct !DILexicalBlock(scope: !333, file: !117, line: 624, column: 5)
!333 = distinct !DILexicalBlock(scope: !334, file: !117, line: 623, column: 12)
!334 = distinct !DILexicalBlock(scope: !319, file: !117, line: 616, column: 7)
!335 = !DILocalVariable(name: "spaces", scope: !332, file: !117, line: 628, type: !180)
!336 = !DILocalVariable(name: "anchor_len", scope: !319, file: !117, line: 639, type: !180)
!337 = !DILocalVariable(name: "desc_text", scope: !319, file: !117, line: 644, type: !183)
!338 = !DILocalVariable(name: "__ptr", scope: !339, file: !117, line: 663, type: !183)
!339 = distinct !DILexicalBlock(scope: !319, file: !117, line: 663, column: 3)
!340 = !DILocalVariable(name: "__stream", scope: !339, file: !117, line: 663, type: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !343, line: 7, baseType: !344)
!343 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !345, line: 49, size: 1728, elements: !346)
!345 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!346 = !{!347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !362, !364, !365, !366, !368, !369, !371, !372, !375, !377, !380, !383, !384, !385, !386, !387}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !344, file: !345, line: 51, baseType: !118, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !344, file: !345, line: 54, baseType: !177, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !344, file: !345, line: 55, baseType: !177, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !344, file: !345, line: 56, baseType: !177, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !344, file: !345, line: 57, baseType: !177, size: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !344, file: !345, line: 58, baseType: !177, size: 64, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !344, file: !345, line: 59, baseType: !177, size: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !344, file: !345, line: 60, baseType: !177, size: 64, offset: 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !344, file: !345, line: 61, baseType: !177, size: 64, offset: 512)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !344, file: !345, line: 64, baseType: !177, size: 64, offset: 576)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !344, file: !345, line: 65, baseType: !177, size: 64, offset: 640)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !344, file: !345, line: 66, baseType: !177, size: 64, offset: 704)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !344, file: !345, line: 68, baseType: !360, size: 64, offset: 768)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !345, line: 36, flags: DIFlagFwdDecl)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !344, file: !345, line: 70, baseType: !363, size: 64, offset: 832)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !344, file: !345, line: 72, baseType: !118, size: 32, offset: 896)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !344, file: !345, line: 73, baseType: !118, size: 32, offset: 928)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !344, file: !345, line: 74, baseType: !367, size: 64, offset: 960)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !307, line: 152, baseType: !299)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !344, file: !345, line: 77, baseType: !179, size: 16, offset: 1024)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !344, file: !345, line: 78, baseType: !370, size: 8, offset: 1040)
!370 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !344, file: !345, line: 79, baseType: !86, size: 8, offset: 1048)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !344, file: !345, line: 81, baseType: !373, size: 64, offset: 1088)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !345, line: 43, baseType: null)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !344, file: !345, line: 89, baseType: !376, size: 64, offset: 1152)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !307, line: 153, baseType: !299)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !344, file: !345, line: 91, baseType: !378, size: 64, offset: 1216)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !345, line: 37, flags: DIFlagFwdDecl)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !344, file: !345, line: 92, baseType: !381, size: 64, offset: 1280)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !345, line: 38, flags: DIFlagFwdDecl)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !344, file: !345, line: 93, baseType: !363, size: 64, offset: 1344)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !344, file: !345, line: 94, baseType: !178, size: 64, offset: 1408)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !344, file: !345, line: 95, baseType: !180, size: 64, offset: 1472)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !344, file: !345, line: 96, baseType: !118, size: 32, offset: 1536)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !344, file: !345, line: 98, baseType: !388, size: 160, offset: 1568)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 20)
!391 = !DILocalVariable(name: "__cnt", scope: !339, file: !117, line: 663, type: !180)
!392 = !DILocalVariable(name: "url_program", scope: !319, file: !117, line: 667, type: !183)
!393 = !DILocalVariable(name: "__ptr", scope: !394, file: !117, line: 705, type: !183)
!394 = distinct !DILexicalBlock(scope: !319, file: !117, line: 705, column: 3)
!395 = !DILocalVariable(name: "__stream", scope: !394, file: !117, line: 705, type: !341)
!396 = !DILocalVariable(name: "__cnt", scope: !394, file: !117, line: 705, type: !180)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !117, line: 604, type: !399, isLocal: true, isDefinition: true)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 5)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !117, line: 605, type: !399, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !117, line: 614, type: !406, isLocal: true, isDefinition: true)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 4)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !117, line: 639, type: !411, isLocal: true, isDefinition: true)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 6)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !117, line: 667, type: !227, isLocal: true, isDefinition: true)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !117, line: 667, type: !399, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !117, line: 668, type: !406, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !117, line: 668, type: !19, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !117, line: 669, type: !399, isLocal: true, isDefinition: true)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !117, line: 670, type: !411, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !117, line: 670, type: !411, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !117, line: 671, type: !430, isLocal: true, isDefinition: true)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 7)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !117, line: 672, type: !435, isLocal: true, isDefinition: true)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 8)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !117, line: 673, type: !91, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !117, line: 674, type: !91, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !117, line: 675, type: !91, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !117, line: 676, type: !91, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !117, line: 682, type: !430, isLocal: true, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !117, line: 683, type: !91, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !117, line: 688, type: !452, isLocal: true, isDefinition: true)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 17)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !117, line: 688, type: !457, isLocal: true, isDefinition: true)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 40)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !117, line: 695, type: !462, isLocal: true, isDefinition: true)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 15)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !117, line: 695, type: !467, isLocal: true, isDefinition: true)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 61)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !117, line: 698, type: !19, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !117, line: 702, type: !399, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !117, line: 707, type: !399, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !117, line: 710, type: !435, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !117, line: 858, type: !239, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !117, line: 859, type: !101, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !117, line: 860, type: !462, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !117, line: 882, type: !486, isLocal: true, isDefinition: true)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !487)
!487 = !{!488}
!488 = !DISubrange(count: 27)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !117, line: 884, type: !491, isLocal: true, isDefinition: true)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 51)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !117, line: 885, type: !496, isLocal: true, isDefinition: true)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !497)
!497 = !{!498}
!498 = !DISubrange(count: 12)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !2, line: 156, type: !452, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !2, line: 157, type: !462, isLocal: true, isDefinition: true)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !452, isLocal: true, isDefinition: true)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !507, isLocal: true, isDefinition: true)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !508)
!508 = !{!509}
!509 = !DISubrange(count: 21)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !462, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !2, line: 161, type: !496, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !452, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !452, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !520, isLocal: true, isDefinition: true)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 13)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !2, line: 165, type: !232, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !2, line: 166, type: !527, isLocal: true, isDefinition: true)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !528)
!528 = !{!529}
!529 = !DISubrange(count: 18)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !2, line: 167, type: !399, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !2, line: 168, type: !435, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(name: "longopts", scope: !106, file: !2, line: 154, type: !536, isLocal: true, isDefinition: true)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 3584, elements: !233)
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !538)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !539, line: 50, size: 256, elements: !540)
!539 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!540 = !{!541, !542, !543, !545}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !538, file: !539, line: 52, baseType: !183, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !538, file: !539, line: 55, baseType: !118, size: 32, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !538, file: !539, line: 56, baseType: !544, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !538, file: !539, line: 57, baseType: !118, size: 32, offset: 192)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !2, line: 287, type: !19, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !227, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !227, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "body_type", scope: !106, file: !2, line: 66, type: !183, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(name: "footer_type", scope: !106, file: !2, line: 72, type: !183, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(name: "starting_line_number", scope: !106, file: !2, line: 128, type: !304, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(name: "page_incr", scope: !106, file: !2, line: 131, type: !304, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(name: "reset_numbers", scope: !106, file: !2, line: 134, type: !186, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(name: "blank_join", scope: !106, file: !2, line: 137, type: !304, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !227, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(name: "separator_str", scope: !106, file: !2, line: 95, type: !183, isLocal: true, isDefinition: true)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(name: "lineno_width", scope: !106, file: !2, line: 140, type: !118, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(name: "FORMAT_LEFT", scope: !106, file: !2, line: 53, type: !572, isLocal: true, isDefinition: true)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 64, elements: !436)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(name: "lineno_format", scope: !106, file: !2, line: 143, type: !183, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(name: "FORMAT_RIGHT_NOLZ", scope: !106, file: !2, line: 47, type: !577, isLocal: true, isDefinition: true)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 56, elements: !431)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(name: "FORMAT_RIGHT_LZ", scope: !106, file: !2, line: 50, type: !572, isLocal: true, isDefinition: true)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(name: "section_del", scope: !106, file: !2, line: 98, type: !177, isLocal: true, isDefinition: true)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(name: "DEFAULT_SECTION_DELIMITERS", scope: !106, file: !2, line: 56, type: !584, isLocal: true, isDefinition: true)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 9)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(name: "header_del", scope: !106, file: !2, line: 104, type: !177, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(name: "body_del", scope: !106, file: !2, line: 110, type: !177, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(name: "footer_del", scope: !106, file: !2, line: 116, type: !177, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(name: "print_no_line_fmt", scope: !106, file: !2, line: 125, type: !177, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(name: "current_regex", scope: !106, file: !2, line: 92, type: !597, isLocal: true, isDefinition: true)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !2, line: 470, type: !227, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(name: "line_no_overflow", scope: !106, file: !2, line: 149, type: !186, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(name: "blank_lines", scope: !604, file: !2, line: 358, type: !304, isLocal: true, isDefinition: true)
!604 = distinct !DISubprogram(name: "proc_text", scope: !2, file: !2, line: 356, type: !605, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !607, keyInstructions: true)
!605 = !DISubroutineType(types: !606)
!606 = !{null}
!607 = !{!608, !610, !611}
!608 = !DILocalVariable(name: "__ptr", scope: !609, file: !2, line: 401, type: !183)
!609 = distinct !DILexicalBlock(scope: !604, file: !2, line: 401, column: 3)
!610 = !DILocalVariable(name: "__stream", scope: !609, file: !2, line: 401, type: !341)
!611 = !DILocalVariable(name: "__cnt", scope: !609, file: !2, line: 401, type: !180)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !2, line: 390, type: !190, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !2, line: 302, type: !507, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !117, line: 959, type: !496, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!619 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!620 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!621 = !{i32 7, !"Dwarf Version", i32 5}
!622 = !{i32 2, !"Debug Info Version", i32 3}
!623 = !{i32 1, !"wchar_size", i32 4}
!624 = !{i32 8, !"PIC Level", i32 2}
!625 = !{i32 7, !"PIE Level", i32 2}
!626 = !{i32 7, !"uwtable", i32 2}
!627 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!628 = !{!"Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)"}
!629 = !{!630, !630, i64 0}
!630 = !{!"int", !631, i64 0}
!631 = !{!"omnipotent char", !632, i64 0}
!632 = !{!"Simple C/C++ TBAA"}
!633 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 175, type: !634, scopeLine: 176, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !636, keyInstructions: true)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !118}
!636 = !{!637}
!637 = !DILocalVariable(name: "status", arg: 1, scope: !633, file: !2, line: 175, type: !118)
!638 = !DILocation(line: 0, scope: !633)
!639 = !DILocation(line: 177, column: 14, scope: !640, atomGroup: 1, atomRank: 2)
!640 = distinct !DILexicalBlock(scope: !633, file: !2, line: 177, column: 7)
!641 = !DILocation(line: 177, column: 14, scope: !640, atomGroup: 1, atomRank: 1)
!642 = !DILocation(line: 178, column: 5, scope: !643)
!643 = distinct !DILexicalBlock(scope: !640, file: !2, line: 178, column: 5)
!644 = !{!645, !645, i64 0}
!645 = !{!"p1 _ZTS8_IO_FILE", !646, i64 0}
!646 = !{!"any pointer", !631, i64 0}
!647 = !{!648, !648, i64 0}
!648 = !{!"p1 omnipotent char", !646, i64 0}
!649 = !DILocation(line: 181, column: 15, scope: !650)
!650 = distinct !DILexicalBlock(scope: !640, file: !2, line: 180, column: 5)
!651 = !DILocation(line: 184, column: 15, scope: !650)
!652 = !DILocation(line: 181, column: 7, scope: !650)
!653 = !DILocation(line: 185, column: 14, scope: !650)
!654 = !DILocation(line: 187, column: 5, scope: !650)
!655 = !DILocation(line: 185, column: 7, scope: !650)
!656 = !DILocation(line: 748, column: 10, scope: !657, inlinedAt: !658)
!657 = distinct !DISubprogram(name: "emit_stdin_note", scope: !117, file: !117, line: 746, type: !605, scopeLine: 747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, keyInstructions: true)
!658 = distinct !DILocation(line: 189, column: 7, scope: !650)
!659 = !DILocation(line: 750, column: 5, scope: !657, inlinedAt: !658)
!660 = !DILocation(line: 748, column: 3, scope: !657, inlinedAt: !658)
!661 = !DILocation(line: 755, column: 10, scope: !662, inlinedAt: !663)
!662 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !117, file: !117, line: 753, type: !605, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, keyInstructions: true)
!663 = distinct !DILocation(line: 190, column: 7, scope: !650)
!664 = !DILocation(line: 757, column: 5, scope: !662, inlinedAt: !663)
!665 = !DILocation(line: 755, column: 3, scope: !662, inlinedAt: !663)
!666 = !DILocation(line: 192, column: 14, scope: !650)
!667 = !DILocation(line: 192, column: 7, scope: !650)
!668 = !DILocation(line: 195, column: 14, scope: !650)
!669 = !DILocation(line: 195, column: 7, scope: !650)
!670 = !DILocation(line: 198, column: 14, scope: !650)
!671 = !DILocation(line: 198, column: 7, scope: !650)
!672 = !DILocation(line: 201, column: 14, scope: !650)
!673 = !DILocation(line: 201, column: 7, scope: !650)
!674 = !DILocation(line: 204, column: 14, scope: !650)
!675 = !DILocation(line: 204, column: 7, scope: !650)
!676 = !DILocation(line: 207, column: 14, scope: !650)
!677 = !DILocation(line: 207, column: 7, scope: !650)
!678 = !DILocation(line: 210, column: 14, scope: !650)
!679 = !DILocation(line: 210, column: 7, scope: !650)
!680 = !DILocation(line: 213, column: 14, scope: !650)
!681 = !DILocation(line: 213, column: 7, scope: !650)
!682 = !DILocation(line: 216, column: 14, scope: !650)
!683 = !DILocation(line: 216, column: 7, scope: !650)
!684 = !DILocation(line: 219, column: 14, scope: !650)
!685 = !DILocation(line: 219, column: 7, scope: !650)
!686 = !DILocation(line: 222, column: 14, scope: !650)
!687 = !DILocation(line: 222, column: 7, scope: !650)
!688 = !DILocation(line: 225, column: 14, scope: !650)
!689 = !DILocation(line: 225, column: 7, scope: !650)
!690 = !DILocation(line: 226, column: 14, scope: !650)
!691 = !DILocation(line: 226, column: 7, scope: !650)
!692 = !DILocation(line: 227, column: 14, scope: !650)
!693 = !DILocation(line: 235, column: 5, scope: !650)
!694 = !DILocation(line: 227, column: 7, scope: !650)
!695 = !DILocation(line: 236, column: 14, scope: !650)
!696 = !DILocation(line: 245, column: 5, scope: !650)
!697 = !DILocation(line: 236, column: 7, scope: !650)
!698 = !DILocation(line: 246, column: 14, scope: !650)
!699 = !DILocation(line: 254, column: 5, scope: !650)
!700 = !DILocation(line: 246, column: 7, scope: !650)
!701 = !DILocalVariable(name: "program", arg: 1, scope: !702, file: !117, line: 855, type: !183)
!702 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !117, file: !117, line: 855, type: !703, scopeLine: 856, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !705, keyInstructions: true)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !183}
!705 = !{!701, !706, !713, !714, !716}
!706 = !DILocalVariable(name: "infomap", scope: !702, file: !117, line: 857, type: !707)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !708, size: 896, elements: !431)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !702, file: !117, line: 857, size: 128, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !709, file: !117, line: 857, baseType: !183, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !117, line: 857, baseType: !183, size: 64, offset: 64)
!713 = !DILocalVariable(name: "node", scope: !702, file: !117, line: 867, type: !183)
!714 = !DILocalVariable(name: "map_prog", scope: !702, file: !117, line: 868, type: !715)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!716 = !DILocalVariable(name: "url_program", scope: !702, file: !117, line: 881, type: !183)
!717 = !DILocation(line: 0, scope: !702, inlinedAt: !718)
!718 = distinct !DILocation(line: 255, column: 7, scope: !650)
!719 = !DILocation(line: 876, column: 3, scope: !702, inlinedAt: !718)
!720 = !DILocation(line: 882, column: 11, scope: !702, inlinedAt: !718)
!721 = !DILocation(line: 882, column: 3, scope: !702, inlinedAt: !718)
!722 = !DILocation(line: 884, column: 11, scope: !702, inlinedAt: !718)
!723 = !DILocation(line: 884, column: 3, scope: !702, inlinedAt: !718)
!724 = !DILocation(line: 257, column: 3, scope: !633)
!725 = !DISubprogram(name: "__fprintf_chk", scope: !726, file: !726, line: 93, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!726 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!727 = !DISubroutineType(types: !728)
!728 = !{!118, !729, !118, !730, null}
!729 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !341)
!730 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !183)
!731 = !DISubprogram(name: "dcgettext", scope: !732, file: !732, line: 51, type: !733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!732 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!733 = !DISubroutineType(types: !734)
!734 = !{!177, !183, !183, !118}
!735 = !DISubprogram(name: "__printf__", linkageName: "rpl_printf", scope: !736, file: !736, line: 1944, type: !737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!736 = !DIFile(filename: "./lib/stdio.h", directory: "/workspaces/Thesis/.build/coreutils")
!737 = !DISubroutineType(types: !738)
!738 = !{!118, !730, null}
!739 = !DISubprogram(name: "fputs_unlocked", scope: !740, file: !740, line: 691, type: !741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!740 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!741 = !DISubroutineType(types: !742)
!742 = !{!118, !730, !729}
!743 = !DILocation(line: 0, scope: !319)
!744 = !DILocation(line: 600, column: 7, scope: !327)
!745 = !DILocation(line: 600, column: 19, scope: !327, atomGroup: 1, atomRank: 2)
!746 = !DILocation(line: 600, column: 19, scope: !327, atomGroup: 1, atomRank: 1)
!747 = !DILocation(line: 604, column: 26, scope: !326, atomGroup: 2, atomRank: 2)
!748 = !DILocation(line: 0, scope: !326)
!749 = !DILocation(line: 605, column: 23, scope: !326, atomGroup: 4, atomRank: 2)
!750 = !DILocation(line: 605, column: 28, scope: !326, atomGroup: 4, atomRank: 1)
!751 = !DILocation(line: 605, column: 32, scope: !326)
!752 = !{!631, !631, i64 0}
!753 = !DILocation(line: 605, column: 32, scope: !326, atomGroup: 5, atomRank: 2)
!754 = !DILocation(line: 605, column: 38, scope: !326, atomGroup: 5, atomRank: 1)
!755 = !DILocalVariable(name: "__s1", arg: 1, scope: !756, file: !757, line: 1368, type: !183)
!756 = distinct !DISubprogram(name: "streq", scope: !757, file: !757, line: 1368, type: !758, scopeLine: 1369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !760, keyInstructions: true)
!757 = !DIFile(filename: "./lib/string.h", directory: "/workspaces/Thesis/.build/coreutils")
!758 = !DISubroutineType(types: !759)
!759 = !{!186, !183, !183}
!760 = !{!755, !761}
!761 = !DILocalVariable(name: "__s2", arg: 2, scope: !756, file: !757, line: 1368, type: !183)
!762 = !DILocation(line: 0, scope: !756, inlinedAt: !763)
!763 = distinct !DILocation(line: 605, column: 41, scope: !326)
!764 = !DILocation(line: 1370, column: 11, scope: !756, inlinedAt: !763)
!765 = !DILocation(line: 1370, column: 10, scope: !756, inlinedAt: !763)
!766 = !DILocation(line: 605, column: 38, scope: !326, atomGroup: 3, atomRank: 2)
!767 = !DILocation(line: 605, column: 38, scope: !326)
!768 = !DILocation(line: 605, column: 19, scope: !326, atomGroup: 3, atomRank: 1)
!769 = !DILocation(line: 606, column: 5, scope: !326)
!770 = !DILocation(line: 607, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !319, file: !117, line: 607, column: 7)
!772 = !DILocation(line: 607, column: 7, scope: !771, atomGroup: 6, atomRank: 2)
!773 = !DILocation(line: 607, column: 7, scope: !771, atomGroup: 6, atomRank: 1)
!774 = !DILocation(line: 614, column: 37, scope: !319)
!775 = !DILocation(line: 614, column: 35, scope: !319, atomGroup: 9, atomRank: 2)
!776 = !DILocation(line: 615, column: 29, scope: !319, atomGroup: 10, atomRank: 2)
!777 = !DILocation(line: 616, column: 8, scope: !334, atomGroup: 11, atomRank: 2)
!778 = !DILocation(line: 616, column: 7, scope: !334, atomGroup: 11, atomRank: 1)
!779 = !DILocation(line: 0, scope: !332)
!780 = !DILocation(line: 623, column: 24, scope: !333, atomGroup: 14, atomRank: 1)
!781 = !{!782, !782, i64 0}
!782 = !{!"p1 short", !646, i64 0}
!783 = !DILocation(line: 629, column: 7, scope: !332, atomGroup: 92, atomRank: 1)
!784 = !DILocation(line: 630, column: 32, scope: !332, atomGroup: 20, atomRank: 2)
!785 = !DILocation(line: 630, column: 30, scope: !332)
!786 = !DILocation(line: 630, column: 21, scope: !332)
!787 = !{!788, !788, i64 0}
!788 = !{!"short", !631, i64 0}
!789 = !DILocation(line: 630, column: 19, scope: !332)
!790 = !DILocation(line: 630, column: 16, scope: !332, atomGroup: 19, atomRank: 2)
!791 = !DILocation(line: 629, column: 16, scope: !332, atomGroup: 17, atomRank: 2)
!792 = !DILocation(line: 629, column: 30, scope: !332, atomGroup: 17, atomRank: 1)
!793 = !DILocation(line: 629, column: 7, scope: !332, atomGroup: 18, atomRank: 1)
!794 = distinct !{!794, !795, !786, !796}
!795 = !DILocation(line: 629, column: 7, scope: !332)
!796 = !{!"llvm.loop.mustprogress"}
!797 = !DILocation(line: 631, column: 18, scope: !798, atomGroup: 21, atomRank: 2)
!798 = distinct !DILexicalBlock(scope: !332, file: !117, line: 631, column: 11)
!799 = !DILocation(line: 631, column: 18, scope: !798)
!800 = !DILocation(line: 639, column: 23, scope: !319, atomGroup: 24, atomRank: 2)
!801 = !DILocation(line: 644, column: 39, scope: !319, atomGroup: 25, atomRank: 2)
!802 = !DILocation(line: 645, column: 3, scope: !319)
!803 = !DILocation(line: 645, column: 10, scope: !319)
!804 = !DILocation(line: 645, column: 21, scope: !319, atomGroup: 26, atomRank: 1)
!805 = !DILocation(line: 647, column: 32, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !117, line: 647, column: 11)
!807 = distinct !DILexicalBlock(scope: !319, file: !117, line: 646, column: 5)
!808 = !DILocation(line: 647, column: 49, scope: !806, atomGroup: 29, atomRank: 2)
!809 = !DILocation(line: 647, column: 29, scope: !806, atomGroup: 29, atomRank: 1)
!810 = !DILocation(line: 649, column: 11, scope: !811)
!811 = distinct !DILexicalBlock(scope: !807, file: !117, line: 649, column: 11)
!812 = !DILocation(line: 649, column: 11, scope: !811, atomGroup: 31, atomRank: 2)
!813 = !DILocation(line: 649, column: 11, scope: !811, atomGroup: 31, atomRank: 1)
!814 = !DILocation(line: 651, column: 26, scope: !815, atomGroup: 32, atomRank: 2)
!815 = distinct !DILexicalBlock(scope: !816, file: !117, line: 651, column: 15)
!816 = distinct !DILexicalBlock(scope: !811, file: !117, line: 650, column: 9)
!817 = !DILocation(line: 651, column: 34, scope: !815, atomGroup: 32, atomRank: 1)
!818 = !DILocation(line: 651, column: 46, scope: !815)
!819 = !DILocation(line: 651, column: 37, scope: !815)
!820 = !DILocation(line: 651, column: 37, scope: !815, atomGroup: 33, atomRank: 2)
!821 = !DILocation(line: 651, column: 34, scope: !815, atomGroup: 33, atomRank: 1)
!822 = !DILocation(line: 659, column: 16, scope: !807, atomGroup: 38, atomRank: 2)
!823 = distinct !{!823, !802, !824, !796}
!824 = !DILocation(line: 660, column: 5, scope: !319)
!825 = !DILocation(line: 663, column: 33, scope: !319)
!826 = !DILocation(line: 663, column: 43, scope: !319)
!827 = !DILocation(line: 663, column: 3, scope: !319)
!828 = !DILocation(line: 0, scope: !756, inlinedAt: !829)
!829 = distinct !DILocation(line: 667, column: 31, scope: !319)
!830 = !DILocation(line: 0, scope: !756, inlinedAt: !831)
!831 = distinct !DILocation(line: 668, column: 31, scope: !319)
!832 = !DILocation(line: 0, scope: !756, inlinedAt: !833)
!833 = distinct !DILocation(line: 669, column: 31, scope: !319)
!834 = !DILocation(line: 0, scope: !756, inlinedAt: !835)
!835 = distinct !DILocation(line: 670, column: 31, scope: !319)
!836 = !DILocation(line: 0, scope: !756, inlinedAt: !837)
!837 = distinct !DILocation(line: 671, column: 31, scope: !319)
!838 = !DILocation(line: 0, scope: !756, inlinedAt: !839)
!839 = distinct !DILocation(line: 672, column: 31, scope: !319)
!840 = !DILocation(line: 0, scope: !756, inlinedAt: !841)
!841 = distinct !DILocation(line: 673, column: 31, scope: !319)
!842 = !DILocation(line: 0, scope: !756, inlinedAt: !843)
!843 = distinct !DILocation(line: 674, column: 31, scope: !319)
!844 = !DILocation(line: 0, scope: !756, inlinedAt: !845)
!845 = distinct !DILocation(line: 675, column: 31, scope: !319)
!846 = !DILocation(line: 0, scope: !756, inlinedAt: !847)
!847 = distinct !DILocation(line: 676, column: 31, scope: !319)
!848 = !DILocation(line: 682, column: 7, scope: !849)
!849 = distinct !DILexicalBlock(scope: !319, file: !117, line: 682, column: 7)
!850 = !DILocation(line: 682, column: 7, scope: !849, atomGroup: 64, atomRank: 2)
!851 = !DILocation(line: 683, column: 7, scope: !849, atomGroup: 64, atomRank: 1)
!852 = !DILocation(line: 683, column: 10, scope: !849)
!853 = !DILocation(line: 683, column: 10, scope: !849, atomGroup: 65, atomRank: 2)
!854 = !DILocation(line: 683, column: 7, scope: !849, atomGroup: 65, atomRank: 1)
!855 = !DILocation(line: 689, column: 41, scope: !856)
!856 = distinct !DILexicalBlock(scope: !849, file: !117, line: 684, column: 5)
!857 = !DILocation(line: 688, column: 7, scope: !856)
!858 = !DILocation(line: 690, column: 5, scope: !856)
!859 = !DILocation(line: 696, column: 15, scope: !860)
!860 = distinct !DILexicalBlock(scope: !849, file: !117, line: 692, column: 5)
!861 = !DILocation(line: 695, column: 7, scope: !860)
!862 = !DILocation(line: 698, column: 20, scope: !319)
!863 = !DILocation(line: 698, column: 3, scope: !319)
!864 = !DILocation(line: 702, column: 21, scope: !319)
!865 = !DILocation(line: 702, column: 3, scope: !319)
!866 = !DILocation(line: 705, column: 36, scope: !319)
!867 = !DILocation(line: 705, column: 50, scope: !319)
!868 = !DILocation(line: 705, column: 3, scope: !319)
!869 = !DILocation(line: 707, column: 21, scope: !319)
!870 = !DILocation(line: 707, column: 3, scope: !319)
!871 = !DILocation(line: 710, column: 28, scope: !319)
!872 = !DILocation(line: 710, column: 3, scope: !319)
!873 = !DILocation(line: 715, column: 1, scope: !319)
!874 = !DILocation(line: 715, column: 1, scope: !319, atomGroup: 80, atomRank: 1)
!875 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 498, type: !876, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !879, keyInstructions: true)
!876 = !DISubroutineType(types: !877)
!877 = !{!118, !118, !878}
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!879 = !{!880, !881, !882, !883, !884, !885, !890, !891}
!880 = !DILocalVariable(name: "argc", arg: 1, scope: !875, file: !2, line: 498, type: !118)
!881 = !DILocalVariable(name: "argv", arg: 2, scope: !875, file: !2, line: 498, type: !878)
!882 = !DILocalVariable(name: "c", scope: !875, file: !2, line: 500, type: !118)
!883 = !DILocalVariable(name: "len", scope: !875, file: !2, line: 501, type: !180)
!884 = !DILocalVariable(name: "ok", scope: !875, file: !2, line: 502, type: !186)
!885 = !DILocalVariable(name: "p", scope: !886, file: !2, line: 585, type: !183)
!886 = distinct !DILexicalBlock(scope: !887, file: !2, line: 584, column: 13)
!887 = distinct !DILexicalBlock(scope: !888, file: !2, line: 583, column: 15)
!888 = distinct !DILexicalBlock(scope: !889, file: !2, line: 517, column: 9)
!889 = distinct !DILexicalBlock(scope: !875, file: !2, line: 515, column: 5)
!890 = !DILocalVariable(name: "lim", scope: !886, file: !2, line: 586, type: !183)
!891 = !DILocalVariable(name: "n_chars", scope: !886, file: !2, line: 587, type: !118)
!892 = distinct !DIAssignID()
!893 = !DILocalVariable(name: "mbs", scope: !894, file: !138, line: 237, type: !913)
!894 = distinct !DISubprogram(name: "mcel_scan", scope: !138, file: !138, line: 223, type: !895, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !907, keyInstructions: true)
!895 = !DISubroutineType(types: !896)
!896 = !{!897, !183, !183}
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !138, line: 143, baseType: !898)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 138, size: 64, elements: !899)
!899 = !{!900, !905, !906}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !898, file: !138, line: 140, baseType: !901, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !902, line: 37, baseType: !903)
!902 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !307, line: 57, baseType: !904)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !307, line: 42, baseType: !110)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !898, file: !138, line: 141, baseType: !185, size: 8, offset: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !898, file: !138, line: 142, baseType: !185, size: 8, offset: 40)
!907 = !{!908, !909, !910, !893, !911, !912}
!908 = !DILocalVariable(name: "p", arg: 1, scope: !894, file: !138, line: 223, type: !183)
!909 = !DILocalVariable(name: "lim", arg: 2, scope: !894, file: !138, line: 223, type: !183)
!910 = !DILocalVariable(name: "c", scope: !894, file: !138, line: 228, type: !4)
!911 = !DILocalVariable(name: "ch", scope: !894, file: !138, line: 260, type: !901)
!912 = !DILocalVariable(name: "len", scope: !894, file: !138, line: 261, type: !180)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !914, line: 6, baseType: !915)
!914 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !916, line: 21, baseType: !917)
!916 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !916, line: 13, size: 64, elements: !918)
!918 = !{!919, !920}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !917, file: !916, line: 15, baseType: !118, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !917, file: !916, line: 20, baseType: !921, size: 32, offset: 32)
!921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !917, file: !916, line: 16, size: 32, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !921, file: !916, line: 18, baseType: !110, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !921, file: !916, line: 19, baseType: !406, size: 32)
!925 = !DILocation(line: 0, scope: !894, inlinedAt: !926)
!926 = distinct !DILocation(line: 589, column: 24, scope: !927)
!927 = distinct !DILexicalBlock(scope: !928, file: !2, line: 588, column: 15)
!928 = distinct !DILexicalBlock(scope: !886, file: !2, line: 588, column: 15)
!929 = distinct !DIAssignID()
!930 = !DILocation(line: 0, scope: !875)
!931 = !DILocation(line: 505, column: 21, scope: !875)
!932 = !DILocation(line: 505, column: 3, scope: !875)
!933 = !DILocation(line: 506, column: 3, scope: !875)
!934 = !DILocation(line: 507, column: 3, scope: !875)
!935 = !DILocation(line: 508, column: 3, scope: !875)
!936 = !DILocation(line: 510, column: 3, scope: !875)
!937 = !DILocation(line: 512, column: 3, scope: !875)
!938 = !DILocation(line: 512, column: 15, scope: !875, atomGroup: 2, atomRank: 2)
!939 = !DILocation(line: 512, column: 3, scope: !875, atomGroup: 4, atomRank: 1)
!940 = distinct !{!940, !937, !941, !796}
!941 = !DILocation(line: 609, column: 5, scope: !875)
!942 = !DILocation(line: 519, column: 17, scope: !943, atomGroup: 6, atomRank: 2)
!943 = distinct !DILexicalBlock(scope: !888, file: !2, line: 519, column: 15)
!944 = !DILocation(line: 519, column: 15, scope: !943, atomGroup: 6, atomRank: 1)
!945 = !DILocation(line: 521, column: 28, scope: !946)
!946 = distinct !DILexicalBlock(scope: !943, file: !2, line: 520, column: 13)
!947 = !DILocation(line: 522, column: 29, scope: !946)
!948 = !DILocation(line: 522, column: 22, scope: !946)
!949 = !DILocation(line: 521, column: 15, scope: !946)
!950 = !DILocation(line: 524, column: 13, scope: !946)
!951 = !DILocation(line: 527, column: 17, scope: !952, atomGroup: 9, atomRank: 2)
!952 = distinct !DILexicalBlock(scope: !888, file: !2, line: 527, column: 15)
!953 = !DILocation(line: 527, column: 15, scope: !952, atomGroup: 9, atomRank: 1)
!954 = !DILocation(line: 529, column: 28, scope: !955)
!955 = distinct !DILexicalBlock(scope: !952, file: !2, line: 528, column: 13)
!956 = !DILocation(line: 530, column: 29, scope: !955)
!957 = !DILocation(line: 530, column: 22, scope: !955)
!958 = !DILocation(line: 529, column: 15, scope: !955)
!959 = !DILocation(line: 532, column: 13, scope: !955)
!960 = !DILocation(line: 535, column: 17, scope: !961, atomGroup: 12, atomRank: 2)
!961 = distinct !DILexicalBlock(scope: !888, file: !2, line: 535, column: 15)
!962 = !DILocation(line: 535, column: 15, scope: !961, atomGroup: 12, atomRank: 1)
!963 = !DILocation(line: 537, column: 28, scope: !964)
!964 = distinct !DILexicalBlock(scope: !961, file: !2, line: 536, column: 13)
!965 = !DILocation(line: 538, column: 29, scope: !964)
!966 = !DILocation(line: 538, column: 22, scope: !964)
!967 = !DILocation(line: 537, column: 15, scope: !964)
!968 = !DILocation(line: 540, column: 13, scope: !964)
!969 = !DILocation(line: 543, column: 46, scope: !888)
!970 = !DILocation(line: 544, column: 46, scope: !888)
!971 = !DILocation(line: 543, column: 34, scope: !888, atomGroup: 15, atomRank: 2)
!972 = !DILocation(line: 543, column: 32, scope: !888, atomGroup: 15, atomRank: 1)
!973 = !{!974, !974, i64 0}
!974 = !{!"long", !631, i64 0}
!975 = !DILocation(line: 546, column: 11, scope: !888, atomGroup: 16, atomRank: 1)
!976 = !DILocation(line: 548, column: 35, scope: !888)
!977 = !DILocation(line: 549, column: 35, scope: !888)
!978 = !DILocation(line: 548, column: 23, scope: !888, atomGroup: 17, atomRank: 2)
!979 = !DILocation(line: 548, column: 21, scope: !888, atomGroup: 17, atomRank: 1)
!980 = !DILocation(line: 550, column: 11, scope: !888, atomGroup: 18, atomRank: 1)
!981 = !DILocation(line: 552, column: 25, scope: !888, atomGroup: 19, atomRank: 1)
!982 = !DILocation(line: 553, column: 11, scope: !888, atomGroup: 20, atomRank: 1)
!983 = !DILocation(line: 555, column: 36, scope: !888)
!984 = !DILocation(line: 556, column: 36, scope: !888)
!985 = !DILocation(line: 555, column: 24, scope: !888, atomGroup: 21, atomRank: 2)
!986 = !DILocation(line: 555, column: 22, scope: !888, atomGroup: 21, atomRank: 1)
!987 = !DILocation(line: 558, column: 11, scope: !888, atomGroup: 22, atomRank: 1)
!988 = !DILocation(line: 560, column: 27, scope: !888, atomGroup: 23, atomRank: 2)
!989 = !DILocation(line: 560, column: 25, scope: !888, atomGroup: 23, atomRank: 1)
!990 = !DILocation(line: 561, column: 11, scope: !888, atomGroup: 24, atomRank: 1)
!991 = !DILocation(line: 563, column: 38, scope: !888)
!992 = !DILocation(line: 564, column: 38, scope: !888)
!993 = !DILocation(line: 563, column: 26, scope: !888, atomGroup: 25, atomRank: 3)
!994 = !DILocation(line: 563, column: 26, scope: !888, atomGroup: 25, atomRank: 2)
!995 = !DILocation(line: 563, column: 24, scope: !888, atomGroup: 25, atomRank: 1)
!996 = !DILocation(line: 566, column: 11, scope: !888, atomGroup: 26, atomRank: 1)
!997 = !DILocation(line: 568, column: 22, scope: !998)
!998 = distinct !DILexicalBlock(scope: !888, file: !2, line: 568, column: 15)
!999 = !DILocation(line: 0, scope: !756, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 568, column: 15, scope: !998)
!1001 = !DILocation(line: 1370, column: 11, scope: !756, inlinedAt: !1000)
!1002 = !DILocation(line: 1370, column: 10, scope: !756, inlinedAt: !1000)
!1003 = !DILocation(line: 568, column: 15, scope: !998, atomGroup: 27, atomRank: 1)
!1004 = !DILocation(line: 569, column: 27, scope: !998, atomGroup: 28, atomRank: 1)
!1005 = !DILocation(line: 569, column: 13, scope: !998)
!1006 = !DILocation(line: 1370, column: 11, scope: !756, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 570, column: 20, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !998, file: !2, line: 570, column: 20)
!1009 = !DILocation(line: 1370, column: 10, scope: !756, inlinedAt: !1007)
!1010 = !DILocation(line: 570, column: 20, scope: !1008, atomGroup: 29, atomRank: 1)
!1011 = !DILocation(line: 571, column: 27, scope: !1008, atomGroup: 30, atomRank: 1)
!1012 = !DILocation(line: 571, column: 13, scope: !1008)
!1013 = !DILocation(line: 1370, column: 11, scope: !756, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 572, column: 20, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 572, column: 20)
!1016 = !DILocation(line: 1370, column: 10, scope: !756, inlinedAt: !1014)
!1017 = !DILocation(line: 572, column: 20, scope: !1015, atomGroup: 31, atomRank: 1)
!1018 = !DILocation(line: 573, column: 27, scope: !1015, atomGroup: 32, atomRank: 1)
!1019 = !DILocation(line: 573, column: 13, scope: !1015)
!1020 = !DILocation(line: 576, column: 28, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1015, file: !2, line: 575, column: 13)
!1022 = !DILocation(line: 577, column: 29, scope: !1021)
!1023 = !DILocation(line: 577, column: 22, scope: !1021)
!1024 = !DILocation(line: 576, column: 15, scope: !1021)
!1025 = !DILocation(line: 582, column: 25, scope: !888)
!1026 = !DILocation(line: 582, column: 17, scope: !888, atomGroup: 35, atomRank: 2)
!1027 = !DILocation(line: 583, column: 19, scope: !887)
!1028 = !DILocation(line: 583, column: 17, scope: !887, atomGroup: 36, atomRank: 2)
!1029 = !DILocation(line: 583, column: 17, scope: !887, atomGroup: 36, atomRank: 1)
!1030 = !DILocation(line: 585, column: 31, scope: !886, atomGroup: 37, atomRank: 2)
!1031 = !DILocation(line: 0, scope: !886)
!1032 = !DILocation(line: 588, column: 24, scope: !927, atomGroup: 120, atomRank: 2)
!1033 = !DILocation(line: 588, column: 15, scope: !928, atomGroup: 121, atomRank: 1)
!1034 = !DILocation(line: 228, column: 12, scope: !894, inlinedAt: !926, atomGroup: 124, atomRank: 2)
!1035 = !DILocalVariable(name: "c", arg: 1, scope: !1036, file: !138, line: 215, type: !4)
!1036 = distinct !DISubprogram(name: "mcel_isbasic", scope: !138, file: !138, line: 215, type: !1037, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1039, keyInstructions: true)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!186, !4}
!1039 = !{!1035}
!1040 = !DILocation(line: 0, scope: !1036, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 229, column: 7, scope: !1042, inlinedAt: !926)
!1042 = distinct !DILexicalBlock(scope: !894, file: !138, line: 229, column: 7)
!1043 = !DILocation(line: 217, column: 24, scope: !1036, inlinedAt: !1041, atomGroup: 125, atomRank: 2)
!1044 = !DILocation(line: 229, column: 7, scope: !1042, inlinedAt: !926, atomGroup: 126, atomRank: 1)
!1045 = !DILocation(line: 237, column: 3, scope: !894, inlinedAt: !926)
!1046 = !DILocation(line: 237, column: 30, scope: !894, inlinedAt: !926, atomGroup: 127, atomRank: 1)
!1047 = !{!1048, !630, i64 0}
!1048 = !{!"", !630, i64 0, !631, i64 4}
!1049 = distinct !DIAssignID()
!1050 = !DILocation(line: 260, column: 3, scope: !894, inlinedAt: !926)
!1051 = !DILocation(line: 261, column: 16, scope: !894, inlinedAt: !926, atomGroup: 128, atomRank: 2)
!1052 = !DILocation(line: 267, column: 37, scope: !1053, inlinedAt: !926)
!1053 = distinct !DILexicalBlock(scope: !894, file: !138, line: 267, column: 7)
!1054 = !DILocation(line: 267, column: 7, scope: !1053, inlinedAt: !926, atomGroup: 129, atomRank: 1)
!1055 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1056 = !DILocation(line: 273, column: 1, scope: !894, inlinedAt: !926)
!1057 = !DILocation(line: 589, column: 21, scope: !927, atomGroup: 130, atomRank: 2)
!1058 = !DILocation(line: 588, column: 24, scope: !927, atomGroup: 131, atomRank: 2)
!1059 = !DILocation(line: 588, column: 15, scope: !928, atomGroup: 132, atomRank: 1)
!1060 = !DILocation(line: 228, column: 12, scope: !894, inlinedAt: !926, atomGroup: 1, atomRank: 2)
!1061 = !DILocation(line: 217, column: 24, scope: !1036, inlinedAt: !1041, atomGroup: 2, atomRank: 2)
!1062 = !DILocation(line: 229, column: 7, scope: !1042, inlinedAt: !926, atomGroup: 2, atomRank: 1)
!1063 = !DILocation(line: 237, column: 30, scope: !894, inlinedAt: !926, atomGroup: 4, atomRank: 1)
!1064 = !DILocation(line: 261, column: 16, scope: !894, inlinedAt: !926, atomGroup: 5, atomRank: 2)
!1065 = !DILocation(line: 590, column: 27, scope: !1066, atomGroup: 45, atomRank: 1)
!1066 = distinct !DILexicalBlock(scope: !886, file: !2, line: 590, column: 19)
!1067 = !DILocation(line: 591, column: 34, scope: !1066)
!1068 = !DILocation(line: 591, column: 47, scope: !1066)
!1069 = !DILocalVariable(name: "__dest", arg: 1, scope: !1070, file: !1071, line: 42, type: !1074)
!1070 = distinct !DISubprogram(name: "mempcpy", scope: !1071, file: !1071, line: 42, type: !1072, scopeLine: 44, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1078, keyInstructions: true)
!1071 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!178, !1074, !1075, !180}
!1074 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !178)
!1075 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1076)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1078 = !{!1069, !1079, !1080}
!1079 = !DILocalVariable(name: "__src", arg: 2, scope: !1070, file: !1071, line: 42, type: !1075)
!1080 = !DILocalVariable(name: "__len", arg: 3, scope: !1070, file: !1071, line: 43, type: !180)
!1081 = !DILocation(line: 0, scope: !1070, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 591, column: 25, scope: !1066)
!1083 = !DILocation(line: 45, column: 10, scope: !1070, inlinedAt: !1082, atomGroup: 1, atomRank: 2)
!1084 = !DILocalVariable(name: "__dest", arg: 1, scope: !1085, file: !1071, line: 26, type: !1074)
!1085 = distinct !DISubprogram(name: "memcpy", scope: !1071, file: !1071, line: 26, type: !1072, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1086, keyInstructions: true)
!1086 = !{!1084, !1087, !1088}
!1087 = !DILocalVariable(name: "__src", arg: 2, scope: !1085, file: !1071, line: 26, type: !1075)
!1088 = !DILocalVariable(name: "__len", arg: 3, scope: !1085, file: !1071, line: 27, type: !180)
!1089 = !DILocation(line: 0, scope: !1085, inlinedAt: !1090)
!1090 = distinct !DILocation(line: 591, column: 17, scope: !1066)
!1091 = !DILocation(line: 29, column: 10, scope: !1085, inlinedAt: !1090, atomGroup: 1, atomRank: 2)
!1092 = !DILocation(line: 591, column: 17, scope: !1066)
!1093 = !DILocation(line: 593, column: 31, scope: !1066, atomGroup: 46, atomRank: 2)
!1094 = !DILocation(line: 593, column: 29, scope: !1066, atomGroup: 46, atomRank: 1)
!1095 = !DILocation(line: 597, column: 23, scope: !1096, atomGroup: 47, atomRank: 2)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 597, column: 19)
!1097 = distinct !DILexicalBlock(scope: !887, file: !2, line: 596, column: 13)
!1098 = !DILocation(line: 0, scope: !1096)
!1099 = !DILocation(line: 597, column: 23, scope: !1096, atomGroup: 47, atomRank: 1)
!1100 = !DILocation(line: 598, column: 32, scope: !1096, atomGroup: 48, atomRank: 2)
!1101 = !DILocation(line: 598, column: 18, scope: !1096)
!1102 = !DILocation(line: 598, column: 30, scope: !1096, atomGroup: 48, atomRank: 1)
!1103 = !DILocation(line: 598, column: 17, scope: !1096)
!1104 = !DILocation(line: 600, column: 29, scope: !1096, atomGroup: 49, atomRank: 1)
!1105 = !DILocation(line: 603, column: 9, scope: !888)
!1106 = !DILocation(line: 604, column: 9, scope: !888)
!1107 = !DILocation(line: 604, column: 49, scope: !888)
!1108 = !DILocation(line: 611, column: 7, scope: !1109, atomGroup: 53, atomRank: 1)
!1109 = distinct !DILexicalBlock(scope: !875, file: !2, line: 611, column: 7)
!1110 = !DILocation(line: 612, column: 5, scope: !1109)
!1111 = !DILocation(line: 615, column: 35, scope: !875)
!1112 = !DILocation(line: 615, column: 27, scope: !875, atomGroup: 54, atomRank: 2)
!1113 = !DILocation(line: 615, column: 19, scope: !875, atomGroup: 54, atomRank: 1)
!1114 = !DILocation(line: 617, column: 24, scope: !875, atomGroup: 56, atomRank: 2)
!1115 = !DILocation(line: 617, column: 18, scope: !875, atomGroup: 56, atomRank: 1)
!1116 = !DILocation(line: 618, column: 40, scope: !875)
!1117 = !DILocation(line: 618, column: 16, scope: !875, atomGroup: 57, atomRank: 2)
!1118 = !DILocation(line: 618, column: 14, scope: !875, atomGroup: 57, atomRank: 1)
!1119 = !DILocation(line: 619, column: 39, scope: !875)
!1120 = !DILocalVariable(name: "__dest", arg: 1, scope: !1121, file: !1071, line: 84, type: !1124)
!1121 = distinct !DISubprogram(name: "stpcpy", scope: !1071, file: !1071, line: 84, type: !1122, scopeLine: 85, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1125, keyInstructions: true)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!177, !1124, !730}
!1124 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !177)
!1125 = !{!1120, !1126}
!1126 = !DILocalVariable(name: "__src", arg: 2, scope: !1121, file: !1071, line: 84, type: !730)
!1127 = !DILocation(line: 0, scope: !1121, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 619, column: 19, scope: !875)
!1129 = !DILocation(line: 86, column: 10, scope: !1121, inlinedAt: !1128, atomGroup: 1, atomRank: 2)
!1130 = !DILocation(line: 0, scope: !1121, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 619, column: 11, scope: !875)
!1132 = !DILocation(line: 86, column: 10, scope: !1121, inlinedAt: !1131, atomGroup: 1, atomRank: 2)
!1133 = !DILocation(line: 0, scope: !1121, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 619, column: 3, scope: !875)
!1135 = !DILocation(line: 86, column: 10, scope: !1121, inlinedAt: !1134, atomGroup: 1, atomRank: 2)
!1136 = !DILocation(line: 621, column: 22, scope: !875, atomGroup: 58, atomRank: 2)
!1137 = !DILocation(line: 621, column: 16, scope: !875, atomGroup: 58, atomRank: 1)
!1138 = !DILocation(line: 622, column: 14, scope: !875)
!1139 = !DILocation(line: 622, column: 25, scope: !875, atomGroup: 59, atomRank: 2)
!1140 = !DILocation(line: 622, column: 12, scope: !875, atomGroup: 59, atomRank: 1)
!1141 = !DILocation(line: 624, column: 18, scope: !875, atomGroup: 60, atomRank: 1)
!1142 = !DILocation(line: 625, column: 25, scope: !875, atomGroup: 61, atomRank: 2)
!1143 = !DILocation(line: 625, column: 14, scope: !875, atomGroup: 61, atomRank: 1)
!1144 = !DILocation(line: 628, column: 3, scope: !875)
!1145 = !DILocation(line: 631, column: 17, scope: !875)
!1146 = !DILocation(line: 631, column: 9, scope: !875, atomGroup: 62, atomRank: 2)
!1147 = !DILocation(line: 632, column: 32, scope: !875)
!1148 = !DILocation(line: 632, column: 45, scope: !875)
!1149 = !DILocation(line: 632, column: 51, scope: !875)
!1150 = !DILocation(line: 632, column: 23, scope: !875, atomGroup: 63, atomRank: 2)
!1151 = !DILocation(line: 632, column: 21, scope: !875, atomGroup: 63, atomRank: 1)
!1152 = !DILocation(line: 633, column: 35, scope: !875)
!1153 = !DILocation(line: 633, column: 48, scope: !875)
!1154 = !DILocalVariable(name: "__dest", arg: 1, scope: !1155, file: !1071, line: 57, type: !178)
!1155 = distinct !DISubprogram(name: "memset", scope: !1071, file: !1071, line: 57, type: !1156, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1158, keyInstructions: true)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!178, !178, !118, !180}
!1158 = !{!1154, !1159, !1160}
!1159 = !DILocalVariable(name: "__ch", arg: 2, scope: !1155, file: !1071, line: 57, type: !118)
!1160 = !DILocalVariable(name: "__len", arg: 3, scope: !1155, file: !1071, line: 57, type: !180)
!1161 = !DILocation(line: 0, scope: !1155, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 633, column: 3, scope: !875)
!1163 = !DILocation(line: 59, column: 10, scope: !1155, inlinedAt: !1162, atomGroup: 1, atomRank: 2)
!1164 = !DILocation(line: 634, column: 3, scope: !875)
!1165 = !DILocation(line: 634, column: 41, scope: !875, atomGroup: 64, atomRank: 1)
!1166 = !DILocation(line: 636, column: 13, scope: !875, atomGroup: 65, atomRank: 2)
!1167 = !DILocation(line: 636, column: 11, scope: !875, atomGroup: 65, atomRank: 1)
!1168 = !DILocation(line: 637, column: 18, scope: !875, atomGroup: 66, atomRank: 2)
!1169 = !DILocation(line: 637, column: 16, scope: !875, atomGroup: 66, atomRank: 1)
!1170 = !DILocation(line: 638, column: 17, scope: !875, atomGroup: 67, atomRank: 1)
!1171 = !{!1172, !1172, i64 0}
!1172 = !{!"p1 _ZTS17re_pattern_buffer", !646, i64 0}
!1173 = !DILocation(line: 642, column: 7, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !875, file: !2, line: 642, column: 7)
!1175 = !DILocation(line: 642, column: 14, scope: !1174, atomGroup: 68, atomRank: 2)
!1176 = !DILocation(line: 642, column: 14, scope: !1174, atomGroup: 68, atomRank: 1)
!1177 = !DILocation(line: 645, column: 19, scope: !1178, atomGroup: 122, atomRank: 1)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 645, column: 5)
!1179 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 645, column: 5)
!1180 = !DILocation(line: 645, column: 5, scope: !1179, atomGroup: 123, atomRank: 1)
!1181 = !DILocation(line: 643, column: 10, scope: !1174, atomGroup: 69, atomRank: 3)
!1182 = !DILocation(line: 643, column: 5, scope: !1174)
!1183 = !DILocation(line: 646, column: 22, scope: !1178)
!1184 = !DILocation(line: 646, column: 13, scope: !1178)
!1185 = !DILocation(line: 646, column: 10, scope: !1178, atomGroup: 72, atomRank: 3)
!1186 = !DILocation(line: 645, column: 33, scope: !1178)
!1187 = !DILocation(line: 645, column: 33, scope: !1178, atomGroup: 73, atomRank: 2)
!1188 = !DILocation(line: 645, column: 33, scope: !1178, atomGroup: 73, atomRank: 1)
!1189 = !DILocation(line: 645, column: 19, scope: !1178, atomGroup: 70, atomRank: 1)
!1190 = !DILocation(line: 645, column: 5, scope: !1179, atomGroup: 71, atomRank: 1)
!1191 = distinct !{!1191, !1192, !1193, !796}
!1192 = !DILocation(line: 645, column: 5, scope: !1179)
!1193 = !DILocation(line: 646, column: 34, scope: !1179)
!1194 = !DILocation(line: 648, column: 7, scope: !1195, atomGroup: 75, atomRank: 3)
!1195 = distinct !DILexicalBlock(scope: !875, file: !2, line: 648, column: 7)
!1196 = !DILocation(line: 648, column: 23, scope: !1195, atomGroup: 75, atomRank: 1)
!1197 = !DILocation(line: 648, column: 34, scope: !1195)
!1198 = !DILocation(line: 648, column: 26, scope: !1195)
!1199 = !DILocation(line: 648, column: 41, scope: !1195, atomGroup: 76, atomRank: 2)
!1200 = !DILocation(line: 648, column: 23, scope: !1195, atomGroup: 76, atomRank: 1)
!1201 = !DILocation(line: 649, column: 26, scope: !1195)
!1202 = !DILocation(line: 649, column: 5, scope: !1195)
!1203 = !DILocation(line: 651, column: 10, scope: !875, atomGroup: 78, atomRank: 2)
!1204 = !DILocation(line: 651, column: 3, scope: !875, atomGroup: 78, atomRank: 1)
!1205 = !DISubprogram(name: "set_program_name", scope: !1206, file: !1206, line: 38, type: !703, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1206 = !DIFile(filename: "./lib/progname.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "3e5536ae3756d6a65acb8e248212c2ee")
!1207 = !DISubprogram(name: "setlocale", scope: !1208, file: !1208, line: 122, type: !1209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1208 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!177, !118, !183}
!1211 = !DISubprogram(name: "bindtextdomain", scope: !732, file: !732, line: 86, type: !1212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!177, !183, !183}
!1214 = !DISubprogram(name: "textdomain", scope: !732, file: !732, line: 82, type: !1215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!177, !183}
!1217 = !DISubprogram(name: "atexit", scope: !1218, file: !1218, line: 602, type: !1219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1218 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!118, !1221}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!1222 = !DISubprogram(name: "getopt_long", scope: !539, file: !539, line: 66, type: !1223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!118, !118, !1225, !183, !1227, !544}
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!1228 = distinct !DISubprogram(name: "build_type_arg", scope: !2, file: !2, line: 264, type: !1229, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1232, keyInstructions: true)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!186, !1231, !597, !177}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!1232 = !{!1233, !1234, !1235, !1236, !1237}
!1233 = !DILocalVariable(name: "typep", arg: 1, scope: !1228, file: !2, line: 264, type: !1231)
!1234 = !DILocalVariable(name: "regexp", arg: 2, scope: !1228, file: !2, line: 265, type: !597)
!1235 = !DILocalVariable(name: "fastmap", arg: 3, scope: !1228, file: !2, line: 265, type: !177)
!1236 = !DILocalVariable(name: "errmsg", scope: !1228, file: !2, line: 267, type: !183)
!1237 = !DILocalVariable(name: "rval", scope: !1228, file: !2, line: 268, type: !186)
!1238 = !DILocation(line: 0, scope: !1228)
!1239 = !DILocation(line: 270, column: 12, scope: !1228)
!1240 = !DILocation(line: 270, column: 11, scope: !1228, atomGroup: 2, atomRank: 3)
!1241 = !DILocation(line: 270, column: 3, scope: !1228, atomGroup: 2, atomRank: 1)
!1242 = !DILocation(line: 275, column: 14, scope: !1243, atomGroup: 3, atomRank: 1)
!1243 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 271, column: 5)
!1244 = !DILocation(line: 276, column: 7, scope: !1243, atomGroup: 4, atomRank: 1)
!1245 = !DILocation(line: 278, column: 22, scope: !1243, atomGroup: 6, atomRank: 2)
!1246 = !DILocation(line: 278, column: 22, scope: !1243, atomGroup: 6, atomRank: 1)
!1247 = !DILocation(line: 278, column: 14, scope: !1243, atomGroup: 5, atomRank: 1)
!1248 = !DILocation(line: 281, column: 15, scope: !1243)
!1249 = !DILocation(line: 280, column: 25, scope: !1243, atomGroup: 8, atomRank: 1)
!1250 = !DILocation(line: 281, column: 23, scope: !1243, atomGroup: 9, atomRank: 1)
!1251 = !{!1252, !648, i64 32}
!1252 = !{!"re_pattern_buffer", !1253, i64 0, !974, i64 8, !974, i64 16, !974, i64 24, !648, i64 32, !648, i64 40, !974, i64 48, !630, i64 56, !630, i64 56, !630, i64 56, !630, i64 56, !630, i64 56, !630, i64 56, !630, i64 56}
!1253 = !{!"p1 _ZTS8re_dfa_t", !646, i64 0}
!1254 = !DILocation(line: 282, column: 15, scope: !1243)
!1255 = !DILocation(line: 282, column: 25, scope: !1243, atomGroup: 10, atomRank: 1)
!1256 = !{!1252, !648, i64 40}
!1257 = !DILocation(line: 283, column: 25, scope: !1243, atomGroup: 11, atomRank: 1)
!1258 = !DILocation(line: 285, column: 36, scope: !1243)
!1259 = !DILocation(line: 285, column: 44, scope: !1243)
!1260 = !DILocation(line: 285, column: 16, scope: !1243, atomGroup: 12, atomRank: 2)
!1261 = !DILocation(line: 286, column: 11, scope: !1262, atomGroup: 13, atomRank: 2)
!1262 = distinct !DILexicalBlock(scope: !1243, file: !2, line: 286, column: 11)
!1263 = !DILocation(line: 286, column: 11, scope: !1262, atomGroup: 13, atomRank: 1)
!1264 = !DILocation(line: 287, column: 9, scope: !1262)
!1265 = !DILocation(line: 293, column: 3, scope: !1228, atomGroup: 18, atomRank: 1)
!1266 = !DISubprogram(name: "error", scope: !1267, file: !1267, line: 31, type: !1268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1267 = !DIFile(filename: "/usr/include/error.h", directory: "", checksumkind: CSK_MD5, checksum: "0bac552e7426506dc6623c11568834e0")
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null, !118, !118, !183, null}
!1270 = !DISubprogram(name: "quote", scope: !1271, file: !1271, line: 49, type: !1272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1271 = !DIFile(filename: "./lib/quote.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "4a0796caa167d9859d28846ccf7a0d92")
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!183, !183}
!1274 = !DISubprogram(name: "xdectoimax", scope: !109, file: !109, line: 51, type: !1275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!304, !183, !304, !304, !183, !183, !118}
!1277 = !DISubprogram(name: "xnumtoimax", scope: !109, file: !109, line: 54, type: !1278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!304, !183, !118, !304, !304, !183, !183, !118, !118}
!1280 = !DISubprogram(name: "strlen", scope: !1281, file: !1281, line: 407, type: !1282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1281 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!182, !183}
!1284 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1218, file: !1218, line: 98, type: !1285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!180}
!1287 = !DISubprogram(name: "version_etc", scope: !1288, file: !1288, line: 70, type: !1289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1288 = !DIFile(filename: "./lib/version-etc.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "7242964c9dbfa69ef19b57250c13e279")
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !341, !183, !183, !183, null}
!1291 = !DISubprogram(name: "proper_name_lite", scope: !1292, file: !1292, line: 126, type: !1293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1292 = !DIFile(filename: "./lib/propername.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "fdc444d0083bc592737160d9365ffa54")
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!183, !183, !183}
!1295 = !DISubprogram(name: "xmalloc", scope: !1296, file: !1296, line: 59, type: !1297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1296 = !DIFile(filename: "./lib/xalloc.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!178, !180}
!1299 = !DISubprogram(name: "initbuffer", scope: !294, file: !294, line: 41, type: !1300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !1302}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!1303 = distinct !DISubprogram(name: "nl_file", scope: !2, file: !2, line: 458, type: !1304, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1306, keyInstructions: true)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!186, !183}
!1306 = !{!1307, !1308, !1309}
!1307 = !DILocalVariable(name: "file", arg: 1, scope: !1303, file: !2, line: 458, type: !183)
!1308 = !DILocalVariable(name: "stream", scope: !1303, file: !2, line: 460, type: !341)
!1309 = !DILocalVariable(name: "err", scope: !1303, file: !2, line: 482, type: !118)
!1310 = !DILocation(line: 0, scope: !1303)
!1311 = !DILocation(line: 0, scope: !756, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 462, column: 7, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 462, column: 7)
!1314 = !DILocation(line: 1370, column: 11, scope: !756, inlinedAt: !1312)
!1315 = !DILocation(line: 1370, column: 10, scope: !756, inlinedAt: !1312)
!1316 = !DILocation(line: 462, column: 7, scope: !1313, atomGroup: 1, atomRank: 1)
!1317 = !DILocation(line: 464, column: 23, scope: !1318, atomGroup: 2, atomRank: 1)
!1318 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 463, column: 5)
!1319 = !DILocation(line: 465, column: 16, scope: !1318, atomGroup: 3, atomRank: 2)
!1320 = !{}
!1321 = !DILocation(line: 467, column: 5, scope: !1318)
!1322 = !DILocation(line: 470, column: 16, scope: !1323, atomGroup: 5, atomRank: 2)
!1323 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 469, column: 5)
!1324 = !DILocation(line: 471, column: 18, scope: !1325, atomGroup: 6, atomRank: 2)
!1325 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 471, column: 11)
!1326 = !DILocation(line: 471, column: 18, scope: !1325, atomGroup: 6, atomRank: 1)
!1327 = !DILocation(line: 473, column: 21, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 472, column: 9)
!1329 = !DILocation(line: 474, column: 11, scope: !1328, atomGroup: 7, atomRank: 1)
!1330 = !DILocation(line: 0, scope: !1313)
!1331 = !DILocation(line: 478, column: 3, scope: !1303)
!1332 = !DILocalVariable(name: "fp", arg: 1, scope: !1333, file: !2, line: 429, type: !341)
!1333 = distinct !DISubprogram(name: "process_file", scope: !2, file: !2, line: 429, type: !1334, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1336, keyInstructions: true)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{null, !341}
!1336 = !{!1332}
!1337 = !DILocation(line: 0, scope: !1333, inlinedAt: !1338)
!1338 = distinct !DILocation(line: 480, column: 3, scope: !1303)
!1339 = !DILocation(line: 431, column: 3, scope: !1333, inlinedAt: !1338)
!1340 = !DILocation(line: 431, column: 10, scope: !1333, inlinedAt: !1338)
!1341 = !DILocation(line: 431, column: 3, scope: !1333, inlinedAt: !1338, atomGroup: 1, atomRank: 1)
!1342 = !DILocation(line: 431, column: 3, scope: !1333, inlinedAt: !1338, atomGroup: 2, atomRank: 1)
!1343 = !DILocation(line: 409, column: 25, scope: !1344, inlinedAt: !1349)
!1344 = distinct !DISubprogram(name: "check_section", scope: !2, file: !2, line: 407, type: !1345, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1347, keyInstructions: true)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!170}
!1347 = !{!1348}
!1348 = !DILocalVariable(name: "len", scope: !1344, file: !2, line: 409, type: !180)
!1349 = distinct !DILocation(line: 433, column: 15, scope: !1350, inlinedAt: !1338)
!1350 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 432, column: 5)
!1351 = !{!1352, !974, i64 8}
!1352 = !{!"linebuffer", !974, i64 0, !974, i64 8, !648, i64 16}
!1353 = !DILocation(line: 409, column: 32, scope: !1344, inlinedAt: !1349, atomGroup: 1, atomRank: 2)
!1354 = !DILocation(line: 0, scope: !1344, inlinedAt: !1349)
!1355 = !DILocation(line: 411, column: 13, scope: !1356, inlinedAt: !1349)
!1356 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 411, column: 7)
!1357 = !DILocation(line: 411, column: 11, scope: !1356, inlinedAt: !1349, atomGroup: 2, atomRank: 2)
!1358 = !DILocation(line: 411, column: 29, scope: !1356, inlinedAt: !1349, atomGroup: 2, atomRank: 1)
!1359 = !DILocation(line: 412, column: 27, scope: !1356, inlinedAt: !1349)
!1360 = !{!1352, !648, i64 16}
!1361 = !DILocation(line: 412, column: 35, scope: !1356, inlinedAt: !1349)
!1362 = !DILocalVariable(name: "__s1", arg: 1, scope: !1363, file: !757, line: 976, type: !1076)
!1363 = distinct !DISubprogram(name: "memeq", scope: !757, file: !757, line: 976, type: !1364, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1366, keyInstructions: true)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!186, !1076, !1076, !180}
!1366 = !{!1362, !1367, !1368}
!1367 = !DILocalVariable(name: "__s2", arg: 2, scope: !1363, file: !757, line: 976, type: !1076)
!1368 = !DILocalVariable(name: "__n", arg: 3, scope: !1363, file: !757, line: 976, type: !180)
!1369 = !DILocation(line: 0, scope: !1363, inlinedAt: !1370)
!1370 = distinct !DILocation(line: 412, column: 11, scope: !1356, inlinedAt: !1349)
!1371 = !DILocation(line: 978, column: 11, scope: !1363, inlinedAt: !1370)
!1372 = !DILocation(line: 978, column: 10, scope: !1363, inlinedAt: !1370)
!1373 = !DILocation(line: 412, column: 7, scope: !1356, inlinedAt: !1349, atomGroup: 4, atomRank: 1)
!1374 = !DILocation(line: 414, column: 14, scope: !1375, inlinedAt: !1349)
!1375 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 414, column: 7)
!1376 = !DILocation(line: 414, column: 11, scope: !1375, inlinedAt: !1349, atomGroup: 6, atomRank: 2)
!1377 = !DILocation(line: 415, column: 7, scope: !1375, inlinedAt: !1349, atomGroup: 6, atomRank: 1)
!1378 = !DILocation(line: 415, column: 34, scope: !1375, inlinedAt: !1349)
!1379 = !DILocation(line: 0, scope: !1363, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 415, column: 10, scope: !1375, inlinedAt: !1349)
!1381 = !DILocation(line: 978, column: 11, scope: !1363, inlinedAt: !1380)
!1382 = !DILocation(line: 978, column: 10, scope: !1363, inlinedAt: !1380)
!1383 = !DILocation(line: 415, column: 7, scope: !1375, inlinedAt: !1349, atomGroup: 7, atomRank: 1)
!1384 = !DILocation(line: 417, column: 14, scope: !1385, inlinedAt: !1349)
!1385 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 417, column: 7)
!1386 = !DILocation(line: 417, column: 11, scope: !1385, inlinedAt: !1349, atomGroup: 9, atomRank: 2)
!1387 = !DILocation(line: 418, column: 7, scope: !1385, inlinedAt: !1349, atomGroup: 9, atomRank: 1)
!1388 = !DILocation(line: 418, column: 34, scope: !1385, inlinedAt: !1349)
!1389 = !DILocation(line: 0, scope: !1363, inlinedAt: !1390)
!1390 = distinct !DILocation(line: 418, column: 10, scope: !1385, inlinedAt: !1349)
!1391 = !DILocation(line: 978, column: 11, scope: !1363, inlinedAt: !1390)
!1392 = !DILocation(line: 978, column: 10, scope: !1363, inlinedAt: !1390)
!1393 = !DILocation(line: 418, column: 7, scope: !1385, inlinedAt: !1349, atomGroup: 10, atomRank: 1)
!1394 = !DILocation(line: 420, column: 11, scope: !1395, inlinedAt: !1349, atomGroup: 12, atomRank: 2)
!1395 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 420, column: 7)
!1396 = !DILocation(line: 421, column: 7, scope: !1395, inlinedAt: !1349, atomGroup: 12, atomRank: 1)
!1397 = !DILocation(line: 421, column: 34, scope: !1395, inlinedAt: !1349)
!1398 = !DILocation(line: 0, scope: !1363, inlinedAt: !1399)
!1399 = distinct !DILocation(line: 421, column: 10, scope: !1395, inlinedAt: !1349)
!1400 = !DILocation(line: 978, column: 11, scope: !1363, inlinedAt: !1399)
!1401 = !DILocation(line: 978, column: 10, scope: !1363, inlinedAt: !1399)
!1402 = !DILocation(line: 421, column: 7, scope: !1395, inlinedAt: !1349, atomGroup: 13, atomRank: 1)
!1403 = !DILocation(line: 325, column: 18, scope: !1404, inlinedAt: !1405, atomGroup: 1, atomRank: 2)
!1404 = distinct !DISubprogram(name: "proc_header", scope: !2, file: !2, line: 323, type: !605, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, keyInstructions: true)
!1405 = distinct !DILocation(line: 436, column: 11, scope: !1406, inlinedAt: !1338)
!1406 = distinct !DILexicalBlock(scope: !1350, file: !2, line: 434, column: 9)
!1407 = !DILocation(line: 325, column: 16, scope: !1404, inlinedAt: !1405, atomGroup: 1, atomRank: 1)
!1408 = !DILocation(line: 326, column: 17, scope: !1404, inlinedAt: !1405, atomGroup: 2, atomRank: 1)
!1409 = !DILocation(line: 313, column: 7, scope: !1410, inlinedAt: !1412, atomGroup: 1, atomRank: 3)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !2, line: 313, column: 7)
!1411 = distinct !DISubprogram(name: "reset_lineno", scope: !2, file: !2, line: 311, type: !605, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, keyInstructions: true)
!1412 = distinct !DILocation(line: 327, column: 3, scope: !1404, inlinedAt: !1405)
!1413 = !DILocation(line: 313, column: 7, scope: !1410, inlinedAt: !1412, atomGroup: 1, atomRank: 1)
!1414 = !DILocation(line: 315, column: 17, scope: !1415, inlinedAt: !1412, atomGroup: 2, atomRank: 2)
!1415 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 314, column: 5)
!1416 = !DILocation(line: 315, column: 15, scope: !1415, inlinedAt: !1412, atomGroup: 2, atomRank: 1)
!1417 = !DILocation(line: 316, column: 24, scope: !1415, inlinedAt: !1412, atomGroup: 3, atomRank: 1)
!1418 = !DILocation(line: 317, column: 5, scope: !1415, inlinedAt: !1412)
!1419 = !DILocalVariable(name: "__c", arg: 1, scope: !1420, file: !1421, line: 108, type: !118)
!1420 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1421, file: !1421, line: 108, type: !1422, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1424, keyInstructions: true)
!1421 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!118, !118}
!1424 = !{!1419}
!1425 = !DILocation(line: 0, scope: !1420, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 328, column: 3, scope: !1404, inlinedAt: !1405)
!1427 = !DILocation(line: 110, column: 37, scope: !1420, inlinedAt: !1426)
!1428 = !DILocation(line: 110, column: 10, scope: !1420, inlinedAt: !1426)
!1429 = !{!1430, !648, i64 40}
!1430 = !{!"_IO_FILE", !630, i64 0, !648, i64 8, !648, i64 16, !648, i64 24, !648, i64 32, !648, i64 40, !648, i64 48, !648, i64 56, !648, i64 64, !648, i64 72, !648, i64 80, !648, i64 88, !1431, i64 96, !645, i64 104, !630, i64 112, !630, i64 116, !974, i64 120, !788, i64 128, !631, i64 130, !631, i64 131, !646, i64 136, !974, i64 144, !1432, i64 152, !1433, i64 160, !645, i64 168, !646, i64 176, !974, i64 184, !630, i64 192, !631, i64 196}
!1431 = !{!"p1 _ZTS10_IO_marker", !646, i64 0}
!1432 = !{!"p1 _ZTS11_IO_codecvt", !646, i64 0}
!1433 = !{!"p1 _ZTS13_IO_wide_data", !646, i64 0}
!1434 = !{!1430, !648, i64 48}
!1435 = !DILocation(line: 110, column: 10, scope: !1420, inlinedAt: !1426, atomGroup: 2, atomRank: 1)
!1436 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1437 = !DILocation(line: 110, column: 10, scope: !1420, inlinedAt: !1426, atomGroup: 4, atomRank: 2)
!1438 = !DILocation(line: 110, column: 10, scope: !1420, inlinedAt: !1426, atomGroup: 4, atomRank: 1)
!1439 = !DILocation(line: 110, column: 10, scope: !1420, inlinedAt: !1426, atomGroup: 3, atomRank: 1)
!1440 = !DILocation(line: 336, column: 18, scope: !1441, inlinedAt: !1442, atomGroup: 1, atomRank: 2)
!1441 = distinct !DISubprogram(name: "proc_body", scope: !2, file: !2, line: 334, type: !605, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, keyInstructions: true)
!1442 = distinct !DILocation(line: 439, column: 11, scope: !1406, inlinedAt: !1338)
!1443 = !DILocation(line: 336, column: 16, scope: !1441, inlinedAt: !1442, atomGroup: 1, atomRank: 1)
!1444 = !DILocation(line: 337, column: 17, scope: !1441, inlinedAt: !1442, atomGroup: 2, atomRank: 1)
!1445 = !DILocation(line: 313, column: 7, scope: !1410, inlinedAt: !1446, atomGroup: 1, atomRank: 3)
!1446 = distinct !DILocation(line: 338, column: 3, scope: !1441, inlinedAt: !1442)
!1447 = !DILocation(line: 313, column: 7, scope: !1410, inlinedAt: !1446, atomGroup: 1, atomRank: 1)
!1448 = !DILocation(line: 315, column: 17, scope: !1415, inlinedAt: !1446, atomGroup: 2, atomRank: 2)
!1449 = !DILocation(line: 315, column: 15, scope: !1415, inlinedAt: !1446, atomGroup: 2, atomRank: 1)
!1450 = !DILocation(line: 316, column: 24, scope: !1415, inlinedAt: !1446, atomGroup: 3, atomRank: 1)
!1451 = !DILocation(line: 317, column: 5, scope: !1415, inlinedAt: !1446)
!1452 = !DILocation(line: 0, scope: !1420, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 339, column: 3, scope: !1441, inlinedAt: !1442)
!1454 = !DILocation(line: 110, column: 37, scope: !1420, inlinedAt: !1453)
!1455 = !DILocation(line: 110, column: 10, scope: !1420, inlinedAt: !1453)
!1456 = !DILocation(line: 110, column: 10, scope: !1420, inlinedAt: !1453, atomGroup: 2, atomRank: 1)
!1457 = !DILocation(line: 110, column: 10, scope: !1420, inlinedAt: !1453, atomGroup: 4, atomRank: 2)
!1458 = !DILocation(line: 110, column: 10, scope: !1420, inlinedAt: !1453, atomGroup: 4, atomRank: 1)
!1459 = !DILocation(line: 110, column: 10, scope: !1420, inlinedAt: !1453, atomGroup: 3, atomRank: 1)
!1460 = !DILocation(line: 347, column: 18, scope: !1461, inlinedAt: !1462, atomGroup: 1, atomRank: 2)
!1461 = distinct !DISubprogram(name: "proc_footer", scope: !2, file: !2, line: 345, type: !605, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, keyInstructions: true)
!1462 = distinct !DILocation(line: 442, column: 11, scope: !1406, inlinedAt: !1338)
!1463 = !DILocation(line: 347, column: 16, scope: !1461, inlinedAt: !1462, atomGroup: 1, atomRank: 1)
!1464 = !DILocation(line: 348, column: 17, scope: !1461, inlinedAt: !1462, atomGroup: 2, atomRank: 1)
!1465 = !DILocation(line: 313, column: 7, scope: !1410, inlinedAt: !1466, atomGroup: 1, atomRank: 3)
!1466 = distinct !DILocation(line: 349, column: 3, scope: !1461, inlinedAt: !1462)
!1467 = !DILocation(line: 313, column: 7, scope: !1410, inlinedAt: !1466, atomGroup: 1, atomRank: 1)
!1468 = !DILocation(line: 315, column: 17, scope: !1415, inlinedAt: !1466, atomGroup: 2, atomRank: 2)
!1469 = !DILocation(line: 315, column: 15, scope: !1415, inlinedAt: !1466, atomGroup: 2, atomRank: 1)
!1470 = !DILocation(line: 316, column: 24, scope: !1415, inlinedAt: !1466, atomGroup: 3, atomRank: 1)
!1471 = !DILocation(line: 317, column: 5, scope: !1415, inlinedAt: !1466)
!1472 = !DILocation(line: 0, scope: !1420, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 350, column: 3, scope: !1461, inlinedAt: !1462)
!1474 = !DILocation(line: 110, column: 37, scope: !1420, inlinedAt: !1473)
!1475 = !DILocation(line: 110, column: 10, scope: !1420, inlinedAt: !1473)
!1476 = !DILocation(line: 110, column: 10, scope: !1420, inlinedAt: !1473, atomGroup: 2, atomRank: 1)
!1477 = !DILocation(line: 110, column: 10, scope: !1420, inlinedAt: !1473, atomGroup: 4, atomRank: 2)
!1478 = !DILocation(line: 110, column: 10, scope: !1420, inlinedAt: !1473, atomGroup: 4, atomRank: 1)
!1479 = !DILocation(line: 110, column: 10, scope: !1420, inlinedAt: !1473, atomGroup: 3, atomRank: 1)
!1480 = !DILocation(line: 360, column: 12, scope: !604, inlinedAt: !1481)
!1481 = distinct !DILocation(line: 445, column: 11, scope: !1406, inlinedAt: !1338)
!1482 = !DILocation(line: 360, column: 11, scope: !604, inlinedAt: !1481, atomGroup: 1, atomRank: 3)
!1483 = !DILocation(line: 360, column: 3, scope: !604, inlinedAt: !1481, atomGroup: 1, atomRank: 1)
!1484 = !DILocation(line: 363, column: 11, scope: !1485, inlinedAt: !1481)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 363, column: 11)
!1486 = distinct !DILexicalBlock(scope: !604, file: !2, line: 361, column: 5)
!1487 = !DILocation(line: 363, column: 22, scope: !1485, inlinedAt: !1481, atomGroup: 2, atomRank: 2)
!1488 = !DILocation(line: 363, column: 22, scope: !1485, inlinedAt: !1481, atomGroup: 2, atomRank: 1)
!1489 = !DILocation(line: 365, column: 17, scope: !1490, inlinedAt: !1481, atomGroup: 3, atomRank: 2)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !2, line: 365, column: 15)
!1491 = distinct !DILexicalBlock(scope: !1485, file: !2, line: 364, column: 9)
!1492 = !DILocation(line: 365, column: 35, scope: !1490, inlinedAt: !1481, atomGroup: 3, atomRank: 1)
!1493 = !DILocation(line: 365, column: 38, scope: !1490, inlinedAt: !1481)
!1494 = !DILocation(line: 365, column: 38, scope: !1490, inlinedAt: !1481, atomGroup: 4, atomRank: 2)
!1495 = !DILocation(line: 365, column: 38, scope: !1490, inlinedAt: !1481, atomGroup: 4, atomRank: 1)
!1496 = !DILocation(line: 365, column: 52, scope: !1490, inlinedAt: !1481, atomGroup: 5, atomRank: 2)
!1497 = !DILocation(line: 365, column: 35, scope: !1490, inlinedAt: !1481, atomGroup: 5, atomRank: 1)
!1498 = !DILocation(line: 301, column: 7, scope: !1499, inlinedAt: !1501, atomGroup: 1, atomRank: 3)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 301, column: 7)
!1500 = distinct !DISubprogram(name: "print_lineno", scope: !2, file: !2, line: 299, type: !605, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, keyInstructions: true)
!1501 = distinct !DILocation(line: 367, column: 15, scope: !1502, inlinedAt: !1481)
!1502 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 366, column: 13)
!1503 = !DILocation(line: 301, column: 7, scope: !1499, inlinedAt: !1501, atomGroup: 1, atomRank: 1)
!1504 = !DILocation(line: 302, column: 29, scope: !1499, inlinedAt: !1501)
!1505 = !DILocation(line: 302, column: 5, scope: !1499, inlinedAt: !1501)
!1506 = !DILocation(line: 304, column: 11, scope: !1500, inlinedAt: !1501)
!1507 = !DILocation(line: 304, column: 26, scope: !1500, inlinedAt: !1501)
!1508 = !DILocation(line: 304, column: 40, scope: !1500, inlinedAt: !1501)
!1509 = !DILocation(line: 304, column: 49, scope: !1500, inlinedAt: !1501)
!1510 = !DILocation(line: 304, column: 3, scope: !1500, inlinedAt: !1501)
!1511 = !DILocation(line: 306, column: 26, scope: !1512, inlinedAt: !1501)
!1512 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 306, column: 7)
!1513 = !DILocation(line: 306, column: 35, scope: !1512, inlinedAt: !1501)
!1514 = !DILocation(line: 306, column: 7, scope: !1512, inlinedAt: !1501)
!1515 = !DILocation(line: 306, column: 7, scope: !1512, inlinedAt: !1501, atomGroup: 2, atomRank: 2)
!1516 = !DILocation(line: 306, column: 7, scope: !1512, inlinedAt: !1501, atomGroup: 2, atomRank: 1)
!1517 = !DILocation(line: 307, column: 22, scope: !1512, inlinedAt: !1501, atomGroup: 3, atomRank: 1)
!1518 = !DILocation(line: 307, column: 5, scope: !1512, inlinedAt: !1501)
!1519 = !DILocation(line: 368, column: 27, scope: !1502, inlinedAt: !1481, atomGroup: 6, atomRank: 1)
!1520 = !DILocation(line: 369, column: 13, scope: !1502, inlinedAt: !1481)
!1521 = !DILocation(line: 371, column: 20, scope: !1490, inlinedAt: !1481)
!1522 = !DILocation(line: 371, column: 39, scope: !1490, inlinedAt: !1481)
!1523 = !DILocation(line: 371, column: 13, scope: !1490, inlinedAt: !1481)
!1524 = !DILocation(line: 301, column: 7, scope: !1499, inlinedAt: !1525, atomGroup: 1, atomRank: 3)
!1525 = distinct !DILocation(line: 374, column: 9, scope: !1485, inlinedAt: !1481)
!1526 = !DILocation(line: 301, column: 7, scope: !1499, inlinedAt: !1525, atomGroup: 1, atomRank: 1)
!1527 = !DILocation(line: 302, column: 29, scope: !1499, inlinedAt: !1525)
!1528 = !DILocation(line: 302, column: 5, scope: !1499, inlinedAt: !1525)
!1529 = !DILocation(line: 304, column: 11, scope: !1500, inlinedAt: !1525)
!1530 = !DILocation(line: 304, column: 26, scope: !1500, inlinedAt: !1525)
!1531 = !DILocation(line: 304, column: 40, scope: !1500, inlinedAt: !1525)
!1532 = !DILocation(line: 304, column: 49, scope: !1500, inlinedAt: !1525)
!1533 = !DILocation(line: 304, column: 3, scope: !1500, inlinedAt: !1525)
!1534 = !DILocation(line: 306, column: 26, scope: !1512, inlinedAt: !1525)
!1535 = !DILocation(line: 306, column: 35, scope: !1512, inlinedAt: !1525)
!1536 = !DILocation(line: 306, column: 7, scope: !1512, inlinedAt: !1525)
!1537 = !DILocation(line: 306, column: 7, scope: !1512, inlinedAt: !1525, atomGroup: 2, atomRank: 2)
!1538 = !DILocation(line: 306, column: 7, scope: !1512, inlinedAt: !1525, atomGroup: 2, atomRank: 1)
!1539 = !DILocation(line: 307, column: 22, scope: !1512, inlinedAt: !1525, atomGroup: 3, atomRank: 1)
!1540 = !DILocation(line: 307, column: 5, scope: !1512, inlinedAt: !1525)
!1541 = !DILocation(line: 377, column: 13, scope: !1542, inlinedAt: !1481, atomGroup: 8, atomRank: 2)
!1542 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 377, column: 11)
!1543 = !DILocation(line: 377, column: 13, scope: !1542, inlinedAt: !1481, atomGroup: 8, atomRank: 1)
!1544 = !DILocation(line: 301, column: 7, scope: !1499, inlinedAt: !1545, atomGroup: 1, atomRank: 3)
!1545 = distinct !DILocation(line: 378, column: 9, scope: !1542, inlinedAt: !1481)
!1546 = !DILocation(line: 301, column: 7, scope: !1499, inlinedAt: !1545, atomGroup: 1, atomRank: 1)
!1547 = !DILocation(line: 302, column: 29, scope: !1499, inlinedAt: !1545)
!1548 = !DILocation(line: 302, column: 5, scope: !1499, inlinedAt: !1545)
!1549 = !DILocation(line: 304, column: 11, scope: !1500, inlinedAt: !1545)
!1550 = !DILocation(line: 304, column: 26, scope: !1500, inlinedAt: !1545)
!1551 = !DILocation(line: 304, column: 40, scope: !1500, inlinedAt: !1545)
!1552 = !DILocation(line: 304, column: 49, scope: !1500, inlinedAt: !1545)
!1553 = !DILocation(line: 304, column: 3, scope: !1500, inlinedAt: !1545)
!1554 = !DILocation(line: 306, column: 26, scope: !1512, inlinedAt: !1545)
!1555 = !DILocation(line: 306, column: 35, scope: !1512, inlinedAt: !1545)
!1556 = !DILocation(line: 306, column: 7, scope: !1512, inlinedAt: !1545)
!1557 = !DILocation(line: 306, column: 7, scope: !1512, inlinedAt: !1545, atomGroup: 2, atomRank: 2)
!1558 = !DILocation(line: 306, column: 7, scope: !1512, inlinedAt: !1545, atomGroup: 2, atomRank: 1)
!1559 = !DILocation(line: 307, column: 22, scope: !1512, inlinedAt: !1545, atomGroup: 3, atomRank: 1)
!1560 = !DILocation(line: 307, column: 5, scope: !1512, inlinedAt: !1545)
!1561 = !DILocation(line: 380, column: 16, scope: !1542, inlinedAt: !1481)
!1562 = !DILocation(line: 380, column: 35, scope: !1542, inlinedAt: !1481)
!1563 = !DILocation(line: 380, column: 9, scope: !1542, inlinedAt: !1481)
!1564 = !DILocation(line: 383, column: 14, scope: !1486, inlinedAt: !1481)
!1565 = !DILocation(line: 383, column: 33, scope: !1486, inlinedAt: !1481)
!1566 = !DILocation(line: 383, column: 7, scope: !1486, inlinedAt: !1481)
!1567 = !DILocation(line: 384, column: 7, scope: !1486, inlinedAt: !1481, atomGroup: 10, atomRank: 1)
!1568 = !DILocation(line: 386, column: 26, scope: !1486, inlinedAt: !1481)
!1569 = !DILocation(line: 386, column: 50, scope: !1486, inlinedAt: !1481)
!1570 = !DILocation(line: 386, column: 15, scope: !1486, inlinedAt: !1481, atomGroup: 11, atomRank: 2)
!1571 = !DILocation(line: 386, column: 7, scope: !1486, inlinedAt: !1481, atomGroup: 11, atomRank: 1)
!1572 = !DILocation(line: 390, column: 32, scope: !1573, inlinedAt: !1481)
!1573 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 388, column: 9)
!1574 = !DILocation(line: 390, column: 39, scope: !1573, inlinedAt: !1481)
!1575 = !DILocation(line: 390, column: 11, scope: !1573, inlinedAt: !1481)
!1576 = !DILocation(line: 393, column: 18, scope: !1573, inlinedAt: !1481)
!1577 = !DILocation(line: 393, column: 37, scope: !1573, inlinedAt: !1481)
!1578 = !DILocation(line: 393, column: 11, scope: !1573, inlinedAt: !1481)
!1579 = !DILocation(line: 394, column: 11, scope: !1573, inlinedAt: !1481, atomGroup: 12, atomRank: 1)
!1580 = !DILocation(line: 301, column: 7, scope: !1499, inlinedAt: !1581, atomGroup: 1, atomRank: 3)
!1581 = distinct !DILocation(line: 397, column: 11, scope: !1573, inlinedAt: !1481)
!1582 = !DILocation(line: 301, column: 7, scope: !1499, inlinedAt: !1581, atomGroup: 1, atomRank: 1)
!1583 = !DILocation(line: 302, column: 29, scope: !1499, inlinedAt: !1581)
!1584 = !DILocation(line: 302, column: 5, scope: !1499, inlinedAt: !1581)
!1585 = !DILocation(line: 304, column: 11, scope: !1500, inlinedAt: !1581)
!1586 = !DILocation(line: 304, column: 26, scope: !1500, inlinedAt: !1581)
!1587 = !DILocation(line: 304, column: 40, scope: !1500, inlinedAt: !1581)
!1588 = !DILocation(line: 304, column: 49, scope: !1500, inlinedAt: !1581)
!1589 = !DILocation(line: 304, column: 3, scope: !1500, inlinedAt: !1581)
!1590 = !DILocation(line: 306, column: 26, scope: !1512, inlinedAt: !1581)
!1591 = !DILocation(line: 306, column: 35, scope: !1512, inlinedAt: !1581)
!1592 = !DILocation(line: 306, column: 7, scope: !1512, inlinedAt: !1581)
!1593 = !DILocation(line: 306, column: 7, scope: !1512, inlinedAt: !1581, atomGroup: 2, atomRank: 2)
!1594 = !DILocation(line: 306, column: 7, scope: !1512, inlinedAt: !1581, atomGroup: 2, atomRank: 1)
!1595 = !DILocation(line: 307, column: 22, scope: !1512, inlinedAt: !1581, atomGroup: 3, atomRank: 1)
!1596 = !DILocation(line: 307, column: 5, scope: !1512, inlinedAt: !1581)
!1597 = !DILocation(line: 401, column: 52, scope: !604, inlinedAt: !1481)
!1598 = !DILocation(line: 401, column: 20, scope: !604, inlinedAt: !1481)
!1599 = !DILocation(line: 401, column: 60, scope: !604, inlinedAt: !1481)
!1600 = !DILocation(line: 401, column: 3, scope: !604, inlinedAt: !1481)
!1601 = !DILocation(line: 449, column: 19, scope: !1602, inlinedAt: !1338)
!1602 = distinct !DILexicalBlock(scope: !1350, file: !2, line: 449, column: 11)
!1603 = !DILocalVariable(name: "__stream", arg: 1, scope: !1604, file: !1421, line: 135, type: !341)
!1604 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1421, file: !1421, line: 135, type: !1605, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1607, keyInstructions: true)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!118, !341}
!1607 = !{!1603}
!1608 = !DILocation(line: 0, scope: !1604, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 449, column: 11, scope: !1602, inlinedAt: !1338)
!1610 = !DILocation(line: 137, column: 10, scope: !1604, inlinedAt: !1609)
!1611 = !{!1430, !630, i64 0}
!1612 = !DILocation(line: 449, column: 11, scope: !1602, inlinedAt: !1338, atomGroup: 8, atomRank: 2)
!1613 = !DILocation(line: 449, column: 11, scope: !1602, inlinedAt: !1338, atomGroup: 8, atomRank: 1)
!1614 = distinct !{!1614, !1339, !1615, !796}
!1615 = !DILocation(line: 451, column: 5, scope: !1333, inlinedAt: !1338)
!1616 = !DILocation(line: 955, column: 21, scope: !1617, inlinedAt: !1620)
!1617 = distinct !DISubprogram(name: "write_error", scope: !117, file: !117, line: 953, type: !605, scopeLine: 954, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1618, keyInstructions: true)
!1618 = !{!1619}
!1619 = !DILocalVariable(name: "saved_errno", scope: !1617, file: !117, line: 955, type: !118)
!1620 = distinct !DILocation(line: 450, column: 9, scope: !1602, inlinedAt: !1338)
!1621 = !DILocation(line: 955, column: 21, scope: !1617, inlinedAt: !1620, atomGroup: 1, atomRank: 2)
!1622 = !DILocation(line: 0, scope: !1617, inlinedAt: !1620)
!1623 = !DILocation(line: 956, column: 3, scope: !1617, inlinedAt: !1620)
!1624 = !DILocation(line: 957, column: 11, scope: !1617, inlinedAt: !1620)
!1625 = !DILocation(line: 957, column: 3, scope: !1617, inlinedAt: !1620)
!1626 = !DILocation(line: 958, column: 13, scope: !1617, inlinedAt: !1620)
!1627 = !DILocation(line: 958, column: 3, scope: !1617, inlinedAt: !1620)
!1628 = !DILocation(line: 959, column: 37, scope: !1617, inlinedAt: !1620)
!1629 = !DILocation(line: 959, column: 3, scope: !1617, inlinedAt: !1620)
!1630 = !DILocation(line: 482, column: 13, scope: !1303)
!1631 = !DILocation(line: 482, column: 13, scope: !1303, atomGroup: 8, atomRank: 2)
!1632 = !DILocation(line: 0, scope: !1604, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 483, column: 8, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 483, column: 7)
!1635 = !DILocation(line: 137, column: 10, scope: !1604, inlinedAt: !1633)
!1636 = !DILocation(line: 483, column: 8, scope: !1634, atomGroup: 9, atomRank: 2)
!1637 = !DILocation(line: 483, column: 7, scope: !1634, atomGroup: 9, atomRank: 1)
!1638 = !DILocation(line: 0, scope: !756, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 485, column: 7, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 485, column: 7)
!1641 = !DILocation(line: 1370, column: 11, scope: !756, inlinedAt: !1639)
!1642 = !DILocation(line: 1370, column: 10, scope: !756, inlinedAt: !1639)
!1643 = !DILocation(line: 485, column: 7, scope: !1640, atomGroup: 11, atomRank: 1)
!1644 = !DILocation(line: 486, column: 5, scope: !1640)
!1645 = !DILocation(line: 487, column: 12, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1640, file: !2, line: 487, column: 12)
!1647 = !DILocation(line: 487, column: 28, scope: !1646, atomGroup: 12, atomRank: 2)
!1648 = !DILocation(line: 487, column: 33, scope: !1646, atomGroup: 12, atomRank: 1)
!1649 = !DILocation(line: 488, column: 11, scope: !1646, atomGroup: 14, atomRank: 2)
!1650 = !DILocation(line: 488, column: 5, scope: !1646)
!1651 = !DILocation(line: 489, column: 7, scope: !1652, atomGroup: 15, atomRank: 2)
!1652 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 489, column: 7)
!1653 = !DILocation(line: 489, column: 7, scope: !1652, atomGroup: 15, atomRank: 1)
!1654 = !DILocation(line: 495, column: 1, scope: !1303, atomGroup: 18, atomRank: 1)
!1655 = !DISubprogram(name: "rpl_fclose", scope: !736, file: !736, line: 959, type: !1605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1656 = !DISubprogram(name: "__errno_location", scope: !1657, file: !1657, line: 37, type: !1658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1657 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!544}
!1660 = !DISubprogram(name: "getenv", scope: !1218, file: !1218, line: 641, type: !1215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1661 = !DISubprogram(name: "strspn", scope: !1281, file: !1281, line: 297, type: !1662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!182, !183, !183}
!1664 = !DISubprogram(name: "strchr", scope: !1281, file: !1281, line: 246, type: !1665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!177, !183, !118}
!1667 = !DISubprogram(name: "__ctype_b_loc", scope: !123, file: !123, line: 79, type: !1668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!1670}
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!1673 = !DISubprogram(name: "strcspn", scope: !1281, file: !1281, line: 293, type: !1662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1674 = !DISubprogram(name: "fwrite_unlocked", scope: !740, file: !740, line: 704, type: !1675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!180, !1075, !180, !180, !729}
!1677 = !DISubprogram(name: "strncmp", scope: !1281, file: !1281, line: 159, type: !1678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!118, !183, !183, !180}
!1680 = !DISubprogram(name: "__overflow", scope: !740, file: !740, line: 886, type: !1681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!118, !341, !118}
!1683 = !DISubprogram(name: "emit_bug_reporting_address", scope: !1288, file: !1288, line: 77, type: !605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1684 = !DISubprogram(name: "rpl_re_compile_pattern", scope: !249, file: !249, line: 548, type: !1685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!183, !183, !180, !597}
!1687 = !DISubprogram(name: "strcmp", scope: !1281, file: !1281, line: 156, type: !1688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!118, !183, !183}
!1690 = !DISubprogram(name: "rpl_mbrtoc32", scope: !1691, file: !1691, line: 1276, type: !1692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1691 = !DIFile(filename: "./lib/uchar.h", directory: "/workspaces/Thesis/.build/coreutils")
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!180, !1694, !183, !180, !1695}
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!1696 = !DISubprogram(name: "rpl_fopen", scope: !736, file: !736, line: 1158, type: !1697, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!341, !730, !730}
!1699 = !DISubprogram(name: "quotearg_n_style_colon", scope: !148, file: !148, line: 419, type: !1700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!177, !118, !147, !183}
!1702 = !DISubprogram(name: "fadvise", scope: !162, file: !162, line: 71, type: !1703, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{null, !341, !1705}
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !162, line: 51, baseType: !161)
!1706 = !DISubprogram(name: "clearerr_unlocked", scope: !740, file: !740, line: 794, type: !1334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1707 = !DISubprogram(name: "readlinebuffer", scope: !294, file: !294, line: 55, type: !1708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!1302, !1302, !341}
!1710 = !DISubprogram(name: "rpl_re_search", scope: !249, file: !249, line: 564, type: !1711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!1713, !597, !183, !1713, !1713, !1713, !1716}
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "regoff_t", file: !249, line: 486, baseType: !1714)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !740, line: 77, baseType: !1715)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !307, line: 194, baseType: !299)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_registers", file: !249, line: 497, size: 192, elements: !1718)
!1718 = !{!1719, !1721, !1723}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "num_regs", scope: !1717, file: !249, line: 499, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_size_t", file: !249, line: 45, baseType: !180)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1717, file: !249, line: 500, baseType: !1722, size: 64, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1717, file: !249, line: 501, baseType: !1722, size: 64, offset: 128)
!1724 = !DISubprogram(name: "fflush_unlocked", scope: !740, file: !740, line: 239, type: !1605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1725 = !DISubprogram(name: "fpurge", scope: !736, file: !736, line: 1266, type: !1605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
