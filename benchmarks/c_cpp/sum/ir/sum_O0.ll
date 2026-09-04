; ModuleID = 'src/sum.c'
source_filename = "src/sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"%05d %5s\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [6 x i8] c"%d %s\00", align 1, !dbg !12

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bsd_sum_stream(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !20 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !121, !DIExpression(), !122)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !123, !DIExpression(), !124)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !125, !DIExpression(), !126)
    #dbg_declare(ptr %8, !127, !DIExpression(), !128)
  store i32 -1, ptr %8, align 4, !dbg !128
    #dbg_declare(ptr %9, !129, !DIExpression(), !132)
    #dbg_declare(ptr %10, !133, !DIExpression(), !134)
  store i32 0, ptr %10, align 4, !dbg !134
    #dbg_declare(ptr %11, !135, !DIExpression(), !136)
  store i64 0, ptr %11, align 8, !dbg !136
    #dbg_declare(ptr %12, !137, !DIExpression(), !143)
  %16 = call noalias ptr @malloc(i64 noundef 32768) #7, !dbg !144
  store ptr %16, ptr %12, align 8, !dbg !143
  %17 = load ptr, ptr %12, align 8, !dbg !145
  %18 = icmp ne ptr %17, null, !dbg !145
  br i1 %18, label %20, label %19, !dbg !147

19:                                               ; preds = %3
  store i32 -1, ptr %4, align 4, !dbg !148
  br label %123, !dbg !148

20:                                               ; preds = %3
  br label %21, !dbg !149

21:                                               ; preds = %20, %83
  store i64 0, ptr %9, align 8, !dbg !150
  br label %22, !dbg !152

22:                                               ; preds = %21, %50
    #dbg_declare(ptr %13, !153, !DIExpression(), !155)
  %23 = load ptr, ptr %12, align 8, !dbg !156
  %24 = load i64, ptr %9, align 8, !dbg !157
  %25 = getelementptr inbounds i8, ptr %23, i64 %24, !dbg !158
  %26 = load i64, ptr %9, align 8, !dbg !159
  %27 = sub nsw i64 32768, %26, !dbg !160
  %28 = load ptr, ptr %5, align 8, !dbg !161
  %29 = call i64 @fread_unlocked(ptr noundef %25, i64 noundef 1, i64 noundef %27, ptr noundef %28), !dbg !162
  store i64 %29, ptr %13, align 8, !dbg !155
  %30 = load i64, ptr %13, align 8, !dbg !163
  %31 = icmp eq i64 %30, 0, !dbg !165
  br i1 %31, label %32, label %38, !dbg !165

32:                                               ; preds = %22
  %33 = load ptr, ptr %5, align 8, !dbg !166
  %34 = call i32 @ferror_unlocked(ptr noundef %33) #8, !dbg !169
  %35 = icmp ne i32 %34, 0, !dbg !169
  br i1 %35, label %36, label %37, !dbg !169

36:                                               ; preds = %32
  br label %120, !dbg !170

37:                                               ; preds = %32
  br label %84, !dbg !171

38:                                               ; preds = %22
  %39 = load i64, ptr %13, align 8, !dbg !172
  %40 = load i64, ptr %9, align 8, !dbg !173
  %41 = add i64 %40, %39, !dbg !173
  store i64 %41, ptr %9, align 8, !dbg !173
  %42 = load i64, ptr %9, align 8, !dbg !174
  %43 = icmp eq i64 32768, %42, !dbg !176
  br i1 %43, label %44, label %45, !dbg !176

44:                                               ; preds = %38
  br label %51, !dbg !177

45:                                               ; preds = %38
  %46 = load ptr, ptr %5, align 8, !dbg !178
  %47 = call i32 @feof_unlocked(ptr noundef %46) #8, !dbg !180
  %48 = icmp ne i32 %47, 0, !dbg !180
  br i1 %48, label %49, label %50, !dbg !180

49:                                               ; preds = %45
  br label %84, !dbg !181

50:                                               ; preds = %45
  br label %22, !dbg !152, !llvm.loop !182

51:                                               ; preds = %44
    #dbg_declare(ptr %14, !184, !DIExpression(), !186)
  store i64 0, ptr %14, align 8, !dbg !186
  br label %52, !dbg !187

52:                                               ; preds = %72, %51
  %53 = load i64, ptr %14, align 8, !dbg !188
  %54 = load i64, ptr %9, align 8, !dbg !190
  %55 = icmp ult i64 %53, %54, !dbg !191
  br i1 %55, label %56, label %75, !dbg !192

56:                                               ; preds = %52
  %57 = load i32, ptr %10, align 4, !dbg !193
  %58 = ashr i32 %57, 1, !dbg !195
  %59 = load i32, ptr %10, align 4, !dbg !196
  %60 = and i32 %59, 1, !dbg !197
  %61 = shl i32 %60, 15, !dbg !198
  %62 = add nsw i32 %58, %61, !dbg !199
  store i32 %62, ptr %10, align 4, !dbg !200
  %63 = load ptr, ptr %12, align 8, !dbg !201
  %64 = load i64, ptr %14, align 8, !dbg !202
  %65 = getelementptr inbounds nuw i8, ptr %63, i64 %64, !dbg !201
  %66 = load i8, ptr %65, align 1, !dbg !201
  %67 = zext i8 %66 to i32, !dbg !201
  %68 = load i32, ptr %10, align 4, !dbg !203
  %69 = add nsw i32 %68, %67, !dbg !203
  store i32 %69, ptr %10, align 4, !dbg !203
  %70 = load i32, ptr %10, align 4, !dbg !204
  %71 = and i32 %70, 65535, !dbg !204
  store i32 %71, ptr %10, align 4, !dbg !204
  br label %72, !dbg !205

72:                                               ; preds = %56
  %73 = load i64, ptr %14, align 8, !dbg !206
  %74 = add i64 %73, 1, !dbg !206
  store i64 %74, ptr %14, align 8, !dbg !206
  br label %52, !dbg !207, !llvm.loop !208

75:                                               ; preds = %52
  %76 = load i64, ptr %11, align 8, !dbg !211
  %77 = load i64, ptr %9, align 8, !dbg !213
  %78 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %76, i64 %77), !dbg !214
  %79 = extractvalue { i64, i1 } %78, 1, !dbg !214
  %80 = extractvalue { i64, i1 } %78, 0, !dbg !214
  store i64 %80, ptr %11, align 8, !dbg !214
  br i1 %79, label %81, label %83, !dbg !214

81:                                               ; preds = %75
  %82 = call ptr @__errno_location() #9, !dbg !215
  store i32 75, ptr %82, align 4, !dbg !217
  br label %120, !dbg !218

83:                                               ; preds = %75
  br label %21, !dbg !149, !llvm.loop !219

84:                                               ; preds = %49, %37
    #dbg_label(!221, !222)
    #dbg_declare(ptr %15, !223, !DIExpression(), !225)
  store i64 0, ptr %15, align 8, !dbg !225
  br label %85, !dbg !226

85:                                               ; preds = %105, %84
  %86 = load i64, ptr %15, align 8, !dbg !227
  %87 = load i64, ptr %9, align 8, !dbg !229
  %88 = icmp slt i64 %86, %87, !dbg !230
  br i1 %88, label %89, label %108, !dbg !231

89:                                               ; preds = %85
  %90 = load i32, ptr %10, align 4, !dbg !232
  %91 = ashr i32 %90, 1, !dbg !234
  %92 = load i32, ptr %10, align 4, !dbg !235
  %93 = and i32 %92, 1, !dbg !236
  %94 = shl i32 %93, 15, !dbg !237
  %95 = add nsw i32 %91, %94, !dbg !238
  store i32 %95, ptr %10, align 4, !dbg !239
  %96 = load ptr, ptr %12, align 8, !dbg !240
  %97 = load i64, ptr %15, align 8, !dbg !241
  %98 = getelementptr inbounds i8, ptr %96, i64 %97, !dbg !240
  %99 = load i8, ptr %98, align 1, !dbg !240
  %100 = zext i8 %99 to i32, !dbg !240
  %101 = load i32, ptr %10, align 4, !dbg !242
  %102 = add nsw i32 %101, %100, !dbg !242
  store i32 %102, ptr %10, align 4, !dbg !242
  %103 = load i32, ptr %10, align 4, !dbg !243
  %104 = and i32 %103, 65535, !dbg !243
  store i32 %104, ptr %10, align 4, !dbg !243
  br label %105, !dbg !244

