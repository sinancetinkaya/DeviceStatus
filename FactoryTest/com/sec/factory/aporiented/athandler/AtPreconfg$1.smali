.class Lcom/sec/factory/aporiented/athandler/AtPreconfg$1;
.super Landroid/content/BroadcastReceiver;
.source "AtPreconfg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/athandler/AtPreconfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtPreconfg;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/athandler/AtPreconfg;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtPreconfg$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtPreconfg;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, mAction:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtPreconfg$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtPreconfg;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "onReceive"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, "com.sec.factory.aporiented.athandler.atpreconfg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 119
    const-string v2, "code"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, resData:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtPreconfg$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtPreconfg;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "onReceive"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtPreconfg$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtPreconfg;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtPreconfg$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtPreconfg;

    const-string v4, "0"

    invoke-virtual {v3, v4, v1}, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 122
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtPreconfg$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtPreconfg;

    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtPreconfg$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtPreconfg;

    iget-object v3, v3, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->stopReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    .end local v1           #resData:Ljava/lang/String;
    :cond_62
    return-void
.end method
