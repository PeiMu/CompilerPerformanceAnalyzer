; ModuleID = '../float64_mul_output.ll'
source_filename = "dfmul/float64_mul.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@float_rounding_mode = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@float_exception_flags = dso_local local_unnamed_addr global i32 0, align 4, !dbg !14
@_ZZL19countLeadingZeros32jE21countLeadingZerosHigh = internal unnamed_addr constant <{ [128 x i32], [128 x i32] }> <{ [128 x i32] [i32 8, i32 7, i32 6, i32 6, i32 5, i32 5, i32 5, i32 5, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [128 x i32] zeroinitializer }>, align 16, !dbg !18

; Function Attrs: nofree noinline norecurse nounwind uwtable willreturn writeonly mustprogress
define dso_local void @_Z19shift64RightJammingyiPy(i64 %0, i32 %1, i64* nocapture %2) local_unnamed_addr #0 !dbg !276 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !281, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 %1, metadata !283, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i64* %2, metadata !284, metadata !DIExpression()), !dbg !282
  %4 = icmp eq i32 %1, 0, !dbg !285
  br i1 %4, label %17, label %5, !dbg !287

5:                                                ; preds = %3
  %6 = icmp slt i32 %1, 64, !dbg !288
  br i1 %6, label %7, label %17, !dbg !290

7:                                                ; preds = %5
  %8 = zext i32 %1 to i64, !dbg !291
  %9 = lshr i64 %0, %8, !dbg !291
  %10 = sub nsw i32 0, %1, !dbg !293
  %11 = and i32 %10, 63, !dbg !294
  %12 = zext i32 %11 to i64, !dbg !295
  %13 = shl i64 %0, %12, !dbg !295
  %14 = icmp ne i64 %13, 0, !dbg !296
  %15 = zext i1 %14 to i64, !dbg !297
  %16 = or i64 %9, %15, !dbg !298
  call void @llvm.dbg.value(metadata i64 %16, metadata !299, metadata !DIExpression()), !dbg !282
  br label %17, !dbg !300

17:                                               ; preds = %5, %7, %3
  %.1 = phi i64 [ %0, %3 ], [ %16, %7 ], [ 0, %5 ], !dbg !301
  call void @llvm.dbg.value(metadata i64 %.1, metadata !299, metadata !DIExpression()), !dbg !282
  store i64 %.1, i64* %2, align 8, !dbg !302
  ret void, !dbg !303
}

; Function Attrs: nofree noinline norecurse nounwind uwtable willreturn writeonly mustprogress
define dso_local void @_Z10mul64To128yyPyS_(i64 %0, i64 %1, i64* nocapture %2, i64* nocapture %3) local_unnamed_addr #0 !dbg !304 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !307, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i64 %1, metadata !309, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i64* %2, metadata !310, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i64* %3, metadata !311, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i64 %0, metadata !312, metadata !DIExpression()), !dbg !308
  %5 = lshr i64 %0, 32, !dbg !313
  call void @llvm.dbg.value(metadata i64 %5, metadata !314, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !308
  call void @llvm.dbg.value(metadata i64 %1, metadata !315, metadata !DIExpression()), !dbg !308
  %6 = lshr i64 %1, 32, !dbg !316
  call void @llvm.dbg.value(metadata i64 %6, metadata !317, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !308
  %7 = and i64 %0, 4294967295, !dbg !318
  %8 = and i64 %1, 4294967295, !dbg !319
  %9 = mul nuw i64 %8, %7, !dbg !320
  call void @llvm.dbg.value(metadata i64 %9, metadata !321, metadata !DIExpression()), !dbg !308
  %10 = mul nuw i64 %6, %7, !dbg !322
  call void @llvm.dbg.value(metadata i64 %10, metadata !323, metadata !DIExpression()), !dbg !308
  %11 = mul nuw i64 %8, %5, !dbg !324
  call void @llvm.dbg.value(metadata i64 %11, metadata !325, metadata !DIExpression()), !dbg !308
  %12 = mul nuw i64 %6, %5, !dbg !326
  call void @llvm.dbg.value(metadata i64 %12, metadata !327, metadata !DIExpression()), !dbg !308
  %13 = add i64 %10, %11, !dbg !328
  call void @llvm.dbg.value(metadata i64 %13, metadata !323, metadata !DIExpression()), !dbg !308
  %14 = icmp ult i64 %13, %11, !dbg !329
  %15 = select i1 %14, i64 4294967296, i64 0, !dbg !330
  %16 = lshr i64 %13, 32, !dbg !331
  %17 = add nuw i64 %16, %12, !dbg !332
  %18 = add i64 %17, %15, !dbg !333
  call void @llvm.dbg.value(metadata i64 %18, metadata !327, metadata !DIExpression()), !dbg !308
  %19 = shl i64 %13, 32, !dbg !334
  call void @llvm.dbg.value(metadata i64 %19, metadata !323, metadata !DIExpression()), !dbg !308
  %20 = add i64 %19, %9, !dbg !335
  call void @llvm.dbg.value(metadata i64 %20, metadata !321, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i64 %18, metadata !327, metadata !DIExpression()), !dbg !308
  store i64 %20, i64* %3, align 8, !dbg !336
  store i64 %18, i64* %2, align 8, !dbg !337
  ret void, !dbg !338
}

; Function Attrs: nofree noinline norecurse nounwind uwtable willreturn mustprogress
define dso_local void @_Z11float_raisei(i32 %0) local_unnamed_addr #1 !dbg !339 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !343, metadata !DIExpression()), !dbg !344
  %2 = load i32, i32* @float_exception_flags, align 4, !dbg !345
  %3 = or i32 %2, %0, !dbg !345
  store i32 %3, i32* @float_exception_flags, align 4, !dbg !345
  ret void, !dbg !346
}

; Function Attrs: noinline norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local i32 @_Z14float64_is_nany(i64 %0) local_unnamed_addr #2 !dbg !347 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !353, metadata !DIExpression()), !dbg !354
  ret i32 0, !dbg !355
}

; Function Attrs: noinline norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local i32 @_Z24float64_is_signaling_nany(i64 %0) local_unnamed_addr #2 !dbg !356 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !357, metadata !DIExpression()), !dbg !358
  ret i32 0, !dbg !359
}

; Function Attrs: alwaysinline norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local i64 @extractFloat64Frac(i64 %0) local_unnamed_addr #3 !dbg !360 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !363, metadata !DIExpression()), !dbg !364
  %2 = and i64 %0, 4503599627370495, !dbg !365
  ret i64 %2, !dbg !366
}

; Function Attrs: alwaysinline norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local i32 @extractFloat64Exp(i64 %0) local_unnamed_addr #3 !dbg !367 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !370, metadata !DIExpression()), !dbg !371
  %2 = lshr i64 %0, 52, !dbg !372
  %3 = trunc i64 %2 to i32, !dbg !373
  %4 = and i32 %3, 2047, !dbg !373
  ret i32 %4, !dbg !374
}

; Function Attrs: alwaysinline norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local i32 @extractFloat64Sign(i64 %0) local_unnamed_addr #3 !dbg !375 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !376, metadata !DIExpression()), !dbg !377
  %2 = lshr i64 %0, 63, !dbg !378
  %3 = trunc i64 %2 to i32, !dbg !379
  ret i32 %3, !dbg !380
}

