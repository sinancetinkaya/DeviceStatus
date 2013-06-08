.class public Lcom/sec/factory/modules/SensorSpec$Light;
.super Ljava/lang/Object;
.source "SensorSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/modules/SensorSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Light"
.end annotation


# instance fields
.field public mIsSensorTypeLighte:I

.field public mIsSupportOffset:Z

.field public mIsSupportZeroDistance:Z

.field final synthetic this$0:Lcom/sec/factory/modules/SensorSpec;


# direct methods
.method public constructor <init>(Lcom/sec/factory/modules/SensorSpec;IZZ)V
    .registers 5
    .parameter
    .parameter "isSensorTypeLighte"
    .parameter "isSupportOffset"
    .parameter "isSupportZeroDistance"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/factory/modules/SensorSpec$Light;->this$0:Lcom/sec/factory/modules/SensorSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p2, p0, Lcom/sec/factory/modules/SensorSpec$Light;->mIsSensorTypeLighte:I

    .line 91
    iput-boolean p3, p0, Lcom/sec/factory/modules/SensorSpec$Light;->mIsSupportOffset:Z

    .line 92
    iput-boolean p4, p0, Lcom/sec/factory/modules/SensorSpec$Light;->mIsSupportZeroDistance:Z

    .line 93
    return-void
.end method
