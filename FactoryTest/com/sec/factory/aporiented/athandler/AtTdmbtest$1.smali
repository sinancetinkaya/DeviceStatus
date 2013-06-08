.class Lcom/sec/factory/aporiented/athandler/AtTdmbtest$1;
.super Landroid/content/BroadcastReceiver;
.source "AtTdmbtest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/athandler/AtTdmbtest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtTdmbtest;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/athandler/AtTdmbtest;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtTdmbtest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, mAction:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtTdmbtest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onReceive"

    invoke-static {v1, v2, v0}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "com.android.samsungtest.DMB_GOOD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 51
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtTdmbtest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onReceive"

    const-string v3, "DMB_GOOD"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtTdmbtest;

    invoke-virtual {v1}, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_4a

    .line 53
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtTdmbtest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "handleCommand"

    const-string v3, "DMB_GOOD_CPO"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtTdmbtest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const/4 v2, 0x3

    const-string v3, "41"

    const-string v4, "00"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_40
    :goto_40
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtTdmbtest;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtTdmbtest;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->stopReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    return-void

    .line 56
    :cond_4a
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtTdmbtest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "handleCommand"

    const-string v3, "DMB_GOOD_APO"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtTdmbtest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtTdmbtest;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_40

    .line 59
    :cond_65
    const-string v1, "com.android.samsungtest.DMB_BAD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 60
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtTdmbtest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onReceive"

    const-string v3, "DMB_BAD"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtTdmbtest;

    invoke-virtual {v1}, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_98

    .line 62
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtTdmbtest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onReceive"

    const-string v3, "DMB_BAD_CPO"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtTdmbtest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const/4 v2, 0x4

    const-string v3, "41"

    const-string v4, "00"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 65
    :cond_98
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtTdmbtest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onReceive"

    const-string v3, "DMB_BAD_APO"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtTdmbtest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtTdmbtest;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_40
.end method
