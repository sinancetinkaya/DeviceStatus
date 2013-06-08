.class public Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;
.super Landroid/view/View;
.source "UISpenAccuracyPointTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CircleView"
.end annotation


# instance fields
.field private mCenterRadius:F

.field private mCircleBitmap:Landroid/graphics/Bitmap;

.field private mCircleCanvas:Landroid/graphics/Canvas;

.field private mClickPaint:Landroid/graphics/Paint;

.field private mLargeRadius:F

.field private mLineBitmap:Landroid/graphics/Bitmap;

.field private mLineCanvas:Landroid/graphics/Canvas;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mNonClickPaint:Landroid/graphics/Paint;

.field private mPassText:Ljava/lang/String;

.field private mPointX:F

.field private mPointY:F

.field private mRadiusLength:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTextResultPaint:Landroid/graphics/Paint;

.field private mUsePaint:[Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

.field private viewMarginHeight:F

.field private viewMarginWidth:F


# direct methods
.method public constructor <init>(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "context"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    .line 276
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 273
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPassText:Ljava/lang/String;

    .line 278
    const-string v2, "window"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 280
    .local v0, mDisplay:Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 281
    .local v1, outpoint:Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 282
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    .line 283
    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    .line 285
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->initCircleView()V

    .line 286
    return-void
.end method

.method private calculateCloserEdge(FF)V
    .registers 11
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    const v1, 0x461c4000

    .line 439
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #setter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeX:F
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$902(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;F)F

    .line 440
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #setter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeY:F
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1002(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;F)F

    .line 442
    const/4 v7, 0x0

    .local v7, j:I
    :goto_e
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->EDGE_NUM_Y:I
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1800(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)I

    move-result v0

    if-ge v7, v0, :cond_89

    .line 443
    const/4 v6, 0x0

    .local v6, i:I
    :goto_17
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->EDGE_NUM_X:I
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1600(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)I

    move-result v0

    if-ge v6, v0, :cond_86

    .line 444
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->edgeArray_X:[F
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1700(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)[F

    move-result-object v0

    aget v0, v0, v6

    sub-float v0, p1, v0

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->makeAbsoluteValue(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->squareValue(F)F

    move-result v0

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->edgeArray_Y:[F
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1900(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)[F

    move-result-object v1

    aget v1, v1, v7

    sub-float v1, p2, v1

    invoke-direct {p0, v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->makeAbsoluteValue(F)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->squareValue(F)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeX:F
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$900(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F

    move-result v1

    sub-float v1, p1, v1

    invoke-direct {p0, v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->makeAbsoluteValue(F)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->squareValue(F)F

    move-result v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeY:F
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F

    move-result v2

    sub-float v2, p2, v2

    invoke-direct {p0, v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->makeAbsoluteValue(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->squareValue(F)F

    move-result v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_83

    .line 447
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->edgeArray_X:[F
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1700(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)[F

    move-result-object v1

    aget v1, v1, v6

    #setter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeX:F
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$902(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;F)F

    .line 448
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->edgeArray_Y:[F
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1900(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)[F

    move-result-object v1

    aget v1, v1, v7

    #setter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeY:F
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1002(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;F)F

    .line 443
    :cond_83
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 442
    :cond_86
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 453
    .end local v6           #i:I
    :cond_89
    const-string v0, "UISpenAccuracyPointTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closerX : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeX:F
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$900(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "closerY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeY:F
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLineCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeX:F
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$900(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLargeRadius:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeY:F
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeX:F
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$900(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F

    move-result v3

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLargeRadius:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeY:F
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F

    move-result v4

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mCloserEdgePaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 458
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLineCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeX:F
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$900(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeY:F
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F

    move-result v2

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLargeRadius:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeX:F
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$900(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F

    move-result v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeY:F
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F

    move-result v4

    iget v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLargeRadius:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mCloserEdgePaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 461
    return-void
.end method

.method private checkRange(Landroid/view/MotionEvent;)V
    .registers 10
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 476
    const-string v0, "UISpenAccuracyPointTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pointX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v0, "UISpenAccuracyPointTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pointY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 480
    .local v6, action:I
    packed-switch v6, :pswitch_data_1c0

    .line 544
    :goto_3c
    return-void

    .line 486
    :pswitch_3d
    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointX:F

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointY:F

    iget v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->isInCircleArea(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 488
    const-string v0, "UISpenAccuracyPointTest"

    const-string v1, "TopLeftCircle: true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsClicked:[Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$2000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)[Z

    move-result-object v0

    const/4 v1, 0x0

    aput-boolean v7, v0, v1

    goto :goto_3c

    .line 491
    :cond_5f
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    sub-float v1, v0, v1

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointX:F

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointY:F

    iget v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->isInCircleArea(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 493
    const-string v0, "UISpenAccuracyPointTest"

    const-string v1, "TopRightCircle: true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsClicked:[Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$2000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)[Z

    move-result-object v0

    aput-boolean v7, v0, v7

    goto :goto_3c

    .line 496
    :cond_85
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointX:F

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointY:F

    iget v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mCenterRadius:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->isInCircleArea(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 498
    const-string v0, "UISpenAccuracyPointTest"

    const-string v1, "CenterCircle: true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsClicked:[Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$2000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)[Z

    move-result-object v0

    const/4 v1, 0x2

    aput-boolean v7, v0, v1

    goto :goto_3c

    .line 501
    :cond_ad
    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointX:F

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointY:F

    iget v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->isInCircleArea(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 503
    const-string v0, "UISpenAccuracyPointTest"

    const-string v1, "BottomLeftCircle: true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsClicked:[Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$2000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)[Z

    move-result-object v0

    const/4 v1, 0x3

    aput-boolean v7, v0, v1

    goto/16 :goto_3c

    .line 506
    :cond_d5
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointX:F

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointY:F

    iget v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->isInCircleArea(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 508
    const-string v0, "UISpenAccuracyPointTest"

    const-string v1, "BottomRightCircle: true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsClicked:[Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$2000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)[Z

    move-result-object v0

    const/4 v1, 0x4

    aput-boolean v7, v0, v1

    goto/16 :goto_3c

    .line 512
    :cond_102
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsTablet:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1300(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)Z

    move-result v0

    if-eqz v0, :cond_1b6

    .line 514
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointX:F

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointY:F

    iget v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->isInCircleArea(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 516
    const-string v0, "UISpenAccuracyPointTest"

    const-string v1, "TopCenterCircle: true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsClicked:[Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$2000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)[Z

    move-result-object v0

    const/4 v1, 0x5

    aput-boolean v7, v0, v1

    goto/16 :goto_3c

    .line 519
    :cond_130
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointX:F

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointY:F

    iget v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->isInCircleArea(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 521
    const-string v0, "UISpenAccuracyPointTest"

    const-string v1, "BottomCenterCircle: true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsClicked:[Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$2000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)[Z

    move-result-object v0

    const/4 v1, 0x6

    aput-boolean v7, v0, v1

    goto/16 :goto_3c

    .line 524
    :cond_15b
    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointX:F

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointY:F

    iget v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->isInCircleArea(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_181

    .line 526
    const-string v0, "UISpenAccuracyPointTest"

    const-string v1, "LeftCenterCircle: true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsClicked:[Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$2000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)[Z

    move-result-object v0

    const/4 v1, 0x7

    aput-boolean v7, v0, v1

    goto/16 :goto_3c

    .line 529
    :cond_181
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointX:F

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointY:F

    iget v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->isInCircleArea(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_1ad

    .line 531
    const-string v0, "UISpenAccuracyPointTest"

    const-string v1, "RightCenterCircle: true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsClicked:[Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$2000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)[Z

    move-result-object v0

    const/16 v1, 0x8

    aput-boolean v7, v0, v1

    goto/16 :goto_3c

    .line 537
    :cond_1ad
    const-string v0, "UISpenAccuracyPointTest"

    const-string v1, "FALSE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 540
    :cond_1b6
    const-string v0, "UISpenAccuracyPointTest"

    const-string v1, "FALSE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 480
    nop

    :pswitch_data_1c0
    .packed-switch 0x0
        :pswitch_3d
    .end packed-switch
.end method

.method private drawCircles(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "cv"

    .prologue
    .line 576
    const/4 v0, 0x0

    .local v0, count:I
    :goto_1
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->NUMBER_OF_CIRCLES:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$500(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 577
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsClicked:[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$2000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1c

    .line 578
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mUsePaint:[Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mClickPaint:Landroid/graphics/Paint;

    aput-object v2, v1, v0

    .line 576
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 580
    :cond_1c
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mUsePaint:[Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mNonClickPaint:Landroid/graphics/Paint;

    aput-object v2, v1, v0

    goto :goto_19

    .line 583
    :cond_23
    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLargeRadius:F

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mUsePaint:[Landroid/graphics/Paint;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 584
    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLargeRadius:F

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mUsePaint:[Landroid/graphics/Paint;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 586
    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mCenterRadius:F

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mUsePaint:[Landroid/graphics/Paint;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 587
    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLargeRadius:F

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mUsePaint:[Landroid/graphics/Paint;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 589
    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLargeRadius:F

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mUsePaint:[Landroid/graphics/Paint;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 592
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsTablet:Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1300(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 593
    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLargeRadius:F

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mUsePaint:[Landroid/graphics/Paint;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 594
    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLargeRadius:F

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mUsePaint:[Landroid/graphics/Paint;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 596
    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLargeRadius:F

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mUsePaint:[Landroid/graphics/Paint;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 597
    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLargeRadius:F

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mUsePaint:[Landroid/graphics/Paint;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 600
    :cond_d4
    return-void
.end method

.method private drawLines(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "cv"

    .prologue
    .line 603
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    sub-float v1, v0, v1

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    add-float/2addr v3, v0

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 605
    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 608
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    sub-float v1, v0, v1

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    int-to-float v0, v0

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    add-float/2addr v3, v0

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 610
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    int-to-float v0, v0

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 613
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mCenterRadius:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mCenterRadius:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 615
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mCenterRadius:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mCenterRadius:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 618
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    int-to-float v0, v0

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 620
    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    int-to-float v0, v0

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 623
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    int-to-float v0, v0

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    int-to-float v0, v0

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 626
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    int-to-float v0, v0

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    int-to-float v0, v0

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 630
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsTablet:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1300(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)Z

    move-result v0

    if-eqz v0, :cond_236

    .line 631
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    sub-float v1, v0, v1

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    add-float/2addr v3, v0

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 633
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 636
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    int-to-float v0, v0

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 639
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    int-to-float v0, v0

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 643
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 645
    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 648
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    int-to-float v0, v0

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 650
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    int-to-float v0, v0

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 655
    :cond_236
    return-void
.end method

.method private drawPoint(FF)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLineCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 572
    return-void
.end method

.method private initCircleView()V
    .registers 9

    .prologue
    const v7, -0xffff01

    const/high16 v6, 0x4000

    const/4 v5, 0x0

    const/high16 v4, 0x4080

    const/4 v3, 0x5

    .line 289
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 290
    .local v0, r:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->SIZE_OUT_CIRCLE:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$100(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    div-float/2addr v1, v6

    iput v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLargeRadius:F

    .line 291
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->SIZE_CENTER_CIRCLE:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$200(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    div-float/2addr v1, v6

    iput v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mCenterRadius:F

    .line 292
    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLargeRadius:F

    iput v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mRadiusLength:F

    .line 299
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->SIZE_MARGIN:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    .line 300
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->SIZE_MARGIN:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$300(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    .line 302
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mClickPaint:Landroid/graphics/Paint;

    .line 303
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mClickPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 304
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mClickPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 305
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mClickPaint:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mNonClickPaint:Landroid/graphics/Paint;

    .line 308
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mNonClickPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 309
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mNonClickPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mTextResultPaint:Landroid/graphics/Paint;

    .line 312
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mTextResultPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mTextResultPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 314
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mTextResultPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 315
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mTextResultPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42c8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 317
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    .line 318
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 319
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    #setter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mCloserEdgePaint:Landroid/graphics/Paint;
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$402(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 322
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mCloserEdgePaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 323
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mCloserEdgePaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$400(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mCircleBitmap:Landroid/graphics/Bitmap;

    .line 327
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mCircleBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mCircleCanvas:Landroid/graphics/Canvas;

    .line 329
    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLineBitmap:Landroid/graphics/Bitmap;

    .line 330
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLineBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLineCanvas:Landroid/graphics/Canvas;

    .line 332
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->NUMBER_OF_CIRCLES:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$500(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)I

    move-result v1

    new-array v1, v1, [Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mUsePaint:[Landroid/graphics/Paint;

    .line 333
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPassText:Ljava/lang/String;

    .line 335
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->invalidate()V

    .line 336
    return-void
.end method

.method private isInCircleArea(FFFFF)Z
    .registers 12
    .parameter "centerX"
    .parameter "centerY"
    .parameter "x"
    .parameter "y"
    .parameter "radius"

    .prologue
    const-wide/high16 v4, 0x4000

    .line 555
    sub-float v0, p1, p3

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float v2, p2, p4

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    float-to-double v2, p5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1c

    .line 556
    const/4 v0, 0x1

    .line 558
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private isPass()Z
    .registers 4

    .prologue
    .line 547
    const/4 v1, 0x1

    .line 548
    .local v1, pass:Z
    const/4 v0, 0x0

    .local v0, count:I
    :goto_2
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->NUMBER_OF_CIRCLES:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$500(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 549
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsClicked:[Z
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$2000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)[Z

    move-result-object v2

    aget-boolean v2, v2, v0

    and-int/2addr v1, v2

    .line 548
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 551
    :cond_16
    return v1
.end method

.method private makeAbsoluteValue(F)F
    .registers 3
    .parameter "input"

    .prologue
    .line 464
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    .line 465
    const/high16 v0, -0x4080

    mul-float/2addr p1, v0

    .line 467
    :cond_8
    return p1
.end method

.method private saveEdgeLocations()V
    .registers 6

    .prologue
    const/high16 v4, 0x4000

    .line 417
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    #setter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->edgeX:F
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1102(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;F)F

    .line 418
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    #setter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->edgeY:F
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1202(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;F)F

    .line 420
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsTablet:Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1300(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 421
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    sub-float/2addr v2, v3

    #setter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->SIZE_X:F
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1402(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;F)F

    .line 422
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    sub-float/2addr v2, v3

    #setter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->SIZE_Y:F
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1502(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;F)F

    .line 428
    :goto_32
    const/4 v0, 0x0

    .local v0, i:I
    :goto_33
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->EDGE_NUM_X:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1600(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)I

    move-result v1

    if-ge v0, v1, :cond_70

    .line 429
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->edgeArray_X:[F
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1700(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->edgeX:F
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F

    move-result v2

    aput v2, v1, v0

    .line 430
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->SIZE_X:F
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1400(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1116(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;F)F

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 424
    .end local v0           #i:I
    :cond_57
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginWidth:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    #setter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->SIZE_X:F
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1402(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;F)F

    .line 425
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->viewMarginHeight:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    #setter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->SIZE_Y:F
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1502(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;F)F

    goto :goto_32

    .line 432
    .restart local v0       #i:I
    :cond_70
    const/4 v0, 0x0

    :goto_71
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->EDGE_NUM_Y:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1800(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)I

    move-result v1

    if-ge v0, v1, :cond_95

    .line 433
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->edgeArray_Y:[F
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1900(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->edgeY:F
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1200(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F

    move-result v2

    aput v2, v1, v0

    .line 434
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->SIZE_Y:F
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1500(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1216(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;F)F

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 436
    :cond_95
    return-void
.end method

.method private squareValue(F)F
    .registers 3
    .parameter "input"

    .prologue
    .line 471
    mul-float v0, p1, p1

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "cv"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 564
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mCircleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 565
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->drawCircles(Landroid/graphics/Canvas;)V

    .line 566
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->drawLines(Landroid/graphics/Canvas;)V

    .line 567
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 568
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 340
    const/16 v0, 0x19

    if-eq p1, v0, :cond_8

    const/16 v0, 0x18

    if-ne p1, v0, :cond_d

    .line 341
    :cond_8
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->finish()V

    .line 343
    :cond_d
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/high16 v6, 0x4396

    const/high16 v7, 0x41f0

    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointX:F

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointY:F

    .line 351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 352
    .local v0, action:I
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsWacom:Z
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$600(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 353
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_72

    .line 354
    const-string v2, "UISpenAccuracyPointTest"

    const-string v3, "Touched!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->checkRange(Landroid/view/MotionEvent;)V

    .line 356
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mCircleCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->drawCircles(Landroid/graphics/Canvas;)V

    .line 357
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointX:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointY:F

    invoke-direct {p0, v2, v3}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->drawPoint(FF)V

    .line 358
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->invalidate()V

    .line 359
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->isPass()Z

    move-result v2

    if-eqz v2, :cond_72

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsPassFlag:Z
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$700(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)Z

    move-result v2

    if-nez v2, :cond_72

    .line 360
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #setter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsPassFlag:Z
    invoke-static {v2, v8}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$702(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;Z)Z

    .line 361
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mCircleCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPassText:Ljava/lang/String;

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mScreenWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mTextResultPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v6, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 362
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->invalidate()V

    .line 364
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$800(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView$1;

    invoke-direct {v3, p0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView$1;-><init>(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 374
    :cond_72
    packed-switch v0, :pswitch_data_1fe

    .line 413
    :cond_75
    :goto_75
    return v8

    .line 377
    :pswitch_76
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->initCircleView()V

    .line 379
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->saveEdgeLocations()V

    .line 381
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointX:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointY:F

    invoke-direct {p0, v2, v3}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->calculateCloserEdge(FF)V

    .line 382
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41a0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 383
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLineCanvas:Landroid/graphics/Canvas;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Point T(X "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeX:F
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$900(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Y "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeY:F
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / Point A(X "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Y "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v7, v6, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 388
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointX:F

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeX:F
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$900(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->makeAbsoluteValue(F)F

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->squareValue(F)F

    move-result v3

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointY:F

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeY:F
    invoke-static {v5}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->makeAbsoluteValue(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->squareValue(F)F

    move-result v4

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const-wide v5, 0x4016666666666666L

    div-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->delta_Distance:F

    .line 391
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointX:F

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeX:F
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$900(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->makeAbsoluteValue(F)F

    move-result v3

    iput v3, v2, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->delta_subtractionX:F

    .line 392
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mPointY:F

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeY:F
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->makeAbsoluteValue(F)F

    move-result v3

    iput v3, v2, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->delta_subtractionY:F

    .line 394
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget v2, v2, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->delta_Distance:F

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget v3, v3, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->delta_Distance_MAX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_157

    .line 395
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget v3, v3, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->delta_Distance:F

    iput v3, v2, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->delta_Distance_MAX:F

    .line 396
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget v3, v3, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->delta_subtractionX:F

    iput v3, v2, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->delta_subtractionX_MAX:F

    .line 397
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget v3, v3, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->delta_subtractionY:F

    iput v3, v2, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->delta_subtractionY_MAX:F

    .line 400
    :cond_157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v1

    .line 401
    .local v1, pressure:F
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLineCanvas:Landroid/graphics/Canvas;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deta(X "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget v4, v4, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->delta_subtractionX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Y "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget v4, v4, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->delta_subtractionY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget v4, v4, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->delta_Distance:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mm)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x43a0

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 404
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLineCanvas:Landroid/graphics/Canvas;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deta MAX(X "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget v4, v4, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->delta_subtractionX_MAX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Y "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget v4, v4, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->delta_subtractionY_MAX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    iget v4, v4, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->delta_Distance_MAX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mm)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x43aa

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 407
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLineCanvas:Landroid/graphics/Canvas;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pressure : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x43b4

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_75

    .line 374
    nop

    :pswitch_data_1fe
    .packed-switch 0x0
        :pswitch_76
    .end packed-switch
.end method
