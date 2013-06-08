.class Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;
.super Landroid/content/BroadcastReceiver;
.source "AtFeliCaRfCal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, action:Ljava/lang/String;
    const-string v1, "NG"

    .line 68
    .local v1, resData:Ljava/lang/String;
    const-string v2, "com.sec.android.app.felicatest.FELICA_TEST_RESPONSE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 69
    const-string v2, "S_DATA"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->CMD_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 74
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    invoke-virtual {v2, v1}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 75
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    const-string v3, "\r\n\r\nOK\r\n"

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 76
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    invoke-virtual {v2}, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->stopReceiver()V

    .line 128
    :cond_59
    :goto_59
    return-void

    .line 77
    :cond_5a
    const-string v2, "com.sec.android.app.felicatest.FELICA_TEST_SETNV_RESPONSE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 78
    const-string v2, "S_DATA"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->CMD_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 83
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    invoke-virtual {v2, v1}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 84
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    const-string v3, "\r\n\r\nOK\r\n"

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 85
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->access$002(Z)Z

    .line 86
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    invoke-virtual {v2}, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->stopReceiver()V

    goto :goto_59

    .line 87
    :cond_b2
    const-string v2, "com.sec.android.app.felicatest.FELICA_TEST_GETNV_RESPONSE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10b

    .line 88
    const-string v2, "S_DATA"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->CMD_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 93
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    invoke-virtual {v2, v1}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 94
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    const-string v3, "\r\n\r\nOK\r\n"

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 95
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->access$002(Z)Z

    .line 96
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    invoke-virtual {v2}, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->stopReceiver()V

    goto/16 :goto_59

    .line 97
    :cond_10b
    const-string v2, "com.sec.android.app.felicatest.FELICA_TEST_PASS_RESPONSE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_160

    .line 98
    const-string v2, "S_DATA"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->CMD_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 103
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    invoke-virtual {v2, v1}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 104
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    const-string v3, "\r\n\r\nOK\r\n"

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 105
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    invoke-virtual {v2}, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->stopReceiver()V

    goto/16 :goto_59

    .line 106
    :cond_160
    const-string v2, "com.sec.android.app.felicatest.FELICA_TEST_FAIL_RESPONSE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b5

    .line 107
    const-string v2, "S_DATA"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->CMD_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 112
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    invoke-virtual {v2, v1}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 113
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    const-string v3, "\r\n\r\nOK\r\n"

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 114
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    invoke-virtual {v2}, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->stopReceiver()V

    goto/16 :goto_59

    .line 115
    :cond_1b5
    const-string v2, "com.sec.android.app.felicatest.FELICA_GETIDM_RESPONSE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 116
    const-string v2, "S_DATA"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v4, v4, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->CMD_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 121
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    invoke-virtual {v2, v1}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 122
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    const-string v3, "\r\n\r\nOK\r\n"

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 123
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    invoke-virtual {v2}, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->stopReceiver()V

    goto/16 :goto_59
.end method
