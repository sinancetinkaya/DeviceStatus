.class public Lcom/sec/android/app/camera/VideoPreview;
.super Landroid/view/SurfaceView;
.source "VideoPreview.java"


# static fields
.field public static DONT_CARE:F


# instance fields
.field private mAspectRatio:F

.field private mHeight:I

.field private mHorizontalTileSize:I

.field private mVerticalTileSize:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/camera/VideoPreview;->DONT_CARE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 27
    iput v1, p0, Lcom/sec/android/app/camera/VideoPreview;->mHorizontalTileSize:I

    .line 28
    iput v1, p0, Lcom/sec/android/app/camera/VideoPreview;->mVerticalTileSize:I

    .line 30
    iput v0, p0, Lcom/sec/android/app/camera/VideoPreview;->mWidth:I

    .line 31
    iput v0, p0, Lcom/sec/android/app/camera/VideoPreview;->mHeight:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput v1, p0, Lcom/sec/android/app/camera/VideoPreview;->mHorizontalTileSize:I

    .line 28
    iput v1, p0, Lcom/sec/android/app/camera/VideoPreview;->mVerticalTileSize:I

    .line 30
    iput v0, p0, Lcom/sec/android/app/camera/VideoPreview;->mWidth:I

    .line 31
    iput v0, p0, Lcom/sec/android/app/camera/VideoPreview;->mHeight:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput v1, p0, Lcom/sec/android/app/camera/VideoPreview;->mHorizontalTileSize:I

    .line 28
    iput v1, p0, Lcom/sec/android/app/camera/VideoPreview;->mVerticalTileSize:I

    .line 30
    iput v0, p0, Lcom/sec/android/app/camera/VideoPreview;->mWidth:I

    .line 31
    iput v0, p0, Lcom/sec/android/app/camera/VideoPreview;->mHeight:I

    .line 49
    return-void
.end method

.method private roundUpToTile(III)I
    .registers 5
    .parameter "dimension"
    .parameter "tileSize"
    .parameter "maxDimension"

    .prologue
    .line 122
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p2

    mul-int/2addr v0, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 90
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 91
    .local v4, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 93
    .local v2, heightSpecSize:I
    move v3, v4

    .line 94
    .local v3, width:I
    move v1, v2

    .line 96
    .local v1, height:I
    const-string v5, "VideoPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Max onMeasure : WH["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    if-lez v3, :cond_9f

    if-lez v1, :cond_9f

    .line 99
    iget v5, p0, Lcom/sec/android/app/camera/VideoPreview;->mWidth:I

    if-eqz v5, :cond_46

    iget v5, p0, Lcom/sec/android/app/camera/VideoPreview;->mHeight:I

    if-eqz v5, :cond_46

    .line 100
    iget v5, p0, Lcom/sec/android/app/camera/VideoPreview;->mWidth:I

    iget v6, p0, Lcom/sec/android/app/camera/VideoPreview;->mHeight:I

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/VideoPreview;->setMeasuredDimension(II)V

    .line 119
    :goto_45
    return-void

    .line 104
    :cond_46
    int-to-float v5, v3

    int-to-float v6, v1

    div-float v0, v5, v6

    .line 105
    .local v0, defaultRatio:F
    iget v5, p0, Lcom/sec/android/app/camera/VideoPreview;->mAspectRatio:F

    cmpg-float v5, v0, v5

    if-gez v5, :cond_93

    .line 107
    int-to-float v5, v3

    iget v6, p0, Lcom/sec/android/app/camera/VideoPreview;->mAspectRatio:F

    div-float/2addr v5, v6

    float-to-int v1, v5

    .line 111
    :cond_55
    :goto_55
    iget v5, p0, Lcom/sec/android/app/camera/VideoPreview;->mHorizontalTileSize:I

    invoke-direct {p0, v3, v5, v4}, Lcom/sec/android/app/camera/VideoPreview;->roundUpToTile(III)I

    move-result v3

    .line 112
    iget v5, p0, Lcom/sec/android/app/camera/VideoPreview;->mVerticalTileSize:I

    invoke-direct {p0, v1, v5, v2}, Lcom/sec/android/app/camera/VideoPreview;->roundUpToTile(III)I

    move-result v1

    .line 113
    const-string v5, "VideoPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onMeasure : AR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/VideoPreview;->mAspectRatio:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " setting size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x78

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/camera/VideoPreview;->setMeasuredDimension(II)V

    goto :goto_45

    .line 108
    :cond_93
    iget v5, p0, Lcom/sec/android/app/camera/VideoPreview;->mAspectRatio:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_55

    .line 109
    int-to-float v5, v1

    iget v6, p0, Lcom/sec/android/app/camera/VideoPreview;->mAspectRatio:F

    mul-float/2addr v5, v6

    float-to-int v3, v5

    goto :goto_55

    .line 118
    .end local v0           #defaultRatio:F
    :cond_9f
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    goto :goto_45
.end method

.method public setAspectRatio(F)V
    .registers 3
    .parameter "aspectRatio"

    .prologue
    .line 65
    iget v0, p0, Lcom/sec/android/app/camera/VideoPreview;->mAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 66
    iput p1, p0, Lcom/sec/android/app/camera/VideoPreview;->mAspectRatio:F

    .line 67
    invoke-virtual {p0}, Lcom/sec/android/app/camera/VideoPreview;->requestLayout()V

    .line 68
    invoke-virtual {p0}, Lcom/sec/android/app/camera/VideoPreview;->invalidate()V

    .line 70
    :cond_e
    return-void
.end method

.method public setAspectRatio(II)V
    .registers 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 61
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/VideoPreview;->setAspectRatio(F)V

    .line 62
    return-void
.end method
