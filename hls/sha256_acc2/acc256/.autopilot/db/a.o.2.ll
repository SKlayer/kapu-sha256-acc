; ModuleID = 'E:/acc_2562/sha256_acc2/acc256/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sha256.str = internal unnamed_addr constant [7 x i8] c"sha256\00" ; [#uses=1 type=[7 x i8]*]
@k = constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16 ; [#uses=1 type=[64 x i32]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=30 type=[1 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=5 type=[10 x i8]*]

; [#uses=2]
define internal fastcc { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } @sha256_update([64 x i8]* nocapture %ctx.data, i32 %ctx.datalen.read, i32 %.read1, i32 %.read2, i32 %.read3, i32 %.read4, i32 %.read5, i32 %.read6, i32 %.read7, i32 %.read8, i32 %.read9, i32 %.read10, [64 x i8]* nocapture %data, i32 %len) {
  call void (...)* @_ssdm_SpecKeepAssert(i32 %len), !hlsrange !36
  call void @llvm.dbg.value(metadata !{[64 x i8]* %ctx.data}, i64 0, metadata !37), !dbg !65 ; [debug line = 86:32] [debug variable = ctx.data]
  call void @llvm.dbg.value(metadata !{i32 %ctx.datalen.read}, i64 0, metadata !66), !dbg !65 ; [debug line = 86:32] [debug variable = ctx.datalen]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %data}, i64 0, metadata !70), !dbg !71 ; [debug line = 86:51] [debug variable = data]
  call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !72), !dbg !73 ; [debug line = 86:72] [debug variable = len]
  br label %1, !dbg !74                           ; [debug line = 90:9]

