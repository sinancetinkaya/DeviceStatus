.class public Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;
.super Landroid/app/ListActivity;
.source "XUIFotaPostponeActivity.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XUIInterface;
.implements Lcom/wssyncmldm/interfaces/XFOTAInterface;
.implements Lcom/wssyncmldm/interfaces/XEventInterface;


# static fields
.field public static FOTA_POSTPONE_DEFAULT:Z = false

.field public static FOTA_POSTPONE_STOP:Z = false

.field private static final TIME_1_HOUR_IN_ACTIME:I = 0x36ee80

.field private static final TIME_1_MIN_IN_ACTIME:I = 0xea60

.field private static final TIME_INTERVAL_12_HOURS:I = 0x2932e00

.field private static final TIME_INTERVAL_1_DAY:I = 0x5265c00

.field private static final TIME_INTERVAL_1_HOUR:I = 0x36ee80

.field private static final TIME_INTERVAL_30_MIN:I = 0x1b7740

.field private static final TIME_INTERVAL_3_HOURS:I = 0xa4cb80

.field private static final TIME_INTERVAL_6_HOURS:I = 0x1499700

.field public static g_nDialogMes:Ljava/lang/String;

.field private static m_Activity:Landroid/app/Activity;


# instance fields
.field private final DIALOG_POSTPONE_TIME:I

.field private final DOWNLOAD_POSTPONE_STATE:I

.field private final POSTPONE_INDEX_12_HOURS:I

.field private final POSTPONE_INDEX_1_DAY:I

.field private final POSTPONE_INDEX_1_HOUR:I

.field private final POSTPONE_INDEX_30_MIN:I

.field private final POSTPONE_INDEX_3_HOURS:I

.field private final POSTPONE_INDEX_6_HOURS:I

.field private final POSTPONE_INDEX_CANCEL:I

.field private final POSTPONE_INDEX_MAX:I

.field private final UPDATE_POSTPONE_STATE:I

.field private final UPDATE_POSTPONE_TMO_STATE:I

.field private m_PostponeBuilder:Landroid/app/AlertDialog$Builder;

.field private m_PostponeDialog:Landroid/app/Dialog;

.field private m_nPostponeCount:I

.field private m_nPostponeState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 38
    sput-boolean v0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->FOTA_POSTPONE_DEFAULT:Z

    .line 39
    sput-boolean v0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->FOTA_POSTPONE_STOP:Z

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_Activity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x6

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 36
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_PostponeBuilder:Landroid/app/AlertDialog$Builder;

    .line 48
    iput-object v0, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_PostponeDialog:Landroid/app/Dialog;

    .line 50
    iput v1, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->DIALOG_POSTPONE_TIME:I

    .line 52
    iput v2, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->POSTPONE_INDEX_30_MIN:I

    .line 53
    iput v1, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->POSTPONE_INDEX_1_HOUR:I

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->POSTPONE_INDEX_3_HOURS:I

    .line 55
    const/4 v0, 0x3

    iput v0, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->POSTPONE_INDEX_6_HOURS:I

    .line 56
    const/4 v0, 0x4

    iput v0, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->POSTPONE_INDEX_12_HOURS:I

    .line 57
    const/4 v0, 0x5

    iput v0, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->POSTPONE_INDEX_1_DAY:I

    .line 58
    iput v3, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->POSTPONE_INDEX_CANCEL:I

    .line 59
    iput v3, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->POSTPONE_INDEX_MAX:I

    .line 61
    iput v1, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->DOWNLOAD_POSTPONE_STATE:I

    .line 62
    iput v2, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->UPDATE_POSTPONE_STATE:I

    .line 63
    iput v1, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->UPDATE_POSTPONE_TMO_STATE:I

    return-void
.end method

