.class Lcom/sec/factory/modules/SensorNotification$1;
.super Landroid/os/Handler;
.source "SensorNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/modules/SensorNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/modules/SensorNotification;


# direct methods
.method constructor <init>(Lcom/sec/factory/modules/SensorNotification;)V
    .registers 2
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/sec/factory/modules/SensorNotification$1;->this$0:Lcom/sec/factory/modules/SensorNotification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 216
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/factory/modules/SensorNotification$1;->this$0:Lcom/sec/factory/modules/SensorNotification;

    #getter for: Lcom/sec/factory/modules/SensorNotification;->WHAT_LOCAL_TIMEOUT:I
    invoke-static {v1}, Lcom/sec/factory/modules/SensorNotification;->access$000(Lcom/sec/factory/modules/SensorNotification;)I

    move-result v1

    if-ne v0, v1, :cond_19

    .line 217
    const-string v0, "SensorNotification"

    const-string v1, "mLocalHandler.handleMessage"

    const-string v2, "WHAT_LOCAL_TIMEOUT [Message Received]"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/sec/factory/modules/SensorNotification$1;->this$0:Lcom/sec/factory/modules/SensorNotification;

    const/4 v1, 0x1

    #setter for: Lcom/sec/factory/modules/SensorNotification;->mIsTimeout:Z
    invoke-static {v0, v1}, Lcom/sec/factory/modules/SensorNotification;->access$102(Lcom/sec/factory/modules/SensorNotification;Z)Z

    .line 220
    :cond_19
    return-void
.end method
