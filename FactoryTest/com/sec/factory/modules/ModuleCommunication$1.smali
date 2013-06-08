.class Lcom/sec/factory/modules/ModuleCommunication$1;
.super Landroid/content/BroadcastReceiver;
.source "ModuleCommunication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/modules/ModuleCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/modules/ModuleCommunication;


# direct methods
.method constructor <init>(Lcom/sec/factory/modules/ModuleCommunication;)V
    .registers 2
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleCommunication$1;->this$0:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.factory.intent.ACTION_GPS_SERVICE_RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 73
    const-string v0, "result"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunication$1;->this$0:Lcom/sec/factory/modules/ModuleCommunication;

    iget-object v1, v1, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "mGpsReceiver.onReceive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_GPS_SERVICE_RESPONSE result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "NG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 77
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication$1;->this$0:Lcom/sec/factory/modules/ModuleCommunication;

    const-string v1, "NG"

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleCommunication;->sendResponse(Ljava/lang/String;)V

    .line 81
    :goto_3d
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication$1;->this$0:Lcom/sec/factory/modules/ModuleCommunication;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/factory/modules/ModuleCommunication$1;->this$0:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleCommunication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/factory/modules/ModuleCommunicationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleCommunication;->stopService(Landroid/content/Intent;)V

    .line 83
    :cond_4f
    return-void

    .line 79
    :cond_50
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication$1;->this$0:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommunication;->sendStartOK()V

    goto :goto_3d
.end method
