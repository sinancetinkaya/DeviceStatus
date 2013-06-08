.class public Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;
.super Landroid/view/View;
.source "UISpenAccuracyTestStyleX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;
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

.field final synthetic this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;


# direct methods
.method public constructor <init>(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;Landroid/content/Context;)V
    .registers 10
    .parameter
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v2, 0x0

    .line 365
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    .line 366
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 348
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mPreTouchedX:F

    .line 349
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mPreTouchedY:F

    .line 350
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedX:F

    .line 351
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedY:F

    .line 367
    invoke-virtual {p0, v6}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->setKeepScreenOn(Z)V

    .line 369
    const-string v2, "window"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 371
    .local v0, mDisplay:Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 372
    .local v1, outpoint:Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 373
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenWidth:I

    .line 374
    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenHeight:I

    .line 376
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenWidth:I

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    .line 378
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    .line 379
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 381
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenWidth:I

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mLineBitmap:Landroid/graphics/Bitmap;

    .line 382
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mLineBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mLineCanvas:Landroid/graphics/Canvas;

    .line 384
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->setPaint()V

    .line 385
    #calls: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->isDeadZoneModels()Z
    invoke-static {p1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)Z

    move-result v2

    if-ne v2, v6, :cond_9d

    .line 386
    const/16 v2, 0xa

    #setter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->BOTTOM_MARGIN:I
    invoke-static {p1, v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$202(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;I)I

    .line 387
    #setter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->TOP_MARGIN:I
    invoke-static {p1, v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$302(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;I)I

    .line 388
    #setter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->LEFT_MARGIN:I
    invoke-static {p1, v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$402(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;I)I

    .line 389
    #setter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->RIGHT_MARGIN:I
    invoke-static {p1, v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$502(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;I)I

    .line 391
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenHeight:I

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->TOP_MARGIN:I
    invoke-static {p1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenHeight:I

    .line 392
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenHeight:I

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->BOTTOM_MARGIN:I
    invoke-static {p1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$200(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenHeight:I

    .line 393
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenWidth:I

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->LEFT_MARGIN:I
    invoke-static {p1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenWidth:I

    .line 394
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenWidth:I

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->RIGHT_MARGIN:I
    invoke-static {p1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$500(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenWidth:I

    .line 395
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->drawDeadzone()V

    .line 397
    :cond_9d
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->initRect()V

    .line 399
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->isTouchDown:Z

    .line 400
    return-void
.end method

.method private checkPassNfinishEpenTest()V
    .registers 3

    .prologue
    .line 696
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #calls: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->isPass()Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1500(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->passFlag:I
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1600(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v0

    if-nez v0, :cond_22

    .line 697
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1608(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    .line 698
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mIsWacom:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$600(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 699
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #calls: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->finishEpentest()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)V

    .line 710
    :cond_22
    :goto_22
    return-void

    .line 701
    :cond_23
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->remoteCall:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1800(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 702
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->setResult(I)V

    .line 704
    :cond_32
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->finish()V

    goto :goto_22
.end method

.method private drawByEvent(Landroid/view/MotionEvent;)V
    .registers 9
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 452
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 454
    .local v0, action:I
    packed-switch v0, :pswitch_data_b6

    .line 506
    :cond_8
    :goto_8
    return-void

    .line 456
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedX:F

    .line 457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedY:F

    .line 459
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedX:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedY:F

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->drawRect(FFLandroid/graphics/Paint;)V

    .line 461
    iput-boolean v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->isTouchDown:Z

    goto :goto_8

    .line 466
    :pswitch_21
    iget-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->isTouchDown:Z

    if-eqz v2, :cond_8

    .line 467
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 468
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedX:F

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mPreTouchedX:F

    .line 469
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedY:F

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mPreTouchedY:F

    .line 471
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedX:F

    .line 472
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedY:F

    .line 474
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedX:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedY:F

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->drawRect(FFLandroid/graphics/Paint;)V

    .line 475
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mPreTouchedX:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mPreTouchedY:F

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedX:F

    iget v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedY:F

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->drawLine(FFFF)V

    .line 467
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 477
    :cond_57
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedX:F

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mPreTouchedX:F

    .line 478
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedY:F

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mPreTouchedY:F

    .line 480
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedX:F

    .line 481
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedY:F

    .line 483
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedX:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedY:F

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->drawRect(FFLandroid/graphics/Paint;)V

    .line 484
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mPreTouchedX:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mPreTouchedY:F

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedX:F

    iget v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedY:F

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->drawLine(FFFF)V

    .line 486
    iput-boolean v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->isTouchDown:Z

    goto :goto_8

    .line 491
    .end local v1           #i:I
    :pswitch_82
    iget-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->isTouchDown:Z

    if-eqz v2, :cond_8

    .line 492
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedX:F

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mPreTouchedX:F

    .line 493
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedY:F

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mPreTouchedY:F

    .line 495
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedX:F

    .line 496
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedY:F

    .line 498
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mPreTouchedX:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_b1

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mPreTouchedY:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_b1

    .line 499
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedX:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mTouchedY:F

    invoke-direct {p0, v2, v3}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->drawPoint(FF)V

    .line 502
    :cond_b1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->isTouchDown:Z

    goto/16 :goto_8

    .line 454
    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_9
        :pswitch_82
        :pswitch_21
    .end packed-switch
.end method

.method private drawDeadzone()V
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 534
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 535
    .local v5, paint:Landroid/graphics/Paint;
    const/high16 v0, -0x100

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 536
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 537
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->LEFT_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenWidth:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->RIGHT_MARGIN:I
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$500(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v3, v2

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->TOP_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 538
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->LEFT_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    int-to-float v3, v2

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->TOP_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenHeight:I

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->BOTTOM_MARGIN:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$200(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 539
    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->LEFT_MARGIN:I
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v0

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenWidth:I

    add-int/2addr v0, v2

    int-to-float v7, v0

    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->LEFT_MARGIN:I
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v0

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenWidth:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->RIGHT_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$500(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v9, v0

    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->TOP_MARGIN:I
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v0

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenHeight:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->BOTTOM_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$200(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v10, v0

    move v8, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 540
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->TOP_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->LEFT_MARGIN:I
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v3

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->RIGHT_MARGIN:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$500(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->TOP_MARGIN:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v4

    iget v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenHeight:I

    add-int/2addr v4, v6

    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->BOTTOM_MARGIN:I
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$200(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 541
    return-void
.end method

.method private drawLine(FFFF)V
    .registers 15
    .parameter "preX"
    .parameter "preY"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mLineCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mLinePaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 510
    const/4 v8, 0x0

    .local v8, lowX:I
    const/4 v9, 0x0

    .local v9, lowY:I
    const/4 v6, 0x0

    .local v6, highX:I
    const/4 v7, 0x0

    .line 511
    .local v7, highY:I
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_2c

    .line 512
    float-to-int v6, p1

    .line 513
    float-to-int v8, p3

    .line 518
    :goto_15
    cmpl-float v0, p2, p4

    if-ltz v0, :cond_2f

    .line 519
    float-to-int v7, p2

    .line 520
    float-to-int v9, p4

    .line 525
    :goto_1b
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v1, v8, -0x6

    add-int/lit8 v2, v9, -0x6

    add-int/lit8 v3, v6, 0x6

    add-int/lit8 v4, v7, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 526
    return-void

    .line 515
    :cond_2c
    float-to-int v6, p3

    .line 516
    float-to-int v8, p1

    goto :goto_15

    .line 522
    :cond_2f
    float-to-int v7, p4

    .line 523
    float-to-int v9, p2

    goto :goto_1b
.end method

.method private drawPoint(FF)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mLineCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 530
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

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 531
    return-void
.end method

.method private drawRect(FFLandroid/graphics/Paint;)V
    .registers 19
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 613
    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    int-to-float v2, v2

    div-float v9, v1, v2

    .line 614
    .local v9, col_height:F
    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->WIDTH_BASIS:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$800(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    int-to-float v2, v2

    div-float v10, v1, v2

    .line 616
    .local v10, col_width:F
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->LEFT_MARGIN:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    div-float/2addr v1, v10

    float-to-int v11, v1

    .line 617
    .local v11, countX:I
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->TOP_MARGIN:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    div-float/2addr v1, v9

    float-to-int v12, v1

    .line 619
    .local v12, countY:I
    int-to-float v1, v11

    mul-float/2addr v1, v10

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->LEFT_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    int-to-float v2, v2

    add-float v7, v1, v2

    .line 620
    .local v7, ColX:F
    int-to-float v1, v12

    mul-float/2addr v1, v9

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->TOP_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    int-to-float v2, v2

    add-float v8, v1, v2

    .line 623
    .local v8, ColY:F
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v12, v1, :cond_58

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->WIDTH_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$800(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v11, v1, :cond_60

    .line 624
    :cond_58
    const-string v1, "UISpenAccuracyTestStyleX"

    const-string v2, "You are out of bounds!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :goto_5f
    return-void

    .line 627
    :cond_60
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw:[[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$900(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[[Z

    move-result-object v1

    aget-object v1, v1, v12

    aget-boolean v1, v1, v11

    if-nez v1, :cond_3e2

    .line 628
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw:[[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$900(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[[Z

    move-result-object v1

    aget-object v1, v1, v12

    const/4 v2, 0x1

    aput-boolean v2, v1, v11

    .line 629
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw:[[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$900(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[[Z

    move-result-object v1

    aget-object v1, v1, v12

    aget-boolean v1, v1, v11

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a7

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->isDrawArea:[[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1200(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[[Z

    move-result-object v1

    aget-object v1, v1, v12

    aget-boolean v1, v1, v11

    if-eqz v1, :cond_a7

    .line 630
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    float-to-int v2, v7

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    float-to-int v3, v8

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    add-float v4, v7, v10

    float-to-int v4, v4

    int-to-float v4, v4

    add-float v5, v8, v9

    float-to-int v5, v5

    int-to-float v5, v5

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 633
    :cond_a7
    const/4 v1, 0x1

    if-eq v12, v1, :cond_b4

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ne v12, v1, :cond_3c4

    .line 634
    :cond_b4
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw_CrossA:[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1300(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Z

    move-result-object v1

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-nez v1, :cond_fd

    .line 635
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v6

    const/4 v14, 0x0

    aget-object v6, v6, v14

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 638
    :cond_fd
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw_CrossA:[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1300(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Z

    move-result-object v1

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-nez v1, :cond_146

    .line 639
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v6

    const/4 v14, 0x1

    aget-object v6, v6, v14

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 642
    :cond_146
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw_CrossA:[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1300(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Z

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    mul-int/lit8 v2, v2, 0x2

    aget-boolean v1, v1, v2

    if-nez v1, :cond_1bc

    .line 643
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    mul-int/lit8 v4, v4, 0x2

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    mul-int/lit8 v5, v5, 0x2

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    mul-int/lit8 v6, v6, 0x2

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v6

    iget-object v14, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v14}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v14

    add-int/lit8 v14, v14, -0x3

    mul-int/lit8 v14, v14, 0x2

    aget-object v6, v6, v14

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 646
    :cond_1bc
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw_CrossA:[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1300(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Z

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-boolean v1, v1, v2

    if-nez v1, :cond_23c

    .line 647
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v6

    iget-object v14, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v14}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v14

    add-int/lit8 v14, v14, -0x3

    mul-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, 0x1

    aget-object v6, v6, v14

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 650
    :cond_23c
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw_CrossB:[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1400(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Z

    move-result-object v1

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-nez v1, :cond_285

    .line 651
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v6

    const/4 v14, 0x0

    aget-object v6, v6, v14

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 654
    :cond_285
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw_CrossB:[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1400(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Z

    move-result-object v1

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-nez v1, :cond_2ce

    .line 655
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v6

    const/4 v14, 0x1

    aget-object v6, v6, v14

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 658
    :cond_2ce
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw_CrossB:[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1400(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Z

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    mul-int/lit8 v2, v2, 0x2

    aget-boolean v1, v1, v2

    if-nez v1, :cond_344

    .line 659
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    mul-int/lit8 v4, v4, 0x2

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    mul-int/lit8 v5, v5, 0x2

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    mul-int/lit8 v6, v6, 0x2

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v6

    iget-object v14, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v14}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v14

    add-int/lit8 v14, v14, -0x3

    mul-int/lit8 v14, v14, 0x2

    aget-object v6, v6, v14

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 662
    :cond_344
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw_CrossB:[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1400(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Z

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-boolean v1, v1, v2

    if-nez v1, :cond_3c4

    .line 663
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v6

    iget-object v14, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v14}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v14

    add-int/lit8 v14, v14, -0x3

    mul-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, 0x1

    aget-object v6, v6, v14

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 667
    :cond_3c4
    new-instance v1, Landroid/graphics/Rect;

    const/high16 v2, 0x3f80

    sub-float v2, v7, v2

    float-to-int v2, v2

    const/high16 v3, 0x3f80

    sub-float v3, v8, v3

    float-to-int v3, v3

    add-float v4, v7, v10

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-float v5, v8, v9

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 673
    :cond_3e2
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3e3
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    mul-int/lit8 v1, v1, 0x2

    if-ge v13, v1, :cond_4cb

    .line 674
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v1

    aget-object v1, v1, v13

    move/from16 v0, p1

    float-to-int v2, v0

    move/from16 v0, p2

    float-to-int v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_45b

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw_CrossA:[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1300(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Z

    move-result-object v1

    aget-boolean v1, v1, v13

    if-nez v1, :cond_45b

    .line 675
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw_CrossA:[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1300(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Z

    move-result-object v1

    const/4 v2, 0x1

    aput-boolean v2, v1, v13

    .line 676
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v3

    aget-object v3, v3, v13

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v4

    aget-object v4, v4, v13

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v5

    aget-object v5, v5, v13

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v6

    aget-object v6, v6, v13

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 678
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v1

    aget-object v1, v1, v13

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 681
    :cond_45b
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v1

    aget-object v1, v1, v13

    move/from16 v0, p1

    float-to-int v2, v0

    move/from16 v0, p2

    float-to-int v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_4c7

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw_CrossB:[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1400(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Z

    move-result-object v1

    aget-boolean v1, v1, v13

    if-nez v1, :cond_4c7

    .line 682
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw_CrossB:[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1400(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Z

    move-result-object v1

    const/4 v2, 0x1

    aput-boolean v2, v1, v13

    .line 683
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v3

    aget-object v3, v3, v13

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v4

    aget-object v4, v4, v13

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v5

    aget-object v5, v5, v13

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v6

    aget-object v6, v6, v13

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 685
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v1

    aget-object v1, v1, v13

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 673
    :cond_4c7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3e3

    .line 692
    :cond_4cb
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->checkPassNfinishEpenTest()V

    goto/16 :goto_5f
.end method

.method private initRect()V
    .registers 22

    .prologue
    .line 544
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    int-to-float v2, v2

    div-float v15, v1, v2

    .line 545
    .local v15, col_height:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenWidth:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->WIDTH_BASIS:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$800(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    int-to-float v2, v2

    div-float v16, v1, v2

    .line 546
    .local v16, col_width:F
    const/4 v13, 0x0

    .line 547
    .local v13, ColX:I
    const/4 v14, 0x0

    .line 549
    .local v14, ColY:I
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 550
    .local v6, mRectPaint:Landroid/graphics/Paint;
    const/high16 v1, -0x100

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 552
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v1

    move/from16 v0, v18

    if-ge v0, v1, :cond_aa

    .line 553
    move/from16 v0, v18

    int-to-float v1, v0

    mul-float/2addr v1, v15

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->TOP_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    add-int v14, v1, v2

    .line 555
    const/16 v19, 0x0

    .local v19, j:I
    :goto_4b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->WIDTH_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$800(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v1

    move/from16 v0, v19

    if-ge v0, v1, :cond_a7

    .line 557
    move/from16 v0, v19

    int-to-float v1, v0

    mul-float v1, v1, v16

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->LEFT_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    add-int v13, v1, v2

    .line 559
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v2, v13

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->LEFT_MARGIN:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenWidth:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v2, v13

    int-to-float v3, v14

    int-to-float v4, v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->TOP_MARGIN:I
    invoke-static {v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mScreenHeight:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw:[[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$900(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[[Z

    move-result-object v1

    aget-object v1, v1, v18

    const/4 v2, 0x0

    aput-boolean v2, v1, v19

    .line 555
    add-int/lit8 v19, v19, 0x1

    goto :goto_4b

    .line 552
    :cond_a7
    add-int/lit8 v18, v18, 0x1

    goto :goto_2e

    .line 566
    .end local v19           #j:I
    :cond_aa
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    const/high16 v1, 0x3f80

    add-float v1, v1, v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->LEFT_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    int-to-float v2, v2

    add-float v8, v1, v2

    const/high16 v1, 0x3f80

    add-float/2addr v1, v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->TOP_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    int-to-float v2, v2

    add-float v9, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->LEFT_MARGIN:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->WIDTH_BASIS:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$800(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float v2, v2, v16

    add-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float v10, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->TOP_MARGIN:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v2, v15

    add-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float v11, v1, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->WIDTH_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$800(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v0, v1

    move/from16 v17, v0

    .line 572
    .local v17, crossWidth:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v20, v1, -0x1

    .line 574
    .local v20, nChannel:I
    const/16 v18, 0x2

    :goto_125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x2

    move/from16 v0, v18

    if-ge v0, v1, :cond_206

    .line 575
    div-int/lit8 v1, v18, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, v15

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->TOP_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    add-int v14, v1, v2

    .line 576
    rem-int/lit8 v1, v18, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_150

    int-to-float v1, v14

    const/high16 v2, 0x4000

    div-float v2, v15, v2

    add-float/2addr v1, v2

    float-to-int v14, v1

    .line 577
    :cond_150
    move/from16 v0, v17

    int-to-float v1, v0

    move/from16 v0, v20

    int-to-float v2, v0

    div-float/2addr v1, v2

    move/from16 v0, v18

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->LEFT_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    add-int v13, v1, v2

    .line 578
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v2, v13

    int-to-float v3, v14

    int-to-float v4, v13

    add-float v4, v4, v16

    int-to-float v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v2, v13

    add-float v2, v2, v16

    int-to-float v3, v14

    int-to-float v4, v13

    add-float v4, v4, v16

    int-to-float v5, v14

    const/high16 v7, 0x4000

    div-float v7, v15, v7

    add-float/2addr v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v2, v13

    add-float v2, v2, v16

    int-to-float v3, v14

    const/high16 v4, 0x4000

    div-float v4, v15, v4

    add-float/2addr v3, v4

    int-to-float v4, v13

    int-to-float v5, v14

    const/high16 v7, 0x4000

    div-float v7, v15, v7

    add-float/2addr v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 581
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v2, v13

    int-to-float v3, v14

    const/high16 v4, 0x4000

    div-float v4, v15, v4

    add-float/2addr v3, v4

    int-to-float v4, v13

    int-to-float v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v1

    add-int/lit8 v2, v18, -0x2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v2

    .line 584
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v1

    add-int/lit8 v2, v18, -0x2

    aget-object v1, v1, v2

    iput v13, v1, Landroid/graphics/Rect;->left:I

    .line 585
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v1

    add-int/lit8 v2, v18, -0x2

    aget-object v1, v1, v2

    int-to-float v2, v13

    add-float v2, v2, v16

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 586
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v1

    add-int/lit8 v2, v18, -0x2

    aget-object v1, v1, v2

    iput v14, v1, Landroid/graphics/Rect;->top:I

    .line 587
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v1

    add-int/lit8 v2, v18, -0x2

    aget-object v1, v1, v2

    int-to-float v2, v14

    const/high16 v3, 0x4000

    div-float v3, v15, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 574
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_125

    .line 590
    :cond_206
    const/16 v18, 0x2

    :goto_208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x2

    move/from16 v0, v18

    if-ge v0, v1, :cond_2eb

    .line 591
    div-int/lit8 v1, v18, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, v15

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->TOP_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    add-int v14, v1, v2

    .line 592
    rem-int/lit8 v1, v18, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_233

    int-to-float v1, v14

    const/high16 v2, 0x4000

    div-float v2, v15, v2

    add-float/2addr v1, v2

    float-to-int v14, v1

    .line 594
    :cond_233
    move/from16 v0, v17

    int-to-float v1, v0

    move/from16 v0, v20

    int-to-float v2, v0

    div-float/2addr v1, v2

    move/from16 v0, v18

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v1, v17, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->LEFT_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I

    move-result v2

    add-int v13, v1, v2

    .line 595
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v2, v13

    int-to-float v3, v14

    int-to-float v4, v13

    add-float v4, v4, v16

    int-to-float v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v2, v13

    add-float v2, v2, v16

    int-to-float v3, v14

    int-to-float v4, v13

    add-float v4, v4, v16

    int-to-float v5, v14

    const/high16 v7, 0x4000

    div-float v7, v15, v7

    add-float/2addr v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v2, v13

    add-float v2, v2, v16

    int-to-float v3, v14

    const/high16 v4, 0x4000

    div-float v4, v15, v4

    add-float/2addr v3, v4

    int-to-float v4, v13

    int-to-float v5, v14

    const/high16 v7, 0x4000

    div-float v7, v15, v7

    add-float/2addr v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v2, v13

    int-to-float v3, v14

    const/high16 v4, 0x4000

    div-float v4, v15, v4

    add-float/2addr v3, v4

    int-to-float v4, v13

    int-to-float v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v1

    add-int/lit8 v2, v18, -0x2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v2

    .line 601
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v1

    add-int/lit8 v2, v18, -0x2

    aget-object v1, v1, v2

    iput v13, v1, Landroid/graphics/Rect;->left:I

    .line 602
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v1

    add-int/lit8 v2, v18, -0x2

    aget-object v1, v1, v2

    int-to-float v2, v13

    add-float v2, v2, v16

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 603
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v1

    add-int/lit8 v2, v18, -0x2

    aget-object v1, v1, v2

    iput v14, v1, Landroid/graphics/Rect;->top:I

    .line 604
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;

    move-result-object v1

    add-int/lit8 v2, v18, -0x2

    aget-object v1, v1, v2

    int-to-float v2, v14

    const/high16 v3, 0x4000

    div-float v3, v15, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 590
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_208

    .line 609
    :cond_2eb
    return-void
.end method

.method private setPaint()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/high16 v3, -0x100

    const/4 v2, 0x0

    .line 403
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mLinePaint:Landroid/graphics/Paint;

    .line 404
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 405
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 406
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 407
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 408
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 409
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 410
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 413
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 415
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mClickPaint:Landroid/graphics/Paint;

    .line 416
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 417
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mClickPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 419
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mNonClickPaint:Landroid/graphics/Paint;

    .line 420
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mNonClickPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 421
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mNonClickPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 423
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    .line 424
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 425
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 426
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 430
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 431
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->mLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 432
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 438
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mIsWacom:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$600(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 439
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v2, :cond_13

    .line 440
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->drawByEvent(Landroid/view/MotionEvent;)V

    .line 448
    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0

    .line 443
    :cond_15
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-eq v0, v2, :cond_13

    .line 444
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;->drawByEvent(Landroid/view/MotionEvent;)V

    goto :goto_13
.end method
