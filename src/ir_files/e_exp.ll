; ModuleID = 'e_exp.ll'
source_filename = "c-files/e_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ln2HI = internal constant [2 x double] [double 0x3FE62E42FEE00000, double 0xBFE62E42FEE00000], align 16, !dbg !0
@ln2LO = internal constant [2 x double] [double 0x3DEA39EF35793C76, double 0xBDEA39EF35793C76], align 16, !dbg !33
@halF = internal constant [2 x double] [double 5.000000e-01, double -5.000000e-01], align 16, !dbg !38

; Function Attrs: noinline nounwind uwtable
define dso_local double @__ieee754_exp(double %0) #0 !dbg !44 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata double* %3, metadata !50, metadata !DIExpression()), !dbg !51
  %4 = bitcast double* %2 to i32*, !dbg !52
  %5 = getelementptr inbounds i32, i32* %4, i64 1, !dbg !52
  %6 = load i32, i32* %5, align 4, !dbg !52
  call void @llvm.dbg.value(metadata i32 %6, metadata !53, metadata !DIExpression()), !dbg !55
  %7 = lshr i32 %6, 31, !dbg !56
  %8 = and i32 %7, 1, !dbg !57
  call void @llvm.dbg.value(metadata i32 %8, metadata !58, metadata !DIExpression()), !dbg !55
  %9 = and i32 %6, 2147483647, !dbg !59
  call void @llvm.dbg.value(metadata i32 %9, metadata !53, metadata !DIExpression()), !dbg !55
  %10 = icmp uge i32 %9, 1082535490, !dbg !60
  br i1 %10, label %11, label %39, !dbg !62

11:                                               ; preds = %1
  %12 = icmp uge i32 %9, 2146435072, !dbg !63
  br i1 %12, label %13, label %30, !dbg !66

13:                                               ; preds = %11
  %14 = and i32 %9, 1048575, !dbg !67
  %15 = bitcast double* %2 to i32*, !dbg !70
  %16 = load i32, i32* %15, align 8, !dbg !70
  %17 = or i32 %14, %16, !dbg !71
  %18 = icmp ne i32 %17, 0, !dbg !72
  br i1 %18, label %19, label %23, !dbg !73

19:                                               ; preds = %13
  %20 = load double, double* %2, align 8, !dbg !74
  %21 = load double, double* %2, align 8, !dbg !75
  %22 = fadd double %20, %21, !dbg !76
  br label %133, !dbg !77

23:                                               ; preds = %13
  %24 = icmp eq i32 %8, 0, !dbg !78
  br i1 %24, label %25, label %27, !dbg !79

25:                                               ; preds = %23
  %26 = load double, double* %2, align 8, !dbg !80
  br label %28, !dbg !79

27:                                               ; preds = %23
  br label %28, !dbg !79

28:                                               ; preds = %27, %25
  %29 = phi double [ %26, %25 ], [ 0.000000e+00, %27 ], !dbg !79
  br label %133, !dbg !81

30:                                               ; preds = %11
  %31 = load double, double* %2, align 8, !dbg !82
  %32 = fcmp ogt double %31, 0x40862E42FEFA39EF, !dbg !84
  br i1 %32, label %33, label %34, !dbg !85

33:                                               ; preds = %30
  br label %133, !dbg !86

34:                                               ; preds = %30
  %35 = load double, double* %2, align 8, !dbg !87
  %36 = fcmp olt double %35, 0xC0874910D52D3051, !dbg !89
  br i1 %36, label %37, label %38, !dbg !90

37:                                               ; preds = %34
  br label %133, !dbg !91

38:                                               ; preds = %34
  br label %39, !dbg !92

39:                                               ; preds = %38, %1
  %40 = icmp ugt i32 %9, 1071001154, !dbg !93
  br i1 %40, label %41, label %71, !dbg !95

41:                                               ; preds = %39
  %42 = icmp ult i32 %9, 1072734898, !dbg !96
  br i1 %42, label %43, label %54, !dbg !99

