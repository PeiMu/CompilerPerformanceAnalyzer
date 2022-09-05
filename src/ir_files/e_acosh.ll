; ModuleID = 'e_acosh.ll'
source_filename = "c-files/e_acosh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local double @__ieee754_acosh(double %0) #0 !dbg !17 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !21, metadata !DIExpression()), !dbg !22
  %3 = bitcast double* %2 to i32*, !dbg !23
  %4 = getelementptr inbounds i32, i32* %3, i64 1, !dbg !23
  %5 = load i32, i32* %4, align 4, !dbg !23
  call void @llvm.dbg.value(metadata i32 %5, metadata !24, metadata !DIExpression()), !dbg !25
  %6 = icmp slt i32 %5, 1072693248, !dbg !26
  br i1 %6, label %7, label %15, !dbg !28

7:                                                ; preds = %1
  %8 = load double, double* %2, align 8, !dbg !29
  %9 = load double, double* %2, align 8, !dbg !31
  %10 = fsub double %8, %9, !dbg !32
  %11 = load double, double* %2, align 8, !dbg !33
  %12 = load double, double* %2, align 8, !dbg !34
  %13 = fsub double %11, %12, !dbg !35
  %14 = fdiv double %10, %13, !dbg !36
  br label %58, !dbg !37

15:                                               ; preds = %1
  %16 = icmp sge i32 %5, 1102053376, !dbg !38
  br i1 %16, label %17, label %27, !dbg !40

17:                                               ; preds = %15
  %18 = icmp sge i32 %5, 2146435072, !dbg !41
  br i1 %18, label %19, label %23, !dbg !44

19:                                               ; preds = %17
  %20 = load double, double* %2, align 8, !dbg !45
  %21 = load double, double* %2, align 8, !dbg !47
  %22 = fadd double %20, %21, !dbg !48
  br label %58, !dbg !49

23:                                               ; preds = %17
  %24 = load double, double* %2, align 8, !dbg !50
  %25 = call double @log(double %24) #3, !dbg !51
  %26 = fadd double %25, 0x3FE62E42FEFA39EF, !dbg !52
  br label %58, !dbg !53

27:                                               ; preds = %15
  %28 = sub nsw i32 %5, 1072693248, !dbg !54
  %29 = bitcast double* %2 to i32*, !dbg !56
  %30 = load i32, i32* %29, align 8, !dbg !56
  %31 = or i32 %28, %30, !dbg !57
  %32 = icmp eq i32 %31, 0, !dbg !58
  br i1 %32, label %33, label %34, !dbg !59

33:                                               ; preds = %27
  br label %58, !dbg !60

34:                                               ; preds = %27
  %35 = icmp sgt i32 %5, 1073741824, !dbg !62
  br i1 %35, label %36, label %49, !dbg !64

36:                                               ; preds = %34
  %37 = load double, double* %2, align 8, !dbg !65
  %38 = load double, double* %2, align 8, !dbg !67
  %39 = fmul double %37, %38, !dbg !68
  call void @llvm.dbg.value(metadata double %39, metadata !69, metadata !DIExpression()), !dbg !25
  %40 = load double, double* %2, align 8, !dbg !70
  %41 = fmul double 2.000000e+00, %40, !dbg !71
  %42 = load double, double* %2, align 8, !dbg !72
  %43 = fsub double %39, 1.000000e+00, !dbg !73
  %44 = call double @sqrt(double %43) #3, !dbg !74
  %45 = fadd double %42, %44, !dbg !75
  %46 = fdiv double 1.000000e+00, %45, !dbg !76
  %47 = fsub double %41, %46, !dbg !77
  %48 = call double @log(double %47) #3, !dbg !78
  br label %58, !dbg !79

49:                                               ; preds = %34
  %50 = load double, double* %2, align 8, !dbg !80
  %51 = fsub double %50, 1.000000e+00, !dbg !82
  call void @llvm.dbg.value(metadata double %51, metadata !69, metadata !DIExpression()), !dbg !25
  %52 = fmul double 2.000000e+00, %51, !dbg !83
  %53 = fmul double %51, %51, !dbg !84
  %54 = fadd double %52, %53, !dbg !85
  %55 = call double @sqrt(double %54) #3, !dbg !86
  %56 = fadd double %51, %55, !dbg !87
  %57 = call double @log1p(double %56) #3, !dbg !88
  br label %58, !dbg !89