105:                                              ; preds = %89
  %106 = load i64, ptr %15, align 8, !dbg !245
  %107 = add nsw i64 %106, 1, !dbg !245
  store i64 %107, ptr %15, align 8, !dbg !245
  br label %85, !dbg !246, !llvm.loop !247

108:                                              ; preds = %85
  %109 = load i64, ptr %11, align 8, !dbg !249
  %110 = load i64, ptr %9, align 8, !dbg !251
  %111 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %109, i64 %110), !dbg !252
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !252
  %113 = extractvalue { i64, i1 } %111, 0, !dbg !252
  store i64 %113, ptr %11, align 8, !dbg !252
  br i1 %112, label %114, label %116, !dbg !252

114:                                              ; preds = %108
  %115 = call ptr @__errno_location() #9, !dbg !253
  store i32 75, ptr %115, align 4, !dbg !255
  br label %120, !dbg !256

116:                                              ; preds = %108
  %117 = load ptr, ptr %6, align 8, !dbg !257
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %117, ptr align 4 %10, i64 4, i1 false), !dbg !258
  %118 = load i64, ptr %11, align 8, !dbg !259
  %119 = load ptr, ptr %7, align 8, !dbg !260
  store i64 %118, ptr %119, align 8, !dbg !261
  store i32 0, ptr %8, align 4, !dbg !262
  br label %120, !dbg !263

120:                                              ; preds = %116, %114, %81, %36
    #dbg_label(!264, !265)
  %121 = load ptr, ptr %12, align 8, !dbg !266
  call void @free(ptr noundef %121) #8, !dbg !267
  %122 = load i32, ptr %8, align 4, !dbg !268
  store i32 %122, ptr %4, align 4, !dbg !269
  br label %123, !dbg !269

123:                                              ; preds = %120, %19
  %124 = load i32, ptr %4, align 4, !dbg !270
  ret i32 %124, !dbg !270
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

declare i64 @fread_unlocked(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @feof_unlocked(ptr noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysv_sum_stream(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !94 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !271, !DIExpression(), !272)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !273, !DIExpression(), !274)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !275, !DIExpression(), !276)
    #dbg_declare(ptr %8, !277, !DIExpression(), !278)
  store i32 -1, ptr %8, align 4, !dbg !278
    #dbg_declare(ptr %9, !279, !DIExpression(), !280)
    #dbg_declare(ptr %10, !281, !DIExpression(), !282)
  store i64 0, ptr %10, align 8, !dbg !282
    #dbg_declare(ptr %11, !283, !DIExpression(), !284)
  %18 = call noalias ptr @malloc(i64 noundef 32768) #7, !dbg !285
  store ptr %18, ptr %11, align 8, !dbg !284
  %19 = load ptr, ptr %11, align 8, !dbg !286
  %20 = icmp ne ptr %19, null, !dbg !286
  br i1 %20, label %22, label %21, !dbg !288

21:                                               ; preds = %3
  store i32 -1, ptr %4, align 4, !dbg !289
  br label %126, !dbg !289

22:                                               ; preds = %3
    #dbg_declare(ptr %12, !290, !DIExpression(), !291)
  store i32 0, ptr %12, align 4, !dbg !291
  br label %23, !dbg !292

23:                                               ; preds = %22, %77
  store i64 0, ptr %9, align 8, !dbg !293
  br label %24, !dbg !295

24:                                               ; preds = %23, %52
    #dbg_declare(ptr %13, !296, !DIExpression(), !298)
  %25 = load ptr, ptr %11, align 8, !dbg !299
  %26 = load i64, ptr %9, align 8, !dbg !300
  %27 = getelementptr inbounds i8, ptr %25, i64 %26, !dbg !301
  %28 = load i64, ptr %9, align 8, !dbg !302
  %29 = sub nsw i64 32768, %28, !dbg !303
  %30 = load ptr, ptr %5, align 8, !dbg !304
  %31 = call i64 @fread_unlocked(ptr noundef %27, i64 noundef 1, i64 noundef %29, ptr noundef %30), !dbg !305
  store i64 %31, ptr %13, align 8, !dbg !298
  %32 = load i64, ptr %13, align 8, !dbg !306
  %33 = icmp eq i64 %32, 0, !dbg !308
  br i1 %33, label %34, label %40, !dbg !308

34:                                               ; preds = %24
  %35 = load ptr, ptr %5, align 8, !dbg !309
  %36 = call i32 @ferror_unlocked(ptr noundef %35) #8, !dbg !312
  %37 = icmp ne i32 %36, 0, !dbg !312
  br i1 %37, label %38, label %39, !dbg !312

38:                                               ; preds = %34
  br label %123, !dbg !313

39:                                               ; preds = %34
  br label %81, !dbg !314

40:                                               ; preds = %24
  %41 = load i64, ptr %13, align 8, !dbg !315
  %42 = load i64, ptr %9, align 8, !dbg !316
  %43 = add i64 %42, %41, !dbg !316
  store i64 %43, ptr %9, align 8, !dbg !316
  %44 = load i64, ptr %9, align 8, !dbg !317
  %45 = icmp eq i64 32768, %44, !dbg !319
  br i1 %45, label %46, label %47, !dbg !319

46:                                               ; preds = %40
  br label %53, !dbg !320

47:                                               ; preds = %40
  %48 = load ptr, ptr %5, align 8, !dbg !321
  %49 = call i32 @feof_unlocked(ptr noundef %48) #8, !dbg !323
  %50 = icmp ne i32 %49, 0, !dbg !323
  br i1 %50, label %51, label %52, !dbg !323

51:                                               ; preds = %47
  br label %81, !dbg !324

52:                                               ; preds = %47
  br label %24, !dbg !295, !llvm.loop !325

53:                                               ; preds = %46
    #dbg_declare(ptr %14, !327, !DIExpression(), !329)
  store i64 0, ptr %14, align 8, !dbg !329
  br label %54, !dbg !330

54:                                               ; preds = %66, %53
  %55 = load i64, ptr %14, align 8, !dbg !331
  %56 = load i64, ptr %9, align 8, !dbg !333
  %57 = icmp ult i64 %55, %56, !dbg !334
  br i1 %57, label %58, label %69, !dbg !335

58:                                               ; preds = %54
  %59 = load ptr, ptr %11, align 8, !dbg !336
  %60 = load i64, ptr %14, align 8, !dbg !337
  %61 = getelementptr inbounds nuw i8, ptr %59, i64 %60, !dbg !336
  %62 = load i8, ptr %61, align 1, !dbg !336
  %63 = zext i8 %62 to i32, !dbg !336
  %64 = load i32, ptr %12, align 4, !dbg !338
  %65 = add i32 %64, %63, !dbg !338
  store i32 %65, ptr %12, align 4, !dbg !338
  br label %66, !dbg !339

66:                                               ; preds = %58
  %67 = load i64, ptr %14, align 8, !dbg !340
  %68 = add i64 %67, 1, !dbg !340
  store i64 %68, ptr %14, align 8, !dbg !340
  br label %54, !dbg !341, !llvm.loop !342

69:                                               ; preds = %54
  %70 = load i64, ptr %10, align 8, !dbg !344
  %71 = load i64, ptr %9, align 8, !dbg !346
  %72 = add nsw i64 %70, %71, !dbg !347
  %73 = load i64, ptr %10, align 8, !dbg !348
  %74 = icmp slt i64 %72, %73, !dbg !349
  br i1 %74, label %75, label %77, !dbg !349

