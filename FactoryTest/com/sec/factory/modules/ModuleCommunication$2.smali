.class Lcom/sec/factory/modules/ModuleCommunication$2;
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
    .line 219
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleCommunication$2;->this$0:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.factory.intent.ACTION_BT_SERVICE_RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 223
    const-string v0, "result"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunication$2;->this$0:Lcom/sec/factory/modules/ModuleCommunication;

    iget-object v1, v1, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "mBtReceiver.onReceive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_BT_SERVICE_RESPONSE result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.factory.intent.ACTION_BT_RESPONSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleCommunication$2;->this$0:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v2, v1}, Lcom/sec/factory/modules/ModuleCommunication;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunication$2;->this$0:Lcom/sec/factory/modules/ModuleCommunication;

    const/4 v2, 0x0

    #setter for: Lcom/sec/factory/modules/ModuleCommunication;->mIsRunningBtDevice:Z
    invoke-static {v1, v2}, Lcom/sec/factory/modules/ModuleCommunication;->access$002(Lcom/sec/factory/modules/ModuleCommunication;Z)Z

    .line 230
    const-string v1, "OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 232
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication$2;->this$0:Lcom/sec/factory/modules/ModuleCommunication;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/factory/modules/ModuleCommunication$2;->this$0:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleCommunication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/factory/modules/ModuleCommunicationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleCommunication;->stopService(Landroid/content/Intent;)V

    .line 236
    :cond_5f
    return-void
.end method
