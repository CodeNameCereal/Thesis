; ModuleID = 'src/sum.c'
source_filename = "src/sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"%05d %5s\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [6 x i8] c"%d %s\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @bsd_sum_stream(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #0 !dbg !20 {
    #dbg_value(ptr %0, !90, !DIExpression(), !171)
    #dbg_value(ptr %1, !91, !DIExpression(), !171)
    #dbg_value(ptr %2, !92, !DIExpression(), !171)
    #dbg_value(i32 -1, !93, !DIExpression(), !171)
    #dbg_assign(i32 0, !97, !DIExpression(), !172, ptr poison, !DIExpression(), !171)
    #dbg_value(i64 0, !98, !DIExpression(), !171)
  %4 = tail call noalias dereferenceable_or_null(32768) ptr @malloc(i64 noundef 32768) #11, !dbg !173
    #dbg_value(ptr %4, !99, !DIExpression(), !171)
  %5 = icmp eq ptr %4, null, !dbg !174
  br i1 %5, label %112, label %6, !dbg !176

6:                                                ; preds = %3, %36
  %7 = phi i32 [ %59, %36 ], [ 0, %3 ]
  %8 = phi i64 [ %39, %36 ], [ 0, %3 ], !dbg !171
    #dbg_value(i64 %8, !98, !DIExpression(), !171)
    #dbg_value(i64 0, !94, !DIExpression(), !171)
  br label %9, !dbg !177

9:                                                ; preds = %22, %6
  %10 = phi i64 [ 0, %6 ], [ %20, %22 ], !dbg !178
    #dbg_value(i64 %10, !94, !DIExpression(), !171)
  %11 = getelementptr inbounds i8, ptr %4, i64 %10, !dbg !179
  %12 = sub nsw i64 32768, %10, !dbg !180
  %13 = tail call i64 @fread_unlocked(ptr noundef nonnull %11, i64 noundef 1, i64 noundef %12, ptr noundef %0), !dbg !181
    #dbg_value(i64 %13, !105, !DIExpression(), !182)
  %14 = icmp eq i64 %13, 0, !dbg !183
  br i1 %14, label %15, label %19, !dbg !185

15:                                               ; preds = %9
    #dbg_value(ptr %0, !186, !DIExpression(), !192)
  %16 = load i32, ptr %0, align 8, !dbg !196, !tbaa !197
  %17 = and i32 %16, 32, !dbg !207
  %18 = icmp eq i32 %17, 0, !dbg !207
  br i1 %18, label %26, label %110, !dbg !208

19:                                               ; preds = %9
  %20 = add i64 %13, %10, !dbg !209
    #dbg_value(i64 %20, !94, !DIExpression(), !171)
  %21 = icmp eq i64 %20, 32768, !dbg !210
  br i1 %21, label %40, label %22, !dbg !212

22:                                               ; preds = %19
    #dbg_value(ptr %0, !213, !DIExpression(), !216)
  %23 = load i32, ptr %0, align 8, !dbg !219, !tbaa !197
  %24 = and i32 %23, 16, !dbg !220
  %25 = icmp eq i32 %24, 0, !dbg !220
  br i1 %25, label %9, label %26, !dbg !221

26:                                               ; preds = %22, %15
  %27 = phi i64 [ %10, %15 ], [ %20, %22 ]
    #dbg_value(i64 %27, !94, !DIExpression(), !171)
    #dbg_value(i64 0, !111, !DIExpression(), !222)
  %28 = icmp sgt i64 %27, 0, !dbg !223
  br i1 %28, label %29, label %78, !dbg !225

29:                                               ; preds = %26
  %30 = add i64 %13, -1, !dbg !226
  %31 = and i64 %27, 1, !dbg !226
  %32 = sub i64 0, %10, !dbg !226
  %33 = icmp eq i64 %30, %32, !dbg !226
  br i1 %33, label %66, label %34, !dbg !226

34:                                               ; preds = %29
  %35 = and i64 %27, 9223372036854775806, !dbg !226
  br label %82, !dbg !226

36:                                               ; preds = %40
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %8, i64 32768), !dbg !227
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !229
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !227
    #dbg_value(i64 %39, !98, !DIExpression(), !171)
  br i1 %38, label %62, label %6, !dbg !230

40:                                               ; preds = %19, %40
  %41 = phi i64 [ %60, %40 ], [ 0, %19 ]
  %42 = phi i32 [ %59, %40 ], [ %7, %19 ]
    #dbg_value(i64 %41, !108, !DIExpression(), !231)
  %43 = lshr i32 %42, 1, !dbg !232
  %44 = shl nuw nsw i32 %42, 15, !dbg !235
  %45 = or i32 %44, %43, !dbg !236
    #dbg_assign(!DIArgList(i32 %44, i32 %43), !97, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !237, ptr poison, !DIExpression(), !171)
  %46 = getelementptr inbounds nuw i8, ptr %4, i64 %41, !dbg !238
  %47 = load i8, ptr %46, align 1, !dbg !238, !tbaa !239
  %48 = zext i8 %47 to i32, !dbg !238
  %49 = add nuw i32 %45, %48, !dbg !240
    #dbg_assign(!DIArgList(i32 %45, i32 %48), !97, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !241, ptr poison, !DIExpression(), !171)
  %50 = and i32 %49, 65535, !dbg !242
    #dbg_assign(i32 %50, !97, !DIExpression(), !237, ptr poison, !DIExpression(), !171)
    #dbg_value(i64 %41, !108, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !231)
  %51 = lshr i32 %50, 1, !dbg !232
  %52 = shl nuw nsw i32 %50, 15, !dbg !235
  %53 = or disjoint i32 %52, %51, !dbg !243
    #dbg_assign(!DIArgList(i32 %52, i32 %51), !97, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !237, ptr poison, !DIExpression(), !171)
  %54 = getelementptr inbounds nuw i8, ptr %4, i64 %41, !dbg !238
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 1, !dbg !238
  %56 = load i8, ptr %55, align 1, !dbg !238, !tbaa !239
  %57 = zext i8 %56 to i32, !dbg !238
  %58 = add nuw i32 %53, %57, !dbg !244
    #dbg_assign(!DIArgList(i32 %53, i32 %57), !97, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !241, ptr poison, !DIExpression(), !171)
  %59 = and i32 %58, 65535, !dbg !245
    #dbg_assign(i32 %59, !97, !DIExpression(), !237, ptr poison, !DIExpression(), !171)
  %60 = add nuw nsw i64 %41, 2, !dbg !246
    #dbg_value(i64 %60, !108, !DIExpression(), !231)
  %61 = icmp eq i64 %60, 32768, !dbg !247
  br i1 %61, label %36, label %40, !dbg !248, !llvm.loop !249

62:                                               ; preds = %36
  %63 = tail call ptr @__errno_location() #12, !dbg !253
  store i32 75, ptr %63, align 4, !dbg !255, !tbaa !167
  br label %110, !dbg !256

64:                                               ; preds = %82
  %65 = icmp eq i64 %31, 0, !dbg !226
  br i1 %65, label %78, label %66, !dbg !226

66:                                               ; preds = %64, %29
  %67 = phi i64 [ 0, %29 ], [ %103, %64 ]
  %68 = phi i32 [ %7, %29 ], [ %102, %64 ]
  %69 = icmp ne i64 %31, 0, !dbg !257
  tail call void @llvm.assume(i1 %69), !dbg !257
    #dbg_value(i64 %67, !111, !DIExpression(), !222)
  %70 = lshr i32 %68, 1, !dbg !258
  %71 = shl nuw nsw i32 %68, 15, !dbg !260
  %72 = add nuw nsw i32 %71, %70, !dbg !261
    #dbg_value(i32 poison, !97, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32768, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !171)
  %73 = getelementptr inbounds nuw i8, ptr %4, i64 %67, !dbg !262
  %74 = load i8, ptr %73, align 1, !dbg !262, !tbaa !239
  %75 = zext i8 %74 to i32, !dbg !262
  %76 = add nuw i32 %72, %75, !dbg !263
    #dbg_assign(!DIArgList(i32 %71, i32 %75, i32 %70), !97, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !264, ptr poison, !DIExpression(), !171)
  %77 = and i32 %76, 65535, !dbg !265
    #dbg_value(i32 %79, !97, !DIExpression(), !171)
    #dbg_value(i64 %67, !111, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !222)
  br label %78, !dbg !266

78:                                               ; preds = %66, %64, %26
  %79 = phi i32 [ %7, %26 ], [ %102, %64 ], [ %77, %66 ]
  %80 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %8, i64 %27), !dbg !267
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !269
    #dbg_value(i64 poison, !98, !DIExpression(), !171)
  br i1 %81, label %106, label %108, !dbg !270

82:                                               ; preds = %82, %34
  %83 = phi i64 [ 0, %34 ], [ %103, %82 ]
  %84 = phi i32 [ %7, %34 ], [ %102, %82 ]
  %85 = phi i64 [ 0, %34 ], [ %104, %82 ]
    #dbg_value(i64 %83, !111, !DIExpression(), !222)
  %86 = lshr i32 %84, 1, !dbg !258
  %87 = shl nuw nsw i32 %84, 15, !dbg !260
  %88 = add nuw nsw i32 %87, %86, !dbg !271
    #dbg_value(i32 poison, !97, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32768, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !171)
  %89 = getelementptr inbounds nuw i8, ptr %4, i64 %83, !dbg !262
  %90 = load i8, ptr %89, align 1, !dbg !262, !tbaa !239
  %91 = zext i8 %90 to i32, !dbg !262
  %92 = add nuw i32 %88, %91, !dbg !272
    #dbg_assign(!DIArgList(i32 %87, i32 %91, i32 %86), !97, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !264, ptr poison, !DIExpression(), !171)
  %93 = and i32 %92, 65535, !dbg !273
    #dbg_value(i32 %79, !97, !DIExpression(), !171)
    #dbg_value(i64 %83, !111, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !222)
  %94 = lshr i32 %93, 1, !dbg !258
  %95 = shl nuw nsw i32 %93, 15, !dbg !260
  %96 = or disjoint i32 %95, %94, !dbg !274
    #dbg_value(i32 poison, !97, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32768, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !171)
  %97 = getelementptr inbounds nuw i8, ptr %4, i64 %83, !dbg !262
  %98 = getelementptr inbounds nuw i8, ptr %97, i64 1, !dbg !262
  %99 = load i8, ptr %98, align 1, !dbg !262, !tbaa !239
  %100 = zext i8 %99 to i32, !dbg !262
  %101 = add nuw i32 %96, %100, !dbg !275
    #dbg_assign(!DIArgList(i32 %95, i32 %100, i32 %94), !97, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !264, ptr poison, !DIExpression(), !171)
  %102 = and i32 %101, 65535, !dbg !276
    #dbg_value(i32 %79, !97, !DIExpression(), !171)
  %103 = add nuw nsw i64 %83, 2, !dbg !277
    #dbg_value(i64 %103, !111, !DIExpression(), !222)
  %104 = add i64 %85, 2, !dbg !278
  %105 = icmp eq i64 %104, %35, !dbg !278
  br i1 %105, label %64, label %82, !dbg !278, !llvm.loop !279

