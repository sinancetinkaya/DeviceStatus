.class Lcom/wssyncmldm/XDMService$7;
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
    .line 611
    iput-object p1, p0, Lcom/wssyncmldm/XDMService$7;->this$0:Lcom/wssyncmldm/XDMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v8, 0xec

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 615
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 616
    .local v3, szAction:Ljava/lang/String;
    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 617
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v2

    .line 618
    .local v2, nFumoStatus:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDownloadPostponeStatus()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3c

    .line 620
    invoke-static {v7}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDownloadPostponeStatus(I)V

    .line 621
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 623
    const/16 v4, 0xdc

    if-ne v2, v4, :cond_3c

    .line 625
    const-string v4, "Media Unmounted Intent Receive when update postponed"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 626
    invoke-static {}, Lcom/wssyncmldm/XDMService;->access$400()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/wssyncmldm/XDMService;->access$400()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f07009c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 674
    :cond_3c
    :goto_3c
    return-void

    .line 629
    :cond_3d
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 631
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/wssyncmldm/XDMService;->xdmStopAlarm(I)V

    .line 632
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/wssyncmldm/XDMService;->xdmStopAlarm(I)V

    .line 634
    const/16 v4, 0x32

    if-ne v2, v4, :cond_60

    .line 646
    const-string v4, "XDL_STATE_POSTPONE_TO_UPDATE && XDL_STATE_READY_TO_UPDATE"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 647
    const/4 v4, 0x4

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 648
    const/16 v4, 0xd3

    invoke-static {v6, v4}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_3c

    .line 652
    :cond_60
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_3c

    .line 654
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetWifiOnlyFlag()Z

    move-result v0

    .line 655
    .local v0, bWifiOnly:Z
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v1

    .line 657
    .local v1, bWificonnected:Z
    sget-boolean v4, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v4, :cond_74

    sget-boolean v4, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-eqz v4, :cond_7f

    :cond_74
    if-nez v1, :cond_7f

    .line 659
    const-string v4, "WifiOnly WIFI Disconnected"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 660
    invoke-static {v6, v8}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_3c

    .line 662
    :cond_7f
    if-eqz v0, :cond_8c

    if-nez v1, :cond_8c

    .line 664
    const-string v4, "WIFI Disconnected - Can not go to DL Session"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 665
    invoke-static {v6, v8}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_3c

    .line 669
    :cond_8c
    const/16 v4, 0x89

    invoke-static {v6, v4}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_3c
.end method
