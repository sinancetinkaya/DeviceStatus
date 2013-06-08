.class Lcom/sec/factory/cporiented/FtClientCPO$5$1;
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


# direct methods
.method constructor <init>(Lcom/sec/factory/cporiented/FtClientCPO$5;)V
    .registers 2
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/sec/factory/cporiented/FtClientCPO$5$1;->this$1:Lcom/sec/factory/cporiented/FtClientCPO$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 273
    iget-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO$5$1;->this$1:Lcom/sec/factory/cporiented/FtClientCPO$5;

    iget-object v1, v1, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    #getter for: Lcom/sec/factory/cporiented/FtClientCPO;->mSecPhoneServiceMessenger:Landroid/os/Messenger;
    invoke-static {v1}, Lcom/sec/factory/cporiented/FtClientCPO;->access$000(Lcom/sec/factory/cporiented/FtClientCPO;)Landroid/os/Messenger;

    move-result-object v1

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO$5$1;->this$1:Lcom/sec/factory/cporiented/FtClientCPO$5;

    iget-object v1, v1, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v1, v1, Lcom/sec/factory/cporiented/FtClientCPO;->writer:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    if-eqz v1, :cond_5e

    .line 274
    iget-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO$5$1;->this$1:Lcom/sec/factory/cporiented/FtClientCPO$5;

    iget-object v1, v1, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v1, v1, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "mBroadcastReceiver"

    const-string v3, "BOOTING COMPLETED!!"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO$5$1;->this$1:Lcom/sec/factory/cporiented/FtClientCPO$5;

    iget-object v1, v1, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v1, v1, Lcom/sec/factory/cporiented/FtClientCPO;->writer:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    invoke-virtual {v1}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->sendRILBootMsg()Z

    .line 276
    iget-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO$5$1;->this$1:Lcom/sec/factory/cporiented/FtClientCPO$5;

    iget-object v1, v1, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/factory/cporiented/FtClientCPO;->stopForeground(Z)V

    .line 283
    :goto_30
    const-string v1, "ro.csc.sales_code"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, salesCode:Ljava/lang/String;
    const-string v1, "CTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 287
    iget-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO$5$1;->this$1:Lcom/sec/factory/cporiented/FtClientCPO$5;

    iget-object v1, v1, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    #getter for: Lcom/sec/factory/cporiented/FtClientCPO;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/factory/cporiented/FtClientCPO;->access$700(Lcom/sec/factory/cporiented/FtClientCPO;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->connectedJIG()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 288
    iget-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO$5$1;->this$1:Lcom/sec/factory/cporiented/FtClientCPO$5;

    iget-object v1, v1, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    #calls: Lcom/sec/factory/cporiented/FtClientCPO;->setPendingIntent()V
    invoke-static {v1}, Lcom/sec/factory/cporiented/FtClientCPO;->access$300(Lcom/sec/factory/cporiented/FtClientCPO;)V

    .line 291
    :cond_5d
    return-void

    .line 278
    .end local v0           #salesCode:Ljava/lang/String;
    :cond_5e
    iget-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO$5$1;->this$1:Lcom/sec/factory/cporiented/FtClientCPO$5;

    iget-object v1, v1, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v1, v1, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "mBroadcastReceiver"

    const-string v3, "clientSocket is not Ready"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO$5$1;->this$1:Lcom/sec/factory/cporiented/FtClientCPO$5;

    iget-object v1, v1, Lcom/sec/factory/cporiented/FtClientCPO$5;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    #getter for: Lcom/sec/factory/cporiented/FtClientCPO;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/factory/cporiented/FtClientCPO;->access$600(Lcom/sec/factory/cporiented/FtClientCPO;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_30
.end method