43:                                               ; preds = %41
  %44 = load double, double* %2, align 8, !dbg !100
  %45 = sext i32 %8 to i64, !dbg !102
  %46 = getelementptr inbounds [2 x double], [2 x double]* @ln2HI, i64 0, i64 %45, !dbg !102
  %47 = load double, double* %46, align 8, !dbg !102
  %48 = fsub double %44, %47, !dbg !103
  call void @llvm.dbg.value(metadata double %48, metadata !104, metadata !DIExpression()), !dbg !55
  %49 = sext i32 %8 to i64, !dbg !105
  %50 = getelementptr inbounds [2 x double], [2 x double]* @ln2LO, i64 0, i64 %49, !dbg !105
  %51 = load double, double* %50, align 8, !dbg !105
  call void @llvm.dbg.value(metadata double %51, metadata !106, metadata !DIExpression()), !dbg !55
  %52 = sub nsw i32 1, %8, !dbg !107
  %53 = sub nsw i32 %52, %8, !dbg !108
  call void @llvm.dbg.value(metadata i32 %53, metadata !109, metadata !DIExpression()), !dbg !55
  br label %69, !dbg !110

54:                                               ; preds = %41
  %55 = load double, double* %2, align 8, !dbg !111
  %56 = fmul double 0x3FF71547652B82FE, %55, !dbg !113
  %57 = sext i32 %8 to i64, !dbg !114
  %58 = getelementptr inbounds [2 x double], [2 x double]* @halF, i64 0, i64 %57, !dbg !114
  %59 = load double, double* %58, align 8, !dbg !114
  %60 = fadd double %56, %59, !dbg !115
  %61 = fptosi double %60 to i32, !dbg !116
  call void @llvm.dbg.value(metadata i32 %61, metadata !109, metadata !DIExpression()), !dbg !55
  %62 = sitofp i32 %61 to double, !dbg !117
  call void @llvm.dbg.value(metadata double %62, metadata !118, metadata !DIExpression()), !dbg !55
  %63 = load double, double* %2, align 8, !dbg !119
  %64 = load double, double* getelementptr inbounds ([2 x double], [2 x double]* @ln2HI, i64 0, i64 0), align 16, !dbg !120
  %65 = fmul double %62, %64, !dbg !121
  %66 = fsub double %63, %65, !dbg !122
  call void @llvm.dbg.value(metadata double %66, metadata !104, metadata !DIExpression()), !dbg !55
  %67 = load double, double* getelementptr inbounds ([2 x double], [2 x double]* @ln2LO, i64 0, i64 0), align 16, !dbg !123
  %68 = fmul double %62, %67, !dbg !124
  call void @llvm.dbg.value(metadata double %68, metadata !106, metadata !DIExpression()), !dbg !55
  br label %69

69:                                               ; preds = %54, %43
  %.04 = phi i32 [ %53, %43 ], [ %61, %54 ], !dbg !125
  %.02 = phi double [ %51, %43 ], [ %68, %54 ], !dbg !125
  %.01 = phi double [ %48, %43 ], [ %66, %54 ], !dbg !125
  call void @llvm.dbg.value(metadata double %.01, metadata !104, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata double %.02, metadata !106, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i32 %.04, metadata !109, metadata !DIExpression()), !dbg !55
  %70 = fsub double %.01, %.02, !dbg !126
  store double %70, double* %2, align 8, !dbg !127
  br label %83, !dbg !128

71:                                               ; preds = %39
  %72 = icmp ult i32 %9, 1043333120, !dbg !129
  br i1 %72, label %73, label %81, !dbg !131

73:                                               ; preds = %71
  %74 = load double, double* %2, align 8, !dbg !132
  %75 = fadd double 1.000000e+300, %74, !dbg !135
  %76 = fcmp ogt double %75, 1.000000e+00, !dbg !136
  br i1 %76, label %77, label %80, !dbg !137

77:                                               ; preds = %73
  %78 = load double, double* %2, align 8, !dbg !138
  %79 = fadd double 1.000000e+00, %78, !dbg !139
  br label %133, !dbg !140

80:                                               ; preds = %73
  br label %82, !dbg !141

81:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i32 0, metadata !109, metadata !DIExpression()), !dbg !55
  br label %82

82:                                               ; preds = %81, %80
  call void @llvm.dbg.value(metadata i32 0, metadata !109, metadata !DIExpression()), !dbg !55
  br label %83

