.class Lcom/sec/factory/aporiented/athandler/AtWifitest$1;
.super Landroid/content/BroadcastReceiver;
.source "AtWifitest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/athandler/AtWifitest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtWifitest;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/athandler/AtWifitest;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifitest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, mAction:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifitest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "handleCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "com.sec.android.app.wlantest.WIFI_TEST_RESPONSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 51
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifitest;

    invoke-virtual {v1}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_4c

    .line 52
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifitest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtWifitest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const/4 v2, 0x2

    const-string v3, "18"

    const-string v4, "00"

    const-string v5, "S_DATA"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_42
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifitest;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifitest;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtWifitest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->stopReceiver(Landroid/content/BroadcastReceiver;)V

    .line 70
    :cond_4b
    :goto_4b
    return-void

    .line 55
    :cond_4c
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifitest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtWifitest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifitest;

    const-string v3, "0"

    const-string v4, "S_DATA"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_42

    .line 59
    :cond_62
    const-string v1, "android.intent.action.WIFI_DRIVER_INDICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 60
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifitest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "handleCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "STATUS"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "STATUS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ready"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 63
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifitest;

    const/4 v2, 0x1

    #setter for: Lcom/sec/factory/aporiented/athandler/AtWifitest;->mWlanTest:I
    invoke-static {v1, v2}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->access$002(Lcom/sec/factory/aporiented/athandler/AtWifitest;I)I

    .line 64
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifitest;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifitest;

    #getter for: Lcom/sec/factory/aporiented/athandler/AtWifitest;->savedArgu:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->access$100(Lcom/sec/factory/aporiented/athandler/AtWifitest;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->handleCommand([Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4b

    .line 66
    :cond_ac
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWifitest;

    const/4 v2, 0x0

    #setter for: Lcom/sec/factory/aporiented/athandler/AtWifitest;->mWlanTest:I
    invoke-static {v1, v2}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->access$002(Lcom/sec/factory/aporiented/athandler/AtWifitest;I)I

    goto :goto_4b
.end method
