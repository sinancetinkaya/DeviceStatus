.class public Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;
.super Ljava/lang/Object;
.source "SensorReadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/modules/SensorReadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GyroExpansionData"
.end annotation


# instance fields
.field public mData:[S

.field public mNoiseBias:[F

.field public mRMSValue:[F

.field public mReturnValue:I

.field final synthetic this$0:Lcom/sec/factory/modules/SensorReadManager;


# direct methods
.method public constructor <init>(Lcom/sec/factory/modules/SensorReadManager;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 388
    iput-object p1, p0, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->this$0:Lcom/sec/factory/modules/SensorReadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mNoiseBias:[F

    .line 390
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mData:[S

    .line 391
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mRMSValue:[F

    .line 392
    return-void
.end method
