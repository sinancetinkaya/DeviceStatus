.class public Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;
.super Landroid/view/View;
.source "UIBarcodeEmulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIBarcodeEmulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BarcodeTestView"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mEmptyPaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mInfoPaint:Landroid/graphics/Paint;

.field private final mMargin:I

.field private mWidth:I

.field final synthetic this$0:Lcom/sec/factory/app/ui/UIBarcodeEmulator;


# direct methods
.method public constructor <init>(Lcom/sec/factory/app/ui/UIBarcodeEmulator;Landroid/content/Context;)V
    .registers 13
    .parameter
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 196
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->this$0:Lcom/sec/factory/app/ui/UIBarcodeEmulator;

    .line 197
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 192
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mMargin:I

    .line 198
    invoke-virtual {p0, v4}, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->setKeepScreenOn(Z)V

    .line 200
    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 201
    .local v7, mDisplay:Landroid/view/Display;
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 202
    .local v8, outpoint:Landroid/graphics/Point;
    invoke-virtual {v7, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 203
    iget v0, v8, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mWidth:I

    .line 204
    iget v0, v8, Landroid/graphics/Point;->y:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mHeight:I

    .line 205
    const-string v0, "UIBarcodeEmulator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mEmptyPaint:Landroid/graphics/Paint;

    .line 208
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 209
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mEmptyPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mInfoPaint:Landroid/graphics/Paint;

    .line 212
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 213
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mInfoPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 214
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mInfoPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mInfoPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x428c

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 216
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mInfoPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 218
    iget v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mWidth:I

    mul-int/lit8 v0, v0, 0x8

    iget v2, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mHeight:I

    mul-int/lit8 v2, v2, 0x8

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mBitmap:Landroid/graphics/Bitmap;

    .line 219
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mCanvas:Landroid/graphics/Canvas;

    .line 220
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mWidth:I

    mul-int/lit8 v2, v2, 0x8

    int-to-float v3, v2

    iget v2, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mHeight:I

    mul-int/lit8 v2, v2, 0x8

    int-to-float v4, v2

    iget-object v5, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mEmptyPaint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 222
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mCanvas:Landroid/graphics/Canvas;

    const-string v1, "1234567890128"

    iget v2, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mWidth:I

    mul-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mHeight:I

    mul-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, -0xf

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 223
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mCanvas:Landroid/graphics/Canvas;

    const-string v1, "BARCODE EMUL"

    iget v2, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mWidth:I

    mul-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mHeight:I

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, -0xf

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 225
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 226
    .local v6, d:Landroid/graphics/drawable/Drawable;
    iget v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mWidth:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mHeight:I

    div-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v6, v9, v9, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 227
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 228
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->drawResultText(Z)V

    return-void
.end method

.method private drawResultText(Z)V
    .registers 7
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    .line 241
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 244
    .local v1, paint:Landroid/graphics/Paint;
    if-ne p1, v4, :cond_39

    .line 245
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, ResultText:Ljava/lang/String;
    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    :goto_19
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 252
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 253
    const/high16 v2, 0x4316

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 254
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mCanvas:Landroid/graphics/Canvas;

    iget v3, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mWidth:I

    mul-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mHeight:I

    mul-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 255
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->invalidate()V

    .line 256
    return-void

    .line 248
    .end local v0           #ResultText:Ljava/lang/String;
    :cond_39
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    .restart local v0       #ResultText:Ljava/lang/String;
    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_19
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 234
    :try_start_3
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_c

    .line 238
    :goto_b
    return-void

    .line 235
    :catch_c
    move-exception v0

    .line 236
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method
