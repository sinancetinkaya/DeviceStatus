.class Lcom/sec/factory/aporiented/athandler/AtLtepower$1;
.super Landroid/content/BroadcastReceiver;
.source "AtLtepower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/athandler/AtLtepower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtLtepower;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/athandler/AtLtepower;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtLtepower;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.sec.factory.aporiented.athandler.AtLtepower.SetLTEPower"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 51
    const-string v2, "EXTRA_KEY"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, resData:Ljava/lang/String;
    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 53
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtLtepower;

    invoke-virtual {v2}, Lcom/sec/factory/aporiented/athandler/AtLtepower;->getCmdType()I

    move-result v2

    if-nez v2, :cond_30

    .line 54
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtLtepower;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtLtepower;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const/4 v3, 0x2

    const-string v4, "53"

    const-string v5, "00"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .end local v1           #resData:Ljava/lang/String;
    :cond_2f
    :goto_2f
    return-void

    .line 56
    .restart local v1       #resData:Ljava/lang/String;
    :cond_30
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtLtepower;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtLtepower;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtLtepower;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lcom/sec/factory/aporiented/athandler/AtLtepower;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_2f

    .line 59
    :cond_40
    const-string v2, "NG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 60
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtLtepower;

    invoke-virtual {v2}, Lcom/sec/factory/aporiented/athandler/AtLtepower;->getCmdType()I

    move-result v2

    if-nez v2, :cond_5d

    .line 61
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtLtepower;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtLtepower;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const/4 v3, 0x4

    const-string v4, "53"

    const-string v5, "00"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 63
    :cond_5d
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtLtepower;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtLtepower;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtLtepower;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lcom/sec/factory/aporiented/athandler/AtLtepower;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_2f
.end method
