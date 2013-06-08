.class Lcom/sec/factory/aporiented/athandler/AtGpsstest$1;
.super Landroid/content/BroadcastReceiver;
.source "AtGpsstest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/athandler/AtGpsstest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtGpsstest;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/athandler/AtGpsstest;)V
    .registers 2
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtGpsstest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, mAction:Ljava/lang/String;
    const-string v2, "com.android.samsungtest.GPS_OK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 173
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtGpsstest;

    invoke-virtual {v2}, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->getCmdType()I

    move-result v2

    if-nez v2, :cond_4d

    .line 174
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtGpsstest;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const/4 v3, 0x3

    const-string v4, "15"

    const-string v5, "00"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_21
    :goto_21
    const-string v2, "com.android.samsungtest.GPS_RESPONSE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 180
    const-string v2, "RES"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, resData:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtGpsstest;

    invoke-virtual {v2}, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->getCmdType()I

    move-result v2

    if-nez v2, :cond_5d

    .line 182
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtGpsstest;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const/4 v3, 0x4

    const-string v4, "15"

    const-string v5, "01"

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .end local v1           #resData:Ljava/lang/String;
    :cond_43
    :goto_43
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtGpsstest;

    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtGpsstest;

    iget-object v3, v3, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->stopReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    return-void

    .line 176
    :cond_4d
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtGpsstest;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtGpsstest;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_21

    .line 184
    .restart local v1       #resData:Ljava/lang/String;
    :cond_5d
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtGpsstest;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtGpsstest;

    const-string v4, "1"

    invoke-virtual {v3, v4, v1}, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_43
.end method
