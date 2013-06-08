.class Lcom/sec/factory/aporiented/athandler/AtUartswit$1;
.super Landroid/content/BroadcastReceiver;
.source "AtUartswit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/athandler/AtUartswit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtUartswit;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/athandler/AtUartswit;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtUartswit$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtUartswit;

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
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.sec.factory.aporiented.athandler.AtUartswit.SetUartPath"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 50
    const-string v2, "PATH"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, resData:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtUartswit$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtUartswit;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtUartswit;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "onReceive"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.sec.factory.aporiented.athandler.AtUartswit.SetUartPath : Set : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtUartswit$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtUartswit;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtUartswit;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    invoke-virtual {v2, v1}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 54
    .end local v1           #resData:Ljava/lang/String;
    :cond_35
    return-void
.end method
