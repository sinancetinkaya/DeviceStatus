.class Lcom/sec/factory/aporiented/athandler/AtOtggtest$1;
.super Landroid/content/BroadcastReceiver;
.source "AtOtggtest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/athandler/AtOtggtest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtOtggtest;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/athandler/AtOtggtest;)V
    .registers 2
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtOtggtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtOtggtest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.sec.factory.intent.ACTION_OTG_RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 42
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtOtggtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtOtggtest;

    invoke-virtual {v1}, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_30

    .line 43
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtOtggtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtOtggtest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const/4 v2, 0x2

    const-string v3, "61"

    const-string v4, "00"

    const-string v5, "result"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_26
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtOtggtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtOtggtest;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtOtggtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtOtggtest;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->stopReceiver(Landroid/content/BroadcastReceiver;)V

    .line 49
    :cond_2f
    return-void

    .line 46
    :cond_30
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtOtggtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtOtggtest;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtOtggtest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtOtggtest;

    invoke-static {}, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_26
.end method
