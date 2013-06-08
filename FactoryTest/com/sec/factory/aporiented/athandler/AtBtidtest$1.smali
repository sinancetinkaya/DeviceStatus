.class Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;
.super Landroid/content/BroadcastReceiver;
.source "AtBtidtest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/athandler/AtBtidtest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/athandler/AtBtidtest;)V
    .registers 2
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    .line 57
    const-string v4, "S_DATA"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, resData:Ljava/lang/String;
    const-string v4, "OK"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 59
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "mReceiver.onReceive"

    const-string v6, "BT Write Response Good"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v4, "boot"

    invoke-static {}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 61
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "mReceiver.onReceive"

    const-string v6, "BT Read Boot Setting"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_31
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    iget-object v5, v5, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->stopReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    :goto_3a
    return-void

    .line 63
    :cond_3b
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    invoke-virtual {v4}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->getCmdType()I

    move-result v4

    if-nez v4, :cond_4f

    .line 64
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const-string v5, "27"

    const-string v6, "02"

    invoke-virtual {v4, v8, v5, v6, v2}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    .line 66
    :cond_4f
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    invoke-static {}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_31

    .line 69
    :cond_61
    const-string v4, "NG"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 70
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "mReceiver.onReceive"

    const-string v6, "BT Write/Read Response Bad"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v4, "boot"

    invoke-static {}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 72
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "mReceiver.onReceive"

    const-string v6, "BT Write Boot Setting"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_8b
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    iget-object v5, v5, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->stopReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_3a

    .line 74
    :cond_95
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    invoke-virtual {v4}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->getCmdType()I

    move-result v4

    if-nez v4, :cond_ab

    .line 75
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const/4 v5, 0x4

    const-string v6, "27"

    const-string v7, "00"

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    .line 77
    :cond_ab
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    invoke-static {}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_8b

    .line 81
    :cond_bd
    const-string v1, ""

    .line 82
    .local v1, mData:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "mReceiver.onReceive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resData: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, splitdata:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e2
    array-length v4, v3

    if-ge v0, v4, :cond_fb

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_e2

    .line 87
    :cond_fb
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "mReceiver.onReceive"

    const-string v6, "BT Read Response Good"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    invoke-virtual {v4}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->getCmdType()I

    move-result v4

    if-nez v4, :cond_124

    .line 89
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const-string v5, "27"

    const-string v6, "01"

    invoke-virtual {v4, v8, v5, v6, v1}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_119
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    iget-object v5, v5, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->stopReceiver(Landroid/content/BroadcastReceiver;)V

    goto/16 :goto_3a

    .line 91
    :cond_124
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    invoke-static {}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_119
.end method
