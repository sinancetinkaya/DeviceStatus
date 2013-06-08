.class Lcom/sec/factory/cporiented/FtClientCPO$4;
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
    .line 205
    iput-object p1, p0, Lcom/sec/factory/cporiented/FtClientCPO$4;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 209
    iget-object v5, p0, Lcom/sec/factory/cporiented/FtClientCPO$4;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v5, v5, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "onReceive"

    const-string v7, "Received intent from am"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, action:Ljava/lang/String;
    const-string v5, "COMMAND"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, rawCMD:Ljava/lang/String;
    const/4 v1, 0x0

    .line 213
    .local v1, isDft:Z
    iget-object v5, p0, Lcom/sec/factory/cporiented/FtClientCPO$4;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v5, v5, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "onReceive"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rawCMD: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v5, "com.android.samsungtest.RilDFTCommand"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    move v1, v3

    .line 215
    :goto_3d
    iget-object v5, p0, Lcom/sec/factory/cporiented/FtClientCPO$4;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    #calls: Lcom/sec/factory/cporiented/FtClientCPO;->commandOk(Ljava/lang/String;)Z
    invoke-static {v5, v2}, Lcom/sec/factory/cporiented/FtClientCPO;->access$400(Lcom/sec/factory/cporiented/FtClientCPO;Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v3, :cond_58

    .line 216
    iget-object v3, p0, Lcom/sec/factory/cporiented/FtClientCPO$4;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    #calls: Lcom/sec/factory/cporiented/FtClientCPO;->sendAckCommand(IZ)V
    invoke-static {v3, v4, v1}, Lcom/sec/factory/cporiented/FtClientCPO;->access$500(Lcom/sec/factory/cporiented/FtClientCPO;IZ)V

    .line 217
    iget-object v3, p0, Lcom/sec/factory/cporiented/FtClientCPO$4;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v3, v3, Lcom/sec/factory/cporiented/FtClientCPO;->parser:Lcom/sec/factory/cporiented/AtParserCPO;

    iget-object v4, p0, Lcom/sec/factory/cporiented/FtClientCPO$4;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v4, v4, Lcom/sec/factory/cporiented/FtClientCPO;->writer:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    invoke-virtual {v3, v2, v4, v1}, Lcom/sec/factory/cporiented/AtParserCPO;->process(Ljava/lang/String;Lcom/sec/factory/cporiented/ResponseWriterCPO;Z)V

    .line 221
    :goto_55
    return-void

    :cond_56
    move v1, v4

    .line 214
    goto :goto_3d

    .line 219
    :cond_58
    iget-object v4, p0, Lcom/sec/factory/cporiented/FtClientCPO$4;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    #calls: Lcom/sec/factory/cporiented/FtClientCPO;->sendAckCommand(IZ)V
    invoke-static {v4, v3, v1}, Lcom/sec/factory/cporiented/FtClientCPO;->access$500(Lcom/sec/factory/cporiented/FtClientCPO;IZ)V

    goto :goto_55
.end method
