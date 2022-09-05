export const diffStr = `diff --git a/before.ll b/after.ll
index f41f610..ead0c1d 100644
--- a/before.ll
+++ b/after.ll
@@ -1,4 +1,4 @@
-; ModuleID = '../float64_mul.ll'
+; ModuleID = '../float64_mul_output.ll'
 source_filename = "dfmul/float64_mul.cpp"
 target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
 target triple = "x86_64-pc-linux-gnu"
@@ -13,7 +13,7 @@ define dso_local void @_Z19shift64RightJammingyiPy(i64 %0, i32 %1, i64* nocaptur
   call void @llvm.dbg.value(metadata i32 %1, metadata !283, metadata !DIExpression()), !dbg !282
   call void @llvm.dbg.value(metadata i64* %2, metadata !284, metadata !DIExpression()), !dbg !282
   %4 = icmp eq i32 %1, 0, !dbg !285
-  br i1 %4, label %20, label %5, !dbg !287
+  br i1 %4, label %17, label %5, !dbg !287
 
 5:                                                ; preds = %3
   %6 = icmp slt i32 %1, 64, !dbg !288
@@ -30,579 +30,361 @@ define dso_local void @_Z19shift64RightJammingyiPy(i64 %0, i32 %1, i64* nocaptur
   %15 = zext i1 %14 to i64, !dbg !297
   %16 = or i64 %9, %15, !dbg !298
   call void @llvm.dbg.value(metadata i64 %16, metadata !299, metadata !DIExpression()), !dbg !282
-  br label %20, !dbg !300
+  br label %17, !dbg !300
 
-17:                                               ; preds = %5
-  %18 = icmp ne i64 %0, 0, !dbg !301
-  %19 = zext i1 %18 to i64, !dbg !303
-  call void @llvm.dbg.value(metadata i64 %19, metadata !299, metadata !DIExpression()), !dbg !282
-  br label %20
-
-20:                                               ; preds = %7, %17, %3
-  %.1 = phi i64 [ %0, %3 ], [ %16, %7 ], [ %19, %17 ], !dbg !304
+17:                                               ; preds = %5, %7, %3
+  %.1 = phi i64 [ %0, %3 ], [ %16, %7 ], [ 0, %5 ], !dbg !301
   call void @llvm.dbg.value(metadata i64 %.1, metadata !299, metadata !DIExpression()), !dbg !282
-  store i64 %.1, i64* %2, align 8, !dbg !305
-  ret void, !dbg !306
+  store i64 %.1, i64* %2, align 8, !dbg !302
+  ret void, !dbg !303
 }
 
 ; Function Attrs: nofree noinline norecurse nounwind uwtable willreturn writeonly mustprogress
-define dso_local void @_Z10mul64To128yyPyS_(i64 %0, i64 %1, i64* nocapture %2, i64* nocapture %3) local_unnamed_addr #0 !dbg !307 {
-  call void @llvm.dbg.value(metadata i64 %0, metadata !310, metadata !DIExpression()), !dbg !311
-  call void @llvm.dbg.value(metadata i64 %1, metadata !312, metadata !DIExpression()), !dbg !311
-  call void @llvm.dbg.value(metadata i64* %2, metadata !313, metadata !DIExpression()), !dbg !311
-  call void @llvm.dbg.value(metadata i64* %3, metadata !314, metadata !DIExpression()), !dbg !311
-  call void @llvm.dbg.value(metadata i64 %0, metadata !315, metadata !DIExpression()), !dbg !311
-  %5 = lshr i64 %0, 32, !dbg !316
-  call void @llvm.dbg.value(metadata i64 %5, metadata !317, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !311
-  call void @llvm.dbg.value(metadata i64 %1, metadata !318, metadata !DIExpression()), !dbg !311
-  %6 = lshr i64 %1, 32, !dbg !319
-  call void @llvm.dbg.value(metadata i64 %6, metadata !320, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !311
-  %7 = and i64 %0, 4294967295, !dbg !321
-  %8 = and i64 %1, 4294967295, !dbg !322
-  %9 = mul nuw i64 %8, %7, !dbg !323
-  call void @llvm.dbg.value(metadata i64 %9, metadata !324, metadata !DIExpression()), !dbg !311
-  %10 = mul nuw i64 %6, %7, !dbg !325
-  call void @llvm.dbg.value(metadata i64 %10, metadata !326, metadata !DIExpression()), !dbg !311
-  %11 = mul nuw i64 %8, %5, !dbg !327
-  call void @llvm.dbg.value(metadata i64 %11, metadata !328, metadata !DIExpression()), !dbg !311
-  %12 = mul nuw i64 %6, %5, !dbg !329
-  call void @llvm.dbg.value(metadata i64 %12, metadata !330, metadata !DIExpression()), !dbg !311
-  %13 = add i64 %10, %11, !dbg !331
-  call void @llvm.dbg.value(metadata i64 %13, metadata !326, metadata !DIExpression()), !dbg !311
-  %14 = icmp ult i64 %13, %11, !dbg !332
-  %15 = select i1 %14, i64 4294967296, i64 0, !dbg !333
-  %16 = lshr i64 %13, 32, !dbg !334
-  call void @llvm.dbg.value(metadata i64 undef, metadata !330, metadata !DIExpression()), !dbg !311
-  %17 = shl i64 %13, 32, !dbg !335
-  call void @llvm.dbg.value(metadata i64 %17, metadata !326, metadata !DIExpression()), !dbg !311
-  %18 = add i64 %17, %9, !dbg !336
-  call void @llvm.dbg.value(metadata i64 %18, metadata !324, metadata !DIExpression()), !dbg !311
-  %19 = icmp ult i64 %18, %17, !dbg !337
-  %20 = zext i1 %19 to i64, !dbg !338
-  %21 = add nuw i64 %16, %12, !dbg !339
-  %22 = add i64 %21, %15, !dbg !340
-  %23 = add i64 %22, %20, !dbg !341
-  call void @llvm.dbg.value(metadata i64 %23, metadata !330, metadata !DIExpression()), !dbg !311
-  store i64 %18, i64* %3, align 8, !dbg !342
-  store i64 %23, i64* %2, align 8, !dbg !343
-  ret void, !dbg !344
+define dso_local void @_Z10mul64To128yyPyS_(i64 %0, i64 %1, i64* nocapture %2, i64* nocapture %3) local_unnamed_addr #0 !dbg !304 {
+  call void @llvm.dbg.value(metadata i64 %0, metadata !307, metadata !DIExpression()), !dbg !308
+  call void @llvm.dbg.value(metadata i64 %1, metadata !309, metadata !DIExpression()), !dbg !308
+  call void @llvm.dbg.value(metadata i64* %2, metadata !310, metadata !DIExpression()), !dbg !308
+  call void @llvm.dbg.value(metadata i64* %3, metadata !311, metadata !DIExpression()), !dbg !308
+  call void @llvm.dbg.value(metadata i64 %0, metadata !312, metadata !DIExpression()), !dbg !308
+  %5 = lshr i64 %0, 32, !dbg !313
+  call void @llvm.dbg.value(metadata i64 %5, metadata !314, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !308
+  call void @llvm.dbg.value(metadata i64 %1, metadata !315, metadata !DIExpression()), !dbg !308
+  %6 = lshr i64 %1, 32, !dbg !316
+  call void @llvm.dbg.value(metadata i64 %6, metadata !317, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !308
+  %7 = and i64 %0, 4294967295, !dbg !318
+  %8 = and i64 %1, 4294967295, !dbg !319
+  %9 = mul nuw i64 %8, %7, !dbg !320
+  call void @llvm.dbg.value(metadata i64 %9, metadata !321, metadata !DIExpression()), !dbg !308
+  %10 = mul nuw i64 %6, %7, !dbg !322
+  call void @llvm.dbg.value(metadata i64 %10, metadata !323, metadata !DIExpression()), !dbg !308
+  %11 = mul nuw i64 %8, %5, !dbg !324
+  call void @llvm.dbg.value(metadata i64 %11, metadata !325, metadata !DIExpression()), !dbg !308
+  %12 = mul nuw i64 %6, %5, !dbg !326
+  call void @llvm.dbg.value(metadata i64 %12, metadata !327, metadata !DIExpression()), !dbg !308
+  %13 = add i64 %10, %11, !dbg !328
+  call void @llvm.dbg.value(metadata i64 %13, metadata !323, metadata !DIExpression()), !dbg !308
+  %14 = icmp ult i64 %13, %11, !dbg !329
+  %15 = select i1 %14, i64 4294967296, i64 0, !dbg !330
+  %16 = lshr i64 %13, 32, !dbg !331
+  %17 = add nuw i64 %16, %12, !dbg !332
+  %18 = add i64 %17, %15, !dbg !333
+  call void @llvm.dbg.value(metadata i64 %18, metadata !327, metadata !DIExpression()), !dbg !308
+  %19 = shl i64 %13, 32, !dbg !334
+  call void @llvm.dbg.value(metadata i64 %19, metadata !323, metadata !DIExpression()), !dbg !308
+  %20 = add i64 %19, %9, !dbg !335
+  call void @llvm.dbg.value(metadata i64 %20, metadata !321, metadata !DIExpression()), !dbg !308
+  call void @llvm.dbg.value(metadata i64 %18, metadata !327, metadata !DIExpression()), !dbg !308
+  store i64 %20, i64* %3, align 8, !dbg !336
+  store i64 %18, i64* %2, align 8, !dbg !337
+  ret void, !dbg !338
 }
 
 ; Function Attrs: nofree noinline norecurse nounwind uwtable willreturn mustprogress
-define dso_local void @_Z11float_raisei(i32 %0) local_unnamed_addr #1 !dbg !345 {
-  call void @llvm.dbg.value(metadata i32 %0, metadata !349, metadata !DIExpression()), !dbg !350
-  %2 = load i32, i32* @float_exception_flags, align 4, !dbg !351
-  %3 = or i32 %2, %0, !dbg !351
-  store i32 %3, i32* @float_exception_flags, align 4, !dbg !351
-  ret void, !dbg !352
+define dso_local void @_Z11float_raisei(i32 %0) local_unnamed_addr #1 !dbg !339 {
+  call void @llvm.dbg.value(metadata i32 %0, metadata !343, metadata !DIExpression()), !dbg !344
+  %2 = load i32, i32* @float_exception_flags, align 4, !dbg !345
+  %3 = or i32 %2, %0, !dbg !345
+  store i32 %3, i32* @float_exception_flags, align 4, !dbg !345
+  ret void, !dbg !346
 }
 
 ; Function Attrs: noinline norecurse nounwind readnone uwtable willreturn mustprogress
-define dso_local i32 @_Z14float64_is_nany(i64 %0) local_unnamed_addr #2 !dbg !353 {
-  call void @llvm.dbg.value(metadata i64 %0, metadata !359, metadata !DIExpression()), !dbg !360
-  %2 = shl i64 %0, 1, !dbg !361
-  %3 = icmp ugt i64 %2, -9007199254740992, !dbg !362
-  %4 = zext i1 %3 to i32, !dbg !363
-  ret i32 %4, !dbg !364
+define dso_local i32 @_Z14float64_is_nany(i64 %0) local_unnamed_addr #2 !dbg !347 {
+  call void @llvm.dbg.value(metadata i64 %0, metadata !353, metadata !DIExpression()), !dbg !354
+  ret i32 0, !dbg !355
 }
 
 ; Function Attrs: noinline norecurse nounwind readnone uwtable willreturn mustprogress
-define dso_local i32 @_Z24float64_is_signaling_nany(i64 %0) local_unnamed_addr #2 !dbg !365 {
-  call void @llvm.dbg.value(metadata i64 %0, metadata !366, metadata !DIExpression()), !dbg !367
-  %2 = and i64 %0, 9221120237041090560, !dbg !368
-  %3 = icmp eq i64 %2, 9218868437227405312, !dbg !368
-  %4 = and i64 %0, 2251799813685247, !dbg !369
-  %5 = icmp ne i64 %4, 0, !dbg !369
-  %6 = and i1 %3, %5, !dbg !369
-  %7 = zext i1 %6 to i32, !dbg !370
-  ret i32 %7, !dbg !371
+define dso_local i32 @_Z24float64_is_signaling_nany(i64 %0) local_unnamed_addr #2 !dbg !356 {
+  call void @llvm.dbg.value(metadata i64 %0, metadata !357, metadata !DIExpression()), !dbg !358
+  ret i32 0, !dbg !359
 }
 
 ; Function Attrs: alwaysinline norecurse nounwind readnone uwtable willreturn mustprogress
-define dso_local i64 @extractFloat64Frac(i64 %0) local_unnamed_addr #3 !dbg !372 {
-  call void @llvm.dbg.value(metadata i64 %0, metadata !375, metadata !DIExpression()), !dbg !376
-  %2 = and i64 %0, 4503599627370495, !dbg !377
-  ret i64 %2, !dbg !378
+define dso_local i64 @extractFloat64Frac(i64 %0) local_unnamed_addr #3 !dbg !360 {
+  call void @llvm.dbg.value(metadata i64 %0, metadata !363, metadata !DIExpression()), !dbg !364
+  %2 = and i64 %0, 4503599627370495, !dbg !365
+  ret i64 %2, !dbg !366
 }
 
 ; Function Attrs: alwaysinline norecurse nounwind readnone uwtable willreturn mustprogress
-define dso_local i32 @extractFloat64Exp(i64 %0) local_unnamed_addr #3 !dbg !379 {
-  call void @llvm.dbg.value(metadata i64 %0, metadata !382, metadata !DIExpression()), !dbg !383
-  %2 = lshr i64 %0, 52, !dbg !384
-  %3 = trunc i64 %2 to i32, !dbg !385
-  %4 = and i32 %3, 2047, !dbg !385
-  ret i32 %4, !dbg !386
+define dso_local i32 @extractFloat64Exp(i64 %0) local_unnamed_addr #3 !dbg !367 {
+  call void @llvm.dbg.value(metadata i64 %0, metadata !370, metadata !DIExpression()), !dbg !371
+  %2 = lshr i64 %0, 52, !dbg !372
+  %3 = trunc i64 %2 to i32, !dbg !373
+  %4 = and i32 %3, 2047, !dbg !373
+  ret i32 %4, !dbg !374
 }
 
 ; Function Attrs: alwaysinline norecurse nounwind readnone uwtable willreturn mustprogress
-define dso_local i32 @extractFloat64Sign(i64 %0) local_unnamed_addr #3 !dbg !387 {
-  call void @llvm.dbg.value(metadata i64 %0, metadata !388, metadata !DIExpression()), !dbg !389
-  %2 = lshr i64 %0, 63, !dbg !390
-  %3 = trunc i64 %2 to i32, !dbg !391
-  ret i32 %3, !dbg !392
+define dso_local i32 @extractFloat64Sign(i64 %0) local_unnamed_addr #3 !dbg !375 {
+  call void @llvm.dbg.value(metadata i64 %0, metadata !376, metadata !DIExpression()), !dbg !377
+  %2 = lshr i64 %0, 63, !dbg !378
+  %3 = trunc i64 %2 to i32, !dbg !379
+  ret i32 %3, !dbg !380
 }
 
 ; Function Attrs: nofree noinline norecurse nounwind uwtable willreturn writeonly mustprogress
-define dso_local void @normalizeFloat64Subnormal(i64 %0, i32* nocapture %1, i64* nocapture %2) local_unnamed_addr #0 !dbg !393 {
-  call void @llvm.dbg.value(metadata i64 %0, metadata !397, metadata !DIExpression()), !dbg !398
-  call void @llvm.dbg.value(metadata i32* %1, metadata !399, metadata !DIExpression()), !dbg !398
-  call void @llvm.dbg.value(metadata i64* %2, metadata !400, metadata !DIExpression()), !dbg !398
-  %4 = tail call fastcc i32 @_ZL19countLeadingZeros64y(i64 %0), !dbg !401
-  %5 = add nsw i32 %4, -11, !dbg !402
-  call void @llvm.dbg.value(metadata i32 %5, metadata !403, metadata !DIExpression()), !dbg !398
-  %6 = zext i32 %5 to i64, !dbg !404
-  %7 = shl i64 %0, %6, !dbg !404
-  store i64 %7, i64* %2, align 8, !dbg !405
-  %8 = sub i32 12, %4, !dbg !406
-  store i32 %8, i32* %1, align 4, !dbg !407
-  ret void, !dbg !408
+define dso_local void @normalizeFloat64Subnormal(i64 %0, i32* nocapture %1, i64* nocapture %2) local_unnamed_addr #0 !dbg !381 {
+  call void @llvm.dbg.value(metadata i64 %0, metadata !385, metadata !DIExpression()), !dbg !386
+  call void @llvm.dbg.value(metadata i32* %1, metadata !387, metadata !DIExpression()), !dbg !386
+  call void @llvm.dbg.value(metadata i64* %2, metadata !388, metadata !DIExpression()), !dbg !386
+  %4 = tail call fastcc i32 @_ZL19countLeadingZeros64y(i64 %0), !dbg !389
+  %5 = add nsw i32 %4, -11, !dbg !390
+  call void @llvm.dbg.value(metadata i32 %5, metadata !391, metadata !DIExpression()), !dbg !386
+  %6 = zext i32 %5 to i64, !dbg !392
+  %7 = shl i64 %0, %6, !dbg !392
+  store i64 %7, i64* %2, align 8, !dbg !393
+  %8 = sub i32 12, %4, !dbg !394
+  store i32 %8, i32* %1, align 4, !dbg !395
+  ret void, !dbg !396
 }
 
 ; Function Attrs: noinline norecurse nounwind readnone uwtable willreturn mustprogress
-define internal fastcc i32 @_ZL19countLeadingZeros64y(i64 %0) unnamed_addr #2 !dbg !409 {
-  call void @llvm.dbg.value(metadata i64 %0, metadata !412, metadata !DIExpression()), !dbg !413
-  call void @llvm.dbg.value(metadata i32 0, metadata !414, metadata !DIExpression()), !dbg !413
-  %2 = icmp ult i64 %0, 4294967296, !dbg !415
-  %3 = lshr i64 %0, 32, !dbg !417
-  %.01 = select i1 %2, i32 32, i32 0, !dbg !417
-  %.0 = select i1 %2, i64 %0, i64 %3, !dbg !417
-  call void @llvm.dbg.value(metadata i64 %.0, metadata !412, metadata !DIExpression()), !dbg !413
-  call void @llvm.dbg.value(metadata i32 %.01, metadata !414, metadata !DIExpression()), !dbg !413
-  %4 = trunc i64 %.0 to i32, !dbg !418
-  %5 = tail call fastcc i32 @_ZL19countLeadingZeros32j(i32 %4), !dbg !419
-  %6 = add nsw i32 %5, %.01, !dbg !420
-  call void @llvm.dbg.value(metadata i32 %6, metadata !414, metadata !DIExpression()), !dbg !413
-  ret i32 %6, !dbg !421
+define internal fastcc i32 @_ZL19countLeadingZeros64y(i64 %0) unnamed_addr #2 !dbg !397 {
+  call void @llvm.dbg.value(metadata i64 %0, metadata !400, metadata !DIExpression()), !dbg !401
+  call void @llvm.dbg.value(metadata i32 0, metadata !402, metadata !DIExpression()), !dbg !401
+  call void @llvm.dbg.value(metadata i32 32, metadata !402, metadata !DIExpression()), !dbg !401
+  call void @llvm.dbg.value(metadata i64 %0, metadata !400, metadata !DIExpression()), !dbg !401
+  call void @llvm.dbg.value(metadata i32 32, metadata !402, metadata !DIExpression()), !dbg !401
+  %2 = trunc i64 %0 to i32, !dbg !403
+  %3 = tail call fastcc i32 @_ZL19countLeadingZeros32j(i32 %2), !dbg !404
+  %4 = add nsw i32 %3, 32, !dbg !405
+  call void @llvm.dbg.value(metadata i32 %4, metadata !402, metadata !DIExpression()), !dbg !401
+  ret i32 %4, !dbg !406
 }
 
 ; Function Attrs: alwaysinline norecurse nounwind readnone uwtable willreturn mustprogress
-define dso_local i64 @packFloat64(i32 %0, i32 %1, i64 %2) local_unnamed_addr #3 !dbg !422 {
-  call void @llvm.dbg.value(metadata i32 %0, metadata !425, metadata !DIExpression()), !dbg !426
-  call void @llvm.dbg.value(metadata i32 %1, metadata !427, metadata !DIExpression()), !dbg !426
-  call void @llvm.dbg.value(metadata i64 %2, metadata !428, metadata !DIExpression()), !dbg !426
-  %4 = zext i32 %0 to i64, !dbg !429
-  %5 = shl i64 %4, 63, !dbg !430
-  %6 = zext i32 %1 to i64, !dbg !431
-  %7 = shl i64 %6, 52, !dbg !432
-  %8 = add i64 %5, %2, !dbg !433
-  %9 = add i64 %8, %7, !dbg !434
-  ret i64 %9, !dbg !435
+define dso_local i64 @packFloat64(i32 %0, i32 %1, i64 %2) local_unnamed_addr #3 !dbg !407 {
+  call void @llvm.dbg.value(metadata i32 %0, metadata !410, metadata !DIExpression()), !dbg !411
+  call void @llvm.dbg.value(metadata i32 %1, metadata !412, metadata !DIExpression()), !dbg !411
+  call void @llvm.dbg.value(metadata i64 %2, metadata !413, metadata !DIExpression()), !dbg !411
+  %4 = zext i32 %0 to i64, !dbg !414
+  %5 = shl i64 %4, 63, !dbg !415
+  %6 = zext i32 %1 to i64, !dbg !416
+  %7 = shl i64 %6, 52, !dbg !417
+  %8 = add i64 %5, %2, !dbg !418
+  %9 = add i64 %8, %7, !dbg !419
+  ret i64 %9, !dbg !420
 }
 
 ; Function Attrs: nofree noinline norecurse nounwind uwtable willreturn mustprogress
-define dso_local i64 @roundAndPackFloat64(i32 %0, i32 %1, i64 %2) local_unnamed_addr #1 !dbg !436 {
+define dso_local i64 @roundAndPackFloat64(i32 %0, i32 %1, i64 %2) local_unnamed_addr #1 !dbg !421 {
   %4 = alloca i64, align 8
-  call void @llvm.dbg.value(metadata i32 %0, metadata !437, metadata !DIExpression()), !dbg !438
-  call void @llvm.dbg.value(metadata i32 %1, metadata !439, metadata !DIExpression()), !dbg !438
-  call void @llvm.dbg.value(metadata i64 %2, metadata !440, metadata !DIExpression()), !dbg !438
+  call void @llvm.dbg.value(metadata i32 %0, metadata !422, metadata !DIExpression()), !dbg !423
+  call void @llvm.dbg.value(metadata i32 %1, metadata !424, metadata !DIExpression()), !dbg !423
+  call void @llvm.dbg.value(metadata i64 %2, metadata !425, metadata !DIExpression()), !dbg !423
   store i64 %2, i64* %4, align 8
-  %5 = load i32, i32* @float_rounding_mode, align 4, !dbg !441
-  call void @llvm.dbg.value(metadata i32 %5, metadata !442, metadata !DIExpression()), !dbg !438
-  %6 = icmp eq i32 %5, 0, !dbg !443
-  call void @llvm.dbg.value(metadata i1 %6, metadata !444, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !438
-  call void @llvm.dbg.value(metadata i32 512, metadata !445, metadata !DIExpression()), !dbg !438
-  br i1 %6, label %12, label %7, !dbg !446
+  %5 = load i32, i32* @float_rounding_mode, align 4, !dbg !426
+  call void @llvm.dbg.value(metadata i32 %5, metadata !427, metadata !DIExpression()), !dbg !423
+  %6 = icmp eq i32 %5, 0, !dbg !428
+  call void @llvm.dbg.value(metadata i1 %6, metadata !429, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !423
+  call void @llvm.dbg.value(metadata i32 512, metadata !430, metadata !DIExpression()), !dbg !423
+  br i1 %6, label %12, label %7, !dbg !431
 
 7:                                                ; preds = %3
-  %8 = icmp eq i32 %5, 1, !dbg !447
-  br i1 %8, label %12, label %9, !dbg !451
+  %8 = icmp eq i32 %5, 1, !dbg !432
+  br i1 %8, label %12, label %9, !dbg !436
 
 9:                                                ; preds = %7
-  call void @llvm.dbg.value(metadata i32 1023, metadata !445, metadata !DIExpression()), !dbg !438
-  %.not = icmp eq i32 %0, 0, !dbg !452
-  %10 = icmp eq i32 %5, 2, !dbg !455
-  %spec.select = select i1 %10, i32 0, i32 1023, !dbg !455
-  %11 = icmp eq i32 %5, 3, !dbg !455
-  %spec.select1 = select i1 %11, i32 0, i32 1023, !dbg !455
-  %.2 = select i1 %.not, i32 %spec.select1, i32 %spec.select, !dbg !455
-  br label %12, !dbg !455
+  call void @llvm.dbg.value(metadata i32 1023, metadata !430, metadata !DIExpression()), !dbg !423
+  %.not = icmp eq i32 %0, 0, !dbg !437
+  %10 = icmp eq i32 %5, 2, !dbg !440
+  %spec.select = select i1 %10, i32 0, i32 1023, !dbg !440
+  %11 = icmp eq i32 %5, 3, !dbg !440
+  %spec.select1 = select i1 %11, i32 0, i32 1023, !dbg !440
+  %.2 = select i1 %.not, i32 %spec.select1, i32 %spec.select, !dbg !440
+  br label %12, !dbg !440
 
 12:                                               ; preds = %7, %9, %3
-  %.4 = phi i32 [ 512, %3 ], [ 0, %7 ], [ %.2, %9 ], !dbg !438
-  call void @llvm.dbg.value(metadata i32 %.4, metadata !445, metadata !DIExpression()), !dbg !438
-  call void @llvm.dbg.value(metadata i64 %2, metadata !440, metadata !DIExpression()), !dbg !438
-  %13 = trunc i64 %2 to i32, !dbg !456
-  %14 = and i32 %13, 1023, !dbg !456
-  call void @llvm.dbg.value(metadata i32 %14, metadata !457, metadata !DIExpression()), !dbg !438
-  %15 = and i32 %1, 65535, !dbg !458
-  %16 = icmp ugt i32 %15, 2044, !dbg !460
-  br i1 %16, label %17, label %.thread, !dbg !461
-
-17:                                               ; preds = %12
-  %18 = icmp sgt i32 %1, 2045, !dbg !462
-  br i1 %18, label %25, label %19, !dbg !465
-
-19:                                               ; preds = %17
-  %20 = icmp eq i32 %1, 2045, !dbg !466
-  br i1 %20, label %21, label %31, !dbg !467
-
-21:                                               ; preds = %19
-  %22 = zext i32 %.4 to i64
-  %23 = add i64 %22, %2, !dbg !468
-  %24 = icmp slt i64 %23, 0, !dbg !469
-  br i1 %24, label %25, label %.thread, !dbg !470
-
-25:                                               ; preds = %21, %17
-  tail call void @_Z11float_raisei(i32 9), !dbg !471
-  call void @llvm.dbg.value(metadata i32 %0, metadata !425, metadata !DIExpression()), !dbg !473
-  call void @llvm.dbg.value(metadata i32 2047, metadata !427, metadata !DIExpression()), !dbg !473
-  call void @llvm.dbg.value(metadata i64 0, metadata !428, metadata !DIExpression()), !dbg !473
-  %26 = zext i32 %0 to i64, !dbg !475
-  %27 = shl i64 %26, 63, !dbg !476
-  %28 = or i64 %27, 9218868437227405312, !dbg !477
-  %29 = icmp eq i32 %.4, 0, !dbg !478
-  %.neg = sext i1 %29 to i64, !dbg !479
-  %30 = add i64 %28, %.neg, !dbg !480
-  br label %58, !dbg !481
-
-31:                                               ; preds = %19
-  %32 = icmp slt i32 %1, 0, !dbg !482
-  br i1 %32, label %33, label %.thread, !dbg !484
-
-33:                                               ; preds = %31
-  call void @llvm.dbg.value(metadata i32 1, metadata !485, metadata !DIExpression()), !dbg !438
-  call void @llvm.dbg.value(metadata i64 %2, metadata !440, metadata !DIExpression()), !dbg !438
-  %34 = sub nsw i32 0, %1, !dbg !486
-  call void @llvm.dbg.value(metadata i64* %4, metadata !440, metadata !DIExpression(DW_OP_deref)), !dbg !438
-  call void @_Z19shift64RightJammingyiPy(i64 %2, i32 %34, i64* nonnull %4), !dbg !488
-  call void @llvm.dbg.value(metadata i32 0, metadata !439, metadata !DIExpression()), !dbg !438
-  %35 = load i64, i64* %4, align 8, !dbg !489
-  call void @llvm.dbg.value(metadata i64 %35, metadata !440, metadata !DIExpression()), !dbg !438
-  %36 = trunc i64 %35 to i32, !dbg !489
-  %37 = and i32 %36, 1023, !dbg !489
-  call void @llvm.dbg.value(metadata i32 %37, metadata !457, metadata !DIExpression()), !dbg !438
-  %.not7 = icmp eq i32 %37, 0
-  br i1 %.not7, label %.thread8, label %.thread14, !dbg !490
-
-.thread14:                                        ; preds = %33
-  tail call void @_Z11float_raisei(i32 4), !dbg !492
-  call void @llvm.dbg.value(metadata i32 %14, metadata !457, metadata !DIExpression()), !dbg !438
-  call void @llvm.dbg.value(metadata i32 %1, metadata !439, metadata !DIExpression()), !dbg !438
-  br label %38, !dbg !493
-
-.thread:                                          ; preds = %21, %31, %12
-  call void @llvm.dbg.value(metadata i32 %14, metadata !457, metadata !DIExpression()), !dbg !438
-  call void @llvm.dbg.value(metadata i32 %1, metadata !439, metadata !DIExpression()), !dbg !438
-  %.not6 = icmp eq i32 %14, 0, !dbg !494
-  br i1 %.not6, label %.thread8, label %38, !dbg !493
-
-38:                                               ; preds = %.thread14, %.thread
-  %39 = phi i64 [ %35, %.thread14 ], [ %2, %.thread ]
-  %.119 = phi i32 [ %37, %.thread14 ], [ %14, %.thread ]
-  %.1418 = phi i32 [ 0, %.thread14 ], [ %1, %.thread ]
-  %40 = load i32, i32* @float_exception_flags, align 4, !dbg !496
-  %41 = or i32 %40, 1, !dbg !496
-  store i32 %41, i32* @float_exception_flags, align 4, !dbg !496
-  br label %.thread8, !dbg !497
-
-.thread8:                                         ; preds = %33, %38, %.thread
-  %42 = phi i64 [ %39, %38 ], [ %2, %.thread ], [ %35, %33 ], !dbg !498
-  %.113 = phi i32 [ %.119, %38 ], [ 0, %.thread ], [ 0, %33 ]
-  %.1412 = phi i32 [ %.1418, %38 ], [ %1, %.thread ], [ 0, %33 ]
-  call void @llvm.dbg.value(metadata i64 %42, metadata !440, metadata !DIExpression()), !dbg !438
-  %43 = zext i32 %.4 to i64
-  %44 = add i64 %42, %43, !dbg !499
-  %45 = lshr i64 %44, 10, !dbg !500
-  %46 = icmp eq i32 %.113, 512, !dbg !501
-  %47 = and i1 %6, %46, !dbg !502
-  %48 = zext i1 %47 to i64, !dbg !502
-  %49 = xor i64 %48, -1, !dbg !503
-  %50 = and i64 %45, %49, !dbg !504
-  call void @llvm.dbg.value(metadata i64 %50, metadata !440, metadata !DIExpression()), !dbg !438
-  store i64 %50, i64* %4, align 8, !dbg !504
-  %51 = icmp eq i64 %50, 0, !dbg !505
-  call void @llvm.dbg.value(metadata i32 undef, metadata !439, metadata !DIExpression()), !dbg !438
-  call void @llvm.dbg.value(metadata i32 %0, metadata !425, metadata !DIExpression()), !dbg !507
-  call void @llvm.dbg.value(metadata i32 undef, metadata !427, metadata !DIExpression()), !dbg !507
-  call void @llvm.dbg.value(metadata i64 %50, metadata !428, metadata !DIExpression()), !dbg !507
-  %52 = zext i32 %0 to i64, !dbg !509
-  %53 = shl i64 %52, 63, !dbg !510
-  %54 = zext i32 %.1412 to i64, !dbg !511
-  %.op = shl i64 %54, 52, !dbg !512
-  %55 = select i1 %51, i64 0, i64 %.op, !dbg !512
-  %56 = or i64 %50, %53, !dbg !513
-  %57 = add i64 %56, %55, !dbg !514
-  br label %58, !dbg !515
-
-58:                                               ; preds = %.thread8, %25
-  %.06 = phi i64 [ %30, %25 ], [ %57, %.thread8 ], !dbg !438
-  ret i64 %.06, !dbg !516
+  %.4 = phi i32 [ 512, %3 ], [ 0, %7 ], [ %.2, %9 ], !dbg !423
+  call void @llvm.dbg.value(metadata i32 %.4, metadata !430, metadata !DIExpression()), !dbg !423
+  call void @llvm.dbg.value(metadata i64 %2, metadata !425, metadata !DIExpression()), !dbg !423
+  call void @llvm.dbg.value(metadata i64 %2, metadata !441, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1023, DW_OP_and, DW_OP_stack_value)), !dbg !423
+  %13 = and i32 %1, 65535, !dbg !442
+  %14 = icmp ugt i32 %13, 2044, !dbg !444
+  br i1 %14, label %15, label %28, !dbg !445
+
+15:                                               ; preds = %12
+  %16 = icmp sgt i32 %1, 2045, !dbg !446
+  br i1 %16, label %19, label %17, !dbg !449
+
+17:                                               ; preds = %15
+  %18 = icmp slt i32 %1, 0, !dbg !450
+  br i1 %18, label %25, label %28, !dbg !452
+
+19:                                               ; preds = %15
+  tail call void @_Z11float_raisei(i32 9), !dbg !453
+  call void @llvm.dbg.value(metadata i32 %0, metadata !410, metadata !DIExpression()), !dbg !455
+  call void @llvm.dbg.value(metadata i32 2047, metadata !412, metadata !DIExpression()), !dbg !455
+  call void @llvm.dbg.value(metadata i64 0, metadata !413, metadata !DIExpression()), !dbg !455
+  %20 = zext i32 %0 to i64, !dbg !457
+  %21 = shl i64 %20, 63, !dbg !458
+  %22 = or i64 %21, 9218868437227405312, !dbg !459
+  %23 = icmp eq i32 %.4, 0, !dbg !460
+  %.neg = sext i1 %23 to i64, !dbg !461
+  %24 = add i64 %22, %.neg, !dbg !462
+  br label %45, !dbg !463
+
+25:                                               ; preds = %17
+  call void @llvm.dbg.value(metadata i32 1, metadata !464, metadata !DIExpression()), !dbg !423
+  call void @llvm.dbg.value(metadata i64 %2, metadata !425, metadata !DIExpression()), !dbg !423
+  %26 = sub nsw i32 0, %1, !dbg !465
+  call void @llvm.dbg.value(metadata i64* %4, metadata !425, metadata !DIExpression(DW_OP_deref)), !dbg !423
+  call void @_Z19shift64RightJammingyiPy(i64 %2, i32 %26, i64* nonnull %4), !dbg !467
+  call void @llvm.dbg.value(metadata i32 0, metadata !424, metadata !DIExpression()), !dbg !423
+  call void @llvm.dbg.value(metadata i64 undef, metadata !425, metadata !DIExpression()), !dbg !423
+  call void @llvm.dbg.value(metadata i64 undef, metadata !441, metadata !DIExpression(DW_OP_constu, 1023, DW_OP_and, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !423
+  %27 = load i64, i64* %4, align 8, !dbg !468
+  call void @llvm.dbg.value(metadata i64 %27, metadata !441, metadata !DIExpression(DW_OP_constu, 1023, DW_OP_and, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !423
+  call void @llvm.dbg.value(metadata i64 %27, metadata !425, metadata !DIExpression()), !dbg !423
+  call void @llvm.dbg.value(metadata i64 %27, metadata !441, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1023, DW_OP_and, DW_OP_stack_value)), !dbg !423
+  br label %28, !dbg !469
+
+28:                                               ; preds = %17, %25, %12
+  %29 = phi i64 [ %2, %12 ], [ %2, %17 ], [ %27, %25 ]
+  %.1.in = trunc i64 %29 to i32, !dbg !423
+  %.1 = and i32 %.1.in, 1023, !dbg !423
+  call void @llvm.dbg.value(metadata i32 %.1, metadata !441, metadata !DIExpression()), !dbg !423
+  call void @llvm.dbg.value(metadata i32 undef, metadata !424, metadata !DIExpression()), !dbg !423
+  %.not3 = icmp eq i32 %.1, 0, !dbg !470
+  br i1 %.not3, label %33, label %30, !dbg !472
+
+30:                                               ; preds = %28
+  %31 = load i32, i32* @float_exception_flags, align 4, !dbg !473
+  %32 = or i32 %31, 1, !dbg !473
+  store i32 %32, i32* @float_exception_flags, align 4, !dbg !473
+  br label %33, !dbg !474
+
+33:                                               ; preds = %30, %28
+  call void @llvm.dbg.value(metadata i64 %29, metadata !425, metadata !DIExpression()), !dbg !423
+  %34 = zext i32 %.4 to i64
+  %35 = add i64 %29, %34, !dbg !475
+  %36 = lshr i64 %35, 10, !dbg !476
+  %37 = icmp eq i32 %.1, 512, !dbg !477
+  %38 = and i1 %6, %37, !dbg !478
+  %39 = zext i1 %38 to i64, !dbg !478
+  %40 = xor i64 %39, -1, !dbg !479
+  %41 = and i64 %36, %40, !dbg !480
+  call void @llvm.dbg.value(metadata i64 %41, metadata !425, metadata !DIExpression()), !dbg !423
+  store i64 %41, i64* %4, align 8, !dbg !480
+  call void @llvm.dbg.value(metadata i32 0, metadata !424, metadata !DIExpression()), !dbg !423
+  call void @llvm.dbg.value(metadata i32 %0, metadata !410, metadata !DIExpression()), !dbg !481
+  call void @llvm.dbg.value(metadata i32 0, metadata !412, metadata !DIExpression()), !dbg !481
+  call void @llvm.dbg.value(metadata i64 %41, metadata !413, metadata !DIExpression()), !dbg !481
+  %42 = zext i32 %0 to i64, !dbg !483
+  %43 = shl i64 %42, 63, !dbg !484
+  %44 = or i64 %41, %43, !dbg !485
+  br label %45, !dbg !486
+
+45:                                               ; preds = %33, %19
+  %.06 = phi i64 [ %24, %19 ], [ %44, %33 ], !dbg !423
+  ret i64 %.06, !dbg !487
 }
 
 ; Function Attrs: nofree noinline norecurse nounwind uwtable willreturn mustprogress
-define dso_local i64 @float64_mul(i64 %0, i64 %1) local_unnamed_addr #1 !dbg !517 {
+define dso_local i64 @float64_mul(i64 %0, i64 %1) local_unnamed_addr #1 !dbg !488 {
   %3 = alloca i32, align 4
   %4 = alloca i32, align 4
   %5 = alloca i64, align 8
   %6 = alloca i64, align 8
   %7 = alloca i64, align 8
   %8 = alloca i64, align 8
-  call void @llvm.dbg.value(metadata i64 %0, metadata !522, metadata !DIExpression()), !dbg !523
-  call void @llvm.dbg.value(metadata i64 %1, metadata !524, metadata !DIExpression()), !dbg !523
-  call void @llvm.dbg.value(metadata i64 %0, metadata !375, metadata !DIExpression()), !dbg !525
-  %9 = and i64 %0, 4503599627370495, !dbg !527
-  call void @llvm.dbg.value(metadata i64 %9, metadata !528, metadata !DIExpression()), !dbg !523
-  store i64 %9, i64* %5, align 8, !dbg !529
-  call void @llvm.dbg.value(metadata i64 %0, metadata !382, metadata !DIExpression()), !dbg !530
-  %10 = lshr i64 %0, 52, !dbg !532
-  %11 = trunc i64 %10 to i32, !dbg !533
-  %12 = and i32 %11, 2047, !dbg !533
-  call void @llvm.dbg.value(metadata i32 %12, metadata !534, metadata !DIExpression()), !dbg !523
-  store i32 %12, i32* %3, align 4, !dbg !535
-  call void @llvm.dbg.value(metadata i64 %0, metadata !536, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !523
-  call void @llvm.dbg.value(metadata i64 %1, metadata !375, metadata !DIExpression()), !dbg !537
-  %13 = and i64 %1, 4503599627370495, !dbg !539
-  call void @llvm.dbg.value(metadata i64 %13, metadata !540, metadata !DIExpression()), !dbg !523
-  store i64 %13, i64* %6, align 8, !dbg !541
-  call void @llvm.dbg.value(metadata i64 %1, metadata !382, metadata !DIExpression()), !dbg !542
-  %14 = lshr i64 %1, 52, !dbg !544
-  %15 = trunc i64 %14 to i32, !dbg !545
-  %16 = and i32 %15, 2047, !dbg !545
-  call void @llvm.dbg.value(metadata i32 %16, metadata !546, metadata !DIExpression()), !dbg !523
-  store i32 %16, i32* %4, align 4, !dbg !547
-  call void @llvm.dbg.value(metadata i64 %1, metadata !548, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !523
-  %17 = xor i64 %1, %0, !dbg !549
-  %18 = lshr i64 %17, 63, !dbg !549
-  %19 = trunc i64 %18 to i32, !dbg !549
-  call void @llvm.dbg.value(metadata i32 %19, metadata !550, metadata !DIExpression()), !dbg !523
-  call void @llvm.dbg.value(metadata i32 %12, metadata !534, metadata !DIExpression()), !dbg !523
-  %20 = icmp eq i32 %12, 2047, !dbg !551
-  br i1 %20, label %21, label %35, !dbg !553
-
-21:                                               ; preds = %2
-  call void @llvm.dbg.value(metadata i64 %9, metadata !528, metadata !DIExpression()), !dbg !523
-  %.not6 = icmp eq i64 %9, 0, !dbg !554
-  br i1 %.not6, label %22, label %25, !dbg !557
-
-22:                                               ; preds = %21
-  %23 = icmp eq i32 %16, 2047, !dbg !558
-  call void @llvm.dbg.value(metadata i64 %13, metadata !540, metadata !DIExpression()), !dbg !523
-  %24 = icmp ne i64 %13, 0
-  %or.cond = and i1 %24, %23, !dbg !559
-  br i1 %or.cond, label %25, label %27, !dbg !559
-
-25:                                               ; preds = %22, %21
-  %26 = tail call fastcc i64 @_ZL19propagateFloat64NaNyy(i64 %0, i64 %1), !dbg !560
-  br label %85, !dbg !561
-
-27:                                               ; preds = %22
-  %28 = zext i32 %16 to i64
-  %29 = or i64 %13, %28, !dbg !562
-  %30 = icmp eq i64 %29, 0, !dbg !564
-  br i1 %30, label %31, label %32, !dbg !565
-
-31:                                               ; preds = %27
-  tail call void @_Z11float_raisei(i32 16), !dbg !566
-  br label %85, !dbg !568
-
-32:                                               ; preds = %27
-  call void @llvm.dbg.value(metadata i32 %19, metadata !425, metadata !DIExpression()), !dbg !569
-  call void @llvm.dbg.value(metadata i32 2047, metadata !427, metadata !DIExpression()), !dbg !569
-  call void @llvm.dbg.value(metadata i64 0, metadata !428, metadata !DIExpression()), !dbg !569
-  %33 = and i64 %17, -9223372036854775808, !dbg !571
-  %34 = or i64 %33, 9218868437227405312, !dbg !572
-  br label %85, !dbg !573
-
-35:                                               ; preds = %2
-  %36 = icmp eq i32 %16, 2047, !dbg !574
-  br i1 %36, label %37, label %48, !dbg !576
-
-37:                                               ; preds = %35
-  call void @llvm.dbg.value(metadata i64 %13, metadata !540, metadata !DIExpression()), !dbg !523
-  %.not = icmp eq i64 %13, 0, !dbg !577
-  br i1 %.not, label %40, label %38, !dbg !580
-
-38:                                               ; preds = %37
-  %39 = tail call fastcc i64 @_ZL19propagateFloat64NaNyy(i64 %0, i64 %1), !dbg !581
-  br label %85, !dbg !582
-
-40:                                               ; preds = %37
-  %41 = zext i32 %12 to i64, !dbg !583
-  call void @llvm.dbg.value(metadata i64 %9, metadata !528, metadata !DIExpression()), !dbg !523
-  %42 = or i64 %9, %41, !dbg !585
-  %43 = icmp eq i64 %42, 0, !dbg !586
-  br i1 %43, label %44, label %45, !dbg !587
-
-44:                                               ; preds = %40
-  tail call void @_Z11float_raisei(i32 16), !dbg !588
-  br label %85, !dbg !590
-
-45:                                               ; preds = %40
-  call void @llvm.dbg.value(metadata i32 %19, metadata !425, metadata !DIExpression()), !dbg !591
-  call void @llvm.dbg.value(metadata i32 2047, metadata !427, metadata !DIExpression()), !dbg !591
-  call void @llvm.dbg.value(metadata i64 0, metadata !428, metadata !DIExpression()), !dbg !591
-  %46 = and i64 %17, -9223372036854775808, !dbg !593
-  %47 = or i64 %46, 9218868437227405312, !dbg !594
-  br label %85, !dbg !595
-
-48:                                               ; preds = %35
-  %49 = icmp eq i32 %12, 0, !dbg !596
-  br i1 %49, label %50, label %55, !dbg !598
-
-50:                                               ; preds = %48
-  call void @llvm.dbg.value(metadata i64 %9, metadata !528, metadata !DIExpression()), !dbg !523
-  %51 = icmp eq i64 %9, 0, !dbg !599
-  br i1 %51, label %52, label %54, !dbg !602
-
-52:                                               ; preds = %50
-  call void @llvm.dbg.value(metadata i32 %19, metadata !425, metadata !DIExpression()), !dbg !603
-  call void @llvm.dbg.value(metadata i32 0, metadata !427, metadata !DIExpression()), !dbg !603
-  call void @llvm.dbg.value(metadata i64 0, metadata !428, metadata !DIExpression()), !dbg !603
-  %53 = and i64 %17, -9223372036854775808, !dbg !605
-  br label %85, !dbg !606
-
-54:                                               ; preds = %50
-  call void @llvm.dbg.value(metadata i32* %3, metadata !534, metadata !DIExpression(DW_OP_deref)), !dbg !523
-  call void @llvm.dbg.value(metadata i64* %5, metadata !528, metadata !DIExpression(DW_OP_deref)), !dbg !523
-  call void @normalizeFloat64Subnormal(i64 %9, i32* nonnull %3, i64* nonnull %5), !dbg !607
-  br label %55, !dbg !608
-
-55:                                               ; preds = %54, %48
-  call void @llvm.dbg.value(metadata i32 %16, metadata !546, metadata !DIExpression()), !dbg !523
-  %56 = icmp eq i32 %16, 0, !dbg !609
-  br i1 %56, label %57, label %62, !dbg !611
-
-57:                                               ; preds = %55
-  call void @llvm.dbg.value(metadata i64 %13, metadata !540, metadata !DIExpression()), !dbg !523
-  %58 = icmp eq i64 %13, 0, !dbg !612
-  br i1 %58, label %59, label %61, !dbg !615
-
-59:                                               ; preds = %57
-  call void @llvm.dbg.value(metadata i32 %19, metadata !425, metadata !DIExpression()), !dbg !616
-  call void @llvm.dbg.value(metadata i32 0, metadata !427, metadata !DIExpression()), !dbg !616
-  call void @llvm.dbg.value(metadata i64 0, metadata !428, metadata !DIExpression()), !dbg !616
-  %60 = and i64 %17, -9223372036854775808, !dbg !618
-  br label %85, !dbg !619
-
-61:                                               ; preds = %57
-  call void @llvm.dbg.value(metadata i32* %4, metadata !546, metadata !DIExpression(DW_OP_deref)), !dbg !523
-  call void @llvm.dbg.value(metadata i64* %6, metadata !540, metadata !DIExpression(DW_OP_deref)), !dbg !523
-  call void @normalizeFloat64Subnormal(i64 %13, i32* nonnull %4, i64* nonnull %6), !dbg !620
-  %.pre = load i32, i32* %4, align 4, !dbg !621
-  %.pre7 = load i64, i64* %6, align 8, !dbg !622
-  br label %62, !dbg !623
-
-62:                                               ; preds = %61, %55
-  %63 = phi i64 [ %.pre7, %61 ], [ %13, %55 ], !dbg !622
-  %64 = phi i32 [ %.pre, %61 ], [ %16, %55 ], !dbg !621
-  %65 = load i32, i32* %3, align 4, !dbg !624
-  call void @llvm.dbg.value(metadata i32 %65, metadata !534, metadata !DIExpression()), !dbg !523
-  call void @llvm.dbg.value(metadata i32 %64, metadata !546, metadata !DIExpression()), !dbg !523
-  %66 = add nsw i32 %64, %65, !dbg !625
-  %67 = add nsw i32 %66, -1023, !dbg !626
-  call void @llvm.dbg.value(metadata i32 %67, metadata !627, metadata !DIExpression()), !dbg !523
-  %68 = load i64, i64* %5, align 8, !dbg !628
-  call void @llvm.dbg.value(metadata i64 %68, metadata !528, metadata !DIExpression()), !dbg !523
-  %69 = shl i64 %68, 10, !dbg !629
-  %70 = or i64 %69, 4611686018427387904, !dbg !629
-  call void @llvm.dbg.value(metadata i64 %70, metadata !528, metadata !DIExpression()), !dbg !523
-  store i64 %70, i64* %5, align 8, !dbg !630
-  call void @llvm.dbg.value(metadata i64 %63, metadata !540, metadata !DIExpression()), !dbg !523
-  %71 = shl i64 %63, 11, !dbg !631
-  %72 = or i64 %71, -9223372036854775808, !dbg !631
-  call void @llvm.dbg.value(metadata i64 %72, metadata !540, metadata !DIExpression()), !dbg !523
-  store i64 %72, i64* %6, align 8, !dbg !632
-  call void @llvm.dbg.value(metadata i64 %70, metadata !528, metadata !DIExpression()), !dbg !523
-  call void @llvm.dbg.value(metadata i64* %7, metadata !633, metadata !DIExpression(DW_OP_deref)), !dbg !523
-  call void @llvm.dbg.value(metadata i64* %8, metadata !634, metadata !DIExpression(DW_OP_deref)), !dbg !523
-  call void @_Z10mul64To128yyPyS_(i64 %70, i64 %72, i64* nonnull %7, i64* nonnull %8), !dbg !635
-  %73 = load i64, i64* %8, align 8, !dbg !636
-  call void @llvm.dbg.value(metadata i64 %73, metadata !634, metadata !DIExpression()), !dbg !523
-  %74 = icmp ne i64 %73, 0, !dbg !637
-  %75 = zext i1 %74 to i64, !dbg !638
-  %76 = load i64, i64* %7, align 8, !dbg !639
-  call void @llvm.dbg.value(metadata i64 %76, metadata !633, metadata !DIExpression()), !dbg !523
-  %77 = or i64 %76, %75, !dbg !639
-  call void @llvm.dbg.value(metadata i64 %77, metadata !633, metadata !DIExpression()), !dbg !523
-  %78 = shl i64 %77, 1, !dbg !640
-  %79 = icmp sgt i64 %78, -1, !dbg !642
-  br i1 %79, label %80, label %82, !dbg !643
-
-80:                                               ; preds = %62
-  call void @llvm.dbg.value(metadata i64 %78, metadata !633, metadata !DIExpression()), !dbg !523
-  store i64 %78, i64* %7, align 8, !dbg !644
-  %81 = add nsw i32 %66, -1024, !dbg !646
-  call void @llvm.dbg.value(metadata i32 %81, metadata !627, metadata !DIExpression()), !dbg !523
-  br label %82, !dbg !647
-
-82:                                               ; preds = %80, %62
-  %83 = phi i64 [ %78, %80 ], [ %77, %62 ], !dbg !648
-  %.0 = phi i32 [ %81, %80 ], [ %67, %62 ], !dbg !523
-  call void @llvm.dbg.value(metadata i32 %.0, metadata !627, metadata !DIExpression()), !dbg !523
-  call void @llvm.dbg.value(metadata i64 %83, metadata !633, metadata !DIExpression()), !dbg !523
-  %84 = tail call i64 @roundAndPackFloat64(i32 %19, i32 %.0, i64 %83), !dbg !649
-  br label %85, !dbg !650
-
-85:                                               ; preds = %82, %59, %52, %45, %44, %38, %32, %31, %25
-  %.01 = phi i64 [ %26, %25 ], [ 9223372036854775807, %31 ], [ %34, %32 ], [ %39, %38 ], [ 9223372036854775807, %44 ], [ %47, %45 ], [ %53, %52 ], [ %60, %59 ], [ %84, %82 ], !dbg !523
-  ret i64 %.01, !dbg !651
-}
-
-; Function Attrs: nofree noinline norecurse nounwind uwtable willreturn mustprogress
-define internal fastcc i64 @_ZL19propagateFloat64NaNyy(i64 %0, i64 %1) unnamed_addr #1 !dbg !652 {
-  call void @llvm.dbg.value(metadata i64 %0, metadata !655, metadata !DIExpression()), !dbg !656
-  call void @llvm.dbg.value(metadata i64 %1, metadata !657, metadata !DIExpression()), !dbg !656
-  call void @llvm.dbg.value(metadata i32 undef, metadata !658, metadata !DIExpression()), !dbg !656
-  %3 = tail call i32 @_Z24float64_is_signaling_nany(i64 %0), !dbg !659
-  call void @llvm.dbg.value(metadata i32 %3, metadata !660, metadata !DIExpression()), !dbg !656
-  %4 = tail call i32 @_Z14float64_is_nany(i64 %1), !dbg !661
-  call void @llvm.dbg.value(metadata i32 %4, metadata !662, metadata !DIExpression()), !dbg !656
-  %5 = tail call i32 @_Z24float64_is_signaling_nany(i64 %1), !dbg !663
-  call void @llvm.dbg.value(metadata i32 %5, metadata !664, metadata !DIExpression()), !dbg !656
-  %6 = or i64 %0, 2251799813685248, !dbg !665
-  call void @llvm.dbg.value(metadata i64 %6, metadata !655, metadata !DIExpression()), !dbg !656
-  %7 = or i64 %1, 2251799813685248, !dbg !666
-  call void @llvm.dbg.value(metadata i64 %7, metadata !657, metadata !DIExpression()), !dbg !656
-  %8 = or i32 %5, %3, !dbg !667
-  %.not = icmp eq i32 %8, 0, !dbg !669
-  br i1 %.not, label %10, label %9, !dbg !670
-
-9:                                                ; preds = %2
-  tail call void @_Z11float_raisei(i32 16), !dbg !671
-  br label %10, !dbg !671
-
-10:                                               ; preds = %9, %2
-  %.not1 = icmp eq i32 %5, 0, !dbg !672
-  br i1 %.not1, label %11, label %14, !dbg !672
-
-11:                                               ; preds = %10
-  %.not2 = icmp eq i32 %3, 0, !dbg !673
-  br i1 %.not2, label %12, label %14, !dbg !673
-
-12:                                               ; preds = %11
-  %.not3 = icmp eq i32 %4, 0, !dbg !674
-  %13 = select i1 %.not3, i64 %6, i64 %7, !dbg !674
-  br label %14, !dbg !674
-
-14:                                               ; preds = %11, %12, %10
-  %15 = phi i64 [ %7, %10 ], [ %6, %11 ], [ %13, %12 ], !dbg !672
-  ret i64 %15, !dbg !675
+  call void @llvm.dbg.value(metadata i64 %0, metadata !493, metadata !DIExpression()), !dbg !494
+  call void @llvm.dbg.value(metadata i64 %1, metadata !495, metadata !DIExpression()), !dbg !494
+  call void @llvm.dbg.value(metadata i64 %0, metadata !363, metadata !DIExpression()), !dbg !496
+  %9 = and i64 %0, 4503599627370495, !dbg !498
+  call void @llvm.dbg.value(metadata i64 %9, metadata !499, metadata !DIExpression()), !dbg !494
+  store i64 %9, i64* %5, align 8, !dbg !500
+  call void @llvm.dbg.value(metadata i64 %0, metadata !370, metadata !DIExpression()), !dbg !501
+  %10 = lshr i64 %0, 52, !dbg !503
+  %11 = trunc i64 %10 to i32, !dbg !504
+  %12 = and i32 %11, 2047, !dbg !504
+  call void @llvm.dbg.value(metadata i32 %12, metadata !505, metadata !DIExpression()), !dbg !494
+  store i32 %12, i32* %3, align 4, !dbg !506
+  call void @llvm.dbg.value(metadata i64 %0, metadata !507, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !494
+  call void @llvm.dbg.value(metadata i64 %1, metadata !363, metadata !DIExpression()), !dbg !508
+  %13 = and i64 %1, 4503599627370495, !dbg !510
+  call void @llvm.dbg.value(metadata i64 %13, metadata !511, metadata !DIExpression()), !dbg !494
+  store i64 %13, i64* %6, align 8, !dbg !512
+  call void @llvm.dbg.value(metadata i64 %1, metadata !370, metadata !DIExpression()), !dbg !513
+  %14 = lshr i64 %1, 52, !dbg !515
+  %15 = trunc i64 %14 to i32, !dbg !516
+  %16 = and i32 %15, 2047, !dbg !516
+  call void @llvm.dbg.value(metadata i32 %16, metadata !517, metadata !DIExpression()), !dbg !494
+  store i32 %16, i32* %4, align 4, !dbg !518
+  call void @llvm.dbg.value(metadata i64 %1, metadata !519, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !494
+  %17 = xor i64 %1, %0, !dbg !520
+  %18 = lshr i64 %17, 63, !dbg !520
+  %19 = trunc i64 %18 to i32, !dbg !520
+  call void @llvm.dbg.value(metadata i32 %19, metadata !521, metadata !DIExpression()), !dbg !494
+  call void @llvm.dbg.value(metadata i32 undef, metadata !505, metadata !DIExpression()), !dbg !494
+  call void @llvm.dbg.value(metadata i32* %3, metadata !505, metadata !DIExpression(DW_OP_deref)), !dbg !494
+  call void @llvm.dbg.value(metadata i64* %5, metadata !499, metadata !DIExpression(DW_OP_deref)), !dbg !494
+  call void @normalizeFloat64Subnormal(i64 %9, i32* nonnull %3, i64* nonnull %5), !dbg !522
+  call void @llvm.dbg.value(metadata i32 undef, metadata !517, metadata !DIExpression()), !dbg !494
+  call void @llvm.dbg.value(metadata i32* %4, metadata !517, metadata !DIExpression(DW_OP_deref)), !dbg !494
+  call void @llvm.dbg.value(metadata i64* %6, metadata !511, metadata !DIExpression(DW_OP_deref)), !dbg !494
+  call void @normalizeFloat64Subnormal(i64 %13, i32* nonnull %4, i64* nonnull %6), !dbg !525
+  %20 = load i32, i32* %3, align 4, !dbg !528
+  call void @llvm.dbg.value(metadata i32 %20, metadata !505, metadata !DIExpression()), !dbg !494
+  %21 = load i32, i32* %4, align 4, !dbg !529
+  call void @llvm.dbg.value(metadata i32 %21, metadata !517, metadata !DIExpression()), !dbg !494
+  call void @llvm.dbg.value(metadata i32 undef, metadata !530, metadata !DIExpression(DW_OP_constu, 1023, DW_OP_minus, DW_OP_stack_value)), !dbg !494
+  %22 = load i64, i64* %5, align 8, !dbg !531
+  call void @llvm.dbg.value(metadata i64 %22, metadata !499, metadata !DIExpression()), !dbg !494
+  %23 = shl i64 %22, 10, !dbg !532
+  %24 = or i64 %23, 4611686018427387904, !dbg !532
+  call void @llvm.dbg.value(metadata i64 %24, metadata !499, metadata !DIExpression()), !dbg !494
+  %25 = load i64, i64* %6, align 8, !dbg !533
+  call void @llvm.dbg.value(metadata i64 %25, metadata !511, metadata !DIExpression()), !dbg !494
+  %26 = shl i64 %25, 11, !dbg !534
+  %27 = or i64 %26, -9223372036854775808, !dbg !534
+  call void @llvm.dbg.value(metadata i64 %27, metadata !511, metadata !DIExpression()), !dbg !494
+  call void @llvm.dbg.value(metadata i64 %24, metadata !499, metadata !DIExpression()), !dbg !494
+  call void @llvm.dbg.value(metadata i64* %7, metadata !535, metadata !DIExpression(DW_OP_deref)), !dbg !494
+  call void @llvm.dbg.value(metadata i64* %8, metadata !536, metadata !DIExpression(DW_OP_deref)), !dbg !494
+  call void @_Z10mul64To128yyPyS_(i64 %24, i64 %27, i64* nonnull %7, i64* nonnull %8), !dbg !537
+  %28 = load i64, i64* %8, align 8, !dbg !538
+  call void @llvm.dbg.value(metadata i64 %28, metadata !536, metadata !DIExpression()), !dbg !494
+  %29 = icmp ne i64 %28, 0, !dbg !539
+  %30 = zext i1 %29 to i64, !dbg !540
+  %31 = load i64, i64* %7, align 8, !dbg !541
+  call void @llvm.dbg.value(metadata i64 %31, metadata !535, metadata !DIExpression()), !dbg !494
+  %32 = or i64 %31, %30, !dbg !541
+  %33 = shl i64 %32, 1, !dbg !542
+  call void @llvm.dbg.value(metadata i64 %33, metadata !535, metadata !DIExpression()), !dbg !494
+  %34 = add i32 %20, -1024, !dbg !544
+  %35 = add i32 %34, %21, !dbg !545
+  call void @llvm.dbg.value(metadata i32 %35, metadata !530, metadata !DIExpression()), !dbg !494
+  %36 = tail call i64 @roundAndPackFloat64(i32 %19, i32 %35, i64 %33), !dbg !547
+  ret i64 %36, !dbg !548
 }
 
 ; Function Attrs: noinline norecurse nounwind readnone uwtable willreturn mustprogress
 define internal fastcc i32 @_ZL19countLeadingZeros32j(i32 %0) unnamed_addr #2 !dbg !20 {
-  call void @llvm.dbg.value(metadata i32 %0, metadata !676, metadata !DIExpression()), !dbg !677
-  call void @llvm.dbg.value(metadata i32 0, metadata !678, metadata !DIExpression()), !dbg !677
-  %2 = icmp ult i32 %0, 65536, !dbg !679
-  %3 = shl i32 %0, 16, !dbg !681
-  %.01 = select i1 %2, i32 16, i32 0, !dbg !681
-  %.0 = select i1 %2, i32 %3, i32 %0, !dbg !681
-  call void @llvm.dbg.value(metadata i32 %.0, metadata !676, metadata !DIExpression()), !dbg !677
-  call void @llvm.dbg.value(metadata i32 %.01, metadata !678, metadata !DIExpression()), !dbg !677
-  %4 = icmp ult i32 %.0, 16777216, !dbg !682
-  %5 = or i32 %.01, 8, !dbg !684
-  %6 = shl i32 %.0, 8, !dbg !684
-  %.12 = select i1 %4, i32 %5, i32 %.01, !dbg !684
-  %.1 = select i1 %4, i32 %6, i32 %.0, !dbg !684
-  call void @llvm.dbg.value(metadata i32 %.1, metadata !676, metadata !DIExpression()), !dbg !677
-  call void @llvm.dbg.value(metadata i32 %.12, metadata !678, metadata !DIExpression()), !dbg !677
-  %7 = lshr i32 %.1, 24, !dbg !685
-  %8 = zext i32 %7 to i64, !dbg !686
-  %9 = getelementptr inbounds [256 x i32], [256 x i32]* bitcast (<{ [128 x i32], [128 x i32] }>* @_ZZL19countLeadingZeros32jE21countLeadingZerosHigh to [256 x i32]*), i64 0, i64 %8, !dbg !686
-  %10 = load i32, i32* %9, align 4, !dbg !686
-  %11 = add nsw i32 %10, %.12, !dbg !687
-  call void @llvm.dbg.value(metadata i32 %11, metadata !678, metadata !DIExpression()), !dbg !677
-  ret i32 %11, !dbg !688
+  call void @llvm.dbg.value(metadata i32 %0, metadata !549, metadata !DIExpression()), !dbg !550
+  call void @llvm.dbg.value(metadata i32 0, metadata !551, metadata !DIExpression()), !dbg !550
+  %2 = icmp ult i32 %0, 65536, !dbg !552
+  %3 = shl i32 %0, 16, !dbg !554
+  %.01 = select i1 %2, i32 16, i32 0, !dbg !554
+  %.0 = select i1 %2, i32 %3, i32 %0, !dbg !554
+  call void @llvm.dbg.value(metadata i32 %.0, metadata !549, metadata !DIExpression()), !dbg !550
+  call void @llvm.dbg.value(metadata i32 %.01, metadata !551, metadata !DIExpression()), !dbg !550
+  %4 = icmp ult i32 %.0, 16777216, !dbg !555
+  %5 = or i32 %.01, 8, !dbg !557
+  %6 = shl i32 %.0, 8, !dbg !557
+  %.12 = select i1 %4, i32 %5, i32 %.01, !dbg !557
+  %.1 = select i1 %4, i32 %6, i32 %.0, !dbg !557
+  call void @llvm.dbg.value(metadata i32 %.1, metadata !549, metadata !DIExpression()), !dbg !550
+  call void @llvm.dbg.value(metadata i32 %.12, metadata !551, metadata !DIExpression()), !dbg !550
+  %7 = lshr i32 %.1, 24, !dbg !558
+  %8 = zext i32 %7 to i64, !dbg !559
+  %9 = getelementptr inbounds [256 x i32], [256 x i32]* bitcast (<{ [128 x i32], [128 x i32] }>* @_ZZL19countLeadingZeros32jE21countLeadingZerosHigh to [256 x i32]*), i64 0, i64 %8, !dbg !559
+  %10 = load i32, i32* %9, align 4, !dbg !559
+  %11 = add nsw i32 %10, %.12, !dbg !560
+  call void @llvm.dbg.value(metadata i32 %11, metadata !551, metadata !DIExpression()), !dbg !550
+  ret i32 %11, !dbg !561
 }
 
 ; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
@@ -919,391 +701,264 @@ attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
 !298 = !DILocation(line: 70, column: 24, scope: !292)
 !299 = !DILocalVariable(name: "z", scope: !276, file: !21, line: 62, type: !6)
 !300 = !DILocation(line: 71, column: 5, scope: !292)
-!301 = !DILocation(line: 74, column: 14, scope: !302)
-!302 = distinct !DILexicalBlock(scope: !289, file: !21, line: 73, column: 5)
-!303 = !DILocation(line: 74, column: 11, scope: !302)
-!304 = !DILocation(line: 0, scope: !286)
-!305 = !DILocation(line: 76, column: 9, scope: !276)
-!306 = !DILocation(line: 78, column: 1, scope: !276)
-!307 = distinct !DISubprogram(name: "mul64To128", linkageName: "_Z10mul64To128yyPyS_", scope: !21, file: !21, line: 87, type: !308, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
-!308 = !DISubroutineType(types: !309)
-!309 = !{null, !6, !6, !280, !280}
-!310 = !DILocalVariable(name: "a", arg: 1, scope: !307, file: !21, line: 87, type: !6)
-!311 = !DILocation(line: 0, scope: !307)
-!312 = !DILocalVariable(name: "b", arg: 2, scope: !307, file: !21, line: 87, type: !6)
-!313 = !DILocalVariable(name: "z0Ptr", arg: 3, scope: !307, file: !21, line: 87, type: !280)
-!314 = !DILocalVariable(name: "z1Ptr", arg: 4, scope: !307, file: !21, line: 87, type: !280)
-!315 = !DILocalVariable(name: "aLow", scope: !307, file: !21, line: 89, type: !24)
-!316 = !DILocation(line: 93, column: 13, scope: !307)
-!317 = !DILocalVariable(name: "aHigh", scope: !307, file: !21, line: 89, type: !24)
-!318 = !DILocalVariable(name: "bLow", scope: !307, file: !21, line: 89, type: !24)
-!319 = !DILocation(line: 95, column: 13, scope: !307)
-!320 = !DILocalVariable(name: "bHigh", scope: !307, file: !21, line: 89, type: !24)
-!321 = !DILocation(line: 96, column: 18, scope: !307)
-!322 = !DILocation(line: 96, column: 26, scope: !307)
-!323 = !DILocation(line: 96, column: 24, scope: !307)
-!324 = !DILocalVariable(name: "z1", scope: !307, file: !21, line: 90, type: !6)
-!325 = !DILocation(line: 97, column: 30, scope: !307)
-!326 = !DILocalVariable(name: "zMiddleA", scope: !307, file: !21, line: 90, type: !6)
-!327 = !DILocation(line: 98, column: 31, scope: !307)
-!328 = !DILocalVariable(name: "zMiddleB", scope: !307, file: !21, line: 90, type: !6)
-!329 = !DILocation(line: 99, column: 25, scope: !307)
-!330 = !DILocalVariable(name: "z0", scope: !307, file: !21, line: 90, type: !6)
-!331 = !DILocation(line: 100, column: 12, scope: !307)
-!332 = !DILocation(line: 101, column: 30, scope: !307)
-!333 = !DILocation(line: 101, column: 43, scope: !307)
-!334 = !DILocation(line: 101, column: 62, scope: !307)
-!335 = !DILocation(line: 102, column: 12, scope: !307)
-!336 = !DILocation(line: 103, column: 6, scope: !307)
-!337 = !DILocation(line: 104, column: 13, scope: !307)
-!338 = !DILocation(line: 104, column: 9, scope: !307)
-!339 = !DILocation(line: 101, column: 50, scope: !307)
-!340 = !DILocation(line: 101, column: 6, scope: !307)
-!341 = !DILocation(line: 104, column: 6, scope: !307)
-!342 = !DILocation(line: 105, column: 10, scope: !307)
-!343 = !DILocation(line: 106, column: 10, scope: !307)
-!344 = !DILocation(line: 108, column: 1, scope: !307)
-!345 = distinct !DISubprogram(name: "float_raise", linkageName: "_Z11float_raisei", scope: !346, file: !346, line: 64, type: !347, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
-!346 = !DIFile(filename: "dfmul/include/softfloat-specialize", directory: "/home/pei/Project/Noisy-lang-compiler/applications/newton/llvm-ir/CHStone_test")
-!347 = !DISubroutineType(types: !348)
-!348 = !{null, !16}
-!349 = !DILocalVariable(name: "flags", arg: 1, scope: !345, file: !346, line: 64, type: !16)
-!350 = !DILocation(line: 0, scope: !345)
-!351 = !DILocation(line: 66, column: 25, scope: !345)
-!352 = !DILocation(line: 68, column: 1, scope: !345)
-!353 = distinct !DISubprogram(name: "float64_is_nan", linkageName: "_Z14float64_is_nany", scope: !346, file: !346, line: 81, type: !354, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
-!354 = !DISubroutineType(types: !355)
-!355 = !{!356, !357}
-!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "flag", file: !7, line: 58, baseType: !17)
-!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "float64", file: !358, line: 54, baseType: !8)
-!358 = !DIFile(filename: "dfmul/include/softfloat.h", directory: "/home/pei/Project/Noisy-lang-compiler/applications/newton/llvm-ir/CHStone_test")
-!359 = !DILocalVariable(name: "a", arg: 1, scope: !353, file: !346, line: 81, type: !357)
-!360 = !DILocation(line: 0, scope: !353)
-!361 = !DILocation(line: 84, column: 52, scope: !353)
-!362 = !DILocation(line: 84, column: 38, scope: !353)
-!363 = !DILocation(line: 84, column: 10, scope: !353)
-!364 = !DILocation(line: 84, column: 3, scope: !353)
-!365 = distinct !DISubprogram(name: "float64_is_signaling_nan", linkageName: "_Z24float64_is_signaling_nany", scope: !346, file: !346, line: 94, type: !354, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
-!366 = !DILocalVariable(name: "a", arg: 1, scope: !365, file: !346, line: 94, type: !357)
-!367 = !DILocation(line: 0, scope: !365)
-!368 = !DILocation(line: 97, column: 31, scope: !365)
-!369 = !DILocation(line: 97, column: 41, scope: !365)
-!370 = !DILocation(line: 97, column: 10, scope: !365)
-!371 = !DILocation(line: 97, column: 3, scope: !365)
-!372 = distinct !DISubprogram(name: "extractFloat64Frac", scope: !3, file: !3, line: 89, type: !373, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
-!373 = !DISubroutineType(types: !374)
-!374 = !{!6, !357}
-!375 = !DILocalVariable(name: "a", arg: 1, scope: !372, file: !3, line: 89, type: !357)
-!376 = !DILocation(line: 0, scope: !372)
-!377 = !DILocation(line: 90, column: 12, scope: !372)
-!378 = !DILocation(line: 90, column: 3, scope: !372)
-!379 = distinct !DISubprogram(name: "extractFloat64Exp", scope: !3, file: !3, line: 103, type: !380, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
-!380 = !DISubroutineType(types: !381)
-!381 = !{!279, !357}
-!382 = !DILocalVariable(name: "a", arg: 1, scope: !379, file: !3, line: 103, type: !357)
-!383 = !DILocation(line: 0, scope: !379)
-!384 = !DILocation(line: 104, column: 13, scope: !379)
-!385 = !DILocation(line: 104, column: 10, scope: !379)
-!386 = !DILocation(line: 104, column: 3, scope: !379)
-!387 = distinct !DISubprogram(name: "extractFloat64Sign", scope: !3, file: !3, line: 117, type: !354, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
-!388 = !DILocalVariable(name: "a", arg: 1, scope: !387, file: !3, line: 117, type: !357)
-!389 = !DILocation(line: 0, scope: !387)
-!390 = !DILocation(line: 118, column: 12, scope: !387)
-!391 = !DILocation(line: 118, column: 10, scope: !387)
-!392 = !DILocation(line: 118, column: 3, scope: !387)
-!393 = distinct !DISubprogram(name: "normalizeFloat64Subnormal", scope: !3, file: !3, line: 133, type: !394, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
-!394 = !DISubroutineType(types: !395)
-!395 = !{null, !6, !396, !280}
-!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
-!397 = !DILocalVariable(name: "aSig", arg: 1, scope: !393, file: !3, line: 133, type: !6)
-!398 = !DILocation(line: 0, scope: !393)
-!399 = !DILocalVariable(name: "zExpPtr", arg: 2, scope: !393, file: !3, line: 133, type: !396)
-!400 = !DILocalVariable(name: "zSigPtr", arg: 3, scope: !393, file: !3, line: 133, type: !280)
-!401 = !DILocation(line: 136, column: 16, scope: !393)
-!402 = !DILocation(line: 136, column: 43, scope: !393)
-!403 = !DILocalVariable(name: "shiftCount", scope: !393, file: !3, line: 134, type: !16)
-!404 = !DILocation(line: 137, column: 19, scope: !393)
-!405 = !DILocation(line: 137, column: 12, scope: !393)
-!406 = !DILocation(line: 138, column: 16, scope: !393)
-!407 = !DILocation(line: 138, column: 12, scope: !393)
-!408 = !DILocation(line: 140, column: 1, scope: !393)
-!409 = distinct !DISubprogram(name: "countLeadingZeros64", linkageName: "_ZL19countLeadingZeros64y", scope: !21, file: !21, line: 160, type: !410, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
-!410 = !DISubroutineType(types: !411)
-!411 = !{!16, !6}
-!412 = !DILocalVariable(name: "a", arg: 1, scope: !409, file: !21, line: 160, type: !6)
-!413 = !DILocation(line: 0, scope: !409)
-!414 = !DILocalVariable(name: "shiftCount", scope: !409, file: !21, line: 162, type: !16)
-!415 = !DILocation(line: 165, column: 9, scope: !416)
-!416 = distinct !DILexicalBlock(scope: !409, file: !21, line: 165, column: 7)
-!417 = !DILocation(line: 165, column: 7, scope: !409)
-!418 = !DILocation(line: 173, column: 38, scope: !409)
-!419 = !DILocation(line: 173, column: 17, scope: !409)
-!420 = !DILocation(line: 173, column: 14, scope: !409)
-!421 = !DILocation(line: 174, column: 3, scope: !409)
-!422 = distinct !DISubprogram(name: "packFloat64", scope: !3, file: !3, line: 159, type: !423, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
-!423 = !DISubroutineType(types: !424)
-!424 = !{!357, !356, !279, !6}
-!425 = !DILocalVariable(name: "zSign", arg: 1, scope: !422, file: !3, line: 159, type: !356)
-!426 = !DILocation(line: 0, scope: !422)
-!427 = !DILocalVariable(name: "zExp", arg: 2, scope: !422, file: !3, line: 159, type: !279)
-!428 = !DILocalVariable(name: "zSig", arg: 3, scope: !422, file: !3, line: 159, type: !6)
-!429 = !DILocation(line: 160, column: 21, scope: !422)
-!430 = !DILocation(line: 160, column: 28, scope: !422)
-!431 = !DILocation(line: 160, column: 48, scope: !422)
-!432 = !DILocation(line: 160, column: 54, scope: !422)
-!433 = !DILocation(line: 160, column: 35, scope: !422)
-!434 = !DILocation(line: 160, column: 61, scope: !422)
-!435 = !DILocation(line: 160, column: 3, scope: !422)
-!436 = distinct !DISubprogram(name: "roundAndPackFloat64", scope: !3, file: !3, line: 190, type: !423, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
-!437 = !DILocalVariable(name: "zSign", arg: 1, scope: !436, file: !3, line: 190, type: !356)
-!438 = !DILocation(line: 0, scope: !436)
-!439 = !DILocalVariable(name: "zExp", arg: 2, scope: !436, file: !3, line: 190, type: !279)
-!440 = !DILocalVariable(name: "zSig", arg: 3, scope: !436, file: !3, line: 190, type: !6)
-!441 = !DILocation(line: 195, column: 18, scope: !436)
-!442 = !DILocalVariable(name: "roundingMode", scope: !436, file: !3, line: 191, type: !16)
-!443 = !DILocation(line: 196, column: 36, scope: !436)
-!444 = !DILocalVariable(name: "roundNearestEven", scope: !436, file: !3, line: 192, type: !356)
-!445 = !DILocalVariable(name: "roundIncrement", scope: !436, file: !3, line: 193, type: !279)
-!446 = !DILocation(line: 198, column: 7, scope: !436)
-!447 = !DILocation(line: 200, column: 24, scope: !448)
-!448 = distinct !DILexicalBlock(scope: !449, file: !3, line: 200, column: 11)
-!449 = distinct !DILexicalBlock(scope: !450, file: !3, line: 199, column: 5)
-!450 = distinct !DILexicalBlock(scope: !436, file: !3, line: 198, column: 7)
-!451 = !DILocation(line: 200, column: 11, scope: !449)
-!452 = !DILocation(line: 207, column: 8, scope: !453)
-!453 = distinct !DILexicalBlock(scope: !454, file: !3, line: 207, column: 8)
-!454 = distinct !DILexicalBlock(scope: !448, file: !3, line: 205, column: 2)
-!455 = !DILocation(line: 207, column: 8, scope: !454)
-!456 = !DILocation(line: 219, column: 15, scope: !436)
-!457 = !DILocalVariable(name: "roundBits", scope: !436, file: !3, line: 193, type: !279)
-!458 = !DILocation(line: 220, column: 16, scope: !459)
-!459 = distinct !DILexicalBlock(scope: !436, file: !3, line: 220, column: 7)
-!460 = !DILocation(line: 220, column: 13, scope: !459)
-!461 = !DILocation(line: 220, column: 7, scope: !436)
-!462 = !DILocation(line: 222, column: 18, scope: !463)
-!463 = distinct !DILexicalBlock(scope: !464, file: !3, line: 222, column: 11)
-!464 = distinct !DILexicalBlock(scope: !459, file: !3, line: 221, column: 5)
-!465 = !DILocation(line: 223, column: 4, scope: !463)
-!466 = !DILocation(line: 223, column: 14, scope: !463)
-!467 = !DILocation(line: 223, column: 24, scope: !463)
-!468 = !DILocation(line: 223, column: 44, scope: !463)
-!469 = !DILocation(line: 223, column: 62, scope: !463)
-!470 = !DILocation(line: 222, column: 11, scope: !464)
-!471 = !DILocation(line: 225, column: 4, scope: !472)
-!472 = distinct !DILexicalBlock(scope: !463, file: !3, line: 224, column: 2)
-!473 = !DILocation(line: 0, scope: !422, inlinedAt: !474)
-!474 = distinct !DILocation(line: 226, column: 11, scope: !472)
-!475 = !DILocation(line: 160, column: 21, scope: !422, inlinedAt: !474)
-!476 = !DILocation(line: 160, column: 28, scope: !422, inlinedAt: !474)
-!477 = !DILocation(line: 160, column: 35, scope: !422, inlinedAt: !474)
-!478 = !DILocation(line: 226, column: 59, scope: !472)
-!479 = !DILocation(line: 226, column: 43, scope: !472)
-!480 = !DILocation(line: 226, column: 41, scope: !472)
-!481 = !DILocation(line: 226, column: 4, scope: !472)
-!482 = !DILocation(line: 228, column: 16, scope: !483)
-!483 = distinct !DILexicalBlock(scope: !464, file: !3, line: 228, column: 11)
-!484 = !DILocation(line: 228, column: 11, scope: !464)
-!485 = !DILocalVariable(name: "isTiny", scope: !436, file: !3, line: 192, type: !356)
-!486 = !DILocation(line: 233, column: 31, scope: !487)
-!487 = distinct !DILexicalBlock(scope: !483, file: !3, line: 229, column: 2)
-!488 = !DILocation(line: 233, column: 4, scope: !487)
-!489 = !DILocation(line: 235, column: 16, scope: !487)
-!490 = !DILocation(line: 236, column: 15, scope: !491)
-!491 = distinct !DILexicalBlock(scope: !487, file: !3, line: 236, column: 8)
-!492 = !DILocation(line: 237, column: 6, scope: !491)
-!493 = !DILocation(line: 240, column: 7, scope: !436)
-!494 = !DILocation(line: 240, column: 7, scope: !495)
-!495 = distinct !DILexicalBlock(scope: !436, file: !3, line: 240, column: 7)
-!496 = !DILocation(line: 241, column: 27, scope: !495)
-!497 = !DILocation(line: 241, column: 5, scope: !495)
-!498 = !DILocation(line: 242, column: 11, scope: !436)
-!499 = !DILocation(line: 242, column: 16, scope: !436)
-!500 = !DILocation(line: 242, column: 34, scope: !436)
-!501 = !DILocation(line: 243, column: 34, scope: !436)
-!502 = !DILocation(line: 243, column: 40, scope: !436)
-!503 = !DILocation(line: 243, column: 11, scope: !436)
-!504 = !DILocation(line: 243, column: 8, scope: !436)
-!505 = !DILocation(line: 244, column: 12, scope: !506)
-!506 = distinct !DILexicalBlock(scope: !436, file: !3, line: 244, column: 7)
-!507 = !DILocation(line: 0, scope: !422, inlinedAt: !508)
-!508 = distinct !DILocation(line: 246, column: 10, scope: !436)
-!509 = !DILocation(line: 160, column: 21, scope: !422, inlinedAt: !508)
-!510 = !DILocation(line: 160, column: 28, scope: !422, inlinedAt: !508)
-!511 = !DILocation(line: 160, column: 48, scope: !422, inlinedAt: !508)
-!512 = !DILocation(line: 160, column: 54, scope: !422, inlinedAt: !508)
-!513 = !DILocation(line: 160, column: 35, scope: !422, inlinedAt: !508)
-!514 = !DILocation(line: 160, column: 61, scope: !422, inlinedAt: !508)
-!515 = !DILocation(line: 246, column: 3, scope: !436)
-!516 = !DILocation(line: 248, column: 1, scope: !436)
-!517 = distinct !DISubprogram(name: "float64_mul", scope: !3, file: !3, line: 265, type: !518, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
-!518 = !DISubroutineType(types: !519)
-!519 = !{!357, !520, !521}
-!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "bmx055xAcceleration", file: !3, line: 262, baseType: !357)
-!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "bmx055yAcceleration", file: !3, line: 263, baseType: !357)
-!522 = !DILocalVariable(name: "a", arg: 1, scope: !517, file: !3, line: 265, type: !520)
-!523 = !DILocation(line: 0, scope: !517)
-!524 = !DILocalVariable(name: "b", arg: 2, scope: !517, file: !3, line: 265, type: !521)
-!525 = !DILocation(line: 0, scope: !372, inlinedAt: !526)
-!526 = distinct !DILocation(line: 270, column: 10, scope: !517)
-!527 = !DILocation(line: 90, column: 12, scope: !372, inlinedAt: !526)
-!528 = !DILocalVariable(name: "aSig", scope: !517, file: !3, line: 268, type: !6)
-!529 = !DILocation(line: 270, column: 8, scope: !517)
-!530 = !DILocation(line: 0, scope: !379, inlinedAt: !531)
-!531 = distinct !DILocation(line: 271, column: 10, scope: !517)
-!532 = !DILocation(line: 104, column: 13, scope: !379, inlinedAt: !531)
-!533 = !DILocation(line: 104, column: 10, scope: !379, inlinedAt: !531)
-!534 = !DILocalVariable(name: "aExp", scope: !517, file: !3, line: 267, type: !279)
-!535 = !DILocation(line: 271, column: 8, scope: !517)
-!536 = !DILocalVariable(name: "aSign", scope: !517, file: !3, line: 266, type: !356)
-!537 = !DILocation(line: 0, scope: !372, inlinedAt: !538)
-!538 = distinct !DILocation(line: 273, column: 10, scope: !517)
-!539 = !DILocation(line: 90, column: 12, scope: !372, inlinedAt: !538)
-!540 = !DILocalVariable(name: "bSig", scope: !517, file: !3, line: 268, type: !6)
-!541 = !DILocation(line: 273, column: 8, scope: !517)
-!542 = !DILocation(line: 0, scope: !379, inlinedAt: !543)
-!543 = distinct !DILocation(line: 274, column: 10, scope: !517)
-!544 = !DILocation(line: 104, column: 13, scope: !379, inlinedAt: !543)
-!545 = !DILocation(line: 104, column: 10, scope: !379, inlinedAt: !543)
-!546 = !DILocalVariable(name: "bExp", scope: !517, file: !3, line: 267, type: !279)
-!547 = !DILocation(line: 274, column: 8, scope: !517)
-!548 = !DILocalVariable(name: "bSign", scope: !517, file: !3, line: 266, type: !356)
-!549 = !DILocation(line: 276, column: 17, scope: !517)
-!550 = !DILocalVariable(name: "zSign", scope: !517, file: !3, line: 266, type: !356)
-!551 = !DILocation(line: 277, column: 12, scope: !552)
-!552 = distinct !DILexicalBlock(scope: !517, file: !3, line: 277, column: 7)
-!553 = !DILocation(line: 277, column: 7, scope: !517)
-!554 = !DILocation(line: 279, column: 11, scope: !555)
-!555 = distinct !DILexicalBlock(scope: !556, file: !3, line: 279, column: 11)
-!556 = distinct !DILexicalBlock(scope: !552, file: !3, line: 278, column: 5)
-!557 = !DILocation(line: 279, column: 16, scope: !555)
-!558 = !DILocation(line: 279, column: 26, scope: !555)
-!559 = !DILocation(line: 279, column: 36, scope: !555)
-!560 = !DILocation(line: 280, column: 9, scope: !555)
-!561 = !DILocation(line: 280, column: 2, scope: !555)
-!562 = !DILocation(line: 281, column: 17, scope: !563)
-!563 = distinct !DILexicalBlock(scope: !556, file: !3, line: 281, column: 11)
-!564 = !DILocation(line: 281, column: 25, scope: !563)
-!565 = !DILocation(line: 281, column: 11, scope: !556)
-!566 = !DILocation(line: 283, column: 4, scope: !567)
-!567 = distinct !DILexicalBlock(scope: !563, file: !3, line: 282, column: 2)
-!568 = !DILocation(line: 284, column: 4, scope: !567)
-!569 = !DILocation(line: 0, scope: !422, inlinedAt: !570)
-!570 = distinct !DILocation(line: 286, column: 14, scope: !556)
-!571 = !DILocation(line: 160, column: 28, scope: !422, inlinedAt: !570)
-!572 = !DILocation(line: 160, column: 35, scope: !422, inlinedAt: !570)
-!573 = !DILocation(line: 286, column: 7, scope: !556)
-!574 = !DILocation(line: 288, column: 12, scope: !575)
-!575 = distinct !DILexicalBlock(scope: !517, file: !3, line: 288, column: 7)
-!576 = !DILocation(line: 288, column: 7, scope: !517)
-!577 = !DILocation(line: 290, column: 11, scope: !578)
-!578 = distinct !DILexicalBlock(scope: !579, file: !3, line: 290, column: 11)
-!579 = distinct !DILexicalBlock(scope: !575, file: !3, line: 289, column: 5)
-!580 = !DILocation(line: 290, column: 11, scope: !579)
-!581 = !DILocation(line: 291, column: 9, scope: !578)
-!582 = !DILocation(line: 291, column: 2, scope: !578)
-!583 = !DILocation(line: 292, column: 12, scope: !584)
-!584 = distinct !DILexicalBlock(scope: !579, file: !3, line: 292, column: 11)
-!585 = !DILocation(line: 292, column: 17, scope: !584)
-!586 = !DILocation(line: 292, column: 25, scope: !584)
-!587 = !DILocation(line: 292, column: 11, scope: !579)
-!588 = !DILocation(line: 294, column: 4, scope: !589)
-!589 = distinct !DILexicalBlock(scope: !584, file: !3, line: 293, column: 2)
-!590 = !DILocation(line: 295, column: 4, scope: !589)
-!591 = !DILocation(line: 0, scope: !422, inlinedAt: !592)
-!592 = distinct !DILocation(line: 297, column: 14, scope: !579)
-!593 = !DILocation(line: 160, column: 28, scope: !422, inlinedAt: !592)
-!594 = !DILocation(line: 160, column: 35, scope: !422, inlinedAt: !592)
-!595 = !DILocation(line: 297, column: 7, scope: !579)
-!596 = !DILocation(line: 299, column: 12, scope: !597)
-!597 = distinct !DILexicalBlock(scope: !517, file: !3, line: 299, column: 7)
-!598 = !DILocation(line: 299, column: 7, scope: !517)
-!599 = !DILocation(line: 301, column: 16, scope: !600)
-!600 = distinct !DILexicalBlock(scope: !601, file: !3, line: 301, column: 11)
-!601 = distinct !DILexicalBlock(scope: !597, file: !3, line: 300, column: 5)
-!602 = !DILocation(line: 301, column: 11, scope: !601)
-!603 = !DILocation(line: 0, scope: !422, inlinedAt: !604)
-!604 = distinct !DILocation(line: 302, column: 9, scope: !600)
-!605 = !DILocation(line: 160, column: 28, scope: !422, inlinedAt: !604)
-!606 = !DILocation(line: 302, column: 2, scope: !600)
-!607 = !DILocation(line: 303, column: 7, scope: !601)
-!608 = !DILocation(line: 304, column: 5, scope: !601)
-!609 = !DILocation(line: 305, column: 12, scope: !610)
-!610 = distinct !DILexicalBlock(scope: !517, file: !3, line: 305, column: 7)
-!611 = !DILocation(line: 305, column: 7, scope: !517)
-!612 = !DILocation(line: 307, column: 16, scope: !613)
-!613 = distinct !DILexicalBlock(scope: !614, file: !3, line: 307, column: 11)
-!614 = distinct !DILexicalBlock(scope: !610, file: !3, line: 306, column: 5)
-!615 = !DILocation(line: 307, column: 11, scope: !614)
-!616 = !DILocation(line: 0, scope: !422, inlinedAt: !617)
-!617 = distinct !DILocation(line: 308, column: 9, scope: !613)
-!618 = !DILocation(line: 160, column: 28, scope: !422, inlinedAt: !617)
-!619 = !DILocation(line: 308, column: 2, scope: !613)
-!620 = !DILocation(line: 309, column: 7, scope: !614)
-!621 = !DILocation(line: 311, column: 17, scope: !517)
-!622 = !DILocation(line: 313, column: 11, scope: !517)
-!623 = !DILocation(line: 310, column: 5, scope: !614)
-!624 = !DILocation(line: 311, column: 10, scope: !517)
-!625 = !DILocation(line: 311, column: 15, scope: !517)
-!626 = !DILocation(line: 311, column: 22, scope: !517)
-!627 = !DILocalVariable(name: "zExp", scope: !517, file: !3, line: 267, type: !279)
-!628 = !DILocation(line: 312, column: 11, scope: !517)
-!629 = !DILocation(line: 312, column: 46, scope: !517)
-!630 = !DILocation(line: 312, column: 8, scope: !517)
-!631 = !DILocation(line: 313, column: 46, scope: !517)
-!632 = !DILocation(line: 313, column: 8, scope: !517)
-!633 = !DILocalVariable(name: "zSig0", scope: !517, file: !3, line: 268, type: !6)
-!634 = !DILocalVariable(name: "zSig1", scope: !517, file: !3, line: 268, type: !6)
-!635 = !DILocation(line: 314, column: 3, scope: !517)
-!636 = !DILocation(line: 315, column: 13, scope: !517)
-!637 = !DILocation(line: 315, column: 19, scope: !517)
-!638 = !DILocation(line: 315, column: 12, scope: !517)
-!639 = !DILocation(line: 315, column: 9, scope: !517)
-!640 = !DILocation(line: 316, column: 29, scope: !641)
-!641 = distinct !DILexicalBlock(scope: !517, file: !3, line: 316, column: 7)
-!642 = !DILocation(line: 316, column: 9, scope: !641)
-!643 = !DILocation(line: 316, column: 7, scope: !517)
-!644 = !DILocation(line: 318, column: 13, scope: !645)
-!645 = distinct !DILexicalBlock(scope: !641, file: !3, line: 317, column: 5)
-!646 = !DILocation(line: 319, column: 7, scope: !645)
-!647 = !DILocation(line: 320, column: 5, scope: !645)
-!648 = !DILocation(line: 321, column: 44, scope: !517)
-!649 = !DILocation(line: 321, column: 10, scope: !517)
-!650 = !DILocation(line: 321, column: 3, scope: !517)
-!651 = !DILocation(line: 323, column: 1, scope: !517)
-!652 = distinct !DISubprogram(name: "propagateFloat64NaN", linkageName: "_ZL19propagateFloat64NaNyy", scope: !346, file: !346, line: 108, type: !653, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
-!653 = !DISubroutineType(types: !654)
-!654 = !{!357, !357, !357}
-!655 = !DILocalVariable(name: "a", arg: 1, scope: !652, file: !346, line: 108, type: !357)
-!656 = !DILocation(line: 0, scope: !652)
-!657 = !DILocalVariable(name: "b", arg: 2, scope: !652, file: !346, line: 108, type: !357)
-!658 = !DILocalVariable(name: "aIsNaN", scope: !652, file: !346, line: 110, type: !356)
-!659 = !DILocation(line: 113, column: 21, scope: !652)
-!660 = !DILocalVariable(name: "aIsSignalingNaN", scope: !652, file: !346, line: 110, type: !356)
-!661 = !DILocation(line: 114, column: 12, scope: !652)
-!662 = !DILocalVariable(name: "bIsNaN", scope: !652, file: !346, line: 110, type: !356)
-!663 = !DILocation(line: 115, column: 21, scope: !652)
-!664 = !DILocalVariable(name: "bIsSignalingNaN", scope: !652, file: !346, line: 110, type: !356)
-!665 = !DILocation(line: 116, column: 5, scope: !652)
-!666 = !DILocation(line: 117, column: 5, scope: !652)
-!667 = !DILocation(line: 118, column: 23, scope: !668)
-!668 = distinct !DILexicalBlock(scope: !652, file: !346, line: 118, column: 7)
-!669 = !DILocation(line: 118, column: 7, scope: !668)
-!670 = !DILocation(line: 118, column: 7, scope: !652)
-!671 = !DILocation(line: 119, column: 5, scope: !668)
-!672 = !DILocation(line: 120, column: 10, scope: !652)
-!673 = !DILocation(line: 120, column: 32, scope: !652)
-!674 = !DILocation(line: 120, column: 54, scope: !652)
-!675 = !DILocation(line: 120, column: 3, scope: !652)
-!676 = !DILocalVariable(name: "a", arg: 1, scope: !20, file: !21, line: 116, type: !24)
-!677 = !DILocation(line: 0, scope: !20)
-!678 = !DILocalVariable(name: "shiftCount", scope: !20, file: !21, line: 136, type: !16)
-!679 = !DILocation(line: 139, column: 9, scope: !680)
-!680 = distinct !DILexicalBlock(scope: !20, file: !21, line: 139, column: 7)
-!681 = !DILocation(line: 139, column: 7, scope: !20)
-!682 = !DILocation(line: 144, column: 9, scope: !683)
-!683 = distinct !DILexicalBlock(scope: !20, file: !21, line: 144, column: 7)
-!684 = !DILocation(line: 144, column: 7, scope: !20)
-!685 = !DILocation(line: 149, column: 41, scope: !20)
-!686 = !DILocation(line: 149, column: 17, scope: !20)
-!687 = !DILocation(line: 149, column: 14, scope: !20)
-!688 = !DILocation(line: 150, column: 3, scope: !20)
+!301 = !DILocation(line: 0, scope: !286)
+!302 = !DILocation(line: 76, column: 9, scope: !276)
+!303 = !DILocation(line: 78, column: 1, scope: !276)
+!304 = distinct !DISubprogram(name: "mul64To128", linkageName: "_Z10mul64To128yyPyS_", scope: !21, file: !21, line: 87, type: !305, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
+!305 = !DISubroutineType(types: !306)
+!306 = !{null, !6, !6, !280, !280}
+!307 = !DILocalVariable(name: "a", arg: 1, scope: !304, file: !21, line: 87, type: !6)
+!308 = !DILocation(line: 0, scope: !304)
+!309 = !DILocalVariable(name: "b", arg: 2, scope: !304, file: !21, line: 87, type: !6)
+!310 = !DILocalVariable(name: "z0Ptr", arg: 3, scope: !304, file: !21, line: 87, type: !280)
+!311 = !DILocalVariable(name: "z1Ptr", arg: 4, scope: !304, file: !21, line: 87, type: !280)
+!312 = !DILocalVariable(name: "aLow", scope: !304, file: !21, line: 89, type: !24)
+!313 = !DILocation(line: 93, column: 13, scope: !304)
+!314 = !DILocalVariable(name: "aHigh", scope: !304, file: !21, line: 89, type: !24)
+!315 = !DILocalVariable(name: "bLow", scope: !304, file: !21, line: 89, type: !24)
+!316 = !DILocation(line: 95, column: 13, scope: !304)
+!317 = !DILocalVariable(name: "bHigh", scope: !304, file: !21, line: 89, type: !24)
+!318 = !DILocation(line: 96, column: 18, scope: !304)
+!319 = !DILocation(line: 96, column: 26, scope: !304)
+!320 = !DILocation(line: 96, column: 24, scope: !304)
+!321 = !DILocalVariable(name: "z1", scope: !304, file: !21, line: 90, type: !6)
+!322 = !DILocation(line: 97, column: 30, scope: !304)
+!323 = !DILocalVariable(name: "zMiddleA", scope: !304, file: !21, line: 90, type: !6)
+!324 = !DILocation(line: 98, column: 31, scope: !304)
+!325 = !DILocalVariable(name: "zMiddleB", scope: !304, file: !21, line: 90, type: !6)
+!326 = !DILocation(line: 99, column: 25, scope: !304)
+!327 = !DILocalVariable(name: "z0", scope: !304, file: !21, line: 90, type: !6)
+!328 = !DILocation(line: 100, column: 12, scope: !304)
+!329 = !DILocation(line: 101, column: 30, scope: !304)
+!330 = !DILocation(line: 101, column: 43, scope: !304)
+!331 = !DILocation(line: 101, column: 62, scope: !304)
+!332 = !DILocation(line: 101, column: 50, scope: !304)
+!333 = !DILocation(line: 101, column: 6, scope: !304)
+!334 = !DILocation(line: 102, column: 12, scope: !304)
+!335 = !DILocation(line: 103, column: 6, scope: !304)
+!336 = !DILocation(line: 105, column: 10, scope: !304)
+!337 = !DILocation(line: 106, column: 10, scope: !304)
+!338 = !DILocation(line: 108, column: 1, scope: !304)
+!339 = distinct !DISubprogram(name: "float_raise", linkageName: "_Z11float_raisei", scope: !340, file: !340, line: 64, type: !341, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
+!340 = !DIFile(filename: "dfmul/include/softfloat-specialize", directory: "/home/pei/Project/Noisy-lang-compiler/applications/newton/llvm-ir/CHStone_test")
+!341 = !DISubroutineType(types: !342)
+!342 = !{null, !16}
+!343 = !DILocalVariable(name: "flags", arg: 1, scope: !339, file: !340, line: 64, type: !16)
+!344 = !DILocation(line: 0, scope: !339)
+!345 = !DILocation(line: 66, column: 25, scope: !339)
+!346 = !DILocation(line: 68, column: 1, scope: !339)
+!347 = distinct !DISubprogram(name: "float64_is_nan", linkageName: "_Z14float64_is_nany", scope: !340, file: !340, line: 81, type: !348, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
+!348 = !DISubroutineType(types: !349)
+!349 = !{!350, !351}
+!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "flag", file: !7, line: 58, baseType: !17)
+!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "float64", file: !352, line: 54, baseType: !8)
+!352 = !DIFile(filename: "dfmul/include/softfloat.h", directory: "/home/pei/Project/Noisy-lang-compiler/applications/newton/llvm-ir/CHStone_test")
+!353 = !DILocalVariable(name: "a", arg: 1, scope: !347, file: !340, line: 81, type: !351)
+!354 = !DILocation(line: 0, scope: !347)
+!355 = !DILocation(line: 84, column: 3, scope: !347)
+!356 = distinct !DISubprogram(name: "float64_is_signaling_nan", linkageName: "_Z24float64_is_signaling_nany", scope: !340, file: !340, line: 94, type: !348, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
+!357 = !DILocalVariable(name: "a", arg: 1, scope: !356, file: !340, line: 94, type: !351)
+!358 = !DILocation(line: 0, scope: !356)
+!359 = !DILocation(line: 97, column: 3, scope: !356)
+!360 = distinct !DISubprogram(name: "extractFloat64Frac", scope: !3, file: !3, line: 89, type: !361, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
+!361 = !DISubroutineType(types: !362)
+!362 = !{!6, !351}
+!363 = !DILocalVariable(name: "a", arg: 1, scope: !360, file: !3, line: 89, type: !351)
+!364 = !DILocation(line: 0, scope: !360)
+!365 = !DILocation(line: 90, column: 12, scope: !360)
+!366 = !DILocation(line: 90, column: 3, scope: !360)
+!367 = distinct !DISubprogram(name: "extractFloat64Exp", scope: !3, file: !3, line: 103, type: !368, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
+!368 = !DISubroutineType(types: !369)
+!369 = !{!279, !351}
+!370 = !DILocalVariable(name: "a", arg: 1, scope: !367, file: !3, line: 103, type: !351)
+!371 = !DILocation(line: 0, scope: !367)
+!372 = !DILocation(line: 104, column: 13, scope: !367)
+!373 = !DILocation(line: 104, column: 10, scope: !367)
+!374 = !DILocation(line: 104, column: 3, scope: !367)
+!375 = distinct !DISubprogram(name: "extractFloat64Sign", scope: !3, file: !3, line: 117, type: !348, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
+!376 = !DILocalVariable(name: "a", arg: 1, scope: !375, file: !3, line: 117, type: !351)
+!377 = !DILocation(line: 0, scope: !375)
+!378 = !DILocation(line: 118, column: 12, scope: !375)
+!379 = !DILocation(line: 118, column: 10, scope: !375)
+!380 = !DILocation(line: 118, column: 3, scope: !375)
+!381 = distinct !DISubprogram(name: "normalizeFloat64Subnormal", scope: !3, file: !3, line: 133, type: !382, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
+!382 = !DISubroutineType(types: !383)
+!383 = !{null, !6, !384, !280}
+!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
+!385 = !DILocalVariable(name: "aSig", arg: 1, scope: !381, file: !3, line: 133, type: !6)
+!386 = !DILocation(line: 0, scope: !381)
+!387 = !DILocalVariable(name: "zExpPtr", arg: 2, scope: !381, file: !3, line: 133, type: !384)
+!388 = !DILocalVariable(name: "zSigPtr", arg: 3, scope: !381, file: !3, line: 133, type: !280)
+!389 = !DILocation(line: 136, column: 16, scope: !381)
+!390 = !DILocation(line: 136, column: 43, scope: !381)
+!391 = !DILocalVariable(name: "shiftCount", scope: !381, file: !3, line: 134, type: !16)
+!392 = !DILocation(line: 137, column: 19, scope: !381)
+!393 = !DILocation(line: 137, column: 12, scope: !381)
+!394 = !DILocation(line: 138, column: 16, scope: !381)
+!395 = !DILocation(line: 138, column: 12, scope: !381)
+!396 = !DILocation(line: 140, column: 1, scope: !381)
+!397 = distinct !DISubprogram(name: "countLeadingZeros64", linkageName: "_ZL19countLeadingZeros64y", scope: !21, file: !21, line: 160, type: !398, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
+!398 = !DISubroutineType(types: !399)
+!399 = !{!16, !6}
+!400 = !DILocalVariable(name: "a", arg: 1, scope: !397, file: !21, line: 160, type: !6)
+!401 = !DILocation(line: 0, scope: !397)
+!402 = !DILocalVariable(name: "shiftCount", scope: !397, file: !21, line: 162, type: !16)
+!403 = !DILocation(line: 173, column: 38, scope: !397)
+!404 = !DILocation(line: 173, column: 17, scope: !397)
+!405 = !DILocation(line: 173, column: 14, scope: !397)
+!406 = !DILocation(line: 174, column: 3, scope: !397)
+!407 = distinct !DISubprogram(name: "packFloat64", scope: !3, file: !3, line: 159, type: !408, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
+!408 = !DISubroutineType(types: !409)
+!409 = !{!351, !350, !279, !6}
+!410 = !DILocalVariable(name: "zSign", arg: 1, scope: !407, file: !3, line: 159, type: !350)
+!411 = !DILocation(line: 0, scope: !407)
+!412 = !DILocalVariable(name: "zExp", arg: 2, scope: !407, file: !3, line: 159, type: !279)
+!413 = !DILocalVariable(name: "zSig", arg: 3, scope: !407, file: !3, line: 159, type: !6)
+!414 = !DILocation(line: 160, column: 21, scope: !407)
+!415 = !DILocation(line: 160, column: 28, scope: !407)
+!416 = !DILocation(line: 160, column: 48, scope: !407)
+!417 = !DILocation(line: 160, column: 54, scope: !407)
+!418 = !DILocation(line: 160, column: 35, scope: !407)
+!419 = !DILocation(line: 160, column: 61, scope: !407)
+!420 = !DILocation(line: 160, column: 3, scope: !407)
+!421 = distinct !DISubprogram(name: "roundAndPackFloat64", scope: !3, file: !3, line: 190, type: !408, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
+!422 = !DILocalVariable(name: "zSign", arg: 1, scope: !421, file: !3, line: 190, type: !350)
+!423 = !DILocation(line: 0, scope: !421)
+!424 = !DILocalVariable(name: "zExp", arg: 2, scope: !421, file: !3, line: 190, type: !279)
+!425 = !DILocalVariable(name: "zSig", arg: 3, scope: !421, file: !3, line: 190, type: !6)
+!426 = !DILocation(line: 195, column: 18, scope: !421)
+!427 = !DILocalVariable(name: "roundingMode", scope: !421, file: !3, line: 191, type: !16)
+!428 = !DILocation(line: 196, column: 36, scope: !421)
+!429 = !DILocalVariable(name: "roundNearestEven", scope: !421, file: !3, line: 192, type: !350)
+!430 = !DILocalVariable(name: "roundIncrement", scope: !421, file: !3, line: 193, type: !279)
+!431 = !DILocation(line: 198, column: 7, scope: !421)
+!432 = !DILocation(line: 200, column: 24, scope: !433)
+!433 = distinct !DILexicalBlock(scope: !434, file: !3, line: 200, column: 11)
+!434 = distinct !DILexicalBlock(scope: !435, file: !3, line: 199, column: 5)
+!435 = distinct !DILexicalBlock(scope: !421, file: !3, line: 198, column: 7)
+!436 = !DILocation(line: 200, column: 11, scope: !434)
+!437 = !DILocation(line: 207, column: 8, scope: !438)
+!438 = distinct !DILexicalBlock(scope: !439, file: !3, line: 207, column: 8)
+!439 = distinct !DILexicalBlock(scope: !433, file: !3, line: 205, column: 2)
+!440 = !DILocation(line: 207, column: 8, scope: !439)
+!441 = !DILocalVariable(name: "roundBits", scope: !421, file: !3, line: 193, type: !279)
+!442 = !DILocation(line: 220, column: 16, scope: !443)
+!443 = distinct !DILexicalBlock(scope: !421, file: !3, line: 220, column: 7)
+!444 = !DILocation(line: 220, column: 13, scope: !443)
+!445 = !DILocation(line: 220, column: 7, scope: !421)
+!446 = !DILocation(line: 222, column: 18, scope: !447)
+!447 = distinct !DILexicalBlock(scope: !448, file: !3, line: 222, column: 11)
+!448 = distinct !DILexicalBlock(scope: !443, file: !3, line: 221, column: 5)
+!449 = !DILocation(line: 223, column: 4, scope: !447)
+!450 = !DILocation(line: 228, column: 16, scope: !451)
+!451 = distinct !DILexicalBlock(scope: !448, file: !3, line: 228, column: 11)
+!452 = !DILocation(line: 228, column: 11, scope: !448)
+!453 = !DILocation(line: 225, column: 4, scope: !454)
+!454 = distinct !DILexicalBlock(scope: !447, file: !3, line: 224, column: 2)
+!455 = !DILocation(line: 0, scope: !407, inlinedAt: !456)
+!456 = distinct !DILocation(line: 226, column: 11, scope: !454)
+!457 = !DILocation(line: 160, column: 21, scope: !407, inlinedAt: !456)
+!458 = !DILocation(line: 160, column: 28, scope: !407, inlinedAt: !456)
+!459 = !DILocation(line: 160, column: 35, scope: !407, inlinedAt: !456)
+!460 = !DILocation(line: 226, column: 59, scope: !454)
+!461 = !DILocation(line: 226, column: 43, scope: !454)
+!462 = !DILocation(line: 226, column: 41, scope: !454)
+!463 = !DILocation(line: 226, column: 4, scope: !454)
+!464 = !DILocalVariable(name: "isTiny", scope: !421, file: !3, line: 192, type: !350)
+!465 = !DILocation(line: 233, column: 31, scope: !466)
+!466 = distinct !DILexicalBlock(scope: !451, file: !3, line: 229, column: 2)
+!467 = !DILocation(line: 233, column: 4, scope: !466)
+!468 = !DILocation(line: 235, column: 16, scope: !466)
+!469 = !DILocation(line: 236, column: 8, scope: !466)
+!470 = !DILocation(line: 240, column: 7, scope: !471)
+!471 = distinct !DILexicalBlock(scope: !421, file: !3, line: 240, column: 7)
+!472 = !DILocation(line: 240, column: 7, scope: !421)
+!473 = !DILocation(line: 241, column: 27, scope: !471)
+!474 = !DILocation(line: 241, column: 5, scope: !471)
+!475 = !DILocation(line: 242, column: 16, scope: !421)
+!476 = !DILocation(line: 242, column: 34, scope: !421)
+!477 = !DILocation(line: 243, column: 34, scope: !421)
+!478 = !DILocation(line: 243, column: 40, scope: !421)
+!479 = !DILocation(line: 243, column: 11, scope: !421)
+!480 = !DILocation(line: 243, column: 8, scope: !421)
+!481 = !DILocation(line: 0, scope: !407, inlinedAt: !482)
+!482 = distinct !DILocation(line: 246, column: 10, scope: !421)
+!483 = !DILocation(line: 160, column: 21, scope: !407, inlinedAt: !482)
+!484 = !DILocation(line: 160, column: 28, scope: !407, inlinedAt: !482)
+!485 = !DILocation(line: 160, column: 61, scope: !407, inlinedAt: !482)
+!486 = !DILocation(line: 246, column: 3, scope: !421)
+!487 = !DILocation(line: 248, column: 1, scope: !421)
+!488 = distinct !DISubprogram(name: "float64_mul", scope: !3, file: !3, line: 265, type: !489, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
+!489 = !DISubroutineType(types: !490)
+!490 = !{!351, !491, !492}
+!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "bmx055xAcceleration", file: !3, line: 262, baseType: !351)
+!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "bmx055yAcceleration", file: !3, line: 263, baseType: !351)
+!493 = !DILocalVariable(name: "a", arg: 1, scope: !488, file: !3, line: 265, type: !491)
+!494 = !DILocation(line: 0, scope: !488)
+!495 = !DILocalVariable(name: "b", arg: 2, scope: !488, file: !3, line: 265, type: !492)
+!496 = !DILocation(line: 0, scope: !360, inlinedAt: !497)
+!497 = distinct !DILocation(line: 270, column: 10, scope: !488)
+!498 = !DILocation(line: 90, column: 12, scope: !360, inlinedAt: !497)
+!499 = !DILocalVariable(name: "aSig", scope: !488, file: !3, line: 268, type: !6)
+!500 = !DILocation(line: 270, column: 8, scope: !488)
+!501 = !DILocation(line: 0, scope: !367, inlinedAt: !502)
+!502 = distinct !DILocation(line: 271, column: 10, scope: !488)
+!503 = !DILocation(line: 104, column: 13, scope: !367, inlinedAt: !502)
+!504 = !DILocation(line: 104, column: 10, scope: !367, inlinedAt: !502)
+!505 = !DILocalVariable(name: "aExp", scope: !488, file: !3, line: 267, type: !279)
+!506 = !DILocation(line: 271, column: 8, scope: !488)
+!507 = !DILocalVariable(name: "aSign", scope: !488, file: !3, line: 266, type: !350)
+!508 = !DILocation(line: 0, scope: !360, inlinedAt: !509)
+!509 = distinct !DILocation(line: 273, column: 10, scope: !488)
+!510 = !DILocation(line: 90, column: 12, scope: !360, inlinedAt: !509)
+!511 = !DILocalVariable(name: "bSig", scope: !488, file: !3, line: 268, type: !6)
+!512 = !DILocation(line: 273, column: 8, scope: !488)
+!513 = !DILocation(line: 0, scope: !367, inlinedAt: !514)
+!514 = distinct !DILocation(line: 274, column: 10, scope: !488)
+!515 = !DILocation(line: 104, column: 13, scope: !367, inlinedAt: !514)
+!516 = !DILocation(line: 104, column: 10, scope: !367, inlinedAt: !514)
+!517 = !DILocalVariable(name: "bExp", scope: !488, file: !3, line: 267, type: !279)
+!518 = !DILocation(line: 274, column: 8, scope: !488)
+!519 = !DILocalVariable(name: "bSign", scope: !488, file: !3, line: 266, type: !350)
+!520 = !DILocation(line: 276, column: 17, scope: !488)
+!521 = !DILocalVariable(name: "zSign", scope: !488, file: !3, line: 266, type: !350)
+!522 = !DILocation(line: 303, column: 7, scope: !523)
+!523 = distinct !DILexicalBlock(scope: !524, file: !3, line: 300, column: 5)
+!524 = distinct !DILexicalBlock(scope: !488, file: !3, line: 299, column: 7)
+!525 = !DILocation(line: 309, column: 7, scope: !526)
+!526 = distinct !DILexicalBlock(scope: !527, file: !3, line: 306, column: 5)
+!527 = distinct !DILexicalBlock(scope: !488, file: !3, line: 305, column: 7)
+!528 = !DILocation(line: 311, column: 10, scope: !488)
+!529 = !DILocation(line: 311, column: 17, scope: !488)
+!530 = !DILocalVariable(name: "zExp", scope: !488, file: !3, line: 267, type: !279)
+!531 = !DILocation(line: 312, column: 11, scope: !488)
+!532 = !DILocation(line: 312, column: 46, scope: !488)
+!533 = !DILocation(line: 313, column: 11, scope: !488)
+!534 = !DILocation(line: 313, column: 46, scope: !488)
+!535 = !DILocalVariable(name: "zSig0", scope: !488, file: !3, line: 268, type: !6)
+!536 = !DILocalVariable(name: "zSig1", scope: !488, file: !3, line: 268, type: !6)
+!537 = !DILocation(line: 314, column: 3, scope: !488)
+!538 = !DILocation(line: 315, column: 13, scope: !488)
+!539 = !DILocation(line: 315, column: 19, scope: !488)
+!540 = !DILocation(line: 315, column: 12, scope: !488)
+!541 = !DILocation(line: 315, column: 9, scope: !488)
+!542 = !DILocation(line: 316, column: 29, scope: !543)
+!543 = distinct !DILexicalBlock(scope: !488, file: !3, line: 316, column: 7)
+!544 = !DILocation(line: 311, column: 15, scope: !488)
+!545 = !DILocation(line: 319, column: 7, scope: !546)
+!546 = distinct !DILexicalBlock(scope: !543, file: !3, line: 317, column: 5)
+!547 = !DILocation(line: 321, column: 10, scope: !488)
+!548 = !DILocation(line: 323, column: 1, scope: !488)
+!549 = !DILocalVariable(name: "a", arg: 1, scope: !20, file: !21, line: 116, type: !24)
+!550 = !DILocation(line: 0, scope: !20)
+!551 = !DILocalVariable(name: "shiftCount", scope: !20, file: !21, line: 136, type: !16)
+!552 = !DILocation(line: 139, column: 9, scope: !553)
+!553 = distinct !DILexicalBlock(scope: !20, file: !21, line: 139, column: 7)
+!554 = !DILocation(line: 139, column: 7, scope: !20)
+!555 = !DILocation(line: 144, column: 9, scope: !556)
+!556 = distinct !DILexicalBlock(scope: !20, file: !21, line: 144, column: 7)
+!557 = !DILocation(line: 144, column: 7, scope: !20)
+!558 = !DILocation(line: 149, column: 41, scope: !20)
+!559 = !DILocation(line: 149, column: 17, scope: !20)
+!560 = !DILocation(line: 149, column: 14, scope: !20)
+!561 = !DILocation(line: 150, column: 3, scope: !20)
`;
