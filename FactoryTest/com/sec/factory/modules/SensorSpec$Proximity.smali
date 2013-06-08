.class public Lcom/sec/factory/modules/SensorSpec$Proximity;
.super Ljava/lang/Object;
.source "SensorSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/modules/SensorSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Proximity"
.end annotation


# instance fields
.field public mIsSupportADC:Z

.field public mIsSupportOffset:Z

.field public mIsSupportZeroDistance:Z

.field final synthetic this$0:Lcom/sec/factory/modules/SensorSpec;


# direct methods
.method public constructor <init>(Lcom/sec/factory/modules/SensorSpec;ZZZ)V
    .registers 5
    .parameter
    .parameter "isSupportOffset"
    .parameter "isSupportADC"
    .parameter "isSupportZeroDistance"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/factory/modules/SensorSpec$Proximity;->this$0:Lcom/sec/factory/modules/SensorSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean p2, p0, Lcom/sec/factory/modules/SensorSpec$Proximity;->mIsSupportOffset:Z

    .line 78
    iput-boolean p3, p0, Lcom/sec/factory/modules/SensorSpec$Proximity;->mIsSupportADC:Z

    .line 79
    iput-boolean p4, p0, Lcom/sec/factory/modules/SensorSpec$Proximity;->mIsSupportZeroDistance:Z

    .line 80
    return-void
.end method