83:                                               ; preds = %82, %69
  %.2 = phi i32 [ %.04, %69 ], [ 0, %82 ]
  %.13 = phi double [ %.02, %69 ], [ undef, %82 ]
  %.1 = phi double [ %.01, %69 ], [ undef, %82 ]
  call void @llvm.dbg.value(metadata double %.1, metadata !104, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata double %.13, metadata !106, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i32 %.2, metadata !109, metadata !DIExpression()), !dbg !55
  %84 = load double, double* %2, align 8, !dbg !142
  %85 = load double, double* %2, align 8, !dbg !143
  %86 = fmul double %84, %85, !dbg !144
  call void @llvm.dbg.value(metadata double %86, metadata !118, metadata !DIExpression()), !dbg !55
  %87 = load double, double* %2, align 8, !dbg !145
  %88 = fmul double %86, 0x3E66376972BEA4D0, !dbg !146
  %89 = fadd double 0xBEBBBD41C5D26BF1, %88, !dbg !147
  %90 = fmul double %86, %89, !dbg !148
  %91 = fadd double 0x3F11566AAF25DE2C, %90, !dbg !149
  %92 = fmul double %86, %91, !dbg !150
  %93 = fadd double 0xBF66C16C16BEBD93, %92, !dbg !151
  %94 = fmul double %86, %93, !dbg !152
  %95 = fadd double 0x3FC555555555553E, %94, !dbg !153
  %96 = fmul double %86, %95, !dbg !154
  %97 = fsub double %87, %96, !dbg !155
  call void @llvm.dbg.value(metadata double %97, metadata !156, metadata !DIExpression()), !dbg !55
  %98 = icmp eq i32 %.2, 0, !dbg !157
  br i1 %98, label %99, label %107, !dbg !159

99:                                               ; preds = %83
  %100 = load double, double* %2, align 8, !dbg !160
  %101 = fmul double %100, %97, !dbg !161
  %102 = fsub double %97, 2.000000e+00, !dbg !162
  %103 = fdiv double %101, %102, !dbg !163
  %104 = load double, double* %2, align 8, !dbg !164
  %105 = fsub double %103, %104, !dbg !165
  %106 = fsub double 1.000000e+00, %105, !dbg !166
  br label %133, !dbg !167

107:                                              ; preds = %83
  %108 = load double, double* %2, align 8, !dbg !168
  %109 = fmul double %108, %97, !dbg !169
  %110 = fsub double 2.000000e+00, %97, !dbg !170
  %111 = fdiv double %109, %110, !dbg !171
  %112 = fsub double %.13, %111, !dbg !172
  %113 = fsub double %112, %.1, !dbg !173
  %114 = fsub double 1.000000e+00, %113, !dbg !174
  store double %114, double* %3, align 8, !dbg !175
  br label %115

115:                                              ; preds = %107
  %116 = icmp sge i32 %.2, -1021, !dbg !176
  br i1 %116, label %117, label %124, !dbg !178

117:                                              ; preds = %115
  %118 = shl i32 %.2, 20, !dbg !179
  %119 = bitcast double* %3 to i32*, !dbg !181
  %120 = getelementptr inbounds i32, i32* %119, i64 1, !dbg !181
  %121 = load i32, i32* %120, align 4, !dbg !182
  %122 = add nsw i32 %121, %118, !dbg !182
  store i32 %122, i32* %120, align 4, !dbg !182
  %123 = load double, double* %3, align 8, !dbg !183
  br label %133, !dbg !184

124:                                              ; preds = %115
  %125 = add nsw i32 %.2, 1000, !dbg !185
  %126 = shl i32 %125, 20, !dbg !187
  %127 = bitcast double* %3 to i32*, !dbg !188
  %128 = getelementptr inbounds i32, i32* %127, i64 1, !dbg !188
  %129 = load i32, i32* %128, align 4, !dbg !189
  %130 = add nsw i32 %129, %126, !dbg !189
  store i32 %130, i32* %128, align 4, !dbg !189
  %131 = load double, double* %3, align 8, !dbg !190
  %132 = fmul double %131, 0x170000000000000, !dbg !191
  br label %133, !dbg !192

