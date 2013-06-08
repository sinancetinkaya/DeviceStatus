.class public Lcom/sec/factory/app/ui/UITspPattern$MyView;
.super Landroid/view/View;
.source "UITspPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UITspPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyView"
.end annotation


# instance fields
.field private isTouchDown:Z

.field private mClickPaint:Landroid/graphics/Paint;

.field private mEmptyPaint:Landroid/graphics/Paint;

.field private mLineBitmap:Landroid/graphics/Bitmap;

.field private mLineCanvas:Landroid/graphics/Canvas;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mMatrixBitmap:Landroid/graphics/Bitmap;

.field private mMatrixCanvas:Landroid/graphics/Canvas;

.field private mNonClickPaint:Landroid/graphics/Paint;

.field private mPreTouchedX:F

.field private mPreTouchedY:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTouchedX:F

.field private mTouchedY:F

.field final synthetic this$0:Lcom/sec/factory/app/ui/UITspPattern;


# direct methods
.method public constructor <init>(Lcom/sec/factory/app/ui/UITspPattern;Landroid/content/Context;)V
    .registers 9
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 283
    iput-object p1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    .line 284
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 266
    iput v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mPreTouchedX:F

    .line 267
    iput v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mPreTouchedY:F

    .line 268
    iput v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedX:F

    .line 269
    iput v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedY:F

    .line 285
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/factory/app/ui/UITspPattern$MyView;->setKeepScreenOn(Z)V

    .line 287
    const-string v2, "window"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 289
    .local v0, mDisplay:Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 290
    .local v1, outpoint:Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 291
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mScreenWidth:I

    .line 292
    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mScreenHeight:I

    .line 293
    iget-object v2, p1, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "MyView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mScreenWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mScreenHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mScreenWidth:I

    iget v3, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mScreenHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    .line 298
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    .line 299
    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 301
    iget v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mScreenWidth:I

    iget v3, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mScreenHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mLineBitmap:Landroid/graphics/Bitmap;

    .line 302
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mLineBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mLineCanvas:Landroid/graphics/Canvas;

    .line 304
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspPattern$MyView;->setPaint()V

    .line 305
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspPattern$MyView;->initRect()V

    .line 307
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->isTouchDown:Z

    .line 308
    return-void
.end method

.method private drawLine(FFFF)V
    .registers 15
    .parameter "preX"
    .parameter "preY"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mLineCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mLinePaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 426
    const/4 v8, 0x0

    .local v8, lowX:I
    const/4 v9, 0x0

    .local v9, lowY:I
    const/4 v6, 0x0

    .local v6, highX:I
    const/4 v7, 0x0

    .line 427
    .local v7, highY:I
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_2c

    .line 428
    float-to-int v6, p1

    .line 429
    float-to-int v8, p3

    .line 434
    :goto_15
    cmpl-float v0, p2, p4

    if-ltz v0, :cond_2f

    .line 435
    float-to-int v7, p2

    .line 436
    float-to-int v9, p4

    .line 441
    :goto_1b
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v1, v8, -0x6

    add-int/lit8 v2, v9, -0x6

    add-int/lit8 v3, v6, 0x6

    add-int/lit8 v4, v7, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspPattern$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 442
    return-void

    .line 431
    :cond_2c
    float-to-int v6, p3

    .line 432
    float-to-int v8, p1

    goto :goto_15

    .line 438
    :cond_2f
    float-to-int v7, p4

    .line 439
    float-to-int v9, p2

    goto :goto_1b
.end method

.method private drawPoint(FF)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mLineCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 446
    new-instance v0, Landroid/graphics/Rect;

    float-to-int v1, p1

    add-int/lit8 v1, v1, -0x6

    float-to-int v2, p2

    add-int/lit8 v2, v2, -0x6

    float-to-int v3, p1

    add-int/lit8 v3, v3, 0x6

    float-to-int v4, p2

    add-int/lit8 v4, v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspPattern$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 447
    return-void
.end method

