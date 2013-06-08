.class public Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;
.super Landroid/view/View;
.source "UISpenHoveringTest.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UISpenHoveringTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HoverView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;
    }
.end annotation


# instance fields
.field private exitRunnable:Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;

.field private isTouchDown:Z

.field private mHoverBitmap:Landroid/graphics/Bitmap;

.field private mHoverCanvas:Landroid/graphics/Canvas;

.field private mHoverPaint:Landroid/graphics/Paint;

.field private mIsCheckRange:Z

.field private mLineBitmap:Landroid/graphics/Bitmap;

.field private mLineCanvas:Landroid/graphics/Canvas;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mMessageText:Ljava/lang/String;

.field private mPointX:F

.field private mPointY:F

.field private mPreTouchedX:F

.field private mPreTouchedY:F

.field private mResultFailText:Ljava/lang/String;

.field private mResultHoveringText:Ljava/lang/String;

.field private mResultText:Ljava/lang/String;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextResultPaint:Landroid/graphics/Paint;

.field private mTitle:Ljava/lang/String;

.field private mTouchPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;


# direct methods
.method public constructor <init>(Lcom/sec/factory/app/ui/UISpenHoveringTest;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 115
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    .line 116
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 102
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mIsCheckRange:Z

    .line 105
    iput v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointX:F

    .line 106
    iput v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointY:F

    .line 110
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->isTouchDown:Z

    .line 111
    iput v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPreTouchedX:F

    .line 112
    iput v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPreTouchedY:F

    .line 113
    new-instance v0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;-><init>(Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->exitRunnable:Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->setFocusableInTouchMode(Z)V

    .line 118
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->initHoverView()V

    .line 119
    return-void
.end method

.method static synthetic access$500(Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;)Landroid/graphics/Paint;
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTextResultPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;)Landroid/graphics/Canvas;
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mHoverCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private changeView(Landroid/graphics/Paint;Ljava/lang/String;)V
    .registers 9
    .parameter "bgPaint"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 295
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mHoverCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mScreenWidth:I

    int-to-float v3, v2

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mScreenHeight:I

    int-to-float v4, v2

    move v2, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 296
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mHoverCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTitle:Ljava/lang/String;

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x4348

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 297
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mHoverCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mMessageText:Ljava/lang/String;

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x43fa

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 298
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mHoverCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x442f

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTextResultPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 299
    return-void
.end method

.method private drawByEvent(Landroid/view/MotionEvent;)V
    .registers 9
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 238
    .local v0, action:I
    packed-switch v0, :pswitch_data_9c

    .line 285
    :cond_8
    :goto_8
    return-void

    .line 240
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointX:F

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointY:F

    .line 242
    iput-boolean v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->isTouchDown:Z

    goto :goto_8

    .line 247
    :pswitch_18
    iget-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->isTouchDown:Z

    if-eqz v2, :cond_8

    .line 248
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 249
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointX:F

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPreTouchedX:F

    .line 250
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointY:F

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPreTouchedY:F

    .line 252
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointX:F

    .line 253
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointY:F

    .line 255
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPreTouchedX:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPreTouchedY:F

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointX:F

    iget v5, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointY:F

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->drawLine(FFFF)V

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 257
    :cond_45
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointX:F

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPreTouchedX:F

    .line 258
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointY:F

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPreTouchedY:F

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointX:F

    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointY:F

    .line 263
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPreTouchedX:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPreTouchedY:F

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointX:F

    iget v5, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointY:F

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->drawLine(FFFF)V

    .line 265
    iput-boolean v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->isTouchDown:Z

    goto :goto_8

    .line 270
    .end local v1           #i:I
    :pswitch_67
    iget-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->isTouchDown:Z

    if-eqz v2, :cond_8

    .line 271
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointX:F

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPreTouchedX:F

    .line 272
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointY:F

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPreTouchedY:F

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointX:F

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointY:F

    .line 277
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPreTouchedX:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_96

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPreTouchedY:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_96

    .line 278
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointX:F

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mPointY:F

    invoke-direct {p0, v2, v3}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->drawPoint(FF)V

    .line 281
    :cond_96
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->isTouchDown:Z

    goto/16 :goto_8

    .line 238
    nop

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_67
        :pswitch_18
    .end packed-switch
.end method

.method private drawLine(FFFF)V
    .registers 15
    .parameter "preX"
    .parameter "preY"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mLineCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mLinePaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 313
    const/4 v8, 0x0

    .local v8, lowX:I
    const/4 v9, 0x0

    .local v9, lowY:I
    const/4 v6, 0x0

    .local v6, highX:I
    const/4 v7, 0x0

    .line 314
    .local v7, highY:I
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_2c

    .line 315
    float-to-int v6, p1

    .line 316
    float-to-int v8, p3

    .line 321
    :goto_15
    cmpl-float v0, p2, p4

    if-ltz v0, :cond_2f

    .line 322
    float-to-int v7, p2

    .line 323
    float-to-int v9, p4

    .line 328
    :goto_1b
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v1, v8, -0x6

    add-int/lit8 v2, v9, -0x6

    add-int/lit8 v3, v6, 0x6

    add-int/lit8 v4, v7, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->invalidate(Landroid/graphics/Rect;)V

    .line 329
    return-void

    .line 318
    :cond_2c
    float-to-int v6, p3

    .line 319
    float-to-int v8, p1

    goto :goto_15

    .line 325
    :cond_2f
    float-to-int v7, p4

    .line 326
    float-to-int v9, p2

    goto :goto_1b
.end method

.method private drawPoint(FF)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mLineCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 309
    return-void
.end method

.method private initHoverView()V
    .registers 6

    .prologue
    const/high16 v4, -0x100

    const/high16 v3, 0x4080

    const/4 v2, 0x0

    .line 122
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mScreenWidth:I

    .line 123
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mScreenHeight:I

    .line 125
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mHoverPaint:Landroid/graphics/Paint;

    .line 126
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mHoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mHoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mHoverPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTouchPaint:Landroid/graphics/Paint;

    .line 131
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTouchPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTouchPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mLinePaint:Landroid/graphics/Paint;

    .line 135
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 136
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTextPaint:Landroid/graphics/Paint;

    .line 139
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 141
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x425c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 144
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTextResultPaint:Landroid/graphics/Paint;

    .line 145
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTextResultPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTextResultPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 147
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTextResultPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTextResultPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x428c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 150
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mScreenWidth:I

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mScreenHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mHoverBitmap:Landroid/graphics/Bitmap;

    .line 152
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mHoverBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mHoverCanvas:Landroid/graphics/Canvas;

    .line 154
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mScreenWidth:I

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mScreenHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mLineBitmap:Landroid/graphics/Bitmap;

    .line 155
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mLineBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mLineCanvas:Landroid/graphics/Canvas;

    .line 157
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTitle:Ljava/lang/String;

    .line 158
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mMessageText:Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mResultText:Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mResultHoveringText:Ljava/lang/String;

    .line 162
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mResultFailText:Ljava/lang/String;

    .line 163
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->initText()V

    .line 164
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->invalidate()V

    .line 165
    return-void
.end method

.method private initText()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 288
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mHoverCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mScreenWidth:I

    int-to-float v3, v2

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mScreenHeight:I

    int-to-float v4, v2

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mHoverPaint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 289
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mHoverCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTitle:Ljava/lang/String;

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x4348

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 290
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mHoverCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mMessageText:Ljava/lang/String;

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x43fa

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 291
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mHoverCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mResultText:Ljava/lang/String;

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x442f

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTextResultPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 292
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 303
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mHoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 304
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 305
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 204
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_6c

    .line 230
    :cond_8
    :goto_8
    :pswitch_8
    return v4

    .line 206
    :pswitch_9
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsWacom:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->access$000(Lcom/sec/factory/app/ui/UISpenHoveringTest;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 207
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsCounting:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->access$200(Lcom/sec/factory/app/ui/UISpenHoveringTest;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsPass:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->access$100(Lcom/sec/factory/app/ui/UISpenHoveringTest;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 208
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    const/4 v1, 0x1

    #setter for: Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsCounting:Z
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->access$202(Lcom/sec/factory/app/ui/UISpenHoveringTest;Z)Z

    .line 209
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mHoverPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mHoverPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mResultHoveringText:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->changeView(Landroid/graphics/Paint;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->invalidate()V

    .line 212
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->exitRunnable:Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    .line 220
    :pswitch_45
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsPass:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->access$100(Lcom/sec/factory/app/ui/UISpenHoveringTest;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 221
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    #setter for: Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsCounting:Z
    invoke-static {v0, v4}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->access$202(Lcom/sec/factory/app/ui/UISpenHoveringTest;Z)Z

    .line 222
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mHoverPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mHoverPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mResultText:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->changeView(Landroid/graphics/Paint;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->invalidate()V

    .line 225
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->exitRunnable:Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_8

    .line 204
    :pswitch_data_6c
    .packed-switch 0x7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_45
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 347
    const/4 v2, 0x3

    if-ne p1, v2, :cond_c

    .line 348
    const-string v2, "SpenHoveringTest"

    const-string v3, "Keycode Home!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_b
    :goto_b
    return v1

    .line 350
    :cond_c
    const/4 v2, 0x4

    if-ne p1, v2, :cond_8b

    .line 351
    const-string v2, "SpenHoveringTest"

    const-string v3, "This is back_key"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsPressedBackkey:Z
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->access$300(Lcom/sec/factory/app/ui/UISpenHoveringTest;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 353
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 354
    .local v0, rightNow:Ljava/util/Calendar;
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    #setter for: Lcom/sec/factory/app/ui/UISpenHoveringTest;->mCurrentTime:J
    invoke-static {v2, v3, v4}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->access$402(Lcom/sec/factory/app/ui/UISpenHoveringTest;J)J

    .line 355
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    #setter for: Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsPressedBackkey:Z
    invoke-static {v2, v1}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->access$302(Lcom/sec/factory/app/ui/UISpenHoveringTest;Z)Z

    .line 356
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    invoke-virtual {v2}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->startTimer()V

    goto :goto_b

    .line 358
    .end local v0           #rightNow:Ljava/util/Calendar;
    :cond_36
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    const/4 v3, 0x0

    #setter for: Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsPressedBackkey:Z
    invoke-static {v2, v3}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->access$302(Lcom/sec/factory/app/ui/UISpenHoveringTest;Z)Z

    .line 359
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 360
    .restart local v0       #rightNow:Ljava/util/Calendar;
    const-string v2, "SpenHoveringTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rightNow.getTimeInMillis() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mCurrentTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringTest;->mCurrentTime:J
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->access$400(Lcom/sec/factory/app/ui/UISpenHoveringTest;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringTest;->mCurrentTime:J
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->access$400(Lcom/sec/factory/app/ui/UISpenHoveringTest;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    iget v6, v6, Lcom/sec/factory/app/ui/UISpenHoveringTest;->KEY_TIMEOUT:I

    iget-object v7, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    iget v7, v7, Lcom/sec/factory/app/ui/UISpenHoveringTest;->MILLIS_IN_SEC:I

    mul-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gtz v2, :cond_b

    .line 363
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    invoke-virtual {v2}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->onExit()V

    goto :goto_b

    .line 368
    .end local v0           #rightNow:Ljava/util/Calendar;
    :cond_8b
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_b
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 386
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsWacom:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->access$000(Lcom/sec/factory/app/ui/UISpenHoveringTest;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 172
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v1, :cond_37

    .line 173
    const-string v0, "SpenHoveringTest"

    const-string v1, "Draw!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    #setter for: Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsPass:Z
    invoke-static {v0, v2}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->access$102(Lcom/sec/factory/app/ui/UISpenHoveringTest;Z)Z

    .line 175
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    #setter for: Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsCounting:Z
    invoke-static {v0, v2}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->access$202(Lcom/sec/factory/app/ui/UISpenHoveringTest;Z)Z

    .line 176
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->exitRunnable:Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 177
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTouchPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mResultFailText:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->changeView(Landroid/graphics/Paint;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->invalidate()V

    .line 179
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->drawByEvent(Landroid/view/MotionEvent;)V

    .line 198
    :cond_37
    :goto_37
    const/4 v0, 0x1

    return v0

    .line 193
    :cond_39
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-eq v0, v1, :cond_37

    .line 194
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->drawByEvent(Landroid/view/MotionEvent;)V

    goto :goto_37
.end method