133:                                              ; preds = %124, %117, %99, %77, %37, %33, %28, %19
  %.0 = phi double [ %22, %19 ], [ %29, %28 ], [ 0x7FF0000000000000, %33 ], [ 0.000000e+00, %37 ], [ %106, %99 ], [ %123, %117 ], [ %132, %124 ], [ %79, %77 ], !dbg !55
  ret double %.0, !dbg !193
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!40, !41, !42}
!llvm.ident = !{!43}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ln2HI", scope: !2, file: !3, line: 89, type: !35, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-19ubuntu3", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "c-files/e_exp.c", directory: "/home/pei/Project/Noisy-lang-compiler/applications/newton/llvm-ir")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !0, !33, !38}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression(DW_OP_constu, 4649454530587146735, DW_OP_stack_value))
!10 = distinct !DIGlobalVariable(name: "o_threshold", scope: !2, file: !3, line: 87, type: !11, isLocal: true, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!14 = distinct !DIGlobalVariable(name: "huge", scope: !2, file: !3, line: 85, type: !11, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression(DW_OP_constu, 13873137513782915153, DW_OP_stack_value))
!16 = distinct !DIGlobalVariable(name: "u_threshold", scope: !2, file: !3, line: 88, type: !11, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression(DW_OP_constu, 103582791429521408, DW_OP_stack_value))
!18 = distinct !DIGlobalVariable(name: "twom1000", scope: !2, file: !3, line: 86, type: !11, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression(DW_OP_constu, 4609176140021203710, DW_OP_stack_value))
!20 = distinct !DIGlobalVariable(name: "invln2", scope: !2, file: !3, line: 93, type: !11, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!22 = distinct !DIGlobalVariable(name: "one", scope: !2, file: !3, line: 83, type: !11, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression(DW_OP_constu, 4595172819793696062, DW_OP_stack_value))
!24 = distinct !DIGlobalVariable(name: "P1", scope: !2, file: !3, line: 94, type: !11, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression(DW_OP_constu, 13791923578850950547, DW_OP_stack_value))
!26 = distinct !DIGlobalVariable(name: "P2", scope: !2, file: !3, line: 95, type: !11, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression(DW_OP_constu, 4544508515198557740, DW_OP_stack_value))
!28 = distinct !DIGlobalVariable(name: "P3", scope: !2, file: !3, line: 96, type: !11, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression(DW_OP_constu, 13743786778040626161, DW_OP_stack_value))
!30 = distinct !DIGlobalVariable(name: "P4", scope: !2, file: !3, line: 97, type: !11, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression(DW_OP_constu, 4496342204012209360, DW_OP_stack_value))
!32 = distinct !DIGlobalVariable(name: "P5", scope: !2, file: !3, line: 98, type: !11, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "ln2LO", scope: !2, file: !3, line: 91, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 128, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 2)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "halF", scope: !2, file: !3, line: 84, type: !35, isLocal: true, isDefinition: true)
!40 = !{i32 7, !"Dwarf Version", i32 4}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{i32 1, !"wchar_size", i32 4}
!43 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!44 = distinct !DISubprogram(name: "__ieee754_exp", scope: !3, file: !3, line: 106, type: !45, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!45 = !DISubroutineType(types: !46)
!46 = !{!12, !47}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "bmx055xAcceleration", file: !3, line: 103, baseType: !12)
!48 = !DILocalVariable(name: "x", arg: 1, scope: !44, file: !3, line: 106, type: !47)
!49 = !DILocation(line: 106, column: 42, scope: !44)
!50 = !DILocalVariable(name: "y", scope: !44, file: !3, line: 112, type: !12)
!51 = !DILocation(line: 112, column: 12, scope: !44)
!52 = !DILocation(line: 116, column: 11, scope: !44)
!53 = !DILocalVariable(name: "hx", scope: !44, file: !3, line: 114, type: !54)
!54 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!55 = !DILocation(line: 0, scope: !44)
!56 = !DILocation(line: 117, column: 14, scope: !44)
!57 = !DILocation(line: 117, column: 19, scope: !44)
!58 = !DILocalVariable(name: "xsb", scope: !44, file: !3, line: 113, type: !7)
!59 = !DILocation(line: 118, column: 8, scope: !44)
!60 = !DILocation(line: 121, column: 11, scope: !61)
!61 = distinct !DILexicalBlock(scope: !44, file: !3, line: 121, column: 8)
!62 = !DILocation(line: 121, column: 8, scope: !44)
!63 = !DILocation(line: 122, column: 14, scope: !64)
!64 = distinct !DILexicalBlock(scope: !65, file: !3, line: 122, column: 12)
!65 = distinct !DILexicalBlock(scope: !61, file: !3, line: 121, column: 26)
!66 = !DILocation(line: 122, column: 12, scope: !65)
!67 = !DILocation(line: 123, column: 20, scope: !68)
!68 = distinct !DILexicalBlock(scope: !69, file: !3, line: 123, column: 16)
!69 = distinct !DILexicalBlock(scope: !64, file: !3, line: 122, column: 28)
!70 = !DILocation(line: 123, column: 30, scope: !68)
!71 = !DILocation(line: 123, column: 29, scope: !68)
!72 = !DILocation(line: 123, column: 38, scope: !68)
!73 = !DILocation(line: 123, column: 16, scope: !69)
!74 = !DILocation(line: 124, column: 24, scope: !68)
!75 = !DILocation(line: 124, column: 26, scope: !68)
!76 = !DILocation(line: 124, column: 25, scope: !68)
!77 = !DILocation(line: 124, column: 17, scope: !68)
!78 = !DILocation(line: 125, column: 29, scope: !68)
!79 = !DILocation(line: 125, column: 25, scope: !68)
!80 = !DILocation(line: 125, column: 35, scope: !68)
!81 = !DILocation(line: 125, column: 18, scope: !68)
!82 = !DILocation(line: 127, column: 12, scope: !83)
!83 = distinct !DILexicalBlock(scope: !65, file: !3, line: 127, column: 12)
!84 = !DILocation(line: 127, column: 14, scope: !83)
!85 = !DILocation(line: 127, column: 12, scope: !65)
!86 = !DILocation(line: 127, column: 29, scope: !83)
!87 = !DILocation(line: 128, column: 12, scope: !88)
!88 = distinct !DILexicalBlock(scope: !65, file: !3, line: 128, column: 12)
!89 = !DILocation(line: 128, column: 14, scope: !88)
!90 = !DILocation(line: 128, column: 12, scope: !65)
!91 = !DILocation(line: 128, column: 29, scope: !88)
!92 = !DILocation(line: 129, column: 5, scope: !65)
!93 = !DILocation(line: 132, column: 11, scope: !94)
!94 = distinct !DILexicalBlock(scope: !44, file: !3, line: 132, column: 8)
!95 = !DILocation(line: 132, column: 8, scope: !44)
!96 = !DILocation(line: 133, column: 15, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !3, line: 133, column: 12)
!98 = distinct !DILexicalBlock(scope: !94, file: !3, line: 132, column: 25)
!99 = !DILocation(line: 133, column: 12, scope: !98)
!100 = !DILocation(line: 134, column: 18, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !3, line: 133, column: 29)
!102 = !DILocation(line: 134, column: 20, scope: !101)
!103 = !DILocation(line: 134, column: 19, scope: !101)
!104 = !DILocalVariable(name: "hi", scope: !44, file: !3, line: 112, type: !12)
!105 = !DILocation(line: 134, column: 35, scope: !101)
!106 = !DILocalVariable(name: "lo", scope: !44, file: !3, line: 112, type: !12)
!107 = !DILocation(line: 134, column: 52, scope: !101)
!108 = !DILocation(line: 134, column: 56, scope: !101)
!109 = !DILocalVariable(name: "k", scope: !44, file: !3, line: 113, type: !7)
!110 = !DILocation(line: 135, column: 9, scope: !101)
!111 = !DILocation(line: 136, column: 31, scope: !112)
!112 = distinct !DILexicalBlock(scope: !97, file: !3, line: 135, column: 16)
!113 = !DILocation(line: 136, column: 30, scope: !112)
!114 = !DILocation(line: 136, column: 33, scope: !112)
!115 = !DILocation(line: 136, column: 32, scope: !112)
!116 = !DILocation(line: 136, column: 18, scope: !112)
!117 = !DILocation(line: 137, column: 18, scope: !112)
!118 = !DILocalVariable(name: "t", scope: !44, file: !3, line: 112, type: !12)
!119 = !DILocation(line: 138, column: 18, scope: !112)
!120 = !DILocation(line: 138, column: 24, scope: !112)
!121 = !DILocation(line: 138, column: 23, scope: !112)
!122 = !DILocation(line: 138, column: 20, scope: !112)
!123 = !DILocation(line: 139, column: 20, scope: !112)
!124 = !DILocation(line: 139, column: 19, scope: !112)
!125 = !DILocation(line: 0, scope: !97)
!126 = !DILocation(line: 141, column: 17, scope: !98)
!127 = !DILocation(line: 141, column: 12, scope: !98)
!128 = !DILocation(line: 142, column: 5, scope: !98)
!129 = !DILocation(line: 143, column: 16, scope: !130)
!130 = distinct !DILexicalBlock(scope: !94, file: !3, line: 143, column: 13)
!131 = !DILocation(line: 143, column: 13, scope: !94)
!132 = !DILocation(line: 144, column: 17, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !3, line: 144, column: 12)
!134 = distinct !DILexicalBlock(scope: !130, file: !3, line: 143, column: 31)
!135 = !DILocation(line: 144, column: 16, scope: !133)
!136 = !DILocation(line: 144, column: 18, scope: !133)
!137 = !DILocation(line: 144, column: 12, scope: !134)
!138 = !DILocation(line: 144, column: 35, scope: !133)
!139 = !DILocation(line: 144, column: 34, scope: !133)
!140 = !DILocation(line: 144, column: 24, scope: !133)
!141 = !DILocation(line: 145, column: 5, scope: !134)
!142 = !DILocation(line: 149, column: 10, scope: !44)
!143 = !DILocation(line: 149, column: 12, scope: !44)
!144 = !DILocation(line: 149, column: 11, scope: !44)
!145 = !DILocation(line: 150, column: 10, scope: !44)
!146 = !DILocation(line: 150, column: 39, scope: !44)
!147 = !DILocation(line: 150, column: 37, scope: !44)
!148 = !DILocation(line: 150, column: 33, scope: !44)
!149 = !DILocation(line: 150, column: 31, scope: !44)
!150 = !DILocation(line: 150, column: 27, scope: !44)
!151 = !DILocation(line: 150, column: 25, scope: !44)
!152 = !DILocation(line: 150, column: 21, scope: !44)
!153 = !DILocation(line: 150, column: 19, scope: !44)
!154 = !DILocation(line: 150, column: 15, scope: !44)
!155 = !DILocation(line: 150, column: 12, scope: !44)
!156 = !DILocalVariable(name: "c", scope: !44, file: !3, line: 112, type: !12)
!157 = !DILocation(line: 151, column: 9, scope: !158)
!158 = distinct !DILexicalBlock(scope: !44, file: !3, line: 151, column: 8)
!159 = !DILocation(line: 151, column: 8, scope: !44)
!160 = !DILocation(line: 151, column: 28, scope: !158)
!161 = !DILocation(line: 151, column: 29, scope: !158)
!162 = !DILocation(line: 151, column: 35, scope: !158)
!163 = !DILocation(line: 151, column: 32, scope: !158)
!164 = !DILocation(line: 151, column: 41, scope: !158)
!165 = !DILocation(line: 151, column: 40, scope: !158)
!166 = !DILocation(line: 151, column: 25, scope: !158)
!167 = !DILocation(line: 151, column: 15, scope: !158)
!168 = !DILocation(line: 152, column: 26, scope: !158)
!169 = !DILocation(line: 152, column: 27, scope: !158)
!170 = !DILocation(line: 152, column: 35, scope: !158)
!171 = !DILocation(line: 152, column: 30, scope: !158)
!172 = !DILocation(line: 152, column: 24, scope: !158)
!173 = !DILocation(line: 152, column: 39, scope: !158)
!174 = !DILocation(line: 152, column: 19, scope: !158)
!175 = !DILocation(line: 152, column: 14, scope: !158)
!176 = !DILocation(line: 153, column: 10, scope: !177)
!177 = distinct !DILexicalBlock(scope: !44, file: !3, line: 153, column: 8)
!178 = !DILocation(line: 153, column: 8, scope: !44)
!179 = !DILocation(line: 154, column: 22, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !3, line: 153, column: 20)
!181 = !DILocation(line: 154, column: 9, scope: !180)
!182 = !DILocation(line: 154, column: 17, scope: !180)
!183 = !DILocation(line: 155, column: 16, scope: !180)
!184 = !DILocation(line: 155, column: 9, scope: !180)
!185 = !DILocation(line: 157, column: 23, scope: !186)
!186 = distinct !DILexicalBlock(scope: !177, file: !3, line: 156, column: 12)
!187 = !DILocation(line: 157, column: 29, scope: !186)
!188 = !DILocation(line: 157, column: 9, scope: !186)
!189 = !DILocation(line: 157, column: 17, scope: !186)
!190 = !DILocation(line: 158, column: 16, scope: !186)
!191 = !DILocation(line: 158, column: 17, scope: !186)
!192 = !DILocation(line: 158, column: 9, scope: !186)
!193 = !DILocation(line: 160, column: 1, scope: !44)
