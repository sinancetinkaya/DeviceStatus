.class Lcom/sec/factory/aporiented/athandler/AtCametest$1;
.super Landroid/content/BroadcastReceiver;
.source "AtCametest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/athandler/AtCametest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/athandler/AtCametest;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, mAction:Ljava/lang/String;
    const-string v1, "com.android.samsungtest.CAMERA_GOOD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 47
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onReceive"

    const-string v3, "CAMERA_GOOD"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    invoke-virtual {v1}, Lcom/sec/factory/aporiented/athandler/AtCametest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_41

    .line 49
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "handleCommand"

    const-string v3, "CAMERA_GOOD_CPO"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtCametest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const-string v2, "10"

    const-string v3, "00"

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_37
    :goto_37
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtCametest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/athandler/AtCametest;->stopReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    return-void

    .line 53
    :cond_41
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "handleCommand"

    const-string v3, "CAMERA_GOOD_APO"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtCametest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/athandler/AtCametest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_37

    .line 56
    :cond_5c
    const-string v1, "com.android.samsungtest.CAMERA_BAD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 57
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onReceive"

    const-string v3, "CAMERA_BAD"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    invoke-virtual {v1}, Lcom/sec/factory/aporiented/athandler/AtCametest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_8f

    .line 59
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onReceive"

    const-string v3, "CAMERA_BAD_CPO"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtCametest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const/4 v2, 0x4

    const-string v3, "10"

    const-string v4, "00"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 62
    :cond_8f
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onReceive"

    const-string v3, "CAMERA_BAD_APO"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtCametest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    invoke-virtual {v2}, Lcom/sec/factory/aporiented/athandler/AtCametest;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_37

    .line 66
    :cond_a8
    const-string v1, "com.android.samsungtest.CAMERA_STOP_ACK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 67
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onReceive"

    const-string v3, "CAMERA_STOP_ACK"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    invoke-virtual {v1}, Lcom/sec/factory/aporiented/athandler/AtCametest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_db

    .line 69
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "handleCommand"

    const-string v3, "CAMERA_STOP_ACK_CPO"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtCametest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const-string v2, "10"

    const-string v3, "00"

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_37

    .line 73
    :cond_db
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "handleCommand"

    const-string v3, "CAMERA_STOP_ACK_APO"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtCametest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtCametest;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/athandler/AtCametest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto/16 :goto_37
.end method
