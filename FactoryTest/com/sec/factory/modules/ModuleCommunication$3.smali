.class Lcom/sec/factory/modules/ModuleCommunication$3;
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
    .line 477
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleCommunication$3;->this$0:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 480
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.WIFI_DRIVER_INDICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 482
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunication$3;->this$0:Lcom/sec/factory/modules/ModuleCommunication;

    iget-object v1, v1, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "mWifiReceiver.onReceive"

    const-string v3, "ACTION_WIFI_DRIVER_INDICATION"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v1, "STATUS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ready"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 484
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunication$3;->this$0:Lcom/sec/factory/modules/ModuleCommunication;

    const/4 v2, 0x1

    #setter for: Lcom/sec/factory/modules/ModuleCommunication;->mWlanTest:I
    invoke-static {v1, v2}, Lcom/sec/factory/modules/ModuleCommunication;->access$102(Lcom/sec/factory/modules/ModuleCommunication;I)I

    .line 489
    :cond_2b
    :goto_2b
    return-void

    .line 486
    :cond_2c
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunication$3;->this$0:Lcom/sec/factory/modules/ModuleCommunication;

    const/4 v2, 0x0

    #setter for: Lcom/sec/factory/modules/ModuleCommunication;->mWlanTest:I
    invoke-static {v1, v2}, Lcom/sec/factory/modules/ModuleCommunication;->access$102(Lcom/sec/factory/modules/ModuleCommunication;I)I

    goto :goto_2b
.end method
