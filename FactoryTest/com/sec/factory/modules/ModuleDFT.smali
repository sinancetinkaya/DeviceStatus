.class public Lcom/sec/factory/modules/ModuleDFT;
.super Lcom/sec/factory/modules/ModuleObject;
.source "ModuleDFT.java"


# static fields
.field private static mInstance:Lcom/sec/factory/modules/ModuleDFT;


# instance fields
.field private mIsSlateCommand:Z

.field private mTouchLongEventTime:J

.field private mTouchLongX1:F

.field private mTouchLongY1:F

.field private mTouchMoveStatus:I

.field private x1:Ljava/lang/String;

.field private y1:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/factory/modules/ModuleDFT;->mInstance:Lcom/sec/factory/modules/ModuleDFT;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 42
    const-string v0, "ModuleDFT"

    invoke-direct {p0, p1, v0}, Lcom/sec/factory/modules/ModuleObject;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    iput v1, p0, Lcom/sec/factory/modules/ModuleDFT;->mTouchMoveStatus:I

    .line 38
    iput-boolean v1, p0, Lcom/sec/factory/modules/ModuleDFT;->mIsSlateCommand:Z

    .line 43
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleDFT"

    const-string v2, "Create ModuleDFT"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private ActionDFTTouch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 44
    .parameter "action_type"
    .parameter "x1_value"
    .parameter "y1_value"
    .parameter "x2_value"
    .parameter "y2_value"

    .prologue
    .line 246
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "ActionDFTTouch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "type="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ", x1="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ", y1="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ", x2="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ", y2="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v5, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/ModuleDFT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    .line 251
    .local v18, display:Landroid/view/Display;
    new-instance v23, Landroid/graphics/Point;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Point;-><init>()V

    .line 252
    .local v23, outpoint:Landroid/graphics/Point;
    invoke-virtual/range {v18 .. v18}, Landroid/view/Display;->getWidth()I

    move-result v5

    move-object/from16 v0, v23

    iput v5, v0, Landroid/graphics/Point;->x:I

    .line 253
    invoke-virtual/range {v18 .. v18}, Landroid/view/Display;->getHeight()I

    move-result v5

    move-object/from16 v0, v23

    iput v5, v0, Landroid/graphics/Point;->y:I

    .line 254
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "ActionDFTTouch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Display w="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v23

    iget v12, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ", h="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v23

    iget v12, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v5, "tablet"

    const-string v6, "DEVICE_TYPE"

    invoke-static {v6}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13d

    .line 257
    invoke-virtual/range {v18 .. v18}, Landroid/view/Display;->getRotation()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_f5

    .line 258
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "ActionDFTTouch"

    const-string v7, "Rotation is ROTATION_270"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    move-object/from16 v24, p2

    .line 260
    .local v24, temp_X1:Ljava/lang/String;
    move-object/from16 v25, p4

    .line 261
    .local v25, temp_X2:Ljava/lang/String;
    move-object/from16 v26, p3

    .line 262
    .local v26, temp_Y1:Ljava/lang/String;
    move-object/from16 v27, p5

    .line 263
    .local v27, temp_Y2:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v28

    .line 264
    .local v28, temp_x1:F
    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    sub-float v30, v5, v6

    .line 266
    .local v30, temp_y1:F
    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    .line 267
    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    .line 270
    :try_start_de
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v29

    .line 271
    .local v29, temp_x2:F
    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    sub-float v31, v5, v6

    .line 273
    .local v31, temp_y2:F
    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p4

    .line 274
    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    :try_end_f4
    .catch Ljava/lang/NumberFormatException; {:try_start_de .. :try_end_f4} :catch_1ac

    move-result-object p5

    .line 281
    .end local v24           #temp_X1:Ljava/lang/String;
    .end local v25           #temp_X2:Ljava/lang/String;
    .end local v26           #temp_Y1:Ljava/lang/String;
    .end local v27           #temp_Y2:Ljava/lang/String;
    .end local v28           #temp_x1:F
    .end local v29           #temp_x2:F
    .end local v30           #temp_y1:F
    .end local v31           #temp_y2:F
    :cond_f5
    :goto_f5
    invoke-virtual/range {v18 .. v18}, Landroid/view/Display;->getRotation()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_13d

    .line 282
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "ActionDFTTouch"

    const-string v7, "Rotation is ROTATION_90"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    move-object/from16 v24, p2

    .line 284
    .restart local v24       #temp_X1:Ljava/lang/String;
    move-object/from16 v25, p4

    .line 285
    .restart local v25       #temp_X2:Ljava/lang/String;
    move-object/from16 v26, p3

    .line 286
    .restart local v26       #temp_Y1:Ljava/lang/String;
    move-object/from16 v27, p5

    .line 288
    .restart local v27       #temp_Y2:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v28

    .line 289
    .restart local v28       #temp_x1:F
    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    sub-float v30, v5, v6

    .line 291
    .restart local v30       #temp_y1:F
    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    .line 292
    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    .line 295
    :try_start_126
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v29

    .line 296
    .restart local v29       #temp_x2:F
    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    sub-float v31, v5, v6

    .line 297
    .restart local v31       #temp_y2:F
    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p4

    .line 298
    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    :try_end_13c
    .catch Ljava/lang/NumberFormatException; {:try_start_126 .. :try_end_13c} :catch_1b3

    move-result-object p5

    .line 307
    .end local v24           #temp_X1:Ljava/lang/String;
    .end local v25           #temp_X2:Ljava/lang/String;
    .end local v26           #temp_Y1:Ljava/lang/String;
    .end local v27           #temp_Y2:Ljava/lang/String;
    .end local v28           #temp_x1:F
    .end local v29           #temp_x2:F
    .end local v30           #temp_y1:F
    .end local v31           #temp_y2:F
    :cond_13d
    :goto_13d
    :try_start_13d
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 308
    .local v8, x1:F
    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 309
    .local v9, y1:F
    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v36

    .line 310
    .local v36, x2:F
    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v37

    .line 312
    .local v37, y2:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "ActionDFTTouch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "x1"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "y1"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "x2"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "y2"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 317
    .local v3, eventTime:J
    const/4 v7, 0x0

    const/4 v10, 0x0

    move-wide v5, v3

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v19

    .line 319
    .local v19, down:Landroid/view/MotionEvent;
    const/4 v5, 0x1

    move/from16 v0, p1

    if-ne v0, v5, :cond_1b9

    .line 320
    const/4 v7, 0x1

    const/4 v10, 0x0

    move-wide v5, v3

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v35

    .line 322
    .local v35, up:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/sec/factory/modules/ModuleDFT;->injectTouchEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    :try_end_1ab
    .catch Ljava/lang/NumberFormatException; {:try_start_13d .. :try_end_1ab} :catch_20f

    .line 378
    .end local v3           #eventTime:J
    .end local v8           #x1:F
    .end local v9           #y1:F
    .end local v19           #down:Landroid/view/MotionEvent;
    .end local v35           #up:Landroid/view/MotionEvent;
    .end local v36           #x2:F
    .end local v37           #y2:F
    :cond_1ab
    :goto_1ab
    return-void

    .line 275
    .restart local v24       #temp_X1:Ljava/lang/String;
    .restart local v25       #temp_X2:Ljava/lang/String;
    .restart local v26       #temp_Y1:Ljava/lang/String;
    .restart local v27       #temp_Y2:Ljava/lang/String;
    .restart local v28       #temp_x1:F
    .restart local v30       #temp_y1:F
    :catch_1ac
    move-exception v22

    .line 276
    .local v22, nfe:Ljava/lang/NumberFormatException;
    const-string p4, "0000"

    .line 277
    const-string p5, "0000"

    goto/16 :goto_f5

    .line 299
    .end local v22           #nfe:Ljava/lang/NumberFormatException;
    :catch_1b3
    move-exception v22

    .line 300
    .restart local v22       #nfe:Ljava/lang/NumberFormatException;
    const-string p4, "0000"

    .line 301
    const-string p5, "0000"

    goto :goto_13d

    .line 326
    .end local v22           #nfe:Ljava/lang/NumberFormatException;
    .end local v24           #temp_X1:Ljava/lang/String;
    .end local v25           #temp_X2:Ljava/lang/String;
    .end local v26           #temp_Y1:Ljava/lang/String;
    .end local v27           #temp_Y2:Ljava/lang/String;
    .end local v28           #temp_x1:F
    .end local v30           #temp_y1:F
    .restart local v3       #eventTime:J
    .restart local v8       #x1:F
    .restart local v9       #y1:F
    .restart local v19       #down:Landroid/view/MotionEvent;
    .restart local v36       #x2:F
    .restart local v37       #y2:F
    :cond_1b9
    const/4 v5, 0x3

    move/from16 v0, p1

    if-ne v0, v5, :cond_215

    .line 327
    const/4 v5, 0x0

    :try_start_1bf
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Lcom/sec/factory/modules/ModuleDFT;->injectTouchEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "ActionDFTTouch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Touch Event = down = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " , "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/sec/factory/modules/ModuleDFT;->mTouchLongEventTime:J

    .line 331
    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/factory/modules/ModuleDFT;->mTouchLongX1:F

    .line 332
    move-object/from16 v0, p0

    iput v9, v0, Lcom/sec/factory/modules/ModuleDFT;->mTouchLongY1:F

    .line 333
    new-instance v34, Lcom/sec/factory/modules/ModuleDFT$3;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/factory/modules/ModuleDFT$3;-><init>(Lcom/sec/factory/modules/ModuleDFT;)V

    .line 350
    .local v34, thread:Ljava/lang/Thread;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Thread;->start()V
    :try_end_20e
    .catch Ljava/lang/NumberFormatException; {:try_start_1bf .. :try_end_20e} :catch_20f

    goto :goto_1ab

    .line 374
    .end local v3           #eventTime:J
    .end local v8           #x1:F
    .end local v9           #y1:F
    .end local v19           #down:Landroid/view/MotionEvent;
    .end local v34           #thread:Ljava/lang/Thread;
    .end local v36           #x2:F
    .end local v37           #y2:F
    :catch_20f
    move-exception v22

    .line 375
    .restart local v22       #nfe:Ljava/lang/NumberFormatException;
    const-string p2, "0000"

    .line 376
    const-string p3, "0000"

    goto :goto_1ab

    .line 353
    .end local v22           #nfe:Ljava/lang/NumberFormatException;
    .restart local v3       #eventTime:J
    .restart local v8       #x1:F
    .restart local v9       #y1:F
    .restart local v19       #down:Landroid/view/MotionEvent;
    .restart local v36       #x2:F
    .restart local v37       #y2:F
    :cond_215
    const/4 v5, 0x2

    move/from16 v0, p1

    if-ne v0, v5, :cond_1ab

    .line 355
    sub-float v5, v36, v8

    const/high16 v6, 0x4120

    div-float v32, v5, v6

    .line 356
    .local v32, tempx:F
    sub-float v5, v37, v9

    const/high16 v6, 0x4120

    div-float v33, v5, v6

    .line 358
    .local v33, tempy:F
    const/4 v5, 0x0

    :try_start_227
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Lcom/sec/factory/modules/ModuleDFT;->injectTouchEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 360
    move-wide v10, v3

    .line 361
    .local v10, downTime:J
    const/16 v20, 0x1

    .local v20, i:I
    :goto_231
    const/16 v5, 0xa

    move/from16 v0, v20

    if-gt v0, v5, :cond_25b

    .line 362
    const/4 v14, 0x2

    move/from16 v0, v20

    int-to-float v5, v0

    mul-float v5, v5, v32

    add-float v15, v8, v5

    move/from16 v0, v20

    int-to-float v5, v0

    mul-float v5, v5, v33

    add-float v16, v9, v5

    const/16 v17, 0x0

    move-wide v12, v3

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v21

    .line 364
    .local v21, move:Landroid/view/MotionEvent;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Lcom/sec/factory/modules/ModuleDFT;->injectTouchEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 366
    const-wide/16 v5, 0x1b

    add-long/2addr v3, v5

    .line 361
    add-int/lit8 v20, v20, 0x1

    goto :goto_231

    .line 368
    .end local v21           #move:Landroid/view/MotionEvent;
    :cond_25b
    const/4 v14, 0x1

    const/16 v17, 0x0

    move-wide v12, v3

    move/from16 v15, v36

    move/from16 v16, v37

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v35

    .line 370
    .restart local v35       #up:Landroid/view/MotionEvent;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v5}, Lcom/sec/factory/modules/ModuleDFT;->injectTouchEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    :try_end_26f
    .catch Ljava/lang/NumberFormatException; {:try_start_227 .. :try_end_26f} :catch_20f

    goto/16 :goto_1ab
