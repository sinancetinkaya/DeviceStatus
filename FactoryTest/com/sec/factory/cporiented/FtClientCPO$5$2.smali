.class Lcom/sec/factory/cporiented/FtClientCPO$5$2;
.super Ljava/lang/Object;
.source "FtClientCPO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/cporiented/FtClientCPO$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/factory/cporiented/FtClientCPO$5;

.field final synthetic val$message:[B


# direct methods
.method constructor <init>(Lcom/sec/factory/cporiented/FtClientCPO$5;[B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/sec/factory/cporiented/FtClientCPO$5$2;->this$1:Lcom/sec/factory/cporiented/FtClientCPO$5;

    iput-object p2, p0, Lcom/sec/factory/cporiented/FtClientCPO$5$2;->val$message:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO$5$2;->this$1:Lcom/sec/factory/cporiented/FtClientCPO$5;

    iget-object v0, v0, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    #getter for: Lcom/sec/factory/cporiented/FtClientCPO;->mSecPhoneServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/sec/factory/cporiented/FtClientCPO;->access$000(Lcom/sec/factory/cporiented/FtClientCPO;)Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO$5$2;->this$1:Lcom/sec/factory/cporiented/FtClientCPO$5;

    iget-object v0, v0, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v0, v0, Lcom/sec/factory/cporiented/FtClientCPO;->writer:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    if-eqz v0, :cond_2f

    .line 305
    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO$5$2;->this$1:Lcom/sec/factory/cporiented/FtClientCPO$5;

    iget-object v0, v0, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v0, v0, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mBroadcastReceiver ACTION_SEND_TO_RIL"

    iget-object v2, p0, Lcom/sec/factory/cporiented/FtClientCPO$5$2;->val$message:[B

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO$5$2;->this$1:Lcom/sec/factory/cporiented/FtClientCPO$5;

    iget-object v0, v0, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v0, v0, Lcom/sec/factory/cporiented/FtClientCPO;->writer:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    iget-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO$5$2;->val$message:[B

    invoke-virtual {v0, v1}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write([B)V

    .line 312
    :goto_2e
    return-void

    .line 308
    :cond_2f
    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO$5$2;->this$1:Lcom/sec/factory/cporiented/FtClientCPO$5;

    iget-object v0, v0, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v0, v0, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mBroadcastReceiver ACTION_SEND_TO_RIL"

    const-string v2, "clientSocket is not Ready"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO$5$2;->this$1:Lcom/sec/factory/cporiented/FtClientCPO$5;

    iget-object v0, v0, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    #getter for: Lcom/sec/factory/cporiented/FtClientCPO;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/factory/cporiented/FtClientCPO;->access$600(Lcom/sec/factory/cporiented/FtClientCPO;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2e
.end method
