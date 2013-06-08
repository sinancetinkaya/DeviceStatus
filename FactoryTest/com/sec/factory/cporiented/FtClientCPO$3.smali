.class Lcom/sec/factory/cporiented/FtClientCPO$3;
.super Landroid/os/Handler;
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
    .line 172
    iput-object p1, p0, Lcom/sec/factory/cporiented/FtClientCPO$3;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 174
    iget-object v7, p0, Lcom/sec/factory/cporiented/FtClientCPO$3;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v7, v7, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "handleMessage"

    const-string v9, "get message from SecPhoneService"

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v2, 0x0

    .line 176
    .local v2, isDft:Z
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 177
    .local v1, data:Landroid/os/Message;
    invoke-virtual {v1, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 178
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 179
    .local v0, b:Landroid/os/Bundle;
    const-string v7, "COMMAND"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, rawCMD:Ljava/lang/String;
    const-string v7, "action"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, type:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/factory/cporiented/FtClientCPO$3;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v7, v7, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "handleMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v7, p0, Lcom/sec/factory/cporiented/FtClientCPO$3;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v7, v7, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "handleMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "rawCMD: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v7, "com.android.samsungtest.RilCommand"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6d

    const-string v7, "com.android.samsungtest.RilDFTCommand"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 186
    :cond_6d
    iget-object v7, p0, Lcom/sec/factory/cporiented/FtClientCPO$3;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    #getter for: Lcom/sec/factory/cporiented/FtClientCPO;->mIsFirstCmd:Z
    invoke-static {v7}, Lcom/sec/factory/cporiented/FtClientCPO;->access$200(Lcom/sec/factory/cporiented/FtClientCPO;)Z

    move-result v7

    if-nez v7, :cond_8a

    .line 188
    iget-object v7, p0, Lcom/sec/factory/cporiented/FtClientCPO$3;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    #calls: Lcom/sec/factory/cporiented/FtClientCPO;->setPendingIntent()V
    invoke-static {v7}, Lcom/sec/factory/cporiented/FtClientCPO;->access$300(Lcom/sec/factory/cporiented/FtClientCPO;)V

    .line 189
    iget-object v7, p0, Lcom/sec/factory/cporiented/FtClientCPO$3;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    #setter for: Lcom/sec/factory/cporiented/FtClientCPO;->mIsFirstCmd:Z
    invoke-static {v7, v5}, Lcom/sec/factory/cporiented/FtClientCPO;->access$202(Lcom/sec/factory/cporiented/FtClientCPO;Z)Z

    .line 190
    iget-object v7, p0, Lcom/sec/factory/cporiented/FtClientCPO$3;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v7, v7, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "handleMessage"

    const-string v9, "FirstCMDReceived: Noti ON"

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_8a
    const-string v7, "com.android.samsungtest.RilDFTCommand"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ac

    move v2, v5

    .line 196
    :goto_93
    iget-object v7, p0, Lcom/sec/factory/cporiented/FtClientCPO$3;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    #calls: Lcom/sec/factory/cporiented/FtClientCPO;->commandOk(Ljava/lang/String;)Z
    invoke-static {v7, v3}, Lcom/sec/factory/cporiented/FtClientCPO;->access$400(Lcom/sec/factory/cporiented/FtClientCPO;Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v5, :cond_ae

    .line 197
    iget-object v5, p0, Lcom/sec/factory/cporiented/FtClientCPO$3;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    #calls: Lcom/sec/factory/cporiented/FtClientCPO;->sendAckCommand(IZ)V
    invoke-static {v5, v6, v2}, Lcom/sec/factory/cporiented/FtClientCPO;->access$500(Lcom/sec/factory/cporiented/FtClientCPO;IZ)V

    .line 198
    iget-object v5, p0, Lcom/sec/factory/cporiented/FtClientCPO$3;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v5, v5, Lcom/sec/factory/cporiented/FtClientCPO;->parser:Lcom/sec/factory/cporiented/AtParserCPO;

    iget-object v6, p0, Lcom/sec/factory/cporiented/FtClientCPO$3;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v6, v6, Lcom/sec/factory/cporiented/FtClientCPO;->writer:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    invoke-virtual {v5, v3, v6, v2}, Lcom/sec/factory/cporiented/AtParserCPO;->process(Ljava/lang/String;Lcom/sec/factory/cporiented/ResponseWriterCPO;Z)V

    .line 202
    :goto_ab
    return-void

    :cond_ac
    move v2, v6

    .line 194
    goto :goto_93

    .line 200
    :cond_ae
    iget-object v6, p0, Lcom/sec/factory/cporiented/FtClientCPO$3;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    #calls: Lcom/sec/factory/cporiented/FtClientCPO;->sendAckCommand(IZ)V
    invoke-static {v6, v5, v2}, Lcom/sec/factory/cporiented/FtClientCPO;->access$500(Lcom/sec/factory/cporiented/FtClientCPO;IZ)V

    goto :goto_ab
.end method