; <label>:1                                       ; preds = %._crit_edge, %0
  %ctx.bitlen = phi i32 [ %.read1, %0 ], [ %ctx.bitlen.0.1, %._crit_edge ] ; [#uses=4 type=i32]
  %ctx.bitlen.1 = phi i32 [ %.read2, %0 ], [ %ctx.bitlen.1.2, %._crit_edge ] ; [#uses=4 type=i32]
  %ctx.state = phi i32 [ %.read3, %0 ], [ %ctx.state.0.1, %._crit_edge ] ; [#uses=3 type=i32]
  %ctx.state.1 = phi i32 [ %.read4, %0 ], [ %ctx.state.1.1, %._crit_edge ] ; [#uses=3 type=i32]
  %ctx.state.2 = phi i32 [ %.read5, %0 ], [ %ctx.state.2.1, %._crit_edge ] ; [#uses=3 type=i32]
  %ctx.state.3 = phi i32 [ %.read6, %0 ], [ %ctx.state.3.1, %._crit_edge ] ; [#uses=3 type=i32]
  %ctx.state.4 = phi i32 [ %.read7, %0 ], [ %ctx.state.4.1, %._crit_edge ] ; [#uses=3 type=i32]
  %ctx.state.5 = phi i32 [ %.read8, %0 ], [ %ctx.state.5.1, %._crit_edge ] ; [#uses=3 type=i32]
  %ctx.state.6 = phi i32 [ %.read9, %0 ], [ %ctx.state.6.1, %._crit_edge ] ; [#uses=3 type=i32]
  %ctx.state.7 = phi i32 [ %.read10, %0 ], [ %ctx.state.7.1, %._crit_edge ] ; [#uses=3 type=i32]
  %ctx.datalen = phi i32 [ %ctx.datalen.read, %0 ], [ %ctx.datalen.1, %._crit_edge ] ; [#uses=3 type=i32]
  %i = phi i7 [ 0, %0 ], [ %i.1, %._crit_edge ]   ; [#uses=3 type=i7]
  %i.cast = zext i7 %i to i8, !dbg !74            ; [#uses=1 type=i8] [debug line = 90:9]
  %len.cast = trunc i32 %len to i8, !dbg !74      ; [#uses=1 type=i8] [debug line = 90:9]
  %exitcond = icmp eq i8 %i.cast, %len.cast, !dbg !74 ; [#uses=1 type=i1] [debug line = 90:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 64, i64 0) ; [#uses=0 type=i32]
  br i1 %exitcond, label %4, label %3, !dbg !74   ; [debug line = 90:9]

; <label>:3                                       ; preds = %1
  %tmp = zext i7 %i to i64, !dbg !77              ; [#uses=1 type=i64] [debug line = 91:7]
  %data.addr = getelementptr [64 x i8]* %data, i64 0, i64 %tmp, !dbg !77 ; [#uses=1 type=i8*] [debug line = 91:7]
  %data.load = load i8* %data.addr, align 1, !dbg !77 ; [#uses=1 type=i8] [debug line = 91:7]
  %tmp.1 = zext i32 %ctx.datalen to i64, !dbg !77 ; [#uses=1 type=i64] [debug line = 91:7]
  %ctx.data.addr = getelementptr [64 x i8]* %ctx.data, i64 0, i64 %tmp.1, !dbg !77 ; [#uses=1 type=i8*] [debug line = 91:7]
  store i8 %data.load, i8* %ctx.data.addr, align 1, !dbg !77 ; [debug line = 91:7]
  %tmp.2 = add i32 %ctx.datalen, 1, !dbg !79      ; [#uses=2 type=i32] [debug line = 92:7]
  %tmp.3 = icmp eq i32 %tmp.2, 64, !dbg !80       ; [#uses=1 type=i1] [debug line = 93:7]
  br i1 %tmp.3, label %._crit_edge1, label %._crit_edge, !dbg !80 ; [debug line = 93:7]

._crit_edge1:                                     ; preds = %3
  %call.ret = call fastcc { i32, i32, i32, i32, i32, i32, i32, i32 } @sha256_transform(i32 %ctx.state, i32 %ctx.state.1, i32 %ctx.state.2, i32 %ctx.state.3, i32 %ctx.state.4, i32 %ctx.state.5, i32 %ctx.state.6, i32 %ctx.state.7, [64 x i8]* %ctx.data), !dbg !81 ; [#uses=8 type={ i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 94:10]
  %ctx.state.0.ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 0, !dbg !81 ; [#uses=1 type=i32] [debug line = 94:10]
  %ctx.state.1.ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 1, !dbg !81 ; [#uses=1 type=i32] [debug line = 94:10]
  %ctx.state.2.ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 2, !dbg !81 ; [#uses=1 type=i32] [debug line = 94:10]
  %ctx.state.3.ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 3, !dbg !81 ; [#uses=1 type=i32] [debug line = 94:10]
  %ctx.state.4.ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 4, !dbg !81 ; [#uses=1 type=i32] [debug line = 94:10]
  %ctx.state.5.ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 5, !dbg !81 ; [#uses=1 type=i32] [debug line = 94:10]
  %ctx.state.6.ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 6, !dbg !81 ; [#uses=1 type=i32] [debug line = 94:10]
  %ctx.state.7.ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 7, !dbg !81 ; [#uses=1 type=i32] [debug line = 94:10]
  %tmp.4 = icmp ugt i32 %ctx.bitlen, -513, !dbg !83 ; [#uses=1 type=i1] [debug line = 95:10]
  %tmp.5 = add i32 %ctx.bitlen.1, 1, !dbg !84     ; [#uses=1 type=i32] [debug line = 95:51]
  %tmp.5.ctx.bitlen.1 = select i1 %tmp.4, i32 %tmp.5, i32 %ctx.bitlen.1, !dbg !83 ; [#uses=1 type=i32] [debug line = 95:10]
  %tmp.6 = add i32 %ctx.bitlen, 512, !dbg !85     ; [#uses=1 type=i32] [debug line = 95:69]
  br label %._crit_edge, !dbg !86                 ; [debug line = 97:7]

._crit_edge:                                      ; preds = %._crit_edge1, %3
  %ctx.bitlen.0.1 = phi i32 [ %tmp.6, %._crit_edge1 ], [ %ctx.bitlen, %3 ] ; [#uses=1 type=i32]
  %ctx.bitlen.1.2 = phi i32 [ %tmp.5.ctx.bitlen.1, %._crit_edge1 ], [ %ctx.bitlen.1, %3 ] ; [#uses=1 type=i32]
  %ctx.state.0.1 = phi i32 [ %ctx.state.0.ret, %._crit_edge1 ], [ %ctx.state, %3 ] ; [#uses=1 type=i32]
  %ctx.state.1.1 = phi i32 [ %ctx.state.1.ret, %._crit_edge1 ], [ %ctx.state.1, %3 ] ; [#uses=1 type=i32]
  %ctx.state.2.1 = phi i32 [ %ctx.state.2.ret, %._crit_edge1 ], [ %ctx.state.2, %3 ] ; [#uses=1 type=i32]
  %ctx.state.3.1 = phi i32 [ %ctx.state.3.ret, %._crit_edge1 ], [ %ctx.state.3, %3 ] ; [#uses=1 type=i32]
  %ctx.state.4.1 = phi i32 [ %ctx.state.4.ret, %._crit_edge1 ], [ %ctx.state.4, %3 ] ; [#uses=1 type=i32]
  %ctx.state.5.1 = phi i32 [ %ctx.state.5.ret, %._crit_edge1 ], [ %ctx.state.5, %3 ] ; [#uses=1 type=i32]
  %ctx.state.6.1 = phi i32 [ %ctx.state.6.ret, %._crit_edge1 ], [ %ctx.state.6, %3 ] ; [#uses=1 type=i32]
  %ctx.state.7.1 = phi i32 [ %ctx.state.7.ret, %._crit_edge1 ], [ %ctx.state.7, %3 ] ; [#uses=1 type=i32]
  %ctx.datalen.1 = phi i32 [ 0, %._crit_edge1 ], [ %tmp.2, %3 ] ; [#uses=1 type=i32]
  %i.1 = add i7 %i, 1, !dbg !87                   ; [#uses=1 type=i7] [debug line = 90:23]
  call void @llvm.dbg.value(metadata !{i7 %i.1}, i64 0, metadata !88), !dbg !87 ; [debug line = 90:23] [debug variable = i]
  br label %1, !dbg !87                           ; [debug line = 90:23]

; <label>:4                                       ; preds = %1
  %ctx.datalen.lcssa = phi i32 [ %ctx.datalen, %1 ] ; [#uses=1 type=i32]
  %ctx.state.7.lcssa = phi i32 [ %ctx.state.7, %1 ] ; [#uses=1 type=i32]
  %ctx.state.6.lcssa = phi i32 [ %ctx.state.6, %1 ] ; [#uses=1 type=i32]
  %ctx.state.5.lcssa = phi i32 [ %ctx.state.5, %1 ] ; [#uses=1 type=i32]
  %ctx.state.4.lcssa = phi i32 [ %ctx.state.4, %1 ] ; [#uses=1 type=i32]
  %ctx.state.3.lcssa = phi i32 [ %ctx.state.3, %1 ] ; [#uses=1 type=i32]
  %ctx.state.2.lcssa = phi i32 [ %ctx.state.2, %1 ] ; [#uses=1 type=i32]
  %ctx.state.1.lcssa = phi i32 [ %ctx.state.1, %1 ] ; [#uses=1 type=i32]
  %ctx.state.lcssa = phi i32 [ %ctx.state, %1 ]   ; [#uses=1 type=i32]
  %ctx.bitlen.1.lcssa = phi i32 [ %ctx.bitlen.1, %1 ] ; [#uses=1 type=i32]
  %ctx.bitlen.lcssa = phi i32 [ %ctx.bitlen, %1 ] ; [#uses=1 type=i32]
  %mrv. = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } undef, i32 %ctx.datalen.lcssa, 0, !dbg !89 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 99:1]
  %mrv.1 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv., i32 %ctx.bitlen.lcssa, 1, !dbg !89 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 99:1]
  %mrv.2 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv.1, i32 %ctx.bitlen.1.lcssa, 2, !dbg !89 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 99:1]
  %mrv.3 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv.2, i32 %ctx.state.lcssa, 3, !dbg !89 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 99:1]
  %mrv.4 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv.3, i32 %ctx.state.1.lcssa, 4, !dbg !89 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 99:1]
  %mrv.5 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv.4, i32 %ctx.state.2.lcssa, 5, !dbg !89 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 99:1]
  %mrv.6 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv.5, i32 %ctx.state.3.lcssa, 6, !dbg !89 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 99:1]
  %mrv.7 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv.6, i32 %ctx.state.4.lcssa, 7, !dbg !89 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 99:1]
  %mrv.8 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv.7, i32 %ctx.state.5.lcssa, 8, !dbg !89 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 99:1]
  %mrv.9 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv.8, i32 %ctx.state.6.lcssa, 9, !dbg !89 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 99:1]
  %mrv.10 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv.9, i32 %ctx.state.7.lcssa, 10, !dbg !89 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 99:1]
  ret { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv.10, !dbg !89 ; [debug line = 99:1]
}

; [#uses=3]
define internal fastcc { i32, i32, i32, i32, i32, i32, i32, i32 } @sha256_transform(i32 %ctx.state.0.read, i32 %ctx.state.1.read, i32 %ctx.state.2.read, i32 %ctx.state.3.read, i32 %ctx.state.4.read, i32 %ctx.state.5.read, i32 %ctx.state.6.read, i32 %ctx.state.7.read, [64 x i8]* nocapture %data) readonly {
  %m = alloca [64 x i32], align 16                ; [#uses=7 type=[64 x i32]*]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %data}, i64 0, metadata !90), !dbg !94 ; [debug line = 30:54] [debug variable = data]
  call void @llvm.dbg.declare(metadata !{[64 x i32]* %m}, metadata !95), !dbg !97 ; [debug line = 32:43] [debug variable = m]
  br label %1, !dbg !98                           ; [debug line = 34:9]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ 0, %0 ], [ %tmp.14, %3 ]          ; [#uses=3 type=i5]
  %j = phi i7 [ 0, %0 ], [ %j.1, %3 ]             ; [#uses=3 type=i7]
  %j.cast = trunc i7 %j to i6, !dbg !98           ; [#uses=3 type=i6] [debug line = 34:9]
  %tmp = icmp eq i5 %i, -16, !dbg !98             ; [#uses=1 type=i1] [debug line = 34:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp, label %.preheader.preheader, label %3, !dbg !98 ; [debug line = 34:9]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !100                 ; [debug line = 36:4]

; <label>:3                                       ; preds = %1
  %tmp.8 = zext i7 %j to i64, !dbg !102           ; [#uses=1 type=i64] [debug line = 35:7]
  %data.addr = getelementptr [64 x i8]* %data, i64 0, i64 %tmp.8, !dbg !102 ; [#uses=1 type=i8*] [debug line = 35:7]
  %data.load = load i8* %data.addr, align 1, !dbg !102 ; [#uses=1 type=i8] [debug line = 35:7]
  %tmp.1 = or i6 %j.cast, 1, !dbg !102            ; [#uses=1 type=i6] [debug line = 35:7]
  %tmp.2 = zext i6 %tmp.1 to i64, !dbg !102       ; [#uses=1 type=i64] [debug line = 35:7]
  %data.addr.1 = getelementptr [64 x i8]* %data, i64 0, i64 %tmp.2, !dbg !102 ; [#uses=1 type=i8*] [debug line = 35:7]
  %data.load.1 = load i8* %data.addr.1, align 1, !dbg !102 ; [#uses=1 type=i8] [debug line = 35:7]
  %tmp.3.cast = zext i8 %data.load.1 to i24, !dbg !102 ; [#uses=1 type=i24] [debug line = 35:7]
  %tmp.4 = shl nuw i24 %tmp.3.cast, 16, !dbg !102 ; [#uses=1 type=i24] [debug line = 35:7]
  %tmp.5 = or i6 %j.cast, 2, !dbg !102            ; [#uses=1 type=i6] [debug line = 35:7]
  %tmp.6 = zext i6 %tmp.5 to i64, !dbg !102       ; [#uses=1 type=i64] [debug line = 35:7]
  %data.addr.2 = getelementptr [64 x i8]* %data, i64 0, i64 %tmp.6, !dbg !102 ; [#uses=1 type=i8*] [debug line = 35:7]
  %data.load.2 = load i8* %data.addr.2, align 1, !dbg !102 ; [#uses=1 type=i8] [debug line = 35:7]
  %tmp.7.cast = zext i8 %data.load.2 to i16, !dbg !102 ; [#uses=1 type=i16] [debug line = 35:7]
  %tmp. = shl nuw i16 %tmp.7.cast, 8, !dbg !102   ; [#uses=1 type=i16] [debug line = 35:7]
  %tmp.3 = or i6 %j.cast, 3, !dbg !102            ; [#uses=1 type=i6] [debug line = 35:7]
  %tmp.7 = zext i6 %tmp.3 to i64, !dbg !102       ; [#uses=1 type=i64] [debug line = 35:7]
  %data.addr.3 = getelementptr [64 x i8]* %data, i64 0, i64 %tmp.7, !dbg !102 ; [#uses=1 type=i8*] [debug line = 35:7]
  %data.load.3 = load i8* %data.addr.3, align 1, !dbg !102 ; [#uses=1 type=i8] [debug line = 35:7]
  %tmp.9 = call i24 @_ssdm_op_BitConcatenate.i24.i8.i16(i8 0, i16 %tmp.) ; [#uses=1 type=i24]
  %tmp.10 = or i24 %tmp.9, %tmp.4                 ; [#uses=1 type=i24]
  %tmp.11 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp.10, i32 8, i32 23) ; [#uses=1 type=i16]
  %tmp.12 = call i32 @_ssdm_op_BitConcatenate.i32.i8.i16.i8(i8 %data.load, i16 %tmp.11, i8 %data.load.3), !dbg !102 ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.13 = zext i5 %i to i64, !dbg !102          ; [#uses=1 type=i64] [debug line = 35:7]
  %m.addr = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp.13, !dbg !102 ; [#uses=1 type=i32*] [debug line = 35:7]
  store i32 %tmp.12, i32* %m.addr, align 4, !dbg !102 ; [debug line = 35:7]
  %tmp.14 = add i5 %i, 1, !dbg !103               ; [#uses=1 type=i5] [debug line = 34:26]
  %j.1 = add i7 %j, 4, !dbg !103                  ; [#uses=1 type=i7] [debug line = 34:26]
  call void @llvm.dbg.value(metadata !{i7 %j.1}, i64 0, metadata !104), !dbg !103 ; [debug line = 34:26] [debug variable = j]
  br label %1, !dbg !103                          ; [debug line = 34:26]

.preheader:                                       ; preds = %5, %.preheader.preheader
  %i.1 = phi i7 [ %i.3, %5 ], [ 16, %.preheader.preheader ] ; [#uses=7 type=i7]
  %exitcond = icmp eq i7 %i.1, -64, !dbg !100     ; [#uses=1 type=i1] [debug line = 36:4]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 48, i64 48, i64 48) ; [#uses=0 type=i32]
  br i1 %exitcond, label %.preheader1.preheader, label %5, !dbg !100 ; [debug line = 36:4]

.preheader1.preheader:                            ; preds = %.preheader
  br label %.preheader1, !dbg !105                ; [debug line = 48:9]

; <label>:5                                       ; preds = %.preheader
  %tmp.15 = add i7 %i.1, -2, !dbg !107            ; [#uses=1 type=i7] [debug line = 37:7]
  %tmp.16 = zext i7 %tmp.15 to i64, !dbg !107     ; [#uses=1 type=i64] [debug line = 37:7]
  %m.addr.1 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp.16, !dbg !107 ; [#uses=1 type=i32*] [debug line = 37:7]
  %m.load = load i32* %m.addr.1, align 4, !dbg !107 ; [#uses=5 type=i32] [debug line = 37:7]
  %tmp.17 = lshr i32 %m.load, 17, !dbg !107       ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.18 = shl i32 %m.load, 15, !dbg !107        ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.19 = or i32 %tmp.18, %tmp.17, !dbg !107    ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.20 = lshr i32 %m.load, 19, !dbg !107       ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.21 = shl i32 %m.load, 13, !dbg !107        ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.22 = or i32 %tmp.21, %tmp.20, !dbg !107    ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.23 = lshr i32 %m.load, 10, !dbg !107       ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp2 = xor i32 %tmp.23, %tmp.22, !dbg !107     ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.24 = xor i32 %tmp2, %tmp.19, !dbg !107     ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.25 = add i7 %i.1, -7, !dbg !107            ; [#uses=1 type=i7] [debug line = 37:7]
  %tmp.26 = zext i7 %tmp.25 to i64, !dbg !107     ; [#uses=1 type=i64] [debug line = 37:7]
  %m.addr.2 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp.26, !dbg !107 ; [#uses=1 type=i32*] [debug line = 37:7]
  %m.load.1 = load i32* %m.addr.2, align 4, !dbg !107 ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.27 = add i7 %i.1, -15, !dbg !107           ; [#uses=1 type=i7] [debug line = 37:7]
  %tmp.28 = zext i7 %tmp.27 to i64, !dbg !107     ; [#uses=1 type=i64] [debug line = 37:7]
  %m.addr.3 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp.28, !dbg !107 ; [#uses=1 type=i32*] [debug line = 37:7]
  %m.load.2 = load i32* %m.addr.3, align 4, !dbg !107 ; [#uses=5 type=i32] [debug line = 37:7]
  %tmp.29 = lshr i32 %m.load.2, 7, !dbg !107      ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.30 = shl i32 %m.load.2, 25, !dbg !107      ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.31 = or i32 %tmp.30, %tmp.29, !dbg !107    ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.32 = lshr i32 %m.load.2, 18, !dbg !107     ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.33 = shl i32 %m.load.2, 14, !dbg !107      ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.34 = or i32 %tmp.33, %tmp.32, !dbg !107    ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.35 = lshr i32 %m.load.2, 3, !dbg !107      ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp3 = xor i32 %tmp.35, %tmp.34, !dbg !107     ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.36 = xor i32 %tmp3, %tmp.31, !dbg !107     ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.37 = add i7 %i.1, -16, !dbg !107           ; [#uses=1 type=i7] [debug line = 37:7]
  %tmp.38 = zext i7 %tmp.37 to i64, !dbg !107     ; [#uses=1 type=i64] [debug line = 37:7]
  %m.addr.4 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp.38, !dbg !107 ; [#uses=1 type=i32*] [debug line = 37:7]
  %m.load.3 = load i32* %m.addr.4, align 4, !dbg !107 ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp4 = add i32 %m.load.3, %m.load.1, !dbg !107 ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp5 = add i32 %tmp.36, %tmp.24, !dbg !107     ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.39 = add i32 %tmp4, %tmp5, !dbg !107       ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.40 = zext i7 %i.1 to i64, !dbg !107        ; [#uses=1 type=i64] [debug line = 37:7]
  %m.addr.5 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp.40, !dbg !107 ; [#uses=1 type=i32*] [debug line = 37:7]
  store i32 %tmp.39, i32* %m.addr.5, align 4, !dbg !107 ; [debug line = 37:7]
  %i.3 = add i7 %i.1, 1, !dbg !108                ; [#uses=1 type=i7] [debug line = 36:20]
  call void @llvm.dbg.value(metadata !{i7 %i.3}, i64 0, metadata !109), !dbg !108 ; [debug line = 36:20] [debug variable = i]
  br label %.preheader, !dbg !108                 ; [debug line = 36:20]

.preheader1:                                      ; preds = %7, %.preheader1.preheader
  %h1 = phi i32 [ %h, %7 ], [ %ctx.state.7.read, %.preheader1.preheader ] ; [#uses=2 type=i32]
  %h = phi i32 [ %g, %7 ], [ %ctx.state.6.read, %.preheader1.preheader ] ; [#uses=3 type=i32]
  %g = phi i32 [ %f, %7 ], [ %ctx.state.5.read, %.preheader1.preheader ] ; [#uses=3 type=i32]
  %f = phi i32 [ %e, %7 ], [ %ctx.state.4.read, %.preheader1.preheader ] ; [#uses=10 type=i32]
  %d1 = phi i32 [ %d, %7 ], [ %ctx.state.3.read, %.preheader1.preheader ] ; [#uses=2 type=i32]
  %d = phi i32 [ %c, %7 ], [ %ctx.state.2.read, %.preheader1.preheader ] ; [#uses=4 type=i32]
  %c = phi i32 [ %b, %7 ], [ %ctx.state.1.read, %.preheader1.preheader ] ; [#uses=4 type=i32]
  %b = phi i32 [ %a, %7 ], [ %ctx.state.0.read, %.preheader1.preheader ] ; [#uses=9 type=i32]
  %i.2 = phi i7 [ %i.4, %7 ], [ 0, %.preheader1.preheader ] ; [#uses=3 type=i7]
  %tmp.41 = icmp eq i7 %i.2, -64, !dbg !105       ; [#uses=1 type=i1] [debug line = 48:9]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  br i1 %tmp.41, label %8, label %7, !dbg !105    ; [debug line = 48:9]

; <label>:7                                       ; preds = %.preheader1
  %tmp.42 = lshr i32 %f, 6, !dbg !110             ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.43 = shl i32 %f, 26, !dbg !110             ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.44 = or i32 %tmp.42, %tmp.43, !dbg !110    ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.45 = lshr i32 %f, 11, !dbg !110            ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.46 = shl i32 %f, 21, !dbg !110             ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.47 = or i32 %tmp.45, %tmp.46, !dbg !110    ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.48 = lshr i32 %f, 25, !dbg !110            ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.49 = shl i32 %f, 7, !dbg !110              ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.50 = or i32 %tmp.48, %tmp.49, !dbg !110    ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp6 = xor i32 %tmp.44, %tmp.47, !dbg !110     ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.51 = xor i32 %tmp6, %tmp.50, !dbg !110     ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.52 = and i32 %f, %g, !dbg !110             ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.53 = xor i32 %f, -1, !dbg !110             ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.54 = and i32 %h, %tmp.53, !dbg !110        ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.55 = xor i32 %tmp.52, %tmp.54, !dbg !110   ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.56 = zext i7 %i.2 to i64, !dbg !110        ; [#uses=2 type=i64] [debug line = 49:7]
  %k.addr = getelementptr inbounds [64 x i32]* @k, i64 0, i64 %tmp.56, !dbg !110 ; [#uses=1 type=i32*] [debug line = 49:7]
  %k.load = load i32* %k.addr, align 4, !dbg !110 ; [#uses=1 type=i32] [debug line = 49:7]
  %m.addr.6 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp.56, !dbg !110 ; [#uses=1 type=i32*] [debug line = 49:7]
  %m.load.4 = load i32* %m.addr.6, align 4, !dbg !110 ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp9 = add i32 %m.load.4, %k.load, !dbg !110   ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp11 = add i32 %tmp.55, %tmp.51, !dbg !110    ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp10 = add i32 %h1, %tmp11, !dbg !110         ; [#uses=1 type=i32] [debug line = 49:7]
  %t1 = add i32 %tmp9, %tmp10, !dbg !110          ; [#uses=2 type=i32] [debug line = 49:7]
  call void @llvm.dbg.value(metadata !{i32 %t1}, i64 0, metadata !112), !dbg !110 ; [debug line = 49:7] [debug variable = t1]
  %tmp.57 = lshr i32 %b, 2, !dbg !113             ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.58 = shl i32 %b, 30, !dbg !113             ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.59 = or i32 %tmp.57, %tmp.58, !dbg !113    ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.60 = lshr i32 %b, 13, !dbg !113            ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.61 = shl i32 %b, 19, !dbg !113             ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.62 = or i32 %tmp.60, %tmp.61, !dbg !113    ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.63 = lshr i32 %b, 22, !dbg !113            ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.64 = shl i32 %b, 10, !dbg !113             ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.65 = or i32 %tmp.63, %tmp.64, !dbg !113    ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp12 = xor i32 %tmp.59, %tmp.62, !dbg !113    ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.66 = xor i32 %tmp12, %tmp.65, !dbg !113    ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.67 = xor i32 %c, %d, !dbg !113             ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.68 = and i32 %b, %tmp.67, !dbg !113        ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.69 = and i32 %c, %d, !dbg !113             ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.70 = xor i32 %tmp.68, %tmp.69, !dbg !113   ; [#uses=1 type=i32] [debug line = 50:7]
  call void @llvm.dbg.value(metadata !{i32 %h}, i64 0, metadata !114), !dbg !115 ; [debug line = 51:7] [debug variable = h]
  call void @llvm.dbg.value(metadata !{i32 %g}, i64 0, metadata !116), !dbg !117 ; [debug line = 52:7] [debug variable = g]
  call void @llvm.dbg.value(metadata !{i32 %f}, i64 0, metadata !118), !dbg !119 ; [debug line = 53:7] [debug variable = f]
  %e = add i32 %d1, %t1, !dbg !120                ; [#uses=1 type=i32] [debug line = 54:7]
  call void @llvm.dbg.value(metadata !{i32 %e}, i64 0, metadata !121), !dbg !120 ; [debug line = 54:7] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i32 %d}, i64 0, metadata !122), !dbg !123 ; [debug line = 55:7] [debug variable = d]
  call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !124), !dbg !125 ; [debug line = 56:7] [debug variable = c]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !126), !dbg !127 ; [debug line = 57:7] [debug variable = b]
  %tmp13 = add i32 %t1, %tmp.70, !dbg !128        ; [#uses=1 type=i32] [debug line = 58:7]
  %a = add i32 %tmp.66, %tmp13, !dbg !128         ; [#uses=1 type=i32] [debug line = 58:7]
  call void @llvm.dbg.value(metadata !{i32 %a}, i64 0, metadata !129), !dbg !128 ; [debug line = 58:7] [debug variable = a]
  %i.4 = add i7 %i.2, 1, !dbg !130                ; [#uses=1 type=i7] [debug line = 48:24]
  call void @llvm.dbg.value(metadata !{i7 %i.4}, i64 0, metadata !109), !dbg !130 ; [debug line = 48:24] [debug variable = i]
  br label %.preheader1, !dbg !130                ; [debug line = 48:24]

; <label>:8                                       ; preds = %.preheader1
  %b.lcssa = phi i32 [ %b, %.preheader1 ]         ; [#uses=1 type=i32]
  %c.lcssa = phi i32 [ %c, %.preheader1 ]         ; [#uses=1 type=i32]
  %d.lcssa = phi i32 [ %d, %.preheader1 ]         ; [#uses=1 type=i32]
  %d1.lcssa = phi i32 [ %d1, %.preheader1 ]       ; [#uses=1 type=i32]
  %f.lcssa = phi i32 [ %f, %.preheader1 ]         ; [#uses=1 type=i32]
  %g.lcssa = phi i32 [ %g, %.preheader1 ]         ; [#uses=1 type=i32]
  %h.lcssa = phi i32 [ %h, %.preheader1 ]         ; [#uses=1 type=i32]
  %h1.lcssa = phi i32 [ %h1, %.preheader1 ]       ; [#uses=1 type=i32]
  %ctx.state = add i32 %b.lcssa, %ctx.state.0.read, !dbg !131 ; [#uses=1 type=i32] [debug line = 61:4]
  %ctx.state.1 = add i32 %c.lcssa, %ctx.state.1.read, !dbg !132 ; [#uses=1 type=i32] [debug line = 62:4]
  %ctx.state.2 = add i32 %d.lcssa, %ctx.state.2.read, !dbg !133 ; [#uses=1 type=i32] [debug line = 63:4]
  %ctx.state.3 = add i32 %d1.lcssa, %ctx.state.3.read, !dbg !134 ; [#uses=1 type=i32] [debug line = 64:4]
  %ctx.state.4 = add i32 %f.lcssa, %ctx.state.4.read, !dbg !135 ; [#uses=1 type=i32] [debug line = 65:4]
  %ctx.state.5 = add i32 %g.lcssa, %ctx.state.5.read, !dbg !136 ; [#uses=1 type=i32] [debug line = 66:4]
  %ctx.state.6 = add i32 %h.lcssa, %ctx.state.6.read, !dbg !137 ; [#uses=1 type=i32] [debug line = 67:4]
  %ctx.state.7 = add i32 %h1.lcssa, %ctx.state.7.read, !dbg !138 ; [#uses=1 type=i32] [debug line = 68:4]
  %mrv = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } undef, i32 %ctx.state, 0, !dbg !139 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 69:1]
  %mrv.1 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv, i32 %ctx.state.1, 1, !dbg !139 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 69:1]
  %mrv.2 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv.1, i32 %ctx.state.2, 2, !dbg !139 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 69:1]
  %mrv.3 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv.2, i32 %ctx.state.3, 3, !dbg !139 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 69:1]
  %mrv.4 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv.3, i32 %ctx.state.4, 4, !dbg !139 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 69:1]
  %mrv.5 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv.4, i32 %ctx.state.5, 5, !dbg !139 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 69:1]
  %mrv.6 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv.5, i32 %ctx.state.6, 6, !dbg !139 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 69:1]
  %mrv.7 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv.6, i32 %ctx.state.7, 7, !dbg !139 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 69:1]
  ret { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv.7, !dbg !139 ; [debug line = 69:1]
}

; [#uses=1]
define internal fastcc void @sha256_final([64 x i8]* nocapture %ctx.data, i32 %ctx.datalen.read, i32 %ctx.bitlen.0.read, i32 %.read3, i32 %.read1, i32 %.read2, i32 %.read4, i32 %.read5, i32 %.read6, i32 %.read7, i32 %.read8, i32 %.read9, [64 x i8]* nocapture %hash) {
  call void @llvm.dbg.value(metadata !{[64 x i8]* %ctx.data}, i64 0, metadata !140), !dbg !143 ; [debug line = 101:31] [debug variable = ctx.data]
  call void @llvm.dbg.value(metadata !{i32 %ctx.datalen.read}, i64 0, metadata !144), !dbg !143 ; [debug line = 101:31] [debug variable = ctx.datalen]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %hash}, i64 0, metadata !145), !dbg !146 ; [debug line = 101:50] [debug variable = hash]
  call void @llvm.dbg.value(metadata !{i32 %ctx.datalen.read}, i64 0, metadata !147), !dbg !149 ; [debug line = 105:2] [debug variable = i]
  %tmp = icmp ult i32 %ctx.datalen.read, 56, !dbg !150 ; [#uses=1 type=i1] [debug line = 108:2]
  %tmp. = zext i32 %ctx.datalen.read to i64, !dbg !151 ; [#uses=1 type=i64] [debug line = 109:3]
  %ctx.data.addr = getelementptr [64 x i8]* %ctx.data, i64 0, i64 %tmp., !dbg !151 ; [#uses=1 type=i8*] [debug line = 109:3]
  store i8 -128, i8* %ctx.data.addr, align 1, !dbg !151 ; [debug line = 109:3]
  br i1 %tmp, label %.preheader3.preheader, label %.preheader.preheader, !dbg !150 ; [debug line = 108:2]

.preheader3.preheader:                            ; preds = %0
  br label %.preheader3, !dbg !151                ; [debug line = 109:3]

.preheader.preheader:                             ; preds = %0
  br label %.preheader, !dbg !153                 ; [debug line = 114:3]

.preheader3:                                      ; preds = %1, %.preheader3.preheader
  %i.0.in = phi i32 [ %i, %1 ], [ %ctx.datalen.read, %.preheader3.preheader ] ; [#uses=2 type=i32]
  %i = add i32 %i.0.in, 1, !dbg !151              ; [#uses=2 type=i32] [debug line = 109:3]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !147), !dbg !151 ; [debug line = 109:3] [debug variable = i]
  %exitcond = icmp eq i32 %i.0.in, 55, !dbg !155  ; [#uses=1 type=i1] [debug line = 110:3]
  br i1 %exitcond, label %.loopexit.loopexit14, label %1, !dbg !155 ; [debug line = 110:3]

; <label>:1                                       ; preds = %.preheader3
  %tmp.72 = zext i32 %i to i64, !dbg !156         ; [#uses=1 type=i64] [debug line = 111:4]
  %ctx.data.addr.1 = getelementptr [64 x i8]* %ctx.data, i64 0, i64 %tmp.72, !dbg !156 ; [#uses=1 type=i8*] [debug line = 111:4]
  store i8 0, i8* %ctx.data.addr.1, align 1, !dbg !156 ; [debug line = 111:4]
  br label %.preheader3, !dbg !156                ; [debug line = 111:4]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %i.1.in = phi i32 [ %i.1, %2 ], [ %ctx.datalen.read, %.preheader.preheader ] ; [#uses=1 type=i32]
  %i.1 = add i32 %i.1.in, 1, !dbg !153            ; [#uses=3 type=i32] [debug line = 114:3]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !147), !dbg !153 ; [debug line = 114:3] [debug variable = i]
  %tmp.71 = icmp ult i32 %i.1, 64, !dbg !157      ; [#uses=1 type=i1] [debug line = 115:3]
  br i1 %tmp.71, label %2, label %3, !dbg !157    ; [debug line = 115:3]

; <label>:2                                       ; preds = %.preheader
  %tmp.73 = zext i32 %i.1 to i64, !dbg !158       ; [#uses=1 type=i64] [debug line = 116:4]
  %ctx.data.addr.2 = getelementptr [64 x i8]* %ctx.data, i64 0, i64 %tmp.73, !dbg !158 ; [#uses=1 type=i8*] [debug line = 116:4]
  store i8 0, i8* %ctx.data.addr.2, align 1, !dbg !158 ; [debug line = 116:4]
  br label %.preheader, !dbg !158                 ; [debug line = 116:4]

; <label>:3                                       ; preds = %.preheader
  %call.ret1 = call fastcc { i32, i32, i32, i32, i32, i32, i32, i32 } @sha256_transform(i32 %.read1, i32 %.read2, i32 %.read4, i32 %.read5, i32 %.read6, i32 %.read7, i32 %.read8, i32 %.read9, [64 x i8]* %ctx.data), !dbg !159 ; [#uses=8 type={ i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 117:3]
  %ctx.state.0.ret4 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret1, 0, !dbg !159 ; [#uses=1 type=i32] [debug line = 117:3]
  %ctx.state.1.ret5 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret1, 1, !dbg !159 ; [#uses=1 type=i32] [debug line = 117:3]
  %ctx.state.2.ret6 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret1, 2, !dbg !159 ; [#uses=1 type=i32] [debug line = 117:3]
  %ctx.state.3.ret7 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret1, 3, !dbg !159 ; [#uses=1 type=i32] [debug line = 117:3]
  %ctx.state.4.ret8 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret1, 4, !dbg !159 ; [#uses=1 type=i32] [debug line = 117:3]
  %ctx.state.5.ret9 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret1, 5, !dbg !159 ; [#uses=1 type=i32] [debug line = 117:3]
  %ctx.state.6.ret1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret1, 6, !dbg !159 ; [#uses=1 type=i32] [debug line = 117:3]
  %ctx.state.7.ret1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret1, 7, !dbg !159 ; [#uses=1 type=i32] [debug line = 117:3]
  br label %4, !dbg !160                          ; [debug line = 118:8]

; <label>:4                                       ; preds = %6, %3
  %i.2 = phi i6 [ 0, %3 ], [ %i.5, %6 ]           ; [#uses=3 type=i6]
  %tmp.74 = icmp eq i6 %i.2, -8, !dbg !160        ; [#uses=1 type=i1] [debug line = 118:8]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 56, i64 56, i64 56) ; [#uses=0 type=i32]
  br i1 %tmp.74, label %.loopexit.loopexit, label %6, !dbg !160 ; [debug line = 118:8]

; <label>:6                                       ; preds = %4
  %tmp.75 = zext i6 %i.2 to i64, !dbg !162        ; [#uses=1 type=i64] [debug line = 119:4]
  %ctx.data.addr.6 = getelementptr [64 x i8]* %ctx.data, i64 0, i64 %tmp.75, !dbg !162 ; [#uses=1 type=i8*] [debug line = 119:4]
  store i8 0, i8* %ctx.data.addr.6, align 1, !dbg !162 ; [debug line = 119:4]
  %i.5 = add i6 %i.2, 1, !dbg !164                ; [#uses=1 type=i6] [debug line = 118:23]
  call void @llvm.dbg.value(metadata !{i6 %i.5}, i64 0, metadata !147), !dbg !164 ; [debug line = 118:23] [debug variable = i]
  br label %4, !dbg !164                          ; [debug line = 118:23]

.loopexit.loopexit:                               ; preds = %4
  br label %.loopexit

.loopexit.loopexit14:                             ; preds = %.preheader3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit14, %.loopexit.loopexit
  %ctx.state = phi i32 [ %ctx.state.0.ret4, %.loopexit.loopexit ], [ %.read1, %.loopexit.loopexit14 ] ; [#uses=1 type=i32]
  %ctx.state.1 = phi i32 [ %ctx.state.1.ret5, %.loopexit.loopexit ], [ %.read2, %.loopexit.loopexit14 ] ; [#uses=1 type=i32]
  %ctx.state.2 = phi i32 [ %ctx.state.2.ret6, %.loopexit.loopexit ], [ %.read4, %.loopexit.loopexit14 ] ; [#uses=1 type=i32]
  %ctx.state.3 = phi i32 [ %ctx.state.3.ret7, %.loopexit.loopexit ], [ %.read5, %.loopexit.loopexit14 ] ; [#uses=1 type=i32]
  %ctx.state.4 = phi i32 [ %ctx.state.4.ret8, %.loopexit.loopexit ], [ %.read6, %.loopexit.loopexit14 ] ; [#uses=1 type=i32]
  %ctx.state.5 = phi i32 [ %ctx.state.5.ret9, %.loopexit.loopexit ], [ %.read7, %.loopexit.loopexit14 ] ; [#uses=1 type=i32]
  %ctx.state.6 = phi i32 [ %ctx.state.6.ret1, %.loopexit.loopexit ], [ %.read8, %.loopexit.loopexit14 ] ; [#uses=1 type=i32]
  %ctx.state.7 = phi i32 [ %ctx.state.7.ret1, %.loopexit.loopexit ], [ %.read9, %.loopexit.loopexit14 ] ; [#uses=1 type=i32]
  %tmp.76 = shl i32 %ctx.datalen.read, 3, !dbg !165 ; [#uses=5 type=i32] [debug line = 125:4]
  %tmp.77 = xor i32 %tmp.76, -1, !dbg !165        ; [#uses=1 type=i32] [debug line = 125:4]
  %tmp.78 = icmp ugt i32 %ctx.bitlen.0.read, %tmp.77, !dbg !165 ; [#uses=1 type=i1] [debug line = 125:4]
  %tmp.79 = add i32 %.read3, 1, !dbg !166         ; [#uses=1 type=i32] [debug line = 125:58]
  %tmp.102..read3 = select i1 %tmp.78, i32 %tmp.79, i32 %.read3, !dbg !165 ; [#uses=4 type=i32] [debug line = 125:4]
  %tmp.102..read3.cast4 = trunc i32 %tmp.102..read3 to i24 ; [#uses=1 type=i24]
  %tmp.102..read3.cast = trunc i32 %tmp.102..read3 to i16 ; [#uses=1 type=i16]
  %tmp.16 = trunc i32 %ctx.bitlen.0.read to i8    ; [#uses=1 type=i8]
  %tmp.17 = trunc i32 %tmp.76 to i8               ; [#uses=1 type=i8]
  %tmp.14 = trunc i32 %ctx.bitlen.0.read to i16   ; [#uses=1 type=i16]
  %tmp.15 = trunc i32 %tmp.76 to i16              ; [#uses=1 type=i16]
  %tmp.18 = trunc i32 %ctx.bitlen.0.read to i24   ; [#uses=1 type=i24]
  %tmp.19 = trunc i32 %tmp.76 to i24              ; [#uses=1 type=i24]
  %ctx.bitlen = add i32 %tmp.76, %ctx.bitlen.0.read, !dbg !167 ; [#uses=1 type=i32] [debug line = 125:76]
  %ctx.bitlen.cast3 = add i24 %tmp.18, %tmp.19, !dbg !168 ; [#uses=1 type=i24] [debug line = 126:4]
  %ctx.bitlen.cast = add i16 %tmp.14, %tmp.15, !dbg !168 ; [#uses=1 type=i16] [debug line = 126:4]
  %tmp.80 = add i8 %tmp.17, %tmp.16, !dbg !168    ; [#uses=1 type=i8] [debug line = 126:4]
  %ctx.data.addr.3 = getelementptr [64 x i8]* %ctx.data, i64 0, i64 63, !dbg !168 ; [#uses=1 type=i8*] [debug line = 126:4]
  store i8 %tmp.80, i8* %ctx.data.addr.3, align 1, !dbg !168 ; [debug line = 126:4]
  %tmp.81 = lshr i16 %ctx.bitlen.cast, 8, !dbg !169 ; [#uses=1 type=i16] [debug line = 127:4]
  %tmp.82 = trunc i16 %tmp.81 to i8, !dbg !169    ; [#uses=1 type=i8] [debug line = 127:4]
  %ctx.data.addr.4 = getelementptr [64 x i8]* %ctx.data, i64 0, i64 62, !dbg !169 ; [#uses=1 type=i8*] [debug line = 127:4]
  store i8 %tmp.82, i8* %ctx.data.addr.4, align 1, !dbg !169 ; [debug line = 127:4]
  %tmp.83 = lshr i24 %ctx.bitlen.cast3, 16, !dbg !170 ; [#uses=1 type=i24] [debug line = 128:4]
  %tmp.84 = trunc i24 %tmp.83 to i8, !dbg !170    ; [#uses=1 type=i8] [debug line = 128:4]
  %ctx.data.addr.5 = getelementptr [64 x i8]* %ctx.data, i64 0, i64 61, !dbg !170 ; [#uses=1 type=i8*] [debug line = 128:4]
  store i8 %tmp.84, i8* %ctx.data.addr.5, align 1, !dbg !170 ; [debug line = 128:4]
  %tmp.85 = lshr i32 %ctx.bitlen, 24, !dbg !171   ; [#uses=1 type=i32] [debug line = 129:4]
  %tmp.86 = trunc i32 %tmp.85 to i8, !dbg !171    ; [#uses=1 type=i8] [debug line = 129:4]
  %ctx.data.addr.7 = getelementptr [64 x i8]* %ctx.data, i64 0, i64 60, !dbg !171 ; [#uses=1 type=i8*] [debug line = 129:4]
  store i8 %tmp.86, i8* %ctx.data.addr.7, align 1, !dbg !171 ; [debug line = 129:4]
  %tmp.87 = trunc i32 %tmp.102..read3 to i8, !dbg !172 ; [#uses=1 type=i8] [debug line = 130:4]
  %ctx.data.addr.8 = getelementptr [64 x i8]* %ctx.data, i64 0, i64 59, !dbg !172 ; [#uses=1 type=i8*] [debug line = 130:4]
  store i8 %tmp.87, i8* %ctx.data.addr.8, align 1, !dbg !172 ; [debug line = 130:4]
  %tmp.88 = lshr i16 %tmp.102..read3.cast, 8, !dbg !173 ; [#uses=1 type=i16] [debug line = 131:4]
  %tmp.89 = trunc i16 %tmp.88 to i8, !dbg !173    ; [#uses=1 type=i8] [debug line = 131:4]
  %ctx.data.addr.9 = getelementptr [64 x i8]* %ctx.data, i64 0, i64 58, !dbg !173 ; [#uses=1 type=i8*] [debug line = 131:4]
  store i8 %tmp.89, i8* %ctx.data.addr.9, align 1, !dbg !173 ; [debug line = 131:4]
  %tmp.90 = lshr i24 %tmp.102..read3.cast4, 16, !dbg !174 ; [#uses=1 type=i24] [debug line = 132:4]
  %tmp.91 = trunc i24 %tmp.90 to i8, !dbg !174    ; [#uses=1 type=i8] [debug line = 132:4]
  %ctx.data.addr.10 = getelementptr [64 x i8]* %ctx.data, i64 0, i64 57, !dbg !174 ; [#uses=1 type=i8*] [debug line = 132:4]
  store i8 %tmp.91, i8* %ctx.data.addr.10, align 1, !dbg !174 ; [debug line = 132:4]
  %tmp.92 = lshr i32 %tmp.102..read3, 24, !dbg !175 ; [#uses=1 type=i32] [debug line = 133:4]
  %tmp.93 = trunc i32 %tmp.92 to i8, !dbg !175    ; [#uses=1 type=i8] [debug line = 133:4]
  %ctx.data.addr.11 = getelementptr [64 x i8]* %ctx.data, i64 0, i64 56, !dbg !175 ; [#uses=1 type=i8*] [debug line = 133:4]
  store i8 %tmp.93, i8* %ctx.data.addr.11, align 1, !dbg !175 ; [debug line = 133:4]
  %call.ret = call fastcc { i32, i32, i32, i32, i32, i32, i32, i32 } @sha256_transform(i32 %ctx.state, i32 %ctx.state.1, i32 %ctx.state.2, i32 %ctx.state.3, i32 %ctx.state.4, i32 %ctx.state.5, i32 %ctx.state.6, i32 %ctx.state.7, [64 x i8]* %ctx.data), !dbg !176 ; [#uses=8 type={ i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 134:4]
  %ctx.state.0.ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 0, !dbg !176 ; [#uses=1 type=i32] [debug line = 134:4]
  %ctx.state.1.ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 1, !dbg !176 ; [#uses=1 type=i32] [debug line = 134:4]
  %ctx.state.2.ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 2, !dbg !176 ; [#uses=1 type=i32] [debug line = 134:4]
  %ctx.state.3.ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 3, !dbg !176 ; [#uses=1 type=i32] [debug line = 134:4]
  %ctx.state.4.ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 4, !dbg !176 ; [#uses=1 type=i32] [debug line = 134:4]
  %ctx.state.5.ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 5, !dbg !176 ; [#uses=1 type=i32] [debug line = 134:4]
  %ctx.state.6.ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 6, !dbg !176 ; [#uses=1 type=i32] [debug line = 134:4]
  %ctx.state.7.ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 7, !dbg !176 ; [#uses=1 type=i32] [debug line = 134:4]
  br label %7, !dbg !177                          ; [debug line = 138:9]

; <label>:7                                       ; preds = %9, %.loopexit
  %i.3 = phi i3 [ 0, %.loopexit ], [ %i.6, %9 ]   ; [#uses=9 type=i3]
  %i.3.cast1 = zext i3 %i.3 to i5, !dbg !177      ; [#uses=3 type=i5] [debug line = 138:9]
  %i.3.cast1.cast = zext i3 %i.3 to i4, !dbg !177 ; [#uses=1 type=i4] [debug line = 138:9]
  %i.3.cast = zext i3 %i.3 to i4, !dbg !177       ; [#uses=1 type=i4] [debug line = 138:9]
  %tmp.94 = icmp eq i3 %i.3, -4, !dbg !177        ; [#uses=1 type=i1] [debug line = 138:9]
  %8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp.94, label %10, label %9, !dbg !177   ; [debug line = 138:9]

; <label>:9                                       ; preds = %7
  %tmp.95 = shl i5 %i.3.cast1, 3, !dbg !179       ; [#uses=1 type=i5] [debug line = 139:7]
  %tmp.96 = sub i5 -8, %tmp.95, !dbg !179         ; [#uses=1 type=i5] [debug line = 139:7]
  %tmp.109.cast = zext i5 %tmp.96 to i32, !dbg !179 ; [#uses=8 type=i32] [debug line = 139:7]
  %tmp.97 = lshr i32 %ctx.state.0.ret, %tmp.109.cast, !dbg !179 ; [#uses=1 type=i32] [debug line = 139:7]
  %tmp.98 = trunc i32 %tmp.97 to i8, !dbg !179    ; [#uses=1 type=i8] [debug line = 139:7]
  %tmp.99 = zext i3 %i.3 to i64, !dbg !179        ; [#uses=1 type=i64] [debug line = 139:7]
  %hash.addr = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp.99, !dbg !179 ; [#uses=1 type=i8*] [debug line = 139:7]
  store i8 %tmp.98, i8* %hash.addr, align 1, !dbg !179 ; [debug line = 139:7]
  %tmp.100 = lshr i32 %ctx.state.1.ret, %tmp.109.cast, !dbg !181 ; [#uses=1 type=i32] [debug line = 140:7]
  %tmp.101 = trunc i32 %tmp.100 to i8, !dbg !181  ; [#uses=1 type=i8] [debug line = 140:7]
  %tmp.102 = xor i3 %i.3, -4, !dbg !181           ; [#uses=1 type=i3] [debug line = 140:7]
  %tmp.103 = zext i3 %tmp.102 to i64, !dbg !181   ; [#uses=1 type=i64] [debug line = 140:7]
  %hash.addr.1 = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp.103, !dbg !181 ; [#uses=1 type=i8*] [debug line = 140:7]
  store i8 %tmp.101, i8* %hash.addr.1, align 1, !dbg !181 ; [debug line = 140:7]
  %tmp.104 = lshr i32 %ctx.state.2.ret, %tmp.109.cast, !dbg !182 ; [#uses=1 type=i32] [debug line = 141:7]
  %tmp.105 = trunc i32 %tmp.104 to i8, !dbg !182  ; [#uses=1 type=i8] [debug line = 141:7]
  %tmp.106 = or i4 %i.3.cast, -8, !dbg !182       ; [#uses=1 type=i4] [debug line = 141:7]
  %tmp.107 = zext i4 %tmp.106 to i64, !dbg !182   ; [#uses=1 type=i64] [debug line = 141:7]
  %hash.addr.2 = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp.107, !dbg !182 ; [#uses=1 type=i8*] [debug line = 141:7]
  store i8 %tmp.105, i8* %hash.addr.2, align 1, !dbg !182 ; [debug line = 141:7]
  %tmp.108 = lshr i32 %ctx.state.3.ret, %tmp.109.cast, !dbg !183 ; [#uses=1 type=i32] [debug line = 142:7]
  %tmp.109 = trunc i32 %tmp.108 to i8, !dbg !183  ; [#uses=1 type=i8] [debug line = 142:7]
  %tmp.110 = xor i3 %i.3, -4, !dbg !183           ; [#uses=1 type=i3] [debug line = 142:7]
  %tmp.123.cast8 = sext i3 %tmp.110 to i4, !dbg !183 ; [#uses=1 type=i4] [debug line = 142:7]
  %tmp.111 = zext i4 %tmp.123.cast8 to i64, !dbg !183 ; [#uses=1 type=i64] [debug line = 142:7]
  %hash.addr.3 = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp.111, !dbg !183 ; [#uses=1 type=i8*] [debug line = 142:7]
  store i8 %tmp.109, i8* %hash.addr.3, align 1, !dbg !183 ; [debug line = 142:7]
  %tmp.112 = lshr i32 %ctx.state.4.ret, %tmp.109.cast, !dbg !184 ; [#uses=1 type=i32] [debug line = 143:7]
  %tmp.113 = trunc i32 %tmp.112 to i8, !dbg !184  ; [#uses=1 type=i8] [debug line = 143:7]
  %tmp.114 = or i5 %i.3.cast1, -16, !dbg !184     ; [#uses=1 type=i5] [debug line = 143:7]
  %tmp.115 = zext i5 %tmp.114 to i64, !dbg !184   ; [#uses=1 type=i64] [debug line = 143:7]
  %hash.addr.4 = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp.115, !dbg !184 ; [#uses=1 type=i8*] [debug line = 143:7]
  store i8 %tmp.113, i8* %hash.addr.4, align 1, !dbg !184 ; [debug line = 143:7]
  %tmp.116 = lshr i32 %ctx.state.5.ret, %tmp.109.cast, !dbg !185 ; [#uses=1 type=i32] [debug line = 144:7]
  %tmp.117 = trunc i32 %tmp.116 to i8, !dbg !185  ; [#uses=1 type=i8] [debug line = 144:7]
  %tmp.118 = add i5 %i.3.cast1, -12, !dbg !185    ; [#uses=1 type=i5] [debug line = 144:7]
  %tmp.119 = zext i5 %tmp.118 to i64, !dbg !185   ; [#uses=1 type=i64] [debug line = 144:7]
  %hash.addr.5 = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp.119, !dbg !185 ; [#uses=1 type=i8*] [debug line = 144:7]
  store i8 %tmp.117, i8* %hash.addr.5, align 1, !dbg !185 ; [debug line = 144:7]
  %tmp.120 = lshr i32 %ctx.state.6.ret, %tmp.109.cast, !dbg !186 ; [#uses=1 type=i32] [debug line = 145:7]
  %tmp.121 = trunc i32 %tmp.120 to i8, !dbg !186  ; [#uses=1 type=i8] [debug line = 145:7]
  %tmp.122 = or i4 %i.3.cast1.cast, -8, !dbg !186 ; [#uses=1 type=i4] [debug line = 145:7]
  %tmp.135.cast7 = sext i4 %tmp.122 to i5, !dbg !186 ; [#uses=1 type=i5] [debug line = 145:7]
  %tmp.123 = zext i5 %tmp.135.cast7 to i64, !dbg !186 ; [#uses=1 type=i64] [debug line = 145:7]
  %hash.addr.6 = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp.123, !dbg !186 ; [#uses=1 type=i8*] [debug line = 145:7]
  store i8 %tmp.121, i8* %hash.addr.6, align 1, !dbg !186 ; [debug line = 145:7]
  %tmp.124 = lshr i32 %ctx.state.7.ret, %tmp.109.cast, !dbg !187 ; [#uses=1 type=i32] [debug line = 146:7]
  %tmp.125 = trunc i32 %tmp.124 to i8, !dbg !187  ; [#uses=1 type=i8] [debug line = 146:7]
  %tmp.126 = xor i3 %i.3, -4, !dbg !187           ; [#uses=1 type=i3] [debug line = 146:7]
  %tmp.139.cast6 = sext i3 %tmp.126 to i5, !dbg !187 ; [#uses=1 type=i5] [debug line = 146:7]
  %tmp.127 = zext i5 %tmp.139.cast6 to i64, !dbg !187 ; [#uses=1 type=i64] [debug line = 146:7]
  %hash.addr.7 = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp.127, !dbg !187 ; [#uses=1 type=i8*] [debug line = 146:7]
  store i8 %tmp.125, i8* %hash.addr.7, align 1, !dbg !187 ; [debug line = 146:7]
  %i.6 = add i3 %i.3, 1, !dbg !188                ; [#uses=1 type=i3] [debug line = 138:21]
  call void @llvm.dbg.value(metadata !{i3 %i.6}, i64 0, metadata !147), !dbg !188 ; [debug line = 138:21] [debug variable = i]
  br label %7, !dbg !188                          ; [debug line = 138:21]

; <label>:10                                      ; preds = %7
  ret void
}

; [#uses=0]
define void @sha256([256 x i8]* %data, i32 %base_offset, i32 %bytes, [32 x i8]* %digest) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i8]* %data) nounwind, !map !189
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %base_offset) nounwind, !map !195
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %bytes) nounwind, !map !201
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %digest) nounwind, !map !205
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @sha256.str) nounwind
  %seg_buf = alloca [64 x i8], align 16           ; [#uses=6 type=[64 x i8]*]
  %sha256ctx.data = alloca [64 x i8], align 1     ; [#uses=3 type=[64 x i8]*]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %data}, i64 0, metadata !211), !dbg !219 ; [debug line = 8:28] [debug variable = data]
  call void @llvm.dbg.value(metadata !{i32 %base_offset}, i64 0, metadata !220), !dbg !221 ; [debug line = 9:18] [debug variable = base_offset]
  call void @llvm.dbg.value(metadata !{i32 %bytes}, i64 0, metadata !222), !dbg !223 ; [debug line = 10:18] [debug variable = bytes]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %digest}, i64 0, metadata !224), !dbg !228 ; [debug line = 11:19] [debug variable = digest]
  call void (...)* @_ssdm_op_SpecInterface([256 x i8]* %data, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %digest, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %base_offset, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !229 ; [debug line = 17:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %bytes, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !231 ; [debug line = 18:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !232 ; [debug line = 19:1]
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %seg_buf}, metadata !233), !dbg !234 ; [debug line = 22:16] [debug variable = seg_buf]
  call void @llvm.dbg.value(metadata !{i32 %bytes}, i64 0, metadata !235), !dbg !236 ; [debug line = 25:24] [debug variable = n]
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %sha256ctx.data}, metadata !237), !dbg !248 ; [debug line = 28:13] [debug variable = sha256ctx.data]
  %tmp.cast = trunc i32 %base_offset to i10, !dbg !249 ; [#uses=2 type=i10] [debug line = 32:2]
  br label %.backedge, !dbg !249                  ; [debug line = 32:2]

.backedge:                                        ; preds = %.backedge.backedge, %0
  %sha256ctx.state.7 = phi i32 [ 1541459225, %0 ], [ %sha256ctx.state.7.be, %.backedge.backedge ] ; [#uses=3 type=i32]
  %sha256ctx.state.6 = phi i32 [ 528734635, %0 ], [ %sha256ctx.state.6.be, %.backedge.backedge ] ; [#uses=3 type=i32]
  %sha256ctx.state.5 = phi i32 [ -1694144372, %0 ], [ %sha256ctx.state.5.be, %.backedge.backedge ] ; [#uses=3 type=i32]
  %sha256ctx.state.4 = phi i32 [ 1359893119, %0 ], [ %sha256ctx.state.4.be, %.backedge.backedge ] ; [#uses=3 type=i32]
  %sha256ctx.state.3 = phi i32 [ -1521486534, %0 ], [ %sha256ctx.state.3.be, %.backedge.backedge ] ; [#uses=3 type=i32]
  %sha256ctx.state.2 = phi i32 [ 1013904242, %0 ], [ %sha256ctx.state.2.be, %.backedge.backedge ] ; [#uses=3 type=i32]
  %sha256ctx.state.1 = phi i32 [ -1150833019, %0 ], [ %sha256ctx.state.1.be, %.backedge.backedge ] ; [#uses=3 type=i32]
  %sha256ctx.state = phi i32 [ 1779033703, %0 ], [ %sha256ctx.state.be, %.backedge.backedge ] ; [#uses=3 type=i32]
  %sha256ctx.bitlen.1 = phi i32 [ 0, %0 ], [ %sha256ctx.bitlen.1.be, %.backedge.backedge ] ; [#uses=3 type=i32]
  %sha256ctx.bitlen = phi i32 [ 0, %0 ], [ %sha256ctx.bitlen.be, %.backedge.backedge ] ; [#uses=3 type=i32]
  %sha256ctx.datalen = phi i32 [ 0, %0 ], [ %sha256ctx.datalen.be, %.backedge.backedge ] ; [#uses=3 type=i32]
  %seg_offset = phi i32 [ 0, %0 ], [ %seg_offset.be, %.backedge.backedge ] ; [#uses=3 type=i32]
  %n = phi i32 [ %bytes, %0 ], [ %n.be, %.backedge.backedge ] ; [#uses=5 type=i32]
  %tmp. = icmp eq i32 %n, 0, !dbg !249            ; [#uses=1 type=i1] [debug line = 32:2]
  br i1 %tmp., label %8, label %1, !dbg !249      ; [debug line = 32:2]

; <label>:1                                       ; preds = %.backedge
  %tmp.128 = icmp ugt i32 %n, 63, !dbg !250       ; [#uses=1 type=i1] [debug line = 34:3]
  %tmp.142.cast = trunc i32 %seg_offset to i10, !dbg !250 ; [#uses=2 type=i10] [debug line = 34:3]
  br i1 %tmp.128, label %.preheader6.preheader, label %.preheader.preheader, !dbg !250 ; [debug line = 34:3]

.preheader6.preheader:                            ; preds = %1
  br label %.preheader6, !dbg !252                ; [debug line = 36:9]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !255                 ; [debug line = 44:9]

.preheader6:                                      ; preds = %3, %.preheader6.preheader
  %i9 = phi i7 [ %i.7, %3 ], [ 0, %.preheader6.preheader ] ; [#uses=4 type=i7]
  %exitcond5 = icmp eq i7 %i9, -64, !dbg !252     ; [#uses=1 type=i1] [debug line = 36:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond5, label %4, label %3, !dbg !252 ; [debug line = 36:9]

; <label>:3                                       ; preds = %.preheader6
  %tmp.130 = zext i7 %i9 to i64, !dbg !258        ; [#uses=1 type=i64] [debug line = 37:5]
  %tmp.144.cast = zext i7 %i9 to i10              ; [#uses=1 type=i10]
  %tmp1 = add i10 %tmp.144.cast, %tmp.142.cast    ; [#uses=1 type=i10]
  %sum = add i10 %tmp.cast, %tmp1                 ; [#uses=1 type=i10]
  %sum.cast = zext i10 %sum to i64                ; [#uses=1 type=i64]
  %data.addr = getelementptr [256 x i8]* %data, i64 0, i64 %sum.cast, !dbg !258 ; [#uses=1 type=i8*] [debug line = 37:5]
  %data.load = load i8* %data.addr, align 1, !dbg !258 ; [#uses=1 type=i8] [debug line = 37:5]
  %seg_buf.addr.1 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 %tmp.130, !dbg !258 ; [#uses=1 type=i8*] [debug line = 37:5]
  store i8 %data.load, i8* %seg_buf.addr.1, align 1, !dbg !258 ; [debug line = 37:5]
  %i.7 = add i7 %i9, 1, !dbg !259                 ; [#uses=1 type=i7] [debug line = 36:20]
  call void @llvm.dbg.value(metadata !{i7 %i.7}, i64 0, metadata !260), !dbg !259 ; [debug line = 36:20] [debug variable = i]
  br label %.preheader6, !dbg !259                ; [debug line = 36:20]

; <label>:4                                       ; preds = %.preheader6
  %n.1 = add i32 %n, -64, !dbg !262               ; [#uses=1 type=i32] [debug line = 38:4]
  call void @llvm.dbg.value(metadata !{i32 %n.1}, i64 0, metadata !235), !dbg !262 ; [debug line = 38:4] [debug variable = n]
  %seg_offset.1 = add i32 %seg_offset, 64, !dbg !263 ; [#uses=1 type=i32] [debug line = 39:4]
  call void @llvm.dbg.value(metadata !{i32 %seg_offset.1}, i64 0, metadata !264), !dbg !263 ; [debug line = 39:4] [debug variable = seg_offset]
  %call.ret = call fastcc { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } @sha256_update([64 x i8]* %sha256ctx.data, i32 %sha256ctx.datalen, i32 %sha256ctx.bitlen, i32 %sha256ctx.bitlen.1, i32 %sha256ctx.state, i32 %sha256ctx.state.1, i32 %sha256ctx.state.2, i32 %sha256ctx.state.3, i32 %sha256ctx.state.4, i32 %sha256ctx.state.5, i32 %sha256ctx.state.6, i32 %sha256ctx.state.7, [64 x i8]* %seg_buf, i32 64) nounwind, !dbg !265 ; [#uses=11 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 40:4]
  %sha256ctx.datalen.1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 0, !dbg !265 ; [#uses=1 type=i32] [debug line = 40:4]
  %"sha256ctx.bitlen[0]" = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 1, !dbg !265 ; [#uses=1 type=i32] [debug line = 40:4]
  %"sha256ctx.bitlen[1]" = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 2, !dbg !265 ; [#uses=1 type=i32] [debug line = 40:4]
  %"sha256ctx.state[0]" = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 3, !dbg !265 ; [#uses=1 type=i32] [debug line = 40:4]
  call void @llvm.dbg.value(metadata !{i32 %"sha256ctx.state[0]"}, i64 0, metadata !266), !dbg !265 ; [debug line = 40:4] [debug variable = sha256ctx.state[0]]
  %"sha256ctx.state[1]" = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 4, !dbg !265 ; [#uses=1 type=i32] [debug line = 40:4]
  call void @llvm.dbg.value(metadata !{i32 %"sha256ctx.state[1]"}, i64 0, metadata !269), !dbg !265 ; [debug line = 40:4] [debug variable = sha256ctx.state[1]]
  %"sha256ctx.state[2]" = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 5, !dbg !265 ; [#uses=1 type=i32] [debug line = 40:4]
  call void @llvm.dbg.value(metadata !{i32 %"sha256ctx.state[2]"}, i64 0, metadata !270), !dbg !265 ; [debug line = 40:4] [debug variable = sha256ctx.state[2]]
  %"sha256ctx.state[3]" = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 6, !dbg !265 ; [#uses=1 type=i32] [debug line = 40:4]
  call void @llvm.dbg.value(metadata !{i32 %"sha256ctx.state[3]"}, i64 0, metadata !271), !dbg !265 ; [debug line = 40:4] [debug variable = sha256ctx.state[3]]
  %"sha256ctx.state[4]" = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 7, !dbg !265 ; [#uses=1 type=i32] [debug line = 40:4]
  call void @llvm.dbg.value(metadata !{i32 %"sha256ctx.state[4]"}, i64 0, metadata !272), !dbg !265 ; [debug line = 40:4] [debug variable = sha256ctx.state[4]]
  %"sha256ctx.state[5]" = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 8, !dbg !265 ; [#uses=1 type=i32] [debug line = 40:4]
  call void @llvm.dbg.value(metadata !{i32 %"sha256ctx.state[5]"}, i64 0, metadata !273), !dbg !265 ; [debug line = 40:4] [debug variable = sha256ctx.state[5]]
  %"sha256ctx.state[6]" = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 9, !dbg !265 ; [#uses=1 type=i32] [debug line = 40:4]
  call void @llvm.dbg.value(metadata !{i32 %"sha256ctx.state[6]"}, i64 0, metadata !274), !dbg !265 ; [debug line = 40:4] [debug variable = sha256ctx.state[6]]
  %"sha256ctx.state[7]" = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret, 10, !dbg !265 ; [#uses=1 type=i32] [debug line = 40:4]
  call void @llvm.dbg.value(metadata !{i32 %"sha256ctx.state[7]"}, i64 0, metadata !275), !dbg !265 ; [debug line = 40:4] [debug variable = sha256ctx.state[7]]
  call void @llvm.dbg.value(metadata !{i32 %"sha256ctx.bitlen[0]"}, i64 0, metadata !276), !dbg !265 ; [debug line = 40:4] [debug variable = sha256ctx.bitlen[0]]
  call void @llvm.dbg.value(metadata !{i32 %"sha256ctx.bitlen[1]"}, i64 0, metadata !277), !dbg !265 ; [debug line = 40:4] [debug variable = sha256ctx.bitlen[1]]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx.datalen.1}, i64 0, metadata !278), !dbg !265 ; [debug line = 40:4] [debug variable = sha256ctx.datalen]
  br label %.backedge.backedge, !dbg !281         ; [debug line = 41:3]

.preheader:                                       ; preds = %6, %.preheader.preheader
  %i.1 = phi i6 [ %i.8, %6 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i6]
  %i.1.cast = zext i6 %i.1 to i32, !dbg !255      ; [#uses=1 type=i32] [debug line = 44:9]
  %exitcond4 = icmp eq i32 %i.1.cast, %n, !dbg !255 ; [#uses=1 type=i1] [debug line = 44:9]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 63, i64 0) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond4, label %7, label %6, !dbg !255 ; [debug line = 44:9]

; <label>:6                                       ; preds = %.preheader
  %tmp.131 = zext i6 %i.1 to i64, !dbg !282       ; [#uses=1 type=i64] [debug line = 45:5]
  %tmp.145.cast = zext i6 %i.1 to i10             ; [#uses=1 type=i10]
  %tmp2 = add i10 %tmp.145.cast, %tmp.142.cast    ; [#uses=1 type=i10]
  %sum2 = add i10 %tmp.cast, %tmp2                ; [#uses=1 type=i10]
  %sum2.cast = zext i10 %sum2 to i64              ; [#uses=1 type=i64]
  %data.addr.4 = getelementptr [256 x i8]* %data, i64 0, i64 %sum2.cast, !dbg !282 ; [#uses=1 type=i8*] [debug line = 45:5]
  %data.load.4 = load i8* %data.addr.4, align 1, !dbg !282 ; [#uses=1 type=i8] [debug line = 45:5]
  %seg_buf.addr.2 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 %tmp.131, !dbg !282 ; [#uses=1 type=i8*] [debug line = 45:5]
  store i8 %data.load.4, i8* %seg_buf.addr.2, align 1, !dbg !282 ; [debug line = 45:5]
  %i.8 = add i6 %i.1, 1, !dbg !283                ; [#uses=1 type=i6] [debug line = 44:19]
  call void @llvm.dbg.value(metadata !{i6 %i.8}, i64 0, metadata !260), !dbg !283 ; [debug line = 44:19] [debug variable = i]
  br label %.preheader, !dbg !283                 ; [debug line = 44:19]

; <label>:7                                       ; preds = %.preheader
  %call.ret1 = call fastcc { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } @sha256_update([64 x i8]* %sha256ctx.data, i32 %sha256ctx.datalen, i32 %sha256ctx.bitlen, i32 %sha256ctx.bitlen.1, i32 %sha256ctx.state, i32 %sha256ctx.state.1, i32 %sha256ctx.state.2, i32 %sha256ctx.state.3, i32 %sha256ctx.state.4, i32 %sha256ctx.state.5, i32 %sha256ctx.state.6, i32 %sha256ctx.state.7, [64 x i8]* %seg_buf, i32 %n) nounwind, !dbg !284 ; [#uses=11 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 46:4]
  %sha256ctx.datalen.2 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret1, 0, !dbg !284 ; [#uses=1 type=i32] [debug line = 46:4]
  %"sha256ctx.bitlen[0].1" = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret1, 1, !dbg !284 ; [#uses=1 type=i32] [debug line = 46:4]
  %"sha256ctx.bitlen[1].1" = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret1, 2, !dbg !284 ; [#uses=1 type=i32] [debug line = 46:4]
  %"sha256ctx.state[0].1" = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret1, 3, !dbg !284 ; [#uses=1 type=i32] [debug line = 46:4]
  call void @llvm.dbg.value(metadata !{i32 %"sha256ctx.state[0].1"}, i64 0, metadata !266), !dbg !284 ; [debug line = 46:4] [debug variable = sha256ctx.state[0]]
  %"sha256ctx.state[1].1" = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret1, 4, !dbg !284 ; [#uses=1 type=i32] [debug line = 46:4]
  call void @llvm.dbg.value(metadata !{i32 %"sha256ctx.state[1].1"}, i64 0, metadata !269), !dbg !284 ; [debug line = 46:4] [debug variable = sha256ctx.state[1]]
  %"sha256ctx.state[2].1" = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret1, 5, !dbg !284 ; [#uses=1 type=i32] [debug line = 46:4]
  call void @llvm.dbg.value(metadata !{i32 %"sha256ctx.state[2].1"}, i64 0, metadata !270), !dbg !284 ; [debug line = 46:4] [debug variable = sha256ctx.state[2]]
  %"sha256ctx.state[3].1" = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret1, 6, !dbg !284 ; [#uses=1 type=i32] [debug line = 46:4]
  call void @llvm.dbg.value(metadata !{i32 %"sha256ctx.state[3].1"}, i64 0, metadata !271), !dbg !284 ; [debug line = 46:4] [debug variable = sha256ctx.state[3]]
  %"sha256ctx.state[4].1" = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret1, 7, !dbg !284 ; [#uses=1 type=i32] [debug line = 46:4]
  call void @llvm.dbg.value(metadata !{i32 %"sha256ctx.state[4].1"}, i64 0, metadata !272), !dbg !284 ; [debug line = 46:4] [debug variable = sha256ctx.state[4]]
  %"sha256ctx.state[5].1" = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret1, 8, !dbg !284 ; [#uses=1 type=i32] [debug line = 46:4]
  call void @llvm.dbg.value(metadata !{i32 %"sha256ctx.state[5].1"}, i64 0, metadata !273), !dbg !284 ; [debug line = 46:4] [debug variable = sha256ctx.state[5]]
  %"sha256ctx.state[6].1" = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret1, 9, !dbg !284 ; [#uses=1 type=i32] [debug line = 46:4]
  call void @llvm.dbg.value(metadata !{i32 %"sha256ctx.state[6].1"}, i64 0, metadata !274), !dbg !284 ; [debug line = 46:4] [debug variable = sha256ctx.state[6]]
  %"sha256ctx.state[7].1" = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call.ret1, 10, !dbg !284 ; [#uses=1 type=i32] [debug line = 46:4]
  call void @llvm.dbg.value(metadata !{i32 %"sha256ctx.state[7].1"}, i64 0, metadata !275), !dbg !284 ; [debug line = 46:4] [debug variable = sha256ctx.state[7]]
  call void @llvm.dbg.value(metadata !{i32 %"sha256ctx.bitlen[0].1"}, i64 0, metadata !276), !dbg !284 ; [debug line = 46:4] [debug variable = sha256ctx.bitlen[0]]
  call void @llvm.dbg.value(metadata !{i32 %"sha256ctx.bitlen[1].1"}, i64 0, metadata !277), !dbg !284 ; [debug line = 46:4] [debug variable = sha256ctx.bitlen[1]]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx.datalen.2}, i64 0, metadata !278), !dbg !284 ; [debug line = 46:4] [debug variable = sha256ctx.datalen]
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %7, %4
  %sha256ctx.state.7.be = phi i32 [ %"sha256ctx.state[7]", %4 ], [ %"sha256ctx.state[7].1", %7 ] ; [#uses=1 type=i32]
  %sha256ctx.state.6.be = phi i32 [ %"sha256ctx.state[6]", %4 ], [ %"sha256ctx.state[6].1", %7 ] ; [#uses=1 type=i32]
  %sha256ctx.state.5.be = phi i32 [ %"sha256ctx.state[5]", %4 ], [ %"sha256ctx.state[5].1", %7 ] ; [#uses=1 type=i32]
  %sha256ctx.state.4.be = phi i32 [ %"sha256ctx.state[4]", %4 ], [ %"sha256ctx.state[4].1", %7 ] ; [#uses=1 type=i32]
  %sha256ctx.state.3.be = phi i32 [ %"sha256ctx.state[3]", %4 ], [ %"sha256ctx.state[3].1", %7 ] ; [#uses=1 type=i32]
  %sha256ctx.state.2.be = phi i32 [ %"sha256ctx.state[2]", %4 ], [ %"sha256ctx.state[2].1", %7 ] ; [#uses=1 type=i32]
  %sha256ctx.state.1.be = phi i32 [ %"sha256ctx.state[1]", %4 ], [ %"sha256ctx.state[1].1", %7 ] ; [#uses=1 type=i32]
  %sha256ctx.state.be = phi i32 [ %"sha256ctx.state[0]", %4 ], [ %"sha256ctx.state[0].1", %7 ] ; [#uses=1 type=i32]
  %sha256ctx.bitlen.1.be = phi i32 [ %"sha256ctx.bitlen[1]", %4 ], [ %"sha256ctx.bitlen[1].1", %7 ] ; [#uses=1 type=i32]
  %sha256ctx.bitlen.be = phi i32 [ %"sha256ctx.bitlen[0]", %4 ], [ %"sha256ctx.bitlen[0].1", %7 ] ; [#uses=1 type=i32]
  %sha256ctx.datalen.be = phi i32 [ %sha256ctx.datalen.1, %4 ], [ %sha256ctx.datalen.2, %7 ] ; [#uses=1 type=i32]
  %seg_offset.be = phi i32 [ %seg_offset.1, %4 ], [ %seg_offset, %7 ] ; [#uses=1 type=i32]
  %n.be = phi i32 [ %n.1, %4 ], [ 0, %7 ]         ; [#uses=1 type=i32]
  br label %.backedge

; <label>:8                                       ; preds = %.backedge
  %sha256ctx.datalen.lcssa = phi i32 [ %sha256ctx.datalen, %.backedge ] ; [#uses=1 type=i32]
  %sha256ctx.bitlen.lcssa = phi i32 [ %sha256ctx.bitlen, %.backedge ] ; [#uses=1 type=i32]
  %sha256ctx.bitlen.1.lcssa = phi i32 [ %sha256ctx.bitlen.1, %.backedge ] ; [#uses=1 type=i32]
  %sha256ctx.state.lcssa = phi i32 [ %sha256ctx.state, %.backedge ] ; [#uses=1 type=i32]
  %sha256ctx.state.1.lcssa = phi i32 [ %sha256ctx.state.1, %.backedge ] ; [#uses=1 type=i32]
  %sha256ctx.state.2.lcssa = phi i32 [ %sha256ctx.state.2, %.backedge ] ; [#uses=1 type=i32]
  %sha256ctx.state.3.lcssa = phi i32 [ %sha256ctx.state.3, %.backedge ] ; [#uses=1 type=i32]
  %sha256ctx.state.4.lcssa = phi i32 [ %sha256ctx.state.4, %.backedge ] ; [#uses=1 type=i32]
  %sha256ctx.state.5.lcssa = phi i32 [ %sha256ctx.state.5, %.backedge ] ; [#uses=1 type=i32]
  %sha256ctx.state.6.lcssa = phi i32 [ %sha256ctx.state.6, %.backedge ] ; [#uses=1 type=i32]
  %sha256ctx.state.7.lcssa = phi i32 [ %sha256ctx.state.7, %.backedge ] ; [#uses=1 type=i32]
  call fastcc void @sha256_final([64 x i8]* %sha256ctx.data, i32 %sha256ctx.datalen.lcssa, i32 %sha256ctx.bitlen.lcssa, i32 %sha256ctx.bitlen.1.lcssa, i32 %sha256ctx.state.lcssa, i32 %sha256ctx.state.1.lcssa, i32 %sha256ctx.state.2.lcssa, i32 %sha256ctx.state.3.lcssa, i32 %sha256ctx.state.4.lcssa, i32 %sha256ctx.state.5.lcssa, i32 %sha256ctx.state.6.lcssa, i32 %sha256ctx.state.7.lcssa, [64 x i8]* %seg_buf) nounwind, !dbg !285 ; [debug line = 52:2]
  br label %9, !dbg !286                          ; [debug line = 54:7]

; <label>:9                                       ; preds = %11, %8
  %i.2 = phi i6 [ 0, %8 ], [ %i, %11 ]            ; [#uses=3 type=i6]
  %exitcond = icmp eq i6 %i.2, -32, !dbg !286     ; [#uses=1 type=i1] [debug line = 54:7]
  %10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %12, label %11, !dbg !286 ; [debug line = 54:7]

; <label>:11                                      ; preds = %9
  %tmp.129 = zext i6 %i.2 to i64, !dbg !288       ; [#uses=2 type=i64] [debug line = 56:3]
  %seg_buf.addr = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 %tmp.129, !dbg !288 ; [#uses=1 type=i8*] [debug line = 56:3]
  %seg_buf.load = load i8* %seg_buf.addr, align 1, !dbg !288 ; [#uses=1 type=i8] [debug line = 56:3]
  %digest.addr = getelementptr [32 x i8]* %digest, i64 0, i64 %tmp.129, !dbg !288 ; [#uses=1 type=i8*] [debug line = 56:3]
  store i8 %seg_buf.load, i8* %digest.addr, align 1, !dbg !288 ; [debug line = 56:3]
  %i = add i6 %i.2, 1, !dbg !290                  ; [#uses=1 type=i6] [debug line = 54:18]
  call void @llvm.dbg.value(metadata !{i6 %i}, i64 0, metadata !260), !dbg !290 ; [debug line = 54:18] [debug variable = i]
  br label %9, !dbg !290                          ; [debug line = 54:18]

; <label>:12                                      ; preds = %9
  ret void, !dbg !291                             ; [debug line = 58:1]
}

; [#uses=58]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=9]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=5]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i8.i32.i32(i8, i32, i32) nounwind readnone

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone

; [#uses=0]
declare i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24, i32, i32) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i8.i24(i8, i24) nounwind readnone

; [#uses=1]
declare i32 @_ssdm_op_BitConcatenate.i32.i8.i16.i8(i8, i16, i8) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24, i8) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16, i16) nounwind readnone

; [#uses=1]
declare i24 @_ssdm_op_BitConcatenate.i24.i8.i16(i8, i16) nounwind readnone

; [#uses=0]
declare i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8, i8) nounwind readnone

; [#uses=1]
declare void @_ssdm_SpecKeepAssert(...)

!opencl.kernels = !{!0, !7, !13, !19, !21}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!27}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*", metadata !"uchar*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"data"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"ctx"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*", metadata !"uchar*", metadata !"uint"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"data", metadata !"len"}
!19 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !20, metadata !6}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"hash"}
!21 = metadata !{null, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 1}
!23 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uint", metadata !"uint", metadata !"uchar*"}
!25 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"data", metadata !"base_offset", metadata !"bytes", metadata !"digest"}
!27 = metadata !{i32 786449, i32 0, i32 1, metadata !"E:/acc_2562/sha256_acc2/acc256/.autopilot/db/sha256_impl.pragma.2.c", metadata !"E:\5Cacc_2562", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !28} ; [ DW_TAG_compile_unit ]
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786484, i32 0, null, metadata !"k", metadata !"k", metadata !"", metadata !31, i32 18, metadata !32, i32 0, i32 1, [64 x i32]* @k} ; [ DW_TAG_variable ]
!31 = metadata !{i32 786473, metadata !"sha256_impl.c", metadata !"E:\5Cacc_2562", null} ; [ DW_TAG_file_type ]
!32 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !33, metadata !34, i32 0, i32 0} ; [ DW_TAG_array_type ]
!33 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!36 = metadata !{i32 0, i32 64, i32 0, i32 64}
!37 = metadata !{i32 790531, metadata !38, metadata !"ctx.data", null, i32 86, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!38 = metadata !{i32 786689, metadata !39, metadata !"ctx", metadata !31, i32 16777302, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 786478, i32 0, metadata !31, metadata !"sha256_update", metadata !"sha256_update", metadata !"", metadata !31, i32 86, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !60, i32 87} ; [ DW_TAG_subprogram ]
!40 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!41 = metadata !{null, metadata !42, metadata !59, metadata !33}
!42 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ]
!43 = metadata !{i32 786454, null, metadata !"SHA256_CTX", metadata !31, i32 11, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ]
!44 = metadata !{i32 786451, null, metadata !"", metadata !45, i32 6, i64 864, i64 32, i32 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!45 = metadata !{i32 786473, metadata !"./sha256_impl.h", metadata !"E:\5Cacc_2562", null} ; [ DW_TAG_file_type ]
!46 = metadata !{metadata !47, metadata !50, metadata !51, metadata !55}
!47 = metadata !{i32 786445, metadata !44, metadata !"data", metadata !45, i32 7, i64 512, i64 8, i64 0, i32 0, metadata !48} ; [ DW_TAG_member ]
!48 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !49, metadata !34, i32 0, i32 0} ; [ DW_TAG_array_type ]
!49 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!50 = metadata !{i32 786445, metadata !44, metadata !"datalen", metadata !45, i32 8, i64 32, i64 32, i64 512, i32 0, metadata !33} ; [ DW_TAG_member ]
!51 = metadata !{i32 786445, metadata !44, metadata !"bitlen", metadata !45, i32 9, i64 64, i64 32, i64 544, i32 0, metadata !52} ; [ DW_TAG_member ]
!52 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 64, i64 32, i32 0, i32 0, metadata !33, metadata !53, i32 0, i32 0} ; [ DW_TAG_array_type ]
!53 = metadata !{metadata !54}
!54 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ]
!55 = metadata !{i32 786445, metadata !44, metadata !"state", metadata !45, i32 10, i64 256, i64 32, i64 608, i32 0, metadata !56} ; [ DW_TAG_member ]
!56 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 32, i32 0, i32 0, metadata !33, metadata !57, i32 0, i32 0} ; [ DW_TAG_array_type ]
!57 = metadata !{metadata !58}
!58 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!59 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ]
!60 = metadata !{metadata !61}
!61 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!62 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ]
!63 = metadata !{i32 786452, null, metadata !"", metadata !45, i32 6, i64 512, i64 32, i32 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!64 = metadata !{metadata !47}
!65 = metadata !{i32 86, i32 32, metadata !39, null}
!66 = metadata !{i32 790533, metadata !38, metadata !"ctx.datalen", null, i32 86, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!67 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ]
!68 = metadata !{i32 786452, null, metadata !"", metadata !45, i32 6, i64 32, i64 32, i32 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!69 = metadata !{metadata !50}
!70 = metadata !{i32 786689, metadata !39, metadata !"data", null, i32 86, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!71 = metadata !{i32 86, i32 51, metadata !39, null}
!72 = metadata !{i32 786689, metadata !39, metadata !"len", metadata !31, i32 50331734, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 86, i32 72, metadata !39, null}
!74 = metadata !{i32 90, i32 9, metadata !75, null}
!75 = metadata !{i32 786443, metadata !76, i32 90, i32 4, metadata !31, i32 7} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 786443, metadata !39, i32 87, i32 1, metadata !31, i32 6} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 91, i32 7, metadata !78, null}
!78 = metadata !{i32 786443, metadata !75, i32 90, i32 28, metadata !31, i32 8} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 92, i32 7, metadata !78, null}
!80 = metadata !{i32 93, i32 7, metadata !78, null}
!81 = metadata !{i32 94, i32 10, metadata !82, null}
!82 = metadata !{i32 786443, metadata !78, i32 93, i32 31, metadata !31, i32 9} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 95, i32 10, metadata !82, null}
!84 = metadata !{i32 95, i32 51, metadata !82, null}
!85 = metadata !{i32 95, i32 69, metadata !82, null}
!86 = metadata !{i32 97, i32 7, metadata !82, null}
!87 = metadata !{i32 90, i32 23, metadata !75, null}
!88 = metadata !{i32 786688, metadata !76, metadata !"i", metadata !31, i32 88, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 99, i32 1, metadata !76, null}
!90 = metadata !{i32 786689, metadata !91, metadata !"data", null, i32 30, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 786478, i32 0, metadata !31, metadata !"sha256_transform", metadata !"sha256_transform", metadata !"", metadata !31, i32 30, metadata !92, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !60, i32 31} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!93 = metadata !{null, metadata !42, metadata !59}
!94 = metadata !{i32 30, i32 54, metadata !91, null}
!95 = metadata !{i32 786688, metadata !96, metadata !"m", metadata !31, i32 32, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 786443, metadata !91, i32 31, i32 1, metadata !31, i32 0} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 32, i32 43, metadata !96, null}
!98 = metadata !{i32 34, i32 9, metadata !99, null}
!99 = metadata !{i32 786443, metadata !96, i32 34, i32 4, metadata !31, i32 1} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 36, i32 4, metadata !101, null}
!101 = metadata !{i32 786443, metadata !96, i32 36, i32 4, metadata !31, i32 2} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 35, i32 7, metadata !99, null}
!103 = metadata !{i32 34, i32 26, metadata !99, null}
!104 = metadata !{i32 786688, metadata !96, metadata !"j", metadata !31, i32 32, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 48, i32 9, metadata !106, null}
!106 = metadata !{i32 786443, metadata !96, i32 48, i32 4, metadata !31, i32 3} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 37, i32 7, metadata !101, null}
!108 = metadata !{i32 36, i32 20, metadata !101, null}
!109 = metadata !{i32 786688, metadata !96, metadata !"i", metadata !31, i32 32, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 49, i32 7, metadata !111, null}
!111 = metadata !{i32 786443, metadata !106, i32 48, i32 29, metadata !31, i32 4} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 786688, metadata !96, metadata !"t1", metadata !31, i32 32, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!113 = metadata !{i32 50, i32 7, metadata !111, null}
!114 = metadata !{i32 786688, metadata !96, metadata !"h", metadata !31, i32 32, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 51, i32 7, metadata !111, null}
!116 = metadata !{i32 786688, metadata !96, metadata !"g", metadata !31, i32 32, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 52, i32 7, metadata !111, null}
!118 = metadata !{i32 786688, metadata !96, metadata !"f", metadata !31, i32 32, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!119 = metadata !{i32 53, i32 7, metadata !111, null}
!120 = metadata !{i32 54, i32 7, metadata !111, null}
!121 = metadata !{i32 786688, metadata !96, metadata !"e", metadata !31, i32 32, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!122 = metadata !{i32 786688, metadata !96, metadata !"d", metadata !31, i32 32, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 55, i32 7, metadata !111, null}
!124 = metadata !{i32 786688, metadata !96, metadata !"c", metadata !31, i32 32, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!125 = metadata !{i32 56, i32 7, metadata !111, null}
!126 = metadata !{i32 786688, metadata !96, metadata !"b", metadata !31, i32 32, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!127 = metadata !{i32 57, i32 7, metadata !111, null}
!128 = metadata !{i32 58, i32 7, metadata !111, null}
!129 = metadata !{i32 786688, metadata !96, metadata !"a", metadata !31, i32 32, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!130 = metadata !{i32 48, i32 24, metadata !106, null}
!131 = metadata !{i32 61, i32 4, metadata !96, null}
!132 = metadata !{i32 62, i32 4, metadata !96, null}
!133 = metadata !{i32 63, i32 4, metadata !96, null}
!134 = metadata !{i32 64, i32 4, metadata !96, null}
!135 = metadata !{i32 65, i32 4, metadata !96, null}
!136 = metadata !{i32 66, i32 4, metadata !96, null}
!137 = metadata !{i32 67, i32 4, metadata !96, null}
!138 = metadata !{i32 68, i32 4, metadata !96, null}
!139 = metadata !{i32 69, i32 1, metadata !96, null}
!140 = metadata !{i32 790531, metadata !141, metadata !"ctx.data", null, i32 101, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!141 = metadata !{i32 786689, metadata !142, metadata !"ctx", metadata !31, i32 16777317, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!142 = metadata !{i32 786478, i32 0, metadata !31, metadata !"sha256_final", metadata !"sha256_final", metadata !"", metadata !31, i32 101, metadata !92, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !60, i32 102} ; [ DW_TAG_subprogram ]
!143 = metadata !{i32 101, i32 31, metadata !142, null}
!144 = metadata !{i32 790533, metadata !141, metadata !"ctx.datalen", null, i32 101, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!145 = metadata !{i32 786689, metadata !142, metadata !"hash", null, i32 101, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!146 = metadata !{i32 101, i32 50, metadata !142, null}
!147 = metadata !{i32 786688, metadata !148, metadata !"i", metadata !31, i32 103, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!148 = metadata !{i32 786443, metadata !142, i32 102, i32 1, metadata !31, i32 10} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 105, i32 2, metadata !148, null}
!150 = metadata !{i32 108, i32 2, metadata !148, null}
!151 = metadata !{i32 109, i32 3, metadata !152, null}
!152 = metadata !{i32 786443, metadata !148, i32 108, i32 25, metadata !31, i32 11} ; [ DW_TAG_lexical_block ]
!153 = metadata !{i32 114, i32 3, metadata !154, null}
!154 = metadata !{i32 786443, metadata !148, i32 113, i32 7, metadata !31, i32 12} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 110, i32 3, metadata !152, null}
!156 = metadata !{i32 111, i32 4, metadata !152, null}
!157 = metadata !{i32 115, i32 3, metadata !154, null}
!158 = metadata !{i32 116, i32 4, metadata !154, null}
!159 = metadata !{i32 117, i32 3, metadata !154, null}
!160 = metadata !{i32 118, i32 8, metadata !161, null}
!161 = metadata !{i32 786443, metadata !154, i32 118, i32 3, metadata !31, i32 13} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 119, i32 4, metadata !163, null}
!163 = metadata !{i32 786443, metadata !161, i32 118, i32 29, metadata !31, i32 14} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 118, i32 23, metadata !161, null}
!165 = metadata !{i32 125, i32 4, metadata !148, null}
!166 = metadata !{i32 125, i32 58, metadata !148, null}
!167 = metadata !{i32 125, i32 76, metadata !148, null}
!168 = metadata !{i32 126, i32 4, metadata !148, null}
!169 = metadata !{i32 127, i32 4, metadata !148, null}
!170 = metadata !{i32 128, i32 4, metadata !148, null}
!171 = metadata !{i32 129, i32 4, metadata !148, null}
!172 = metadata !{i32 130, i32 4, metadata !148, null}
!173 = metadata !{i32 131, i32 4, metadata !148, null}
!174 = metadata !{i32 132, i32 4, metadata !148, null}
!175 = metadata !{i32 133, i32 4, metadata !148, null}
!176 = metadata !{i32 134, i32 4, metadata !148, null}
!177 = metadata !{i32 138, i32 9, metadata !178, null}
!178 = metadata !{i32 786443, metadata !148, i32 138, i32 4, metadata !31, i32 15} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 139, i32 7, metadata !180, null}
!180 = metadata !{i32 786443, metadata !178, i32 138, i32 26, metadata !31, i32 16} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 140, i32 7, metadata !180, null}
!182 = metadata !{i32 141, i32 7, metadata !180, null}
!183 = metadata !{i32 142, i32 7, metadata !180, null}
!184 = metadata !{i32 143, i32 7, metadata !180, null}
!185 = metadata !{i32 144, i32 7, metadata !180, null}
!186 = metadata !{i32 145, i32 7, metadata !180, null}
!187 = metadata !{i32 146, i32 7, metadata !180, null}
!188 = metadata !{i32 138, i32 21, metadata !178, null}
!189 = metadata !{metadata !190}
!190 = metadata !{i32 0, i32 7, metadata !191}
!191 = metadata !{metadata !192}
!192 = metadata !{metadata !"data", metadata !193, metadata !"unsigned char", i32 0, i32 7}
!193 = metadata !{metadata !194}
!194 = metadata !{i32 0, i32 255, i32 1}
!195 = metadata !{metadata !196}
!196 = metadata !{i32 0, i32 31, metadata !197}
!197 = metadata !{metadata !198}
!198 = metadata !{metadata !"base_offset", metadata !199, metadata !"unsigned int", i32 0, i32 31}
!199 = metadata !{metadata !200}
!200 = metadata !{i32 0, i32 0, i32 0}
!201 = metadata !{metadata !202}
!202 = metadata !{i32 0, i32 31, metadata !203}
!203 = metadata !{metadata !204}
!204 = metadata !{metadata !"bytes", metadata !199, metadata !"unsigned int", i32 0, i32 31}
!205 = metadata !{metadata !206}
!206 = metadata !{i32 0, i32 7, metadata !207}
!207 = metadata !{metadata !208}
!208 = metadata !{metadata !"digest", metadata !209, metadata !"unsigned char", i32 0, i32 7}
!209 = metadata !{metadata !210}
!210 = metadata !{i32 0, i32 31, i32 1}
!211 = metadata !{i32 786689, metadata !212, metadata !"data", null, i32 8, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!212 = metadata !{i32 786478, i32 0, metadata !213, metadata !"sha256", metadata !"sha256", metadata !"", metadata !213, i32 8, metadata !214, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !60, i32 11} ; [ DW_TAG_subprogram ]
!213 = metadata !{i32 786473, metadata !"sha256.c", metadata !"E:\5Cacc_2562", null} ; [ DW_TAG_file_type ]
!214 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !215, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!215 = metadata !{null, metadata !59, metadata !33, metadata !33, metadata !59}
!216 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !49, metadata !217, i32 0, i32 0} ; [ DW_TAG_array_type ]
!217 = metadata !{metadata !218}
!218 = metadata !{i32 786465, i64 0, i64 255}     ; [ DW_TAG_subrange_type ]
!219 = metadata !{i32 8, i32 28, metadata !212, null}
!220 = metadata !{i32 786689, metadata !212, metadata !"base_offset", metadata !213, i32 33554441, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!221 = metadata !{i32 9, i32 18, metadata !212, null}
!222 = metadata !{i32 786689, metadata !212, metadata !"bytes", metadata !213, i32 50331658, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!223 = metadata !{i32 10, i32 18, metadata !212, null}
!224 = metadata !{i32 786689, metadata !212, metadata !"digest", null, i32 11, metadata !225, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!225 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !49, metadata !226, i32 0, i32 0} ; [ DW_TAG_array_type ]
!226 = metadata !{metadata !227}
!227 = metadata !{i32 786465, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!228 = metadata !{i32 11, i32 19, metadata !212, null}
!229 = metadata !{i32 17, i32 1, metadata !230, null}
!230 = metadata !{i32 786443, metadata !212, i32 11, i32 32, metadata !213, i32 0} ; [ DW_TAG_lexical_block ]
!231 = metadata !{i32 18, i32 1, metadata !230, null}
!232 = metadata !{i32 19, i32 1, metadata !230, null}
!233 = metadata !{i32 786688, metadata !230, metadata !"seg_buf", metadata !213, i32 22, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!234 = metadata !{i32 22, i32 16, metadata !230, null}
!235 = metadata !{i32 786688, metadata !230, metadata !"n", metadata !213, i32 25, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!236 = metadata !{i32 25, i32 24, metadata !230, null}
!237 = metadata !{i32 790529, metadata !238, metadata !"sha256ctx.data", null, i32 28, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!238 = metadata !{i32 786688, metadata !230, metadata !"sha256ctx", metadata !213, i32 28, metadata !239, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!239 = metadata !{i32 786454, null, metadata !"SHA256_CTX", metadata !213, i32 11, i64 0, i64 0, i64 0, i32 0, metadata !240} ; [ DW_TAG_typedef ]
!240 = metadata !{i32 786451, null, metadata !"", metadata !45, i32 6, i64 864, i64 32, i32 0, i32 0, null, metadata !241, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!241 = metadata !{metadata !242, metadata !243, metadata !244, metadata !245}
!242 = metadata !{i32 786445, metadata !240, metadata !"data", metadata !45, i32 7, i64 512, i64 8, i64 0, i32 0, metadata !48} ; [ DW_TAG_member ]
!243 = metadata !{i32 786445, metadata !240, metadata !"datalen", metadata !45, i32 8, i64 32, i64 32, i64 512, i32 0, metadata !33} ; [ DW_TAG_member ]
!244 = metadata !{i32 786445, metadata !240, metadata !"bitlen", metadata !45, i32 9, i64 64, i64 32, i64 544, i32 0, metadata !52} ; [ DW_TAG_member ]
!245 = metadata !{i32 786445, metadata !240, metadata !"state", metadata !45, i32 10, i64 256, i64 32, i64 608, i32 0, metadata !56} ; [ DW_TAG_member ]
!246 = metadata !{i32 786452, null, metadata !"", metadata !45, i32 6, i64 512, i64 32, i32 0, i32 0, null, metadata !247, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!247 = metadata !{metadata !242}
!248 = metadata !{i32 28, i32 13, metadata !230, null}
!249 = metadata !{i32 32, i32 2, metadata !230, null}
!250 = metadata !{i32 34, i32 3, metadata !251, null}
!251 = metadata !{i32 786443, metadata !230, i32 33, i32 2, metadata !213, i32 1} ; [ DW_TAG_lexical_block ]
!252 = metadata !{i32 36, i32 9, metadata !253, null}
!253 = metadata !{i32 786443, metadata !254, i32 36, i32 4, metadata !213, i32 3} ; [ DW_TAG_lexical_block ]
!254 = metadata !{i32 786443, metadata !251, i32 35, i32 3, metadata !213, i32 2} ; [ DW_TAG_lexical_block ]
!255 = metadata !{i32 44, i32 9, metadata !256, null}
!256 = metadata !{i32 786443, metadata !257, i32 44, i32 4, metadata !213, i32 5} ; [ DW_TAG_lexical_block ]
!257 = metadata !{i32 786443, metadata !251, i32 43, i32 3, metadata !213, i32 4} ; [ DW_TAG_lexical_block ]
!258 = metadata !{i32 37, i32 5, metadata !253, null}
!259 = metadata !{i32 36, i32 20, metadata !253, null}
!260 = metadata !{i32 786688, metadata !230, metadata !"i", metadata !213, i32 24, metadata !261, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!261 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!262 = metadata !{i32 38, i32 4, metadata !254, null}
!263 = metadata !{i32 39, i32 4, metadata !254, null}
!264 = metadata !{i32 786688, metadata !230, metadata !"seg_offset", metadata !213, i32 23, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!265 = metadata !{i32 40, i32 4, metadata !254, null}
!266 = metadata !{i32 790529, metadata !238, metadata !"sha256ctx.state[0]", null, i32 28, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!267 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 32, i32 0, i32 0, null, metadata !268, i32 0, i32 0} ; [ DW_TAG_array_type ]
!268 = metadata !{metadata !33}
!269 = metadata !{i32 790529, metadata !238, metadata !"sha256ctx.state[1]", null, i32 28, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!270 = metadata !{i32 790529, metadata !238, metadata !"sha256ctx.state[2]", null, i32 28, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!271 = metadata !{i32 790529, metadata !238, metadata !"sha256ctx.state[3]", null, i32 28, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!272 = metadata !{i32 790529, metadata !238, metadata !"sha256ctx.state[4]", null, i32 28, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!273 = metadata !{i32 790529, metadata !238, metadata !"sha256ctx.state[5]", null, i32 28, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!274 = metadata !{i32 790529, metadata !238, metadata !"sha256ctx.state[6]", null, i32 28, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!275 = metadata !{i32 790529, metadata !238, metadata !"sha256ctx.state[7]", null, i32 28, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!276 = metadata !{i32 790529, metadata !238, metadata !"sha256ctx.bitlen[0]", null, i32 28, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!277 = metadata !{i32 790529, metadata !238, metadata !"sha256ctx.bitlen[1]", null, i32 28, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!278 = metadata !{i32 790529, metadata !238, metadata !"sha256ctx.datalen", null, i32 28, metadata !279, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!279 = metadata !{i32 786452, null, metadata !"", metadata !45, i32 6, i64 32, i64 32, i32 0, i32 0, null, metadata !280, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!280 = metadata !{metadata !243}
!281 = metadata !{i32 41, i32 3, metadata !254, null}
!282 = metadata !{i32 45, i32 5, metadata !256, null}
!283 = metadata !{i32 44, i32 19, metadata !256, null}
!284 = metadata !{i32 46, i32 4, metadata !257, null}
!285 = metadata !{i32 52, i32 2, metadata !230, null}
!286 = metadata !{i32 54, i32 7, metadata !287, null}
!287 = metadata !{i32 786443, metadata !230, i32 54, i32 2, metadata !213, i32 6} ; [ DW_TAG_lexical_block ]
!288 = metadata !{i32 56, i32 3, metadata !289, null}
!289 = metadata !{i32 786443, metadata !287, i32 54, i32 23, metadata !213, i32 7} ; [ DW_TAG_lexical_block ]
!290 = metadata !{i32 54, i32 18, metadata !287, null}
!291 = metadata !{i32 58, i32 1, metadata !230, null}