58:                                               ; preds = %49, %36, %33, %23, %19, %7
  %.0 = phi double [ %14, %7 ], [ %22, %19 ], [ %26, %23 ], [ 0.000000e+00, %33 ], [ %48, %36 ], [ %57, %49 ], !dbg !90
  ret double %.0, !dbg !91
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: nounwind
declare dso_local double @log1p(double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 12.0.1-19ubuntu3", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !6, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "c-files/e_acosh.c", directory: "/home/pei/Project/Noisy-lang-compiler/applications/newton/llvm-ir")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !11}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression(DW_OP_constu, 4604418534313441775, DW_OP_stack_value))
!8 = distinct !DIGlobalVariable(name: "ln2", scope: !0, file: !1, line: 37, type: !9, isLocal: true, isDefinition: true)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!12 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 36, type: !9, isLocal: true, isDefinition: true)
!13 = !{i32 7, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!17 = distinct !DISubprogram(name: "__ieee754_acosh", scope: !1, file: !1, line: 45, type: !18, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!18 = !DISubroutineType(types: !19)
!19 = !{!10, !20}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "bmx055xAcceleration", file: !1, line: 42, baseType: !10)
!21 = !DILocalVariable(name: "x", arg: 1, scope: !17, file: !1, line: 45, type: !20)
!22 = !DILocation(line: 45, column: 44, scope: !17)
!23 = !DILocation(line: 53, column: 10, scope: !17)
!24 = !DILocalVariable(name: "hx", scope: !17, file: !1, line: 52, type: !5)
!25 = !DILocation(line: 0, scope: !17)
!26 = !DILocation(line: 54, column: 10, scope: !27)
!27 = distinct !DILexicalBlock(scope: !17, file: !1, line: 54, column: 8)
!28 = !DILocation(line: 54, column: 8, scope: !17)
!29 = !DILocation(line: 55, column: 17, scope: !30)
!30 = distinct !DILexicalBlock(scope: !27, file: !1, line: 54, column: 23)
!31 = !DILocation(line: 55, column: 19, scope: !30)
!32 = !DILocation(line: 55, column: 18, scope: !30)
!33 = !DILocation(line: 55, column: 23, scope: !30)
!34 = !DILocation(line: 55, column: 25, scope: !30)
!35 = !DILocation(line: 55, column: 24, scope: !30)
!36 = !DILocation(line: 55, column: 21, scope: !30)
!37 = !DILocation(line: 55, column: 9, scope: !30)
!38 = !DILocation(line: 56, column: 18, scope: !39)
!39 = distinct !DILexicalBlock(scope: !27, file: !1, line: 56, column: 15)
!40 = !DILocation(line: 56, column: 15, scope: !27)
!41 = !DILocation(line: 57, column: 15, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 57, column: 12)
!43 = distinct !DILexicalBlock(scope: !39, file: !1, line: 56, column: 32)
!44 = !DILocation(line: 57, column: 12, scope: !43)
!45 = !DILocation(line: 58, column: 20, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !1, line: 57, column: 29)
!47 = !DILocation(line: 58, column: 22, scope: !46)
!48 = !DILocation(line: 58, column: 21, scope: !46)
!49 = !DILocation(line: 58, column: 13, scope: !46)
!50 = !DILocation(line: 60, column: 24, scope: !42)
!51 = !DILocation(line: 60, column: 20, scope: !42)
!52 = !DILocation(line: 60, column: 26, scope: !42)
!53 = !DILocation(line: 60, column: 13, scope: !42)
!54 = !DILocation(line: 61, column: 19, scope: !55)
!55 = distinct !DILexicalBlock(scope: !39, file: !1, line: 61, column: 15)
!56 = !DILocation(line: 61, column: 32, scope: !55)
!57 = !DILocation(line: 61, column: 31, scope: !55)
!58 = !DILocation(line: 61, column: 40, scope: !55)
!59 = !DILocation(line: 61, column: 15, scope: !39)
!60 = !DILocation(line: 62, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !55, file: !1, line: 61, column: 45)
!62 = !DILocation(line: 63, column: 19, scope: !63)
!63 = distinct !DILexicalBlock(scope: !55, file: !1, line: 63, column: 16)
!64 = !DILocation(line: 63, column: 16, scope: !55)
!65 = !DILocation(line: 64, column: 11, scope: !66)
!66 = distinct !DILexicalBlock(scope: !63, file: !1, line: 63, column: 33)
!67 = !DILocation(line: 64, column: 13, scope: !66)
!68 = !DILocation(line: 64, column: 12, scope: !66)
!69 = !DILocalVariable(name: "t", scope: !17, file: !1, line: 51, type: !10)
!70 = !DILocation(line: 65, column: 24, scope: !66)
!71 = !DILocation(line: 65, column: 23, scope: !66)
!72 = !DILocation(line: 65, column: 31, scope: !66)
!73 = !DILocation(line: 65, column: 39, scope: !66)
!74 = !DILocation(line: 65, column: 33, scope: !66)
!75 = !DILocation(line: 65, column: 32, scope: !66)
!76 = !DILocation(line: 65, column: 29, scope: !66)
!77 = !DILocation(line: 65, column: 25, scope: !66)
!78 = !DILocation(line: 65, column: 16, scope: !66)
!79 = !DILocation(line: 65, column: 9, scope: !66)
!80 = !DILocation(line: 67, column: 13, scope: !81)
!81 = distinct !DILexicalBlock(scope: !63, file: !1, line: 66, column: 12)
!82 = !DILocation(line: 67, column: 14, scope: !81)
!83 = !DILocation(line: 68, column: 32, scope: !81)
!84 = !DILocation(line: 68, column: 36, scope: !81)
!85 = !DILocation(line: 68, column: 34, scope: !81)
!86 = !DILocation(line: 68, column: 24, scope: !81)
!87 = !DILocation(line: 68, column: 23, scope: !81)
!88 = !DILocation(line: 68, column: 16, scope: !81)
!89 = !DILocation(line: 68, column: 9, scope: !81)
!90 = !DILocation(line: 0, scope: !27)
!91 = !DILocation(line: 70, column: 1, scope: !17)
