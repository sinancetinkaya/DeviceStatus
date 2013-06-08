.class public Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;
.super Ljava/lang/Object;
.source "SensorReadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/modules/SensorReadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MagneticExpansionData"
.end annotation


# instance fields
.field public mADC:[Ljava/lang/String;

.field public mADC2:[Ljava/lang/String;

.field public mDAC:[Ljava/lang/String;

.field public mOffset_H:[Ljava/lang/String;

.field public mPowerOff:[Ljava/lang/String;

.field public mPowerOn:[Ljava/lang/String;

.field public mReturnValue:I

.field public mSelf:[Ljava/lang/String;

.field public mStatus:[Ljava/lang/String;

.field public mTemperature:[Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/factory/modules/SensorReadManager;


# direct methods
.method public constructor <init>(Lcom/sec/factory/modules/SensorReadManager;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 426
    iput-object p1, p0, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->this$0:Lcom/sec/factory/modules/SensorReadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    iput-object v0, p0, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOn:[Ljava/lang/String;

    .line 428
    iput-object v0, p0, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOff:[Ljava/lang/String;

    .line 429
    iput-object v0, p0, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mStatus:[Ljava/lang/String;

    .line 430
    iput-object v0, p0, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mTemperature:[Ljava/lang/String;

    .line 431
    iput-object v0, p0, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    .line 432
    iput-object v0, p0, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    .line 433
    iput-object v0, p0, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC2:[Ljava/lang/String;

    .line 434
    iput-object v0, p0, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    .line 435
    iput-object v0, p0, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mOffset_H:[Ljava/lang/String;

    return-void
.end method
