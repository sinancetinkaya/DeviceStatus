.class Lcom/wssyncmldm/XDMService$8;
.super Landroid/content/BroadcastReceiver;
.source "XDMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/XDMService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/XDMService;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/XDMService;)V
    .registers 2
    .parameter

    .prologue
    .line 679
    iput-object p1, p0, Lcom/wssyncmldm/XDMService$8;->this$0:Lcom/wssyncmldm/XDMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 683
    const-string v1, "sec.fota.intent.WIFIONLY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 685
    const-string v1, "sec.fota.intent.WIFIONLY"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 686
    const-string v1, "changed_data"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 687
    .local v0, wifi_only:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifi_only = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 688
    if-eqz v0, :cond_36

    .line 690
    const-string v1, "wifi_only true. return"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 706
    .end local v0           #wifi_only:Z
    :cond_35
    :goto_35
    return-void

    .line 694
    .restart local v0       #wifi_only:Z
    :cond_36
    sget-boolean v1, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    if-nez v1, :cond_40

    .line 696
    const-string v1, "DM Not Init. return"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_35

    .line 700
    :cond_40
    sget v1, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    if-eqz v1, :cond_35

    .line 702
    const-string v1, "Run Resume Operation, Resume call Wi-Fi only Changed"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 703
    #calls: Lcom/wssyncmldm/XDMService;->xdmResumeOperation()Z
    invoke-static {}, Lcom/wssyncmldm/XDMService;->access$700()Z

    goto :goto_35
.end method
