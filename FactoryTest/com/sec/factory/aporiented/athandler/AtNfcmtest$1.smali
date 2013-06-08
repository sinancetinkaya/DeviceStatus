.class Lcom/sec/factory/aporiented/athandler/AtNfcmtest$1;
.super Landroid/content/BroadcastReceiver;
.source "AtNfcmtest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/athandler/AtNfcmtest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtNfcmtest;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/athandler/AtNfcmtest;)V
    .registers 2
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtNfcmtest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, action:Ljava/lang/String;
    const-string v2, ""

    .line 54
    .local v2, resData:Ljava/lang/String;
    const/4 v1, 0x0

    .line 55
    .local v1, resCmd:I
    const-string v3, "com.sec.android.app.nfcntest.NFC_TEST_RESPONSE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 56
    const-string v3, "S_DATA"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    if-nez v2, :cond_1f

    .line 58
    const-string v3, "I_DATA"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    :cond_1f
    const-string v3, "CMDID"

    invoke-virtual {p2, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 61
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtNfcmtest;

    iget-object v3, v3, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "onReceive"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resCmd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtNfcmtest;

    invoke-virtual {v3}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->getCmdType()I

    move-result v3

    if-nez v3, :cond_a3

    .line 63
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtNfcmtest;

    iget-object v3, v3, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "onReceive"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtNfcmtest;

    iget-object v3, v3, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const/4 v4, 0x2

    const-string v5, "5D"

    const-string v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_95
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtNfcmtest;

    #getter for: Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->mEndReceiver:Z
    invoke-static {v3}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->access$000(Lcom/sec/factory/aporiented/athandler/AtNfcmtest;)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 73
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtNfcmtest;

    invoke-virtual {v3}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->stopReceiver()V

    .line 78
    :cond_a2
    :goto_a2
    return-void

    .line 69
    :cond_a3
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtNfcmtest;

    iget-object v3, v3, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtNfcmtest;

    const-string v5, "%d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_95

    .line 75
    :cond_bf
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtNfcmtest;

    #setter for: Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->mEndReceiver:Z
    invoke-static {v3, v10}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->access$002(Lcom/sec/factory/aporiented/athandler/AtNfcmtest;Z)Z

    goto :goto_a2
.end method