.method private drawRect(FFLandroid/graphics/Paint;)V
    .registers 16
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 486
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mScreenHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPattern;->access$200(Lcom/sec/factory/app/ui/UITspPattern;)I

    move-result v1

    int-to-float v1, v1

    div-float v8, v0, v1

    .line 487
    .local v8, col_height:F
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mScreenWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPattern;->access$300(Lcom/sec/factory/app/ui/UITspPattern;)I

    move-result v1

    int-to-float v1, v1

    div-float v9, v0, v1

    .line 489
    .local v9, col_width:F
    div-float v0, p1, v9

    float-to-int v10, v0

    .line 490
    .local v10, countX:I
    div-float v0, p2, v8

    float-to-int v11, v0

    .line 492
    .local v11, countY:I
    int-to-float v0, v10

    mul-float v6, v9, v0

    .line 493
    .local v6, ColX:F
    int-to-float v0, v11

    mul-float v7, v8, v0

    .line 496
    .local v7, ColY:F
    if-ltz v11, :cond_3c

    if-ltz v10, :cond_3c

    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspPattern;->access$200(Lcom/sec/factory/app/ui/UITspPattern;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v11, v0, :cond_3c

    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspPattern;->access$300(Lcom/sec/factory/app/ui/UITspPattern;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v10, v0, :cond_48

    .line 497
    :cond_3c
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "drawRect"

    const-string v2, "You are out of bounds!"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_47
    :goto_47
    return-void

    .line 500
    :cond_48
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->draw:[[Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspPattern;->access$400(Lcom/sec/factory/app/ui/UITspPattern;)[[Z

    move-result-object v0

    aget-object v0, v0, v11

    aget-boolean v0, v0, v10

    if-nez v0, :cond_d8

    .line 501
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->draw:[[Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspPattern;->access$400(Lcom/sec/factory/app/ui/UITspPattern;)[[Z

    move-result-object v0

    aget-object v0, v0, v11

    const/4 v1, 0x1

    aput-boolean v1, v0, v10

    .line 502
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "drawRect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "draw["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->draw:[[Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspPattern;->access$400(Lcom/sec/factory/app/ui/UITspPattern;)[[Z

    move-result-object v0

    aget-object v0, v0, v11

    aget-boolean v0, v0, v10

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10a

    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->isDrawArea:[[Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspPattern;->access$600(Lcom/sec/factory/app/ui/UITspPattern;)[[Z

    move-result-object v0

    aget-object v0, v0, v11

    aget-boolean v0, v0, v10

    if-eqz v0, :cond_10a

    .line 504
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    float-to-int v1, v6

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    float-to-int v2, v7

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    add-float v3, v6, v9

    float-to-int v3, v3

    int-to-float v3, v3

    add-float v4, v7, v8

    float-to-int v4, v4

    int-to-float v4, v4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 510
    :goto_ba
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, 0x3f80

    sub-float v1, v6, v1

    float-to-int v1, v1

    const/high16 v2, 0x3f80

    sub-float v2, v7, v2

    float-to-int v2, v2

    add-float v3, v6, v9

    const/high16 v4, 0x3f80

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-float v4, v7, v8

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspPattern$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 513
    :cond_d8
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #calls: Lcom/sec/factory/app/ui/UITspPattern;->isPass()Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspPattern;->access$700(Lcom/sec/factory/app/ui/UITspPattern;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 514
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->successTest:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspPattern;->access$800(Lcom/sec/factory/app/ui/UITspPattern;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 515
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    const/4 v1, 0x0

    #setter for: Lcom/sec/factory/app/ui/UITspPattern;->successTest:Z
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UITspPattern;->access$802(Lcom/sec/factory/app/ui/UITspPattern;Z)Z

    .line 516
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->remoteCall:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspPattern;->access$900(Lcom/sec/factory/app/ui/UITspPattern;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_fd

    .line 517
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/factory/app/ui/UITspPattern;->setResult(I)V

    .line 520
    :cond_fd
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/factory/app/ui/UITspPattern;->setResult(I)V

    .line 521
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UITspPattern;->finish()V

    goto/16 :goto_47

    .line 507
    :cond_10a
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    float-to-int v1, v6

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    float-to-int v2, v7

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    add-float v3, v6, v9

    float-to-int v3, v3

    int-to-float v3, v3

    add-float v4, v7, v8

    float-to-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mNonClickPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_ba

    .line 527
    :cond_122
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/factory/app/ui/UITspPattern;->setResult(I)V

    .line 528
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UITspPattern;->finish()V

    goto/16 :goto_47
.end method

.method private initRect()V
    .registers 20

    .prologue
    .line 450
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mScreenHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UITspPattern;->access$200(Lcom/sec/factory/app/ui/UITspPattern;)I

    move-result v2

    int-to-float v2, v2

    div-float v15, v1, v2

    .line 451
    .local v15, col_height:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mScreenWidth:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UITspPattern;->access$300(Lcom/sec/factory/app/ui/UITspPattern;)I

    move-result v2

    int-to-float v2, v2

    div-float v16, v1, v2

    .line 452
    .local v16, col_width:F
    const/4 v13, 0x0

    .line 453
    .local v13, ColX:I
    const/4 v14, 0x0

    .line 455
    .local v14, ColY:I
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 456
    .local v6, mRectPaint:Landroid/graphics/Paint;
    const/high16 v1, -0x100

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 458
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPattern;->access$200(Lcom/sec/factory/app/ui/UITspPattern;)I

    move-result v1

    move/from16 v0, v17

    if-ge v0, v1, :cond_91

    .line 459
    move/from16 v0, v17

    int-to-float v1, v0

    mul-float/2addr v1, v15

    float-to-int v14, v1

    .line 461
    const/16 v18, 0x0

    .local v18, j:I
    :goto_41
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPattern;->access$300(Lcom/sec/factory/app/ui/UITspPattern;)I

    move-result v1

    move/from16 v0, v18

    if-ge v0, v1, :cond_8e

    .line 463
    move/from16 v0, v18

    int-to-float v1, v0

    mul-float v1, v1, v16

    float-to-int v13, v1

    .line 465
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v2, v13

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mScreenWidth:I

    int-to-float v4, v4

    int-to-float v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v2, v13

    int-to-float v3, v14

    int-to-float v4, v13

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mScreenHeight:I

    int-to-float v5, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->draw:[[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPattern;->access$400(Lcom/sec/factory/app/ui/UITspPattern;)[[Z

    move-result-object v1

    aget-object v1, v1, v17

    const/4 v2, 0x0

    aput-boolean v2, v1, v18

    .line 469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->click:[[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPattern;->access$500(Lcom/sec/factory/app/ui/UITspPattern;)[[Z

    move-result-object v1

    aget-object v1, v1, v17

    const/4 v2, 0x0

    aput-boolean v2, v1, v18

    .line 461
    add-int/lit8 v18, v18, 0x1

    goto :goto_41

    .line 458
    :cond_8e
    add-int/lit8 v17, v17, 0x1

    goto :goto_2e

    .line 472
    .end local v18           #j:I
    :cond_91
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    const/high16 v1, 0x3f80

    add-float v8, v16, v1

    const/high16 v1, 0x3f80

    add-float v9, v15, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPattern;->access$300(Lcom/sec/factory/app/ui/UITspPattern;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float v1, v1, v16

    const/high16 v2, 0x3f80

    sub-float v10, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPattern;->access$200(Lcom/sec/factory/app/ui/UITspPattern;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, v15

    const/high16 v2, 0x3f80

    sub-float v11, v1, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPattern;->access$300(Lcom/sec/factory/app/ui/UITspPattern;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float v1, v1, v16

    const/high16 v2, 0x3f80

    add-float v8, v1, v2

    const/high16 v1, 0x3f80

    add-float v9, v15, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPattern;->access$300(Lcom/sec/factory/app/ui/UITspPattern;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float v1, v1, v16

    const/high16 v2, 0x3f80

    sub-float v10, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPattern;->access$200(Lcom/sec/factory/app/ui/UITspPattern;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, v15

    const/high16 v2, 0x3f80

    sub-float v11, v1, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    const/high16 v1, 0x3f80

    add-float v8, v16, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPattern;->access$200(Lcom/sec/factory/app/ui/UITspPattern;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v15

    const/high16 v2, 0x3f80

    add-float v9, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPattern;->access$300(Lcom/sec/factory/app/ui/UITspPattern;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float v1, v1, v16

    const/high16 v2, 0x3f80

    sub-float v10, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPattern;->access$200(Lcom/sec/factory/app/ui/UITspPattern;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, v15

    const/high16 v2, 0x3f80

    sub-float v11, v1, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPattern;->access$300(Lcom/sec/factory/app/ui/UITspPattern;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float v1, v1, v16

    const/high16 v2, 0x3f80

    add-float v8, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPattern;->access$200(Lcom/sec/factory/app/ui/UITspPattern;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v15

    const/high16 v2, 0x3f80

    add-float v9, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPattern;->access$300(Lcom/sec/factory/app/ui/UITspPattern;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float v1, v1, v16

    const/high16 v2, 0x3f80

    sub-float v10, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPattern;->access$200(Lcom/sec/factory/app/ui/UITspPattern;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, v15

    const/high16 v2, 0x3f80

    sub-float v11, v1, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 483
    return-void
.end method

.method private setPaint()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    const/high16 v4, -0x100

    const/4 v3, 0x0

    .line 311
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mLinePaint:Landroid/graphics/Paint;

    .line 312
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 313
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 314
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 315
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 316
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 317
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 318
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 319
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_86

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 322
    .local v0, e:Landroid/graphics/PathEffect;
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 323
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mClickPaint:Landroid/graphics/Paint;

    .line 326
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 327
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mClickPaint:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mNonClickPaint:Landroid/graphics/Paint;

    .line 330
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mNonClickPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 331
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mNonClickPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    .line 334
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 335
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    return-void

    .line 319
    nop

    :array_86
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 340
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 341
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 342
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 349
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    iget-object v3, v3, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "onTouchEvent"

    const-string v5, "Touch is working !"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #getter for: Lcom/sec/factory/app/ui/UITspPattern;->dialog_showing:Z
    invoke-static {v3}, Lcom/sec/factory/app/ui/UITspPattern;->access$100(Lcom/sec/factory/app/ui/UITspPattern;)Z

    move-result v3

    if-nez v3, :cond_32

    if-le v2, v6, :cond_32

    .line 352
    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    #setter for: Lcom/sec/factory/app/ui/UITspPattern;->dialog_showing:Z
    invoke-static {v2, v6}, Lcom/sec/factory/app/ui/UITspPattern;->access$102(Lcom/sec/factory/app/ui/UITspPattern;Z)Z

    .line 355
    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    const-class v5, Lcom/sec/factory/app/ui/UITouchTestGhost;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3, v0}, Lcom/sec/factory/app/ui/UITspPattern;->startActivityForResult(Landroid/content/Intent;I)V

    .line 359
    :cond_32
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3a

    .line 421
    :cond_39
    :goto_39
    return v6

    .line 362
    :cond_3a
    packed-switch v1, :pswitch_data_19e

    goto :goto_39

    .line 365
    :pswitch_3e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedX:F

    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedY:F

    .line 367
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onTouchEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_DOWN mTouchedX :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onTouchEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_DOWN mTouchedY :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedX:F

    iget v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedY:F

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/factory/app/ui/UITspPattern$MyView;->drawRect(FFLandroid/graphics/Paint;)V

    .line 372
    iput-boolean v6, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->isTouchDown:Z

    goto :goto_39

    .line 377
    :pswitch_92
    iget-boolean v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->isTouchDown:Z

    if-eqz v1, :cond_39

    .line 378
    :goto_96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    if-ge v0, v1, :cond_c7

    .line 379
    iget v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedX:F

    iput v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mPreTouchedX:F

    .line 380
    iget v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedY:F

    iput v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mPreTouchedY:F

    .line 382
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v1

    iput v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedX:F

    .line 383
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v1

    iput v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedY:F

    .line 385
    iget v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedX:F

    iget v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedY:F

    iget-object v3, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/factory/app/ui/UITspPattern$MyView;->drawRect(FFLandroid/graphics/Paint;)V

    .line 386
    iget v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mPreTouchedX:F

    iget v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mPreTouchedY:F

    iget v3, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedX:F

    iget v4, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedY:F

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sec/factory/app/ui/UITspPattern$MyView;->drawLine(FFFF)V

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    .line 388
    :cond_c7
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedX:F

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mPreTouchedX:F

    .line 389
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedY:F

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mPreTouchedY:F

    .line 391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedX:F

    .line 392
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedY:F

    .line 393
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onTouchEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_MOVE mTouchedX :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onTouchEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_MOVE mTouchedY :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedX:F

    iget v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedY:F

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/factory/app/ui/UITspPattern$MyView;->drawRect(FFLandroid/graphics/Paint;)V

    .line 397
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mPreTouchedX:F

    iget v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mPreTouchedY:F

    iget v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedX:F

    iget v3, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedY:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/factory/app/ui/UITspPattern$MyView;->drawLine(FFFF)V

    .line 399
    iput-boolean v6, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->isTouchDown:Z

    goto/16 :goto_39

    .line 404
    :pswitch_12f
    iget-boolean v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->isTouchDown:Z

    if-eqz v1, :cond_39

    .line 405
    iget v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedX:F

    iput v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mPreTouchedX:F

    .line 406
    iget v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedY:F

    iput v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mPreTouchedY:F

    .line 408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedX:F

    .line 409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedY:F

    .line 410
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onTouchEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_UP mTouchedX :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onTouchEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_UP mTouchedY :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mPreTouchedX:F

    iget v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedX:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_19a

    iget v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mPreTouchedY:F

    iget v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedY:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_19a

    .line 414
    iget v1, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedX:F

    iget v2, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->mTouchedY:F

    invoke-direct {p0, v1, v2}, Lcom/sec/factory/app/ui/UITspPattern$MyView;->drawPoint(FF)V

    .line 417
    :cond_19a
    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UITspPattern$MyView;->isTouchDown:Z

    goto/16 :goto_39

    .line 362
    :pswitch_data_19e
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_12f
        :pswitch_92
    .end packed-switch
.end method
