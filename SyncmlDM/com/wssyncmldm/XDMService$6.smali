.class Lcom/wssyncmldm/XDMService$6;
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
    .line 508
    iput-object p1, p0, Lcom/wssyncmldm/XDMService$6;->this$0:Lcom/wssyncmldm/XDMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 512
    const-string v4, "android.intent.action.POSTPONED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 514
    const-string v4, "FotaPostpone callback received"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaGetPostponeTimerStateInfo()Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;

    move-result-object v0

    .line 517
    .local v0, PostponeTimerStateInfo:Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;
    if-nez v0, :cond_31

    .line 519
    const-string v4, "PostponeTimerStateInfo is null"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 520
    new-instance v0, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;

    .end local v0           #PostponeTimerStateInfo:Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;
    invoke-direct {v0}, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;-><init>()V

    .line 521
    .restart local v0       #PostponeTimerStateInfo:Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;
    const/4 v3, 0x0

    .line 523
    .local v3, pPostUpdate:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetPostPoneTime()Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    move-result-object v3

    .line 524
    if-eqz v3, :cond_31

    .line 526
    iget-wide v4, v3, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tEndTime:J

    iput-wide v4, v0, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->nEndTime:J

    .line 530
    .end local v3           #pPostUpdate:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;
    :cond_31
    iget-wide v4, v0, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->nEndTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_a4

    .line 532
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PostponeTimerStateInfo.bSelect_PostponeTime is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->bSelect_PostponeTime:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 533
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDownloadPostponeStatus()I

    move-result v1

    .line 535
    .local v1, nDownloadPostpone:I
    invoke-static {v10}, Lcom/wssyncmldm/XDMService;->xdmStopAlarm(I)V

    .line 536
    invoke-static {v12}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 537
    const/4 v4, 0x6

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 538
    const/16 v4, 0x16

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 539
    const/16 v4, 0x1c

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 540
    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDownloadPostponeStatus(I)V

    .line 542
    if-ne v1, v10, :cond_7e

    .line 544
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmIscheckPostponeVersion()Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 546
    invoke-static {v11}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpUserInitiate(I)V

    .line 589
    .end local v0           #PostponeTimerStateInfo:Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;
    .end local v1           #nDownloadPostpone:I
    :cond_79
    :goto_79
    return-void

    .line 550
    .restart local v0       #PostponeTimerStateInfo:Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;
    .restart local v1       #nDownloadPostpone:I
    :cond_7a
    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDownloadPostponeStatus(I)V

    goto :goto_79

    .line 553
    :cond_7e
    if-ne v1, v11, :cond_84

    .line 555
    invoke-static {v10}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpUserInitiate(I)V

    goto :goto_79

    .line 557
    :cond_84
    const/4 v4, 0x3

    if-ne v1, v4, :cond_8d

    .line 559
    const/16 v4, 0xd3

    invoke-static {v9, v4}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_79

    .line 561
    :cond_8d
    if-ne v1, v12, :cond_9a

    .line 563
    const-string v4, "AutoInstall Alarm"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 564
    const/16 v4, 0xe3

    invoke-static {v9, v4}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_79

    .line 568
    :cond_9a
    const-string v4, "nDownloadPostpone is none"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 569
    const/4 v4, 0x7

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    goto :goto_79

    .line 574
    .end local v1           #nDownloadPostpone:I
    :cond_a4
    invoke-virtual {p0, p1}, Lcom/wssyncmldm/XDMService$6;->wscallPostponeRestartTime(Landroid/content/Context;)V

    goto :goto_79

    .line 577
    .end local v0           #PostponeTimerStateInfo:Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;
    :cond_a8
    const-string v4, "android.intent.action.SDCARD_MAXTIME_ALARM"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 579
    const-string v4, "XCOMMON_INTENT_SDCARD_MAXTIME_ACTION"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 580
    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDownloadPostponeStatus(I)V

    .line 581
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v2

    .line 582
    .local v2, nStatus:I
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_79

    .line 584
    invoke-static {v11}, Lcom/wssyncmldm/XDMService;->xdmStopAlarm(I)V

    .line 585
    const/16 v4, 0x113

    invoke-static {v4, v9, v9}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 586
    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    goto :goto_79
.end method

.method protected wscallPostponeRestartTime(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->FOTA_POSTPONE_DEFAULT:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->FOTA_POSTPONE_STOP:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 595
    sget-boolean v1, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->FOTA_POSTPONE_DEFAULT:Z

    if-eqz v1, :cond_39

    .line 597
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 598
    .local v0, FotaUpdateIntent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 599
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 602
    .end local v0           #FotaUpdateIntent:Landroid/content/Intent;
    :cond_39
    sget-boolean v1, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->FOTA_POSTPONE_STOP:Z

    if-nez v1, :cond_40

    .line 604
    invoke-static {p1}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->xuiFotaUpdateReStartTimer(Landroid/content/Context;)V

    .line 606
    :cond_40
    return-void
.end method
