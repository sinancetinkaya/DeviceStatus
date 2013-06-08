.class public Lcom/sec/factory/modules/SensorSpec$Range;
.super Ljava/lang/Object;
.source "SensorSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/modules/SensorSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Range"
.end annotation


# instance fields
.field public mIsSupportRange1_X:Z

.field public mIsSupportRange1_Y:Z

.field public mIsSupportRange1_Z:Z

.field public mIsSupportRange2_X:Z

.field public mIsSupportRange2_Y:Z

.field public mIsSupportRange2_Z:Z

.field public mRange1_X_Max:I

.field public mRange1_X_Min:I

.field public mRange1_Y_Max:I

.field public mRange1_Y_Min:I

.field public mRange1_Z_Max:I

.field public mRange1_Z_Min:I

.field public mRange2_X_Max:I

.field public mRange2_X_Min:I

.field public mRange2_Y_Max:I

.field public mRange2_Y_Min:I

.field public mRange2_Z_Max:I

.field public mRange2_Z_Min:I

.field public mRangeCount:I

.field final synthetic this$0:Lcom/sec/factory/modules/SensorSpec;


# direct methods
.method public constructor <init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V
    .registers 11
    .parameter
    .parameter "xMin"
    .parameter "xMax"
    .parameter "yMin"
    .parameter "yMax"
    .parameter "zMin"
    .parameter "zMax"

    .prologue
    const/4 v2, 0x1

    .line 36
    iput-object p1, p0, Lcom/sec/factory/modules/SensorSpec$Range;->this$0:Lcom/sec/factory/modules/SensorSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p2, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_X_Min:I

    .line 38
    iput p3, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_X_Max:I

    .line 39
    iput p4, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Y_Min:I

    .line 40
    iput p5, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Y_Max:I

    .line 41
    iput p6, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Z_Min:I

    .line 42
    iput p7, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Z_Max:I

    .line 43
    iput v2, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRangeCount:I

    .line 44
    iget v0, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_X_Min:I

    iget v1, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_X_Max:I

    if-eq v0, v1, :cond_1c

    .line 45
    iput-boolean v2, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange1_X:Z

    .line 46
    :cond_1c
    iget v0, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Y_Min:I

    iget v1, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Y_Max:I

    if-eq v0, v1, :cond_24

    .line 47
    iput-boolean v2, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange1_Y:Z

    .line 48
    :cond_24
    iget v0, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Z_Min:I

    iget v1, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Z_Max:I

    if-eq v0, v1, :cond_2c

    .line 49
    iput-boolean v2, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange1_Z:Z

    .line 50
    :cond_2c
    return-void
.end method

.method public constructor <init>(Lcom/sec/factory/modules/SensorSpec;IIIIIIIIIIII)V
    .registers 16
    .parameter
    .parameter "range1_X_Min"
    .parameter "range1_X_Max"
    .parameter "range1_Y_Min"
    .parameter "range1_Y_Max"
    .parameter "range1_Z_Min"
    .parameter "range1_Z_Max"
    .parameter "range2_X_Min"
    .parameter "range2_X_Max"
    .parameter "range2_Y_Min"
    .parameter "range2_Y_Max"
    .parameter "range2_Z_Min"
    .parameter "range2_Z_Max"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    .line 56
    iput p8, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_X_Min:I

    .line 57
    iput p9, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_X_Max:I

    .line 58
    iput p10, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_Y_Min:I

    .line 59
    iput p11, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_Y_Max:I

    .line 60
    iput p12, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_Z_Min:I

    .line 61
    iput p13, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_Z_Max:I

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRangeCount:I

    .line 63
    iget v0, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_X_Min:I

    iget v1, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_X_Max:I

    if-eq v0, v1, :cond_1b

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange2_X:Z

    .line 65
    :cond_1b
    iget v0, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_Y_Min:I

    iget v1, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_Y_Max:I

    if-eq v0, v1, :cond_24

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange2_Y:Z

    .line 67
    :cond_24
    iget v0, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_Z_Min:I

    iget v1, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_Z_Max:I

    if-eq v0, v1, :cond_2d

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange2_Z:Z

    .line 69
    :cond_2d
    return-void
.end method
