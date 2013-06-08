.class public Lcom/wssyncmldm/ui/XUINotificationConnectActivity;
.super Landroid/app/Activity;
.source "XUINotificationConnectActivity.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XUIInterface;
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0xce

    const/16 v3, 0x94

    const/4 v4, 0x1

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUINotificationConnectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, szId:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 25
    .local v0, id:I
    sparse-switch v0, :sswitch_data_a8

    .line 93
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUINotificationConnectActivity;->finish()V

    .line 94
    return-void

    .line 28
    :sswitch_1f
    invoke-static {v4}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpUserInitiate(I)V

    goto :goto_1b

    .line 32
    :sswitch_23
    const/4 v2, 0x0

    const/16 v3, 0xd3

    invoke-static {v2, v3}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_1b

    .line 35
    :sswitch_2a
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmStopPendingUIEvent()V

    .line 36
    const/16 v2, 0x267

    invoke-static {v2}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    .line 37
    const/16 v2, 0xd8

    invoke-static {v2}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto :goto_1b

    .line 40
    :sswitch_38
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmStopPendingUIEvent()V

    .line 41
    invoke-static {v3}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto :goto_1b

    .line 44
    :sswitch_3f
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmStopPendingUIEvent()V

    .line 45
    const-string v2, "OPEN"

    const-string v3, "USC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    const-string v2, "OPEN"

    const-string v3, "CRI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 47
    :cond_56
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v2

    if-nez v2, :cond_60

    .line 49
    invoke-static {v5}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto :goto_1b

    .line 53
    :cond_60
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 54
    invoke-static {v4}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownloadMemoryCheck(I)I

    goto :goto_1b

    .line 59
    :cond_69
    invoke-static {v5}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto :goto_1b

    .line 63
    :sswitch_6d
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmStopPendingUIEvent()V

    .line 64
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmWifiDownloadSizeCheck()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 66
    const/16 v2, 0xe9

    invoke-static {v2}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto :goto_1b

    .line 70
    :cond_7c
    const/16 v2, 0x18

    invoke-static {v2}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 72
    invoke-static {v4}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownloadMemoryCheck(I)I

    goto :goto_1b

    .line 76
    :sswitch_85
    const/16 v2, 0x12

    invoke-static {v2}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 77
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpStartSession()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 79
    invoke-static {v4}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    .line 80
    const/16 v2, 0x91

    invoke-static {v2}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto :goto_1b

    .line 84
    :sswitch_99
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmStopPendingUIEvent()V

    .line 85
    invoke-static {v3}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto/16 :goto_1b

    .line 88
    :sswitch_a1
    const/16 v2, 0xa

    invoke-static {v2}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    goto/16 :goto_1b

    .line 25
    :sswitch_data_a8
    .sparse-switch
        0x3 -> :sswitch_23
        0x5 -> :sswitch_1f
        0x7 -> :sswitch_2a
        0x9 -> :sswitch_a1
        0xd -> :sswitch_38
        0xf -> :sswitch_3f
        0x11 -> :sswitch_85
        0x15 -> :sswitch_99
        0x17 -> :sswitch_6d
        0x1b -> :sswitch_23
    .end sparse-switch
.end method
