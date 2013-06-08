.class Lcom/sec/factory/aporiented/FtClient$1$3;
.super Ljava/lang/Object;
.source "FtClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/aporiented/FtClient$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/factory/aporiented/FtClient$1;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/FtClient$1;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/sec/factory/aporiented/FtClient$1$3;->this$1:Lcom/sec/factory/aporiented/FtClient$1;

    iput-object p2, p0, Lcom/sec/factory/aporiented/FtClient$1$3;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/factory/aporiented/FtClient$1$3;->this$1:Lcom/sec/factory/aporiented/FtClient$1;

    iget-object v0, v0, Lcom/sec/factory/aporiented/FtClient$1;->this$0:Lcom/sec/factory/aporiented/FtClient;

    iget-object v0, v0, Lcom/sec/factory/aporiented/FtClient;->clientSocket_recv:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/sec/factory/aporiented/FtClient$1$3;->this$1:Lcom/sec/factory/aporiented/FtClient$1;

    iget-object v0, v0, Lcom/sec/factory/aporiented/FtClient$1;->this$0:Lcom/sec/factory/aporiented/FtClient;

    iget-object v0, v0, Lcom/sec/factory/aporiented/FtClient;->clientSocket_send:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 170
    const-string v0, "FtClient"

    const-string v1, "mBroadcastReceiver ACTION_SEND_TO_RIL"

    iget-object v2, p0, Lcom/sec/factory/aporiented/FtClient$1$3;->val$message:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/sec/factory/aporiented/FtClient$1$3;->this$1:Lcom/sec/factory/aporiented/FtClient$1;

    iget-object v0, v0, Lcom/sec/factory/aporiented/FtClient$1;->this$0:Lcom/sec/factory/aporiented/FtClient;

    iget-object v0, v0, Lcom/sec/factory/aporiented/FtClient;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v1, p0, Lcom/sec/factory/aporiented/FtClient$1$3;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 177
    :goto_2c
    return-void

    .line 173
    :cond_2d
    const-string v0, "FtClient"

    const-string v1, "mBroadcastReceiver ACTION_SEND_TO_RIL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clientSocket is not Ready:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/aporiented/FtClient$1$3;->val$message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/sec/factory/aporiented/FtClient$1$3;->this$1:Lcom/sec/factory/aporiented/FtClient$1;

    iget-object v0, v0, Lcom/sec/factory/aporiented/FtClient$1;->this$0:Lcom/sec/factory/aporiented/FtClient;

    #getter for: Lcom/sec/factory/aporiented/FtClient;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/factory/aporiented/FtClient;->access$000(Lcom/sec/factory/aporiented/FtClient;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2c
.end method