106:                                              ; preds = %78
  %107 = tail call ptr @__errno_location() #12, !dbg !281
  store i32 75, ptr %107, align 4, !dbg !283, !tbaa !167
  br label %110, !dbg !284

108:                                              ; preds = %78
  %109 = extractvalue { i64, i1 } %80, 0, !dbg !267
    #dbg_value(i64 %109, !98, !DIExpression(), !171)
    #dbg_value(ptr %1, !285, !DIExpression(), !297)
    #dbg_value(ptr poison, !295, !DIExpression(), !297)
    #dbg_value(i64 4, !296, !DIExpression(), !297)
  store i32 %79, ptr %1, align 1, !dbg !299
  store i64 %109, ptr %2, align 8, !dbg !300, !tbaa !301
    #dbg_value(i32 0, !93, !DIExpression(), !171)
  br label %110, !dbg !302

110:                                              ; preds = %15, %108, %106, %62
  %111 = phi i32 [ -1, %62 ], [ -1, %106 ], [ 0, %108 ], [ -1, %15 ], !dbg !171
    #dbg_value(i32 %111, !93, !DIExpression(), !171)
    #dbg_label(!113, !303)
  tail call void @free(ptr noundef %4) #13, !dbg !304
  br label %112, !dbg !305

112:                                              ; preds = %3, %110
  %113 = phi i32 [ -1, %3 ], [ %111, %110 ]
  ret i32 %113, !dbg !306
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !307 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !311 ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !315 void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @sysv_sum_stream(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #0 !dbg !118 {
    #dbg_assign(i1 poison, !137, !DIExpression(), !318, ptr poison, !DIExpression(), !319)
    #dbg_value(ptr %0, !120, !DIExpression(), !319)
    #dbg_value(ptr %1, !121, !DIExpression(), !319)
    #dbg_value(ptr %2, !122, !DIExpression(), !319)
    #dbg_value(i32 -1, !123, !DIExpression(), !319)
    #dbg_value(i64 0, !125, !DIExpression(), !319)
  %4 = tail call noalias dereferenceable_or_null(32768) ptr @malloc(i64 noundef 32768) #11, !dbg !320
    #dbg_value(ptr %4, !126, !DIExpression(), !319)
  %5 = icmp eq ptr %4, null, !dbg !321
  br i1 %5, label %109, label %6, !dbg !323

6:                                                ; preds = %3, %80
  %7 = phi i64 [ %83, %80 ], [ 0, %3 ], !dbg !319
  %8 = phi i32 [ %82, %80 ], [ 0, %3 ], !dbg !324
    #dbg_value(i32 %8, !127, !DIExpression(), !319)
    #dbg_value(i64 %7, !125, !DIExpression(), !319)
    #dbg_value(i64 0, !124, !DIExpression(), !319)
  br label %9, !dbg !325

9:                                                ; preds = %47, %6
  %10 = phi i64 [ 0, %6 ], [ %20, %47 ], !dbg !326
    #dbg_value(i64 %10, !124, !DIExpression(), !319)
  %11 = getelementptr inbounds i8, ptr %4, i64 %10, !dbg !327
  %12 = sub nsw i64 32768, %10, !dbg !328
  %13 = tail call i64 @fread_unlocked(ptr noundef nonnull %11, i64 noundef 1, i64 noundef %12, ptr noundef %0), !dbg !329
    #dbg_value(i64 %13, !128, !DIExpression(), !330)
  %14 = icmp eq i64 %13, 0, !dbg !331
  br i1 %14, label %15, label %19, !dbg !333

15:                                               ; preds = %9
    #dbg_value(ptr %0, !186, !DIExpression(), !334)
  %16 = load i32, ptr %0, align 8, !dbg !338, !tbaa !197
  %17 = and i32 %16, 32, !dbg !339
  %18 = icmp eq i32 %17, 0, !dbg !339
  br i1 %18, label %51, label %107, !dbg !340

19:                                               ; preds = %9
  %20 = add i64 %13, %10, !dbg !341
    #dbg_value(i64 %20, !124, !DIExpression(), !319)
  %21 = icmp eq i64 %20, 32768, !dbg !342
  br i1 %21, label %22, label %47, !dbg !344

22:                                               ; preds = %19
  %23 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %8, i64 0
  br label %24, !dbg !345

24:                                               ; preds = %24, %22
  %25 = phi i64 [ 0, %22 ], [ %45, %24 ], !dbg !346
  %26 = phi <4 x i32> [ %23, %22 ], [ %43, %24 ]
  %27 = phi <4 x i32> [ zeroinitializer, %22 ], [ %44, %24 ]
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 %25, !dbg !348
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 4, !dbg !348
  %30 = load <4 x i8>, ptr %28, align 1, !dbg !348, !tbaa !239
  %31 = load <4 x i8>, ptr %29, align 1, !dbg !348, !tbaa !239
  %32 = zext <4 x i8> %30 to <4 x i32>, !dbg !348
  %33 = zext <4 x i8> %31 to <4 x i32>, !dbg !348
  %34 = add <4 x i32> %26, %32, !dbg !349
  %35 = add <4 x i32> %27, %33, !dbg !349
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 %25, !dbg !348
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 8, !dbg !348
  %38 = getelementptr inbounds nuw i8, ptr %36, i64 12, !dbg !348
  %39 = load <4 x i8>, ptr %37, align 1, !dbg !348, !tbaa !239
  %40 = load <4 x i8>, ptr %38, align 1, !dbg !348, !tbaa !239
  %41 = zext <4 x i8> %39 to <4 x i32>, !dbg !348
  %42 = zext <4 x i8> %40 to <4 x i32>, !dbg !348
  %43 = add <4 x i32> %34, %41, !dbg !350
  %44 = add <4 x i32> %35, %42, !dbg !350
  %45 = add nuw nsw i64 %25, 16, !dbg !351
  %46 = icmp eq i64 %45, 32768, !dbg !352
  br i1 %46, label %80, label %24, !dbg !352, !llvm.loop !353

47:                                               ; preds = %19
    #dbg_value(ptr %0, !213, !DIExpression(), !356)
  %48 = load i32, ptr %0, align 8, !dbg !359, !tbaa !197
  %49 = and i32 %48, 16, !dbg !360
  %50 = icmp eq i32 %49, 0, !dbg !360
  br i1 %50, label %9, label %51, !dbg !361

51:                                               ; preds = %47, %15
  %52 = phi i64 [ %10, %15 ], [ %20, %47 ]
    #dbg_value(i64 %52, !124, !DIExpression(), !319)
    #dbg_value(i64 0, !134, !DIExpression(), !362)
    #dbg_value(i32 %8, !127, !DIExpression(), !319)
  %53 = icmp eq i64 %52, 0, !dbg !363
  br i1 %53, label %98, label %54, !dbg !365

54:                                               ; preds = %51
  %55 = icmp ult i64 %52, 8, !dbg !366
  br i1 %55, label %77, label %56, !dbg !366

56:                                               ; preds = %54
  %57 = and i64 %52, -8
  %58 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %8, i64 0
  br label %59, !dbg !366

59:                                               ; preds = %59, %56
  %60 = phi i64 [ 0, %56 ], [ %71, %59 ], !dbg !367
  %61 = phi <4 x i32> [ %58, %56 ], [ %69, %59 ]
  %62 = phi <4 x i32> [ zeroinitializer, %56 ], [ %70, %59 ]
  %63 = getelementptr inbounds nuw i8, ptr %4, i64 %60, !dbg !368
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 4, !dbg !368
  %65 = load <4 x i8>, ptr %63, align 1, !dbg !368, !tbaa !239
  %66 = load <4 x i8>, ptr %64, align 1, !dbg !368, !tbaa !239
  %67 = zext <4 x i8> %65 to <4 x i32>, !dbg !368
  %68 = zext <4 x i8> %66 to <4 x i32>, !dbg !368
  %69 = add <4 x i32> %61, %67, !dbg !369
  %70 = add <4 x i32> %62, %68, !dbg !369
  %71 = add nuw i64 %60, 8, !dbg !367
  %72 = icmp eq i64 %71, %57, !dbg !370
  br i1 %72, label %73, label %59, !dbg !370, !llvm.loop !371

73:                                               ; preds = %59
  %74 = add <4 x i32> %70, %69, !dbg !370
  %75 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %74), !dbg !370
  %76 = icmp eq i64 %52, %57, !dbg !370
  br i1 %76, label %84, label %77, !dbg !370

77:                                               ; preds = %54, %73
  %78 = phi i64 [ 0, %54 ], [ %57, %73 ]
  %79 = phi i32 [ %8, %54 ], [ %75, %73 ]
  br label %87, !dbg !370

80:                                               ; preds = %24
  %81 = add <4 x i32> %44, %43, !dbg !372
  %82 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %81), !dbg !372
  %83 = add nuw nsw i64 %7, 32768, !dbg !373
    #dbg_value(i64 %83, !125, !DIExpression(), !319)
  br label %6, !dbg !375, !llvm.loop !376

84:                                               ; preds = %87, %73
  %85 = phi i32 [ %75, %73 ], [ %93, %87 ], !dbg !369
  %86 = icmp slt i64 %52, 0, !dbg !379
  br i1 %86, label %96, label %98, !dbg !381

