.class Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;
.super Landroid/content/BroadcastReceiver;
.source "AtWifiidrw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/athandler/AtWifiidrw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtWifiidrw;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/athandler/AtWifiidrw;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifiidrw;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x2

    .line 77
    const-string v4, "S_DATA"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, resData:Ljava/lang/String;
    const-string v4, "OK"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 79
    const-string v4, "boot"

    invoke-static {}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 86
    :goto_1b
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifiidrw;

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifiidrw;

    iget-object v5, v5, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->stopReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    :goto_24
    return-void

    .line 81
    :cond_25
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifiidrw;

    invoke-virtual {v4}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->getCmdType()I

    move-result v4

    if-nez v4, :cond_39

    .line 82
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifiidrw;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const-string v5, "28"

    const-string v6, "02"

    invoke-virtual {v4, v7, v5, v6, v2}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 84
    :cond_39
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifiidrw;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifiidrw;

    invoke-static {}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_1b

    .line 87
    :cond_4b
    const-string v4, "NG"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 88
    const-string v4, "boot"

    invoke-static {}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 95
    :goto_5f
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifiidrw;

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifiidrw;

    iget-object v5, v5, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->stopReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_24

    .line 90
    :cond_69
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifiidrw;

    invoke-virtual {v4}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->getCmdType()I

    move-result v4

    if-nez v4, :cond_7f

    .line 91
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifiidrw;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const/4 v5, 0x4

    const-string v6, "28"

    const-string v7, "02"

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    .line 93
    :cond_7f
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifiidrw;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifiidrw;

    invoke-static {}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_5f

    .line 97
    :cond_91
    const-string v1, ""

    .line 98
    .local v1, mData:Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, splitdata:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9a
    array-length v4, v3

    if-ge v0, v4, :cond_b3

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_9a

    .line 102
    :cond_b3
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifiidrw;

    invoke-virtual {v4}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->getCmdType()I

    move-result v4

    if-nez v4, :cond_d1

    .line 103
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifiidrw;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const-string v5, "28"

    const-string v6, "01"

    invoke-virtual {v4, v7, v5, v6, v1}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_c6
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifiidrw;

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifiidrw;

    iget-object v5, v5, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->stopReceiver(Landroid/content/BroadcastReceiver;)V

    goto/16 :goto_24

    .line 105
    :cond_d1
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifiidrw;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifiidrw;

    invoke-static {}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_c6
.end method