; Function Attrs: nofree noinline norecurse nounwind uwtable willreturn writeonly mustprogress
define dso_local void @normalizeFloat64Subnormal(i64 %0, i32* nocapture %1, i64* nocapture %2) local_unnamed_addr #0 !dbg !381 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !385, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.value(metadata i32* %1, metadata !387, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.value(metadata i64* %2, metadata !388, metadata !DIExpression()), !dbg !386
  %4 = tail call fastcc i32 @_ZL19countLeadingZeros64y(i64 %0), !dbg !389
  %5 = add nsw i32 %4, -11, !dbg !390
  call void @llvm.dbg.value(metadata i32 %5, metadata !391, metadata !DIExpression()), !dbg !386
  %6 = zext i32 %5 to i64, !dbg !392
  %7 = shl i64 %0, %6, !dbg !392
  store i64 %7, i64* %2, align 8, !dbg !393
  %8 = sub i32 12, %4, !dbg !394
  store i32 %8, i32* %1, align 4, !dbg !395
  ret void, !dbg !396
}

; Function Attrs: noinline norecurse nounwind readnone uwtable willreturn mustprogress
define internal fastcc i32 @_ZL19countLeadingZeros64y(i64 %0) unnamed_addr #2 !dbg !397 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !400, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata i32 0, metadata !402, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata i32 32, metadata !402, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata i64 %0, metadata !400, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata i32 32, metadata !402, metadata !DIExpression()), !dbg !401
  %2 = trunc i64 %0 to i32, !dbg !403
  %3 = tail call fastcc i32 @_ZL19countLeadingZeros32j(i32 %2), !dbg !404
  %4 = add nsw i32 %3, 32, !dbg !405
  call void @llvm.dbg.value(metadata i32 %4, metadata !402, metadata !DIExpression()), !dbg !401
  ret i32 %4, !dbg !406
}

; Function Attrs: alwaysinline norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local i64 @packFloat64(i32 %0, i32 %1, i64 %2) local_unnamed_addr #3 !dbg !407 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !410, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata i32 %1, metadata !412, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata i64 %2, metadata !413, metadata !DIExpression()), !dbg !411
  %4 = zext i32 %0 to i64, !dbg !414
  %5 = shl i64 %4, 63, !dbg !415
  %6 = zext i32 %1 to i64, !dbg !416
  %7 = shl i64 %6, 52, !dbg !417
  %8 = add i64 %5, %2, !dbg !418
  %9 = add i64 %8, %7, !dbg !419
  ret i64 %9, !dbg !420
}

; Function Attrs: nofree noinline norecurse nounwind uwtable willreturn mustprogress
define dso_local i64 @roundAndPackFloat64(i32 %0, i32 %1, i64 %2) local_unnamed_addr #1 !dbg !421 {
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !422, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i32 %1, metadata !424, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 %2, metadata !425, metadata !DIExpression()), !dbg !423
  store i64 %2, i64* %4, align 8
  %5 = load i32, i32* @float_rounding_mode, align 4, !dbg !426
  call void @llvm.dbg.value(metadata i32 %5, metadata !427, metadata !DIExpression()), !dbg !423
  %6 = icmp eq i32 %5, 0, !dbg !428
  call void @llvm.dbg.value(metadata i1 %6, metadata !429, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata i32 512, metadata !430, metadata !DIExpression()), !dbg !423
  br i1 %6, label %12, label %7, !dbg !431

7:                                                ; preds = %3
  %8 = icmp eq i32 %5, 1, !dbg !432
  br i1 %8, label %12, label %9, !dbg !436

9:                                                ; preds = %7
  call void @llvm.dbg.value(metadata i32 1023, metadata !430, metadata !DIExpression()), !dbg !423
  %.not = icmp eq i32 %0, 0, !dbg !437
  %10 = icmp eq i32 %5, 2, !dbg !440
  %spec.select = select i1 %10, i32 0, i32 1023, !dbg !440
  %11 = icmp eq i32 %5, 3, !dbg !440
  %spec.select1 = select i1 %11, i32 0, i32 1023, !dbg !440
  %.2 = select i1 %.not, i32 %spec.select1, i32 %spec.select, !dbg !440
  br label %12, !dbg !440

12:                                               ; preds = %7, %9, %3
  %.4 = phi i32 [ 512, %3 ], [ 0, %7 ], [ %.2, %9 ], !dbg !423
  call void @llvm.dbg.value(metadata i32 %.4, metadata !430, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 %2, metadata !425, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 %2, metadata !441, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1023, DW_OP_and, DW_OP_stack_value)), !dbg !423
  %13 = and i32 %1, 65535, !dbg !442
  %14 = icmp ugt i32 %13, 2044, !dbg !444
  br i1 %14, label %15, label %28, !dbg !445

15:                                               ; preds = %12
  %16 = icmp sgt i32 %1, 2045, !dbg !446
  br i1 %16, label %19, label %17, !dbg !449

17:                                               ; preds = %15
  %18 = icmp slt i32 %1, 0, !dbg !450
  br i1 %18, label %25, label %28, !dbg !452

19:                                               ; preds = %15
  tail call void @_Z11float_raisei(i32 9), !dbg !453
  call void @llvm.dbg.value(metadata i32 %0, metadata !410, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i32 2047, metadata !412, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i64 0, metadata !413, metadata !DIExpression()), !dbg !455
  %20 = zext i32 %0 to i64, !dbg !457
  %21 = shl i64 %20, 63, !dbg !458
  %22 = or i64 %21, 9218868437227405312, !dbg !459
  %23 = icmp eq i32 %.4, 0, !dbg !460
  %.neg = sext i1 %23 to i64, !dbg !461
  %24 = add i64 %22, %.neg, !dbg !462
  br label %45, !dbg !463

25:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i32 1, metadata !464, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 %2, metadata !425, metadata !DIExpression()), !dbg !423
  %26 = sub nsw i32 0, %1, !dbg !465
  call void @llvm.dbg.value(metadata i64* %4, metadata !425, metadata !DIExpression(DW_OP_deref)), !dbg !423
  call void @_Z19shift64RightJammingyiPy(i64 %2, i32 %26, i64* nonnull %4), !dbg !467
  call void @llvm.dbg.value(metadata i32 0, metadata !424, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 undef, metadata !425, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 undef, metadata !441, metadata !DIExpression(DW_OP_constu, 1023, DW_OP_and, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !423
  %27 = load i64, i64* %4, align 8, !dbg !468
  call void @llvm.dbg.value(metadata i64 %27, metadata !441, metadata !DIExpression(DW_OP_constu, 1023, DW_OP_and, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata i64 %27, metadata !425, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 %27, metadata !441, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1023, DW_OP_and, DW_OP_stack_value)), !dbg !423
  br label %28, !dbg !469

28:                                               ; preds = %17, %25, %12
  %29 = phi i64 [ %2, %12 ], [ %2, %17 ], [ %27, %25 ]
  %.1.in = trunc i64 %29 to i32, !dbg !423
  %.1 = and i32 %.1.in, 1023, !dbg !423
  call void @llvm.dbg.value(metadata i32 %.1, metadata !441, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i32 undef, metadata !424, metadata !DIExpression()), !dbg !423
  %.not3 = icmp eq i32 %.1, 0, !dbg !470
  br i1 %.not3, label %33, label %30, !dbg !472

30:                                               ; preds = %28
  %31 = load i32, i32* @float_exception_flags, align 4, !dbg !473
  %32 = or i32 %31, 1, !dbg !473
  store i32 %32, i32* @float_exception_flags, align 4, !dbg !473
  br label %33, !dbg !474

33:                                               ; preds = %30, %28
  call void @llvm.dbg.value(metadata i64 %29, metadata !425, metadata !DIExpression()), !dbg !423
  %34 = zext i32 %.4 to i64
  %35 = add i64 %29, %34, !dbg !475
  %36 = lshr i64 %35, 10, !dbg !476
  %37 = icmp eq i32 %.1, 512, !dbg !477
  %38 = and i1 %6, %37, !dbg !478
  %39 = zext i1 %38 to i64, !dbg !478
  %40 = xor i64 %39, -1, !dbg !479
  %41 = and i64 %36, %40, !dbg !480
  call void @llvm.dbg.value(metadata i64 %41, metadata !425, metadata !DIExpression()), !dbg !423
  store i64 %41, i64* %4, align 8, !dbg !480
  call void @llvm.dbg.value(metadata i32 0, metadata !424, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i32 %0, metadata !410, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.value(metadata i32 0, metadata !412, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.value(metadata i64 %41, metadata !413, metadata !DIExpression()), !dbg !481
  %42 = zext i32 %0 to i64, !dbg !483
  %43 = shl i64 %42, 63, !dbg !484
  %44 = or i64 %41, %43, !dbg !485
  br label %45, !dbg !486

45:                                               ; preds = %33, %19
  %.06 = phi i64 [ %24, %19 ], [ %44, %33 ], !dbg !423
  ret i64 %.06, !dbg !487
}

; Function Attrs: nofree noinline norecurse nounwind uwtable willreturn mustprogress
define dso_local i64 @float64_mul(i64 %0, i64 %1) local_unnamed_addr #1 !dbg !488 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !493, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i64 %1, metadata !495, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i64 %0, metadata !363, metadata !DIExpression()), !dbg !496
  %9 = and i64 %0, 4503599627370495, !dbg !498
  call void @llvm.dbg.value(metadata i64 %9, metadata !499, metadata !DIExpression()), !dbg !494
  store i64 %9, i64* %5, align 8, !dbg !500
  call void @llvm.dbg.value(metadata i64 %0, metadata !370, metadata !DIExpression()), !dbg !501
  %10 = lshr i64 %0, 52, !dbg !503
  %11 = trunc i64 %10 to i32, !dbg !504
  %12 = and i32 %11, 2047, !dbg !504
  call void @llvm.dbg.value(metadata i32 %12, metadata !505, metadata !DIExpression()), !dbg !494
  store i32 %12, i32* %3, align 4, !dbg !506
  call void @llvm.dbg.value(metadata i64 %0, metadata !507, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !494
  call void @llvm.dbg.value(metadata i64 %1, metadata !363, metadata !DIExpression()), !dbg !508
  %13 = and i64 %1, 4503599627370495, !dbg !510
  call void @llvm.dbg.value(metadata i64 %13, metadata !511, metadata !DIExpression()), !dbg !494
  store i64 %13, i64* %6, align 8, !dbg !512
  call void @llvm.dbg.value(metadata i64 %1, metadata !370, metadata !DIExpression()), !dbg !513
  %14 = lshr i64 %1, 52, !dbg !515
  %15 = trunc i64 %14 to i32, !dbg !516
  %16 = and i32 %15, 2047, !dbg !516
  call void @llvm.dbg.value(metadata i32 %16, metadata !517, metadata !DIExpression()), !dbg !494
  store i32 %16, i32* %4, align 4, !dbg !518
  call void @llvm.dbg.value(metadata i64 %1, metadata !519, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !494
  %17 = xor i64 %1, %0, !dbg !520
  %18 = lshr i64 %17, 63, !dbg !520
  %19 = trunc i64 %18 to i32, !dbg !520
  call void @llvm.dbg.value(metadata i32 %19, metadata !521, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i32 undef, metadata !505, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i32* %3, metadata !505, metadata !DIExpression(DW_OP_deref)), !dbg !494
  call void @llvm.dbg.value(metadata i64* %5, metadata !499, metadata !DIExpression(DW_OP_deref)), !dbg !494
  call void @normalizeFloat64Subnormal(i64 %9, i32* nonnull %3, i64* nonnull %5), !dbg !522
  call void @llvm.dbg.value(metadata i32 undef, metadata !517, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i32* %4, metadata !517, metadata !DIExpression(DW_OP_deref)), !dbg !494
  call void @llvm.dbg.value(metadata i64* %6, metadata !511, metadata !DIExpression(DW_OP_deref)), !dbg !494
  call void @normalizeFloat64Subnormal(i64 %13, i32* nonnull %4, i64* nonnull %6), !dbg !525
  %20 = load i32, i32* %3, align 4, !dbg !528
  call void @llvm.dbg.value(metadata i32 %20, metadata !505, metadata !DIExpression()), !dbg !494
  %21 = load i32, i32* %4, align 4, !dbg !529
  call void @llvm.dbg.value(metadata i32 %21, metadata !517, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i32 undef, metadata !530, metadata !DIExpression(DW_OP_constu, 1023, DW_OP_minus, DW_OP_stack_value)), !dbg !494
  %22 = load i64, i64* %5, align 8, !dbg !531
  call void @llvm.dbg.value(metadata i64 %22, metadata !499, metadata !DIExpression()), !dbg !494
  %23 = shl i64 %22, 10, !dbg !532
  %24 = or i64 %23, 4611686018427387904, !dbg !532
  call void @llvm.dbg.value(metadata i64 %24, metadata !499, metadata !DIExpression()), !dbg !494
  %25 = load i64, i64* %6, align 8, !dbg !533
  call void @llvm.dbg.value(metadata i64 %25, metadata !511, metadata !DIExpression()), !dbg !494
  %26 = shl i64 %25, 11, !dbg !534
  %27 = or i64 %26, -9223372036854775808, !dbg !534
  call void @llvm.dbg.value(metadata i64 %27, metadata !511, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i64 %24, metadata !499, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i64* %7, metadata !535, metadata !DIExpression(DW_OP_deref)), !dbg !494
  call void @llvm.dbg.value(metadata i64* %8, metadata !536, metadata !DIExpression(DW_OP_deref)), !dbg !494
  call void @_Z10mul64To128yyPyS_(i64 %24, i64 %27, i64* nonnull %7, i64* nonnull %8), !dbg !537
  %28 = load i64, i64* %8, align 8, !dbg !538
  call void @llvm.dbg.value(metadata i64 %28, metadata !536, metadata !DIExpression()), !dbg !494
  %29 = icmp ne i64 %28, 0, !dbg !539
  %30 = zext i1 %29 to i64, !dbg !540
  %31 = load i64, i64* %7, align 8, !dbg !541
  call void @llvm.dbg.value(metadata i64 %31, metadata !535, metadata !DIExpression()), !dbg !494
  %32 = or i64 %31, %30, !dbg !541
  %33 = shl i64 %32, 1, !dbg !542
  call void @llvm.dbg.value(metadata i64 %33, metadata !535, metadata !DIExpression()), !dbg !494
  %34 = add i32 %20, -1024, !dbg !544
  %35 = add i32 %34, %21, !dbg !545
  call void @llvm.dbg.value(metadata i32 %35, metadata !530, metadata !DIExpression()), !dbg !494
  %36 = tail call i64 @roundAndPackFloat64(i32 %19, i32 %35, i64 %33), !dbg !547
  ret i64 %36, !dbg !548
}

; Function Attrs: noinline norecurse nounwind readnone uwtable willreturn mustprogress
define internal fastcc i32 @_ZL19countLeadingZeros32j(i32 %0) unnamed_addr #2 !dbg !20 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !549, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.value(metadata i32 0, metadata !551, metadata !DIExpression()), !dbg !550
  %2 = icmp ult i32 %0, 65536, !dbg !552
  %3 = shl i32 %0, 16, !dbg !554
  %.01 = select i1 %2, i32 16, i32 0, !dbg !554
  %.0 = select i1 %2, i32 %3, i32 %0, !dbg !554
  call void @llvm.dbg.value(metadata i32 %.0, metadata !549, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.value(metadata i32 %.01, metadata !551, metadata !DIExpression()), !dbg !550
  %4 = icmp ult i32 %.0, 16777216, !dbg !555
  %5 = or i32 %.01, 8, !dbg !557
  %6 = shl i32 %.0, 8, !dbg !557
  %.12 = select i1 %4, i32 %5, i32 %.01, !dbg !557
  %.1 = select i1 %4, i32 %6, i32 %.0, !dbg !557
  call void @llvm.dbg.value(metadata i32 %.1, metadata !549, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.value(metadata i32 %.12, metadata !551, metadata !DIExpression()), !dbg !550
  %7 = lshr i32 %.1, 24, !dbg !558
  %8 = zext i32 %7 to i64, !dbg !559
  %9 = getelementptr inbounds [256 x i32], [256 x i32]* bitcast (<{ [128 x i32], [128 x i32] }>* @_ZZL19countLeadingZeros32jE21countLeadingZerosHigh to [256 x i32]*), i64 0, i64 %8, !dbg !559
  %10 = load i32, i32* %9, align 4, !dbg !559
  %11 = add nsw i32 %10, %.12, !dbg !560
  call void @llvm.dbg.value(metadata i32 %11, metadata !551, metadata !DIExpression()), !dbg !550
  ret i32 %11, !dbg !561
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nofree noinline norecurse nounwind uwtable willreturn writeonly mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree noinline norecurse nounwind uwtable willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse nounwind readnone uwtable willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline norecurse nounwind readnone uwtable willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!272, !273, !274}
!llvm.ident = !{!275}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "float_rounding_mode", scope: !2, file: !3, line: 61, type: !16, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "Ubuntu clang version 12.0.1-19ubuntu3", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !13, imports: !30, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "dfmul/float64_mul.cpp", directory: "/home/pei/Project/Noisy-lang-compiler/applications/newton/llvm-ir/CHStone_test")
!4 = !{}
!5 = !{!6, !9, !11}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "bits64", file: !7, line: 70, baseType: !8)
!7 = !DIFile(filename: "dfmul/include/SPARC-GCC.h", directory: "/home/pei/Project/Noisy-lang-compiler/applications/newton/llvm-ir/CHStone_test")
!8 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "bits16", file: !7, line: 68, baseType: !10)
!10 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbits64", file: !7, line: 71, baseType: !12)
!12 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!13 = !{!0, !14, !18}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "float_exception_flags", scope: !2, file: !3, line: 62, type: !16, isLocal: false, isDefinition: true)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8", file: !7, line: 59, baseType: !17)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "countLeadingZerosHigh", scope: !20, file: !21, line: 118, type: !26, isLocal: true, isDefinition: true)
!20 = distinct !DISubprogram(name: "countLeadingZeros32", linkageName: "_ZL19countLeadingZeros32j", scope: !21, file: !21, line: 116, type: !22, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!21 = !DIFile(filename: "dfmul/include/softfloat-macros", directory: "/home/pei/Project/Noisy-lang-compiler/applications/newton/llvm-ir/CHStone_test")
!22 = !DISubroutineType(types: !23)
!23 = !{!16, !24}
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "bits32", file: !7, line: 69, baseType: !25)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8192, elements: !28)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!28 = !{!29}
!29 = !DISubrange(count: 256)
!30 = !{!31, !38, !42, !49, !53, !58, !60, !68, !72, !76, !90, !94, !98, !102, !106, !111, !115, !119, !123, !127, !135, !139, !143, !145, !149, !153, !157, !163, !167, !171, !173, !181, !185, !192, !194, !198, !202, !206, !210, !214, !219, !224, !225, !226, !227, !229, !230, !231, !232, !233, !234, !235, !237, !238, !239, !240, !241, !242, !243, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271}
!31 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !33, file: !37, line: 52)
!32 = !DINamespace(name: "std", scope: null)
!33 = !DISubprogram(name: "abs", scope: !34, file: !34, line: 848, type: !35, flags: DIFlagPrototyped, spFlags: 0)
!34 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!35 = !DISubroutineType(types: !36)
!36 = !{!17, !17}
!37 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/bits/std_abs.h", directory: "")
!38 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !39, file: !41, line: 127)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !34, line: 63, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!41 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/cstdlib", directory: "")
!42 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !43, file: !41, line: 128)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !34, line: 71, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !45, identifier: "_ZTS6ldiv_t")
!45 = !{!46, !48}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !44, file: !34, line: 69, baseType: !47, size: 64)
!47 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !44, file: !34, line: 70, baseType: !47, size: 64, offset: 64)
!49 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !50, file: !41, line: 130)
!50 = !DISubprogram(name: "abort", scope: !34, file: !34, line: 598, type: !51, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!51 = !DISubroutineType(types: !52)
!52 = !{null}
!53 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !54, file: !41, line: 134)
!54 = !DISubprogram(name: "atexit", scope: !34, file: !34, line: 602, type: !55, flags: DIFlagPrototyped, spFlags: 0)
!55 = !DISubroutineType(types: !56)
!56 = !{!17, !57}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!58 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !59, file: !41, line: 137)
!59 = !DISubprogram(name: "at_quick_exit", scope: !34, file: !34, line: 607, type: !55, flags: DIFlagPrototyped, spFlags: 0)
!60 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !61, file: !41, line: 140)
!61 = !DISubprogram(name: "atof", scope: !34, file: !34, line: 102, type: !62, flags: DIFlagPrototyped, spFlags: 0)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !65}
!64 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!68 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !69, file: !41, line: 141)
!69 = !DISubprogram(name: "atoi", scope: !34, file: !34, line: 105, type: !70, flags: DIFlagPrototyped, spFlags: 0)
!70 = !DISubroutineType(types: !71)
!71 = !{!17, !65}
!72 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !73, file: !41, line: 142)
!73 = !DISubprogram(name: "atol", scope: !34, file: !34, line: 108, type: !74, flags: DIFlagPrototyped, spFlags: 0)
!74 = !DISubroutineType(types: !75)
!75 = !{!47, !65}
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !77, file: !41, line: 143)
!77 = !DISubprogram(name: "bsearch", scope: !34, file: !34, line: 828, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!78 = !DISubroutineType(types: !79)
!79 = !{!80, !81, !81, !83, !83, !86}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !84, line: 46, baseType: !85)
!84 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!85 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !34, line: 816, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!17, !81, !81}
!90 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !91, file: !41, line: 144)
!91 = !DISubprogram(name: "calloc", scope: !34, file: !34, line: 543, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!92 = !DISubroutineType(types: !93)
!93 = !{!80, !83, !83}
!94 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !95, file: !41, line: 145)
!95 = !DISubprogram(name: "div", scope: !34, file: !34, line: 860, type: !96, flags: DIFlagPrototyped, spFlags: 0)
!96 = !DISubroutineType(types: !97)
!97 = !{!39, !17, !17}
!98 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !99, file: !41, line: 146)
!99 = !DISubprogram(name: "exit", scope: !34, file: !34, line: 624, type: !100, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !17}
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !103, file: !41, line: 147)
!103 = !DISubprogram(name: "free", scope: !34, file: !34, line: 555, type: !104, flags: DIFlagPrototyped, spFlags: 0)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !80}
!106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !107, file: !41, line: 148)
!107 = !DISubprogram(name: "getenv", scope: !34, file: !34, line: 641, type: !108, flags: DIFlagPrototyped, spFlags: 0)
!108 = !DISubroutineType(types: !109)
!109 = !{!110, !65}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !112, file: !41, line: 149)
!112 = !DISubprogram(name: "labs", scope: !34, file: !34, line: 849, type: !113, flags: DIFlagPrototyped, spFlags: 0)
!113 = !DISubroutineType(types: !114)
!114 = !{!47, !47}
!115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !116, file: !41, line: 150)
!116 = !DISubprogram(name: "ldiv", scope: !34, file: !34, line: 862, type: !117, flags: DIFlagPrototyped, spFlags: 0)
!117 = !DISubroutineType(types: !118)
!118 = !{!43, !47, !47}
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !120, file: !41, line: 151)
!120 = !DISubprogram(name: "malloc", scope: !34, file: !34, line: 540, type: !121, flags: DIFlagPrototyped, spFlags: 0)
!121 = !DISubroutineType(types: !122)
!122 = !{!80, !83}
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !124, file: !41, line: 153)
!124 = !DISubprogram(name: "mblen", scope: !34, file: !34, line: 930, type: !125, flags: DIFlagPrototyped, spFlags: 0)
!125 = !DISubroutineType(types: !126)
!126 = !{!17, !65, !83}
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !128, file: !41, line: 154)
!128 = !DISubprogram(name: "mbstowcs", scope: !34, file: !34, line: 941, type: !129, flags: DIFlagPrototyped, spFlags: 0)
!129 = !DISubroutineType(types: !130)
!130 = !{!83, !131, !134, !83}
!131 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!134 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !65)
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !136, file: !41, line: 155)
!136 = !DISubprogram(name: "mbtowc", scope: !34, file: !34, line: 933, type: !137, flags: DIFlagPrototyped, spFlags: 0)
!137 = !DISubroutineType(types: !138)
!138 = !{!17, !131, !134, !83}
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !140, file: !41, line: 157)
!140 = !DISubprogram(name: "qsort", scope: !34, file: !34, line: 838, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !80, !83, !83, !86}
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !144, file: !41, line: 160)
!144 = !DISubprogram(name: "quick_exit", scope: !34, file: !34, line: 630, type: !100, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !146, file: !41, line: 163)
!146 = !DISubprogram(name: "rand", scope: !34, file: !34, line: 454, type: !147, flags: DIFlagPrototyped, spFlags: 0)
!147 = !DISubroutineType(types: !148)
!148 = !{!17}
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !150, file: !41, line: 164)
!150 = !DISubprogram(name: "realloc", scope: !34, file: !34, line: 551, type: !151, flags: DIFlagPrototyped, spFlags: 0)
!151 = !DISubroutineType(types: !152)
!152 = !{!80, !80, !83}
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !154, file: !41, line: 165)
!154 = !DISubprogram(name: "srand", scope: !34, file: !34, line: 456, type: !155, flags: DIFlagPrototyped, spFlags: 0)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !25}
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !158, file: !41, line: 166)
!158 = !DISubprogram(name: "strtod", scope: !34, file: !34, line: 118, type: !159, flags: DIFlagPrototyped, spFlags: 0)
!159 = !DISubroutineType(types: !160)
!160 = !{!64, !134, !161}
!161 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !164, file: !41, line: 167)
!164 = !DISubprogram(name: "strtol", scope: !34, file: !34, line: 177, type: !165, flags: DIFlagPrototyped, spFlags: 0)
!165 = !DISubroutineType(types: !166)
!166 = !{!47, !134, !161, !17}
!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !168, file: !41, line: 168)
!168 = !DISubprogram(name: "strtoul", scope: !34, file: !34, line: 181, type: !169, flags: DIFlagPrototyped, spFlags: 0)
!169 = !DISubroutineType(types: !170)
!170 = !{!85, !134, !161, !17}
!171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !172, file: !41, line: 169)
!172 = !DISubprogram(name: "system", scope: !34, file: !34, line: 791, type: !70, flags: DIFlagPrototyped, spFlags: 0)
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !174, file: !41, line: 171)
!174 = !DISubprogram(name: "wcstombs", scope: !34, file: !34, line: 945, type: !175, flags: DIFlagPrototyped, spFlags: 0)
!175 = !DISubroutineType(types: !176)
!176 = !{!83, !177, !178, !83}
!177 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !110)
!178 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !182, file: !41, line: 172)
!182 = !DISubprogram(name: "wctomb", scope: !34, file: !34, line: 937, type: !183, flags: DIFlagPrototyped, spFlags: 0)
!183 = !DISubroutineType(types: !184)
!184 = !{!17, !110, !133}
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !187, file: !41, line: 200)
!186 = !DINamespace(name: "__gnu_cxx", scope: null)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !34, line: 81, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !189, identifier: "_ZTS7lldiv_t")
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !188, file: !34, line: 79, baseType: !12, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !188, file: !34, line: 80, baseType: !12, size: 64, offset: 64)
!192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !193, file: !41, line: 206)
!193 = !DISubprogram(name: "_Exit", scope: !34, file: !34, line: 636, type: !100, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !195, file: !41, line: 210)
!195 = !DISubprogram(name: "llabs", scope: !34, file: !34, line: 852, type: !196, flags: DIFlagPrototyped, spFlags: 0)
!196 = !DISubroutineType(types: !197)
!197 = !{!12, !12}
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !199, file: !41, line: 216)
!199 = !DISubprogram(name: "lldiv", scope: !34, file: !34, line: 866, type: !200, flags: DIFlagPrototyped, spFlags: 0)
!200 = !DISubroutineType(types: !201)
!201 = !{!187, !12, !12}
!202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !203, file: !41, line: 227)
!203 = !DISubprogram(name: "atoll", scope: !34, file: !34, line: 113, type: !204, flags: DIFlagPrototyped, spFlags: 0)
!204 = !DISubroutineType(types: !205)
!205 = !{!12, !65}
!206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !207, file: !41, line: 228)
!207 = !DISubprogram(name: "strtoll", scope: !34, file: !34, line: 201, type: !208, flags: DIFlagPrototyped, spFlags: 0)
!208 = !DISubroutineType(types: !209)
!209 = !{!12, !134, !161, !17}
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !211, file: !41, line: 229)
!211 = !DISubprogram(name: "strtoull", scope: !34, file: !34, line: 206, type: !212, flags: DIFlagPrototyped, spFlags: 0)
!212 = !DISubroutineType(types: !213)
!213 = !{!8, !134, !161, !17}
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !215, file: !41, line: 231)
!215 = !DISubprogram(name: "strtof", scope: !34, file: !34, line: 124, type: !216, flags: DIFlagPrototyped, spFlags: 0)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !134, !161}
!218 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !220, file: !41, line: 232)
!220 = !DISubprogram(name: "strtold", scope: !34, file: !34, line: 127, type: !221, flags: DIFlagPrototyped, spFlags: 0)
!221 = !DISubroutineType(types: !222)
!222 = !{!223, !134, !161}
!223 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !187, file: !41, line: 240)
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !193, file: !41, line: 242)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !195, file: !41, line: 244)
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !228, file: !41, line: 245)
!228 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !186, file: !41, line: 213, type: !200, flags: DIFlagPrototyped, spFlags: 0)
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !199, file: !41, line: 246)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !203, file: !41, line: 248)
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !215, file: !41, line: 249)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !207, file: !41, line: 250)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !211, file: !41, line: 251)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !220, file: !41, line: 252)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !50, file: !236, line: 38)
!236 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/stdlib.h", directory: "")
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !54, file: !236, line: 39)
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !99, file: !236, line: 40)
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !59, file: !236, line: 43)
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !144, file: !236, line: 46)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !39, file: !236, line: 51)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !43, file: !236, line: 52)
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !244, file: !236, line: 54)
!244 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !32, file: !37, line: 103, type: !245, flags: DIFlagPrototyped, spFlags: 0)
!245 = !DISubroutineType(types: !246)
!246 = !{!247, !247}
!247 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !61, file: !236, line: 55)
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !69, file: !236, line: 56)
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !73, file: !236, line: 57)
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !77, file: !236, line: 58)
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !91, file: !236, line: 59)
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !228, file: !236, line: 60)
!254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !103, file: !236, line: 61)
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !107, file: !236, line: 62)
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !112, file: !236, line: 63)
!257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !116, file: !236, line: 64)
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !120, file: !236, line: 65)
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !124, file: !236, line: 67)
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !128, file: !236, line: 68)
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !136, file: !236, line: 69)
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !140, file: !236, line: 71)
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !146, file: !236, line: 72)
!264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !150, file: !236, line: 73)
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !154, file: !236, line: 74)
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !158, file: !236, line: 75)
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !164, file: !236, line: 76)
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !168, file: !236, line: 77)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !172, file: !236, line: 78)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !174, file: !236, line: 80)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !182, file: !236, line: 81)
!272 = !{i32 7, !"Dwarf Version", i32 4}
!273 = !{i32 2, !"Debug Info Version", i32 3}
!274 = !{i32 1, !"wchar_size", i32 4}
!275 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!276 = distinct !DISubprogram(name: "shift64RightJamming", linkageName: "_Z19shift64RightJammingyiPy", scope: !21, file: !21, line: 60, type: !277, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !6, !279, !280}
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16", file: !7, line: 60, baseType: !17)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!281 = !DILocalVariable(name: "a", arg: 1, scope: !276, file: !21, line: 60, type: !6)
!282 = !DILocation(line: 0, scope: !276)
!283 = !DILocalVariable(name: "count", arg: 2, scope: !276, file: !21, line: 60, type: !279)
!284 = !DILocalVariable(name: "zPtr", arg: 3, scope: !276, file: !21, line: 60, type: !280)
!285 = !DILocation(line: 64, column: 13, scope: !286)
!286 = distinct !DILexicalBlock(scope: !276, file: !21, line: 64, column: 7)
!287 = !DILocation(line: 64, column: 7, scope: !276)
!288 = !DILocation(line: 68, column: 18, scope: !289)
!289 = distinct !DILexicalBlock(scope: !286, file: !21, line: 68, column: 12)
!290 = !DILocation(line: 68, column: 12, scope: !286)
!291 = !DILocation(line: 70, column: 14, scope: !292)
!292 = distinct !DILexicalBlock(scope: !289, file: !21, line: 69, column: 5)
!293 = !DILocation(line: 70, column: 35, scope: !292)
!294 = !DILocation(line: 70, column: 43, scope: !292)
!295 = !DILocation(line: 70, column: 30, scope: !292)
!296 = !DILocation(line: 70, column: 50, scope: !292)
!297 = !DILocation(line: 70, column: 26, scope: !292)
!298 = !DILocation(line: 70, column: 24, scope: !292)
!299 = !DILocalVariable(name: "z", scope: !276, file: !21, line: 62, type: !6)
!300 = !DILocation(line: 71, column: 5, scope: !292)
!301 = !DILocation(line: 0, scope: !286)
!302 = !DILocation(line: 76, column: 9, scope: !276)
!303 = !DILocation(line: 78, column: 1, scope: !276)
!304 = distinct !DISubprogram(name: "mul64To128", linkageName: "_Z10mul64To128yyPyS_", scope: !21, file: !21, line: 87, type: !305, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !6, !6, !280, !280}
!307 = !DILocalVariable(name: "a", arg: 1, scope: !304, file: !21, line: 87, type: !6)
!308 = !DILocation(line: 0, scope: !304)
!309 = !DILocalVariable(name: "b", arg: 2, scope: !304, file: !21, line: 87, type: !6)
!310 = !DILocalVariable(name: "z0Ptr", arg: 3, scope: !304, file: !21, line: 87, type: !280)
!311 = !DILocalVariable(name: "z1Ptr", arg: 4, scope: !304, file: !21, line: 87, type: !280)
!312 = !DILocalVariable(name: "aLow", scope: !304, file: !21, line: 89, type: !24)
!313 = !DILocation(line: 93, column: 13, scope: !304)
!314 = !DILocalVariable(name: "aHigh", scope: !304, file: !21, line: 89, type: !24)
!315 = !DILocalVariable(name: "bLow", scope: !304, file: !21, line: 89, type: !24)
!316 = !DILocation(line: 95, column: 13, scope: !304)
!317 = !DILocalVariable(name: "bHigh", scope: !304, file: !21, line: 89, type: !24)
!318 = !DILocation(line: 96, column: 18, scope: !304)
!319 = !DILocation(line: 96, column: 26, scope: !304)
!320 = !DILocation(line: 96, column: 24, scope: !304)
!321 = !DILocalVariable(name: "z1", scope: !304, file: !21, line: 90, type: !6)
!322 = !DILocation(line: 97, column: 30, scope: !304)
!323 = !DILocalVariable(name: "zMiddleA", scope: !304, file: !21, line: 90, type: !6)
!324 = !DILocation(line: 98, column: 31, scope: !304)
!325 = !DILocalVariable(name: "zMiddleB", scope: !304, file: !21, line: 90, type: !6)
!326 = !DILocation(line: 99, column: 25, scope: !304)
!327 = !DILocalVariable(name: "z0", scope: !304, file: !21, line: 90, type: !6)
!328 = !DILocation(line: 100, column: 12, scope: !304)
!329 = !DILocation(line: 101, column: 30, scope: !304)
!330 = !DILocation(line: 101, column: 43, scope: !304)
!331 = !DILocation(line: 101, column: 62, scope: !304)
!332 = !DILocation(line: 101, column: 50, scope: !304)
!333 = !DILocation(line: 101, column: 6, scope: !304)
!334 = !DILocation(line: 102, column: 12, scope: !304)
!335 = !DILocation(line: 103, column: 6, scope: !304)
!336 = !DILocation(line: 105, column: 10, scope: !304)
!337 = !DILocation(line: 106, column: 10, scope: !304)
!338 = !DILocation(line: 108, column: 1, scope: !304)
!339 = distinct !DISubprogram(name: "float_raise", linkageName: "_Z11float_raisei", scope: !340, file: !340, line: 64, type: !341, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!340 = !DIFile(filename: "dfmul/include/softfloat-specialize", directory: "/home/pei/Project/Noisy-lang-compiler/applications/newton/llvm-ir/CHStone_test")
!341 = !DISubroutineType(types: !342)
!342 = !{null, !16}
!343 = !DILocalVariable(name: "flags", arg: 1, scope: !339, file: !340, line: 64, type: !16)
!344 = !DILocation(line: 0, scope: !339)
!345 = !DILocation(line: 66, column: 25, scope: !339)
!346 = !DILocation(line: 68, column: 1, scope: !339)
!347 = distinct !DISubprogram(name: "float64_is_nan", linkageName: "_Z14float64_is_nany", scope: !340, file: !340, line: 81, type: !348, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!348 = !DISubroutineType(types: !349)
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "flag", file: !7, line: 58, baseType: !17)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "float64", file: !352, line: 54, baseType: !8)
!352 = !DIFile(filename: "dfmul/include/softfloat.h", directory: "/home/pei/Project/Noisy-lang-compiler/applications/newton/llvm-ir/CHStone_test")
!353 = !DILocalVariable(name: "a", arg: 1, scope: !347, file: !340, line: 81, type: !351)
!354 = !DILocation(line: 0, scope: !347)
!355 = !DILocation(line: 84, column: 3, scope: !347)
!356 = distinct !DISubprogram(name: "float64_is_signaling_nan", linkageName: "_Z24float64_is_signaling_nany", scope: !340, file: !340, line: 94, type: !348, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!357 = !DILocalVariable(name: "a", arg: 1, scope: !356, file: !340, line: 94, type: !351)
!358 = !DILocation(line: 0, scope: !356)
!359 = !DILocation(line: 97, column: 3, scope: !356)
!360 = distinct !DISubprogram(name: "extractFloat64Frac", scope: !3, file: !3, line: 89, type: !361, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!361 = !DISubroutineType(types: !362)
!362 = !{!6, !351}
!363 = !DILocalVariable(name: "a", arg: 1, scope: !360, file: !3, line: 89, type: !351)
!364 = !DILocation(line: 0, scope: !360)
!365 = !DILocation(line: 90, column: 12, scope: !360)
!366 = !DILocation(line: 90, column: 3, scope: !360)
!367 = distinct !DISubprogram(name: "extractFloat64Exp", scope: !3, file: !3, line: 103, type: !368, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!368 = !DISubroutineType(types: !369)
!369 = !{!279, !351}
!370 = !DILocalVariable(name: "a", arg: 1, scope: !367, file: !3, line: 103, type: !351)
!371 = !DILocation(line: 0, scope: !367)
!372 = !DILocation(line: 104, column: 13, scope: !367)
!373 = !DILocation(line: 104, column: 10, scope: !367)
!374 = !DILocation(line: 104, column: 3, scope: !367)
!375 = distinct !DISubprogram(name: "extractFloat64Sign", scope: !3, file: !3, line: 117, type: !348, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!376 = !DILocalVariable(name: "a", arg: 1, scope: !375, file: !3, line: 117, type: !351)
!377 = !DILocation(line: 0, scope: !375)
!378 = !DILocation(line: 118, column: 12, scope: !375)
!379 = !DILocation(line: 118, column: 10, scope: !375)
!380 = !DILocation(line: 118, column: 3, scope: !375)
!381 = distinct !DISubprogram(name: "normalizeFloat64Subnormal", scope: !3, file: !3, line: 133, type: !382, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !6, !384, !280}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!385 = !DILocalVariable(name: "aSig", arg: 1, scope: !381, file: !3, line: 133, type: !6)
!386 = !DILocation(line: 0, scope: !381)
!387 = !DILocalVariable(name: "zExpPtr", arg: 2, scope: !381, file: !3, line: 133, type: !384)
!388 = !DILocalVariable(name: "zSigPtr", arg: 3, scope: !381, file: !3, line: 133, type: !280)
!389 = !DILocation(line: 136, column: 16, scope: !381)
!390 = !DILocation(line: 136, column: 43, scope: !381)
!391 = !DILocalVariable(name: "shiftCount", scope: !381, file: !3, line: 134, type: !16)
!392 = !DILocation(line: 137, column: 19, scope: !381)
!393 = !DILocation(line: 137, column: 12, scope: !381)
!394 = !DILocation(line: 138, column: 16, scope: !381)
!395 = !DILocation(line: 138, column: 12, scope: !381)
!396 = !DILocation(line: 140, column: 1, scope: !381)
!397 = distinct !DISubprogram(name: "countLeadingZeros64", linkageName: "_ZL19countLeadingZeros64y", scope: !21, file: !21, line: 160, type: !398, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!398 = !DISubroutineType(types: !399)
!399 = !{!16, !6}
!400 = !DILocalVariable(name: "a", arg: 1, scope: !397, file: !21, line: 160, type: !6)
!401 = !DILocation(line: 0, scope: !397)
!402 = !DILocalVariable(name: "shiftCount", scope: !397, file: !21, line: 162, type: !16)
!403 = !DILocation(line: 173, column: 38, scope: !397)
!404 = !DILocation(line: 173, column: 17, scope: !397)
!405 = !DILocation(line: 173, column: 14, scope: !397)
!406 = !DILocation(line: 174, column: 3, scope: !397)
!407 = distinct !DISubprogram(name: "packFloat64", scope: !3, file: !3, line: 159, type: !408, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!408 = !DISubroutineType(types: !409)
!409 = !{!351, !350, !279, !6}
!410 = !DILocalVariable(name: "zSign", arg: 1, scope: !407, file: !3, line: 159, type: !350)
!411 = !DILocation(line: 0, scope: !407)
!412 = !DILocalVariable(name: "zExp", arg: 2, scope: !407, file: !3, line: 159, type: !279)
!413 = !DILocalVariable(name: "zSig", arg: 3, scope: !407, file: !3, line: 159, type: !6)
!414 = !DILocation(line: 160, column: 21, scope: !407)
!415 = !DILocation(line: 160, column: 28, scope: !407)
!416 = !DILocation(line: 160, column: 48, scope: !407)
!417 = !DILocation(line: 160, column: 54, scope: !407)
!418 = !DILocation(line: 160, column: 35, scope: !407)
!419 = !DILocation(line: 160, column: 61, scope: !407)
!420 = !DILocation(line: 160, column: 3, scope: !407)
!421 = distinct !DISubprogram(name: "roundAndPackFloat64", scope: !3, file: !3, line: 190, type: !408, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!422 = !DILocalVariable(name: "zSign", arg: 1, scope: !421, file: !3, line: 190, type: !350)
!423 = !DILocation(line: 0, scope: !421)
!424 = !DILocalVariable(name: "zExp", arg: 2, scope: !421, file: !3, line: 190, type: !279)
!425 = !DILocalVariable(name: "zSig", arg: 3, scope: !421, file: !3, line: 190, type: !6)
!426 = !DILocation(line: 195, column: 18, scope: !421)
!427 = !DILocalVariable(name: "roundingMode", scope: !421, file: !3, line: 191, type: !16)
!428 = !DILocation(line: 196, column: 36, scope: !421)
!429 = !DILocalVariable(name: "roundNearestEven", scope: !421, file: !3, line: 192, type: !350)
!430 = !DILocalVariable(name: "roundIncrement", scope: !421, file: !3, line: 193, type: !279)
!431 = !DILocation(line: 198, column: 7, scope: !421)
!432 = !DILocation(line: 200, column: 24, scope: !433)
!433 = distinct !DILexicalBlock(scope: !434, file: !3, line: 200, column: 11)
!434 = distinct !DILexicalBlock(scope: !435, file: !3, line: 199, column: 5)
!435 = distinct !DILexicalBlock(scope: !421, file: !3, line: 198, column: 7)
!436 = !DILocation(line: 200, column: 11, scope: !434)
!437 = !DILocation(line: 207, column: 8, scope: !438)
!438 = distinct !DILexicalBlock(scope: !439, file: !3, line: 207, column: 8)
!439 = distinct !DILexicalBlock(scope: !433, file: !3, line: 205, column: 2)
!440 = !DILocation(line: 207, column: 8, scope: !439)
!441 = !DILocalVariable(name: "roundBits", scope: !421, file: !3, line: 193, type: !279)
!442 = !DILocation(line: 220, column: 16, scope: !443)
!443 = distinct !DILexicalBlock(scope: !421, file: !3, line: 220, column: 7)
!444 = !DILocation(line: 220, column: 13, scope: !443)
!445 = !DILocation(line: 220, column: 7, scope: !421)
!446 = !DILocation(line: 222, column: 18, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !3, line: 222, column: 11)
!448 = distinct !DILexicalBlock(scope: !443, file: !3, line: 221, column: 5)
!449 = !DILocation(line: 223, column: 4, scope: !447)
!450 = !DILocation(line: 228, column: 16, scope: !451)
!451 = distinct !DILexicalBlock(scope: !448, file: !3, line: 228, column: 11)
!452 = !DILocation(line: 228, column: 11, scope: !448)
!453 = !DILocation(line: 225, column: 4, scope: !454)
!454 = distinct !DILexicalBlock(scope: !447, file: !3, line: 224, column: 2)
!455 = !DILocation(line: 0, scope: !407, inlinedAt: !456)
!456 = distinct !DILocation(line: 226, column: 11, scope: !454)
!457 = !DILocation(line: 160, column: 21, scope: !407, inlinedAt: !456)
!458 = !DILocation(line: 160, column: 28, scope: !407, inlinedAt: !456)
!459 = !DILocation(line: 160, column: 35, scope: !407, inlinedAt: !456)
!460 = !DILocation(line: 226, column: 59, scope: !454)
!461 = !DILocation(line: 226, column: 43, scope: !454)
!462 = !DILocation(line: 226, column: 41, scope: !454)
!463 = !DILocation(line: 226, column: 4, scope: !454)
!464 = !DILocalVariable(name: "isTiny", scope: !421, file: !3, line: 192, type: !350)
!465 = !DILocation(line: 233, column: 31, scope: !466)
!466 = distinct !DILexicalBlock(scope: !451, file: !3, line: 229, column: 2)
!467 = !DILocation(line: 233, column: 4, scope: !466)
!468 = !DILocation(line: 235, column: 16, scope: !466)
!469 = !DILocation(line: 236, column: 8, scope: !466)
!470 = !DILocation(line: 240, column: 7, scope: !471)
!471 = distinct !DILexicalBlock(scope: !421, file: !3, line: 240, column: 7)
!472 = !DILocation(line: 240, column: 7, scope: !421)
!473 = !DILocation(line: 241, column: 27, scope: !471)
!474 = !DILocation(line: 241, column: 5, scope: !471)
!475 = !DILocation(line: 242, column: 16, scope: !421)
!476 = !DILocation(line: 242, column: 34, scope: !421)
!477 = !DILocation(line: 243, column: 34, scope: !421)
!478 = !DILocation(line: 243, column: 40, scope: !421)
!479 = !DILocation(line: 243, column: 11, scope: !421)
!480 = !DILocation(line: 243, column: 8, scope: !421)
!481 = !DILocation(line: 0, scope: !407, inlinedAt: !482)
!482 = distinct !DILocation(line: 246, column: 10, scope: !421)
!483 = !DILocation(line: 160, column: 21, scope: !407, inlinedAt: !482)
!484 = !DILocation(line: 160, column: 28, scope: !407, inlinedAt: !482)
!485 = !DILocation(line: 160, column: 61, scope: !407, inlinedAt: !482)
!486 = !DILocation(line: 246, column: 3, scope: !421)
!487 = !DILocation(line: 248, column: 1, scope: !421)
!488 = distinct !DISubprogram(name: "float64_mul", scope: !3, file: !3, line: 265, type: !489, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!489 = !DISubroutineType(types: !490)
!490 = !{!351, !491, !492}
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "bmx055xAcceleration", file: !3, line: 262, baseType: !351)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "bmx055yAcceleration", file: !3, line: 263, baseType: !351)
!493 = !DILocalVariable(name: "a", arg: 1, scope: !488, file: !3, line: 265, type: !491)
!494 = !DILocation(line: 0, scope: !488)
!495 = !DILocalVariable(name: "b", arg: 2, scope: !488, file: !3, line: 265, type: !492)
!496 = !DILocation(line: 0, scope: !360, inlinedAt: !497)
!497 = distinct !DILocation(line: 270, column: 10, scope: !488)
!498 = !DILocation(line: 90, column: 12, scope: !360, inlinedAt: !497)
!499 = !DILocalVariable(name: "aSig", scope: !488, file: !3, line: 268, type: !6)
!500 = !DILocation(line: 270, column: 8, scope: !488)
!501 = !DILocation(line: 0, scope: !367, inlinedAt: !502)
!502 = distinct !DILocation(line: 271, column: 10, scope: !488)
!503 = !DILocation(line: 104, column: 13, scope: !367, inlinedAt: !502)
!504 = !DILocation(line: 104, column: 10, scope: !367, inlinedAt: !502)
!505 = !DILocalVariable(name: "aExp", scope: !488, file: !3, line: 267, type: !279)
!506 = !DILocation(line: 271, column: 8, scope: !488)
!507 = !DILocalVariable(name: "aSign", scope: !488, file: !3, line: 266, type: !350)
!508 = !DILocation(line: 0, scope: !360, inlinedAt: !509)
!509 = distinct !DILocation(line: 273, column: 10, scope: !488)
!510 = !DILocation(line: 90, column: 12, scope: !360, inlinedAt: !509)
!511 = !DILocalVariable(name: "bSig", scope: !488, file: !3, line: 268, type: !6)
!512 = !DILocation(line: 273, column: 8, scope: !488)
!513 = !DILocation(line: 0, scope: !367, inlinedAt: !514)
!514 = distinct !DILocation(line: 274, column: 10, scope: !488)
!515 = !DILocation(line: 104, column: 13, scope: !367, inlinedAt: !514)
!516 = !DILocation(line: 104, column: 10, scope: !367, inlinedAt: !514)
!517 = !DILocalVariable(name: "bExp", scope: !488, file: !3, line: 267, type: !279)
!518 = !DILocation(line: 274, column: 8, scope: !488)
!519 = !DILocalVariable(name: "bSign", scope: !488, file: !3, line: 266, type: !350)
!520 = !DILocation(line: 276, column: 17, scope: !488)
!521 = !DILocalVariable(name: "zSign", scope: !488, file: !3, line: 266, type: !350)
!522 = !DILocation(line: 303, column: 7, scope: !523)
!523 = distinct !DILexicalBlock(scope: !524, file: !3, line: 300, column: 5)
!524 = distinct !DILexicalBlock(scope: !488, file: !3, line: 299, column: 7)
!525 = !DILocation(line: 309, column: 7, scope: !526)
!526 = distinct !DILexicalBlock(scope: !527, file: !3, line: 306, column: 5)
!527 = distinct !DILexicalBlock(scope: !488, file: !3, line: 305, column: 7)
!528 = !DILocation(line: 311, column: 10, scope: !488)
!529 = !DILocation(line: 311, column: 17, scope: !488)
!530 = !DILocalVariable(name: "zExp", scope: !488, file: !3, line: 267, type: !279)
!531 = !DILocation(line: 312, column: 11, scope: !488)
!532 = !DILocation(line: 312, column: 46, scope: !488)
!533 = !DILocation(line: 313, column: 11, scope: !488)
!534 = !DILocation(line: 313, column: 46, scope: !488)
!535 = !DILocalVariable(name: "zSig0", scope: !488, file: !3, line: 268, type: !6)
!536 = !DILocalVariable(name: "zSig1", scope: !488, file: !3, line: 268, type: !6)
!537 = !DILocation(line: 314, column: 3, scope: !488)
!538 = !DILocation(line: 315, column: 13, scope: !488)
!539 = !DILocation(line: 315, column: 19, scope: !488)
!540 = !DILocation(line: 315, column: 12, scope: !488)
!541 = !DILocation(line: 315, column: 9, scope: !488)
!542 = !DILocation(line: 316, column: 29, scope: !543)
!543 = distinct !DILexicalBlock(scope: !488, file: !3, line: 316, column: 7)
!544 = !DILocation(line: 311, column: 15, scope: !488)
!545 = !DILocation(line: 319, column: 7, scope: !546)
!546 = distinct !DILexicalBlock(scope: !543, file: !3, line: 317, column: 5)
!547 = !DILocation(line: 321, column: 10, scope: !488)
!548 = !DILocation(line: 323, column: 1, scope: !488)
!549 = !DILocalVariable(name: "a", arg: 1, scope: !20, file: !21, line: 116, type: !24)
!550 = !DILocation(line: 0, scope: !20)
!551 = !DILocalVariable(name: "shiftCount", scope: !20, file: !21, line: 136, type: !16)
!552 = !DILocation(line: 139, column: 9, scope: !553)
!553 = distinct !DILexicalBlock(scope: !20, file: !21, line: 139, column: 7)
!554 = !DILocation(line: 139, column: 7, scope: !20)
!555 = !DILocation(line: 144, column: 9, scope: !556)
!556 = distinct !DILexicalBlock(scope: !20, file: !21, line: 144, column: 7)
!557 = !DILocation(line: 144, column: 7, scope: !20)
!558 = !DILocation(line: 149, column: 41, scope: !20)
!559 = !DILocation(line: 149, column: 17, scope: !20)
!560 = !DILocation(line: 149, column: 14, scope: !20)
!561 = !DILocation(line: 150, column: 3, scope: !20)