87:                                               ; preds = %77, %87
  %88 = phi i64 [ %94, %87 ], [ %78, %77 ]
  %89 = phi i32 [ %93, %87 ], [ %79, %77 ]
    #dbg_value(i64 %88, !134, !DIExpression(), !362)
    #dbg_value(i32 %89, !127, !DIExpression(), !319)
  %90 = getelementptr inbounds nuw i8, ptr %4, i64 %88, !dbg !368
  %91 = load i8, ptr %90, align 1, !dbg !368, !tbaa !239
  %92 = zext i8 %91 to i32, !dbg !368
  %93 = add i32 %89, %92, !dbg !369
    #dbg_value(i32 %93, !127, !DIExpression(), !319)
  %94 = add nuw i64 %88, 1, !dbg !367
    #dbg_value(i64 %94, !134, !DIExpression(), !362)
  %95 = icmp eq i64 %94, %52, !dbg !382
  br i1 %95, label %84, label %87, !dbg !370, !llvm.loop !383

96:                                               ; preds = %84
  %97 = tail call ptr @__errno_location() #12, !dbg !384
  store i32 75, ptr %97, align 4, !dbg !386, !tbaa !167
  br label %107, !dbg !387

98:                                               ; preds = %51, %84
  %99 = phi i32 [ %85, %84 ], [ %8, %51 ]
  %100 = add nuw nsw i64 %52, %7, !dbg !388
    #dbg_value(i64 %100, !125, !DIExpression(), !319)
  %101 = and i32 %99, 65535, !dbg !389
  %102 = lshr i32 %99, 16, !dbg !390
  %103 = add nuw nsw i32 %101, %102, !dbg !391
    #dbg_value(i32 %103, !136, !DIExpression(), !319)
  %104 = and i32 %103, 65535, !dbg !392
  %105 = lshr i32 %103, 16, !dbg !393
  %106 = add nuw nsw i32 %104, %105, !dbg !394
    #dbg_assign(i32 poison, !137, !DIExpression(), !395, ptr poison, !DIExpression(), !319)
    #dbg_value(ptr %1, !285, !DIExpression(), !396)
    #dbg_value(ptr poison, !295, !DIExpression(), !396)
    #dbg_value(i64 4, !296, !DIExpression(), !396)
  store i32 %106, ptr %1, align 1, !dbg !398
  store i64 %100, ptr %2, align 8, !dbg !399, !tbaa !301
    #dbg_value(i32 0, !123, !DIExpression(), !319)
  br label %107, !dbg !400

107:                                              ; preds = %15, %98, %96
  %108 = phi i32 [ 0, %98 ], [ -1, %96 ], [ -1, %15 ], !dbg !319
    #dbg_value(i32 %108, !123, !DIExpression(), !319)
    #dbg_label(!138, !401)
  tail call void @free(ptr noundef %4) #13, !dbg !402
  br label %109

109:                                              ; preds = %3, %107
  %110 = phi i32 [ %108, %107 ], [ -1, %3 ]
  ret i32 %110, !dbg !403
}

; Function Attrs: nounwind uwtable
define dso_local void @output_bsd(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i8 noundef zeroext %5, i1 noundef zeroext %6, i64 noundef %7) local_unnamed_addr #0 !dbg !404 {
  %9 = alloca i16, align 2, !DIAssignID !428
    #dbg_assign(i1 poison, !416, !DIExpression(), !428, ptr %9, !DIExpression(), !429)
  %10 = alloca [652 x i8], align 16, !DIAssignID !430
    #dbg_assign(i1 poison, !424, !DIExpression(), !430, ptr %10, !DIExpression(), !431)
    #dbg_value(ptr %0, !408, !DIExpression(), !431)
    #dbg_value(i32 %1, !409, !DIExpression(), !431)
    #dbg_value(ptr %2, !410, !DIExpression(), !431)
    #dbg_value(i1 %3, !411, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !431)
    #dbg_value(i1 %4, !412, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !431)
    #dbg_value(i8 %5, !413, !DIExpression(), !431)
    #dbg_value(i1 %6, !414, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !431)
    #dbg_value(i64 %7, !415, !DIExpression(), !431)
  br i1 %3, label %11, label %41, !dbg !432

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13, !dbg !433
  %12 = load i32, ptr %2, align 4, !dbg !434, !tbaa !167
  %13 = trunc i32 %12 to i16, !dbg !435
    #dbg_assign(i16 %13, !416, !DIExpression(), !436, ptr %9, !DIExpression(), !429)
    #dbg_value(i16 %13, !437, !DIExpression(), !443)
  %14 = tail call noundef i16 @llvm.bswap.i16(i16 %13), !dbg !445
  store i16 %14, ptr %9, align 2, !dbg !446, !tbaa !447, !DIAssignID !448
    #dbg_assign(i16 %14, !416, !DIExpression(), !448, ptr %9, !DIExpression(), !429)
    #dbg_value(ptr %9, !420, !DIExpression(), !449)
  %15 = load ptr, ptr @stdout, align 8, !dbg !450, !tbaa !451
    #dbg_value(ptr %15, !422, !DIExpression(), !449)
    #dbg_value(i64 2, !423, !DIExpression(), !449)
    #dbg_value(ptr %9, !420, !DIExpression(), !449)
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %18 = trunc i16 %14 to i8, !dbg !452
    #dbg_value(ptr %9, !420, !DIExpression(), !449)
    #dbg_value(i64 poison, !423, !DIExpression(), !449)
    #dbg_value(ptr %9, !420, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !449)
    #dbg_value(i8 %18, !454, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !460)
    #dbg_value(ptr %15, !459, !DIExpression(), !460)
  %19 = load ptr, ptr %16, align 8, !dbg !464, !tbaa !465
  %20 = load ptr, ptr %17, align 8, !dbg !464, !tbaa !466
  %21 = icmp ult ptr %19, %20, !dbg !464
    #dbg_value(ptr %9, !420, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !449)
    #dbg_value(ptr %9, !420, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !449)
    #dbg_value(i64 poison, !423, !DIExpression(), !449)
    #dbg_value(i64 poison, !423, !DIExpression(), !449)
  br i1 %21, label %27, label %22, !dbg !467, !prof !468

22:                                               ; preds = %11
  %23 = and i16 %14, 255, !dbg !469
  %24 = zext nneg i16 %23 to i32, !dbg !469
    #dbg_value(i8 %18, !454, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !460)
  %25 = tail call i32 @__overflow(ptr noundef nonnull %15, i32 noundef %24) #13, !dbg !464
  %26 = icmp eq i32 %25, -1, !dbg !470
  br i1 %26, label %40, label %29, !dbg !471

27:                                               ; preds = %11
  %28 = getelementptr inbounds nuw i8, ptr %19, i64 1, !dbg !472
  store ptr %28, ptr %16, align 8, !dbg !473, !tbaa !465
  store i8 %18, ptr %19, align 1, !dbg !474, !tbaa !239
  br label %29, !dbg !475

29:                                               ; preds = %27, %22
  %30 = getelementptr inbounds nuw i8, ptr %9, i64 1, !dbg !476
  %31 = load i8, ptr %30, align 1, !dbg !469, !tbaa !239
  %32 = zext i8 %31 to i32
    #dbg_value(i64 poison, !423, !DIExpression(), !449)
    #dbg_value(ptr poison, !420, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !449)
    #dbg_value(i8 %31, !454, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !460)
    #dbg_value(ptr %15, !459, !DIExpression(), !460)
  %33 = load ptr, ptr %16, align 8, !dbg !464, !tbaa !465
  %34 = load ptr, ptr %17, align 8, !dbg !464, !tbaa !466
  %35 = icmp ult ptr %33, %34, !dbg !464
  br i1 %35, label %36, label %38, !dbg !477, !prof !468

36:                                               ; preds = %29
  %37 = getelementptr inbounds nuw i8, ptr %33, i64 1, !dbg !478
  store ptr %37, ptr %16, align 8, !dbg !479, !tbaa !465
  store i8 %31, ptr %33, align 1, !dbg !480, !tbaa !239
  br label %40, !dbg !481

38:                                               ; preds = %29
    #dbg_value(i8 %31, !454, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !460)
  %39 = tail call i32 @__overflow(ptr noundef nonnull %15, i32 noundef %32) #13, !dbg !464
  br label %40, !dbg !482

40:                                               ; preds = %38, %36, %22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13, !dbg !483
  br label %60

41:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13, !dbg !484
  %42 = load i32, ptr %2, align 4, !dbg !485, !tbaa !167
  %43 = call ptr @human_readable(i64 noundef %7, ptr noundef nonnull %10, i32 noundef 0, i64 noundef 1, i64 noundef 1024) #13, !dbg !486
  %44 = call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str, i32 noundef %42, ptr noundef %43) #13, !dbg !487
  br i1 %6, label %45, label %47, !dbg !488

45:                                               ; preds = %41
  %46 = call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str.1, ptr noundef %0) #13, !dbg !490
  br label %47, !dbg !490

47:                                               ; preds = %45, %41
    #dbg_value(i8 %5, !491, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !496)
  %48 = load ptr, ptr @stdout, align 8, !dbg !498, !tbaa !451
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 40, !dbg !499
  %50 = load ptr, ptr %49, align 8, !dbg !499, !tbaa !465
  %51 = getelementptr inbounds nuw i8, ptr %48, i64 48, !dbg !499
  %52 = load ptr, ptr %51, align 8, !dbg !499, !tbaa !466
  %53 = icmp ult ptr %50, %52, !dbg !499
  br i1 %53, label %57, label %54, !dbg !500, !prof !468

54:                                               ; preds = %47
  %55 = zext i8 %5 to i32, !dbg !501
    #dbg_value(i32 %55, !491, !DIExpression(), !496)
  %56 = call i32 @__overflow(ptr noundef nonnull %48, i32 noundef %55) #13, !dbg !499
  br label %59, !dbg !499

57:                                               ; preds = %47
  %58 = getelementptr inbounds nuw i8, ptr %50, i64 1, !dbg !502
  store ptr %58, ptr %49, align 8, !dbg !503, !tbaa !465
  store i8 %5, ptr %50, align 1, !dbg !504, !tbaa !239
  br label %59, !dbg !499

59:                                               ; preds = %54, %57
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13, !dbg !505
  br label %60, !dbg !505

