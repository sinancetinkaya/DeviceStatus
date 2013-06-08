.class Lcom/sec/factory/aporiented/FtClient$1$1;
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


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/FtClient$1;)V
    .registers 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sec/factory/aporiented/FtClient$1$1;->this$1:Lcom/sec/factory/aporiented/FtClient$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sec/factory/aporiented/FtClient$1$1;->this$1:Lcom/sec/factory/aporiented/FtClient$1;

    iget-object v0, v0, Lcom/sec/factory/aporiented/FtClient$1;->this$0:Lcom/sec/factory/aporiented/FtClient;

    iget-object v0, v0, Lcom/sec/factory/aporiented/FtClient;->clientSocket_recv:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/sec/factory/aporiented/FtClient$1$1;->this$1:Lcom/sec/factory/aporiented/FtClient$1;

    iget-object v0, v0, Lcom/sec/factory/aporiented/FtClient$1;->this$0:Lcom/sec/factory/aporiented/FtClient;

    iget-object v0, v0, Lcom/sec/factory/aporiented/FtClient;->clientSocket_send:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 115
    const-string v0, "FtClient"

    const-string v1, "mBroadcastReceiver"

    const-string v2, "RESET COMPLETED!!"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/sec/factory/aporiented/FtClient$1$1;->this$1:Lcom/sec/factory/aporiented/FtClient$1;

    iget-object v0, v0, Lcom/sec/factory/aporiented/FtClient$1;->this$0:Lcom/sec/factory/aporiented/FtClient;

    iget-object v0, v0, Lcom/sec/factory/aporiented/FtClient;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    const-string v1, "RESET COMPLETED\r\n"

    invoke-virtual {v0, v1}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 122
    :goto_2c
    return-void

    .line 118
    :cond_2d
    const-string v0, "FtClient"

    const-string v1, "mBroadcastReceiver"

    const-string v2, "clientSocket is not Ready"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/sec/factory/aporiented/FtClient$1$1;->this$1:Lcom/sec/factory/aporiented/FtClient$1;

    iget-object v0, v0, Lcom/sec/factory/aporiented/FtClient$1;->this$0:Lcom/sec/factory/aporiented/FtClient;

    #getter for: Lcom/sec/factory/aporiented/FtClient;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/factory/aporiented/FtClient;->access$000(Lcom/sec/factory/aporiented/FtClient;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2c
.end method