75:                                               ; preds = %69
  %76 = call ptr @__errno_location() #9, !dbg !350
  store i32 75, ptr %76, align 4, !dbg !352
  br label %123, !dbg !353

77:                                               ; preds = %69
  %78 = load i64, ptr %9, align 8, !dbg !354
  %79 = load i64, ptr %10, align 8, !dbg !355
  %80 = add nsw i64 %79, %78, !dbg !355
  store i64 %80, ptr %10, align 8, !dbg !355
  br label %23, !dbg !292, !llvm.loop !356

81:                                               ; preds = %51, %39
    #dbg_label(!358, !359)
    #dbg_declare(ptr %15, !360, !DIExpression(), !362)
  store i64 0, ptr %15, align 8, !dbg !362
  br label %82, !dbg !363

82:                                               ; preds = %94, %81
  %83 = load i64, ptr %15, align 8, !dbg !364
  %84 = load i64, ptr %9, align 8, !dbg !366
  %85 = icmp ult i64 %83, %84, !dbg !367
  br i1 %85, label %86, label %97, !dbg !368

86:                                               ; preds = %82
  %87 = load ptr, ptr %11, align 8, !dbg !369
  %88 = load i64, ptr %15, align 8, !dbg !370
  %89 = getelementptr inbounds nuw i8, ptr %87, i64 %88, !dbg !369
  %90 = load i8, ptr %89, align 1, !dbg !369
  %91 = zext i8 %90 to i32, !dbg !369
  %92 = load i32, ptr %12, align 4, !dbg !371
  %93 = add i32 %92, %91, !dbg !371
  store i32 %93, ptr %12, align 4, !dbg !371
  br label %94, !dbg !372

94:                                               ; preds = %86
  %95 = load i64, ptr %15, align 8, !dbg !373
  %96 = add i64 %95, 1, !dbg !373
  store i64 %96, ptr %15, align 8, !dbg !373
  br label %82, !dbg !374, !llvm.loop !375

97:                                               ; preds = %82
  %98 = load i64, ptr %10, align 8, !dbg !377
  %99 = load i64, ptr %9, align 8, !dbg !379
  %100 = add nsw i64 %98, %99, !dbg !380
  %101 = load i64, ptr %10, align 8, !dbg !381
  %102 = icmp slt i64 %100, %101, !dbg !382
  br i1 %102, label %103, label %105, !dbg !382

103:                                              ; preds = %97
  %104 = call ptr @__errno_location() #9, !dbg !383
  store i32 75, ptr %104, align 4, !dbg !385
  br label %123, !dbg !386

105:                                              ; preds = %97
  %106 = load i64, ptr %9, align 8, !dbg !387
  %107 = load i64, ptr %10, align 8, !dbg !388
  %108 = add nsw i64 %107, %106, !dbg !388
  store i64 %108, ptr %10, align 8, !dbg !388
    #dbg_declare(ptr %16, !389, !DIExpression(), !390)
  %109 = load i32, ptr %12, align 4, !dbg !391
  %110 = and i32 %109, 65535, !dbg !392
  %111 = load i32, ptr %12, align 4, !dbg !393
  %112 = and i32 %111, -1, !dbg !394
  %113 = lshr i32 %112, 16, !dbg !395
  %114 = add i32 %110, %113, !dbg !396
  store i32 %114, ptr %16, align 4, !dbg !390
    #dbg_declare(ptr %17, !397, !DIExpression(), !398)
  %115 = load i32, ptr %16, align 4, !dbg !399
  %116 = and i32 %115, 65535, !dbg !400
  %117 = load i32, ptr %16, align 4, !dbg !401
  %118 = ashr i32 %117, 16, !dbg !402
  %119 = add nsw i32 %116, %118, !dbg !403
  store i32 %119, ptr %17, align 4, !dbg !398
  %120 = load ptr, ptr %6, align 8, !dbg !404
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %120, ptr align 4 %17, i64 4, i1 false), !dbg !405
  %121 = load i64, ptr %10, align 8, !dbg !406
  %122 = load ptr, ptr %7, align 8, !dbg !407
  store i64 %121, ptr %122, align 8, !dbg !408
  store i32 0, ptr %8, align 4, !dbg !409
  br label %123, !dbg !410

123:                                              ; preds = %105, %103, %75, %38
    #dbg_label(!411, !412)
  %124 = load ptr, ptr %11, align 8, !dbg !413
  call void @free(ptr noundef %124) #8, !dbg !414
  %125 = load i32, ptr %8, align 4, !dbg !415
  store i32 %125, ptr %4, align 4, !dbg !416
  br label %126, !dbg !416

126:                                              ; preds = %123, %21
  %127 = load i32, ptr %4, align 4, !dbg !417
  ret i32 %127, !dbg !417
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_bsd(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i8 noundef zeroext %5, i1 noundef zeroext %6, i64 noundef %7) #0 !dbg !418 {
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  %17 = alloca i16, align 2
  %18 = alloca [652 x i8], align 16
  store ptr %0, ptr %9, align 8
    #dbg_declare(ptr %9, !425, !DIExpression(), !426)
  store i32 %1, ptr %10, align 4
    #dbg_declare(ptr %10, !427, !DIExpression(), !428)
  store ptr %2, ptr %11, align 8
    #dbg_declare(ptr %11, !429, !DIExpression(), !430)
  %19 = zext i1 %3 to i8
  store i8 %19, ptr %12, align 1
    #dbg_declare(ptr %12, !431, !DIExpression(), !432)
  %20 = zext i1 %4 to i8
  store i8 %20, ptr %13, align 1
    #dbg_declare(ptr %13, !433, !DIExpression(), !434)
  store i8 %5, ptr %14, align 1
    #dbg_declare(ptr %14, !435, !DIExpression(), !436)
  %21 = zext i1 %6 to i8
  store i8 %21, ptr %15, align 1
    #dbg_declare(ptr %15, !437, !DIExpression(), !438)
  store i64 %7, ptr %16, align 8
    #dbg_declare(ptr %16, !439, !DIExpression(), !440)
  %22 = load i8, ptr %12, align 1, !dbg !441
  %23 = trunc i8 %22 to i1, !dbg !441
  br i1 %23, label %24, label %32, !dbg !441

24:                                               ; preds = %8
    #dbg_declare(ptr %17, !443, !DIExpression(), !446)
  %25 = load ptr, ptr %11, align 8, !dbg !447
  %26 = load i32, ptr %25, align 4, !dbg !448
  %27 = trunc i32 %26 to i16, !dbg !448
  store i16 %27, ptr %17, align 2, !dbg !446
  %28 = load i16, ptr %17, align 2, !dbg !449
  %29 = call zeroext i16 @__bswap_16(i16 noundef zeroext %28), !dbg !450
  store i16 %29, ptr %17, align 2, !dbg !451
  %30 = load ptr, ptr @stdout, align 8, !dbg !452
  %31 = call i64 @fwrite_unlocked(ptr noundef %17, i64 noundef 1, i64 noundef 2, ptr noundef %30), !dbg !453
  br label %48, !dbg !454

32:                                               ; preds = %8
    #dbg_declare(ptr %18, !455, !DIExpression(), !459)
  %33 = load ptr, ptr %11, align 8, !dbg !460
  %34 = load i32, ptr %33, align 4, !dbg !461
  %35 = load i64, ptr %16, align 8, !dbg !462
  %36 = getelementptr inbounds [652 x i8], ptr %18, i64 0, i64 0, !dbg !463
  %37 = call ptr @human_readable(i64 noundef %35, ptr noundef %36, i32 noundef 0, i64 noundef 1, i64 noundef 1024), !dbg !464
  %38 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str, i32 noundef %34, ptr noundef %37), !dbg !465
  %39 = load i8, ptr %15, align 1, !dbg !466
  %40 = trunc i8 %39 to i1, !dbg !466
  br i1 %40, label %41, label %44, !dbg !466

41:                                               ; preds = %32
  %42 = load ptr, ptr %9, align 8, !dbg !468
  %43 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str.1, ptr noundef %42), !dbg !469
  br label %44, !dbg !469

