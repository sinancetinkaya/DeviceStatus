.class public Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;
.super Landroid/view/View;
.source "UISpenAccuracyTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UISpenAccuracyTest;
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

.field final synthetic this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;


# direct methods
.method public constructor <init>(Lcom/sec/factory/app/ui/UISpenAccuracyTest;Landroid/content/Context;)V
    .registers 10
    .parameter
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v2, 0x0

    .line 348
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    .line 349
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 331
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mPreTouchedX:F

    .line 332
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mPreTouchedY:F

    .line 333
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedX:F

    .line 334
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedY:F

    .line 350
    invoke-virtual {p0, v6}, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->setKeepScreenOn(Z)V

    .line 352
    const-string v2, "window"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 354
    .local v0, mDisplay:Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 355
    .local v1, outpoint:Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 356
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenWidth:I

    .line 357
    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenHeight:I

    .line 359
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenWidth:I

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    .line 361
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    .line 362
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 364
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenWidth:I

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mLineBitmap:Landroid/graphics/Bitmap;

    .line 365
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mLineBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mLineCanvas:Landroid/graphics/Canvas;

    .line 367
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->setPaint()V

    .line 368
    #calls: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->isDeadZoneModels()Z
    invoke-static {p1}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$100(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)Z

    move-result v2

    if-ne v2, v6, :cond_9d

    .line 369
    const/16 v2, 0xa

    #setter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->BOTTOM_MARGIN:I
    invoke-static {p1, v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$202(Lcom/sec/factory/app/ui/UISpenAccuracyTest;I)I

    .line 370
    #setter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->TOP_MARGIN:I
    invoke-static {p1, v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$302(Lcom/sec/factory/app/ui/UISpenAccuracyTest;I)I

    .line 371
    #setter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->LEFT_MARGIN:I
    invoke-static {p1, v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$402(Lcom/sec/factory/app/ui/UISpenAccuracyTest;I)I

    .line 372
    #setter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->RIGHT_MARGIN:I
    invoke-static {p1, v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$502(Lcom/sec/factory/app/ui/UISpenAccuracyTest;I)I

    .line 374
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenHeight:I

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->TOP_MARGIN:I
    invoke-static {p1}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenHeight:I

    .line 375
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenHeight:I

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->BOTTOM_MARGIN:I
    invoke-static {p1}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$200(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenHeight:I

    .line 376
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenWidth:I

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->LEFT_MARGIN:I
    invoke-static {p1}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenWidth:I

    .line 377
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenWidth:I

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->RIGHT_MARGIN:I
    invoke-static {p1}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$500(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenWidth:I

    .line 378
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->drawDeadzone()V

    .line 380
    :cond_9d
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->initRect()V

    .line 382
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->isTouchDown:Z

    .line 383
    return-void
.end method

.method private checkPassNfinishEpenTest()V
    .registers 3

    .prologue
    .line 599
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #calls: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->isPass()Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->passFlag:I
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$1200(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v0

    if-nez v0, :cond_22

    .line 600
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$1208(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    .line 601
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mIsWacom:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$600(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 602
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #calls: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->finishEpentest()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$1300(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)V

    .line 613
    :cond_22
    :goto_22
    return-void

    .line 604
    :cond_23
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->remoteCall:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$1400(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 605
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->setResult(I)V

    .line 607
    :cond_32
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->finish()V

    goto :goto_22
.end method

.method private drawByEvent(Landroid/view/MotionEvent;)V
    .registers 9
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 437
    .local v0, action:I
    packed-switch v0, :pswitch_data_b6

    .line 489
    :cond_8
    :goto_8
    return-void

    .line 439
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedX:F

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedY:F

    .line 442
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedX:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedY:F

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->drawRect(FFLandroid/graphics/Paint;)V

    .line 444
    iput-boolean v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->isTouchDown:Z

    goto :goto_8

    .line 449
    :pswitch_21
    iget-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->isTouchDown:Z

    if-eqz v2, :cond_8

    .line 450
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 451
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedX:F

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mPreTouchedX:F

    .line 452
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedY:F

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mPreTouchedY:F

    .line 454
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedX:F

    .line 455
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedY:F

    .line 457
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedX:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedY:F

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->drawRect(FFLandroid/graphics/Paint;)V

    .line 458
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mPreTouchedX:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mPreTouchedY:F

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedX:F

    iget v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedY:F

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->drawLine(FFFF)V

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 460
    :cond_57
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedX:F

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mPreTouchedX:F

    .line 461
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedY:F

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mPreTouchedY:F

    .line 463
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedX:F

    .line 464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedY:F

    .line 466
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedX:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedY:F

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->drawRect(FFLandroid/graphics/Paint;)V

    .line 467
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mPreTouchedX:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mPreTouchedY:F

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedX:F

    iget v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedY:F

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->drawLine(FFFF)V

    .line 469
    iput-boolean v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->isTouchDown:Z

    goto :goto_8

    .line 474
    .end local v1           #i:I
    :pswitch_82
    iget-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->isTouchDown:Z

    if-eqz v2, :cond_8

    .line 475
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedX:F

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mPreTouchedX:F

    .line 476
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedY:F

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mPreTouchedY:F

    .line 478
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedX:F

    .line 479
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedY:F

    .line 481
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mPreTouchedX:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_b1

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mPreTouchedY:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_b1

    .line 482
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedX:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mTouchedY:F

    invoke-direct {p0, v2, v3}, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->drawPoint(FF)V

    .line 485
    :cond_b1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->isTouchDown:Z

    goto/16 :goto_8

    .line 437
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

    .line 517
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 518
    .local v5, paint:Landroid/graphics/Paint;
    const/high16 v0, -0x100

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 519
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 520
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->LEFT_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v2

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenWidth:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->RIGHT_MARGIN:I
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$500(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v3, v2

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->TOP_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v2

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 521
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->LEFT_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v2

    int-to-float v3, v2

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->TOP_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v2

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenHeight:I

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->BOTTOM_MARGIN:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$200(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 522
    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->LEFT_MARGIN:I
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v0

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenWidth:I

    add-int/2addr v0, v2

    int-to-float v7, v0

    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->LEFT_MARGIN:I
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v0

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenWidth:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->RIGHT_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$500(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v9, v0

    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->TOP_MARGIN:I
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v0

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenHeight:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->BOTTOM_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$200(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v10, v0

    move v8, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 523
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->TOP_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v2

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->LEFT_MARGIN:I
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v3

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->RIGHT_MARGIN:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$500(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->TOP_MARGIN:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v4

    iget v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenHeight:I

    add-int/2addr v4, v6

    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->BOTTOM_MARGIN:I
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$200(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 524
    return-void
.end method

.method private drawLine(FFFF)V
    .registers 15
    .parameter "preX"
    .parameter "preY"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mLineCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 493
    const/4 v8, 0x0

    .local v8, lowX:I
    const/4 v9, 0x0

    .local v9, lowY:I
    const/4 v6, 0x0

    .local v6, highX:I
    const/4 v7, 0x0

    .line 494
    .local v7, highY:I
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_2c

    .line 495
    float-to-int v6, p1

    .line 496
    float-to-int v8, p3

    .line 501
    :goto_15
    cmpl-float v0, p2, p4

    if-ltz v0, :cond_2f

    .line 502
    float-to-int v7, p2

    .line 503
    float-to-int v9, p4

    .line 508
    :goto_1b
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v1, v8, -0x6

    add-int/lit8 v2, v9, -0x6

    add-int/lit8 v3, v6, 0x6

    add-int/lit8 v4, v7, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 509
    return-void

    .line 498
    :cond_2c
    float-to-int v6, p3

    .line 499
    float-to-int v8, p1

    goto :goto_15

    .line 505
    :cond_2f
    float-to-int v7, p4

    .line 506
    float-to-int v9, p2

    goto :goto_1b
.end method

.method private drawPoint(FF)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mLineCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 513
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

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 514
    return-void
.end method

.method private drawRect(FFLandroid/graphics/Paint;)V
    .registers 16
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 569
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->HEIGHT_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v1

    int-to-float v1, v1

    div-float v8, v0, v1

    .line 570
    .local v8, col_height:F
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->WIDTH_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$800(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v1

    int-to-float v1, v1

    div-float v9, v0, v1

    .line 572
    .local v9, col_width:F
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->LEFT_MARGIN:I
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    div-float/2addr v0, v9

    float-to-int v10, v0

    .line 573
    .local v10, countX:I
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->TOP_MARGIN:I
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    div-float/2addr v0, v8

    float-to-int v11, v0

    .line 575
    .local v11, countY:I
    int-to-float v0, v10

    mul-float/2addr v0, v9

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->LEFT_MARGIN:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v1

    int-to-float v1, v1

    add-float v6, v0, v1

    .line 576
    .local v6, ColX:F
    int-to-float v0, v11

    mul-float/2addr v0, v8

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->TOP_MARGIN:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v1

    int-to-float v1, v1

    add-float v7, v0, v1

    .line 579
    .local v7, ColY:F
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->HEIGHT_BASIS:I
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v11, v0, :cond_58

    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->WIDTH_BASIS:I
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$800(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v10, v0, :cond_60

    .line 580
    :cond_58
    const-string v0, "SpenAccuracyTest"

    const-string v1, "You are out of bounds!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :goto_5f
    return-void

    .line 583
    :cond_60
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->draw:[[Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$900(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)[[Z

    move-result-object v0

    aget-object v0, v0, v11

    aget-boolean v0, v0, v10

    if-nez v0, :cond_c4

    .line 584
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->draw:[[Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$900(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)[[Z

    move-result-object v0

    aget-object v0, v0, v11

    const/4 v1, 0x1

    aput-boolean v1, v0, v10

    .line 585
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->draw:[[Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$900(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)[[Z

    move-result-object v0

    aget-object v0, v0, v11

    aget-boolean v0, v0, v10

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c8

    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->isDrawArea:[[Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)[[Z

    move-result-object v0

    aget-object v0, v0, v11

    aget-boolean v0, v0, v10

    if-eqz v0, :cond_c8

    .line 586
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

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

    .line 592
    :goto_a6
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

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 595
    :cond_c4
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->checkPassNfinishEpenTest()V

    goto :goto_5f

    .line 589
    :cond_c8
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

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

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mNonClickPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_a6
.end method

.method private initRect()V
    .registers 20

    .prologue
    .line 527
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->HEIGHT_BASIS:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v2

    int-to-float v2, v2

    div-float v15, v1, v2

    .line 528
    .local v15, col_height:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenWidth:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->WIDTH_BASIS:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$800(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v2

    int-to-float v2, v2

    div-float v16, v1, v2

    .line 529
    .local v16, col_width:F
    const/4 v13, 0x0

    .line 530
    .local v13, ColX:I
    const/4 v14, 0x0

    .line 532
    .local v14, ColY:I
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 533
    .local v6, mRectPaint:Landroid/graphics/Paint;
    const/high16 v1, -0x100

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 535
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->HEIGHT_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v1

    move/from16 v0, v17

    if-ge v0, v1, :cond_aa

    .line 536
    move/from16 v0, v17

    int-to-float v1, v0

    mul-float/2addr v1, v15

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->TOP_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v2

    add-int v14, v1, v2

    .line 538
    const/16 v18, 0x0

    .local v18, j:I
    :goto_4b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->WIDTH_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$800(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v1

    move/from16 v0, v18

    if-ge v0, v1, :cond_a7

    .line 540
    move/from16 v0, v18

    int-to-float v1, v0

    mul-float v1, v1, v16

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->LEFT_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v2

    add-int v13, v1, v2

    .line 542
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v2, v13

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->LEFT_MARGIN:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenWidth:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v2, v13

    int-to-float v3, v14

    int-to-float v4, v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->TOP_MARGIN:I
    invoke-static {v5}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mScreenHeight:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->draw:[[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$900(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)[[Z

    move-result-object v1

    aget-object v1, v1, v17

    const/4 v2, 0x0

    aput-boolean v2, v1, v18

    .line 538
    add-int/lit8 v18, v18, 0x1

    goto :goto_4b

    .line 535
    :cond_a7
    add-int/lit8 v17, v17, 0x1

    goto :goto_2e

    .line 549
    .end local v18           #j:I
    :cond_aa
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    const/high16 v1, 0x3f80

    add-float v1, v1, v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->LEFT_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v2

    int-to-float v2, v2

    add-float v8, v1, v2

    const/high16 v1, 0x3f80

    add-float/2addr v1, v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->TOP_MARGIN:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v2

    int-to-float v2, v2

    add-float v9, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->LEFT_MARGIN:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->WIDTH_BASIS:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$800(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float v2, v2, v16

    add-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float v10, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->TOP_MARGIN:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->HEIGHT_BASIS:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v2, v15

    add-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float v11, v1, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 565
    return-void
.end method

.method private setPaint()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/high16 v3, -0x100

    const/4 v2, 0x0

    .line 386
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    .line 387
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 388
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 389
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 390
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 391
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 392
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 393
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 396
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 398
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mClickPaint:Landroid/graphics/Paint;

    .line 399
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 400
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mClickPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 402
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mNonClickPaint:Landroid/graphics/Paint;

    .line 403
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mNonClickPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 404
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mNonClickPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 406
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    .line 407
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 408
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 409
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 413
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 414
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->mLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 415
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 421
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mIsWacom:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$600(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 422
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v2, :cond_13

    .line 423
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->drawByEvent(Landroid/view/MotionEvent;)V

    .line 431
    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0

    .line 426
    :cond_15
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-eq v0, v2, :cond_13

    .line 427
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;->drawByEvent(Landroid/view/MotionEvent;)V

    goto :goto_13
.end method