60:                                               ; preds = %59, %40
  ret void, !dbg !506
}

declare !dbg !507 i32 @rpl_printf(ptr noundef, ...) local_unnamed_addr #7

declare !dbg !512 ptr @human_readable(i64 noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @output_sysv(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i8 noundef zeroext %5, i1 noundef zeroext %6, i64 noundef %7) local_unnamed_addr #0 !dbg !517 {
  %9 = alloca i16, align 2, !DIAssignID !535
    #dbg_assign(i1 poison, !527, !DIExpression(), !535, ptr %9, !DIExpression(), !536)
  %10 = alloca [652 x i8], align 16, !DIAssignID !537
    #dbg_assign(i1 poison, !534, !DIExpression(), !537, ptr %10, !DIExpression(), !538)
    #dbg_value(ptr %0, !519, !DIExpression(), !538)
    #dbg_value(i32 %1, !520, !DIExpression(), !538)
    #dbg_value(ptr %2, !521, !DIExpression(), !538)
    #dbg_value(i1 %3, !522, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !538)
    #dbg_value(i1 %4, !523, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !538)
    #dbg_value(i8 %5, !524, !DIExpression(), !538)
    #dbg_value(i1 %6, !525, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !538)
    #dbg_value(i64 %7, !526, !DIExpression(), !538)
  br i1 %3, label %11, label %41, !dbg !539

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13, !dbg !540
  %12 = load i32, ptr %2, align 4, !dbg !541, !tbaa !167
  %13 = trunc i32 %12 to i16, !dbg !542
    #dbg_assign(i16 %13, !527, !DIExpression(), !543, ptr %9, !DIExpression(), !536)
    #dbg_value(i16 %13, !437, !DIExpression(), !544)
  %14 = tail call noundef i16 @llvm.bswap.i16(i16 %13), !dbg !546
  store i16 %14, ptr %9, align 2, !dbg !547, !tbaa !447, !DIAssignID !548
    #dbg_assign(i16 %14, !527, !DIExpression(), !548, ptr %9, !DIExpression(), !536)
    #dbg_value(ptr %9, !530, !DIExpression(), !549)
  %15 = load ptr, ptr @stdout, align 8, !dbg !550, !tbaa !451
    #dbg_value(ptr %15, !532, !DIExpression(), !549)
    #dbg_value(i64 2, !533, !DIExpression(), !549)
    #dbg_value(ptr %9, !530, !DIExpression(), !549)
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %18 = trunc i16 %14 to i8, !dbg !551
    #dbg_value(ptr %9, !530, !DIExpression(), !549)
    #dbg_value(i64 poison, !533, !DIExpression(), !549)
    #dbg_value(ptr %9, !530, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !549)
    #dbg_value(i8 %18, !454, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !553)
    #dbg_value(ptr %15, !459, !DIExpression(), !553)
  %19 = load ptr, ptr %16, align 8, !dbg !557, !tbaa !465
  %20 = load ptr, ptr %17, align 8, !dbg !557, !tbaa !466
  %21 = icmp ult ptr %19, %20, !dbg !557
    #dbg_value(ptr %9, !530, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !549)
    #dbg_value(ptr %9, !530, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !549)
    #dbg_value(i64 poison, !533, !DIExpression(), !549)
    #dbg_value(i64 poison, !533, !DIExpression(), !549)
  br i1 %21, label %27, label %22, !dbg !558, !prof !468

22:                                               ; preds = %11
  %23 = and i16 %14, 255, !dbg !559
  %24 = zext nneg i16 %23 to i32, !dbg !559
    #dbg_value(i8 %18, !454, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !553)
  %25 = tail call i32 @__overflow(ptr noundef nonnull %15, i32 noundef %24) #13, !dbg !557
  %26 = icmp eq i32 %25, -1, !dbg !560
  br i1 %26, label %40, label %29, !dbg !561

27:                                               ; preds = %11
  %28 = getelementptr inbounds nuw i8, ptr %19, i64 1, !dbg !562
  store ptr %28, ptr %16, align 8, !dbg !563, !tbaa !465
  store i8 %18, ptr %19, align 1, !dbg !564, !tbaa !239
  br label %29, !dbg !565

29:                                               ; preds = %27, %22
  %30 = getelementptr inbounds nuw i8, ptr %9, i64 1, !dbg !566
  %31 = load i8, ptr %30, align 1, !dbg !559, !tbaa !239
  %32 = zext i8 %31 to i32
    #dbg_value(i64 poison, !533, !DIExpression(), !549)
    #dbg_value(ptr poison, !530, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !549)
    #dbg_value(i8 %31, !454, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !553)
    #dbg_value(ptr %15, !459, !DIExpression(), !553)
  %33 = load ptr, ptr %16, align 8, !dbg !557, !tbaa !465
  %34 = load ptr, ptr %17, align 8, !dbg !557, !tbaa !466
  %35 = icmp ult ptr %33, %34, !dbg !557
  br i1 %35, label %36, label %38, !dbg !567, !prof !468

36:                                               ; preds = %29
  %37 = getelementptr inbounds nuw i8, ptr %33, i64 1, !dbg !568
  store ptr %37, ptr %16, align 8, !dbg !569, !tbaa !465
  store i8 %31, ptr %33, align 1, !dbg !570, !tbaa !239
  br label %40, !dbg !571

38:                                               ; preds = %29
    #dbg_value(i8 %31, !454, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !553)
  %39 = tail call i32 @__overflow(ptr noundef nonnull %15, i32 noundef %32) #13, !dbg !557
  br label %40, !dbg !572

40:                                               ; preds = %38, %36, %22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13, !dbg !573
  br label %60

41:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13, !dbg !574
  %42 = load i32, ptr %2, align 4, !dbg !575, !tbaa !167
  %43 = call ptr @human_readable(i64 noundef %7, ptr noundef nonnull %10, i32 noundef 0, i64 noundef 1, i64 noundef 512) #13, !dbg !576
  %44 = call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str.2, i32 noundef %42, ptr noundef %43) #13, !dbg !577
  br i1 %6, label %45, label %47, !dbg !578

45:                                               ; preds = %41
  %46 = call i32 (ptr, ...) @rpl_printf(ptr noundef nonnull @.str.1, ptr noundef %0) #13, !dbg !580
  br label %47, !dbg !580

47:                                               ; preds = %45, %41
    #dbg_value(i8 %5, !491, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !581)
  %48 = load ptr, ptr @stdout, align 8, !dbg !583, !tbaa !451
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 40, !dbg !584
  %50 = load ptr, ptr %49, align 8, !dbg !584, !tbaa !465
  %51 = getelementptr inbounds nuw i8, ptr %48, i64 48, !dbg !584
  %52 = load ptr, ptr %51, align 8, !dbg !584, !tbaa !466
  %53 = icmp ult ptr %50, %52, !dbg !584
  br i1 %53, label %57, label %54, !dbg !585, !prof !468

54:                                               ; preds = %47
  %55 = zext i8 %5 to i32, !dbg !586
    #dbg_value(i32 %55, !491, !DIExpression(), !581)
  %56 = call i32 @__overflow(ptr noundef nonnull %48, i32 noundef %55) #13, !dbg !584
  br label %59, !dbg !584

57:                                               ; preds = %47
  %58 = getelementptr inbounds nuw i8, ptr %50, i64 1, !dbg !587
  store ptr %58, ptr %49, align 8, !dbg !588, !tbaa !465
  store i8 %5, ptr %50, align 1, !dbg !589, !tbaa !239
  br label %59, !dbg !584

59:                                               ; preds = %54, %57
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13, !dbg !590
  br label %60, !dbg !590

60:                                               ; preds = %59, %40
  ret void, !dbg !591
}

