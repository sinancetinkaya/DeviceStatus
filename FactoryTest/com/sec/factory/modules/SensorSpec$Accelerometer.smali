.class public Lcom/sec/factory/modules/SensorSpec$Accelerometer;
.super Ljava/lang/Object;
.source "SensorSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/modules/SensorSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Accelerometer"
.end annotation


# instance fields
.field public mBitCount:I

.field public mFlatness_Max:I

.field public mFlatness_Min:I

.field public mIsSupport_INT_Pin:Z

.field public mRange:Lcom/sec/factory/modules/SensorSpec$Range;

.field final synthetic this$0:Lcom/sec/factory/modules/SensorSpec;


# direct methods
.method public constructor <init>(Lcom/sec/factory/modules/SensorSpec;IIIIIIIIIZ)V
    .registers 21
    .parameter
    .parameter "bitCount"
    .parameter "xMin"
    .parameter "xMax"
    .parameter "yMin"
    .parameter "yMax"
    .parameter "zMin"
    .parameter "zMax"
    .parameter "flatnessMin"
    .parameter "flatnessMax"
    .parameter "isSupport_INT_Pin"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->this$0:Lcom/sec/factory/modules/SensorSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mRange:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 19
    iput p2, p0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mBitCount:I

    .line 20
    new-instance v1, Lcom/sec/factory/modules/SensorSpec$Range;

    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v1, p0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mRange:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 21
    move/from16 v0, p9

    iput v0, p0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mFlatness_Min:I

    .line 22
    move/from16 v0, p10

    iput v0, p0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mFlatness_Max:I

    .line 23
    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mIsSupport_INT_Pin:Z

    .line 24
    return-void
.end method
