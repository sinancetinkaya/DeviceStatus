.class public Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;
.super Landroid/view/View;
.source "UITspPatternStyleX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UITspPatternStyleX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView$EmptyListener;
    }
.end annotation


# instance fields
.field private col_height:F

.field private col_width:F

.field private isTouchDown:Z

.field private mClickPaint:Landroid/graphics/Paint;

.field private mEmptyPaint:Landroid/graphics/Paint;

.field private mHeightCross:F

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

.field private mWidthCross:F

.field final synthetic this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;


# direct methods
.method public constructor <init>(Lcom/sec/factory/app/ui/UITspPatternStyleX;Landroid/content/Context;)V
    .registers 9
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 291
    iput-object p1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    .line 292
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 270
    iput v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mPreTouchedX:F

    .line 271
    iput v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mPreTouchedY:F

    .line 272
    iput v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedX:F

    .line 273
    iput v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedY:F

    .line 274
    iput v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mHeightCross:F

    .line 275
    iput v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mWidthCross:F

    .line 276
    iput v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_height:F

    .line 277
    iput v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_width:F

    .line 293
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->setKeepScreenOn(Z)V

    .line 295
    const-string v2, "window"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 297
    .local v0, mDisplay:Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 298
    .local v1, outpoint:Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 299
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mScreenWidth:I

    .line 300
    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mScreenHeight:I

    .line 301
    iget-object v2, p1, Lcom/sec/factory/app/ui/UITspPatternStyleX;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "MyView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mScreenWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mScreenHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mScreenWidth:I

    iget v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mScreenHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    .line 306
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    .line 307
    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 309
    iget v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mScreenWidth:I

    iget v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mScreenHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mLineBitmap:Landroid/graphics/Bitmap;

    .line 310
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mLineBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mLineCanvas:Landroid/graphics/Canvas;

    .line 311
    iget v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mScreenHeight:I

    int-to-float v2, v2

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS:I
    invoke-static {p1}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$100(Lcom/sec/factory/app/ui/UITspPatternStyleX;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_height:F

    .line 312
    iget v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mScreenWidth:I

    int-to-float v2, v2

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->WIDTH_BASIS:I
    invoke-static {p1}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$200(Lcom/sec/factory/app/ui/UITspPatternStyleX;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_width:F

    .line 314
    iget v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_width:F

    const/high16 v4, 0x3f80

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS_CROSS:I
    invoke-static {p1}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$300(Lcom/sec/factory/app/ui/UITspPatternStyleX;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mWidthCross:F

    .line 315
    iget v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_height:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mHeightCross:F

    .line 317
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->setPaint()V

    .line 318
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->initRect()V

    .line 320
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->isTouchDown:Z

    .line 321
    return-void
.end method

.method private checkCrossRectRegion(FFIILandroid/graphics/Paint;)V
    .registers 20
    .parameter "x"
    .parameter "y"
    .parameter "countX"
    .parameter "countY"
    .parameter "paint"

    .prologue
    .line 569
    const/4 v7, 0x0

    .line 571
    .local v7, countCrossX:I
    const/4 v8, 0x0

    .line 572
    .local v8, countCrossY:I
    const/4 v11, 0x0

    .line 573
    .local v11, startRectTopX:I
    const/4 v12, 0x0

    .line 574
    .local v12, startRectTopY:I
    const/4 v9, 0x0

    .line 575
    .local v9, startRectBottomX:I
    const/4 v10, 0x0

    .line 577
    .local v10, startRectBottomY:I
    if-lez p4, :cond_e8

    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$100(Lcom/sec/factory/app/ui/UITspPatternStyleX;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move/from16 v0, p4

    if-ge v0, v1, :cond_e8

    .line 578
    iget v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_height:F

    sub-float v1, p2, v1

    iget v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mHeightCross:F

    div-float/2addr v1, v2

    float-to-int v8, v1

    .line 579
    iget v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mWidthCross:F

    add-int/lit8 v2, v8, 0x2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v11, v1

    .line 580
    iget v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_height:F

    iget v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mHeightCross:F

    int-to-float v3, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v12, v1

    .line 581
    iget v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_width:F

    const/high16 v3, 0x3f80

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mWidthCross:F

    add-int/lit8 v3, v8, 0x2

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v9, v1

    .line 582
    move v10, v12

    .line 584
    int-to-float v1, v11

    cmpl-float v1, p1, v1

    if-lez v1, :cond_8d

    int-to-float v1, v11

    iget v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_width:F

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_8d

    .line 592
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    add-int/lit8 v2, v11, 0x1

    int-to-float v2, v2

    add-int/lit8 v3, v12, 0x1

    int-to-float v3, v3

    int-to-float v4, v11

    iget v5, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_width:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    int-to-float v5, v12

    iget v6, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_height:F

    const/high16 v13, 0x4000

    div-float/2addr v6, v13

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 596
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v2, v11, -0x1

    add-int/lit8 v3, v12, -0x1

    int-to-float v4, v11

    iget v5, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_width:F

    add-float/2addr v4, v5

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v5, v12

    iget v6, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_height:F

    add-float/2addr v5, v6

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 599
    if-ltz v8, :cond_8d

    .line 600
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->drawCross:[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$700(Lcom/sec/factory/app/ui/UITspPatternStyleX;)[Z

    move-result-object v1

    const/4 v2, 0x1

    aput-boolean v2, v1, v8

    .line 603
    :cond_8d
    int-to-float v1, v9

    cmpl-float v1, p1, v1

    if-lez v1, :cond_e8

    int-to-float v1, v9

    iget v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_width:F

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_e8

    .line 611
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    add-int/lit8 v2, v9, 0x1

    int-to-float v2, v2

    add-int/lit8 v3, v10, 0x1

    int-to-float v3, v3

    int-to-float v4, v9

    iget v5, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_width:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    int-to-float v5, v10

    iget v6, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_height:F

    const/high16 v13, 0x4000

    div-float/2addr v6, v13

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 615
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v2, v9, -0x1

    add-int/lit8 v3, v10, -0x1

    int-to-float v4, v9

    iget v5, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_width:F

    add-float/2addr v4, v5

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v5, v10

    iget v6, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_height:F

    add-float/2addr v5, v6

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 618
    if-ltz v8, :cond_e8

    .line 619
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->drawCross:[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$700(Lcom/sec/factory/app/ui/UITspPatternStyleX;)[Z

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS_CROSS:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$300(Lcom/sec/factory/app/ui/UITspPatternStyleX;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v8

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 622
    :cond_e8
    return-void
.end method

.method private checkGhostTouch()V
    .registers 5

    .prologue
    .line 625
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 626
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v3, "Ghost Touch"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 627
    const-string v3, "Ghost Touch Testing\n(Don\'t touch TSP!)"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 628
    new-instance v2, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView$EmptyListener;

    invoke-direct {v2, p0}, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView$EmptyListener;-><init>(Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;)V

    .line 629
    .local v2, pl:Landroid/content/DialogInterface$OnClickListener;
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 630
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 631
    .local v0, ad:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 632
    return-void
.end method

.method private drawLine(FFFF)V
    .registers 15
    .parameter "preX"
    .parameter "preY"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mLineCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mLinePaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 428
    const/4 v8, 0x0

    .local v8, lowX:I
    const/4 v9, 0x0

    .local v9, lowY:I
    const/4 v6, 0x0

    .local v6, highX:I
    const/4 v7, 0x0

    .line 429
    .local v7, highY:I
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_2c

    .line 430
    float-to-int v6, p1

    .line 431
    float-to-int v8, p3

    .line 436
    :goto_15
    cmpl-float v0, p2, p4

    if-ltz v0, :cond_2f

    .line 437
    float-to-int v7, p2

    .line 438
    float-to-int v9, p4

    .line 443
    :goto_1b
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v1, v8, -0x6

    add-int/lit8 v2, v9, -0x6

    add-int/lit8 v3, v6, 0x6

    add-int/lit8 v4, v7, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 444
    return-void

    .line 433
    :cond_2c
    float-to-int v6, p3

    .line 434
    float-to-int v8, p1

    goto :goto_15

    .line 440
    :cond_2f
    float-to-int v7, p4

    .line 441
    float-to-int v9, p2

    goto :goto_1b
.end method

.method private drawPoint(FF)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mLineCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 448
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

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 449
    return-void
.end method

.method private drawRect(FFLandroid/graphics/Paint;)V
    .registers 16
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 514
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mScreenHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$100(Lcom/sec/factory/app/ui/UITspPatternStyleX;)I

    move-result v1

    int-to-float v1, v1

    div-float v8, v0, v1

    .line 515
    .local v8, col_height:F
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mScreenWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->WIDTH_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$200(Lcom/sec/factory/app/ui/UITspPatternStyleX;)I

    move-result v1

    int-to-float v1, v1

    div-float v9, v0, v1

    .line 517
    .local v9, col_width:F
    div-float v0, p1, v9

    float-to-int v10, v0

    .line 518
    .local v10, countX:I
    div-float v0, p2, v8

    float-to-int v11, v0

    .line 520
    .local v11, countY:I
    int-to-float v0, v10

    mul-float v6, v9, v0

    .line 521
    .local v6, ColX:F
    int-to-float v0, v11

    mul-float v7, v8, v0

    .line 524
    .local v7, ColY:F
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS:I
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$100(Lcom/sec/factory/app/ui/UITspPatternStyleX;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v11, v0, :cond_38

    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->WIDTH_BASIS:I
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$200(Lcom/sec/factory/app/ui/UITspPatternStyleX;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v10, v0, :cond_44

    .line 525
    :cond_38
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "drawRect"

    const-string v2, "You are out of bounds!"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :cond_43
    :goto_43
    return-void

    .line 528
    :cond_44
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->draw:[[Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$500(Lcom/sec/factory/app/ui/UITspPatternStyleX;)[[Z

    move-result-object v0

    aget-object v0, v0, v11

    aget-boolean v0, v0, v10

    if-nez v0, :cond_a8

    .line 529
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->draw:[[Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$500(Lcom/sec/factory/app/ui/UITspPatternStyleX;)[[Z

    move-result-object v0

    aget-object v0, v0, v11

    const/4 v1, 0x1

    aput-boolean v1, v0, v10

    .line 530
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->draw:[[Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$500(Lcom/sec/factory/app/ui/UITspPatternStyleX;)[[Z

    move-result-object v0

    aget-object v0, v0, v11

    aget-boolean v0, v0, v10

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a8

    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->isDrawArea:[[Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$800(Lcom/sec/factory/app/ui/UITspPatternStyleX;)[[Z

    move-result-object v0

    aget-object v0, v0, v11

    aget-boolean v0, v0, v10

    if-eqz v0, :cond_a8

    .line 531
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

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

    .line 534
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

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->invalidate(Landroid/graphics/Rect;)V

    :cond_a8
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v10

    move v4, v11

    move-object v5, p3

    .line 545
    invoke-direct/range {v0 .. v5}, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->checkCrossRectRegion(FFIILandroid/graphics/Paint;)V

    .line 547
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #calls: Lcom/sec/factory/app/ui/UITspPatternStyleX;->isPass()Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$900(Lcom/sec/factory/app/ui/UITspPatternStyleX;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #calls: Lcom/sec/factory/app/ui/UITspPatternStyleX;->isPassCross()Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$1000(Lcom/sec/factory/app/ui/UITspPatternStyleX;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 548
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->successTest:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$1100(Lcom/sec/factory/app/ui/UITspPatternStyleX;)Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 549
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    const/4 v1, 0x0

    #setter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->successTest:Z
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$1102(Lcom/sec/factory/app/ui/UITspPatternStyleX;Z)Z

    .line 550
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->remoteCall:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$1200(Lcom/sec/factory/app/ui/UITspPatternStyleX;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_de

    .line 551
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->setResult(I)V

    .line 554
    :cond_de
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->setResult(I)V

    .line 555
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->finish()V

    goto/16 :goto_43

    .line 561
    :cond_eb
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->setResult(I)V

    .line 562
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->finish()V

    goto/16 :goto_43
.end method

.method private initRect()V
    .registers 19

    .prologue
    .line 452
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
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 457
    .local v17, mRectPaintCross:Landroid/graphics/Paint;
    const/high16 v1, -0x100

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 458
    const/high16 v1, -0x100

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 459
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 461
    const/4 v15, 0x0

    .local v15, i:I
    :goto_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$100(Lcom/sec/factory/app/ui/UITspPatternStyleX;)I

    move-result v1

    if-ge v15, v1, :cond_86

    .line 462
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_height:F

    int-to-float v2, v15

    mul-float/2addr v1, v2

    float-to-int v14, v1

    .line 464
    const/16 v16, 0x0

    .local v16, j:I
    :goto_33
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->WIDTH_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$200(Lcom/sec/factory/app/ui/UITspPatternStyleX;)I

    move-result v1

    move/from16 v0, v16

    if-ge v0, v1, :cond_83

    .line 466
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_width:F

    move/from16 v0, v16

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v13, v1

    .line 468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v2, v13

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mScreenWidth:I

    int-to-float v4, v4

    int-to-float v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v2, v13

    int-to-float v3, v14

    int-to-float v4, v13

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mScreenHeight:I

    int-to-float v5, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->draw:[[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$500(Lcom/sec/factory/app/ui/UITspPatternStyleX;)[[Z

    move-result-object v1

    aget-object v1, v1, v15

    const/4 v2, 0x0

    aput-boolean v2, v1, v16

    .line 472
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->click:[[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$600(Lcom/sec/factory/app/ui/UITspPatternStyleX;)[[Z

    move-result-object v1

    aget-object v1, v1, v15

    const/4 v2, 0x0

    aput-boolean v2, v1, v16

    .line 464
    add-int/lit8 v16, v16, 0x1

    goto :goto_33

    .line 461
    :cond_83
    add-int/lit8 v15, v15, 0x1

    goto :goto_20

    .line 490
    .end local v16           #j:I
    :cond_86
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_width:F

    const/high16 v2, 0x3f80

    add-float v8, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_height:F

    const/high16 v2, 0x3f80

    add-float v9, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_width:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->WIDTH_BASIS:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$200(Lcom/sec/factory/app/ui/UITspPatternStyleX;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float v10, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_height:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$100(Lcom/sec/factory/app/ui/UITspPatternStyleX;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float v11, v1, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 494
    const/4 v15, 0x0

    :goto_ca
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS_CROSS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$300(Lcom/sec/factory/app/ui/UITspPatternStyleX;)I

    move-result v1

    if-ge v15, v1, :cond_113

    .line 495
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mWidthCross:F

    add-int/lit8 v2, v15, 0x2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v13, v1

    .line 496
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_height:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mHeightCross:F

    int-to-float v3, v15

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v14, v1

    .line 498
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v8, v13

    int-to-float v9, v14

    int-to-float v1, v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_width:F

    add-float v10, v1, v2

    int-to-float v1, v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_height:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float v11, v1, v2

    move-object/from16 v12, v17

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->drawCross:[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$700(Lcom/sec/factory/app/ui/UITspPatternStyleX;)[Z

    move-result-object v1

    const/4 v2, 0x0

    aput-boolean v2, v1, v15

    .line 494
    add-int/lit8 v15, v15, 0x1

    goto :goto_ca

    .line 502
    :cond_113
    const/4 v15, 0x0

    :goto_114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS_CROSS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$300(Lcom/sec/factory/app/ui/UITspPatternStyleX;)I

    move-result v1

    if-ge v15, v1, :cond_16e

    .line 503
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mWidthCross:F

    add-int/lit8 v2, v15, 0x2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v13, v1

    .line 504
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mScreenHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_height:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mHeightCross:F

    add-int/lit8 v4, v15, 0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v14, v1

    .line 506
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v8, v13

    int-to-float v9, v14

    int-to-float v1, v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_width:F

    add-float v10, v1, v2

    int-to-float v1, v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->col_height:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float v11, v1, v2

    move-object/from16 v12, v17

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->drawCross:[Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$700(Lcom/sec/factory/app/ui/UITspPatternStyleX;)[Z

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS_CROSS:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$300(Lcom/sec/factory/app/ui/UITspPatternStyleX;)I

    move-result v2

    add-int/2addr v2, v15

    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    .line 502
    add-int/lit8 v15, v15, 0x1

    goto :goto_114

    .line 511
    :cond_16e
    return-void
.end method

.method private setPaint()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    const/high16 v4, -0x100

    const/4 v3, 0x0

    .line 324
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mLinePaint:Landroid/graphics/Paint;

    .line 325
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 326
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 327
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 328
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 329
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 330
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 331
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 332
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_8c

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 335
    .local v0, e:Landroid/graphics/PathEffect;
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 336
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 338
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mClickPaint:Landroid/graphics/Paint;

    .line 339
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 340
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mClickPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 341
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mClickPaint:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 343
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mNonClickPaint:Landroid/graphics/Paint;

    .line 344
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mNonClickPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 345
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mNonClickPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 347
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    .line 348
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 349
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 350
    return-void

    .line 332
    :array_8c
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

    .line 354
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 355
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 356
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 361
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 363
    .local v2, pointerCount:I
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    iget-object v3, v3, Lcom/sec/factory/app/ui/UITspPatternStyleX;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "onTouchEvent"

    const-string v5, "Touch is working !"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #getter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->dialog_showing:Z
    invoke-static {v3}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$400(Lcom/sec/factory/app/ui/UITspPatternStyleX;)Z

    move-result v3

    if-nez v3, :cond_26

    if-le v2, v7, :cond_26

    .line 366
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    #setter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->dialog_showing:Z
    invoke-static {v3, v7}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$402(Lcom/sec/factory/app/ui/UITspPatternStyleX;Z)Z

    .line 367
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->checkGhostTouch()V

    .line 370
    :cond_26
    packed-switch v0, :pswitch_data_d8

    .line 423
    :cond_29
    :goto_29
    return v7

    .line 373
    :pswitch_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedX:F

    .line 374
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedY:F

    .line 376
    iget v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedX:F

    iget v4, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedY:F

    iget-object v5, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->drawRect(FFLandroid/graphics/Paint;)V

    .line 378
    iput-boolean v7, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->isTouchDown:Z

    goto :goto_29

    .line 383
    :pswitch_42
    iget-boolean v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->isTouchDown:Z

    if-eqz v3, :cond_29

    .line 384
    const/4 v1, 0x0

    .local v1, i:I
    :goto_47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    if-ge v1, v3, :cond_78

    .line 385
    iget v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedX:F

    iput v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mPreTouchedX:F

    .line 386
    iget v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedY:F

    iput v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mPreTouchedY:F

    .line 388
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v3

    iput v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedX:F

    .line 389
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v3

    iput v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedY:F

    .line 391
    iget v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedX:F

    iget v4, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedY:F

    iget-object v5, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->drawRect(FFLandroid/graphics/Paint;)V

    .line 392
    iget v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mPreTouchedX:F

    iget v4, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mPreTouchedY:F

    iget v5, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedX:F

    iget v6, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedY:F

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->drawLine(FFFF)V

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 394
    :cond_78
    iget v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedX:F

    iput v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mPreTouchedX:F

    .line 395
    iget v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedY:F

    iput v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mPreTouchedY:F

    .line 397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedX:F

    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedY:F

    .line 400
    iget v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedX:F

    iget v4, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedY:F

    iget-object v5, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->drawRect(FFLandroid/graphics/Paint;)V

    .line 401
    iget v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mPreTouchedX:F

    iget v4, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mPreTouchedY:F

    iget v5, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedX:F

    iget v6, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedY:F

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->drawLine(FFFF)V

    .line 403
    iput-boolean v7, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->isTouchDown:Z

    goto :goto_29

    .line 408
    .end local v1           #i:I
    :pswitch_a3
    iget-boolean v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->isTouchDown:Z

    if-eqz v3, :cond_29

    .line 409
    iget v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedX:F

    iput v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mPreTouchedX:F

    .line 410
    iget v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedY:F

    iput v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mPreTouchedY:F

    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedX:F

    .line 413
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedY:F

    .line 415
    iget v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mPreTouchedX:F

    iget v4, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_d2

    iget v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mPreTouchedY:F

    iget v4, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedY:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_d2

    .line 416
    iget v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedX:F

    iget v4, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->mTouchedY:F

    invoke-direct {p0, v3, v4}, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->drawPoint(FF)V

    .line 419
    :cond_d2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->isTouchDown:Z

    goto/16 :goto_29

    .line 370
    nop

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_a3
        :pswitch_42
    .end packed-switch
.end method
