.class Lcom/sec/factory/aporiented/athandler/AtFcbttest$1;
.super Landroid/content/BroadcastReceiver;
.source "AtFcbttest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/athandler/AtFcbttest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtFcbttest;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/athandler/AtFcbttest;)V
    .registers 2
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtFcbttest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFcbttest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.sec.factory.intent.ACTION_BT_RESPONSE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 47
    const-string v2, "result"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, resData:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFcbttest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFcbttest;

    invoke-virtual {v2}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->getCmdType()I

    move-result v2

    if-nez v2, :cond_4c

    .line 49
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFcbttest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFcbttest;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "onReceive"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFcbttest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFcbttest;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const/4 v3, 0x2

    const-string v4, "06"

    const-string v5, "00"

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_42
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFcbttest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFcbttest;

    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtFcbttest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFcbttest;

    iget-object v3, v3, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->stopReceiver(Landroid/content/BroadcastReceiver;)V

    .line 57
    .end local v1           #resData:Ljava/lang/String;
    :cond_4b
    return-void

    .line 53
    .restart local v1       #resData:Ljava/lang/String;
    :cond_4c
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFcbttest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFcbttest;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtFcbttest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFcbttest;

    const-string v4, "0"

    invoke-virtual {v3, v4, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_42
.end method
