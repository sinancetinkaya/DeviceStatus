.class Lcom/sec/factory/modules/SensorReadFile$1;
.super Ljava/util/TimerTask;
.source "SensorReadFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/modules/SensorReadFile;->startLoop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/modules/SensorReadFile;


# direct methods
.method constructor <init>(Lcom/sec/factory/modules/SensorReadFile;)V
    .registers 2
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/sec/factory/modules/SensorReadFile$1;->this$0:Lcom/sec/factory/modules/SensorReadFile;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadFile$1;->this$0:Lcom/sec/factory/modules/SensorReadFile;

    invoke-virtual {v0}, Lcom/sec/factory/modules/SensorReadFile;->getSensorReadData()V

    .line 308
    return-void
.end method
