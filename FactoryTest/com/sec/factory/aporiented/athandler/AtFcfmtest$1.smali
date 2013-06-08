.class Lcom/sec/factory/aporiented/athandler/AtFcfmtest$1;
.super Landroid/content/BroadcastReceiver;
.source "AtFcfmtest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/athandler/AtFcfmtest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtFcfmtest;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/athandler/AtFcfmtest;)V
    .registers 2
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFcfmtest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, action:Ljava/lang/String;
    const-string v3, "signal_strength"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, resultData:Ljava/lang/String;
    const-string v3, "test.mode.radio.on.response"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 43
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFcfmtest;

    iget-object v3, v3, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFcfmtest;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 45
    :cond_21
    const-string v3, "test.mode.radio.off.response"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 46
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFcfmtest;

    iget-object v3, v3, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFcfmtest;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 51
    :cond_38
    const-string v3, "NEW_DM"

    const-string v4, "FACTORY_TEST_PROTOCOL"

    invoke-static {v4}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 52
    const/4 v0, 0x4

    .line 53
    .local v0, RET_DATA_LEN:I
    :goto_47
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_62

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_47

    .line 60
    .end local v0           #RET_DATA_LEN:I
    :cond_62
    const-string v3, "test.mode.radio.freq.response"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 61
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFcfmtest;

    invoke-virtual {v3}, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->getCmdType()I

    move-result v3

    if-nez v3, :cond_88

    .line 62
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFcfmtest;

    iget-object v3, v3, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const/4 v4, 0x2

    const-string v5, "08"

    const-string v6, "01"

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_7e
    :goto_7e
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFcfmtest;

    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFcfmtest;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->stopReceiver(Landroid/content/BroadcastReceiver;)V

    .line 67
    return-void

    .line 64
    :cond_88
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFcfmtest;

    iget-object v3, v3, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFcfmtest;

    const-string v5, "1"

    const-string v6, "signal_strength"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_7e
.end method