declare !dbg !592 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}
!llvm.errno.tbaa = !{!167}

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
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !152, globals: !158, splitDebugInlining: false, nameTableKind: None)
!18 = !{!19, !117, !139}
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !20, file: !2, line: 40, baseType: !114, size: 32, elements: !115)
!20 = distinct !DISubprogram(name: "bsd_sum_stream", scope: !2, file: !2, line: 34, type: !21, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !89, keyInstructions: true)
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
!89 = !{!90, !91, !92, !93, !94, !97, !98, !99, !105, !108, !110, !111, !113}
!90 = !DILocalVariable(name: "stream", arg: 1, scope: !20, file: !2, line: 34, type: !24)
!91 = !DILocalVariable(name: "resstream", arg: 2, scope: !20, file: !2, line: 34, type: !75)
!92 = !DILocalVariable(name: "length", arg: 3, scope: !20, file: !2, line: 34, type: !85)
!93 = !DILocalVariable(name: "ret", scope: !20, file: !2, line: 36, type: !23)
!94 = !DILocalVariable(name: "sum", scope: !20, file: !2, line: 37, type: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !96, line: 137, baseType: !53)
!96 = !DIFile(filename: "./lib/idx.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "a342c053ede588630cf36a09403114d3")
!97 = !DILocalVariable(name: "checksum", scope: !20, file: !2, line: 38, type: !23)
!98 = !DILocalVariable(name: "total_bytes", scope: !20, file: !2, line: 39, type: !86)
!99 = !DILocalVariable(name: "buffer", scope: !20, file: !2, line: 41, type: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !102, line: 24, baseType: !103)
!102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !52, line: 38, baseType: !104)
!104 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!105 = !DILocalVariable(name: "n", scope: !106, file: !2, line: 54, type: !77)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 53, column: 5)
!107 = distinct !DILexicalBlock(scope: !20, file: !2, line: 48, column: 3)
!108 = !DILocalVariable(name: "i", scope: !109, file: !2, line: 71, type: !77)
!109 = distinct !DILexicalBlock(scope: !107, file: !2, line: 71, column: 5)
!110 = !DILabel(scope: !20, name: "final_process", file: !2, line: 84, column: 1)
!111 = !DILocalVariable(name: "i", scope: !112, file: !2, line: 86, type: !95)
!112 = distinct !DILexicalBlock(scope: !20, file: !2, line: 86, column: 3)
!113 = !DILabel(scope: !20, name: "cleanup_buffer", file: !2, line: 101, column: 1)
!114 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!115 = !{!116}
!116 = !DIEnumerator(name: "buffer_length", value: 32768)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !118, file: !2, line: 115, baseType: !114, size: 32, elements: !115)
!118 = distinct !DISubprogram(name: "sysv_sum_stream", scope: !2, file: !2, line: 110, type: !21, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !119, keyInstructions: true)
!119 = !{!120, !121, !122, !123, !124, !125, !126, !127, !128, !131, !133, !134, !136, !137, !138}
!120 = !DILocalVariable(name: "stream", arg: 1, scope: !118, file: !2, line: 110, type: !24)
!121 = !DILocalVariable(name: "resstream", arg: 2, scope: !118, file: !2, line: 110, type: !75)
!122 = !DILocalVariable(name: "length", arg: 3, scope: !118, file: !2, line: 110, type: !85)
!123 = !DILocalVariable(name: "ret", scope: !118, file: !2, line: 112, type: !23)
!124 = !DILocalVariable(name: "sum", scope: !118, file: !2, line: 113, type: !95)
!125 = !DILocalVariable(name: "total_bytes", scope: !118, file: !2, line: 114, type: !86)
!126 = !DILocalVariable(name: "buffer", scope: !118, file: !2, line: 116, type: !100)
!127 = !DILocalVariable(name: "s", scope: !118, file: !2, line: 122, type: !114)
!128 = !DILocalVariable(name: "n", scope: !129, file: !2, line: 132, type: !77)
!129 = distinct !DILexicalBlock(scope: !130, file: !2, line: 131, column: 5)
!130 = distinct !DILexicalBlock(scope: !118, file: !2, line: 126, column: 3)
!131 = !DILocalVariable(name: "i", scope: !132, file: !2, line: 149, type: !77)
!132 = distinct !DILexicalBlock(scope: !130, file: !2, line: 149, column: 5)
!133 = !DILabel(scope: !118, name: "final_process", file: !2, line: 159, column: 1)
!134 = !DILocalVariable(name: "i", scope: !135, file: !2, line: 161, type: !77)
!135 = distinct !DILexicalBlock(scope: !118, file: !2, line: 161, column: 3)
!136 = !DILocalVariable(name: "r", scope: !118, file: !2, line: 170, type: !23)
!137 = !DILocalVariable(name: "checksum", scope: !118, file: !2, line: 171, type: !23)
!138 = !DILabel(scope: !118, name: "cleanup_buffer", file: !2, line: 176, column: 1)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !140, line: 47, baseType: !114, size: 32, elements: !141)
!140 = !DIFile(filename: "./lib/human.h", directory: "/workspaces/Thesis/.build/coreutils", checksumkind: CSK_MD5, checksum: "54b947176626bd627e1f54ed62821590")
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151}
!142 = !DIEnumerator(name: "human_ceiling", value: 0)
!143 = !DIEnumerator(name: "human_round_to_nearest", value: 1)
!144 = !DIEnumerator(name: "human_floor", value: 2)
!145 = !DIEnumerator(name: "human_group_digits", value: 4)
!146 = !DIEnumerator(name: "human_suppress_point_zero", value: 8)
!147 = !DIEnumerator(name: "human_autoscale", value: 16)
!148 = !DIEnumerator(name: "human_base_1024", value: 32)
!149 = !DIEnumerator(name: "human_space_before_unit", value: 64)
!150 = !DIEnumerator(name: "human_SI", value: 128)
!151 = !DIEnumerator(name: "human_B", value: 256)
!152 = !{!153, !154, !155, !77, !157, !104}
!153 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !52, line: 40, baseType: !55)
!158 = !{!0, !7, !12}
!159 = !{i32 7, !"Dwarf Version", i32 5}
!160 = !{i32 2, !"Debug Info Version", i32 3}
!161 = !{i32 1, !"wchar_size", i32 4}
!162 = !{i32 8, !"PIC Level", i32 2}
!163 = !{i32 7, !"PIE Level", i32 2}
!164 = !{i32 7, !"uwtable", i32 2}
!165 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!166 = !{!"Ubuntu clang version 22.1.8 (++20260613092327+e80beda6e255-1~exp1~20260613092437.81)"}
!167 = !{!168, !168, i64 0}
!168 = !{!"int", !169, i64 0}
!169 = !{!"omnipotent char", !170, i64 0}
!170 = !{!"Simple C/C++ TBAA"}
!171 = !DILocation(line: 0, scope: !20)
!172 = distinct !DIAssignID()
!173 = !DILocation(line: 41, column: 21, scope: !20, atomGroup: 4, atomRank: 2)
!174 = !DILocation(line: 43, column: 9, scope: !175, atomGroup: 5, atomRank: 2)
!175 = distinct !DILexicalBlock(scope: !20, file: !2, line: 43, column: 7)
!176 = !DILocation(line: 43, column: 7, scope: !175, atomGroup: 5, atomRank: 1)
!177 = !DILocation(line: 52, column: 5, scope: !107)
!178 = !DILocation(line: 49, column: 9, scope: !107, atomGroup: 7, atomRank: 1)
!179 = !DILocation(line: 54, column: 32, scope: !106)
!180 = !DILocation(line: 54, column: 56, scope: !106)
!181 = !DILocation(line: 54, column: 18, scope: !106, atomGroup: 8, atomRank: 2)
!182 = !DILocation(line: 0, scope: !106)
!183 = !DILocation(line: 55, column: 13, scope: !184, atomGroup: 9, atomRank: 2)
!184 = distinct !DILexicalBlock(scope: !106, file: !2, line: 55, column: 11)
!185 = !DILocation(line: 55, column: 13, scope: !184, atomGroup: 9, atomRank: 1)
!186 = !DILocalVariable(name: "__stream", arg: 1, scope: !187, file: !188, line: 135, type: !24)
!187 = distinct !DISubprogram(name: "ferror_unlocked", scope: !188, file: !188, line: 135, type: !189, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !191, keyInstructions: true)
!188 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!189 = !DISubroutineType(types: !190)
!190 = !{!23, !24}
!191 = !{!186}
!192 = !DILocation(line: 0, scope: !187, inlinedAt: !193)
!193 = distinct !DILocation(line: 57, column: 15, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !2, line: 57, column: 15)
!195 = distinct !DILexicalBlock(scope: !184, file: !2, line: 56, column: 9)
!196 = !DILocation(line: 137, column: 10, scope: !187, inlinedAt: !193)
!197 = !{!198, !168, i64 0}
!198 = !{!"_IO_FILE", !168, i64 0, !199, i64 8, !199, i64 16, !199, i64 24, !199, i64 32, !199, i64 40, !199, i64 48, !199, i64 56, !199, i64 64, !199, i64 72, !199, i64 80, !199, i64 88, !201, i64 96, !202, i64 104, !168, i64 112, !168, i64 116, !203, i64 120, !204, i64 128, !169, i64 130, !169, i64 131, !200, i64 136, !203, i64 144, !205, i64 152, !206, i64 160, !202, i64 168, !200, i64 176, !203, i64 184, !168, i64 192, !169, i64 196}
!199 = !{!"p1 omnipotent char", !200, i64 0}
!200 = !{!"any pointer", !169, i64 0}
!201 = !{!"p1 _ZTS10_IO_marker", !200, i64 0}
!202 = !{!"p1 _ZTS8_IO_FILE", !200, i64 0}
!203 = !{!"long", !169, i64 0}
!204 = !{!"short", !169, i64 0}
!205 = !{!"p1 _ZTS11_IO_codecvt", !200, i64 0}
!206 = !{!"p1 _ZTS13_IO_wide_data", !200, i64 0}
!207 = !DILocation(line: 57, column: 15, scope: !194, atomGroup: 10, atomRank: 2)
!208 = !DILocation(line: 0, scope: !195)
!209 = !DILocation(line: 62, column: 11, scope: !106, atomGroup: 13, atomRank: 2)
!210 = !DILocation(line: 64, column: 25, scope: !211, atomGroup: 14, atomRank: 2)
!211 = distinct !DILexicalBlock(scope: !106, file: !2, line: 64, column: 11)
!212 = !DILocation(line: 64, column: 25, scope: !211, atomGroup: 14, atomRank: 1)
!213 = !DILocalVariable(name: "__stream", arg: 1, scope: !214, file: !188, line: 128, type: !24)
!214 = distinct !DISubprogram(name: "feof_unlocked", scope: !188, file: !188, line: 128, type: !189, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !215, keyInstructions: true)
!215 = !{!213}
!216 = !DILocation(line: 0, scope: !214, inlinedAt: !217)
!217 = distinct !DILocation(line: 67, column: 11, scope: !218)
!218 = distinct !DILexicalBlock(scope: !106, file: !2, line: 67, column: 11)
!219 = !DILocation(line: 130, column: 10, scope: !214, inlinedAt: !217)
!220 = !DILocation(line: 67, column: 11, scope: !218, atomGroup: 16, atomRank: 2)
!221 = !DILocation(line: 0, scope: !107)
!222 = !DILocation(line: 0, scope: !112)
!223 = !DILocation(line: 86, column: 23, scope: !224, atomGroup: 46, atomRank: 1)
!224 = distinct !DILexicalBlock(scope: !112, file: !2, line: 86, column: 3)
!225 = !DILocation(line: 86, column: 3, scope: !112, atomGroup: 47, atomRank: 1)
!226 = !DILocation(line: 86, column: 3, scope: !112)
!227 = !DILocation(line: 77, column: 9, scope: !228)
!228 = distinct !DILexicalBlock(scope: !107, file: !2, line: 77, column: 9)
!229 = !DILocation(line: 77, column: 9, scope: !228, atomGroup: 26, atomRank: 2)
!230 = !DILocation(line: 77, column: 9, scope: !228, atomGroup: 26, atomRank: 1)
!231 = !DILocation(line: 0, scope: !109)
!232 = !DILocation(line: 73, column: 30, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !2, line: 72, column: 7)
!234 = distinct !DILexicalBlock(scope: !109, file: !2, line: 71, column: 5)
!235 = !DILocation(line: 73, column: 54, scope: !233)
!236 = !DILocation(line: 73, column: 36, scope: !233, atomGroup: 21, atomRank: 2)
!237 = distinct !DIAssignID()
!238 = !DILocation(line: 74, column: 21, scope: !233)
!239 = !{!169, !169, i64 0}
!240 = !DILocation(line: 74, column: 18, scope: !233, atomGroup: 22, atomRank: 2)
!241 = distinct !DIAssignID()
!242 = !DILocation(line: 75, column: 18, scope: !233, atomGroup: 23, atomRank: 2)
!243 = !DILocation(line: 73, column: 36, scope: !233, atomGroup: 63, atomRank: 2)
!244 = !DILocation(line: 74, column: 18, scope: !233, atomGroup: 64, atomRank: 2)
!245 = !DILocation(line: 75, column: 18, scope: !233, atomGroup: 65, atomRank: 2)
!246 = !DILocation(line: 71, column: 34, scope: !234, atomGroup: 66, atomRank: 2)
!247 = !DILocation(line: 71, column: 26, scope: !234, atomGroup: 67, atomRank: 1)
!248 = !DILocation(line: 71, column: 5, scope: !109, atomGroup: 68, atomRank: 1)
!249 = distinct !{!249, !250, !251, !252}
!250 = !DILocation(line: 71, column: 5, scope: !109)
!251 = !DILocation(line: 76, column: 7, scope: !109)
!252 = !{!"llvm.loop.mustprogress"}
!253 = !DILocation(line: 79, column: 9, scope: !254)
!254 = distinct !DILexicalBlock(scope: !228, file: !2, line: 78, column: 7)
!255 = !DILocation(line: 79, column: 15, scope: !254, atomGroup: 27, atomRank: 1)
!256 = !DILocation(line: 80, column: 9, scope: !254, atomGroup: 28, atomRank: 1)
!257 = !DILocation(line: 86, column: 3, scope: !112, atomGroup: 31, atomRank: 1)
!258 = !DILocation(line: 88, column: 28, scope: !259)
!259 = distinct !DILexicalBlock(scope: !224, file: !2, line: 87, column: 5)
!260 = !DILocation(line: 88, column: 52, scope: !259)
!261 = !DILocation(line: 88, column: 34, scope: !259, atomGroup: 69, atomRank: 2)
!262 = !DILocation(line: 89, column: 19, scope: !259)
!263 = !DILocation(line: 89, column: 16, scope: !259, atomGroup: 70, atomRank: 2)
!264 = distinct !DIAssignID()
!265 = !DILocation(line: 90, column: 16, scope: !259, atomGroup: 71, atomRank: 2)
!266 = !DILocation(line: 0, scope: !259)
!267 = !DILocation(line: 92, column: 7, scope: !268)
!268 = distinct !DILexicalBlock(scope: !20, file: !2, line: 92, column: 7)
!269 = !DILocation(line: 92, column: 7, scope: !268, atomGroup: 37, atomRank: 2)
!270 = !DILocation(line: 92, column: 7, scope: !268, atomGroup: 37, atomRank: 1)
!271 = !DILocation(line: 88, column: 34, scope: !259, atomGroup: 32, atomRank: 2)
!272 = !DILocation(line: 89, column: 16, scope: !259, atomGroup: 33, atomRank: 2)
!273 = !DILocation(line: 90, column: 16, scope: !259, atomGroup: 34, atomRank: 2)
!274 = !DILocation(line: 88, column: 34, scope: !259, atomGroup: 75, atomRank: 2)
!275 = !DILocation(line: 89, column: 16, scope: !259, atomGroup: 76, atomRank: 2)
!276 = !DILocation(line: 90, column: 16, scope: !259, atomGroup: 77, atomRank: 2)
!277 = !DILocation(line: 86, column: 31, scope: !224, atomGroup: 78, atomRank: 2)
!278 = !DILocation(line: 86, column: 3, scope: !112, atomGroup: 80, atomRank: 1)
!279 = distinct !{!279, !226, !280, !252}
!280 = !DILocation(line: 91, column: 5, scope: !112)
!281 = !DILocation(line: 94, column: 7, scope: !282)
!282 = distinct !DILexicalBlock(scope: !268, file: !2, line: 93, column: 5)
!283 = !DILocation(line: 94, column: 13, scope: !282, atomGroup: 38, atomRank: 1)
!284 = !DILocation(line: 95, column: 7, scope: !282, atomGroup: 39, atomRank: 1)
!285 = !DILocalVariable(name: "__dest", arg: 1, scope: !286, file: !287, line: 26, type: !290)
!286 = distinct !DISubprogram(name: "memcpy", scope: !287, file: !287, line: 26, type: !288, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !294, keyInstructions: true)
!287 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!288 = !DISubroutineType(types: !289)
!289 = !{!75, !290, !291, !77}
!290 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!291 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!294 = !{!285, !295, !296}
!295 = !DILocalVariable(name: "__src", arg: 2, scope: !286, file: !287, line: 26, type: !291)
!296 = !DILocalVariable(name: "__len", arg: 3, scope: !286, file: !287, line: 27, type: !77)
!297 = !DILocation(line: 0, scope: !286, inlinedAt: !298)
!298 = distinct !DILocation(line: 98, column: 3, scope: !20)
!299 = !DILocation(line: 29, column: 10, scope: !286, inlinedAt: !298, atomGroup: 1, atomRank: 2)
!300 = !DILocation(line: 99, column: 11, scope: !20, atomGroup: 40, atomRank: 1)
!301 = !{!203, !203, i64 0}
!302 = !DILocation(line: 100, column: 3, scope: !20)
!303 = !DILocation(line: 101, column: 1, scope: !20)
!304 = !DILocation(line: 102, column: 3, scope: !20)
!305 = !DILocation(line: 103, column: 3, scope: !20, atomGroup: 42, atomRank: 1)
!306 = !DILocation(line: 104, column: 1, scope: !20, atomGroup: 43, atomRank: 1)
!307 = !DISubprogram(name: "malloc", scope: !308, file: !308, line: 540, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!308 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!309 = !DISubroutineType(types: !310)
!310 = !{!75, !77}
!311 = !DISubprogram(name: "__errno_location", scope: !312, file: !312, line: 37, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!312 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!313 = !DISubroutineType(types: !314)
!314 = !{!154}
!315 = !DISubprogram(name: "free", scope: !308, file: !308, line: 555, type: !316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !75}
!318 = distinct !DIAssignID()
!319 = !DILocation(line: 0, scope: !118)
!320 = !DILocation(line: 116, column: 21, scope: !118, atomGroup: 3, atomRank: 2)
!321 = !DILocation(line: 118, column: 9, scope: !322, atomGroup: 4, atomRank: 2)
!322 = distinct !DILexicalBlock(scope: !118, file: !2, line: 118, column: 7)
!323 = !DILocation(line: 118, column: 7, scope: !322, atomGroup: 4, atomRank: 1)
!324 = !DILocation(line: 122, column: 16, scope: !118, atomGroup: 6, atomRank: 1)
!325 = !DILocation(line: 130, column: 5, scope: !130)
!326 = !DILocation(line: 127, column: 9, scope: !130, atomGroup: 7, atomRank: 1)
!327 = !DILocation(line: 132, column: 32, scope: !129)
!328 = !DILocation(line: 132, column: 56, scope: !129)
!329 = !DILocation(line: 132, column: 18, scope: !129, atomGroup: 8, atomRank: 2)
!330 = !DILocation(line: 0, scope: !129)
!331 = !DILocation(line: 133, column: 13, scope: !332, atomGroup: 9, atomRank: 2)
!332 = distinct !DILexicalBlock(scope: !129, file: !2, line: 133, column: 11)
!333 = !DILocation(line: 133, column: 13, scope: !332, atomGroup: 9, atomRank: 1)
!334 = !DILocation(line: 0, scope: !187, inlinedAt: !335)
!335 = distinct !DILocation(line: 135, column: 15, scope: !336)
!336 = distinct !DILexicalBlock(scope: !337, file: !2, line: 135, column: 15)
!337 = distinct !DILexicalBlock(scope: !332, file: !2, line: 134, column: 9)
!338 = !DILocation(line: 137, column: 10, scope: !187, inlinedAt: !335)
!339 = !DILocation(line: 135, column: 15, scope: !336, atomGroup: 10, atomRank: 2)
!340 = !DILocation(line: 0, scope: !337)
!341 = !DILocation(line: 140, column: 11, scope: !129, atomGroup: 13, atomRank: 2)
!342 = !DILocation(line: 142, column: 25, scope: !343, atomGroup: 14, atomRank: 2)
!343 = distinct !DILexicalBlock(scope: !129, file: !2, line: 142, column: 11)
!344 = !DILocation(line: 142, column: 25, scope: !343, atomGroup: 14, atomRank: 1)
!345 = !DILocation(line: 149, column: 5, scope: !132)
!346 = !DILocation(line: 149, column: 34, scope: !347, atomGroup: 22, atomRank: 2)
!347 = distinct !DILexicalBlock(scope: !132, file: !2, line: 149, column: 5)
!348 = !DILocation(line: 150, column: 12, scope: !347)
!349 = !DILocation(line: 150, column: 9, scope: !347, atomGroup: 21, atomRank: 2)
!350 = !DILocation(line: 150, column: 9, scope: !347, atomGroup: 82, atomRank: 2)
!351 = !DILocation(line: 149, column: 34, scope: !347, atomGroup: 81, atomRank: 2)
!352 = !DILocation(line: 149, column: 5, scope: !132, atomGroup: 83, atomRank: 1)
!353 = distinct !{!353, !252, !354, !355}
!354 = !{!"llvm.loop.isvectorized", i32 1}
!355 = !{!"llvm.loop.unroll.runtime.disable"}
!356 = !DILocation(line: 0, scope: !214, inlinedAt: !357)
!357 = distinct !DILocation(line: 145, column: 11, scope: !358)
!358 = distinct !DILexicalBlock(scope: !129, file: !2, line: 145, column: 11)
!359 = !DILocation(line: 130, column: 10, scope: !214, inlinedAt: !357)
!360 = !DILocation(line: 145, column: 11, scope: !358, atomGroup: 16, atomRank: 2)
!361 = !DILocation(line: 0, scope: !130)
!362 = !DILocation(line: 0, scope: !135)
!363 = !DILocation(line: 161, column: 24, scope: !364, atomGroup: 50, atomRank: 1)
!364 = distinct !DILexicalBlock(scope: !135, file: !2, line: 161, column: 3)
!365 = !DILocation(line: 161, column: 3, scope: !135, atomGroup: 51, atomRank: 1)
!366 = !DILocation(line: 161, column: 3, scope: !135)
!367 = !DILocation(line: 161, column: 32, scope: !364, atomGroup: 32, atomRank: 2)
!368 = !DILocation(line: 162, column: 10, scope: !364)
!369 = !DILocation(line: 162, column: 7, scope: !364, atomGroup: 31, atomRank: 2)
!370 = !DILocation(line: 161, column: 3, scope: !135, atomGroup: 30, atomRank: 1)
!371 = distinct !{!371, !252, !354, !355}
!372 = !DILocation(line: 149, column: 5, scope: !132, atomGroup: 20, atomRank: 1)
!373 = !DILocation(line: 151, column: 21, scope: !374)
!374 = distinct !DILexicalBlock(scope: !130, file: !2, line: 151, column: 9)
!375 = !DILocation(line: 151, column: 27, scope: !374, atomGroup: 24, atomRank: 1)
!376 = distinct !{!376, !377, !378}
!377 = !DILocation(line: 125, column: 3, scope: !118)
!378 = !DILocation(line: 157, column: 3, scope: !118)
!379 = !DILocation(line: 163, column: 25, scope: !380, atomGroup: 34, atomRank: 2)
!380 = distinct !DILexicalBlock(scope: !118, file: !2, line: 163, column: 7)
!381 = !DILocation(line: 163, column: 25, scope: !380, atomGroup: 34, atomRank: 1)
!382 = !DILocation(line: 161, column: 24, scope: !364, atomGroup: 29, atomRank: 1)
!383 = distinct !{!383, !252, !355, !354}
!384 = !DILocation(line: 165, column: 7, scope: !385)
!385 = distinct !DILexicalBlock(scope: !380, file: !2, line: 164, column: 5)
!386 = !DILocation(line: 165, column: 13, scope: !385, atomGroup: 35, atomRank: 1)
!387 = !DILocation(line: 166, column: 7, scope: !385, atomGroup: 36, atomRank: 1)
!388 = !DILocation(line: 163, column: 19, scope: !380)
!389 = !DILocation(line: 170, column: 14, scope: !118)
!390 = !DILocation(line: 170, column: 44, scope: !118)
!391 = !DILocation(line: 170, column: 24, scope: !118, atomGroup: 38, atomRank: 2)
!392 = !DILocation(line: 171, column: 21, scope: !118)
!393 = !DILocation(line: 171, column: 36, scope: !118)
!394 = !DILocation(line: 171, column: 31, scope: !118, atomGroup: 39, atomRank: 2)
!395 = distinct !DIAssignID()
!396 = !DILocation(line: 0, scope: !286, inlinedAt: !397)
!397 = distinct !DILocation(line: 173, column: 3, scope: !118)
!398 = !DILocation(line: 29, column: 10, scope: !286, inlinedAt: !397, atomGroup: 1, atomRank: 2)
!399 = !DILocation(line: 174, column: 11, scope: !118, atomGroup: 40, atomRank: 1)
!400 = !DILocation(line: 175, column: 3, scope: !118)
!401 = !DILocation(line: 176, column: 1, scope: !118)
!402 = !DILocation(line: 177, column: 3, scope: !118)
!403 = !DILocation(line: 179, column: 1, scope: !118, atomGroup: 43, atomRank: 1)
!404 = distinct !DISubprogram(name: "output_bsd", scope: !2, file: !2, line: 185, type: !405, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !407, keyInstructions: true)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !155, !23, !292, !153, !153, !104, !153, !86}
!407 = !{!408, !409, !410, !411, !412, !413, !414, !415, !416, !420, !422, !423, !424}
!408 = !DILocalVariable(name: "file", arg: 1, scope: !404, file: !2, line: 185, type: !155)
!409 = !DILocalVariable(name: "binary_file", arg: 2, scope: !404, file: !2, line: 185, type: !23)
!410 = !DILocalVariable(name: "digest", arg: 3, scope: !404, file: !2, line: 185, type: !292)
!411 = !DILocalVariable(name: "raw", arg: 4, scope: !404, file: !2, line: 186, type: !153)
!412 = !DILocalVariable(name: "tagged", arg: 5, scope: !404, file: !2, line: 186, type: !153)
!413 = !DILocalVariable(name: "delim", arg: 6, scope: !404, file: !2, line: 186, type: !104)
!414 = !DILocalVariable(name: "args", arg: 7, scope: !404, file: !2, line: 186, type: !153)
!415 = !DILocalVariable(name: "length", arg: 8, scope: !404, file: !2, line: 187, type: !86)
!416 = !DILocalVariable(name: "out_int", scope: !417, file: !2, line: 192, type: !419)
!417 = distinct !DILexicalBlock(scope: !418, file: !2, line: 190, column: 5)
!418 = distinct !DILexicalBlock(scope: !404, file: !2, line: 189, column: 7)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !102, line: 25, baseType: !157)
!420 = !DILocalVariable(name: "__ptr", scope: !421, file: !2, line: 194, type: !155)
!421 = distinct !DILexicalBlock(scope: !417, file: !2, line: 194, column: 7)
!422 = !DILocalVariable(name: "__stream", scope: !421, file: !2, line: 194, type: !24)
!423 = !DILocalVariable(name: "__cnt", scope: !421, file: !2, line: 194, type: !77)
!424 = !DILocalVariable(name: "hbuf", scope: !404, file: !2, line: 198, type: !425)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 5216, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 652)
!428 = distinct !DIAssignID()
!429 = !DILocation(line: 0, scope: !417)
!430 = distinct !DIAssignID()
!431 = !DILocation(line: 0, scope: !404)
!432 = !DILocation(line: 189, column: 7, scope: !418, atomGroup: 1, atomRank: 1)
!433 = !DILocation(line: 192, column: 7, scope: !417)
!434 = !DILocation(line: 192, column: 26, scope: !417, atomGroup: 2, atomRank: 3)
!435 = !DILocation(line: 192, column: 26, scope: !417, atomGroup: 2, atomRank: 2)
!436 = distinct !DIAssignID()
!437 = !DILocalVariable(name: "__bsx", arg: 1, scope: !438, file: !439, line: 34, type: !157)
!438 = distinct !DISubprogram(name: "__bswap_16", scope: !439, file: !439, line: 34, type: !440, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !442, keyInstructions: true)
!439 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "98f83253ffd9c64e7486789204e9fa05")
!440 = !DISubroutineType(types: !441)
!441 = !{!157, !157}
!442 = !{!437}
!443 = !DILocation(line: 0, scope: !438, inlinedAt: !444)
!444 = distinct !DILocation(line: 193, column: 17, scope: !417)
!445 = !DILocation(line: 39, column: 10, scope: !438, inlinedAt: !444, atomGroup: 1, atomRank: 3)
!446 = !DILocation(line: 193, column: 15, scope: !417, atomGroup: 3, atomRank: 1)
!447 = !{!204, !204, i64 0}
!448 = distinct !DIAssignID()
!449 = !DILocation(line: 0, scope: !421)
!450 = !DILocation(line: 194, column: 34, scope: !421, atomGroup: 5, atomRank: 2)
!451 = !{!202, !202, i64 0}
!452 = !DILocation(line: 194, column: 7, scope: !453, atomGroup: 56, atomRank: 1)
!453 = distinct !DILexicalBlock(scope: !421, file: !2, line: 194, column: 7)
!454 = !DILocalVariable(name: "__c", arg: 1, scope: !455, file: !188, line: 101, type: !23)
!455 = distinct !DISubprogram(name: "putc_unlocked", scope: !188, file: !188, line: 101, type: !456, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !458, keyInstructions: true)
!456 = !DISubroutineType(types: !457)
!457 = !{!23, !23, !24}
!458 = !{!454, !459}
!459 = !DILocalVariable(name: "__stream", arg: 2, scope: !455, file: !188, line: 101, type: !24)
!460 = !DILocation(line: 0, scope: !455, inlinedAt: !461)
!461 = distinct !DILocation(line: 194, column: 7, scope: !462)
!462 = distinct !DILexicalBlock(scope: !463, file: !2, line: 194, column: 7)
!463 = distinct !DILexicalBlock(scope: !453, file: !2, line: 194, column: 7)
!464 = !DILocation(line: 103, column: 10, scope: !455, inlinedAt: !461)
!465 = !{!198, !199, i64 40}
!466 = !{!198, !199, i64 48}
!467 = !DILocation(line: 103, column: 10, scope: !455, inlinedAt: !461, atomGroup: 84, atomRank: 1)
!468 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!469 = !DILocation(line: 194, column: 7, scope: !462)
!470 = !DILocation(line: 194, column: 7, scope: !462, atomGroup: 85, atomRank: 2)
!471 = !DILocation(line: 194, column: 7, scope: !462, atomGroup: 85, atomRank: 1)
!472 = !DILocation(line: 103, column: 10, scope: !455, inlinedAt: !461, atomGroup: 86, atomRank: 2)
!473 = !DILocation(line: 103, column: 10, scope: !455, inlinedAt: !461, atomGroup: 86, atomRank: 1)
!474 = !DILocation(line: 103, column: 10, scope: !455, inlinedAt: !461, atomGroup: 87, atomRank: 1)
!475 = !DILocation(line: 194, column: 7, scope: !453, atomGroup: 88, atomRank: 1)
!476 = !DILocation(line: 194, column: 7, scope: !462, atomGroup: 89, atomRank: 2)
!477 = !DILocation(line: 103, column: 10, scope: !455, inlinedAt: !461, atomGroup: 2, atomRank: 1)
!478 = !DILocation(line: 103, column: 10, scope: !455, inlinedAt: !461, atomGroup: 4, atomRank: 2)
!479 = !DILocation(line: 103, column: 10, scope: !455, inlinedAt: !461, atomGroup: 4, atomRank: 1)
!480 = !DILocation(line: 103, column: 10, scope: !455, inlinedAt: !461, atomGroup: 3, atomRank: 1)
!481 = !DILocation(line: 194, column: 7, scope: !453, atomGroup: 8, atomRank: 1)
!482 = !DILocation(line: 194, column: 7, scope: !462, atomGroup: 10, atomRank: 1)
!483 = !DILocation(line: 196, column: 5, scope: !418)
!484 = !DILocation(line: 198, column: 3, scope: !404)
!485 = !DILocation(line: 199, column: 23, scope: !404)
!486 = !DILocation(line: 200, column: 11, scope: !404)
!487 = !DILocation(line: 199, column: 3, scope: !404)
!488 = !DILocation(line: 201, column: 7, scope: !489, atomGroup: 15, atomRank: 1)
!489 = distinct !DILexicalBlock(scope: !404, file: !2, line: 201, column: 7)
!490 = !DILocation(line: 202, column: 5, scope: !489)
!491 = !DILocalVariable(name: "__c", arg: 1, scope: !492, file: !188, line: 108, type: !23)
!492 = distinct !DISubprogram(name: "putchar_unlocked", scope: !188, file: !188, line: 108, type: !493, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !495, keyInstructions: true)
!493 = !DISubroutineType(types: !494)
!494 = !{!23, !23}
!495 = !{!491}
!496 = !DILocation(line: 0, scope: !492, inlinedAt: !497)
!497 = distinct !DILocation(line: 203, column: 3, scope: !404)
!498 = !DILocation(line: 110, column: 37, scope: !492, inlinedAt: !497)
!499 = !DILocation(line: 110, column: 10, scope: !492, inlinedAt: !497)
!500 = !DILocation(line: 110, column: 10, scope: !492, inlinedAt: !497, atomGroup: 2, atomRank: 1)
!501 = !DILocation(line: 203, column: 12, scope: !404)
!502 = !DILocation(line: 110, column: 10, scope: !492, inlinedAt: !497, atomGroup: 4, atomRank: 2)
!503 = !DILocation(line: 110, column: 10, scope: !492, inlinedAt: !497, atomGroup: 4, atomRank: 1)
!504 = !DILocation(line: 110, column: 10, scope: !492, inlinedAt: !497, atomGroup: 3, atomRank: 1)
!505 = !DILocation(line: 204, column: 1, scope: !404)
!506 = !DILocation(line: 204, column: 1, scope: !404, atomGroup: 16, atomRank: 1)
!507 = !DISubprogram(name: "__printf__", linkageName: "rpl_printf", scope: !508, file: !508, line: 1944, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!508 = !DIFile(filename: "./lib/stdio.h", directory: "/workspaces/Thesis/.build/coreutils")
!509 = !DISubroutineType(types: !510)
!510 = !{!23, !511, null}
!511 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !155)
!512 = !DISubprogram(name: "human_readable", scope: !140, file: !140, line: 83, type: !513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!513 = !DISubroutineType(types: !514)
!514 = !{!32, !515, !32, !23, !515, !515}
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !87, line: 102, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !52, line: 73, baseType: !79)
!517 = distinct !DISubprogram(name: "output_sysv", scope: !2, file: !2, line: 210, type: !405, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !518, keyInstructions: true)
!518 = !{!519, !520, !521, !522, !523, !524, !525, !526, !527, !530, !532, !533, !534}
!519 = !DILocalVariable(name: "file", arg: 1, scope: !517, file: !2, line: 210, type: !155)
!520 = !DILocalVariable(name: "binary_file", arg: 2, scope: !517, file: !2, line: 210, type: !23)
!521 = !DILocalVariable(name: "digest", arg: 3, scope: !517, file: !2, line: 211, type: !292)
!522 = !DILocalVariable(name: "raw", arg: 4, scope: !517, file: !2, line: 211, type: !153)
!523 = !DILocalVariable(name: "tagged", arg: 5, scope: !517, file: !2, line: 211, type: !153)
!524 = !DILocalVariable(name: "delim", arg: 6, scope: !517, file: !2, line: 212, type: !104)
!525 = !DILocalVariable(name: "args", arg: 7, scope: !517, file: !2, line: 212, type: !153)
!526 = !DILocalVariable(name: "length", arg: 8, scope: !517, file: !2, line: 212, type: !86)
!527 = !DILocalVariable(name: "out_int", scope: !528, file: !2, line: 217, type: !419)
!528 = distinct !DILexicalBlock(scope: !529, file: !2, line: 215, column: 5)
!529 = distinct !DILexicalBlock(scope: !517, file: !2, line: 214, column: 7)
!530 = !DILocalVariable(name: "__ptr", scope: !531, file: !2, line: 219, type: !155)
!531 = distinct !DILexicalBlock(scope: !528, file: !2, line: 219, column: 7)
!532 = !DILocalVariable(name: "__stream", scope: !531, file: !2, line: 219, type: !24)
!533 = !DILocalVariable(name: "__cnt", scope: !531, file: !2, line: 219, type: !77)
!534 = !DILocalVariable(name: "hbuf", scope: !517, file: !2, line: 223, type: !425)
!535 = distinct !DIAssignID()
!536 = !DILocation(line: 0, scope: !528)
!537 = distinct !DIAssignID()
!538 = !DILocation(line: 0, scope: !517)
!539 = !DILocation(line: 214, column: 7, scope: !529, atomGroup: 1, atomRank: 1)
!540 = !DILocation(line: 217, column: 7, scope: !528)
!541 = !DILocation(line: 217, column: 26, scope: !528, atomGroup: 2, atomRank: 3)
!542 = !DILocation(line: 217, column: 26, scope: !528, atomGroup: 2, atomRank: 2)
!543 = distinct !DIAssignID()
!544 = !DILocation(line: 0, scope: !438, inlinedAt: !545)
!545 = distinct !DILocation(line: 218, column: 17, scope: !528)
!546 = !DILocation(line: 39, column: 10, scope: !438, inlinedAt: !545, atomGroup: 1, atomRank: 3)
!547 = !DILocation(line: 218, column: 15, scope: !528, atomGroup: 3, atomRank: 1)
!548 = distinct !DIAssignID()
!549 = !DILocation(line: 0, scope: !531)
!550 = !DILocation(line: 219, column: 34, scope: !531, atomGroup: 5, atomRank: 2)
!551 = !DILocation(line: 219, column: 7, scope: !552, atomGroup: 61, atomRank: 1)
!552 = distinct !DILexicalBlock(scope: !531, file: !2, line: 219, column: 7)
!553 = !DILocation(line: 0, scope: !455, inlinedAt: !554)
!554 = distinct !DILocation(line: 219, column: 7, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !2, line: 219, column: 7)
!556 = distinct !DILexicalBlock(scope: !552, file: !2, line: 219, column: 7)
!557 = !DILocation(line: 103, column: 10, scope: !455, inlinedAt: !554)
!558 = !DILocation(line: 103, column: 10, scope: !455, inlinedAt: !554, atomGroup: 90, atomRank: 1)
!559 = !DILocation(line: 219, column: 7, scope: !555)
!560 = !DILocation(line: 219, column: 7, scope: !555, atomGroup: 91, atomRank: 2)
!561 = !DILocation(line: 219, column: 7, scope: !555, atomGroup: 91, atomRank: 1)
!562 = !DILocation(line: 103, column: 10, scope: !455, inlinedAt: !554, atomGroup: 92, atomRank: 2)
!563 = !DILocation(line: 103, column: 10, scope: !455, inlinedAt: !554, atomGroup: 92, atomRank: 1)
!564 = !DILocation(line: 103, column: 10, scope: !455, inlinedAt: !554, atomGroup: 93, atomRank: 1)
!565 = !DILocation(line: 219, column: 7, scope: !552, atomGroup: 94, atomRank: 1)
!566 = !DILocation(line: 219, column: 7, scope: !555, atomGroup: 95, atomRank: 2)
!567 = !DILocation(line: 103, column: 10, scope: !455, inlinedAt: !554, atomGroup: 2, atomRank: 1)
!568 = !DILocation(line: 103, column: 10, scope: !455, inlinedAt: !554, atomGroup: 4, atomRank: 2)
!569 = !DILocation(line: 103, column: 10, scope: !455, inlinedAt: !554, atomGroup: 4, atomRank: 1)
!570 = !DILocation(line: 103, column: 10, scope: !455, inlinedAt: !554, atomGroup: 3, atomRank: 1)
!571 = !DILocation(line: 219, column: 7, scope: !552, atomGroup: 8, atomRank: 1)
!572 = !DILocation(line: 219, column: 7, scope: !555, atomGroup: 10, atomRank: 1)
!573 = !DILocation(line: 221, column: 5, scope: !529)
!574 = !DILocation(line: 223, column: 3, scope: !517)
!575 = !DILocation(line: 224, column: 20, scope: !517)
!576 = !DILocation(line: 225, column: 11, scope: !517)
!577 = !DILocation(line: 224, column: 3, scope: !517)
!578 = !DILocation(line: 226, column: 7, scope: !579, atomGroup: 15, atomRank: 1)
!579 = distinct !DILexicalBlock(scope: !517, file: !2, line: 226, column: 7)
!580 = !DILocation(line: 227, column: 5, scope: !579)
!581 = !DILocation(line: 0, scope: !492, inlinedAt: !582)
!582 = distinct !DILocation(line: 228, column: 3, scope: !517)
!583 = !DILocation(line: 110, column: 37, scope: !492, inlinedAt: !582)
!584 = !DILocation(line: 110, column: 10, scope: !492, inlinedAt: !582)
!585 = !DILocation(line: 110, column: 10, scope: !492, inlinedAt: !582, atomGroup: 2, atomRank: 1)
!586 = !DILocation(line: 228, column: 12, scope: !517)
!587 = !DILocation(line: 110, column: 10, scope: !492, inlinedAt: !582, atomGroup: 4, atomRank: 2)
!588 = !DILocation(line: 110, column: 10, scope: !492, inlinedAt: !582, atomGroup: 4, atomRank: 1)
!589 = !DILocation(line: 110, column: 10, scope: !492, inlinedAt: !582, atomGroup: 3, atomRank: 1)
!590 = !DILocation(line: 229, column: 1, scope: !517)
!591 = !DILocation(line: 229, column: 1, scope: !517, atomGroup: 16, atomRank: 1)
!592 = !DISubprogram(name: "__overflow", scope: !593, file: !593, line: 886, type: !594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!593 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!594 = !DISubroutineType(types: !595)
!595 = !{!23, !24, !23}
