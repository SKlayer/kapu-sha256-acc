; ModuleID = 'E:/acc_2562/sha256_acc2/acc256/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

%struct.SHA256_CTX.0 = type { [64 x i8], i32, [2 x i32], [8 x i32] }

@sha256.str = internal unnamed_addr constant [7 x i8] c"sha256\00" ; [#uses=1 type=[7 x i8]*]
@k = constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16 ; [#uses=1 type=[64 x i32]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]

; [#uses=2]
define internal fastcc void @sha256_update(%struct.SHA256_CTX.0* %ctx, i8* %data, i32 %len) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{%struct.SHA256_CTX.0* %ctx}, i64 0, metadata !84), !dbg !85 ; [debug line = 86:32] [debug variable = ctx]
  call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !86), !dbg !87 ; [debug line = 86:51] [debug variable = data]
  call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !88), !dbg !89 ; [debug line = 86:72] [debug variable = len]
  %ctx.addr = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 1, !dbg !90 ; [#uses=4 type=i32*] [debug line = 91:7]
  %ctx.addr.1 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 0, !dbg !94 ; [#uses=1 type=i8*] [debug line = 94:10]
  %ctx.addr.2 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 2, i64 0, !dbg !96 ; [#uses=2 type=i32*] [debug line = 95:10]
  %ctx.addr.3 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 2, i64 1, !dbg !97 ; [#uses=2 type=i32*] [debug line = 95:51]
  br label %1, !dbg !98                           ; [debug line = 90:9]

; <label>:1                                       ; preds = %._crit_edge, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %._crit_edge ]  ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, %len, !dbg !98      ; [#uses=1 type=i1] [debug line = 90:9]
  br i1 %exitcond, label %5, label %2, !dbg !98   ; [debug line = 90:9]

; <label>:2                                       ; preds = %1
  %tmp = zext i32 %i to i64, !dbg !90             ; [#uses=1 type=i64] [debug line = 91:7]
  %data.addr = getelementptr inbounds i8* %data, i64 %tmp, !dbg !90 ; [#uses=1 type=i8*] [debug line = 91:7]
  %data.load = load i8* %data.addr, align 1, !dbg !90 ; [#uses=2 type=i8] [debug line = 91:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data.load) nounwind
  %ctx.load = load i32* %ctx.addr, align 4, !dbg !90 ; [#uses=2 type=i32] [debug line = 91:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load) nounwind
  %tmp.1 = zext i32 %ctx.load to i64, !dbg !90    ; [#uses=1 type=i64] [debug line = 91:7]
  %ctx.addr.4 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 %tmp.1, !dbg !90 ; [#uses=1 type=i8*] [debug line = 91:7]
  store i8 %data.load, i8* %ctx.addr.4, align 1, !dbg !90 ; [debug line = 91:7]
  %ctx.load.1 = load i32* %ctx.addr, align 4, !dbg !99 ; [#uses=2 type=i32] [debug line = 92:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.1) nounwind
  %tmp.2 = add i32 %ctx.load.1, 1, !dbg !99       ; [#uses=3 type=i32] [debug line = 92:7]
  store i32 %tmp.2, i32* %ctx.addr, align 4, !dbg !99 ; [debug line = 92:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.2) nounwind
  %tmp.3 = icmp eq i32 %tmp.2, 64, !dbg !100      ; [#uses=1 type=i1] [debug line = 93:7]
  br i1 %tmp.3, label %3, label %._crit_edge, !dbg !100 ; [debug line = 93:7]

; <label>:3                                       ; preds = %2
  call fastcc void @sha256_transform(%struct.SHA256_CTX.0* %ctx, i8* %ctx.addr.1), !dbg !94 ; [debug line = 94:10]
  %ctx.load.2 = load i32* %ctx.addr.2, align 4, !dbg !96 ; [#uses=4 type=i32] [debug line = 95:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.2) nounwind
  %tmp.4 = icmp ugt i32 %ctx.load.2, -513, !dbg !96 ; [#uses=1 type=i1] [debug line = 95:10]
  br i1 %tmp.4, label %4, label %._crit_edge1, !dbg !96 ; [debug line = 95:10]

; <label>:4                                       ; preds = %3
  %ctx.load.3 = load i32* %ctx.addr.3, align 4, !dbg !97 ; [#uses=2 type=i32] [debug line = 95:51]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.3) nounwind
  %tmp.5 = add i32 %ctx.load.3, 1, !dbg !97       ; [#uses=1 type=i32] [debug line = 95:51]
  store i32 %tmp.5, i32* %ctx.addr.3, align 4, !dbg !97 ; [debug line = 95:51]
  br label %._crit_edge1, !dbg !97                ; [debug line = 95:51]

._crit_edge1:                                     ; preds = %4, %3
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.2) nounwind
  %tmp.6 = add i32 %ctx.load.2, 512, !dbg !101    ; [#uses=1 type=i32] [debug line = 95:69]
  store i32 %tmp.6, i32* %ctx.addr.2, align 4, !dbg !101 ; [debug line = 95:69]
  store i32 0, i32* %ctx.addr, align 4, !dbg !102 ; [debug line = 96:10]
  br label %._crit_edge, !dbg !103                ; [debug line = 97:7]

._crit_edge:                                      ; preds = %._crit_edge1, %2
  %i.1 = add i32 %i, 1, !dbg !104                 ; [#uses=1 type=i32] [debug line = 90:23]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !105), !dbg !104 ; [debug line = 90:23] [debug variable = i]
  br label %1, !dbg !104                          ; [debug line = 90:23]

; <label>:5                                       ; preds = %1
  ret void, !dbg !106                             ; [debug line = 99:1]
}

; [#uses=3]
define internal fastcc void @sha256_transform(%struct.SHA256_CTX.0* %ctx, i8* %data) nounwind uwtable {
  %m = alloca [64 x i32], align 16                ; [#uses=7 type=[64 x i32]*]
  call void @llvm.dbg.value(metadata !{%struct.SHA256_CTX.0* %ctx}, i64 0, metadata !107), !dbg !108 ; [debug line = 30:35] [debug variable = ctx]
  call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !109), !dbg !110 ; [debug line = 30:54] [debug variable = data]
  call void @llvm.dbg.declare(metadata !{[64 x i32]* %m}, metadata !111), !dbg !113 ; [debug line = 32:43] [debug variable = m]
  br label %1, !dbg !114                          ; [debug line = 34:9]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %tmp.26, %2 ]         ; [#uses=3 type=i32]
  %j = phi i32 [ 0, %0 ], [ %j.1, %2 ]            ; [#uses=5 type=i32]
  %tmp = icmp eq i32 %i, 16, !dbg !114            ; [#uses=1 type=i1] [debug line = 34:9]
  br i1 %tmp, label %.preheader.preheader, label %2, !dbg !114 ; [debug line = 34:9]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !116                 ; [debug line = 36:4]

; <label>:2                                       ; preds = %1
  %tmp.8 = zext i32 %j to i64, !dbg !118          ; [#uses=1 type=i64] [debug line = 35:7]
  %data.addr = getelementptr inbounds i8* %data, i64 %tmp.8, !dbg !118 ; [#uses=1 type=i8*] [debug line = 35:7]
  %data.load = load i8* %data.addr, align 1, !dbg !118 ; [#uses=2 type=i8] [debug line = 35:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data.load) nounwind
  %tmp.9 = zext i8 %data.load to i32, !dbg !118   ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.10 = shl nuw i32 %tmp.9, 24, !dbg !118     ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.11 = or i32 %j, 1, !dbg !118               ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.12 = zext i32 %tmp.11 to i64, !dbg !118    ; [#uses=1 type=i64] [debug line = 35:7]
  %data.addr.1 = getelementptr inbounds i8* %data, i64 %tmp.12, !dbg !118 ; [#uses=1 type=i8*] [debug line = 35:7]
  %data.load.1 = load i8* %data.addr.1, align 1, !dbg !118 ; [#uses=2 type=i8] [debug line = 35:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data.load.1) nounwind
  %tmp.13 = zext i8 %data.load.1 to i32, !dbg !118 ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.14 = shl nuw nsw i32 %tmp.13, 16, !dbg !118 ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.15 = or i32 %j, 2, !dbg !118               ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.16 = zext i32 %tmp.15 to i64, !dbg !118    ; [#uses=1 type=i64] [debug line = 35:7]
  %data.addr.2 = getelementptr inbounds i8* %data, i64 %tmp.16, !dbg !118 ; [#uses=1 type=i8*] [debug line = 35:7]
  %data.load.2 = load i8* %data.addr.2, align 1, !dbg !118 ; [#uses=2 type=i8] [debug line = 35:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data.load.2) nounwind
  %tmp.17 = zext i8 %data.load.2 to i32, !dbg !118 ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.18 = shl nuw nsw i32 %tmp.17, 8, !dbg !118 ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.19 = or i32 %j, 3, !dbg !118               ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.20 = zext i32 %tmp.19 to i64, !dbg !118    ; [#uses=1 type=i64] [debug line = 35:7]
  %data.addr.3 = getelementptr inbounds i8* %data, i64 %tmp.20, !dbg !118 ; [#uses=1 type=i8*] [debug line = 35:7]
  %data.load.3 = load i8* %data.addr.3, align 1, !dbg !118 ; [#uses=2 type=i8] [debug line = 35:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data.load.3) nounwind
  %tmp.21 = zext i8 %data.load.3 to i32, !dbg !118 ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.22 = or i32 %tmp.14, %tmp.10, !dbg !118    ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.23 = or i32 %tmp.22, %tmp.18, !dbg !118    ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.24 = or i32 %tmp.23, %tmp.21, !dbg !118    ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.25 = zext i32 %i to i64, !dbg !118         ; [#uses=1 type=i64] [debug line = 35:7]
  %m.addr = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp.25, !dbg !118 ; [#uses=1 type=i32*] [debug line = 35:7]
  store i32 %tmp.24, i32* %m.addr, align 4, !dbg !118 ; [debug line = 35:7]
  %tmp.26 = add i32 %i, 1, !dbg !119              ; [#uses=1 type=i32] [debug line = 34:26]
  %j.1 = add i32 %j, 4, !dbg !119                 ; [#uses=1 type=i32] [debug line = 34:26]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !120), !dbg !119 ; [debug line = 34:26] [debug variable = j]
  br label %1, !dbg !119                          ; [debug line = 34:26]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %i.1 = phi i32 [ %i.3, %3 ], [ 16, %.preheader.preheader ] ; [#uses=7 type=i32]
  %exitcond = icmp eq i32 %i.1, 64, !dbg !116     ; [#uses=1 type=i1] [debug line = 36:4]
  br i1 %exitcond, label %4, label %3, !dbg !116  ; [debug line = 36:4]

; <label>:3                                       ; preds = %.preheader
  %tmp.28 = add i32 %i.1, -2, !dbg !121           ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.29 = zext i32 %tmp.28 to i64, !dbg !121    ; [#uses=1 type=i64] [debug line = 37:7]
  %m.addr.1 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp.29, !dbg !121 ; [#uses=1 type=i32*] [debug line = 37:7]
  %m.load = load i32* %m.addr.1, align 4, !dbg !121 ; [#uses=10 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load) nounwind
  %tmp.30 = lshr i32 %m.load, 17, !dbg !121       ; [#uses=1 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load) nounwind
  %tmp.31 = shl i32 %m.load, 15, !dbg !121        ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.32 = or i32 %tmp.31, %tmp.30, !dbg !121    ; [#uses=1 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load) nounwind
  %tmp.33 = lshr i32 %m.load, 19, !dbg !121       ; [#uses=1 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load) nounwind
  %tmp.34 = shl i32 %m.load, 13, !dbg !121        ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.35 = or i32 %tmp.34, %tmp.33, !dbg !121    ; [#uses=1 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load) nounwind
  %tmp.36 = lshr i32 %m.load, 10, !dbg !121       ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.37 = xor i32 %tmp.32, %tmp.36, !dbg !121   ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.38 = xor i32 %tmp.37, %tmp.35, !dbg !121   ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.39 = add i32 %i.1, -7, !dbg !121           ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.40 = zext i32 %tmp.39 to i64, !dbg !121    ; [#uses=1 type=i64] [debug line = 37:7]
  %m.addr.2 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp.40, !dbg !121 ; [#uses=1 type=i32*] [debug line = 37:7]
  %m.load.1 = load i32* %m.addr.2, align 4, !dbg !121 ; [#uses=2 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.1) nounwind
  %tmp.41 = add i32 %i.1, -15, !dbg !121          ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.42 = zext i32 %tmp.41 to i64, !dbg !121    ; [#uses=1 type=i64] [debug line = 37:7]
  %m.addr.3 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp.42, !dbg !121 ; [#uses=1 type=i32*] [debug line = 37:7]
  %m.load.2 = load i32* %m.addr.3, align 4, !dbg !121 ; [#uses=10 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.2) nounwind
  %tmp.43 = lshr i32 %m.load.2, 7, !dbg !121      ; [#uses=1 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.2) nounwind
  %tmp.44 = shl i32 %m.load.2, 25, !dbg !121      ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.45 = or i32 %tmp.44, %tmp.43, !dbg !121    ; [#uses=1 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.2) nounwind
  %tmp.46 = lshr i32 %m.load.2, 18, !dbg !121     ; [#uses=1 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.2) nounwind
  %tmp.47 = shl i32 %m.load.2, 14, !dbg !121      ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.48 = or i32 %tmp.47, %tmp.46, !dbg !121    ; [#uses=1 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.2) nounwind
  %tmp.49 = lshr i32 %m.load.2, 3, !dbg !121      ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.50 = xor i32 %tmp.45, %tmp.49, !dbg !121   ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.51 = xor i32 %tmp.50, %tmp.48, !dbg !121   ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.52 = add i32 %i.1, -16, !dbg !121          ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.53 = zext i32 %tmp.52 to i64, !dbg !121    ; [#uses=1 type=i64] [debug line = 37:7]
  %m.addr.4 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp.53, !dbg !121 ; [#uses=1 type=i32*] [debug line = 37:7]
  %m.load.3 = load i32* %m.addr.4, align 4, !dbg !121 ; [#uses=2 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.3) nounwind
  %tmp.54 = add i32 %m.load.1, %tmp.38, !dbg !121 ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.55 = add i32 %tmp.54, %tmp.51, !dbg !121   ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.56 = add i32 %tmp.55, %m.load.3, !dbg !121 ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.57 = zext i32 %i.1 to i64, !dbg !121       ; [#uses=1 type=i64] [debug line = 37:7]
  %m.addr.5 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp.57, !dbg !121 ; [#uses=1 type=i32*] [debug line = 37:7]
  store i32 %tmp.56, i32* %m.addr.5, align 4, !dbg !121 ; [debug line = 37:7]
  %i.3 = add i32 %i.1, 1, !dbg !122               ; [#uses=1 type=i32] [debug line = 36:20]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !123), !dbg !122 ; [debug line = 36:20] [debug variable = i]
  br label %.preheader, !dbg !122                 ; [debug line = 36:20]

; <label>:4                                       ; preds = %.preheader
  %ctx.addr = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 0, !dbg !124 ; [#uses=2 type=i32*] [debug line = 39:4]
  %a = load i32* %ctx.addr, align 4, !dbg !124    ; [#uses=4 type=i32] [debug line = 39:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %a) nounwind
  call void @llvm.dbg.value(metadata !{i32 %a}, i64 0, metadata !125), !dbg !124 ; [debug line = 39:4] [debug variable = a]
  %ctx.addr.5 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 1, !dbg !126 ; [#uses=2 type=i32*] [debug line = 40:4]
  %b = load i32* %ctx.addr.5, align 4, !dbg !126  ; [#uses=4 type=i32] [debug line = 40:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %b) nounwind
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !127), !dbg !126 ; [debug line = 40:4] [debug variable = b]
  %ctx.addr.6 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 2, !dbg !128 ; [#uses=2 type=i32*] [debug line = 41:4]
  %c = load i32* %ctx.addr.6, align 4, !dbg !128  ; [#uses=4 type=i32] [debug line = 41:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %c) nounwind
  call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !129), !dbg !128 ; [debug line = 41:4] [debug variable = c]
  %ctx.addr.7 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 3, !dbg !130 ; [#uses=2 type=i32*] [debug line = 42:4]
  %d = load i32* %ctx.addr.7, align 4, !dbg !130  ; [#uses=4 type=i32] [debug line = 42:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %d) nounwind
  call void @llvm.dbg.value(metadata !{i32 %d}, i64 0, metadata !131), !dbg !130 ; [debug line = 42:4] [debug variable = d]
  %ctx.addr.8 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 4, !dbg !132 ; [#uses=2 type=i32*] [debug line = 43:4]
  %e = load i32* %ctx.addr.8, align 4, !dbg !132  ; [#uses=4 type=i32] [debug line = 43:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %e) nounwind
  call void @llvm.dbg.value(metadata !{i32 %e}, i64 0, metadata !133), !dbg !132 ; [debug line = 43:4] [debug variable = e]
  %ctx.addr.9 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 5, !dbg !134 ; [#uses=2 type=i32*] [debug line = 44:4]
  %f = load i32* %ctx.addr.9, align 4, !dbg !134  ; [#uses=4 type=i32] [debug line = 44:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %f) nounwind
  call void @llvm.dbg.value(metadata !{i32 %f}, i64 0, metadata !135), !dbg !134 ; [debug line = 44:4] [debug variable = f]
  %ctx.addr.10 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 6, !dbg !136 ; [#uses=2 type=i32*] [debug line = 45:4]
  %g = load i32* %ctx.addr.10, align 4, !dbg !136 ; [#uses=4 type=i32] [debug line = 45:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %g) nounwind
  call void @llvm.dbg.value(metadata !{i32 %g}, i64 0, metadata !137), !dbg !136 ; [debug line = 45:4] [debug variable = g]
  %ctx.addr.11 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 7, !dbg !138 ; [#uses=2 type=i32*] [debug line = 46:4]
  %h = load i32* %ctx.addr.11, align 4, !dbg !138 ; [#uses=4 type=i32] [debug line = 46:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %h) nounwind
  call void @llvm.dbg.value(metadata !{i32 %h}, i64 0, metadata !139), !dbg !138 ; [debug line = 46:4] [debug variable = h]
  br label %5, !dbg !140                          ; [debug line = 48:9]

; <label>:5                                       ; preds = %6, %4
  %h1 = phi i32 [ %h, %4 ], [ %h.2, %6 ]          ; [#uses=2 type=i32]
  %h.2 = phi i32 [ %g, %4 ], [ %g.2, %6 ]         ; [#uses=3 type=i32]
  %g.2 = phi i32 [ %f, %4 ], [ %f.2, %6 ]         ; [#uses=3 type=i32]
  %f.2 = phi i32 [ %e, %4 ], [ %e.2, %6 ]         ; [#uses=10 type=i32]
  %d1 = phi i32 [ %d, %4 ], [ %d.2, %6 ]          ; [#uses=2 type=i32]
  %d.2 = phi i32 [ %c, %4 ], [ %c.2, %6 ]         ; [#uses=4 type=i32]
  %c.2 = phi i32 [ %b, %4 ], [ %b.2, %6 ]         ; [#uses=4 type=i32]
  %b.2 = phi i32 [ %a, %4 ], [ %a.2, %6 ]         ; [#uses=9 type=i32]
  %i.2 = phi i32 [ 0, %4 ], [ %i.4, %6 ]          ; [#uses=3 type=i32]
  %tmp.59 = icmp eq i32 %i.2, 64, !dbg !140       ; [#uses=1 type=i1] [debug line = 48:9]
  br i1 %tmp.59, label %7, label %6, !dbg !140    ; [debug line = 48:9]

; <label>:6                                       ; preds = %5
  %tmp.68 = lshr i32 %f.2, 6, !dbg !142           ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.69 = shl i32 %f.2, 26, !dbg !142           ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.70 = or i32 %tmp.68, %tmp.69, !dbg !142    ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.71 = lshr i32 %f.2, 11, !dbg !142          ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.72 = shl i32 %f.2, 21, !dbg !142           ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.73 = or i32 %tmp.71, %tmp.72, !dbg !142    ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.74 = lshr i32 %f.2, 25, !dbg !142          ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.75 = shl i32 %f.2, 7, !dbg !142            ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.76 = or i32 %tmp.74, %tmp.75, !dbg !142    ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.77 = xor i32 %tmp.76, %tmp.70, !dbg !142   ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.78 = xor i32 %tmp.77, %tmp.73, !dbg !142   ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.79 = and i32 %f.2, %g.2, !dbg !142         ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.80 = xor i32 %f.2, -1, !dbg !142           ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.81 = and i32 %tmp.80, %h.2, !dbg !142      ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.82 = xor i32 %tmp.79, %tmp.81, !dbg !142   ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.83 = zext i32 %i.2 to i64, !dbg !142       ; [#uses=2 type=i64] [debug line = 49:7]
  %k.addr = getelementptr inbounds [64 x i32]* @k, i64 0, i64 %tmp.83, !dbg !142 ; [#uses=1 type=i32*] [debug line = 49:7]
  %k.load = load i32* %k.addr, align 4, !dbg !142 ; [#uses=2 type=i32] [debug line = 49:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %k.load) nounwind
  %m.addr.6 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp.83, !dbg !142 ; [#uses=1 type=i32*] [debug line = 49:7]
  %m.load.4 = load i32* %m.addr.6, align 4, !dbg !142 ; [#uses=2 type=i32] [debug line = 49:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.4) nounwind
  %tmp.84 = add i32 %tmp.82, %h1, !dbg !142       ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.85 = add i32 %tmp.84, %tmp.78, !dbg !142   ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.86 = add i32 %tmp.85, %k.load, !dbg !142   ; [#uses=1 type=i32] [debug line = 49:7]
  %t1 = add i32 %tmp.86, %m.load.4, !dbg !142     ; [#uses=2 type=i32] [debug line = 49:7]
  call void @llvm.dbg.value(metadata !{i32 %t1}, i64 0, metadata !144), !dbg !142 ; [debug line = 49:7] [debug variable = t1]
  %tmp.87 = lshr i32 %b.2, 2, !dbg !145           ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.88 = shl i32 %b.2, 30, !dbg !145           ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.89 = or i32 %tmp.87, %tmp.88, !dbg !145    ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.90 = lshr i32 %b.2, 13, !dbg !145          ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.91 = shl i32 %b.2, 19, !dbg !145           ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.92 = or i32 %tmp.90, %tmp.91, !dbg !145    ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.93 = lshr i32 %b.2, 22, !dbg !145          ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.94 = shl i32 %b.2, 10, !dbg !145           ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.95 = or i32 %tmp.93, %tmp.94, !dbg !145    ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.96 = xor i32 %tmp.95, %tmp.89, !dbg !145   ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.97 = xor i32 %tmp.96, %tmp.92, !dbg !145   ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.98 = xor i32 %c.2, %d.2, !dbg !145         ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.99 = and i32 %b.2, %tmp.98, !dbg !145      ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.100 = and i32 %c.2, %d.2, !dbg !145        ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.101 = xor i32 %tmp.99, %tmp.100, !dbg !145 ; [#uses=1 type=i32] [debug line = 50:7]
  call void @llvm.dbg.value(metadata !{i32 %t2}, i64 0, metadata !146), !dbg !145 ; [debug line = 50:7] [debug variable = t2]
  call void @llvm.dbg.value(metadata !{i32 %h.2}, i64 0, metadata !139), !dbg !147 ; [debug line = 51:7] [debug variable = h]
  call void @llvm.dbg.value(metadata !{i32 %g.2}, i64 0, metadata !137), !dbg !148 ; [debug line = 52:7] [debug variable = g]
  call void @llvm.dbg.value(metadata !{i32 %f.2}, i64 0, metadata !135), !dbg !149 ; [debug line = 53:7] [debug variable = f]
  %e.2 = add i32 %t1, %d1, !dbg !150              ; [#uses=1 type=i32] [debug line = 54:7]
  call void @llvm.dbg.value(metadata !{i32 %e.2}, i64 0, metadata !133), !dbg !150 ; [debug line = 54:7] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i32 %d.2}, i64 0, metadata !131), !dbg !151 ; [debug line = 55:7] [debug variable = d]
  call void @llvm.dbg.value(metadata !{i32 %c.2}, i64 0, metadata !129), !dbg !152 ; [debug line = 56:7] [debug variable = c]
  call void @llvm.dbg.value(metadata !{i32 %b.2}, i64 0, metadata !127), !dbg !153 ; [debug line = 57:7] [debug variable = b]
  %t2 = add i32 %tmp.97, %tmp.101, !dbg !145      ; [#uses=1 type=i32] [debug line = 50:7]
  %a.2 = add i32 %t2, %t1, !dbg !154              ; [#uses=1 type=i32] [debug line = 58:7]
  call void @llvm.dbg.value(metadata !{i32 %a.2}, i64 0, metadata !125), !dbg !154 ; [debug line = 58:7] [debug variable = a]
  %i.4 = add i32 %i.2, 1, !dbg !155               ; [#uses=1 type=i32] [debug line = 48:24]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !123), !dbg !155 ; [debug line = 48:24] [debug variable = i]
  br label %5, !dbg !155                          ; [debug line = 48:24]

; <label>:7                                       ; preds = %5
  %a.0.lcssa = phi i32 [ %b.2, %5 ]               ; [#uses=1 type=i32]
  %b.0.lcssa = phi i32 [ %c.2, %5 ]               ; [#uses=1 type=i32]
  %c.0.lcssa = phi i32 [ %d.2, %5 ]               ; [#uses=1 type=i32]
  %d.0.lcssa = phi i32 [ %d1, %5 ]                ; [#uses=1 type=i32]
  %e.0.lcssa = phi i32 [ %f.2, %5 ]               ; [#uses=1 type=i32]
  %f.0.lcssa = phi i32 [ %g.2, %5 ]               ; [#uses=1 type=i32]
  %g.0.lcssa = phi i32 [ %h.2, %5 ]               ; [#uses=1 type=i32]
  %h.0.lcssa = phi i32 [ %h1, %5 ]                ; [#uses=1 type=i32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %a) nounwind
  %tmp.60 = add i32 %a.0.lcssa, %a, !dbg !156     ; [#uses=1 type=i32] [debug line = 61:4]
  store i32 %tmp.60, i32* %ctx.addr, align 4, !dbg !156 ; [debug line = 61:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %b) nounwind
  %tmp.61 = add i32 %b.0.lcssa, %b, !dbg !157     ; [#uses=1 type=i32] [debug line = 62:4]
  store i32 %tmp.61, i32* %ctx.addr.5, align 4, !dbg !157 ; [debug line = 62:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %c) nounwind
  %tmp.62 = add i32 %c.0.lcssa, %c, !dbg !158     ; [#uses=1 type=i32] [debug line = 63:4]
  store i32 %tmp.62, i32* %ctx.addr.6, align 4, !dbg !158 ; [debug line = 63:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %d) nounwind
  %tmp.63 = add i32 %d.0.lcssa, %d, !dbg !159     ; [#uses=1 type=i32] [debug line = 64:4]
  store i32 %tmp.63, i32* %ctx.addr.7, align 4, !dbg !159 ; [debug line = 64:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %e) nounwind
  %tmp.64 = add i32 %e.0.lcssa, %e, !dbg !160     ; [#uses=1 type=i32] [debug line = 65:4]
  store i32 %tmp.64, i32* %ctx.addr.8, align 4, !dbg !160 ; [debug line = 65:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %f) nounwind
  %tmp.65 = add i32 %f.0.lcssa, %f, !dbg !161     ; [#uses=1 type=i32] [debug line = 66:4]
  store i32 %tmp.65, i32* %ctx.addr.9, align 4, !dbg !161 ; [debug line = 66:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %g) nounwind
  %tmp.66 = add i32 %g.0.lcssa, %g, !dbg !162     ; [#uses=1 type=i32] [debug line = 67:4]
  store i32 %tmp.66, i32* %ctx.addr.10, align 4, !dbg !162 ; [debug line = 67:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %h) nounwind
  %tmp.67 = add i32 %h.0.lcssa, %h, !dbg !163     ; [#uses=1 type=i32] [debug line = 68:4]
  store i32 %tmp.67, i32* %ctx.addr.11, align 4, !dbg !163 ; [debug line = 68:4]
  ret void, !dbg !164                             ; [debug line = 69:1]
}

; [#uses=1]
define internal fastcc void @sha256_init(%struct.SHA256_CTX.0* %ctx) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{%struct.SHA256_CTX.0* %ctx}, i64 0, metadata !165), !dbg !166 ; [debug line = 71:30] [debug variable = ctx]
  %ctx.addr = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 1, !dbg !167 ; [#uses=1 type=i32*] [debug line = 73:4]
  store i32 0, i32* %ctx.addr, align 4, !dbg !167 ; [debug line = 73:4]
  %ctx.addr.12 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 2, i64 0, !dbg !169 ; [#uses=1 type=i32*] [debug line = 74:4]
  store i32 0, i32* %ctx.addr.12, align 4, !dbg !169 ; [debug line = 74:4]
  %ctx.addr.13 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 2, i64 1, !dbg !170 ; [#uses=1 type=i32*] [debug line = 75:4]
  store i32 0, i32* %ctx.addr.13, align 4, !dbg !170 ; [debug line = 75:4]
  %ctx.addr.14 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 0, !dbg !171 ; [#uses=1 type=i32*] [debug line = 76:4]
  store i32 1779033703, i32* %ctx.addr.14, align 4, !dbg !171 ; [debug line = 76:4]
  %ctx.addr.15 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 1, !dbg !172 ; [#uses=1 type=i32*] [debug line = 77:4]
  store i32 -1150833019, i32* %ctx.addr.15, align 4, !dbg !172 ; [debug line = 77:4]
  %ctx.addr.16 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 2, !dbg !173 ; [#uses=1 type=i32*] [debug line = 78:4]
  store i32 1013904242, i32* %ctx.addr.16, align 4, !dbg !173 ; [debug line = 78:4]
  %ctx.addr.17 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 3, !dbg !174 ; [#uses=1 type=i32*] [debug line = 79:4]
  store i32 -1521486534, i32* %ctx.addr.17, align 4, !dbg !174 ; [debug line = 79:4]
  %ctx.addr.18 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 4, !dbg !175 ; [#uses=1 type=i32*] [debug line = 80:4]
  store i32 1359893119, i32* %ctx.addr.18, align 4, !dbg !175 ; [debug line = 80:4]
  %ctx.addr.19 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 5, !dbg !176 ; [#uses=1 type=i32*] [debug line = 81:4]
  store i32 -1694144372, i32* %ctx.addr.19, align 4, !dbg !176 ; [debug line = 81:4]
  %ctx.addr.20 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 6, !dbg !177 ; [#uses=1 type=i32*] [debug line = 82:4]
  store i32 528734635, i32* %ctx.addr.20, align 4, !dbg !177 ; [debug line = 82:4]
  %ctx.addr.21 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 7, !dbg !178 ; [#uses=1 type=i32*] [debug line = 83:4]
  store i32 1541459225, i32* %ctx.addr.21, align 4, !dbg !178 ; [debug line = 83:4]
  ret void, !dbg !179                             ; [debug line = 84:1]
}

; [#uses=1]
define internal fastcc void @sha256_final(%struct.SHA256_CTX.0* %ctx, i8* %hash) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{%struct.SHA256_CTX.0* %ctx}, i64 0, metadata !180), !dbg !181 ; [debug line = 101:31] [debug variable = ctx]
  call void @llvm.dbg.value(metadata !{i8* %hash}, i64 0, metadata !182), !dbg !183 ; [debug line = 101:50] [debug variable = hash]
  %ctx.addr = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 1, !dbg !184 ; [#uses=2 type=i32*] [debug line = 105:2]
  %i = load i32* %ctx.addr, align 4, !dbg !184    ; [#uses=7 type=i32] [debug line = 105:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %i) nounwind
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !186), !dbg !184 ; [debug line = 105:2] [debug variable = i]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %i) nounwind
  %tmp = icmp ult i32 %i, 56, !dbg !187           ; [#uses=1 type=i1] [debug line = 108:2]
  br i1 %tmp, label %1, label %4, !dbg !187       ; [debug line = 108:2]

; <label>:1                                       ; preds = %0
  %tmp.105 = zext i32 %i to i64, !dbg !188        ; [#uses=1 type=i64] [debug line = 109:3]
  %ctx.addr.22 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 %tmp.105, !dbg !188 ; [#uses=1 type=i8*] [debug line = 109:3]
  store i8 -128, i8* %ctx.addr.22, align 1, !dbg !188 ; [debug line = 109:3]
  br label %2, !dbg !190                          ; [debug line = 110:3]

; <label>:2                                       ; preds = %3, %1
  %i.0.in = phi i32 [ %i, %1 ], [ %i.6, %3 ]      ; [#uses=1 type=i32]
  %i.6 = add i32 %i.0.in, 1, !dbg !188            ; [#uses=3 type=i32] [debug line = 109:3]
  call void @llvm.dbg.value(metadata !{i32 %i.6}, i64 0, metadata !186), !dbg !188 ; [debug line = 109:3] [debug variable = i]
  %tmp.107 = icmp ult i32 %i.6, 56, !dbg !190     ; [#uses=1 type=i1] [debug line = 110:3]
  br i1 %tmp.107, label %3, label %.loopexit.loopexit6, !dbg !190 ; [debug line = 110:3]

; <label>:3                                       ; preds = %2
  %tmp.109 = zext i32 %i.6 to i64, !dbg !191      ; [#uses=1 type=i64] [debug line = 111:4]
  %ctx.addr.24 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 %tmp.109, !dbg !191 ; [#uses=1 type=i8*] [debug line = 111:4]
  store i8 0, i8* %ctx.addr.24, align 1, !dbg !191 ; [debug line = 111:4]
  br label %2, !dbg !191                          ; [debug line = 111:4]

; <label>:4                                       ; preds = %0
  %tmp.106 = zext i32 %i to i64, !dbg !192        ; [#uses=1 type=i64] [debug line = 114:3]
  %ctx.addr.23 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 %tmp.106, !dbg !192 ; [#uses=1 type=i8*] [debug line = 114:3]
  store i8 -128, i8* %ctx.addr.23, align 1, !dbg !192 ; [debug line = 114:3]
  br label %5, !dbg !194                          ; [debug line = 115:3]

; <label>:5                                       ; preds = %6, %4
  %i.1.in = phi i32 [ %i, %4 ], [ %i.1, %6 ]      ; [#uses=1 type=i32]
  %i.1 = add i32 %i.1.in, 1, !dbg !192            ; [#uses=3 type=i32] [debug line = 114:3]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !186), !dbg !192 ; [debug line = 114:3] [debug variable = i]
  %tmp.108 = icmp ult i32 %i.1, 64, !dbg !194     ; [#uses=1 type=i1] [debug line = 115:3]
  br i1 %tmp.108, label %6, label %7, !dbg !194   ; [debug line = 115:3]

; <label>:6                                       ; preds = %5
  %tmp.110 = zext i32 %i.1 to i64, !dbg !195      ; [#uses=1 type=i64] [debug line = 116:4]
  %ctx.addr.25 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 %tmp.110, !dbg !195 ; [#uses=1 type=i8*] [debug line = 116:4]
  store i8 0, i8* %ctx.addr.25, align 1, !dbg !195 ; [debug line = 116:4]
  br label %5, !dbg !195                          ; [debug line = 116:4]

; <label>:7                                       ; preds = %5
  %ctx.addr.26 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 0, !dbg !196 ; [#uses=1 type=i8*] [debug line = 117:3]
  call fastcc void @sha256_transform(%struct.SHA256_CTX.0* %ctx, i8* %ctx.addr.26), !dbg !196 ; [debug line = 117:3]
  br label %8, !dbg !197                          ; [debug line = 118:8]

; <label>:8                                       ; preds = %9, %7
  %i.2 = phi i32 [ 0, %7 ], [ %i.7, %9 ]          ; [#uses=3 type=i32]
  %tmp.111 = icmp eq i32 %i.2, 56, !dbg !197      ; [#uses=1 type=i1] [debug line = 118:8]
  br i1 %tmp.111, label %.loopexit.loopexit, label %9, !dbg !197 ; [debug line = 118:8]

; <label>:9                                       ; preds = %8
  %tmp.112 = zext i32 %i.2 to i64, !dbg !199      ; [#uses=1 type=i64] [debug line = 119:4]
  %ctx.addr.27 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 %tmp.112, !dbg !199 ; [#uses=1 type=i8*] [debug line = 119:4]
  store i8 0, i8* %ctx.addr.27, align 1, !dbg !199 ; [debug line = 119:4]
  %i.7 = add i32 %i.2, 1, !dbg !201               ; [#uses=1 type=i32] [debug line = 118:23]
  call void @llvm.dbg.value(metadata !{i32 %i.7}, i64 0, metadata !186), !dbg !201 ; [debug line = 118:23] [debug variable = i]
  br label %8, !dbg !201                          ; [debug line = 118:23]

.loopexit.loopexit:                               ; preds = %8
  br label %.loopexit

.loopexit.loopexit6:                              ; preds = %2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit6, %.loopexit.loopexit
  %ctx.addr.28 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 2, i64 0, !dbg !202 ; [#uses=2 type=i32*] [debug line = 125:4]
  %ctx.load = load i32* %ctx.addr.28, align 4, !dbg !202 ; [#uses=4 type=i32] [debug line = 125:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load) nounwind
  %ctx.load.4 = load i32* %ctx.addr, align 4, !dbg !202 ; [#uses=3 type=i32] [debug line = 125:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.4) nounwind
  %tmp.114 = shl i32 %ctx.load.4, 3, !dbg !202    ; [#uses=2 type=i32] [debug line = 125:4]
  %tmp.115 = xor i32 %tmp.114, -1, !dbg !202      ; [#uses=1 type=i32] [debug line = 125:4]
  %tmp.116 = icmp ugt i32 %ctx.load, %tmp.115, !dbg !202 ; [#uses=1 type=i1] [debug line = 125:4]
  br i1 %tmp.116, label %10, label %.loopexit._crit_edge, !dbg !202 ; [debug line = 125:4]

; <label>:10                                      ; preds = %.loopexit
  %ctx.addr.29 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 2, i64 1, !dbg !203 ; [#uses=2 type=i32*] [debug line = 125:58]
  %ctx.load.5 = load i32* %ctx.addr.29, align 4, !dbg !203 ; [#uses=2 type=i32] [debug line = 125:58]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.5) nounwind
  %tmp.117 = add i32 %ctx.load.5, 1, !dbg !203    ; [#uses=1 type=i32] [debug line = 125:58]
  store i32 %tmp.117, i32* %ctx.addr.29, align 4, !dbg !203 ; [debug line = 125:58]
  br label %.loopexit._crit_edge, !dbg !203       ; [debug line = 125:58]

.loopexit._crit_edge:                             ; preds = %10, %.loopexit
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.4) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load) nounwind
  %tmp.118 = add i32 %tmp.114, %ctx.load, !dbg !204 ; [#uses=9 type=i32] [debug line = 125:76]
  store i32 %tmp.118, i32* %ctx.addr.28, align 4, !dbg !204 ; [debug line = 125:76]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.118) nounwind
  %tmp.119 = trunc i32 %tmp.118 to i8, !dbg !205  ; [#uses=1 type=i8] [debug line = 126:4]
  %ctx.addr.30 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 63, !dbg !205 ; [#uses=1 type=i8*] [debug line = 126:4]
  store i8 %tmp.119, i8* %ctx.addr.30, align 1, !dbg !205 ; [debug line = 126:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.118) nounwind
  %tmp.120 = lshr i32 %tmp.118, 8, !dbg !206      ; [#uses=1 type=i32] [debug line = 127:4]
  %tmp.121 = trunc i32 %tmp.120 to i8, !dbg !206  ; [#uses=1 type=i8] [debug line = 127:4]
  %ctx.addr.31 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 62, !dbg !206 ; [#uses=1 type=i8*] [debug line = 127:4]
  store i8 %tmp.121, i8* %ctx.addr.31, align 1, !dbg !206 ; [debug line = 127:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.118) nounwind
  %tmp.122 = lshr i32 %tmp.118, 16, !dbg !207     ; [#uses=1 type=i32] [debug line = 128:4]
  %tmp.123 = trunc i32 %tmp.122 to i8, !dbg !207  ; [#uses=1 type=i8] [debug line = 128:4]
  %ctx.addr.32 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 61, !dbg !207 ; [#uses=1 type=i8*] [debug line = 128:4]
  store i8 %tmp.123, i8* %ctx.addr.32, align 1, !dbg !207 ; [debug line = 128:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.118) nounwind
  %tmp.124 = lshr i32 %tmp.118, 24, !dbg !208     ; [#uses=1 type=i32] [debug line = 129:4]
  %tmp.125 = trunc i32 %tmp.124 to i8, !dbg !208  ; [#uses=1 type=i8] [debug line = 129:4]
  %ctx.addr.33 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 60, !dbg !208 ; [#uses=1 type=i8*] [debug line = 129:4]
  store i8 %tmp.125, i8* %ctx.addr.33, align 1, !dbg !208 ; [debug line = 129:4]
  %ctx.addr.34 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 2, i64 1, !dbg !209 ; [#uses=1 type=i32*] [debug line = 130:4]
  %ctx.load.6 = load i32* %ctx.addr.34, align 4, !dbg !209 ; [#uses=8 type=i32] [debug line = 130:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.6) nounwind
  %tmp.126 = trunc i32 %ctx.load.6 to i8, !dbg !209 ; [#uses=1 type=i8] [debug line = 130:4]
  %ctx.addr.35 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 59, !dbg !209 ; [#uses=1 type=i8*] [debug line = 130:4]
  store i8 %tmp.126, i8* %ctx.addr.35, align 1, !dbg !209 ; [debug line = 130:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.6) nounwind
  %tmp.127 = lshr i32 %ctx.load.6, 8, !dbg !210   ; [#uses=1 type=i32] [debug line = 131:4]
  %tmp.128 = trunc i32 %tmp.127 to i8, !dbg !210  ; [#uses=1 type=i8] [debug line = 131:4]
  %ctx.addr.36 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 58, !dbg !210 ; [#uses=1 type=i8*] [debug line = 131:4]
  store i8 %tmp.128, i8* %ctx.addr.36, align 1, !dbg !210 ; [debug line = 131:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.6) nounwind
  %tmp.129 = lshr i32 %ctx.load.6, 16, !dbg !211  ; [#uses=1 type=i32] [debug line = 132:4]
  %tmp.130 = trunc i32 %tmp.129 to i8, !dbg !211  ; [#uses=1 type=i8] [debug line = 132:4]
  %ctx.addr.37 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 57, !dbg !211 ; [#uses=1 type=i8*] [debug line = 132:4]
  store i8 %tmp.130, i8* %ctx.addr.37, align 1, !dbg !211 ; [debug line = 132:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.6) nounwind
  %tmp.131 = lshr i32 %ctx.load.6, 24, !dbg !212  ; [#uses=1 type=i32] [debug line = 133:4]
  %tmp.132 = trunc i32 %tmp.131 to i8, !dbg !212  ; [#uses=1 type=i8] [debug line = 133:4]
  %ctx.addr.38 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 56, !dbg !212 ; [#uses=1 type=i8*] [debug line = 133:4]
  store i8 %tmp.132, i8* %ctx.addr.38, align 1, !dbg !212 ; [debug line = 133:4]
  %ctx.addr.39 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 0, !dbg !213 ; [#uses=1 type=i8*] [debug line = 134:4]
  call fastcc void @sha256_transform(%struct.SHA256_CTX.0* %ctx, i8* %ctx.addr.39), !dbg !213 ; [debug line = 134:4]
  %ctx.addr.40 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 0, !dbg !214 ; [#uses=1 type=i32*] [debug line = 139:7]
  %ctx.addr.41 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 1, !dbg !217 ; [#uses=1 type=i32*] [debug line = 140:7]
  %ctx.addr.42 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 2, !dbg !218 ; [#uses=1 type=i32*] [debug line = 141:7]
  %ctx.addr.43 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 3, !dbg !219 ; [#uses=1 type=i32*] [debug line = 142:7]
  %ctx.addr.44 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 4, !dbg !220 ; [#uses=1 type=i32*] [debug line = 143:7]
  %ctx.addr.45 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 5, !dbg !221 ; [#uses=1 type=i32*] [debug line = 144:7]
  %ctx.addr.46 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 6, !dbg !222 ; [#uses=1 type=i32*] [debug line = 145:7]
  %ctx.addr.47 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 7, !dbg !223 ; [#uses=1 type=i32*] [debug line = 146:7]
  br label %11, !dbg !224                         ; [debug line = 138:9]

; <label>:11                                      ; preds = %12, %.loopexit._crit_edge
  %i.3 = phi i32 [ 0, %.loopexit._crit_edge ], [ %i.8, %12 ] ; [#uses=11 type=i32]
  %tmp.133 = icmp eq i32 %i.3, 4, !dbg !224       ; [#uses=1 type=i1] [debug line = 138:9]
  br i1 %tmp.133, label %13, label %12, !dbg !224 ; [debug line = 138:9]

; <label>:12                                      ; preds = %11
  %ctx.load.7 = load i32* %ctx.addr.40, align 4, !dbg !214 ; [#uses=2 type=i32] [debug line = 139:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.7) nounwind
  %tmp.134 = shl i32 %i.3, 3, !dbg !214           ; [#uses=1 type=i32] [debug line = 139:7]
  %tmp.135 = sub i32 24, %tmp.134, !dbg !214      ; [#uses=8 type=i32] [debug line = 139:7]
  %tmp.136 = lshr i32 %ctx.load.7, %tmp.135, !dbg !214 ; [#uses=1 type=i32] [debug line = 139:7]
  %tmp.137 = trunc i32 %tmp.136 to i8, !dbg !214  ; [#uses=1 type=i8] [debug line = 139:7]
  %tmp.138 = zext i32 %i.3 to i64, !dbg !214      ; [#uses=1 type=i64] [debug line = 139:7]
  %hash.addr = getelementptr inbounds i8* %hash, i64 %tmp.138, !dbg !214 ; [#uses=1 type=i8*] [debug line = 139:7]
  store i8 %tmp.137, i8* %hash.addr, align 1, !dbg !214 ; [debug line = 139:7]
  %ctx.load.8 = load i32* %ctx.addr.41, align 4, !dbg !217 ; [#uses=2 type=i32] [debug line = 140:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.8) nounwind
  %tmp.139 = lshr i32 %ctx.load.8, %tmp.135, !dbg !217 ; [#uses=1 type=i32] [debug line = 140:7]
  %tmp.140 = trunc i32 %tmp.139 to i8, !dbg !217  ; [#uses=1 type=i8] [debug line = 140:7]
  %tmp.141 = add i32 %i.3, 4, !dbg !217           ; [#uses=1 type=i32] [debug line = 140:7]
  %tmp.142 = zext i32 %tmp.141 to i64, !dbg !217  ; [#uses=1 type=i64] [debug line = 140:7]
  %hash.addr.1 = getelementptr inbounds i8* %hash, i64 %tmp.142, !dbg !217 ; [#uses=1 type=i8*] [debug line = 140:7]
  store i8 %tmp.140, i8* %hash.addr.1, align 1, !dbg !217 ; [debug line = 140:7]
  %ctx.load.9 = load i32* %ctx.addr.42, align 4, !dbg !218 ; [#uses=2 type=i32] [debug line = 141:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.9) nounwind
  %tmp.143 = lshr i32 %ctx.load.9, %tmp.135, !dbg !218 ; [#uses=1 type=i32] [debug line = 141:7]
  %tmp.144 = trunc i32 %tmp.143 to i8, !dbg !218  ; [#uses=1 type=i8] [debug line = 141:7]
  %tmp.145 = add i32 %i.3, 8, !dbg !218           ; [#uses=1 type=i32] [debug line = 141:7]
  %tmp.146 = zext i32 %tmp.145 to i64, !dbg !218  ; [#uses=1 type=i64] [debug line = 141:7]
  %hash.addr.2 = getelementptr inbounds i8* %hash, i64 %tmp.146, !dbg !218 ; [#uses=1 type=i8*] [debug line = 141:7]
  store i8 %tmp.144, i8* %hash.addr.2, align 1, !dbg !218 ; [debug line = 141:7]
  %ctx.load.10 = load i32* %ctx.addr.43, align 4, !dbg !219 ; [#uses=2 type=i32] [debug line = 142:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.10) nounwind
  %tmp.147 = lshr i32 %ctx.load.10, %tmp.135, !dbg !219 ; [#uses=1 type=i32] [debug line = 142:7]
  %tmp.148 = trunc i32 %tmp.147 to i8, !dbg !219  ; [#uses=1 type=i8] [debug line = 142:7]
  %tmp.149 = add i32 %i.3, 12, !dbg !219          ; [#uses=1 type=i32] [debug line = 142:7]
  %tmp.150 = zext i32 %tmp.149 to i64, !dbg !219  ; [#uses=1 type=i64] [debug line = 142:7]
  %hash.addr.3 = getelementptr inbounds i8* %hash, i64 %tmp.150, !dbg !219 ; [#uses=1 type=i8*] [debug line = 142:7]
  store i8 %tmp.148, i8* %hash.addr.3, align 1, !dbg !219 ; [debug line = 142:7]
  %ctx.load.11 = load i32* %ctx.addr.44, align 4, !dbg !220 ; [#uses=2 type=i32] [debug line = 143:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.11) nounwind
  %tmp.151 = lshr i32 %ctx.load.11, %tmp.135, !dbg !220 ; [#uses=1 type=i32] [debug line = 143:7]
  %tmp.152 = trunc i32 %tmp.151 to i8, !dbg !220  ; [#uses=1 type=i8] [debug line = 143:7]
  %tmp.153 = add i32 %i.3, 16, !dbg !220          ; [#uses=1 type=i32] [debug line = 143:7]
  %tmp.154 = zext i32 %tmp.153 to i64, !dbg !220  ; [#uses=1 type=i64] [debug line = 143:7]
  %hash.addr.4 = getelementptr inbounds i8* %hash, i64 %tmp.154, !dbg !220 ; [#uses=1 type=i8*] [debug line = 143:7]
  store i8 %tmp.152, i8* %hash.addr.4, align 1, !dbg !220 ; [debug line = 143:7]
  %ctx.load.12 = load i32* %ctx.addr.45, align 4, !dbg !221 ; [#uses=2 type=i32] [debug line = 144:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.12) nounwind
  %tmp.155 = lshr i32 %ctx.load.12, %tmp.135, !dbg !221 ; [#uses=1 type=i32] [debug line = 144:7]
  %tmp.156 = trunc i32 %tmp.155 to i8, !dbg !221  ; [#uses=1 type=i8] [debug line = 144:7]
  %tmp.157 = add i32 %i.3, 20, !dbg !221          ; [#uses=1 type=i32] [debug line = 144:7]
  %tmp.158 = zext i32 %tmp.157 to i64, !dbg !221  ; [#uses=1 type=i64] [debug line = 144:7]
  %hash.addr.5 = getelementptr inbounds i8* %hash, i64 %tmp.158, !dbg !221 ; [#uses=1 type=i8*] [debug line = 144:7]
  store i8 %tmp.156, i8* %hash.addr.5, align 1, !dbg !221 ; [debug line = 144:7]
  %ctx.load.13 = load i32* %ctx.addr.46, align 4, !dbg !222 ; [#uses=2 type=i32] [debug line = 145:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.13) nounwind
  %tmp.159 = lshr i32 %ctx.load.13, %tmp.135, !dbg !222 ; [#uses=1 type=i32] [debug line = 145:7]
  %tmp.160 = trunc i32 %tmp.159 to i8, !dbg !222  ; [#uses=1 type=i8] [debug line = 145:7]
  %tmp.161 = add i32 %i.3, 24, !dbg !222          ; [#uses=1 type=i32] [debug line = 145:7]
  %tmp.162 = zext i32 %tmp.161 to i64, !dbg !222  ; [#uses=1 type=i64] [debug line = 145:7]
  %hash.addr.6 = getelementptr inbounds i8* %hash, i64 %tmp.162, !dbg !222 ; [#uses=1 type=i8*] [debug line = 145:7]
  store i8 %tmp.160, i8* %hash.addr.6, align 1, !dbg !222 ; [debug line = 145:7]
  %ctx.load.14 = load i32* %ctx.addr.47, align 4, !dbg !223 ; [#uses=2 type=i32] [debug line = 146:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.14) nounwind
  %tmp.163 = lshr i32 %ctx.load.14, %tmp.135, !dbg !223 ; [#uses=1 type=i32] [debug line = 146:7]
  %tmp.164 = trunc i32 %tmp.163 to i8, !dbg !223  ; [#uses=1 type=i8] [debug line = 146:7]
  %tmp.165 = add i32 %i.3, 28, !dbg !223          ; [#uses=1 type=i32] [debug line = 146:7]
  %tmp.166 = zext i32 %tmp.165 to i64, !dbg !223  ; [#uses=1 type=i64] [debug line = 146:7]
  %hash.addr.7 = getelementptr inbounds i8* %hash, i64 %tmp.166, !dbg !223 ; [#uses=1 type=i8*] [debug line = 146:7]
  store i8 %tmp.164, i8* %hash.addr.7, align 1, !dbg !223 ; [debug line = 146:7]
  %i.8 = add i32 %i.3, 1, !dbg !225               ; [#uses=1 type=i32] [debug line = 138:21]
  call void @llvm.dbg.value(metadata !{i32 %i.8}, i64 0, metadata !186), !dbg !225 ; [debug line = 138:21] [debug variable = i]
  br label %11, !dbg !225                         ; [debug line = 138:21]

; <label>:13                                      ; preds = %11
  ret void, !dbg !226                             ; [debug line = 148:1]
}

; [#uses=0]
define void @sha256(i8* %data, i32 %base_offset, i32 %bytes, i8* %digest) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @sha256.str) nounwind
  %seg_buf = alloca [64 x i8], align 16           ; [#uses=4 type=[64 x i8]*]
  %sha256ctx = alloca %struct.SHA256_CTX.0, align 4 ; [#uses=4 type=%struct.SHA256_CTX.0*]
  call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !227), !dbg !228 ; [debug line = 8:28] [debug variable = data]
  call void @llvm.dbg.value(metadata !{i32 %base_offset}, i64 0, metadata !229), !dbg !230 ; [debug line = 9:18] [debug variable = base_offset]
  call void @llvm.dbg.value(metadata !{i32 %bytes}, i64 0, metadata !231), !dbg !232 ; [debug line = 10:18] [debug variable = bytes]
  call void @llvm.dbg.value(metadata !{i8* %digest}, i64 0, metadata !233), !dbg !234 ; [debug line = 11:19] [debug variable = digest]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %data, i32 256), !dbg !235 ; [debug line = 11:33]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %digest, i32 32), !dbg !237 ; [debug line = 11:66]
  call void (...)* @_ssdm_op_SpecInterface(i8* %data, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !238 ; [debug line = 15:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %digest, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !239 ; [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %base_offset, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !240 ; [debug line = 17:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %bytes, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !241 ; [debug line = 18:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !242 ; [debug line = 19:1]
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %seg_buf}, metadata !243), !dbg !244 ; [debug line = 22:16] [debug variable = seg_buf]
  call void @llvm.dbg.value(metadata !{i32 %bytes}, i64 0, metadata !245), !dbg !246 ; [debug line = 25:24] [debug variable = n]
  call void @llvm.dbg.declare(metadata !{%struct.SHA256_CTX.0* %sha256ctx}, metadata !247), !dbg !255 ; [debug line = 28:13] [debug variable = sha256ctx]
  call fastcc void @sha256_init(%struct.SHA256_CTX.0* %sha256ctx), !dbg !256 ; [debug line = 29:2]
  %tmp = zext i32 %base_offset to i64, !dbg !257  ; [#uses=2 type=i64] [debug line = 45:5]
  %seg_buf.addr = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 0, !dbg !261 ; [#uses=3 type=i8*] [debug line = 46:4]
  br label %.backedge, !dbg !262                  ; [debug line = 32:2]

.backedge:                                        ; preds = %.backedge.backedge, %0
  %seg_offset = phi i32 [ 0, %0 ], [ %seg_offset.0.be, %.backedge.backedge ] ; [#uses=4 type=i32]
  %n = phi i32 [ %bytes, %0 ], [ %n.0.be, %.backedge.backedge ] ; [#uses=5 type=i32]
  %tmp.168 = icmp eq i32 %n, 0, !dbg !262         ; [#uses=1 type=i1] [debug line = 32:2]
  br i1 %tmp.168, label %6, label %1, !dbg !262   ; [debug line = 32:2]

; <label>:1                                       ; preds = %.backedge
  %tmp.169 = icmp ugt i32 %n, 63, !dbg !263       ; [#uses=1 type=i1] [debug line = 34:3]
  br i1 %tmp.169, label %.preheader6.preheader, label %.preheader.preheader, !dbg !263 ; [debug line = 34:3]

.preheader6.preheader:                            ; preds = %1
  %tmp.170 = zext i32 %seg_offset to i64, !dbg !264 ; [#uses=1 type=i64] [debug line = 37:5]
  br label %.preheader6, !dbg !267                ; [debug line = 36:9]

.preheader.preheader:                             ; preds = %1
  %tmp.171 = zext i32 %seg_offset to i64, !dbg !257 ; [#uses=1 type=i64] [debug line = 45:5]
  br label %.preheader, !dbg !268                 ; [debug line = 44:9]

.preheader6:                                      ; preds = %2, %.preheader6.preheader
  %i9 = phi i32 [ %i.10, %2 ], [ 0, %.preheader6.preheader ] ; [#uses=3 type=i32]
  %exitcond5 = icmp eq i32 %i9, 64, !dbg !267     ; [#uses=1 type=i1] [debug line = 36:9]
  br i1 %exitcond5, label %3, label %2, !dbg !267 ; [debug line = 36:9]

; <label>:2                                       ; preds = %.preheader6
  %tmp.176 = sext i32 %i9 to i64, !dbg !264       ; [#uses=2 type=i64] [debug line = 37:5]
  %.sum2 = add i64 %tmp.170, %tmp, !dbg !264      ; [#uses=1 type=i64] [debug line = 37:5]
  %.sum3 = add i64 %.sum2, %tmp.176, !dbg !264    ; [#uses=1 type=i64] [debug line = 37:5]
  %data.addr = getelementptr inbounds i8* %data, i64 %.sum3, !dbg !264 ; [#uses=1 type=i8*] [debug line = 37:5]
  %data.load = load i8* %data.addr, align 1, !dbg !264 ; [#uses=2 type=i8] [debug line = 37:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data.load) nounwind
  %seg_buf.addr.2 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 %tmp.176, !dbg !264 ; [#uses=1 type=i8*] [debug line = 37:5]
  store i8 %data.load, i8* %seg_buf.addr.2, align 1, !dbg !264 ; [debug line = 37:5]
  %i.10 = add nsw i32 %i9, 1, !dbg !269           ; [#uses=1 type=i32] [debug line = 36:20]
  call void @llvm.dbg.value(metadata !{i32 %i.10}, i64 0, metadata !270), !dbg !269 ; [debug line = 36:20] [debug variable = i]
  br label %.preheader6, !dbg !269                ; [debug line = 36:20]

; <label>:3                                       ; preds = %.preheader6
  %n.1 = add i32 %n, -64, !dbg !271               ; [#uses=1 type=i32] [debug line = 38:4]
  call void @llvm.dbg.value(metadata !{i32 %n.1}, i64 0, metadata !245), !dbg !271 ; [debug line = 38:4] [debug variable = n]
  %seg_offset.1 = add i32 %seg_offset, 64, !dbg !272 ; [#uses=1 type=i32] [debug line = 39:4]
  call void @llvm.dbg.value(metadata !{i32 %seg_offset.1}, i64 0, metadata !273), !dbg !272 ; [debug line = 39:4] [debug variable = seg_offset]
  call fastcc void @sha256_update(%struct.SHA256_CTX.0* %sha256ctx, i8* %seg_buf.addr, i32 64), !dbg !274 ; [debug line = 40:4]
  br label %.backedge.backedge, !dbg !275         ; [debug line = 41:3]

.preheader:                                       ; preds = %4, %.preheader.preheader
  %i.1 = phi i32 [ %i.11, %4 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond4 = icmp eq i32 %i.1, %n, !dbg !268    ; [#uses=1 type=i1] [debug line = 44:9]
  br i1 %exitcond4, label %5, label %4, !dbg !268 ; [debug line = 44:9]

; <label>:4                                       ; preds = %.preheader
  %tmp.178 = sext i32 %i.1 to i64, !dbg !257      ; [#uses=2 type=i64] [debug line = 45:5]
  %.sum = add i64 %tmp.171, %tmp, !dbg !257       ; [#uses=1 type=i64] [debug line = 45:5]
  %.sum1 = add i64 %.sum, %tmp.178, !dbg !257     ; [#uses=1 type=i64] [debug line = 45:5]
  %data.addr.4 = getelementptr inbounds i8* %data, i64 %.sum1, !dbg !257 ; [#uses=1 type=i8*] [debug line = 45:5]
  %data.load.4 = load i8* %data.addr.4, align 1, !dbg !257 ; [#uses=2 type=i8] [debug line = 45:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data.load.4) nounwind
  %seg_buf.addr.3 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 %tmp.178, !dbg !257 ; [#uses=1 type=i8*] [debug line = 45:5]
  store i8 %data.load.4, i8* %seg_buf.addr.3, align 1, !dbg !257 ; [debug line = 45:5]
  %i.11 = add nsw i32 %i.1, 1, !dbg !276          ; [#uses=1 type=i32] [debug line = 44:19]
  call void @llvm.dbg.value(metadata !{i32 %i.11}, i64 0, metadata !270), !dbg !276 ; [debug line = 44:19] [debug variable = i]
  br label %.preheader, !dbg !276                 ; [debug line = 44:19]

; <label>:5                                       ; preds = %.preheader
  call fastcc void @sha256_update(%struct.SHA256_CTX.0* %sha256ctx, i8* %seg_buf.addr, i32 %n), !dbg !261 ; [debug line = 46:4]
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %5, %3
  %seg_offset.0.be = phi i32 [ %seg_offset.1, %3 ], [ %seg_offset, %5 ] ; [#uses=1 type=i32]
  %n.0.be = phi i32 [ %n.1, %3 ], [ 0, %5 ]       ; [#uses=1 type=i32]
  br label %.backedge

; <label>:6                                       ; preds = %.backedge
  call fastcc void @sha256_final(%struct.SHA256_CTX.0* %sha256ctx, i8* %seg_buf.addr), !dbg !277 ; [debug line = 52:2]
  br label %7, !dbg !278                          ; [debug line = 54:7]

; <label>:7                                       ; preds = %8, %6
  %i.2 = phi i32 [ 0, %6 ], [ %i, %8 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i.2, 32, !dbg !278     ; [#uses=1 type=i1] [debug line = 54:7]
  br i1 %exitcond, label %9, label %8, !dbg !278  ; [debug line = 54:7]

; <label>:8                                       ; preds = %7
  %tmp.172 = sext i32 %i.2 to i64, !dbg !280      ; [#uses=2 type=i64] [debug line = 56:3]
  %seg_buf.addr.1 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 %tmp.172, !dbg !280 ; [#uses=1 type=i8*] [debug line = 56:3]
  %seg_buf.load = load i8* %seg_buf.addr.1, align 1, !dbg !280 ; [#uses=2 type=i8] [debug line = 56:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %seg_buf.load) nounwind
  %digest.addr = getelementptr inbounds i8* %digest, i64 %tmp.172, !dbg !280 ; [#uses=1 type=i8*] [debug line = 56:3]
  store i8 %seg_buf.load, i8* %digest.addr, align 1, !dbg !280 ; [debug line = 56:3]
  %i = add nsw i32 %i.2, 1, !dbg !282             ; [#uses=1 type=i32] [debug line = 54:18]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !270), !dbg !282 ; [debug line = 54:18] [debug variable = i]
  br label %7, !dbg !282                          ; [debug line = 54:18]

; <label>:9                                       ; preds = %7
  ret void, !dbg !283                             ; [debug line = 58:1]
}

; [#uses=45]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=5]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=67]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0, !43}
!opencl.kernels = !{!57, !64, !70, !76, !78}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"E:/acc_2562/sha256_acc2/acc256/.autopilot/db/sha256_impl.pragma.2.c", metadata !"E:\5Cacc_2562", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !39} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !32, metadata !35, metadata !38}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sha256_transform", metadata !"sha256_transform", metadata !"", metadata !6, i32 30, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.SHA256_CTX.0*, i8*)* @sha256_transform, null, null, metadata !30, i32 31} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"sha256_impl.c", metadata !"E:\5Cacc_2562", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !29}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"SHA256_CTX", metadata !6, i32 11, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786451, null, metadata !"", metadata !12, i32 6, i64 864, i64 32, i32 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!12 = metadata !{i32 786473, metadata !"./sha256_impl.h", metadata !"E:\5Cacc_2562", null} ; [ DW_TAG_file_type ]
!13 = metadata !{metadata !14, metadata !19, metadata !21, metadata !25}
!14 = metadata !{i32 786445, metadata !11, metadata !"data", metadata !12, i32 7, i64 512, i64 8, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ]
!15 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !16, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ]
!16 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!19 = metadata !{i32 786445, metadata !11, metadata !"datalen", metadata !12, i32 8, i64 32, i64 32, i64 512, i32 0, metadata !20} ; [ DW_TAG_member ]
!20 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!21 = metadata !{i32 786445, metadata !11, metadata !"bitlen", metadata !12, i32 9, i64 64, i64 32, i64 544, i32 0, metadata !22} ; [ DW_TAG_member ]
!22 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 64, i64 32, i32 0, i32 0, metadata !20, metadata !23, i32 0, i32 0} ; [ DW_TAG_array_type ]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ]
!25 = metadata !{i32 786445, metadata !11, metadata !"state", metadata !12, i32 10, i64 256, i64 32, i64 608, i32 0, metadata !26} ; [ DW_TAG_member ]
!26 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 32, i32 0, i32 0, metadata !20, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!29 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!32 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sha256_init", metadata !"sha256_init", metadata !"", metadata !6, i32 71, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.SHA256_CTX.0*)* @sha256_init, null, null, metadata !30, i32 72} ; [ DW_TAG_subprogram ]
!33 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!34 = metadata !{null, metadata !9}
!35 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sha256_update", metadata !"sha256_update", metadata !"", metadata !6, i32 86, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.SHA256_CTX.0*, i8*, i32)* @sha256_update, null, null, metadata !30, i32 87} ; [ DW_TAG_subprogram ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{null, metadata !9, metadata !29, metadata !20}
!38 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sha256_final", metadata !"sha256_final", metadata !"", metadata !6, i32 101, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.SHA256_CTX.0*, i8*)* @sha256_final, null, null, metadata !30, i32 102} ; [ DW_TAG_subprogram ]
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 786484, i32 0, null, metadata !"k", metadata !"k", metadata !"", metadata !6, i32 18, metadata !42, i32 0, i32 1, [64 x i32]* @k} ; [ DW_TAG_variable ]
!42 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !20, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ]
!43 = metadata !{i32 786449, i32 0, i32 1, metadata !"E:/acc_2562/sha256_acc2/acc256/.autopilot/db/sha256.pragma.2.c", metadata !"E:\5Cacc_2562", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !44, metadata !50} ; [ DW_TAG_compile_unit ]
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 786478, i32 0, metadata !47, metadata !"sha256", metadata !"sha256", metadata !"", metadata !47, i32 8, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32, i32, i8*)* @sha256, null, null, metadata !30, i32 11} ; [ DW_TAG_subprogram ]
!47 = metadata !{i32 786473, metadata !"sha256.c", metadata !"E:\5Cacc_2562", null} ; [ DW_TAG_file_type ]
!48 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!49 = metadata !{null, metadata !29, metadata !20, metadata !20, metadata !29}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !52, metadata !55}
!52 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !53, i32 157, metadata !54, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!53 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado/2017.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\5Cstdlib.h", metadata !"E:\5Cacc_2562", null} ; [ DW_TAG_file_type ]
!54 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!55 = metadata !{i32 786484, i32 0, null, metadata !"_amblksiz", metadata !"_amblksiz", metadata !"", metadata !56, i32 53, metadata !20, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!56 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado/2017.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\5Cmalloc.h", metadata !"E:\5Cacc_2562", null} ; [ DW_TAG_file_type ]
!57 = metadata !{void (%struct.SHA256_CTX.0*, i8*)* @sha256_transform, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63}
!58 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!59 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*", metadata !"uchar*"}
!61 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!62 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"data"}
!63 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!64 = metadata !{void (%struct.SHA256_CTX.0*)* @sha256_init, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !63}
!65 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!66 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*"}
!68 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!69 = metadata !{metadata !"kernel_arg_name", metadata !"ctx"}
!70 = metadata !{void (%struct.SHA256_CTX.0*, i8*, i32)* @sha256_update, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !63}
!71 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!72 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*", metadata !"uchar*", metadata !"uint"}
!74 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!75 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"data", metadata !"len"}
!76 = metadata !{void (%struct.SHA256_CTX.0*, i8*)* @sha256_final, metadata !58, metadata !59, metadata !60, metadata !61, metadata !77, metadata !63}
!77 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"hash"}
!78 = metadata !{void (i8*, i32, i32, i8*)* @sha256, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !63}
!79 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 1}
!80 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uint", metadata !"uint", metadata !"uchar*"}
!82 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!83 = metadata !{metadata !"kernel_arg_name", metadata !"data", metadata !"base_offset", metadata !"bytes", metadata !"digest"}
!84 = metadata !{i32 786689, metadata !35, metadata !"ctx", metadata !6, i32 16777302, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!85 = metadata !{i32 86, i32 32, metadata !35, null}
!86 = metadata !{i32 786689, metadata !35, metadata !"data", metadata !6, i32 33554518, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!87 = metadata !{i32 86, i32 51, metadata !35, null}
!88 = metadata !{i32 786689, metadata !35, metadata !"len", metadata !6, i32 50331734, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!89 = metadata !{i32 86, i32 72, metadata !35, null}
!90 = metadata !{i32 91, i32 7, metadata !91, null}
!91 = metadata !{i32 786443, metadata !92, i32 90, i32 28, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 786443, metadata !93, i32 90, i32 4, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 786443, metadata !35, i32 87, i32 1, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 94, i32 10, metadata !95, null}
!95 = metadata !{i32 786443, metadata !91, i32 93, i32 31, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 95, i32 10, metadata !95, null}
!97 = metadata !{i32 95, i32 51, metadata !95, null}
!98 = metadata !{i32 90, i32 9, metadata !92, null}
!99 = metadata !{i32 92, i32 7, metadata !91, null}
!100 = metadata !{i32 93, i32 7, metadata !91, null}
!101 = metadata !{i32 95, i32 69, metadata !95, null}
!102 = metadata !{i32 96, i32 10, metadata !95, null}
!103 = metadata !{i32 97, i32 7, metadata !95, null}
!104 = metadata !{i32 90, i32 23, metadata !92, null}
!105 = metadata !{i32 786688, metadata !93, metadata !"i", metadata !6, i32 88, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 99, i32 1, metadata !93, null}
!107 = metadata !{i32 786689, metadata !5, metadata !"ctx", metadata !6, i32 16777246, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 30, i32 35, metadata !5, null}
!109 = metadata !{i32 786689, metadata !5, metadata !"data", metadata !6, i32 33554462, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 30, i32 54, metadata !5, null}
!111 = metadata !{i32 786688, metadata !112, metadata !"m", metadata !6, i32 32, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!112 = metadata !{i32 786443, metadata !5, i32 31, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 32, i32 43, metadata !112, null}
!114 = metadata !{i32 34, i32 9, metadata !115, null}
!115 = metadata !{i32 786443, metadata !112, i32 34, i32 4, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 36, i32 4, metadata !117, null}
!117 = metadata !{i32 786443, metadata !112, i32 36, i32 4, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 35, i32 7, metadata !115, null}
!119 = metadata !{i32 34, i32 26, metadata !115, null}
!120 = metadata !{i32 786688, metadata !112, metadata !"j", metadata !6, i32 32, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!121 = metadata !{i32 37, i32 7, metadata !117, null}
!122 = metadata !{i32 36, i32 20, metadata !117, null}
!123 = metadata !{i32 786688, metadata !112, metadata !"i", metadata !6, i32 32, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!124 = metadata !{i32 39, i32 4, metadata !112, null}
!125 = metadata !{i32 786688, metadata !112, metadata !"a", metadata !6, i32 32, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!126 = metadata !{i32 40, i32 4, metadata !112, null}
!127 = metadata !{i32 786688, metadata !112, metadata !"b", metadata !6, i32 32, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!128 = metadata !{i32 41, i32 4, metadata !112, null}
!129 = metadata !{i32 786688, metadata !112, metadata !"c", metadata !6, i32 32, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!130 = metadata !{i32 42, i32 4, metadata !112, null}
!131 = metadata !{i32 786688, metadata !112, metadata !"d", metadata !6, i32 32, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 43, i32 4, metadata !112, null}
!133 = metadata !{i32 786688, metadata !112, metadata !"e", metadata !6, i32 32, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!134 = metadata !{i32 44, i32 4, metadata !112, null}
!135 = metadata !{i32 786688, metadata !112, metadata !"f", metadata !6, i32 32, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!136 = metadata !{i32 45, i32 4, metadata !112, null}
!137 = metadata !{i32 786688, metadata !112, metadata !"g", metadata !6, i32 32, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 46, i32 4, metadata !112, null}
!139 = metadata !{i32 786688, metadata !112, metadata !"h", metadata !6, i32 32, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!140 = metadata !{i32 48, i32 9, metadata !141, null}
!141 = metadata !{i32 786443, metadata !112, i32 48, i32 4, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 49, i32 7, metadata !143, null}
!143 = metadata !{i32 786443, metadata !141, i32 48, i32 29, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 786688, metadata !112, metadata !"t1", metadata !6, i32 32, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!145 = metadata !{i32 50, i32 7, metadata !143, null}
!146 = metadata !{i32 786688, metadata !112, metadata !"t2", metadata !6, i32 32, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!147 = metadata !{i32 51, i32 7, metadata !143, null}
!148 = metadata !{i32 52, i32 7, metadata !143, null}
!149 = metadata !{i32 53, i32 7, metadata !143, null}
!150 = metadata !{i32 54, i32 7, metadata !143, null}
!151 = metadata !{i32 55, i32 7, metadata !143, null}
!152 = metadata !{i32 56, i32 7, metadata !143, null}
!153 = metadata !{i32 57, i32 7, metadata !143, null}
!154 = metadata !{i32 58, i32 7, metadata !143, null}
!155 = metadata !{i32 48, i32 24, metadata !141, null}
!156 = metadata !{i32 61, i32 4, metadata !112, null}
!157 = metadata !{i32 62, i32 4, metadata !112, null}
!158 = metadata !{i32 63, i32 4, metadata !112, null}
!159 = metadata !{i32 64, i32 4, metadata !112, null}
!160 = metadata !{i32 65, i32 4, metadata !112, null}
!161 = metadata !{i32 66, i32 4, metadata !112, null}
!162 = metadata !{i32 67, i32 4, metadata !112, null}
!163 = metadata !{i32 68, i32 4, metadata !112, null}
!164 = metadata !{i32 69, i32 1, metadata !112, null}
!165 = metadata !{i32 786689, metadata !32, metadata !"ctx", metadata !6, i32 16777287, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!166 = metadata !{i32 71, i32 30, metadata !32, null}
!167 = metadata !{i32 73, i32 4, metadata !168, null}
!168 = metadata !{i32 786443, metadata !32, i32 72, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 74, i32 4, metadata !168, null}
!170 = metadata !{i32 75, i32 4, metadata !168, null}
!171 = metadata !{i32 76, i32 4, metadata !168, null}
!172 = metadata !{i32 77, i32 4, metadata !168, null}
!173 = metadata !{i32 78, i32 4, metadata !168, null}
!174 = metadata !{i32 79, i32 4, metadata !168, null}
!175 = metadata !{i32 80, i32 4, metadata !168, null}
!176 = metadata !{i32 81, i32 4, metadata !168, null}
!177 = metadata !{i32 82, i32 4, metadata !168, null}
!178 = metadata !{i32 83, i32 4, metadata !168, null}
!179 = metadata !{i32 84, i32 1, metadata !168, null}
!180 = metadata !{i32 786689, metadata !38, metadata !"ctx", metadata !6, i32 16777317, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!181 = metadata !{i32 101, i32 31, metadata !38, null}
!182 = metadata !{i32 786689, metadata !38, metadata !"hash", metadata !6, i32 33554533, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!183 = metadata !{i32 101, i32 50, metadata !38, null}
!184 = metadata !{i32 105, i32 2, metadata !185, null}
!185 = metadata !{i32 786443, metadata !38, i32 102, i32 1, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!186 = metadata !{i32 786688, metadata !185, metadata !"i", metadata !6, i32 103, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!187 = metadata !{i32 108, i32 2, metadata !185, null}
!188 = metadata !{i32 109, i32 3, metadata !189, null}
!189 = metadata !{i32 786443, metadata !185, i32 108, i32 25, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 110, i32 3, metadata !189, null}
!191 = metadata !{i32 111, i32 4, metadata !189, null}
!192 = metadata !{i32 114, i32 3, metadata !193, null}
!193 = metadata !{i32 786443, metadata !185, i32 113, i32 7, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!194 = metadata !{i32 115, i32 3, metadata !193, null}
!195 = metadata !{i32 116, i32 4, metadata !193, null}
!196 = metadata !{i32 117, i32 3, metadata !193, null}
!197 = metadata !{i32 118, i32 8, metadata !198, null}
!198 = metadata !{i32 786443, metadata !193, i32 118, i32 3, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!199 = metadata !{i32 119, i32 4, metadata !200, null}
!200 = metadata !{i32 786443, metadata !198, i32 118, i32 29, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!201 = metadata !{i32 118, i32 23, metadata !198, null}
!202 = metadata !{i32 125, i32 4, metadata !185, null}
!203 = metadata !{i32 125, i32 58, metadata !185, null}
!204 = metadata !{i32 125, i32 76, metadata !185, null}
!205 = metadata !{i32 126, i32 4, metadata !185, null}
!206 = metadata !{i32 127, i32 4, metadata !185, null}
!207 = metadata !{i32 128, i32 4, metadata !185, null}
!208 = metadata !{i32 129, i32 4, metadata !185, null}
!209 = metadata !{i32 130, i32 4, metadata !185, null}
!210 = metadata !{i32 131, i32 4, metadata !185, null}
!211 = metadata !{i32 132, i32 4, metadata !185, null}
!212 = metadata !{i32 133, i32 4, metadata !185, null}
!213 = metadata !{i32 134, i32 4, metadata !185, null}
!214 = metadata !{i32 139, i32 7, metadata !215, null}
!215 = metadata !{i32 786443, metadata !216, i32 138, i32 26, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!216 = metadata !{i32 786443, metadata !185, i32 138, i32 4, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 140, i32 7, metadata !215, null}
!218 = metadata !{i32 141, i32 7, metadata !215, null}
!219 = metadata !{i32 142, i32 7, metadata !215, null}
!220 = metadata !{i32 143, i32 7, metadata !215, null}
!221 = metadata !{i32 144, i32 7, metadata !215, null}
!222 = metadata !{i32 145, i32 7, metadata !215, null}
!223 = metadata !{i32 146, i32 7, metadata !215, null}
!224 = metadata !{i32 138, i32 9, metadata !216, null}
!225 = metadata !{i32 138, i32 21, metadata !216, null}
!226 = metadata !{i32 148, i32 1, metadata !185, null}
!227 = metadata !{i32 786689, metadata !46, metadata !"data", metadata !47, i32 16777224, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!228 = metadata !{i32 8, i32 28, metadata !46, null}
!229 = metadata !{i32 786689, metadata !46, metadata !"base_offset", metadata !47, i32 33554441, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!230 = metadata !{i32 9, i32 18, metadata !46, null}
!231 = metadata !{i32 786689, metadata !46, metadata !"bytes", metadata !47, i32 50331658, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!232 = metadata !{i32 10, i32 18, metadata !46, null}
!233 = metadata !{i32 786689, metadata !46, metadata !"digest", metadata !47, i32 67108875, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!234 = metadata !{i32 11, i32 19, metadata !46, null}
!235 = metadata !{i32 11, i32 33, metadata !236, null}
!236 = metadata !{i32 786443, metadata !46, i32 11, i32 32, metadata !47, i32 0} ; [ DW_TAG_lexical_block ]
!237 = metadata !{i32 11, i32 66, metadata !236, null}
!238 = metadata !{i32 15, i32 1, metadata !236, null}
!239 = metadata !{i32 16, i32 1, metadata !236, null}
!240 = metadata !{i32 17, i32 1, metadata !236, null}
!241 = metadata !{i32 18, i32 1, metadata !236, null}
!242 = metadata !{i32 19, i32 1, metadata !236, null}
!243 = metadata !{i32 786688, metadata !236, metadata !"seg_buf", metadata !47, i32 22, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!244 = metadata !{i32 22, i32 16, metadata !236, null}
!245 = metadata !{i32 786688, metadata !236, metadata !"n", metadata !47, i32 25, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!246 = metadata !{i32 25, i32 24, metadata !236, null}
!247 = metadata !{i32 786688, metadata !236, metadata !"sha256ctx", metadata !47, i32 28, metadata !248, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!248 = metadata !{i32 786454, null, metadata !"SHA256_CTX", metadata !47, i32 11, i64 0, i64 0, i64 0, i32 0, metadata !249} ; [ DW_TAG_typedef ]
!249 = metadata !{i32 786451, null, metadata !"", metadata !12, i32 6, i64 864, i64 32, i32 0, i32 0, null, metadata !250, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!250 = metadata !{metadata !251, metadata !252, metadata !253, metadata !254}
!251 = metadata !{i32 786445, metadata !249, metadata !"data", metadata !12, i32 7, i64 512, i64 8, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ]
!252 = metadata !{i32 786445, metadata !249, metadata !"datalen", metadata !12, i32 8, i64 32, i64 32, i64 512, i32 0, metadata !20} ; [ DW_TAG_member ]
!253 = metadata !{i32 786445, metadata !249, metadata !"bitlen", metadata !12, i32 9, i64 64, i64 32, i64 544, i32 0, metadata !22} ; [ DW_TAG_member ]
!254 = metadata !{i32 786445, metadata !249, metadata !"state", metadata !12, i32 10, i64 256, i64 32, i64 608, i32 0, metadata !26} ; [ DW_TAG_member ]
!255 = metadata !{i32 28, i32 13, metadata !236, null}
!256 = metadata !{i32 29, i32 2, metadata !236, null}
!257 = metadata !{i32 45, i32 5, metadata !258, null}
!258 = metadata !{i32 786443, metadata !259, i32 44, i32 4, metadata !47, i32 5} ; [ DW_TAG_lexical_block ]
!259 = metadata !{i32 786443, metadata !260, i32 43, i32 3, metadata !47, i32 4} ; [ DW_TAG_lexical_block ]
!260 = metadata !{i32 786443, metadata !236, i32 33, i32 2, metadata !47, i32 1} ; [ DW_TAG_lexical_block ]
!261 = metadata !{i32 46, i32 4, metadata !259, null}
!262 = metadata !{i32 32, i32 2, metadata !236, null}
!263 = metadata !{i32 34, i32 3, metadata !260, null}
!264 = metadata !{i32 37, i32 5, metadata !265, null}
!265 = metadata !{i32 786443, metadata !266, i32 36, i32 4, metadata !47, i32 3} ; [ DW_TAG_lexical_block ]
!266 = metadata !{i32 786443, metadata !260, i32 35, i32 3, metadata !47, i32 2} ; [ DW_TAG_lexical_block ]
!267 = metadata !{i32 36, i32 9, metadata !265, null}
!268 = metadata !{i32 44, i32 9, metadata !258, null}
!269 = metadata !{i32 36, i32 20, metadata !265, null}
!270 = metadata !{i32 786688, metadata !236, metadata !"i", metadata !47, i32 24, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!271 = metadata !{i32 38, i32 4, metadata !266, null}
!272 = metadata !{i32 39, i32 4, metadata !266, null}
!273 = metadata !{i32 786688, metadata !236, metadata !"seg_offset", metadata !47, i32 23, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!274 = metadata !{i32 40, i32 4, metadata !266, null}
!275 = metadata !{i32 41, i32 3, metadata !266, null}
!276 = metadata !{i32 44, i32 19, metadata !258, null}
!277 = metadata !{i32 52, i32 2, metadata !236, null}
!278 = metadata !{i32 54, i32 7, metadata !279, null}
!279 = metadata !{i32 786443, metadata !236, i32 54, i32 2, metadata !47, i32 6} ; [ DW_TAG_lexical_block ]
!280 = metadata !{i32 56, i32 3, metadata !281, null}
!281 = metadata !{i32 786443, metadata !279, i32 54, i32 23, metadata !47, i32 7} ; [ DW_TAG_lexical_block ]
!282 = metadata !{i32 54, i32 18, metadata !279, null}
!283 = metadata !{i32 58, i32 1, metadata !236, null}
