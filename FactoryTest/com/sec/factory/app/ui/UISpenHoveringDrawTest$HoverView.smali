.class public Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;
.super Landroid/view/View;
.source "UISpenHoveringDrawTest.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HoverView"
.end annotation


# instance fields
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

.field private mResultText:Ljava/lang/String;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTouchedX:F

.field private mTouchedY:F

.field final synthetic this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;


# direct methods
.method public constructor <init>(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;Landroid/content/Context;)V
    .registers 11
    .parameter
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 146
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    .line 147
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 131
    iput v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mPreTouchedX:F

    .line 132
    iput v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mPreTouchedY:F

    .line 133
    iput v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mTouchedX:F

    .line 134
    iput v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mTouchedY:F

    .line 148
    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->setKeepScreenOn(Z)V

    .line 150
    const-string v4, "window"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 151
    .local v0, mDisplay:Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 152
    .local v1, outpoint:Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 153
    iget v4, v1, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenWidth:I

    .line 154
    iget v4, v1, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenHeight:I

    .line 155
    iget v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenWidth:I

    iget v5, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    .line 156
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mMatrixCanvas:Landroid/graphics/Canvas;

    .line 157
    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mMatrixCanvas:Landroid/graphics/Canvas;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 158
    iget v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenWidth:I

    iget v5, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mLineBitmap:Landroid/graphics/Bitmap;

    .line 159
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mLineBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mLineCanvas:Landroid/graphics/Canvas;

    .line 161
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->setPaint()V

    .line 162
    #calls: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->isDeadZoneModels()Z
    invoke-static {p1}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$000(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)Z

    move-result v4

    if-ne v4, v7, :cond_70

    .line 163
    iget v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenHeight:I

    add-int/lit8 v4, v4, -0xf

    iput v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenHeight:I

    .line 164
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->drawDeadzone()V

    .line 167
    :cond_70
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 168
    .local v3, r:Landroid/content/res/Resources;
    const/4 v4, 0x5

    const/high16 v5, 0x40c0

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 171
    .local v2, pxsize:F
    iget v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    #setter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->WIDTH_BASIS:I
    invoke-static {p1, v4}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$102(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;I)I

    .line 173
    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->WIDTH_BASIS:I
    invoke-static {p1}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$100(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    #setter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->nRemainCount:I
    invoke-static {p1, v4}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$202(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;I)I

    .line 174
    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->WIDTH_BASIS:I
    invoke-static {p1}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$100(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    #setter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {p1, v4}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$302(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    .line 176
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->initRect()V

    .line 177
    return-void
.end method

.method private drawDeadzone()V
    .registers 7

    .prologue
    .line 348
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 349
    .local v5, paint:Landroid/graphics/Paint;
    const/high16 v0, -0x100

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 350
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 351
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mMatrixCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenHeight:I

    add-int/lit8 v4, v4, 0xf

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 352
    return-void
.end method

.method private drawHoverText(Z)V
    .registers 9
    .parameter "result"

    .prologue
    const/4 v6, 0x1

    .line 331
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 332
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 334
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 335
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mMatrixCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x8

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x4120

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenWidth:I

    div-int/lit8 v3, v3, 0x8

    mul-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenHeight:I

    div-int/lit8 v4, v4, 0x8

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 337
    if-ne p1, v6, :cond_68

    .line 338
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mResultText:Ljava/lang/String;

    .line 339
    const/high16 v0, -0x100

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 340
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 341
    const/high16 v0, 0x42a0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 342
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mMatrixCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mResultText:Ljava/lang/String;

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenHeight:I

    div-int/lit8 v3, v3, 0x8

    mul-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 344
    :cond_68
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->invalidate()V

    .line 345
    return-void
.end method

.method private drawLine(FFFF)V
    .registers 15
    .parameter "preX"
    .parameter "preY"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mLineCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mLinePaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 303
    const/4 v8, 0x0

    .local v8, lowX:I
    const/4 v9, 0x0

    .local v9, lowY:I
    const/4 v6, 0x0

    .local v6, highX:I
    const/4 v7, 0x0

    .line 305
    .local v7, highY:I
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_2c

    .line 306
    float-to-int v6, p1

    .line 307
    float-to-int v8, p3

    .line 314
    :goto_15
    cmpl-float v0, p2, p4

    if-ltz v0, :cond_2f

    .line 315
    float-to-int v7, p2

    .line 316
    float-to-int v9, p4

    .line 321
    :goto_1b
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v1, v8, -0x6

    add-int/lit8 v2, v9, -0x6

    add-int/lit8 v3, v6, 0x6

    add-int/lit8 v4, v7, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->invalidate(Landroid/graphics/Rect;)V

    .line 322
    return-void

    .line 309
    :cond_2c
    float-to-int v6, p3

    .line 310
    float-to-int v8, p1

    goto :goto_15

    .line 318
    :cond_2f
    float-to-int v7, p4

    .line 319
    float-to-int v9, p2

    goto :goto_1b
.end method

.method private drawRect(FFLandroid/graphics/Paint;)V
    .registers 15
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, bPtInside:Z
    iget v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenHeight:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->WIDTH_BASIS:I
    invoke-static {v7}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$100(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 417
    .local v1, col_height:F
    iget v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenWidth:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->WIDTH_BASIS:I
    invoke-static {v7}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$100(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 419
    .local v2, col_width:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1e
    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->WIDTH_BASIS:I
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$100(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_1b7

    .line 420
    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v6

    aget-object v6, v6, v3

    float-to-int v7, p1

    float-to-int v8, p2

    invoke-virtual {v6, v7, v8}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->contains(II)Z

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_8d

    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v6

    aget-object v6, v6, v3

    float-to-int v7, p1

    add-int/lit8 v7, v7, 0x1

    float-to-int v8, p2

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->contains(II)Z

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_8d

    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v6

    aget-object v6, v6, v3

    float-to-int v7, p1

    add-int/lit8 v7, v7, 0x1

    float-to-int v8, p2

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v7, v8}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->contains(II)Z

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_8d

    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v6

    aget-object v6, v6, v3

    float-to-int v7, p1

    add-int/lit8 v7, v7, -0x1

    float-to-int v8, p2

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->contains(II)Z

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_8d

    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v6

    aget-object v6, v6, v3

    float-to-int v7, p1

    add-int/lit8 v7, v7, -0x1

    float-to-int v8, p2

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v7, v8}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->contains(II)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1d9

    .line 425
    :cond_8d
    const/4 v0, 0x1

    .line 426
    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v6

    aget-object v6, v6, v3

    iget-boolean v6, v6, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->click:Z

    if-nez v6, :cond_1b7

    .line 427
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 428
    .local v5, p:Landroid/graphics/Path;
    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v6

    aget-object v6, v6, v3

    iget v6, v6, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x1:I

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v7}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v7

    aget-object v7, v7, v3

    iget v7, v7, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y1:I

    int-to-float v7, v7

    add-float/2addr v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 429
    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v6

    aget-object v6, v6, v3

    iget v6, v6, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x1:I

    int-to-float v6, v6

    add-float/2addr v6, v2

    iget-object v7, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v7}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v7

    aget-object v7, v7, v3

    iget v7, v7, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y2:I

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 430
    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v6

    aget-object v6, v6, v3

    iget v6, v6, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x2:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v7}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v7

    aget-object v7, v7, v3

    iget v7, v7, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y1:I

    int-to-float v7, v7

    add-float/2addr v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 431
    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v6

    aget-object v6, v6, v3

    iget v6, v6, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x1:I

    int-to-float v6, v6

    add-float/2addr v6, v2

    iget-object v7, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v7}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v7

    aget-object v7, v7, v3

    iget v7, v7, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y1:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 432
    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v6

    aget-object v6, v6, v3

    iget v6, v6, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x1:I

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v7}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v7

    aget-object v7, v7, v3

    iget v7, v7, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y1:I

    int-to-float v7, v7

    add-float/2addr v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 434
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 435
    .local v4, mRectPaint:Landroid/graphics/Paint;
    const v6, -0xff0100

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 436
    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mMatrixCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v5, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 438
    const-string v6, "UISpenHoveringDrawTest"

    const-string v7, "PtIsInside !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v6

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->click:Z

    .line 440
    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$210(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)I

    .line 442
    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->WIDTH_BASIS:I
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$100(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)I

    move-result v6

    if-ne v3, v6, :cond_166

    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #calls: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->isDeadZoneModels()Z
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$000(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_166

    .line 443
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->drawDeadzone()V

    .line 446
    :cond_166
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v7}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v7

    aget-object v7, v7, v3

    iget v7, v7, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x1:I

    iget-object v8, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v8}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v8

    aget-object v8, v8, v3

    iget v8, v8, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y1:I

    iget-object v9, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v9}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v9

    aget-object v9, v9, v3

    iget v9, v9, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x2:I

    iget-object v10, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v10}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v10

    aget-object v10, v10, v3

    iget v10, v10, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y2:I

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->invalidate(Landroid/graphics/Rect;)V

    .line 448
    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->nRemainCount:I
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$200(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)I

    move-result v6

    if-nez v6, :cond_1b7

    .line 450
    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    const/4 v7, 0x1

    #setter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsPass:Z
    invoke-static {v6, v7}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$602(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;Z)Z

    .line 451
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->drawHoverText(Z)V

    .line 452
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->drawResultText(Z)V

    .line 454
    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->setResult(I)V

    .line 455
    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    invoke-virtual {v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->finishOnPassWithTimer()V

    .line 462
    .end local v4           #mRectPaint:Landroid/graphics/Paint;
    .end local v5           #p:Landroid/graphics/Path;
    :cond_1b7
    if-nez v0, :cond_1d8

    .line 463
    cmpg-float v6, p1, v2

    if-gez v6, :cond_1c1

    cmpg-float v6, p2, v1

    if-ltz v6, :cond_1d1

    :cond_1c1
    iget v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenWidth:I

    int-to-float v6, v6

    sub-float/2addr v6, v2

    cmpl-float v6, p1, v6

    if-lez v6, :cond_1dd

    iget v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenHeight:I

    int-to-float v6, v6

    sub-float/2addr v6, v1

    cmpl-float v6, p2, v6

    if-lez v6, :cond_1dd

    .line 464
    :cond_1d1
    const-string v6, "UISpenHoveringDrawTest"

    const-string v7, "Ignore first and last triangle"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_1d8
    :goto_1d8
    return-void

    .line 419
    :cond_1d9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1e

    .line 467
    :cond_1dd
    const-string v6, "UISpenHoveringDrawTest"

    const-string v7, "PtOutside"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsTestStart:Z
    invoke-static {v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$700(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)Z

    move-result v6

    if-eqz v6, :cond_1d8

    .line 469
    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    const/4 v7, 0x0

    #setter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsTestStart:Z
    invoke-static {v6, v7}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$702(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;Z)Z

    goto :goto_1d8
.end method

.method private drawResultText(Z)V
    .registers 7
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 355
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 357
    .local v0, paint:Landroid/graphics/Paint;
    if-ne p1, v3, :cond_41

    .line 358
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mResultText:Ljava/lang/String;

    .line 359
    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 364
    :goto_1b
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 366
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 367
    const/high16 v1, 0x4316

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 368
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mMatrixCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mResultText:Ljava/lang/String;

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenWidth:I

    div-int/lit8 v3, v3, 0x8

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenHeight:I

    div-int/lit8 v4, v4, 0x8

    mul-int/lit8 v4, v4, 0x6

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 369
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->invalidate()V

    .line 370
    return-void

    .line 361
    :cond_41
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mResultText:Ljava/lang/String;

    .line 362
    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1b
.end method

.method private initRect()V
    .registers 15

    .prologue
    const/high16 v13, 0x4000

    .line 374
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->WIDTH_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$100(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float v8, v0, v1

    .line 375
    .local v8, col_height:F
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mScreenWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->WIDTH_BASIS:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$100(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float v9, v0, v1

    .line 376
    .local v9, col_width:F
    const/4 v6, 0x0

    .line 377
    .local v6, ColX:I
    const/4 v7, 0x0

    .line 379
    .local v7, ColY:I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 380
    .local v5, mRectPaint:Landroid/graphics/Paint;
    const/high16 v0, -0x100

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 382
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2b
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->WIDTH_BASIS:I
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$100(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v10, v0, :cond_21d

    .line 383
    int-to-float v0, v10

    mul-float/2addr v0, v8

    div-float v1, v8, v13

    add-float/2addr v0, v1

    float-to-int v7, v0

    .line 384
    int-to-float v0, v10

    mul-float/2addr v0, v9

    div-float v1, v9, v13

    add-float/2addr v0, v1

    float-to-int v6, v0

    .line 386
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v0

    new-instance v1, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;-><init>(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$1;)V

    aput-object v1, v0, v10

    .line 388
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v0

    aget-object v0, v0, v10

    iput v6, v0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x1:I

    .line 390
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v0

    aget-object v0, v0, v10

    int-to-float v1, v6

    mul-float v2, v9, v13

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x2:I

    .line 392
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v0

    aget-object v0, v0, v10

    iput v7, v0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y1:I

    .line 394
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v0

    aget-object v0, v0, v10

    int-to-float v1, v7

    mul-float v2, v8, v13

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y2:I

    .line 396
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v0

    aget-object v0, v0, v10

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->click:Z

    .line 397
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mMatrixCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v1

    aget-object v1, v1, v10

    iget v1, v1, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x1:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v2

    aget-object v2, v2, v10

    iget v2, v2, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y1:I

    int-to-float v2, v2

    add-float/2addr v2, v8

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v3

    aget-object v3, v3, v10

    iget v3, v3, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x1:I

    int-to-float v3, v3

    add-float/2addr v3, v9

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v4

    aget-object v4, v4, v10

    iget v4, v4, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y2:I

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 398
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mMatrixCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v1

    aget-object v1, v1, v10

    iget v1, v1, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x1:I

    int-to-float v1, v1

    add-float/2addr v1, v9

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v2

    aget-object v2, v2, v10

    iget v2, v2, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y2:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v3

    aget-object v3, v3, v10

    iget v3, v3, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x2:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v4

    aget-object v4, v4, v10

    iget v4, v4, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y1:I

    int-to-float v4, v4

    add-float/2addr v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 399
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mMatrixCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v1

    aget-object v1, v1, v10

    iget v1, v1, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x2:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v2

    aget-object v2, v2, v10

    iget v2, v2, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y1:I

    int-to-float v2, v2

    add-float/2addr v2, v8

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v3

    aget-object v3, v3, v10

    iget v3, v3, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x1:I

    int-to-float v3, v3

    add-float/2addr v3, v9

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v4

    aget-object v4, v4, v10

    iget v4, v4, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y1:I

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 400
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mMatrixCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v1

    aget-object v1, v1, v10

    iget v1, v1, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x1:I

    int-to-float v1, v1

    add-float/2addr v1, v9

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v2

    aget-object v2, v2, v10

    iget v2, v2, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y1:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v3

    aget-object v3, v3, v10

    iget v3, v3, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x1:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v4

    aget-object v4, v4, v10

    iget v4, v4, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y1:I

    int-to-float v4, v4

    add-float/2addr v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 402
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 403
    .local v11, p:Landroid/graphics/Path;
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v0

    aget-object v0, v0, v10

    iget v0, v0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x1:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v1

    aget-object v1, v1, v10

    iget v1, v1, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y1:I

    int-to-float v1, v1

    add-float/2addr v1, v8

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 404
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v0

    aget-object v0, v0, v10

    iget v0, v0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x1:I

    int-to-float v0, v0

    add-float/2addr v0, v9

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v1

    aget-object v1, v1, v10

    iget v1, v1, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y2:I

    int-to-float v1, v1

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 405
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v0

    aget-object v0, v0, v10

    iget v0, v0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x2:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v1

    aget-object v1, v1, v10

    iget v1, v1, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y1:I

    int-to-float v1, v1

    add-float/2addr v1, v8

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 406
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v0

    aget-object v0, v0, v10

    iget v0, v0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x1:I

    int-to-float v0, v0

    add-float/2addr v0, v9

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v1

    aget-object v1, v1, v10

    iget v1, v1, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y1:I

    int-to-float v1, v1

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 407
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v0

    aget-object v0, v0, v10

    iget v0, v0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x1:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v1

    aget-object v1, v1, v10

    iget v1, v1, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y1:I

    int-to-float v1, v1

    add-float/2addr v1, v8

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 408
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v0

    aget-object v0, v0, v10

    new-instance v1, Landroid/graphics/Region;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v2

    aget-object v2, v2, v10

    iget v2, v2, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x1:I

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v3

    aget-object v3, v3, v10

    iget v3, v3, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y1:I

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v4

    aget-object v4, v4, v10

    iget v4, v4, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->x2:I

    iget-object v12, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    invoke-static {v12}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    move-result-object v12

    aget-object v12, v12, v10

    iget v12, v12, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->y2:I

    invoke-direct {v1, v2, v3, v4, v12}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {v0, v11, v1}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 382
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2b

    .line 410
    .end local v11           #p:Landroid/graphics/Path;
    :cond_21d
    return-void
.end method

.method private setPaint()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    const/high16 v4, -0x100

    const/4 v3, 0x0

    .line 180
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mLinePaint:Landroid/graphics/Paint;

    .line 181
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 183
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 186
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 187
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 190
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_86

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 191
    .local v0, e:Landroid/graphics/PathEffect;
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 192
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mClickPaint:Landroid/graphics/Paint;

    .line 194
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mClickPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 195
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mClickPaint:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mNonClickPaint:Landroid/graphics/Paint;

    .line 197
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mNonClickPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 198
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mNonClickPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mEmptyPaint:Landroid/graphics/Paint;

    .line 201
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 202
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    return-void

    .line 190
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

    .line 207
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 208
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 209
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 213
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 214
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 216
    .local v2, pointerCount:I
    packed-switch v0, :pswitch_data_1aa

    .line 274
    :cond_e
    :goto_e
    :pswitch_e
    return v9

    .line 218
    :pswitch_f
    const-string v3, "UISpenHoveringDrawTest"

    const-string v4, "ACTION_HOVER_ENTER "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v3, "UISpenHoveringDrawTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "X,Y : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%.1f"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%.1f"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsWacom:Z
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$400(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 222
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpl-float v3, v3, v10

    if-lez v3, :cond_e

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpl-float v3, v3, v10

    if-lez v3, :cond_e

    .line 223
    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsFail:Z
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$500(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)Z

    move-result v3

    if-nez v3, :cond_9a

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsPass:Z
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$600(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)Z

    move-result v3

    if-nez v3, :cond_9a

    .line 224
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mTouchedX:F

    .line 225
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mTouchedY:F

    .line 226
    invoke-direct {p0, v8}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->drawHoverText(Z)V

    .line 227
    const-string v3, "UISpenHoveringDrawTest"

    const-string v4, "ACTION_HOVER_ENTER test start!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_9a
    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #setter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsTestStart:Z
    invoke-static {v3, v8}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$702(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;Z)Z

    goto/16 :goto_e

    .line 234
    :pswitch_a1
    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsFail:Z
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$500(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsPass:Z
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$600(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 235
    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsTestStart:Z
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$700(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)Z

    move-result v3

    if-nez v3, :cond_12c

    .line 236
    const-string v3, "UISpenHoveringDrawTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "X,Y : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%.1f"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%.1f"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpl-float v3, v3, v10

    if-lez v3, :cond_e

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpl-float v3, v3, v10

    if-lez v3, :cond_e

    .line 238
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mTouchedX:F

    .line 239
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mTouchedY:F

    .line 240
    invoke-direct {p0, v8}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->drawHoverText(Z)V

    .line 241
    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #setter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsTestStart:Z
    invoke-static {v3, v8}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$702(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;Z)Z

    .line 243
    const-string v3, "UISpenHoveringDrawTest"

    const-string v4, "ACTION_HOVER_ENTER test start! at MOVE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 247
    :cond_12c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpl-float v3, v3, v10

    if-lez v3, :cond_e

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpl-float v3, v3, v10

    if-lez v3, :cond_e

    .line 248
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    if-ge v1, v3, :cond_16e

    .line 249
    iget v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mTouchedX:F

    iput v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mPreTouchedX:F

    .line 250
    iget v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mTouchedY:F

    iput v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mPreTouchedY:F

    .line 251
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v3

    iput v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mTouchedX:F

    .line 252
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v3

    iput v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mTouchedY:F

    .line 253
    iget v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mTouchedX:F

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mTouchedY:F

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mClickPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->drawRect(FFLandroid/graphics/Paint;)V

    .line 254
    iget v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mPreTouchedX:F

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mPreTouchedY:F

    iget v5, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mTouchedX:F

    iget v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mTouchedY:F

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->drawLine(FFFF)V

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_13d

    .line 256
    :cond_16e
    iget v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mTouchedX:F

    iput v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mPreTouchedX:F

    .line 257
    iget v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mTouchedY:F

    iput v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mPreTouchedY:F

    .line 258
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mTouchedX:F

    .line 259
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mTouchedY:F

    .line 260
    iget v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mTouchedX:F

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mTouchedY:F

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mClickPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->drawRect(FFLandroid/graphics/Paint;)V

    .line 261
    iget v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mPreTouchedX:F

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mPreTouchedY:F

    iget v5, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mTouchedX:F

    iget v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->mTouchedY:F

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->drawLine(FFFF)V

    goto/16 :goto_e

    .line 268
    .end local v1           #i:I
    :pswitch_198
    const-string v3, "UISpenHoveringDrawTest"

    const-string v4, "ACTION_HOVER_EXIT"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #setter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsTestStart:Z
    invoke-static {v3, v9}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$702(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;Z)Z

    .line 270
    invoke-direct {p0, v9}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->drawHoverText(Z)V

    goto/16 :goto_e

    .line 216
    nop

    :pswitch_data_1aa
    .packed-switch 0x7
        :pswitch_a1
        :pswitch_e
        :pswitch_f
        :pswitch_198
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 282
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 284
    .local v1, pointerCount:I
    packed-switch v0, :pswitch_data_2a

    .line 298
    :goto_c
    const/4 v2, 0x1

    return v2

    .line 286
    :pswitch_e
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #setter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsTestStart:Z
    invoke-static {v2, v3}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$702(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;Z)Z

    .line 287
    invoke-direct {p0, v3}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->drawHoverText(Z)V

    goto :goto_c

    .line 290
    :pswitch_17
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #setter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsTestStart:Z
    invoke-static {v2, v3}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$702(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;Z)Z

    .line 291
    invoke-direct {p0, v3}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->drawHoverText(Z)V

    goto :goto_c

    .line 294
    :pswitch_20
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    #setter for: Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsTestStart:Z
    invoke-static {v2, v3}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->access$702(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;Z)Z

    .line 295
    invoke-direct {p0, v3}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;->drawHoverText(Z)V

    goto :goto_c

    .line 284
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_e
        :pswitch_20
        :pswitch_17
    .end packed-switch
.end method