.method static synthetic access$000(Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeState:I

    return v0
.end method

.method static synthetic access$100(Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeCount:I

    return v0
.end method

.method static synthetic access$112(Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iget v0, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeCount:I

    return v0
.end method

.method public static xuiFotaPostponeStartTimer(Landroid/content/Context;J)V
    .registers 8
    .parameter "context"
    .parameter "alarmtime"

    .prologue
    const/4 v4, 0x0

    .line 462
    const-string v3, ""

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 463
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.POSTPONED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 465
    .local v2, sender2:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-static {v3}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 466
    .local v0, am:Landroid/app/AlarmManager;
    if-nez v0, :cond_21

    .line 468
    const-string v3, "AlarmManager is null!!"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 472
    :goto_20
    return-void

    .line 471
    :cond_21
    invoke-virtual {v0, v4, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_20
.end method

.method public static xuiFotaPostponeStop(Z)V
    .registers 1
    .parameter "bStop"

    .prologue
    .line 570
    sput-boolean p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->FOTA_POSTPONE_STOP:Z

    .line 571
    return-void
.end method

.method public static xuiFotaUpdateReStartTimer(Landroid/content/Context;)V
    .registers 15
    .parameter "context"

    .prologue
    const-wide/16 v8, 0x0

    const/16 v13, 0xdc

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 476
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v4

    .line 477
    .local v4, nStatus:I
    const/4 v5, 0x0

    .line 479
    .local v5, pPostUpdate:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;
    const-string v6, ""

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 481
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetPostPoneTime()Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    move-result-object v5

    .line 482
    if-nez v5, :cond_1d

    .line 484
    const-string v6, "postpone data from database is null. return without any action"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 566
    :cond_1c
    :goto_1c
    return-void

    .line 487
    :cond_1d
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaGetPostponeTimerStateInfo()Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;

    move-result-object v1

    .line 488
    .local v1, PostponeTimerStateInfo:Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;
    if-nez v1, :cond_2a

    .line 490
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaCreatePostponeTimerStateInfo()V

    .line 491
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaGetPostponeTimerStateInfo()Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;

    move-result-object v1

    .line 495
    :cond_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 496
    .local v2, nCurtime:J
    iget-wide v6, v5, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nPostPoneTime:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_b5

    iget-wide v6, v5, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tEndTime:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_b5

    .line 498
    const-string v6, "pPostUpdate not set or postpone time is passed by"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 499
    const-wide/32 v6, 0x36ee80

    iput-wide v6, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->timerInterval:J

    .line 500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->timerInterval:J

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->nEndTime:J

    .line 501
    iput-wide v2, v5, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tCurrentTime:J

    .line 502
    iget-wide v6, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->timerInterval:J

    iput-wide v6, v5, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nPostPoneTime:J

    .line 503
    iget-wide v6, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->nEndTime:J

    iput-wide v6, v5, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tEndTime:J

    .line 505
    invoke-static {v5}, Lcom/wssyncmldm/db/file/XDB;->xdbSetPostPoneTime(Ljava/lang/Object;)V

    .line 507
    if-eq v4, v13, :cond_60

    const/16 v6, 0x32

    if-ne v4, v6, :cond_68

    .line 509
    :cond_60
    invoke-static {v13}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 510
    const-string v6, "xdbSetFUMOStatus  to XDL_STATE_POSTPONE_TO_UPDATE"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 513
    :cond_68
    sput-boolean v11, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->FOTA_POSTPONE_DEFAULT:Z

    .line 514
    invoke-static {v11}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->xuiFotaPostponeStop(Z)V

    .line 522
    :goto_6d
    iget-boolean v6, v5, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nAfterDownLoadBatteryStatus:Z

    iput-boolean v6, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->nAfterDownLoadBatteryStatus:Z

    .line 523
    iget-boolean v6, v5, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nAfterDownLoadBatteryStatus:Z

    if-eqz v6, :cond_be

    .line 525
    iput-boolean v10, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->bSelect_PostponeTime:Z

    .line 531
    :goto_77
    invoke-static {v1}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaSetPostponeTimerStateInfo(Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;)V

    .line 533
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 534
    .local v0, PostPoneTime:Landroid/text/format/Time;
    iget-wide v6, v5, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tEndTime:J

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 535
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PostPoneTime :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 537
    iget v6, v5, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nPostPoneDownload:I

    if-eqz v6, :cond_ea

    .line 539
    iget-wide v6, v5, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tEndTime:J

    invoke-static {p0, v6, v7}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->xuiFotaPostponeStartTimer(Landroid/content/Context;J)V

    .line 540
    iget v6, v5, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nPostPoneDownload:I

    if-ne v6, v10, :cond_c1

    .line 542
    invoke-static {v10}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 543
    const/16 v6, 0x15

    invoke-static {v6}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    goto/16 :goto_1c

    .line 518
    .end local v0           #PostPoneTime:Landroid/text/format/Time;
    :cond_b5
    iget-wide v6, v5, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nPostPoneTime:J

    iput-wide v6, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->timerInterval:J

    .line 519
    iget-wide v6, v5, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tEndTime:J

    iput-wide v6, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->nEndTime:J

    goto :goto_6d

    .line 529
    :cond_be
    iput-boolean v11, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->bSelect_PostponeTime:Z

    goto :goto_77

    .line 545
    .restart local v0       #PostPoneTime:Landroid/text/format/Time;
    :cond_c1
    iget v6, v5, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nPostPoneDownload:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_cf

    .line 547
    invoke-static {v10}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 548
    const/4 v6, 0x5

    invoke-static {v6}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    goto/16 :goto_1c

    .line 550
    :cond_cf
    iget v6, v5, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nPostPoneDownload:I

    if-ne v6, v12, :cond_db

    .line 552
    invoke-static {v10}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 553
    invoke-static {v12}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    goto/16 :goto_1c

    .line 555
    :cond_db
    iget v6, v5, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nPostPoneDownload:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1c

    .line 557
    invoke-static {v10}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 558
    const/16 v6, 0x1b

    invoke-static {v6}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    goto/16 :goto_1c

    .line 563
    :cond_ea
    const-string v6, "nPostPone Status is none"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 564
    invoke-static {v10}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    goto/16 :goto_1c
.end method

.method public static xuiPostponeRemoveActivity()V
    .registers 2

    .prologue
    .line 577
    :try_start_0
    sget-object v1, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_Activity:Landroid/app/Activity;

    if-eqz v1, :cond_e

    .line 579
    sget-object v1, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_Activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 580
    const-string v1, "Postpone Activity finish()!!!"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 587
    .local v0, e:Ljava/lang/Exception;
    :cond_e
    :goto_e
    return-void

    .line 583
    .end local v0           #e:Ljava/lang/Exception;
    :catch_f
    move-exception v0

    .line 585
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_e
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 78
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    sput-object p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_Activity:Landroid/app/Activity;

    .line 81
    invoke-static {v4}, Lcom/wssyncmldm/XDMService;->xdmStopAlarm(I)V

    .line 83
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, sid:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 88
    const-string v2, "sid null, return"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->finish()V

    .line 92
    :cond_35
    const-string v2, "OPEN"

    const-string v3, "USC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "OPEN"

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 95
    :cond_49
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetPostponeCount()I

    move-result v2

    iput v2, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeCount:I

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nPostponeCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 99
    :cond_67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 100
    .local v0, id:I
    if-ne v0, v4, :cond_83

    .line 102
    sget-boolean v2, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->FOTA_POSTPONE_DEFAULT:Z

    if-eqz v2, :cond_78

    .line 103
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->xuiFotaPostponeDefault()V

    .line 104
    :cond_78
    sget-boolean v2, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->FOTA_POSTPONE_STOP:Z

    if-nez v2, :cond_7f

    .line 105
    invoke-static {p0}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->xuiFotaUpdateReStartTimer(Landroid/content/Context;)V

    .line 106
    :cond_7f
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->finish()V

    .line 111
    :goto_82
    return-void

    .line 110
    :cond_83
    invoke-virtual {p0, v4}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->showDialog(I)V

    goto :goto_82
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 11
    .parameter "id"

    .prologue
    const v8, 0x7f070077

    const v7, 0x7f070076

    const v6, 0x7f070075

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 136
    const-string v2, ""

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 138
    packed-switch p1, :pswitch_data_136

    .line 272
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_17
    return-object v2

    .line 141
    :pswitch_18
    const-string v2, "DIALOG_POSTPONE_TIME"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v0

    .line 146
    .local v0, nStatus:I
    const/4 v1, 0x0

    .line 147
    .local v1, postPoneStrArray:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_28

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_b0

    .line 149
    :cond_28
    iput v4, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeState:I

    .line 150
    const/4 v2, 0x6

    new-array v1, v2, [Ljava/lang/String;

    .line 152
    iget v2, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeState:I

    rsub-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v6}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 153
    iget v2, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeState:I

    rsub-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v7}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 154
    iget v2, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeState:I

    rsub-int/lit8 v2, v2, 0x3

    invoke-virtual {p0, v8}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 155
    iget v2, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeState:I

    rsub-int/lit8 v2, v2, 0x4

    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 156
    iget v2, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeState:I

    rsub-int/lit8 v2, v2, 0x5

    const v3, 0x7f070079

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 157
    iget v2, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeState:I

    rsub-int/lit8 v2, v2, 0x6

    const v3, 0x7f07007a

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 187
    :goto_72
    iget-object v2, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_PostponeBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v2, :cond_7d

    .line 188
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_PostponeBuilder:Landroid/app/AlertDialog$Builder;

    .line 190
    :cond_7d
    iget-object v2, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_PostponeBuilder:Landroid/app/AlertDialog$Builder;

    const v3, 0x108009b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07006c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity$2;

    invoke-direct {v3, p0}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity$2;-><init>(Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity$1;

    invoke-direct {v3, p0}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity$1;-><init>(Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_PostponeDialog:Landroid/app/Dialog;

    .line 267
    iget-object v2, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_PostponeDialog:Landroid/app/Dialog;

    goto/16 :goto_17

    .line 161
    :cond_b0
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDownloadPostponeStatus()I

    move-result v2

    if-nez v2, :cond_ba

    .line 163
    const/4 v2, 0x7

    invoke-static {v2}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 166
    :cond_ba
    const-string v2, "OPEN"

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    .line 168
    iput v4, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeState:I

    .line 169
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/String;

    .line 171
    iget v2, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeState:I

    rsub-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v6}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 172
    iget v2, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeState:I

    rsub-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v7}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 173
    iget v2, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeState:I

    rsub-int/lit8 v2, v2, 0x3

    invoke-virtual {p0, v8}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 174
    iget v2, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeState:I

    rsub-int/lit8 v2, v2, 0x4

    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 175
    iget v2, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeState:I

    rsub-int/lit8 v2, v2, 0x5

    const v3, 0x7f070079

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto/16 :goto_72

    .line 179
    :cond_103
    iput v5, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeState:I

    .line 180
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    .line 181
    const v2, 0x7f070074

    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 182
    iget v2, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeState:I

    rsub-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v6}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 183
    iget v2, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeState:I

    rsub-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v7}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto/16 :goto_72

    .line 138
    nop

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_18
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 117
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 118
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 120
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_PostponeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 122
    const-string v0, "Postpone dialog is activate. dismiss"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_PostponeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_PostponeDialog:Landroid/app/Dialog;

    .line 130
    :goto_1d
    invoke-static {}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->xuiPostponeRemoveActivity()V

    .line 131
    return-void

    .line 128
    :cond_21
    const-string v0, "DPostpone.isShowing() not!"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public xuiFotaPostpone(I)V
    .registers 16
    .parameter "position"

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0xdc

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 325
    const-string v5, ""

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v3

    .line 327
    .local v3, nStatus:I
    new-instance v4, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    invoke-direct {v4}, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;-><init>()V

    .line 329
    .local v4, pPostUpdate:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;
    invoke-static {v9}, Lcom/wssyncmldm/XDMService;->xdmStopAlarm(I)V

    .line 331
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaGetPostponeTimerStateInfo()Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;

    move-result-object v1

    .line 332
    .local v1, PostponeTimerStateInfo:Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;
    if-nez v1, :cond_24

    .line 334
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaCreatePostponeTimerStateInfo()V

    .line 335
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaGetPostponeTimerStateInfo()Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;

    move-result-object v1

    .line 338
    :cond_24
    iget v5, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeState:I

    add-int/2addr v5, p1

    packed-switch v5, :pswitch_data_f6

    .line 362
    :goto_2a
    iput-boolean v9, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->bSelect_PostponeTime:Z

    .line 363
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 364
    .local v2, curtime:Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iget-wide v7, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->timerInterval:J

    add-long/2addr v5, v7

    iput-wide v5, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->nEndTime:J

    .line 365
    iput-boolean v9, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->nAfterDownLoadBatteryStatus:Z

    .line 367
    invoke-static {v1}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaSetPostponeTimerStateInfo(Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;)V

    .line 369
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tCurrentTime:J

    .line 370
    iget-wide v5, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->timerInterval:J

    iput-wide v5, v4, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nPostPoneTime:J

    .line 371
    iget-wide v5, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->nEndTime:J

    iput-wide v5, v4, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tEndTime:J

    .line 372
    iput-boolean v9, v4, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nAfterDownLoadBatteryStatus:Z

    .line 373
    iget v5, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeCount:I

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nPostPoneCount:I

    .line 374
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetFirmwareVersion()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->CurrentVersion:Ljava/lang/String;

    .line 376
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 377
    .local v0, PostPoneTime:Landroid/text/format/Time;
    iget-wide v5, v4, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tEndTime:J

    invoke-virtual {v0, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 378
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PostPoneTime :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 381
    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbSetPostPoneTime(Ljava/lang/Object;)V

    .line 383
    if-nez v3, :cond_be

    .line 386
    invoke-static {v10}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpResetSessionSaveState(I)V

    .line 387
    invoke-static {v9}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDownloadPostponeStatus(I)V

    .line 388
    const/16 v5, 0xe

    invoke-static {v5}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 389
    const/16 v5, 0x15

    invoke-static {v5}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 411
    :goto_91
    iget-wide v5, v4, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tEndTime:J

    invoke-static {p0, v5, v6}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->xuiFotaPostponeStartTimer(Landroid/content/Context;J)V

    .line 415
    return-void

    .line 341
    .end local v0           #PostPoneTime:Landroid/text/format/Time;
    .end local v2           #curtime:Ljava/util/Calendar;
    :pswitch_97
    const-wide/32 v5, 0x1b7740

    iput-wide v5, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->timerInterval:J

    goto :goto_2a

    .line 344
    :pswitch_9d
    const-wide/32 v5, 0x36ee80

    iput-wide v5, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->timerInterval:J

    goto :goto_2a

    .line 347
    :pswitch_a3
    const-wide/32 v5, 0xa4cb80

    iput-wide v5, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->timerInterval:J

    goto :goto_2a

    .line 350
    :pswitch_a9
    const-wide/32 v5, 0x1499700

    iput-wide v5, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->timerInterval:J

    goto/16 :goto_2a

    .line 353
    :pswitch_b0
    const-wide/32 v5, 0x2932e00

    iput-wide v5, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->timerInterval:J

    goto/16 :goto_2a

    .line 356
    :pswitch_b7
    const-wide/32 v5, 0x5265c00

    iput-wide v5, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->timerInterval:J

    goto/16 :goto_2a

    .line 391
    .restart local v0       #PostPoneTime:Landroid/text/format/Time;
    .restart local v2       #curtime:Ljava/util/Calendar;
    :cond_be
    const/16 v5, 0xc8

    if-ne v3, v5, :cond_d8

    .line 393
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDownloadPostponeStatus(I)V

    .line 394
    const/16 v5, 0x10

    invoke-static {v5}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 395
    const/4 v5, 0x5

    invoke-static {v5}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 396
    const/16 v5, 0x113

    invoke-static {v5, v13, v13}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 397
    invoke-static {v10}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    goto :goto_91

    .line 399
    :cond_d8
    if-eq v3, v12, :cond_de

    const/16 v5, 0x32

    if-ne v3, v5, :cond_f2

    .line 401
    :cond_de
    invoke-static {v11}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDownloadPostponeStatus(I)V

    .line 402
    const/16 v5, 0x1c

    invoke-static {v5}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 403
    invoke-static {v11}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 404
    invoke-static {v12}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 405
    const-string v5, "xdbSetFUMOStatus  to XDL_STATE_POSTPONE_TO_UPDATE"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_91

    .line 409
    :cond_f2
    invoke-static {v10}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDownloadPostponeStatus(I)V

    goto :goto_91

    .line 338
    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_97
        :pswitch_9d
        :pswitch_a3
        :pswitch_a9
        :pswitch_b0
        :pswitch_b7
    .end packed-switch
.end method

.method protected xuiFotaPostponeCreatePopup(I)V
    .registers 8
    .parameter "position"

    .prologue
    const v4, 0x7f070071

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 419
    iget v2, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeState:I

    add-int/2addr v2, p1

    packed-switch v2, :pswitch_data_d0

    .line 440
    const-string v2, ""

    sput-object v2, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->g_nDialogMes:Ljava/lang/String;

    .line 443
    :goto_f
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetPostponeCount()I

    move-result v0

    .line 444
    .local v0, nCount:I
    rsub-int/lit8 v1, v0, 0x3

    .line 445
    .local v1, nRemain:I
    packed-switch v1, :pswitch_data_e0

    .line 457
    :goto_18
    const/4 v2, 0x0

    const/16 v3, 0xdd

    invoke-static {v2, v3}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 458
    return-void

    .line 422
    .end local v0           #nCount:I
    .end local v1           #nRemain:I
    :pswitch_1f
    const v2, 0x7f07006d

    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->g_nDialogMes:Ljava/lang/String;

    goto :goto_f

    .line 425
    :pswitch_37
    const v2, 0x7f070070

    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->g_nDialogMes:Ljava/lang/String;

    goto :goto_f

    .line 428
    :pswitch_41
    invoke-virtual {p0, v4}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->g_nDialogMes:Ljava/lang/String;

    goto :goto_f

    .line 431
    :pswitch_55
    invoke-virtual {p0, v4}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->g_nDialogMes:Ljava/lang/String;

    goto :goto_f

    .line 434
    :pswitch_69
    invoke-virtual {p0, v4}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->g_nDialogMes:Ljava/lang/String;

    goto :goto_f

    .line 437
    :pswitch_7e
    const v2, 0x7f07006e

    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->g_nDialogMes:Ljava/lang/String;

    goto :goto_f

    .line 448
    .restart local v0       #nCount:I
    .restart local v1       #nRemain:I
    :pswitch_88
    sget-object v2, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->g_nDialogMes:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f07007b

    invoke-virtual {p0, v4}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->g_nDialogMes:Ljava/lang/String;

    goto/16 :goto_18

    .line 451
    :pswitch_ac
    sget-object v2, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->g_nDialogMes:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f07007c

    invoke-virtual {p0, v4}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->g_nDialogMes:Ljava/lang/String;

    goto/16 :goto_18

    .line 419
    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_37
        :pswitch_41
        :pswitch_55
        :pswitch_69
        :pswitch_7e
    .end packed-switch

    .line 445
    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_88
        :pswitch_ac
    .end packed-switch
.end method

.method public xuiFotaPostponeDefault()V
    .registers 11

    .prologue
    const/16 v9, 0xdc

    const/4 v8, 0x1

    .line 277
    new-instance v3, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    invoke-direct {v3}, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;-><init>()V

    .line 278
    .local v3, pPostUpdate:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;
    const-string v4, ""

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 280
    invoke-static {v8}, Lcom/wssyncmldm/XDMService;->xdmStopAlarm(I)V

    .line 282
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaGetPostponeTimerStateInfo()Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;

    move-result-object v1

    .line 283
    .local v1, PostponeTimerStateInfo:Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;
    if-nez v1, :cond_1d

    .line 285
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaCreatePostponeTimerStateInfo()V

    .line 286
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaGetPostponeTimerStateInfo()Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;

    move-result-object v1

    .line 289
    :cond_1d
    invoke-static {v9}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 290
    const-string v4, "xdbSetFUMOStatus  to XDL_STATE_POSTPONE_TO_UPDATE"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 292
    const-wide/32 v4, 0x36ee80

    iput-wide v4, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->timerInterval:J

    .line 293
    iput-boolean v8, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->bSelect_PostponeTime:Z

    .line 294
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 295
    .local v2, curtime:Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->timerInterval:J

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->nEndTime:J

    .line 296
    iput-boolean v8, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->nAfterDownLoadBatteryStatus:Z

    .line 298
    invoke-static {v1}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaSetPostponeTimerStateInfo(Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;)V

    .line 300
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tCurrentTime:J

    .line 301
    iget-wide v4, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->timerInterval:J

    iput-wide v4, v3, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nPostPoneTime:J

    .line 302
    iget-wide v4, v1, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->nEndTime:J

    iput-wide v4, v3, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tEndTime:J

    .line 303
    iput-boolean v8, v3, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nAfterDownLoadBatteryStatus:Z

    .line 304
    iget v4, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeCount:I

    iput v4, v3, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nPostPoneCount:I

    .line 306
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 307
    .local v0, PostPoneTime:Landroid/text/format/Time;
    iget-wide v4, v3, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tEndTime:J

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PostPoneTime :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CurTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v3, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tCurrentTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CurTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v3, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nPostPoneTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CurTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v3, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tEndTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 314
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbSetPostPoneTime(Ljava/lang/Object;)V

    .line 316
    invoke-static {v9}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 317
    const-string v4, "xdbSetFUMOStatus  to XDL_STATE_POSTPONE_TO_UPDATE"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 318
    iget-wide v4, v3, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tEndTime:J

    invoke-static {p0, v4, v5}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->xuiFotaPostponeStartTimer(Landroid/content/Context;J)V

    .line 320
    const/4 v4, 0x0

    sput-boolean v4, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->FOTA_POSTPONE_DEFAULT:Z

    .line 321
    return-void
.end method
