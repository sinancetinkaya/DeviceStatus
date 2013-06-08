.class Lcom/sec/factory/aporiented/FtClient$1;
.super Landroid/content/BroadcastReceiver;
.source "FtClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/FtClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/FtClient;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/FtClient;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sec/factory/aporiented/FtClient$1;->this$0:Lcom/sec/factory/aporiented/FtClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 109
    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, action:Ljava/lang/String;
    const-string v4, "FtClient"

    const-string v5, "mBroadcastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action= = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v4, "com.sec.factory.entry.SEND_RESET_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 112
    iget-object v4, p0, Lcom/sec/factory/aporiented/FtClient$1;->this$0:Lcom/sec/factory/aporiented/FtClient;

    #getter for: Lcom/sec/factory/aporiented/FtClient;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/factory/aporiented/FtClient;->access$000(Lcom/sec/factory/aporiented/FtClient;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/sec/factory/aporiented/FtClient$1$1;

    invoke-direct {v5, p0}, Lcom/sec/factory/aporiented/FtClient$1$1;-><init>(Lcom/sec/factory/aporiented/FtClient$1;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_71

    .line 180
    :cond_35
    :goto_35
    monitor-exit p0

    return-void

    .line 124
    :cond_37
    :try_start_37
    const-string v4, "com.sec.factory.entry.SEND_BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 125
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/factory/modules/ModuleCommon;->isConnectionModeNone()Z

    move-result v4

    if-nez v4, :cond_7f

    .line 126
    const/4 v1, 0x5

    .line 128
    .local v1, counter:I
    :cond_4a
    iget-object v4, p0, Lcom/sec/factory/aporiented/FtClient$1;->this$0:Lcom/sec/factory/aporiented/FtClient;

    iget-object v4, v4, Lcom/sec/factory/aporiented/FtClient;->clientSocket_recv:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_5e

    iget-object v4, p0, Lcom/sec/factory/aporiented/FtClient$1;->this$0:Lcom/sec/factory/aporiented/FtClient;

    iget-object v4, v4, Lcom/sec/factory/aporiented/FtClient;->clientSocket_send:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->isConnected()Z
    :try_end_5b
    .catchall {:try_start_37 .. :try_end_5b} :catchall_71

    move-result v4

    if-nez v4, :cond_79

    .line 130
    :cond_5e
    const-wide/16 v4, 0x3e8

    :try_start_60
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_71
    .catch Ljava/lang/InterruptedException; {:try_start_60 .. :try_end_63} :catch_74

    .line 135
    :goto_63
    add-int/lit8 v1, v1, -0x1

    .line 136
    if-gez v1, :cond_4a

    .line 137
    :try_start_67
    const-string v4, "FtClient"

    const-string v5, "mBroadcastReceiver"

    const-string v6, "Can not send BOOTING COMPLETED!!"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_71

    goto :goto_35

    .line 109
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #counter:I
    :catchall_71
    move-exception v4

    monitor-exit p0

    throw v4

    .line 131
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #counter:I
    :catch_74
    move-exception v2

    .line 133
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_75
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_63

    .line 142
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_79
    new-instance v4, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;

    invoke-direct {v4, p1}, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;-><init>(Landroid/content/Context;)V

    goto :goto_35

    .line 144
    .end local v1           #counter:I
    :cond_7f
    iget-object v4, p0, Lcom/sec/factory/aporiented/FtClient$1;->this$0:Lcom/sec/factory/aporiented/FtClient;

    #getter for: Lcom/sec/factory/aporiented/FtClient;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/factory/aporiented/FtClient;->access$000(Lcom/sec/factory/aporiented/FtClient;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/sec/factory/aporiented/FtClient$1$2;

    invoke-direct {v5, p0}, Lcom/sec/factory/aporiented/FtClient$1$2;-><init>(Lcom/sec/factory/aporiented/FtClient$1;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_35

    .line 159
    :cond_8e
    const-string v4, "com.sec.factory.SEND_TO_RIL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 161
    const-string v4, "message"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, message:Ljava/lang/String;
    if-nez v3, :cond_a8

    .line 163
    const-string v4, "FtClient"

    const-string v5, "mBroadcastReceiver ACTION_SEND_TO_RIL"

    const-string v6, "Empty Message!"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 167
    :cond_a8
    iget-object v4, p0, Lcom/sec/factory/aporiented/FtClient$1;->this$0:Lcom/sec/factory/aporiented/FtClient;

    #getter for: Lcom/sec/factory/aporiented/FtClient;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/factory/aporiented/FtClient;->access$000(Lcom/sec/factory/aporiented/FtClient;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/sec/factory/aporiented/FtClient$1$3;

    invoke-direct {v5, p0, v3}, Lcom/sec/factory/aporiented/FtClient$1$3;-><init>(Lcom/sec/factory/aporiented/FtClient$1;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_b6
    .catchall {:try_start_75 .. :try_end_b6} :catchall_71

    goto/16 :goto_35
.end method
