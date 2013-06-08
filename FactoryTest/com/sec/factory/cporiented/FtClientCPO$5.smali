.class Lcom/sec/factory/cporiented/FtClientCPO$5;
.super Landroid/content/BroadcastReceiver;
.source "FtClientCPO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/cporiented/FtClientCPO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/cporiented/FtClientCPO;


# direct methods
.method constructor <init>(Lcom/sec/factory/cporiented/FtClientCPO;)V
    .registers 2
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 268
    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v2, v2, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "mBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action= = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v2, "com.sec.factory.entry.SEND_BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 271
    iget-object v2, p0, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    #getter for: Lcom/sec/factory/cporiented/FtClientCPO;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/factory/cporiented/FtClientCPO;->access$600(Lcom/sec/factory/cporiented/FtClientCPO;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sec/factory/cporiented/FtClientCPO$5$1;

    invoke-direct {v3, p0}, Lcom/sec/factory/cporiented/FtClientCPO$5$1;-><init>(Lcom/sec/factory/cporiented/FtClientCPO$5;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_4e

    .line 325
    :cond_37
    :goto_37
    monitor-exit p0

    return-void

    .line 293
    :cond_39
    :try_start_39
    const-string v2, "com.sec.factory.entry.SEND_SET_FOREGROUND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 294
    iget-object v2, p0, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    const/16 v3, 0x8a

    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/sec/factory/cporiented/FtClientCPO;->startForeground(ILandroid/app/Notification;)V
    :try_end_4d
    .catchall {:try_start_39 .. :try_end_4d} :catchall_4e

    goto :goto_37

    .line 268
    .end local v0           #action:Ljava/lang/String;
    :catchall_4e
    move-exception v2

    monitor-exit p0

    throw v2

    .line 295
    .restart local v0       #action:Ljava/lang/String;
    :cond_51
    :try_start_51
    const-string v2, "com.sec.factory.SEND_TO_RIL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 296
    const-string v2, "message"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 297
    .local v1, message:[B
    if-nez v1, :cond_6d

    .line 298
    iget-object v2, p0, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v2, v2, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "mBroadcastReceiver ACTION_SEND_TO_RIL"

    const-string v4, "Empty Message!"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 302
    :cond_6d
    iget-object v2, p0, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    #getter for: Lcom/sec/factory/cporiented/FtClientCPO;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/factory/cporiented/FtClientCPO;->access$600(Lcom/sec/factory/cporiented/FtClientCPO;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sec/factory/cporiented/FtClientCPO$5$2;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/cporiented/FtClientCPO$5$2;-><init>(Lcom/sec/factory/cporiented/FtClientCPO$5;[B)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_37

    .line 314
    .end local v1           #message:[B
    :cond_7c
    const-string v2, "com.sec.factory.cporiented.SEND_CMD2RIL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 315
    const-string v2, "FtClientCPO2"

    iget-object v3, p0, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v3, v3, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 316
    iget-object v2, p0, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    #getter for: Lcom/sec/factory/cporiented/FtClientCPO;->mSecPhoneServiceMessenger:Landroid/os/Messenger;
    invoke-static {v2}, Lcom/sec/factory/cporiented/FtClientCPO;->access$000(Lcom/sec/factory/cporiented/FtClientCPO;)Landroid/os/Messenger;

    move-result-object v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v2, v2, Lcom/sec/factory/cporiented/FtClientCPO;->writer:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    if-eqz v2, :cond_b1

    .line 317
    iget-object v2, p0, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v2, v2, Lcom/sec/factory/cporiented/FtClientCPO;->writer:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    invoke-virtual {v2}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->sendSleepCmd()Z

    .line 318
    iget-object v2, p0, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v2, v2, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "mBroadcastReceiver"

    const-string v4, "ACTION_SEND_CMD2RIL"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 320
    :cond_b1
    iget-object v2, p0, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v2, v2, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "mBroadcastReceiver"

    const-string v4, "ACTION_SEND_CMD2RIL clientSocket is not Ready"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bc
    .catchall {:try_start_51 .. :try_end_bc} :catchall_4e

    goto/16 :goto_37
.end method