.end method

.method private ActionDFTkey(IZ)V
    .registers 26
    .parameter "keyCode"
    .parameter "isKeyHold"

    .prologue
    .line 75
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 76
    .local v3, eventTime:J
    const/4 v6, 0x6

    move/from16 v0, p1

    if-ne v0, v6, :cond_e

    const/4 v6, 0x1

    move/from16 v0, p2

    if-eq v0, v6, :cond_19

    :cond_e
    const/16 v6, 0x1a

    move/from16 v0, p1

    if-ne v0, v6, :cond_44

    const/4 v6, 0x1

    move/from16 v0, p2

    if-ne v0, v6, :cond_44

    .line 78
    :cond_19
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "ActionDFTKey"

    const-string v8, "KEYCODE_ENDCALL, KEYCODE_POWER hold=true"

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v18, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v18, i:Landroid/content/Intent;
    const-string v6, "android.intent.extra.KEY_CONFIRM"

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    const/high16 v6, 0x1000

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleDFT;->startActivity(Landroid/content/Intent;)V

    .line 150
    .end local v18           #i:Landroid/content/Intent;
    :cond_43
    :goto_43
    return-void

    .line 83
    :cond_44
    const/4 v6, 0x6

    move/from16 v0, p1

    if-ne v0, v6, :cond_6b

    if-nez p2, :cond_6b

    .line 84
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "ActionDFTKey"

    const-string v8, "KEYCODE_ENDCALL hold=false"

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v20

    .line 87
    .local v20, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v20, :cond_43

    .line 89
    :try_start_62
    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_43

    .line 90
    :catch_66
    move-exception v17

    .line 91
    .local v17, e:Landroid/os/RemoteException;
    invoke-static/range {v17 .. v17}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_43

    .line 94
    .end local v17           #e:Landroid/os/RemoteException;
    .end local v20           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_6b
    const/16 v6, 0x1a

    move/from16 v0, p1

    if-ne v0, v6, :cond_77

    if-nez p2, :cond_77

    .line 95
    invoke-direct/range {p0 .. p0}, Lcom/sec/factory/modules/ModuleDFT;->isSleep()V

    goto :goto_43

    .line 96
    :cond_77
    const/16 v6, 0x41

    move/from16 v0, p1

    if-ne v0, v6, :cond_ab

    if-nez p2, :cond_ab

    .line 97
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "ActionDFTKey"

    const-string v8, "KEYCODE_ENVELOPE hold=false"

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v19, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v19, intent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    const-string v6, "com.android.mms"

    const-string v7, "com.android.mms.ui.ConversationComposer"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleDFT;->startActivity(Landroid/content/Intent;)V

    goto :goto_43

    .line 102
    .end local v19           #intent:Landroid/content/Intent;
    :cond_ab
    const/16 v6, 0x1b

    move/from16 v0, p1

    if-ne v0, v6, :cond_11d

    .line 103
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "ActionDFTKey"

    const-string v8, "KEYCODE_CAMERA"

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/16 v16, 0x0

    .line 106
    .local v16, activityManager:Landroid/app/ActivityManager;
    const-string v6, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/factory/modules/ModuleDFT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #activityManager:Landroid/app/ActivityManager;
    check-cast v16, Landroid/app/ActivityManager;

    .line 107
    .restart local v16       #activityManager:Landroid/app/ActivityManager;
    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v21

    .line 108
    .local v21, runningtask:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v22

    .line 110
    .local v22, topActivity:Ljava/lang/String;
    const-string v6, "com.sec.android.app.camera.Camera"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_104

    .line 111
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-wide v5, v3

    move/from16 v8, p1

    invoke-direct/range {v2 .. v9}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 112
    .local v2, down:Landroid/view/KeyEvent;
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-wide v6, v3

    move-wide v8, v3

    move/from16 v11, p1

    invoke-direct/range {v5 .. v12}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 113
    .local v5, up:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/sec/factory/modules/ModuleDFT;->injectKeyEvent(Landroid/view/KeyEvent;Landroid/view/KeyEvent;)V

    goto/16 :goto_43

    .line 115
    .end local v2           #down:Landroid/view/KeyEvent;
    .end local v5           #up:Landroid/view/KeyEvent;
    :cond_104
    new-instance v18, Landroid/content/Intent;

    const-string v6, "android.media.action.IMAGE_CAPTURE"

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .restart local v18       #i:Landroid/content/Intent;
    const/high16 v6, 0x1000

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 117
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleDFT;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_43

    .line 120
    .end local v16           #activityManager:Landroid/app/ActivityManager;
    .end local v18           #i:Landroid/content/Intent;
    .end local v21           #runningtask:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v22           #topActivity:Ljava/lang/String;
    :cond_11d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "ActionDFTKey"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Another key keyCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", hold="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/16 v16, 0x0

    .line 123
    .restart local v16       #activityManager:Landroid/app/ActivityManager;
    const-string v6, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/factory/modules/ModuleDFT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #activityManager:Landroid/app/ActivityManager;
    check-cast v16, Landroid/app/ActivityManager;

    .line 124
    .restart local v16       #activityManager:Landroid/app/ActivityManager;
    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v21

    .line 125
    .restart local v21       #runningtask:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v22

    .line 126
    .restart local v22       #topActivity:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "ActionDFTKey"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "topactivity call = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/16 v6, 0x42

    move/from16 v0, p1

    if-ne v0, v6, :cond_209

    const-string v6, "com.android.contacts.DialtactsActivity"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_209

    const-string v6, "com.android.contacts.activities.DialtactsActivity"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_209

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/factory/modules/ModuleDFT;->mIsSlateCommand:Z

    if-nez v6, :cond_209

    .line 131
    new-instance v18, Landroid/content/Intent;

    const-string v6, "android.intent.action.DIAL"

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .restart local v18       #i:Landroid/content/Intent;
    const/high16 v6, 0x1000

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    const-string v6, "CONTACT_DIALTACTS_PACKAGE"

    invoke-static {v6}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 134
    .local v15, CONTACT_DIALTACTS_PACKAGE:Ljava/lang/String;
    const-string v6, "CONTACT_DIALTACTS_CLASS"

    invoke-static {v6}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 135
    .local v14, CONTACT_DIALTACTS_CLASS:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "ActionDFTKey"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CONTACT_DIALTACTS_PACKAGE = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "ActionDFTKey"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CONTACT_DIALTACTS_CLASS = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleDFT;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_43

    .line 140
    .end local v14           #CONTACT_DIALTACTS_CLASS:Ljava/lang/String;
    .end local v15           #CONTACT_DIALTACTS_PACKAGE:Ljava/lang/String;
    .end local v18           #i:Landroid/content/Intent;
    :cond_209
    if-nez p2, :cond_43

    .line 142
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v6, v2

    move-wide v7, v3

    move-wide v9, v3

    move/from16 v12, p1

    invoke-direct/range {v6 .. v13}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 143
    .restart local v2       #down:Landroid/view/KeyEvent;
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-wide v6, v3

    move-wide v8, v3

    move/from16 v11, p1

    invoke-direct/range {v5 .. v12}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 144
    .restart local v5       #up:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "ActionDFTKey"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inject keyevent: keycode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/sec/factory/modules/ModuleDFT;->injectKeyEvent(Landroid/view/KeyEvent;Landroid/view/KeyEvent;)V

    goto/16 :goto_43