44:                                               ; preds = %41, %32
  %45 = load i8, ptr %14, align 1, !dbg !470
  %46 = zext i8 %45 to i32, !dbg !470
  %47 = call i32 @putchar_unlocked(i32 noundef %46), !dbg !471
  br label %48, !dbg !472

48:                                               ; preds = %44, %24
  ret void, !dbg !472
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @__bswap_16(i16 noundef zeroext %0) #0 !dbg !473 {
  %2 = alloca i16, align 2
  store i16 %0, ptr %2, align 2
    #dbg_declare(ptr %2, !477, !DIExpression(), !478)
  %3 = load i16, ptr %2, align 2, !dbg !479
  %4 = zext i16 %3 to i32, !dbg !480
  %5 = ashr i32 %4, 8, !dbg !480
  %6 = and i32 %5, 255, !dbg !480
  %7 = load i16, ptr %2, align 2, !dbg !479
  %8 = zext i16 %7 to i32, !dbg !480
  %9 = and i32 %8, 255, !dbg !480
  %10 = shl i32 %9, 8, !dbg !480
  %11 = or i32 %6, %10, !dbg !480
  %12 = trunc i32 %11 to i16, !dbg !480
  ret i16 %12, !dbg !481
}

declare i64 @fwrite_unlocked(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i32 @rpl_printf(ptr noundef, ...) #2

declare ptr @human_readable(i64 noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

declare i32 @putchar_unlocked(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_sysv(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i8 noundef zeroext %5, i1 noundef zeroext %6, i64 noundef %7) #0 !dbg !482 {
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  %17 = alloca i16, align 2
  %18 = alloca [652 x i8], align 16
  store ptr %0, ptr %9, align 8
    #dbg_declare(ptr %9, !483, !DIExpression(), !484)
  store i32 %1, ptr %10, align 4
    #dbg_declare(ptr %10, !485, !DIExpression(), !486)
  store ptr %2, ptr %11, align 8
    #dbg_declare(ptr %11, !487, !DIExpression(), !488)
  %19 = zext i1 %3 to i8
  store i8 %19, ptr %12, align 1
    #dbg_declare(ptr %12, !489, !DIExpression(), !490)
  %20 = zext i1 %4 to i8
  store i8 %20, ptr %13, align 1
    #dbg_declare(ptr %13, !491, !DIExpression(), !492)
  store i8 %5, ptr %14, align 1
    #dbg_declare(ptr %14, !493, !DIExpression(), !494)
  %21 = zext i1 %6 to i8
  store i8 %21, ptr %15, align 1
    #dbg_declare(ptr %15, !495, !DIExpression(), !496)
  store i64 %7, ptr %16, align 8
    #dbg_declare(ptr %16, !497, !DIExpression(), !498)
  %22 = load i8, ptr %12, align 1, !dbg !499
  %23 = trunc i8 %22 to i1, !dbg !499
  br i1 %23, label %24, label %32, !dbg !499

24:                                               ; preds = %8
    #dbg_declare(ptr %17, !501, !DIExpression(), !503)
  %25 = load ptr, ptr %11, align 8, !dbg !504
  %26 = load i32, ptr %25, align 4, !dbg !505
  %27 = trunc i32 %26 to i16, !dbg !505
  store i16 %27, ptr %17, align 2, !dbg !503
  %28 = load i16, ptr %17, align 2, !dbg !506
  %29 = call zeroext i16 @__bswap_16(i16 noundef zeroext %28), !dbg !507
  store i16 %29, ptr %17, align 2, !dbg !508
  %30 = load ptr, ptr @stdout, align 8, !dbg !509
  %31 = call i64 @fwrite_unlocked(ptr noundef %17, i64 noundef 1, i64 noundef 2, ptr noundef %30), !dbg !510
  br label %48, !dbg !511

32:                                               ; preds = %8
    #dbg_declare(ptr %18, !512, !DIExpression(), !513)
  %33 = load ptr, ptr %11, align 8, !dbg !514
  %34 = load i32, ptr %33, align 4, !dbg !515
  %35 = load i64, ptr %16, align 8, !dbg !516
  %36 = getelementptr inbounds [652 x i8], ptr %18, i64 0, i64 0, !dbg !517
  %37 = call ptr @human_readable(i64 noundef %35, ptr noundef %36, i32 noundef 0, i64 noundef 1, i64 noundef 512), !dbg !518
  %38 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str.2, i32 noundef %34, ptr noundef %37), !dbg !519
  %39 = load i8, ptr %15, align 1, !dbg !520
  %40 = trunc i8 %39 to i1, !dbg !520
  br i1 %40, label %41, label %44, !dbg !520

41:                                               ; preds = %32
  %42 = load ptr, ptr %9, align 8, !dbg !522
  %43 = call i32 (ptr, ...) @rpl_printf(ptr noundef @.str.1, ptr noundef %42), !dbg !523
  br label %44, !dbg !523

44:                                               ; preds = %41, %32
  %45 = load i8, ptr %14, align 1, !dbg !524
  %46 = zext i8 %45 to i32, !dbg !524
  %47 = call i32 @putchar_unlocked(i32 noundef %46), !dbg !525
  br label %48, !dbg !526

48:                                               ; preds = %44, %24
  ret void, !dbg !526
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 199, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/sum.c", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "984061a05cf8100a66387ffa345dea00")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 9)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 202, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 4)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 224, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 6)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !108, globals: !112, splitDebugInlining: false, nameTableKind: None)
!18 = !{!19, !93, !95}
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !20, file: !2, line: 40, baseType: !90, size: 32, elements: !91)
!20 = distinct !DISubprogram(name: "bsd_sum_stream", scope: !2, file: !2, line: 34, type: !21, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !89)
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !24, !75, !85}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !26, line: 7, baseType: !27)
!26 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !28, line: 49, size: 1728, elements: !29)
!28 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!29 = !{!30, !31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !46, !48, !49, !50, !54, !56, !58, !62, !65, !67, !70, !73, !74, !76, !80, !81}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !27, file: !28, line: 51, baseType: !23, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !27, file: !28, line: 54, baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !27, file: !28, line: 55, baseType: !32, size: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !27, file: !28, line: 56, baseType: !32, size: 64, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !27, file: !28, line: 57, baseType: !32, size: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !27, file: !28, line: 58, baseType: !32, size: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !27, file: !28, line: 59, baseType: !32, size: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !27, file: !28, line: 60, baseType: !32, size: 64, offset: 448)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !27, file: !28, line: 61, baseType: !32, size: 64, offset: 512)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !27, file: !28, line: 64, baseType: !32, size: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !27, file: !28, line: 65, baseType: !32, size: 64, offset: 640)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !27, file: !28, line: 66, baseType: !32, size: 64, offset: 704)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !27, file: !28, line: 68, baseType: !44, size: 64, offset: 768)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !28, line: 36, flags: DIFlagFwdDecl)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !27, file: !28, line: 70, baseType: !47, size: 64, offset: 832)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !27, file: !28, line: 72, baseType: !23, size: 32, offset: 896)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !27, file: !28, line: 73, baseType: !23, size: 32, offset: 928)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !27, file: !28, line: 74, baseType: !51, size: 64, offset: 960)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !52, line: 152, baseType: !53)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!53 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !27, file: !28, line: 77, baseType: !55, size: 16, offset: 1024)
!55 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !27, file: !28, line: 78, baseType: !57, size: 8, offset: 1040)
!57 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !27, file: !28, line: 79, baseType: !59, size: 8, offset: 1048)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 1)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !27, file: !28, line: 81, baseType: !63, size: 64, offset: 1088)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !28, line: 43, baseType: null)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !27, file: !28, line: 89, baseType: !66, size: 64, offset: 1152)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !52, line: 153, baseType: !53)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !27, file: !28, line: 91, baseType: !68, size: 64, offset: 1216)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !28, line: 37, flags: DIFlagFwdDecl)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !27, file: !28, line: 92, baseType: !71, size: 64, offset: 1280)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !28, line: 38, flags: DIFlagFwdDecl)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !27, file: !28, line: 93, baseType: !47, size: 64, offset: 1344)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !27, file: !28, line: 94, baseType: !75, size: 64, offset: 1408)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !27, file: !28, line: 95, baseType: !77, size: 64, offset: 1472)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 18, baseType: !79)
!78 = !DIFile(filename: "/usr/lib/llvm-22/lib/clang/22/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!79 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !27, file: !28, line: 96, baseType: !23, size: 32, offset: 1536)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !27, file: !28, line: 98, baseType: !82, size: 160, offset: 1568)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 20)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !87, line: 101, baseType: !88)
!87 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !52, line: 72, baseType: !53)
!89 = !{}
!90 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!91 = !{!92}
!92 = !DIEnumerator(name: "buffer_length", value: 32768)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !94, file: !2, line: 115, baseType: !90, size: 32, elements: !91)
!94 = distinct !DISubprogram(name: "sysv_sum_stream", scope: !2, file: !2, line: 110, type: !21, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !89)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 47, baseType: !90, size: 32, elements: !97)
!96 = !DIFile(filename: "./lib/human.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "54b947176626bd627e1f54ed62821590")
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106, !107}
!98 = !DIEnumerator(name: "human_ceiling", value: 0)
!99 = !DIEnumerator(name: "human_round_to_nearest", value: 1)
!100 = !DIEnumerator(name: "human_floor", value: 2)
!101 = !DIEnumerator(name: "human_group_digits", value: 4)
!102 = !DIEnumerator(name: "human_suppress_point_zero", value: 8)
!103 = !DIEnumerator(name: "human_autoscale", value: 16)
!104 = !DIEnumerator(name: "human_base_1024", value: 32)
!105 = !DIEnumerator(name: "human_space_before_unit", value: 64)
!106 = !DIEnumerator(name: "human_SI", value: 128)
!107 = !DIEnumerator(name: "human_B", value: 256)
!108 = !{!109, !110, !111}
!109 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !52, line: 40, baseType: !55)
!112 = !{!0, !7, !12}
!113 = !{i32 7, !"Dwarf Version", i32 5}
!114 = !{i32 2, !"Debug Info Version", i32 3}
!115 = !{i32 1, !"wchar_size", i32 4}
!116 = !{i32 8, !"PIC Level", i32 2}
!117 = !{i32 7, !"PIE Level", i32 2}
!118 = !{i32 7, !"uwtable", i32 2}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)"}
!121 = !DILocalVariable(name: "stream", arg: 1, scope: !20, file: !2, line: 34, type: !24)
!122 = !DILocation(line: 34, column: 23, scope: !20)
!123 = !DILocalVariable(name: "resstream", arg: 2, scope: !20, file: !2, line: 34, type: !75)
!124 = !DILocation(line: 34, column: 37, scope: !20)
!125 = !DILocalVariable(name: "length", arg: 3, scope: !20, file: !2, line: 34, type: !85)
!126 = !DILocation(line: 34, column: 58, scope: !20)
!127 = !DILocalVariable(name: "ret", scope: !20, file: !2, line: 36, type: !23)
!128 = !DILocation(line: 36, column: 7, scope: !20)
!129 = !DILocalVariable(name: "sum", scope: !20, file: !2, line: 37, type: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !131, line: 137, baseType: !53)
!131 = !DIFile(filename: "./lib/idx.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "a342c053ede588630cf36a09403114d3")
!132 = !DILocation(line: 37, column: 9, scope: !20)
!133 = !DILocalVariable(name: "checksum", scope: !20, file: !2, line: 38, type: !23)
!134 = !DILocation(line: 38, column: 7, scope: !20)
!135 = !DILocalVariable(name: "total_bytes", scope: !20, file: !2, line: 39, type: !86)
!136 = !DILocation(line: 39, column: 12, scope: !20)
!137 = !DILocalVariable(name: "buffer", scope: !20, file: !2, line: 41, type: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !140, line: 24, baseType: !141)
!140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !52, line: 38, baseType: !142)
!142 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!143 = !DILocation(line: 41, column: 12, scope: !20)
!144 = !DILocation(line: 41, column: 21, scope: !20)
!145 = !DILocation(line: 43, column: 9, scope: !146)
!146 = distinct !DILexicalBlock(scope: !20, file: !2, line: 43, column: 7)
!147 = !DILocation(line: 43, column: 7, scope: !146)
!148 = !DILocation(line: 44, column: 5, scope: !146)
!149 = !DILocation(line: 47, column: 3, scope: !20)
!150 = !DILocation(line: 49, column: 9, scope: !151)
!151 = distinct !DILexicalBlock(scope: !20, file: !2, line: 48, column: 3)
!152 = !DILocation(line: 52, column: 5, scope: !151)
!153 = !DILocalVariable(name: "n", scope: !154, file: !2, line: 54, type: !77)
!154 = distinct !DILexicalBlock(scope: !151, file: !2, line: 53, column: 5)
!155 = !DILocation(line: 54, column: 14, scope: !154)
!156 = !DILocation(line: 54, column: 25, scope: !154)
!157 = !DILocation(line: 54, column: 34, scope: !154)
!158 = !DILocation(line: 54, column: 32, scope: !154)
!159 = !DILocation(line: 54, column: 58, scope: !154)
!160 = !DILocation(line: 54, column: 56, scope: !154)
!161 = !DILocation(line: 54, column: 63, scope: !154)
!162 = !DILocation(line: 54, column: 18, scope: !154)
!163 = !DILocation(line: 55, column: 11, scope: !164)
!164 = distinct !DILexicalBlock(scope: !154, file: !2, line: 55, column: 11)
!165 = !DILocation(line: 55, column: 13, scope: !164)
!166 = !DILocation(line: 57, column: 23, scope: !167)
!167 = distinct !DILexicalBlock(scope: !168, file: !2, line: 57, column: 15)
!168 = distinct !DILexicalBlock(scope: !164, file: !2, line: 56, column: 9)
!169 = !DILocation(line: 57, column: 15, scope: !167)
!170 = !DILocation(line: 58, column: 13, scope: !167)
!171 = !DILocation(line: 59, column: 11, scope: !168)
!172 = !DILocation(line: 62, column: 14, scope: !154)
!173 = !DILocation(line: 62, column: 11, scope: !154)
!174 = !DILocation(line: 64, column: 28, scope: !175)
!175 = distinct !DILexicalBlock(scope: !154, file: !2, line: 64, column: 11)
!176 = !DILocation(line: 64, column: 25, scope: !175)
!177 = !DILocation(line: 65, column: 9, scope: !175)
!178 = !DILocation(line: 67, column: 17, scope: !179)
!179 = distinct !DILexicalBlock(scope: !154, file: !2, line: 67, column: 11)
!180 = !DILocation(line: 67, column: 11, scope: !179)
!181 = !DILocation(line: 68, column: 9, scope: !179)
!182 = distinct !{!182, !152, !183}
!183 = !DILocation(line: 69, column: 5, scope: !151)
!184 = !DILocalVariable(name: "i", scope: !185, file: !2, line: 71, type: !77)
!185 = distinct !DILexicalBlock(scope: !151, file: !2, line: 71, column: 5)
!186 = !DILocation(line: 71, column: 17, scope: !185)
!187 = !DILocation(line: 71, column: 10, scope: !185)
!188 = !DILocation(line: 71, column: 24, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !2, line: 71, column: 5)
!190 = !DILocation(line: 71, column: 28, scope: !189)
!191 = !DILocation(line: 71, column: 26, scope: !189)
!192 = !DILocation(line: 71, column: 5, scope: !185)
!193 = !DILocation(line: 73, column: 21, scope: !194)
!194 = distinct !DILexicalBlock(scope: !189, file: !2, line: 72, column: 7)
!195 = !DILocation(line: 73, column: 30, scope: !194)
!196 = !DILocation(line: 73, column: 40, scope: !194)
!197 = !DILocation(line: 73, column: 49, scope: !194)
!198 = !DILocation(line: 73, column: 54, scope: !194)
!199 = !DILocation(line: 73, column: 36, scope: !194)
!200 = !DILocation(line: 73, column: 18, scope: !194)
!201 = !DILocation(line: 74, column: 21, scope: !194)
!202 = !DILocation(line: 74, column: 28, scope: !194)
!203 = !DILocation(line: 74, column: 18, scope: !194)
!204 = !DILocation(line: 75, column: 18, scope: !194)
!205 = !DILocation(line: 76, column: 7, scope: !194)
!206 = !DILocation(line: 71, column: 34, scope: !189)
!207 = !DILocation(line: 71, column: 5, scope: !189)
!208 = distinct !{!208, !192, !209, !210}
!209 = !DILocation(line: 76, column: 7, scope: !185)
!210 = !{!"llvm.loop.mustprogress"}
!211 = !DILocation(line: 77, column: 32, scope: !212)
!212 = distinct !DILexicalBlock(scope: !151, file: !2, line: 77, column: 9)
!213 = !DILocation(line: 77, column: 45, scope: !212)
!214 = !DILocation(line: 77, column: 9, scope: !212)
!215 = !DILocation(line: 79, column: 9, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !2, line: 78, column: 7)
!217 = !DILocation(line: 79, column: 15, scope: !216)
!218 = !DILocation(line: 80, column: 9, scope: !216)
!219 = distinct !{!219, !149, !220}
!220 = !DILocation(line: 82, column: 3, scope: !20)
!221 = !DILabel(scope: !20, name: "final_process", file: !2, line: 84, column: 1)
!222 = !DILocation(line: 84, column: 1, scope: !20)
!223 = !DILocalVariable(name: "i", scope: !224, file: !2, line: 86, type: !130)
!224 = distinct !DILexicalBlock(scope: !20, file: !2, line: 86, column: 3)
!225 = !DILocation(line: 86, column: 14, scope: !224)
!226 = !DILocation(line: 86, column: 8, scope: !224)
!227 = !DILocation(line: 86, column: 21, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !2, line: 86, column: 3)
!229 = !DILocation(line: 86, column: 25, scope: !228)
!230 = !DILocation(line: 86, column: 23, scope: !228)
!231 = !DILocation(line: 86, column: 3, scope: !224)
!232 = !DILocation(line: 88, column: 19, scope: !233)
!233 = distinct !DILexicalBlock(scope: !228, file: !2, line: 87, column: 5)
!234 = !DILocation(line: 88, column: 28, scope: !233)
!235 = !DILocation(line: 88, column: 38, scope: !233)
!236 = !DILocation(line: 88, column: 47, scope: !233)
!237 = !DILocation(line: 88, column: 52, scope: !233)
!238 = !DILocation(line: 88, column: 34, scope: !233)
!239 = !DILocation(line: 88, column: 16, scope: !233)
!240 = !DILocation(line: 89, column: 19, scope: !233)
!241 = !DILocation(line: 89, column: 26, scope: !233)
!242 = !DILocation(line: 89, column: 16, scope: !233)
!243 = !DILocation(line: 90, column: 16, scope: !233)
!244 = !DILocation(line: 91, column: 5, scope: !233)
!245 = !DILocation(line: 86, column: 31, scope: !228)
!246 = !DILocation(line: 86, column: 3, scope: !228)
!247 = distinct !{!247, !231, !248, !210}
!248 = !DILocation(line: 91, column: 5, scope: !224)
!249 = !DILocation(line: 92, column: 30, scope: !250)
!250 = distinct !DILexicalBlock(scope: !20, file: !2, line: 92, column: 7)
!251 = !DILocation(line: 92, column: 43, scope: !250)
!252 = !DILocation(line: 92, column: 7, scope: !250)
!253 = !DILocation(line: 94, column: 7, scope: !254)
!254 = distinct !DILexicalBlock(scope: !250, file: !2, line: 93, column: 5)
!255 = !DILocation(line: 94, column: 13, scope: !254)
!256 = !DILocation(line: 95, column: 7, scope: !254)
!257 = !DILocation(line: 98, column: 11, scope: !20)
!258 = !DILocation(line: 98, column: 3, scope: !20)
!259 = !DILocation(line: 99, column: 13, scope: !20)
!260 = !DILocation(line: 99, column: 4, scope: !20)
!261 = !DILocation(line: 99, column: 11, scope: !20)
!262 = !DILocation(line: 100, column: 7, scope: !20)
!263 = !DILocation(line: 100, column: 3, scope: !20)
!264 = !DILabel(scope: !20, name: "cleanup_buffer", file: !2, line: 101, column: 1)
!265 = !DILocation(line: 101, column: 1, scope: !20)
!266 = !DILocation(line: 102, column: 9, scope: !20)
!267 = !DILocation(line: 102, column: 3, scope: !20)
!268 = !DILocation(line: 103, column: 10, scope: !20)
!269 = !DILocation(line: 103, column: 3, scope: !20)
!270 = !DILocation(line: 104, column: 1, scope: !20)
!271 = !DILocalVariable(name: "stream", arg: 1, scope: !94, file: !2, line: 110, type: !24)
!272 = !DILocation(line: 110, column: 24, scope: !94)
!273 = !DILocalVariable(name: "resstream", arg: 2, scope: !94, file: !2, line: 110, type: !75)
!274 = !DILocation(line: 110, column: 38, scope: !94)
!275 = !DILocalVariable(name: "length", arg: 3, scope: !94, file: !2, line: 110, type: !85)
!276 = !DILocation(line: 110, column: 59, scope: !94)
!277 = !DILocalVariable(name: "ret", scope: !94, file: !2, line: 112, type: !23)
!278 = !DILocation(line: 112, column: 7, scope: !94)
!279 = !DILocalVariable(name: "sum", scope: !94, file: !2, line: 113, type: !130)
!280 = !DILocation(line: 113, column: 9, scope: !94)
!281 = !DILocalVariable(name: "total_bytes", scope: !94, file: !2, line: 114, type: !86)
!282 = !DILocation(line: 114, column: 12, scope: !94)
!283 = !DILocalVariable(name: "buffer", scope: !94, file: !2, line: 116, type: !138)
!284 = !DILocation(line: 116, column: 12, scope: !94)
!285 = !DILocation(line: 116, column: 21, scope: !94)
!286 = !DILocation(line: 118, column: 9, scope: !287)
!287 = distinct !DILexicalBlock(scope: !94, file: !2, line: 118, column: 7)
!288 = !DILocation(line: 118, column: 7, scope: !287)
!289 = !DILocation(line: 119, column: 5, scope: !287)
!290 = !DILocalVariable(name: "s", scope: !94, file: !2, line: 122, type: !90)
!291 = !DILocation(line: 122, column: 16, scope: !94)
!292 = !DILocation(line: 125, column: 3, scope: !94)
!293 = !DILocation(line: 127, column: 9, scope: !294)
!294 = distinct !DILexicalBlock(scope: !94, file: !2, line: 126, column: 3)
!295 = !DILocation(line: 130, column: 5, scope: !294)
!296 = !DILocalVariable(name: "n", scope: !297, file: !2, line: 132, type: !77)
!297 = distinct !DILexicalBlock(scope: !294, file: !2, line: 131, column: 5)
!298 = !DILocation(line: 132, column: 14, scope: !297)
!299 = !DILocation(line: 132, column: 25, scope: !297)
!300 = !DILocation(line: 132, column: 34, scope: !297)
!301 = !DILocation(line: 132, column: 32, scope: !297)
!302 = !DILocation(line: 132, column: 58, scope: !297)
!303 = !DILocation(line: 132, column: 56, scope: !297)
!304 = !DILocation(line: 132, column: 63, scope: !297)
!305 = !DILocation(line: 132, column: 18, scope: !297)
!306 = !DILocation(line: 133, column: 11, scope: !307)
!307 = distinct !DILexicalBlock(scope: !297, file: !2, line: 133, column: 11)
!308 = !DILocation(line: 133, column: 13, scope: !307)
!309 = !DILocation(line: 135, column: 23, scope: !310)
!310 = distinct !DILexicalBlock(scope: !311, file: !2, line: 135, column: 15)
!311 = distinct !DILexicalBlock(scope: !307, file: !2, line: 134, column: 9)
!312 = !DILocation(line: 135, column: 15, scope: !310)
!313 = !DILocation(line: 136, column: 13, scope: !310)
!314 = !DILocation(line: 137, column: 11, scope: !311)
!315 = !DILocation(line: 140, column: 14, scope: !297)
!316 = !DILocation(line: 140, column: 11, scope: !297)
!317 = !DILocation(line: 142, column: 28, scope: !318)
!318 = distinct !DILexicalBlock(scope: !297, file: !2, line: 142, column: 11)
!319 = !DILocation(line: 142, column: 25, scope: !318)
!320 = !DILocation(line: 143, column: 9, scope: !318)
!321 = !DILocation(line: 145, column: 17, scope: !322)
!322 = distinct !DILexicalBlock(scope: !297, file: !2, line: 145, column: 11)
!323 = !DILocation(line: 145, column: 11, scope: !322)
!324 = !DILocation(line: 146, column: 9, scope: !322)
!325 = distinct !{!325, !295, !326}
!326 = !DILocation(line: 147, column: 5, scope: !294)
!327 = !DILocalVariable(name: "i", scope: !328, file: !2, line: 149, type: !77)
!328 = distinct !DILexicalBlock(scope: !294, file: !2, line: 149, column: 5)
!329 = !DILocation(line: 149, column: 17, scope: !328)
!330 = !DILocation(line: 149, column: 10, scope: !328)
!331 = !DILocation(line: 149, column: 24, scope: !332)
!332 = distinct !DILexicalBlock(scope: !328, file: !2, line: 149, column: 5)
!333 = !DILocation(line: 149, column: 28, scope: !332)
!334 = !DILocation(line: 149, column: 26, scope: !332)
!335 = !DILocation(line: 149, column: 5, scope: !328)
!336 = !DILocation(line: 150, column: 12, scope: !332)
!337 = !DILocation(line: 150, column: 19, scope: !332)
!338 = !DILocation(line: 150, column: 9, scope: !332)
!339 = !DILocation(line: 150, column: 7, scope: !332)
!340 = !DILocation(line: 149, column: 34, scope: !332)
!341 = !DILocation(line: 149, column: 5, scope: !332)
!342 = distinct !{!342, !335, !343, !210}
!343 = !DILocation(line: 150, column: 20, scope: !328)
!344 = !DILocation(line: 151, column: 9, scope: !345)
!345 = distinct !DILexicalBlock(scope: !294, file: !2, line: 151, column: 9)
!346 = !DILocation(line: 151, column: 23, scope: !345)
!347 = !DILocation(line: 151, column: 21, scope: !345)
!348 = !DILocation(line: 151, column: 29, scope: !345)
!349 = !DILocation(line: 151, column: 27, scope: !345)
!350 = !DILocation(line: 153, column: 9, scope: !351)
!351 = distinct !DILexicalBlock(scope: !345, file: !2, line: 152, column: 7)
!352 = !DILocation(line: 153, column: 15, scope: !351)
!353 = !DILocation(line: 154, column: 9, scope: !351)
!354 = !DILocation(line: 156, column: 20, scope: !294)
!355 = !DILocation(line: 156, column: 17, scope: !294)
!356 = distinct !{!356, !292, !357}
!357 = !DILocation(line: 157, column: 3, scope: !94)
!358 = !DILabel(scope: !94, name: "final_process", file: !2, line: 159, column: 1)
!359 = !DILocation(line: 159, column: 1, scope: !94)
!360 = !DILocalVariable(name: "i", scope: !361, file: !2, line: 161, type: !77)
!361 = distinct !DILexicalBlock(scope: !94, file: !2, line: 161, column: 3)
!362 = !DILocation(line: 161, column: 15, scope: !361)
!363 = !DILocation(line: 161, column: 8, scope: !361)
!364 = !DILocation(line: 161, column: 22, scope: !365)
!365 = distinct !DILexicalBlock(scope: !361, file: !2, line: 161, column: 3)
!366 = !DILocation(line: 161, column: 26, scope: !365)
!367 = !DILocation(line: 161, column: 24, scope: !365)
!368 = !DILocation(line: 161, column: 3, scope: !361)
!369 = !DILocation(line: 162, column: 10, scope: !365)
!370 = !DILocation(line: 162, column: 17, scope: !365)
!371 = !DILocation(line: 162, column: 7, scope: !365)
!372 = !DILocation(line: 162, column: 5, scope: !365)
!373 = !DILocation(line: 161, column: 32, scope: !365)
!374 = !DILocation(line: 161, column: 3, scope: !365)
!375 = distinct !{!375, !368, !376, !210}
!376 = !DILocation(line: 162, column: 18, scope: !361)
!377 = !DILocation(line: 163, column: 7, scope: !378)
!378 = distinct !DILexicalBlock(scope: !94, file: !2, line: 163, column: 7)
!379 = !DILocation(line: 163, column: 21, scope: !378)
!380 = !DILocation(line: 163, column: 19, scope: !378)
!381 = !DILocation(line: 163, column: 27, scope: !378)
!382 = !DILocation(line: 163, column: 25, scope: !378)
!383 = !DILocation(line: 165, column: 7, scope: !384)
!384 = distinct !DILexicalBlock(scope: !378, file: !2, line: 164, column: 5)
!385 = !DILocation(line: 165, column: 13, scope: !384)
!386 = !DILocation(line: 166, column: 7, scope: !384)
!387 = !DILocation(line: 168, column: 18, scope: !94)
!388 = !DILocation(line: 168, column: 15, scope: !94)
!389 = !DILocalVariable(name: "r", scope: !94, file: !2, line: 170, type: !23)
!390 = !DILocation(line: 170, column: 7, scope: !94)
!391 = !DILocation(line: 170, column: 12, scope: !94)
!392 = !DILocation(line: 170, column: 14, scope: !94)
!393 = !DILocation(line: 170, column: 28, scope: !94)
!394 = !DILocation(line: 170, column: 30, scope: !94)
!395 = !DILocation(line: 170, column: 44, scope: !94)
!396 = !DILocation(line: 170, column: 24, scope: !94)
!397 = !DILocalVariable(name: "checksum", scope: !94, file: !2, line: 171, type: !23)
!398 = !DILocation(line: 171, column: 7, scope: !94)
!399 = !DILocation(line: 171, column: 19, scope: !94)
!400 = !DILocation(line: 171, column: 21, scope: !94)
!401 = !DILocation(line: 171, column: 34, scope: !94)
!402 = !DILocation(line: 171, column: 36, scope: !94)
!403 = !DILocation(line: 171, column: 31, scope: !94)
!404 = !DILocation(line: 173, column: 11, scope: !94)
!405 = !DILocation(line: 173, column: 3, scope: !94)
!406 = !DILocation(line: 174, column: 13, scope: !94)
!407 = !DILocation(line: 174, column: 4, scope: !94)
!408 = !DILocation(line: 174, column: 11, scope: !94)
!409 = !DILocation(line: 175, column: 7, scope: !94)
!410 = !DILocation(line: 175, column: 3, scope: !94)
!411 = !DILabel(scope: !94, name: "cleanup_buffer", file: !2, line: 176, column: 1)
!412 = !DILocation(line: 176, column: 1, scope: !94)
!413 = !DILocation(line: 177, column: 9, scope: !94)
!414 = !DILocation(line: 177, column: 3, scope: !94)
!415 = !DILocation(line: 178, column: 10, scope: !94)
!416 = !DILocation(line: 178, column: 3, scope: !94)
!417 = !DILocation(line: 179, column: 1, scope: !94)
!418 = distinct !DISubprogram(name: "output_bsd", scope: !2, file: !2, line: 185, type: !419, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !89)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !421, !23, !423, !109, !109, !142, !109, !86}
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!425 = !DILocalVariable(name: "file", arg: 1, scope: !418, file: !2, line: 185, type: !421)
!426 = !DILocation(line: 185, column: 25, scope: !418)
!427 = !DILocalVariable(name: "binary_file", arg: 2, scope: !418, file: !2, line: 185, type: !23)
!428 = !DILocation(line: 185, column: 48, scope: !418)
!429 = !DILocalVariable(name: "digest", arg: 3, scope: !418, file: !2, line: 185, type: !423)
!430 = !DILocation(line: 185, column: 73, scope: !418)
!431 = !DILocalVariable(name: "raw", arg: 4, scope: !418, file: !2, line: 186, type: !109)
!432 = !DILocation(line: 186, column: 18, scope: !418)
!433 = !DILocalVariable(name: "tagged", arg: 5, scope: !418, file: !2, line: 186, type: !109)
!434 = !DILocation(line: 186, column: 41, scope: !418)
!435 = !DILocalVariable(name: "delim", arg: 6, scope: !418, file: !2, line: 186, type: !142)
!436 = !DILocation(line: 186, column: 63, scope: !418)
!437 = !DILocalVariable(name: "args", arg: 7, scope: !418, file: !2, line: 186, type: !109)
!438 = !DILocation(line: 186, column: 75, scope: !418)
!439 = !DILocalVariable(name: "length", arg: 8, scope: !418, file: !2, line: 187, type: !86)
!440 = !DILocation(line: 187, column: 22, scope: !418)
!441 = !DILocation(line: 189, column: 7, scope: !442)
!442 = distinct !DILexicalBlock(scope: !418, file: !2, line: 189, column: 7)
!443 = !DILocalVariable(name: "out_int", scope: !444, file: !2, line: 192, type: !445)
!444 = distinct !DILexicalBlock(scope: !442, file: !2, line: 190, column: 5)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !140, line: 25, baseType: !111)
!446 = !DILocation(line: 192, column: 16, scope: !444)
!447 = !DILocation(line: 192, column: 34, scope: !444)
!448 = !DILocation(line: 192, column: 26, scope: !444)
!449 = !DILocation(line: 193, column: 26, scope: !444)
!450 = !DILocation(line: 193, column: 17, scope: !444)
!451 = !DILocation(line: 193, column: 15, scope: !444)
!452 = !DILocation(line: 194, column: 34, scope: !444)
!453 = !DILocation(line: 194, column: 7, scope: !444)
!454 = !DILocation(line: 195, column: 7, scope: !444)
!455 = !DILocalVariable(name: "hbuf", scope: !418, file: !2, line: 198, type: !456)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 5216, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 652)
!459 = !DILocation(line: 198, column: 8, scope: !418)
!460 = !DILocation(line: 199, column: 31, scope: !418)
!461 = !DILocation(line: 199, column: 23, scope: !418)
!462 = !DILocation(line: 200, column: 27, scope: !418)
!463 = !DILocation(line: 200, column: 35, scope: !418)
!464 = !DILocation(line: 200, column: 11, scope: !418)
!465 = !DILocation(line: 199, column: 3, scope: !418)
!466 = !DILocation(line: 201, column: 7, scope: !467)
!467 = distinct !DILexicalBlock(scope: !418, file: !2, line: 201, column: 7)
!468 = !DILocation(line: 202, column: 20, scope: !467)
!469 = !DILocation(line: 202, column: 5, scope: !467)
!470 = !DILocation(line: 203, column: 12, scope: !418)
!471 = !DILocation(line: 203, column: 3, scope: !418)
!472 = !DILocation(line: 204, column: 1, scope: !418)
!473 = distinct !DISubprogram(name: "__bswap_16", scope: !474, file: !474, line: 34, type: !475, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, retainedNodes: !89)
!474 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "98f83253ffd9c64e7486789204e9fa05")
!475 = !DISubroutineType(types: !476)
!476 = !{!111, !111}
!477 = !DILocalVariable(name: "__bsx", arg: 1, scope: !473, file: !474, line: 34, type: !111)
!478 = !DILocation(line: 34, column: 24, scope: !473)
!479 = !DILocation(line: 39, column: 31, scope: !473)
!480 = !DILocation(line: 39, column: 10, scope: !473)
!481 = !DILocation(line: 39, column: 3, scope: !473)
!482 = distinct !DISubprogram(name: "output_sysv", scope: !2, file: !2, line: 210, type: !419, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !89)
!483 = !DILocalVariable(name: "file", arg: 1, scope: !482, file: !2, line: 210, type: !421)
!484 = !DILocation(line: 210, column: 26, scope: !482)
!485 = !DILocalVariable(name: "binary_file", arg: 2, scope: !482, file: !2, line: 210, type: !23)
!486 = !DILocation(line: 210, column: 49, scope: !482)
!487 = !DILocalVariable(name: "digest", arg: 3, scope: !482, file: !2, line: 211, type: !423)
!488 = !DILocation(line: 211, column: 26, scope: !482)
!489 = !DILocalVariable(name: "raw", arg: 4, scope: !482, file: !2, line: 211, type: !109)
!490 = !DILocation(line: 211, column: 39, scope: !482)
!491 = !DILocalVariable(name: "tagged", arg: 5, scope: !482, file: !2, line: 211, type: !109)
!492 = !DILocation(line: 211, column: 62, scope: !482)
!493 = !DILocalVariable(name: "delim", arg: 6, scope: !482, file: !2, line: 212, type: !142)
!494 = !DILocation(line: 212, column: 28, scope: !482)
!495 = !DILocalVariable(name: "args", arg: 7, scope: !482, file: !2, line: 212, type: !109)
!496 = !DILocation(line: 212, column: 40, scope: !482)
!497 = !DILocalVariable(name: "length", arg: 8, scope: !482, file: !2, line: 212, type: !86)
!498 = !DILocation(line: 212, column: 55, scope: !482)
!499 = !DILocation(line: 214, column: 7, scope: !500)
!500 = distinct !DILexicalBlock(scope: !482, file: !2, line: 214, column: 7)
!501 = !DILocalVariable(name: "out_int", scope: !502, file: !2, line: 217, type: !445)
!502 = distinct !DILexicalBlock(scope: !500, file: !2, line: 215, column: 5)
!503 = !DILocation(line: 217, column: 16, scope: !502)
!504 = !DILocation(line: 217, column: 34, scope: !502)
!505 = !DILocation(line: 217, column: 26, scope: !502)
!506 = !DILocation(line: 218, column: 26, scope: !502)
!507 = !DILocation(line: 218, column: 17, scope: !502)
!508 = !DILocation(line: 218, column: 15, scope: !502)
!509 = !DILocation(line: 219, column: 34, scope: !502)
!510 = !DILocation(line: 219, column: 7, scope: !502)
!511 = !DILocation(line: 220, column: 7, scope: !502)
!512 = !DILocalVariable(name: "hbuf", scope: !482, file: !2, line: 223, type: !456)
!513 = !DILocation(line: 223, column: 8, scope: !482)
!514 = !DILocation(line: 224, column: 28, scope: !482)
!515 = !DILocation(line: 224, column: 20, scope: !482)
!516 = !DILocation(line: 225, column: 27, scope: !482)
!517 = !DILocation(line: 225, column: 35, scope: !482)
!518 = !DILocation(line: 225, column: 11, scope: !482)
!519 = !DILocation(line: 224, column: 3, scope: !482)
!520 = !DILocation(line: 226, column: 7, scope: !521)
!521 = distinct !DILexicalBlock(scope: !482, file: !2, line: 226, column: 7)
!522 = !DILocation(line: 227, column: 20, scope: !521)
!523 = !DILocation(line: 227, column: 5, scope: !521)
!524 = !DILocation(line: 228, column: 12, scope: !482)
!525 = !DILocation(line: 228, column: 3, scope: !482)
!526 = !DILocation(line: 229, column: 1, scope: !482)