.end method

.method static synthetic access$000(Lcom/sec/factory/modules/ModuleDFT;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/sec/factory/modules/ModuleDFT;->mTouchLongEventTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/sec/factory/modules/ModuleDFT;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/sec/factory/modules/ModuleDFT;->mTouchLongX1:F

    return v0
.end method

.method static synthetic access$200(Lcom/sec/factory/modules/ModuleDFT;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/sec/factory/modules/ModuleDFT;->mTouchLongY1:F

    return v0
.end method

.method static synthetic access$300(Lcom/sec/factory/modules/ModuleDFT;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/sec/factory/modules/ModuleDFT;->injectTouchEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return-void
.end method

.method private hexToDec(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "input"

    .prologue
    .line 202
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/sec/factory/support/FtUtil;->charToNum(C)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4580

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/sec/factory/support/FtUtil;->charToNum(C)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4380

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/sec/factory/support/FtUtil;->charToNum(C)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4180

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/sec/factory/support/FtUtil;->charToNum(C)I

    move-result v2

    int-to-float v2, v2

    add-float v0, v1, v2

    .line 206
    .local v0, result:F
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private injectKeyEvent(Landroid/view/KeyEvent;Landroid/view/KeyEvent;)V
    .registers 5
    .parameter "event1"
    .parameter "event2"

    .prologue
    .line 165
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/factory/modules/ModuleDFT$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/factory/modules/ModuleDFT$1;-><init>(Lcom/sec/factory/modules/ModuleDFT;Landroid/view/KeyEvent;Landroid/view/KeyEvent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 172
    return-void
.end method

.method private injectTouchEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "touch1"
    .parameter "touch2"

    .prologue
    .line 175
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/factory/modules/ModuleDFT$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/factory/modules/ModuleDFT$2;-><init>(Lcom/sec/factory/modules/ModuleDFT;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 184
    return-void
.end method

.method public static instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDFT;
    .registers 2
    .parameter "context"

    .prologue
    .line 47
    sget-object v0, Lcom/sec/factory/modules/ModuleDFT;->mInstance:Lcom/sec/factory/modules/ModuleDFT;

    if-nez v0, :cond_b

    .line 48
    new-instance v0, Lcom/sec/factory/modules/ModuleDFT;

    invoke-direct {v0, p0}, Lcom/sec/factory/modules/ModuleDFT;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/factory/modules/ModuleDFT;->mInstance:Lcom/sec/factory/modules/ModuleDFT;

    .line 50
    :cond_b
    sget-object v0, Lcom/sec/factory/modules/ModuleDFT;->mInstance:Lcom/sec/factory/modules/ModuleDFT;

    return-object v0
.end method

.method private isSleep()V
    .registers 5

    .prologue
    .line 153
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/sec/factory/modules/ModuleDFT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 154
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 162
    :goto_15
    return-void

    .line 157
    :cond_16
    const v2, 0x3000001a

    const-string v3, "wake_up"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 160
    .local v1, sCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_15
.end method

.method private keymapping(Ljava/lang/String;Z)I
    .registers 10
    .parameter "key"
    .parameter "isKeyHold"

    .prologue
    .line 659
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 660
    .local v1, eventCode:I
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "keymapping: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const/4 v2, -0x1

    .line 663
    .local v2, hostnumber:I
    packed-switch v1, :pswitch_data_130

    .line 869
    :pswitch_17
    const/4 v2, 0x0

    .line 872
    :goto_18
    return v2

    .line 665
    :pswitch_19
    const/4 v2, 0x3

    .line 666
    goto :goto_18

    .line 668
    :pswitch_1b
    const/4 v2, 0x4

    .line 669
    goto :goto_18

    .line 671
    :pswitch_1d
    sget-object v3, Lcom/sec/factory/modules/ModuleDFT;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 673
    .local v0, callstate:I
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "ActionDFTKey"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const/4 v3, 0x1

    if-eq v0, v3, :cond_4b

    .line 675
    const/16 v2, 0x42

    goto :goto_18

    .line 677
    :cond_4b
    const/4 v2, 0x5

    .line 678
    goto :goto_18

    .line 681
    .end local v0           #callstate:I
    :pswitch_4d
    const/4 v2, 0x6

    .line 682
    goto :goto_18

    .line 685
    :pswitch_4f
    if-eqz p2, :cond_54

    const/16 v2, 0x51

    .line 686
    :goto_53
    goto :goto_18

    .line 685
    :cond_54
    const/4 v2, 0x7

    goto :goto_53

    .line 688
    :pswitch_56
    const/16 v2, 0x8

    .line 689
    goto :goto_18

    .line 691
    :pswitch_59
    const/16 v2, 0x9

    .line 692
    goto :goto_18

    .line 694
    :pswitch_5c
    const/16 v2, 0xa

    .line 695
    goto :goto_18

    .line 697
    :pswitch_5f
    const/16 v2, 0xb

    .line 698
    goto :goto_18

    .line 700
    :pswitch_62
    const/16 v2, 0xc

    .line 701
    goto :goto_18

    .line 703
    :pswitch_65
    const/16 v2, 0xd

    .line 704
    goto :goto_18

    .line 706
    :pswitch_68
    const/16 v2, 0xe

    .line 707
    goto :goto_18

    .line 709
    :pswitch_6b
    const/16 v2, 0xf

    .line 710
    goto :goto_18

    .line 712
    :pswitch_6e
    const/16 v2, 0x10

    .line 713
    goto :goto_18

    .line 715
    :pswitch_71
    const/16 v2, 0x12

    .line 716
    goto :goto_18

    .line 718
    :pswitch_74
    const/16 v2, 0x11

    .line 719
    goto :goto_18

    .line 721
    :pswitch_77
    const/16 v2, 0x13

    .line 722
    goto :goto_18

    .line 724
    :pswitch_7a
    const/16 v2, 0x14

    .line 725
    goto :goto_18

    .line 727
    :pswitch_7d
    const/16 v2, 0x15

    .line 728
    goto :goto_18

    .line 730
    :pswitch_80
    const/16 v2, 0x16

    .line 731
    goto :goto_18

    .line 733
    :pswitch_83
    const/16 v2, 0x42

    .line 734
    goto :goto_18

    .line 736
    :pswitch_86
    const/16 v2, 0x42

    .line 737
    goto :goto_18

    .line 739
    :pswitch_89
    const/16 v2, 0x18

    .line 740
    goto :goto_18

    .line 742
    :pswitch_8c
    const/16 v2, 0x19

    .line 743
    goto :goto_18

    .line 746
    :pswitch_8f
    const/16 v2, 0x1a

    .line 747
    goto :goto_18

    .line 749
    :pswitch_92
    const/16 v2, 0x1b

    .line 750
    goto :goto_18

    .line 752
    :pswitch_95
    const/16 v2, 0x43

    .line 753
    goto :goto_18

    .line 755
    :pswitch_98
    const/16 v2, 0x52

    .line 756
    goto/16 :goto_18

    .line 758
    :pswitch_9c
    const/4 v2, 0x4

    .line 759
    goto/16 :goto_18

    .line 761
    :pswitch_9f
    const/16 v2, 0x1d

    .line 762
    goto/16 :goto_18

    .line 764
    :pswitch_a3
    const/16 v2, 0x1e

    .line 765
    goto/16 :goto_18

    .line 767
    :pswitch_a7
    const/16 v2, 0x1f

    .line 768
    goto/16 :goto_18

    .line 770
    :pswitch_ab
    const/16 v2, 0x20

    .line 771
    goto/16 :goto_18

    .line 773
    :pswitch_af
    const/16 v2, 0x21

    .line 774
    goto/16 :goto_18

    .line 776
    :pswitch_b3
    const/16 v2, 0x22

    .line 777
    goto/16 :goto_18

    .line 779
    :pswitch_b7
    const/16 v2, 0x23

    .line 780
    goto/16 :goto_18

    .line 782
    :pswitch_bb
    const/16 v2, 0x24

    .line 783
    goto/16 :goto_18

    .line 785
    :pswitch_bf
    const/16 v2, 0x25

    .line 786
    goto/16 :goto_18

    .line 788
    :pswitch_c3
    const/16 v2, 0x26

    .line 789
    goto/16 :goto_18

    .line 791
    :pswitch_c7
    const/16 v2, 0x27

    .line 792
    goto/16 :goto_18

    .line 794
    :pswitch_cb
    const/16 v2, 0x28

    .line 795
    goto/16 :goto_18

    .line 797
    :pswitch_cf
    const/16 v2, 0x29

    .line 798
    goto/16 :goto_18

    .line 800
    :pswitch_d3
    const/16 v2, 0x2a

    .line 801
    goto/16 :goto_18

    .line 803
    :pswitch_d7
    const/16 v2, 0x2b

    .line 804
    goto/16 :goto_18

    .line 806
    :pswitch_db
    const/16 v2, 0x2c

    .line 807
    goto/16 :goto_18

    .line 809
    :pswitch_df
    const/16 v2, 0x2d

    .line 810
    goto/16 :goto_18

    .line 812
    :pswitch_e3
    const/16 v2, 0x2e

    .line 813
    goto/16 :goto_18

    .line 815
    :pswitch_e7
    const/16 v2, 0x2f

    .line 816
    goto/16 :goto_18

    .line 818
    :pswitch_eb
    const/16 v2, 0x30

    .line 819
    goto/16 :goto_18

    .line 821
    :pswitch_ef
    const/16 v2, 0x31

    .line 822
    goto/16 :goto_18

    .line 824
    :pswitch_f3
    const/16 v2, 0x32

    .line 825
    goto/16 :goto_18

    .line 827
    :pswitch_f7
    const/16 v2, 0x33

    .line 828
    goto/16 :goto_18

    .line 830
    :pswitch_fb
    const/16 v2, 0x34

    .line 831
    goto/16 :goto_18

    .line 833
    :pswitch_ff
    const/16 v2, 0x35

    .line 834
    goto/16 :goto_18

    .line 836
    :pswitch_103
    const/16 v2, 0x36

    .line 837
    goto/16 :goto_18

    .line 839
    :pswitch_107
    const/16 v2, 0x39

    .line 840
    goto/16 :goto_18

    .line 842
    :pswitch_10b
    const/16 v2, 0x3c

    .line 843
    goto/16 :goto_18

    .line 845
    :pswitch_10f
    const/16 v2, 0x3f

    .line 846
    goto/16 :goto_18

    .line 848
    :pswitch_113
    const/16 v2, 0x54

    .line 849
    goto/16 :goto_18

    .line 851
    :pswitch_117
    const/16 v2, 0x37

    .line 852
    goto/16 :goto_18

    .line 854
    :pswitch_11b
    const/16 v2, 0x3e

    .line 855
    goto/16 :goto_18

    .line 857
    :pswitch_11f
    const/16 v2, 0x38

    .line 858
    goto/16 :goto_18

    .line 860
    :pswitch_123
    const/16 v2, 0x5e

    .line 861
    goto/16 :goto_18

    .line 863
    :pswitch_127
    const/16 v2, 0x41

    .line 864
    goto/16 :goto_18

    .line 866
    :pswitch_12b
    const/16 v2, 0xbb

    .line 867
    goto/16 :goto_18

    .line 663
    nop

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_56
        :pswitch_59
        :pswitch_5c
        :pswitch_5f
        :pswitch_62
        :pswitch_65
        :pswitch_68
        :pswitch_6b
        :pswitch_6e
        :pswitch_4f
        :pswitch_1d
        :pswitch_4d
        :pswitch_71
        :pswitch_74
        :pswitch_1b
        :pswitch_17
        :pswitch_17
        :pswitch_77
        :pswitch_17
        :pswitch_7a
        :pswitch_17
        :pswitch_89
        :pswitch_8c
        :pswitch_7d
        :pswitch_80
        :pswitch_92
        :pswitch_83
        :pswitch_98
        :pswitch_9c
        :pswitch_8f
        :pswitch_17
        :pswitch_19
        :pswitch_8f
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_9f
        :pswitch_a3
        :pswitch_a7
        :pswitch_ab
        :pswitch_af
        :pswitch_b3
        :pswitch_b7
        :pswitch_bb
        :pswitch_bf
        :pswitch_c3
        :pswitch_c7
        :pswitch_cb
        :pswitch_cf
        :pswitch_d3
        :pswitch_d7
        :pswitch_db
        :pswitch_df
        :pswitch_e3
        :pswitch_e7
        :pswitch_eb
        :pswitch_ef
        :pswitch_f3
        :pswitch_f7
        :pswitch_fb
        :pswitch_ff
        :pswitch_103
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_11b
        :pswitch_17
        :pswitch_107
        :pswitch_86
        :pswitch_11f
        :pswitch_95
        :pswitch_117
        :pswitch_17
        :pswitch_10f
        :pswitch_123
        :pswitch_127
        :pswitch_113
        :pswitch_10b
        :pswitch_12b
    .end packed-switch
.end method

.method private keymappingCPO(Ljava/lang/String;Z)I
    .registers 13
    .parameter "key"
    .parameter "isKeyHold"

    .prologue
    const/16 v4, 0x42

    const/4 v5, 0x5

    const/4 v9, 0x1

    .line 437
    const/16 v3, 0x10

    invoke-static {p1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 438
    .local v1, eventCode:I
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "keymapping: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "keymapping: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "keymapping: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const/4 v2, -0x1

    .line 442
    .local v2, hostnumber:I
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/factory/modules/ModuleDFT;->mIsSlateCommand:Z

    .line 444
    sparse-switch v1, :sswitch_data_146

    .line 652
    const/4 v2, 0x0

    .line 655
    :goto_33
    return v2

    .line 446
    :sswitch_34
    const/4 v2, 0x3

    .line 447
    goto :goto_33

    .line 449
    :sswitch_36
    const/4 v2, 0x4

    .line 450
    goto :goto_33

    .line 452
    :sswitch_38
    sget-object v3, Lcom/sec/factory/modules/ModuleDFT;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 454
    .local v0, callstate:I
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "ActionDFTKey"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    if-eq v0, v9, :cond_64

    move v2, v4

    .line 457
    :goto_63
    goto :goto_33

    :cond_64
    move v2, v5

    .line 455
    goto :goto_63

    .line 459
    .end local v0           #callstate:I
    :sswitch_66
    const/4 v2, 0x6

    .line 460
    goto :goto_33

    .line 463
    :sswitch_68
    if-eqz p2, :cond_6d

    const/16 v2, 0x51

    .line 464
    :goto_6c
    goto :goto_33

    .line 463
    :cond_6d
    const/4 v2, 0x7

    goto :goto_6c

    .line 466
    :sswitch_6f
    const/16 v2, 0x8

    .line 467
    goto :goto_33

    .line 469
    :sswitch_72
    const/16 v2, 0x9

    .line 470
    goto :goto_33

    .line 472
    :sswitch_75
    const/16 v2, 0xa

    .line 473
    goto :goto_33

    .line 475
    :sswitch_78
    const/16 v2, 0xb

    .line 476
    goto :goto_33

    .line 478
    :sswitch_7b
    const/16 v2, 0xc

    .line 479
    goto :goto_33

    .line 481
    :sswitch_7e
    const/16 v2, 0xd

    .line 482
    goto :goto_33

    .line 484
    :sswitch_81
    const/16 v2, 0xe

    .line 485
    goto :goto_33

    .line 487
    :sswitch_84
    const/16 v2, 0xf

    .line 488
    goto :goto_33

    .line 490
    :sswitch_87
    const/16 v2, 0x10

    .line 491
    goto :goto_33

    .line 493
    :sswitch_8a
    const/16 v2, 0x12

    .line 494
    goto :goto_33

    .line 496
    :sswitch_8d
    const/16 v2, 0x11

    .line 497
    goto :goto_33

    .line 499
    :sswitch_90
    const/16 v2, 0x13

    .line 500
    goto :goto_33

    .line 502
    :sswitch_93
    const/16 v2, 0x14

    .line 503
    goto :goto_33

    .line 505
    :sswitch_96
    const/16 v2, 0x15

    .line 506
    goto :goto_33

    .line 508
    :sswitch_99
    const/16 v2, 0x16

    .line 509
    goto :goto_33

    .line 512
    :sswitch_9c
    iput-boolean v9, p0, Lcom/sec/factory/modules/ModuleDFT;->mIsSlateCommand:Z

    .line 513
    const/16 v2, 0x42

    .line 514
    goto :goto_33

    .line 517
    :sswitch_a1
    const/16 v2, 0x18

    .line 518
    goto :goto_33

    .line 521
    :sswitch_a4
    const/16 v2, 0x19

    .line 522
    goto :goto_33

    .line 525
    :sswitch_a7
    const/16 v2, 0x1a

    .line 526
    goto :goto_33

    .line 528
    :sswitch_aa
    const/16 v2, 0x1b

    .line 529
    goto :goto_33

    .line 532
    :sswitch_ad
    const/16 v2, 0x52

    .line 533
    goto :goto_33

    .line 537
    :sswitch_b0
    const/4 v2, 0x4

    .line 538
    goto :goto_33

    .line 540
    :sswitch_b2
    const/16 v2, 0x1d

    .line 541
    goto/16 :goto_33

    .line 543
    :sswitch_b6
    const/16 v2, 0x1e

    .line 544
    goto/16 :goto_33

    .line 546
    :sswitch_ba
    const/16 v2, 0x1f

    .line 547
    goto/16 :goto_33

    .line 549
    :sswitch_be
    const/16 v2, 0x20

    .line 550
    goto/16 :goto_33

    .line 552
    :sswitch_c2
    const/16 v2, 0x21

    .line 553
    goto/16 :goto_33

    .line 555
    :sswitch_c6
    const/16 v2, 0x22

    .line 556
    goto/16 :goto_33

    .line 558
    :sswitch_ca
    const/16 v2, 0x23

    .line 559
    goto/16 :goto_33

    .line 561
    :sswitch_ce
    const/16 v2, 0x24

    .line 562
    goto/16 :goto_33

    .line 564
    :sswitch_d2
    const/16 v2, 0x25

    .line 565
    goto/16 :goto_33

    .line 567
    :sswitch_d6
    const/16 v2, 0x26

    .line 568
    goto/16 :goto_33

    .line 570
    :sswitch_da
    const/16 v2, 0x27

    .line 571
    goto/16 :goto_33

    .line 573
    :sswitch_de
    const/16 v2, 0x28

    .line 574
    goto/16 :goto_33

    .line 576
    :sswitch_e2
    const/16 v2, 0x29

    .line 577
    goto/16 :goto_33

    .line 579
    :sswitch_e6
    const/16 v2, 0x2a

    .line 580
    goto/16 :goto_33

    .line 582
    :sswitch_ea
    const/16 v2, 0x2b

    .line 583
    goto/16 :goto_33

    .line 585
    :sswitch_ee
    const/16 v2, 0x2c

    .line 586
    goto/16 :goto_33

    .line 588
    :sswitch_f2
    const/16 v2, 0x2d

    .line 589
    goto/16 :goto_33

    .line 591
    :sswitch_f6
    const/16 v2, 0x2e

    .line 592
    goto/16 :goto_33

    .line 594
    :sswitch_fa
    const/16 v2, 0x2f

    .line 595
    goto/16 :goto_33

    .line 597
    :sswitch_fe
    const/16 v2, 0x30

    .line 598
    goto/16 :goto_33

    .line 600
    :sswitch_102
    const/16 v2, 0x31

    .line 601
    goto/16 :goto_33

    .line 603
    :sswitch_106
    const/16 v2, 0x32

    .line 604
    goto/16 :goto_33

    .line 606
    :sswitch_10a
    const/16 v2, 0x33

    .line 607
    goto/16 :goto_33

    .line 609
    :sswitch_10e
    const/16 v2, 0x34

    .line 610
    goto/16 :goto_33

    .line 612
    :sswitch_112
    const/16 v2, 0x35

    .line 613
    goto/16 :goto_33

    .line 615
    :sswitch_116
    const/16 v2, 0x36

    .line 616
    goto/16 :goto_33

    .line 618
    :sswitch_11a
    const/16 v2, 0x39

    .line 619
    goto/16 :goto_33

    .line 621
    :sswitch_11e
    const/16 v2, 0x3c

    .line 622
    goto/16 :goto_33

    .line 624
    :sswitch_122
    const/16 v2, 0x3f

    .line 625
    goto/16 :goto_33

    .line 627
    :sswitch_126
    const/16 v2, 0x54

    .line 628
    goto/16 :goto_33

    .line 630
    :sswitch_12a
    const/16 v2, 0x37

    .line 631
    goto/16 :goto_33

    .line 633
    :sswitch_12e
    const/16 v2, 0x3e

    .line 634
    goto/16 :goto_33

    .line 636
    :sswitch_132
    const/16 v2, 0x38

    .line 637
    goto/16 :goto_33

    .line 640
    :sswitch_136
    const/16 v2, 0x4c

    .line 641
    goto/16 :goto_33

    .line 643
    :sswitch_13a
    const/16 v2, 0x41

    .line 644
    goto/16 :goto_33

    .line 646
    :sswitch_13e
    const/16 v2, 0xbb

    .line 647
    goto/16 :goto_33

    .line 649
    :sswitch_142
    const/16 v2, 0xe8

    .line 650
    goto/16 :goto_33

    .line 444
    :sswitch_data_146
    .sparse-switch
        0xb -> :sswitch_13a
        0x10 -> :sswitch_68
        0x15 -> :sswitch_36
        0x23 -> :sswitch_8a
        0x2a -> :sswitch_8d
        0x30 -> :sswitch_68
        0x31 -> :sswitch_6f
        0x32 -> :sswitch_72
        0x33 -> :sswitch_75
        0x34 -> :sswitch_78
        0x35 -> :sswitch_7b
        0x36 -> :sswitch_7e
        0x37 -> :sswitch_81
        0x38 -> :sswitch_84
        0x39 -> :sswitch_87
        0x50 -> :sswitch_38
        0x51 -> :sswitch_66
        0x52 -> :sswitch_b0
        0x54 -> :sswitch_a1
        0x55 -> :sswitch_a4
        0x5b -> :sswitch_ad
        0x5c -> :sswitch_b0
        0x63 -> :sswitch_90
        0x64 -> :sswitch_93
        0x65 -> :sswitch_96
        0x66 -> :sswitch_99
        0x72 -> :sswitch_a4
        0x73 -> :sswitch_a1
        0x8c -> :sswitch_9c
        0x8d -> :sswitch_aa
        0x95 -> :sswitch_a7
        0x96 -> :sswitch_142
        0x97 -> :sswitch_ad
        0x98 -> :sswitch_34
        0x9d -> :sswitch_13e
        0xb5 -> :sswitch_126
        0xb6 -> :sswitch_11e
        0xc0 -> :sswitch_f2
        0xc1 -> :sswitch_fe
        0xc2 -> :sswitch_112
        0xc3 -> :sswitch_102
        0xc4 -> :sswitch_d2
        0xc5 -> :sswitch_ea
        0xc6 -> :sswitch_ee
        0xc7 -> :sswitch_10a
        0xc8 -> :sswitch_12a
        0xca -> :sswitch_122
        0xde -> :sswitch_a7
        0xe1 -> :sswitch_11a
        0xe3 -> :sswitch_b2
        0xe4 -> :sswitch_fa
        0xe5 -> :sswitch_be
        0xe6 -> :sswitch_c6
        0xe7 -> :sswitch_ca
        0xe8 -> :sswitch_ce
        0xe9 -> :sswitch_d6
        0xea -> :sswitch_da
        0xeb -> :sswitch_de
        0xec -> :sswitch_f6
        0xed -> :sswitch_116
        0xee -> :sswitch_10e
        0xef -> :sswitch_ba
        0xf0 -> :sswitch_106
        0xf1 -> :sswitch_b6
        0xf2 -> :sswitch_e6
        0xf3 -> :sswitch_e2
        0xf4 -> :sswitch_9c
        0xf5 -> :sswitch_132
        0xf6 -> :sswitch_b0
        0xf7 -> :sswitch_12e
        0xf8 -> :sswitch_c2
        0xfe -> :sswitch_136
    .end sparse-switch
.end method


# virtual methods
.method public DftKey(Ljava/lang/String;)V
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 57
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "DftKey"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 59
    invoke-direct {p0, p1, v4}, Lcom/sec/factory/modules/ModuleDFT;->keymapping(Ljava/lang/String;Z)I

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/sec/factory/modules/ModuleDFT;->ActionDFTkey(IZ)V

    .line 63
    :goto_28
    return-void

    .line 61
    :cond_29
    invoke-direct {p0, p1, v4}, Lcom/sec/factory/modules/ModuleDFT;->keymappingCPO(Ljava/lang/String;Z)I

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/sec/factory/modules/ModuleDFT;->ActionDFTkey(IZ)V

    goto :goto_28
.end method

.method public DftKeyHold(Ljava/lang/String;)V
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 66
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "DftKeyHold"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 68
    invoke-direct {p0, p1, v4}, Lcom/sec/factory/modules/ModuleDFT;->keymapping(Ljava/lang/String;Z)I

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/sec/factory/modules/ModuleDFT;->ActionDFTkey(IZ)V

    .line 72
    :goto_28
    return-void

    .line 70
    :cond_29
    invoke-direct {p0, p1, v4}, Lcom/sec/factory/modules/ModuleDFT;->keymappingCPO(Ljava/lang/String;Z)I

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/sec/factory/modules/ModuleDFT;->ActionDFTkey(IZ)V

    goto :goto_28
.end method

.method public DftMicsd()Ljava/lang/String;
    .registers 6

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, res:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleDFT;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleDevice;->isDetectExternalMemory()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 386
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleDFT;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->isMountedStorage(I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 389
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v1

    if-nez v1, :cond_41

    .line 390
    const-string v0, "\u0002"

    .line 391
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "DftMicsd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDdetect<swmount> = ok:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :goto_40
    return-object v0

    .line 393
    :cond_41
    const-string v0, "AT+MICSD:SON\r\nOK"

    goto :goto_40

    .line 397
    :cond_44
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v1

    if-nez v1, :cond_67

    .line 398
    const-string v0, "\u0001"

    .line 399
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "DftMicsd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDdetect<swunmount> = ok:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 401
    :cond_67
    const-string v0, "AT+MICSD:OFF\r\nOK"

    goto :goto_40

    .line 405
    :cond_6a
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v1

    if-nez v1, :cond_8d

    .line 406
    const-string v0, "\u0000"

    .line 407
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "DftMicsd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDdetect = nok:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 409
    :cond_8d
    const-string v0, "AT+MICSD:OFF\r\nOK"

    goto :goto_40
.end method

.method public DftTouchDown(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "DftTouchDown"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    if-nez v0, :cond_32

    .line 192
    invoke-direct {p0, p1}, Lcom/sec/factory/modules/ModuleDFT;->hexToDec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-direct {p0, p2}, Lcom/sec/factory/modules/ModuleDFT;->hexToDec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 195
    :cond_32
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "DftTouchDown"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleDFT;->x1:Ljava/lang/String;

    .line 197
    iput-object p2, p0, Lcom/sec/factory/modules/ModuleDFT;->y1:Ljava/lang/String;

    .line 198
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/factory/modules/ModuleDFT;->mTouchMoveStatus:I

    .line 199
    return-void
.end method

.method public DftTouchLong()V
    .registers 4

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "DftTouchLong"

    const-string v2, "Touch Long"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget v0, p0, Lcom/sec/factory/modules/ModuleDFT;->mTouchMoveStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 236
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/modules/ModuleDFT;->mTouchMoveStatus:I

    .line 238
    :cond_11
    return-void
.end method

.method public DftTouchMove()V
    .registers 4

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "DftTouchMode"

    const-string v2, "Touch Move"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget v0, p0, Lcom/sec/factory/modules/ModuleDFT;->mTouchMoveStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 229
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/modules/ModuleDFT;->mTouchMoveStatus:I

    .line 231
    :cond_11
    return-void
.end method

.method public DftTouchUp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 210
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    if-nez v0, :cond_e

    .line 211
    invoke-direct {p0, p1}, Lcom/sec/factory/modules/ModuleDFT;->hexToDec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-direct {p0, p2}, Lcom/sec/factory/modules/ModuleDFT;->hexToDec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 214
    :cond_e
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "DftTouchUp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget v0, p0, Lcom/sec/factory/modules/ModuleDFT;->mTouchMoveStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_47

    .line 216
    iget v1, p0, Lcom/sec/factory/modules/ModuleDFT;->mTouchMoveStatus:I

    iget-object v2, p0, Lcom/sec/factory/modules/ModuleDFT;->x1:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/factory/modules/ModuleDFT;->y1:Ljava/lang/String;

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/factory/modules/ModuleDFT;->ActionDFTTouch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_43
    :goto_43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/factory/modules/ModuleDFT;->mTouchMoveStatus:I

    .line 224
    return-void

    .line 217
    :cond_47
    iget v0, p0, Lcom/sec/factory/modules/ModuleDFT;->mTouchMoveStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_59

    .line 218
    iget v1, p0, Lcom/sec/factory/modules/ModuleDFT;->mTouchMoveStatus:I

    iget-object v2, p0, Lcom/sec/factory/modules/ModuleDFT;->x1:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/factory/modules/ModuleDFT;->y1:Ljava/lang/String;

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/factory/modules/ModuleDFT;->ActionDFTTouch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    .line 219
    :cond_59
    iget v0, p0, Lcom/sec/factory/modules/ModuleDFT;->mTouchMoveStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_43

    .line 220
    iget v1, p0, Lcom/sec/factory/modules/ModuleDFT;->mTouchMoveStatus:I

    iget-object v2, p0, Lcom/sec/factory/modules/ModuleDFT;->x1:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/factory/modules/ModuleDFT;->y1:Ljava/lang/String;

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/factory/modules/ModuleDFT;->ActionDFTTouch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43
.end method

.method public makeSMS(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .parameter "smsBox"
    .parameter "smsNumber"
    .parameter "smsMessage"

    .prologue
    const/4 v3, 0x1

    .line 420
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 421
    .local v2, valuesSMSInBox:Landroid/content/ContentValues;
    const-string v4, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    const-string v4, "date"

    new-instance v5, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 423
    const-string v4, "address"

    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v4, "body"

    const/4 v5, 0x2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {p3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :try_start_32
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleDFT;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 428
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_39
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_32 .. :try_end_39} :catch_3a

    .line 433
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :goto_39
    return v3

    .line 429
    :catch_3a
    move-exception v0

    .line 430
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    .line 431
    const/4 v3, 0x0

    goto :goto_39
.end method
