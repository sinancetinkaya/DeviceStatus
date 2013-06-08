.class public Lcom/wssyncmldm/agent/XDMTask;
.super Ljava/lang/Object;
.source "XDMTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XEventInterface;
.implements Lcom/wssyncmldm/interfaces/XUIInterface;
.implements Lcom/wssyncmldm/interfaces/XCommonInterface;
.implements Lcom/wssyncmldm/interfaces/XUICInterface;
.implements Lcom/wssyncmldm/interfaces/XFOTAInterface;
.implements Lcom/wssyncmldm/interfaces/XNOTIInterface;
.implements Lcom/wssyncmldm/interfaces/XTPInterface;


# static fields
.field public static g_IsDMInitialized:Z

.field public static g_IsPhoneBookInitialized:Z

.field public static g_IsSyncTaskInit:Z

.field public static g_ResumeInitCase:I

.field public static g_Rooting_Not_Scan:Z

.field public static g_hDmTask:Landroid/os/Handler;


# instance fields
.field public m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

.field public m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

.field private m_bDBInit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 58
    sput-boolean v0, Lcom/wssyncmldm/agent/XDMTask;->g_IsSyncTaskInit:Z

    .line 59
    sput-boolean v0, Lcom/wssyncmldm/agent/XDMTask;->g_IsPhoneBookInitialized:Z

    .line 60
    sput-boolean v0, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    .line 61
    sput-boolean v0, Lcom/wssyncmldm/agent/XDMTask;->g_Rooting_Not_Scan:Z

    .line 62
    sput v0, Lcom/wssyncmldm/agent/XDMTask;->g_ResumeInitCase:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    .line 65
    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wssyncmldm/agent/XDMTask;->m_bDBInit:Z

    .line 71
    sget-boolean v0, Lcom/wssyncmldm/agent/XDMTask;->g_IsSyncTaskInit:Z

    if-nez v0, :cond_17

    .line 73
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 75
    :cond_17
    return-void
.end method

.method private xdmAgentCheckResumeNoti(I)V
    .registers 7
    .parameter "nresumecase"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1498
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1500
    if-ne p1, v1, :cond_18

    .line 1502
    const-string v0, "Start resumecase for DM Notification"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1503
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushDataHandling()V

    .line 1541
    :cond_13
    :goto_13
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentSetNotiResumeCase(I)V

    .line 1542
    return-void

    .line 1505
    :cond_18
    const/4 v0, 0x6

    if-ne p1, v0, :cond_24

    .line 1507
    const-string v0, "Start resumecase for DM IP-Push"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1508
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushDataHandling()V

    goto :goto_13

    .line 1510
    :cond_24
    if-ne p1, v3, :cond_2f

    .line 1512
    const-string v0, "Start resumecase for DM Bootstrap"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1513
    invoke-static {v2, v2}, Lcom/wssyncmldm/XDMBroadcastReceiver;->xdmProcessPushMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_13

    .line 1515
    :cond_2f
    if-ne p1, v4, :cond_3a

    .line 1517
    const-string v0, "Start resumecase for CP Bootstrap"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1518
    invoke-static {v2}, Lcom/wssyncmldm/XDMBroadcastReceiver;->xdmProcessCPData(Landroid/content/Intent;)V

    goto :goto_13

    .line 1520
    :cond_3a
    const/4 v0, 0x7

    if-ne p1, v0, :cond_46

    .line 1522
    const-string v0, "Start resumecase for Device Registration"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1523
    invoke-static {v4}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpUserInitiate(I)V

    goto :goto_13

    .line 1525
    :cond_46
    const/4 v0, 0x4

    if-ne p1, v0, :cond_52

    .line 1527
    const-string v0, "Start resumecase for FotaClient Polling"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1528
    invoke-static {v3}, Lcom/wssyncmldm/XDMBroadcastReceiver;->xdmBroadcastFotaClientStartDM(I)V

    goto :goto_13

    .line 1530
    :cond_52
    const/4 v0, 0x5

    if-ne p1, v0, :cond_64

    .line 1532
    const-string v0, "Start resumecase for FotaClient Pull"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1533
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUpdateReport()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1534
    invoke-static {v1}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpUserInitiate(I)V

    goto :goto_13

    .line 1536
    :cond_64
    const/16 v0, 0x8

    if-ne p1, v0, :cond_13

    .line 1538
    const-string v0, "Start resumecase for SMS Push"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1539
    invoke-static {v1}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpUserInitiateBackground(I)V

    goto :goto_13
.end method

.method public static xdmAgentGetNotiResumeCase()I
    .registers 1

    .prologue
    .line 1478
    sget v0, Lcom/wssyncmldm/agent/XDMTask;->g_ResumeInitCase:I

    return v0
.end method

.method public static xdmAgentGetRootingNotScanStatus()Z
    .registers 1

    .prologue
    .line 1488
    sget-boolean v0, Lcom/wssyncmldm/agent/XDMTask;->g_Rooting_Not_Scan:Z

    return v0
.end method

.method public static xdmAgentSetNotiResumeCase(I)V
    .registers 1
    .parameter "nCase"

    .prologue
    .line 1483
    sput p0, Lcom/wssyncmldm/agent/XDMTask;->g_ResumeInitCase:I

    .line 1484
    return-void
.end method

.method public static xdmAgentSetRootingNotScanStatus(Z)V
    .registers 1
    .parameter "bState"

    .prologue
    .line 1493
    sput-boolean p0, Lcom/wssyncmldm/agent/XDMTask;->g_Rooting_Not_Scan:Z

    .line 1494
    return-void
.end method

.method private xdmAgentTaskDBInit()Z
    .registers 4

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, bRtn:Z
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpVerifyDevID()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 114
    :try_start_7
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbDMffs_Init()V

    .line 115
    const/4 v0, 0x1

    .line 116
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/wssyncmldm/agent/XDMTask;->m_bDBInit:Z
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_e} :catch_f

    .line 127
    :goto_e
    return v0

    .line 118
    :catch_f
    move-exception v1

    .line 120
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_e

    .line 125
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_18
    const-string v2, "DB Init Fail!!"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public static xdmAgentTaskGetDmInitStatus()Z
    .registers 1

    .prologue
    .line 153
    sget-boolean v0, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    return v0
.end method

.method public static xdmAgentTaskSetDmInitStatus(Z)V
    .registers 1
    .parameter "bInitState"

    .prologue
    .line 158
    sput-boolean p0, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    .line 159
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 79
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 81
    new-instance v0, Lcom/wssyncmldm/agent/XDMTask$1;

    invoke-direct {v0, p0}, Lcom/wssyncmldm/agent/XDMTask$1;-><init>(Lcom/wssyncmldm/agent/XDMTask;)V

    sput-object v0, Lcom/wssyncmldm/agent/XDMTask;->g_hDmTask:Landroid/os/Handler;

    .line 98
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 99
    return-void
.end method

.method public xdmAgentDlXXXFail()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1591
    const-string v0, "===xdmAgentDlXXXFail==="

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1592
    iget-object v0, p0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpClose(I)V

    .line 1593
    iget-object v0, p0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpCloseNetWork(I)V

    .line 1594
    return-void
.end method

.method public xdmAgentDmXXXFail()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1584
    const-string v0, "===xdmAgentDmXXXFail==="

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1585
    iget-object v0, p0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpClose(I)V

    .line 1586
    iget-object v0, p0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpCloseNetwork(I)V

    .line 1587
    return-void
.end method

.method public xdmAgentTaskHandler(Landroid/os/Message;)Z
    .registers 40
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v9, 0x0

    .line 165
    .local v9, msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    if-nez v35, :cond_c

    .line 166
    const/16 v35, 0x1

    .line 1473
    :goto_b
    return v35

    .line 168
    :cond_c
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v9           #msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    check-cast v9, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;

    .line 169
    .restart local v9       #msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    iget v0, v9, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->type:I

    move/from16 v35, v0

    sparse-switch v35, :sswitch_data_11b6

    .line 1472
    :cond_19
    :goto_19
    :sswitch_19
    const/16 p1, 0x0

    .line 1473
    const/16 v35, 0x0

    goto :goto_b

    .line 172
    :sswitch_1e
    const-string v35, "XEVENT_OS_INITIALIZED"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 173
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetIsConnected(Z)V

    .line 174
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpSetRetryCount(I)V

    .line 175
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 176
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentTaskInit()V

    .line 178
    const/16 v35, 0x1

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_19

    .line 182
    :sswitch_44
    const-string v35, "XEVENT_PHONEBOOK_INITIALIZED"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 183
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentTaskSetPhonebookInit(Z)V

    .line 186
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMInitAdapter;->xdmInitAdpWaitBearerSetting()V

    .line 189
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMInitAdapter;->xdmCheckUpdateAndDisplayResult()V

    .line 191
    sget-boolean v35, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    if-nez v35, :cond_66

    .line 192
    const/16 v35, 0xc

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_19

    .line 194
    :cond_66
    const-string v35, "Initialized"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_19

    .line 199
    :sswitch_6c
    const-string v35, "XEVENT_NETWORK_STATUS_UPDATED"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_19

    .line 203
    :sswitch_72
    const-string v35, "XEVENT_DM_IDLE_STATE"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_19

    .line 207
    :sswitch_78
    const-string v35, "XEVENT_DM_INIT"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 209
    sget-boolean v35, Lcom/wssyncmldm/XDMService;->XDM_SYSTEM_ROOTING:Z

    if-nez v35, :cond_84

    .line 210
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMInitAdapter;->xdmInitAdpWaitSystemRootingCheck()V

    .line 212
    :cond_84
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMInitAdapter;->xdmInitAdpGetNetStatus()I

    move-result v35

    const/16 v36, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_c6

    .line 214
    const-string v35, "Network Status is not ready. DM Not Initialized"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 215
    const/16 v35, 0x0

    sput-boolean v35, Lcom/wssyncmldm/XDMService;->g_bIsInitializing:Z

    .line 217
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetTopActivityName()Ljava/lang/String;

    move-result-object v35

    const-string v36, "XUIFotaBlockActivity"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_b3

    .line 219
    const/16 v35, 0x0

    const/16 v36, 0x69

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 220
    const/16 v35, 0x0

    const/16 v36, 0x195

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 223
    :cond_b3
    invoke-static {}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentGetNotiResumeCase()I

    move-result v35

    const/16 v36, 0x5

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_19

    .line 224
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentSetNotiResumeCase(I)V

    goto/16 :goto_19

    .line 228
    :cond_c6
    sget-boolean v35, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    if-nez v35, :cond_19

    .line 230
    const/4 v5, 0x1

    .line 232
    .local v5, bRet:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_bDBInit:Z

    move/from16 v35, v0

    if-nez v35, :cond_d7

    .line 233
    invoke-direct/range {p0 .. p0}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentTaskDBInit()Z

    move-result v5

    .line 235
    :cond_d7
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetTopActivityName()Ljava/lang/String;

    move-result-object v35

    const-string v36, "XUIFotaBlockActivity"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_ea

    .line 237
    const/16 v35, 0x0

    const/16 v36, 0x195

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 240
    :cond_ea
    if-nez v5, :cond_103

    .line 242
    const/16 v35, 0x0

    sput-boolean v35, Lcom/wssyncmldm/XDMService;->g_bIsInitializing:Z

    .line 244
    invoke-static {}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentGetNotiResumeCase()I

    move-result v35

    const/16 v36, 0x5

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_19

    .line 245
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentSetNotiResumeCase(I)V

    goto/16 :goto_19

    .line 250
    :cond_103
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMInitAdapter;->xdmInitAdpEXTInit()Z

    move-result v35

    if-nez v35, :cond_129

    .line 252
    const-string v35, "XEVENT_DM_INIT : Not Initialized"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 253
    const/16 v35, 0x0

    sput-boolean v35, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    .line 254
    const/16 v35, 0x0

    sput-boolean v35, Lcom/wssyncmldm/XDMService;->g_bIsInitializing:Z

    .line 256
    invoke-static {}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentGetNotiResumeCase()I

    move-result v35

    const/16 v36, 0x5

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_19

    .line 257
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentSetNotiResumeCase(I)V

    goto/16 :goto_19

    .line 261
    :cond_129
    const-string v35, "XEVENT_DM_INIT : Initialized"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 262
    const/16 v35, 0x1

    sput-boolean v35, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    .line 263
    const/16 v35, 0x0

    sput-boolean v35, Lcom/wssyncmldm/XDMService;->g_bIsInitializing:Z

    .line 265
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetTopActivityName()Ljava/lang/String;

    move-result-object v35

    const-string v36, "XUIFotaBlockActivity"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_149

    .line 267
    const/16 v35, 0x0

    const/16 v36, 0x195

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 270
    :cond_149
    invoke-static {}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentGetNotiResumeCase()I

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentCheckResumeNoti(I)V

    goto/16 :goto_19

    .line 277
    .end local v5           #bRet:Z
    :sswitch_156
    const-string v35, "XEVENT_DM_CONNECT"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 278
    const/4 v15, 0x0

    .line 279
    .local v15, nMechanism:I
    const/4 v13, 0x0

    .line 282
    .local v13, nFumoStatus:I
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetUserCancel(Z)V

    .line 284
    sget-boolean v35, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    if-eqz v35, :cond_494

    .line 286
    const/16 v32, 0x1

    .line 287
    .local v32, rc:Z
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetFirmwareVersion()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetPostPoneCurrentVersion(Ljava/lang/Object;)V

    .line 288
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlAgentIsStatus()Z

    move-result v32

    .line 289
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "xfotaDlAgentIsStatus :"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 291
    if-eqz v32, :cond_202

    .line 293
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetChangedProtocol()Z

    move-result v35

    if-eqz v35, :cond_1b8

    .line 295
    const-string v35, "XEVENT_DM_CONNECT : Changed Protocol"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 308
    :goto_19a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpInit(I)I

    move-result v16

    .line 309
    .local v16, nRet:I
    if-eqz v16, :cond_1e8

    .line 311
    const-string v35, "xdmAgentTpInit fail!!"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 312
    const/16 v35, 0x15

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 299
    .end local v16           #nRet:I
    :cond_1b8
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetProfileInfo()Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v24

    .line 300
    .local v24, pNvInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    if-nez v24, :cond_1c3

    .line 301
    new-instance v24, Lcom/wssyncmldm/db/file/XDBProfileInfo;

    .end local v24           #pNvInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    invoke-direct/range {v24 .. v24}, Lcom/wssyncmldm/db/file/XDBProfileInfo;-><init>()V

    .line 302
    .restart local v24       #pNvInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    :cond_1c3
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl_Org:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetServerUrl(Ljava/lang/String;)V

    .line 303
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP_Org:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetServerAddress(Ljava/lang/String;)V

    .line 304
    move-object/from16 v0, v24

    iget v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort_Org:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetServerPort(I)V

    .line 305
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol_Org:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetServerProtocol(Ljava/lang/String;)V

    goto :goto_19a

    .line 316
    .end local v24           #pNvInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    .restart local v16       #nRet:I
    :cond_1e8
    sget-boolean v35, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_OTA_PREFER_MODEL:Z

    if-eqz v35, :cond_1f7

    .line 317
    const/16 v35, 0x28

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 319
    :cond_1f7
    const/16 v35, 0x20

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 324
    .end local v16           #nRet:I
    :cond_202
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOUpdateMechanism()I

    move-result v15

    .line 325
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "nMechanism : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v13

    .line 327
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "nFumoStatus : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 329
    const/16 v35, 0x2

    move/from16 v0, v35

    if-ne v15, v0, :cond_2cb

    .line 331
    const/16 v35, 0x32

    move/from16 v0, v35

    if-ne v13, v0, :cond_24f

    .line 333
    const/16 v35, 0x0

    const/16 v36, 0xd3

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_19

    .line 335
    :cond_24f
    const/16 v35, 0xc8

    move/from16 v0, v35

    if-ne v13, v0, :cond_2bb

    .line 338
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetNotiEvent()I

    move-result v11

    .line 339
    .local v11, nEvent:I
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "nEvent : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v35

    const-string v36, "CscFeature_SyncML_EnableNotiDeltaBinarySizeBeforeDownload"

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_293

    const/16 v35, 0x4

    move/from16 v0, v35

    if-eq v11, v0, :cond_285

    if-nez v11, :cond_293

    .line 346
    :cond_285
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    .line 364
    :cond_28a
    :goto_28a
    const/16 v35, 0x0

    const/16 v36, 0xca

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_19

    .line 348
    :cond_293
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUpdateReport()Z

    move-result v35

    if-eqz v35, :cond_28a

    .line 350
    const-string v35, "OPEN"

    const-string v36, "TMO"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2a9

    .line 352
    const/16 v35, 0x3

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto :goto_28a

    .line 357
    :cond_2a9
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v35

    if-eqz v35, :cond_2b5

    .line 358
    const/16 v35, 0x3

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto :goto_28a

    .line 360
    :cond_2b5
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto :goto_28a

    .line 368
    .end local v11           #nEvent:I
    :cond_2bb
    const-string v35, "XDM_FOTA_MECHANISM_ALTERNATIVE XEVENT_DL_CONNECT"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 369
    const/16 v35, 0x70

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 372
    :cond_2cb
    const/16 v35, 0x3

    move/from16 v0, v35

    if-ne v15, v0, :cond_32e

    .line 374
    const/16 v35, 0x32

    move/from16 v0, v35

    if-ne v13, v0, :cond_2e0

    .line 376
    const/16 v35, 0x0

    const/16 v36, 0xd3

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_19

    .line 378
    :cond_2e0
    const/16 v35, 0x28

    move/from16 v0, v35

    if-ne v13, v0, :cond_31e

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpInit(I)I

    move-result v16

    .line 381
    .restart local v16       #nRet:I
    if-eqz v16, :cond_304

    .line 383
    const-string v35, "xdmAgentTpInit fail!"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 384
    const/16 v35, 0x15

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 388
    :cond_304
    sget-boolean v35, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_OTA_PREFER_MODEL:Z

    if-eqz v35, :cond_313

    .line 389
    const/16 v35, 0x28

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 391
    :cond_313
    const/16 v35, 0x20

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 396
    .end local v16           #nRet:I
    :cond_31e
    const-string v35, "XDM_FOTA_MECHANISM_ALTERNATIVE_DOWNLOAD XEVENT_DL_CONNECT"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 397
    const/16 v35, 0x70

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 400
    :cond_32e
    const/16 v35, 0x1

    move/from16 v0, v35

    if-ne v15, v0, :cond_41a

    .line 402
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetChangedProtocol()Z

    move-result v35

    if-eqz v35, :cond_35d

    .line 404
    const-string v35, "XDM_FOTA_MECHANISM_REPLACE : Changed Protocol"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 421
    :goto_33f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpInit(I)I

    move-result v16

    .line 422
    .restart local v16       #nRet:I
    if-eqz v16, :cond_400

    .line 424
    const-string v35, "xdmAgentTpInit fail!"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 425
    const/16 v35, 0x15

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 408
    .end local v16           #nRet:I
    :cond_35d
    const/16 v24, 0x0

    .line 409
    .restart local v24       #pNvInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetProfileInfo()Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v24

    .line 410
    if-nez v24, :cond_36a

    .line 411
    new-instance v24, Lcom/wssyncmldm/db/file/XDBProfileInfo;

    .end local v24           #pNvInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    invoke-direct/range {v24 .. v24}, Lcom/wssyncmldm/db/file/XDBProfileInfo;-><init>()V

    .line 412
    .restart local v24       #pNvInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    :cond_36a
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl_Org:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetServerUrl(Ljava/lang/String;)V

    .line 413
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP_Org:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetServerAddress(Ljava/lang/String;)V

    .line 414
    move-object/from16 v0, v24

    iget v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort_Org:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetServerPort(I)V

    .line 415
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol_Org:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetServerProtocol(Ljava/lang/String;)V

    .line 416
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ServerUrl_Org:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl_Org:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 417
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ServerIP_Org:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP_Org:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 418
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ServerPort_Org:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v24

    iget v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort_Org:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 419
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Protocol_Org:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol_Org:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto/16 :goto_33f

    .line 429
    .end local v24           #pNvInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    .restart local v16       #nRet:I
    :cond_400
    sget-boolean v35, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_OTA_PREFER_MODEL:Z

    if-eqz v35, :cond_40f

    .line 430
    const/16 v35, 0x28

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 432
    :cond_40f
    const/16 v35, 0x20

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 436
    .end local v16           #nRet:I
    :cond_41a
    if-nez v15, :cond_19

    .line 438
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetChangedProtocol()Z

    move-result v35

    if-eqz v35, :cond_445

    .line 440
    const-string v35, "XDM_FOTA_MECHANISM_NONE : Changed Protocol"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 454
    :goto_427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpInit(I)I

    move-result v16

    .line 455
    .restart local v16       #nRet:I
    if-eqz v16, :cond_47a

    .line 457
    const-string v35, "xdmAgentTpInit fail!"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 458
    const/16 v35, 0x15

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 444
    .end local v16           #nRet:I
    :cond_445
    const-string v35, "XDM_FOTA_MECHANISM_NONE"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 446
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetProfileInfo()Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v24

    .line 447
    .restart local v24       #pNvInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    if-nez v24, :cond_455

    .line 448
    new-instance v24, Lcom/wssyncmldm/db/file/XDBProfileInfo;

    .end local v24           #pNvInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    invoke-direct/range {v24 .. v24}, Lcom/wssyncmldm/db/file/XDBProfileInfo;-><init>()V

    .line 449
    .restart local v24       #pNvInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    :cond_455
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl_Org:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetServerUrl(Ljava/lang/String;)V

    .line 450
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP_Org:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetServerAddress(Ljava/lang/String;)V

    .line 451
    move-object/from16 v0, v24

    iget v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort_Org:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetServerPort(I)V

    .line 452
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol_Org:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetServerProtocol(Ljava/lang/String;)V

    goto :goto_427

    .line 462
    .end local v24           #pNvInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    .restart local v16       #nRet:I
    :cond_47a
    sget-boolean v35, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_OTA_PREFER_MODEL:Z

    if-eqz v35, :cond_489

    .line 463
    const/16 v35, 0x28

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 465
    :cond_489
    const/16 v35, 0x20

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 472
    .end local v16           #nRet:I
    .end local v32           #rc:Z
    :cond_494
    const-string v35, "XUI_DM_NOT_INIT"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 473
    const/16 v35, 0x0

    const/16 v36, 0x69

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_19

    .line 479
    .end local v13           #nFumoStatus:I
    .end local v15           #nMechanism:I
    :sswitch_4a2
    const-string v35, "XEVENT_DM_CONNECTRETRY"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 484
    :sswitch_4a9
    const/4 v4, 0x0

    .line 485
    .local v4, bRc:Z
    const-string v35, "XEVENT_DM_CONNECTFAIL"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpClose(I)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpCloseNetwork(I)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpCheckRetry()Z

    move-result v4

    .line 490
    if-eqz v4, :cond_4e1

    .line 492
    const-wide/16 v35, 0xdac

    invoke-static/range {v35 .. v36}, Ljava/lang/Thread;->sleep(J)V

    .line 493
    const/16 v35, 0xb

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 497
    :cond_4e1
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetChangedProtocol()Z

    move-result v35

    if-eqz v35, :cond_4ea

    .line 499
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbSetBackUpServerUrl()V

    .line 501
    :cond_4ea
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 502
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpSetRetryCount(I)V

    .line 503
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 504
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpCheckRoamingDataConnect()Z

    move-result v35

    if-nez v35, :cond_511

    .line 506
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    .line 507
    const/16 v35, 0x0

    const/16 v36, 0x191

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 514
    :goto_50b
    const/16 v35, 0x1

    sput v35, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    goto/16 :goto_19

    .line 511
    :cond_511
    const/16 v35, 0x0

    const/16 v36, 0x6f

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_50b

    .line 520
    .end local v4           #bRc:Z
    :sswitch_519
    const/4 v4, 0x0

    .line 521
    .restart local v4       #bRc:Z
    const-string v35, "XEVENT_DM_SENDFAIL"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpClose(I)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpCloseNetwork(I)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpCheckRetry()Z

    move-result v4

    .line 526
    if-eqz v4, :cond_54c

    .line 528
    const/16 v35, 0xb

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 531
    :cond_54c
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetChangedProtocol()Z

    move-result v35

    if-eqz v35, :cond_555

    .line 533
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbSetBackUpServerUrl()V

    .line 535
    :cond_555
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 536
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpSetRetryCount(I)V

    .line 537
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 538
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpCheckRoamingDataConnect()Z

    move-result v35

    if-nez v35, :cond_57c

    .line 540
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    .line 541
    const/16 v35, 0x0

    const/16 v36, 0x191

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 548
    :goto_576
    const/16 v35, 0x1

    sput v35, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    goto/16 :goto_19

    .line 545
    :cond_57c
    const/16 v35, 0x0

    const/16 v36, 0x86

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_576

    .line 554
    .end local v4           #bRc:Z
    :sswitch_584
    const/4 v4, 0x0

    .line 555
    .restart local v4       #bRc:Z
    const-string v35, "XEVENT_DM_RECEIVETFAIL"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpClose(I)V

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpCloseNetwork(I)V

    .line 560
    invoke-static {}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetUserCancel()Z

    move-result v35

    if-eqz v35, :cond_5b6

    .line 562
    const-string v35, "Do not connect to download server due to user cancel"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 563
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentTaskUserCancelDownload(I)V

    goto/16 :goto_19

    .line 567
    :cond_5b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpCheckRetry()Z

    move-result v4

    .line 568
    if-eqz v4, :cond_5cd

    .line 570
    const/16 v35, 0xb

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 573
    :cond_5cd
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetChangedProtocol()Z

    move-result v35

    if-eqz v35, :cond_5d6

    .line 575
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbSetBackUpServerUrl()V

    .line 577
    :cond_5d6
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 578
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpSetRetryCount(I)V

    .line 579
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 580
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpCheckRoamingDataConnect()Z

    move-result v35

    if-nez v35, :cond_5fd

    .line 582
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    .line 583
    const/16 v35, 0x0

    const/16 v36, 0x191

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 590
    :goto_5f7
    const/16 v35, 0x1

    sput v35, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    goto/16 :goto_19

    .line 587
    :cond_5fd
    const/16 v35, 0x0

    const/16 v36, 0x85

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_5f7

    .line 595
    .end local v4           #bRc:Z
    :sswitch_605
    const-string v35, "XEVENT_DM_START"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 596
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_AgentHandler:Lcom/wssyncmldm/agent/XDMAgentHandler;

    move-object/from16 v35, v0

    const/16 v36, 0x17

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentHdlrContinueSession(ILjava/lang/Object;)V

    goto/16 :goto_19

    .line 601
    :sswitch_624
    const-string v35, "XEVENT_DM_CONTINUE"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 603
    invoke-static {}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetUserCancel()Z

    move-result v35

    if-eqz v35, :cond_63f

    .line 605
    const-string v35, "Do not connect to download server due to user cancel"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 606
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentTaskUserCancelDownload(I)V

    goto/16 :goto_19

    .line 609
    :cond_63f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_AgentHandler:Lcom/wssyncmldm/agent/XDMAgentHandler;

    move-object/from16 v35, v0

    const/16 v36, 0x18

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentHdlrContinueSession(ILjava/lang/Object;)V

    goto/16 :goto_19

    .line 613
    :sswitch_654
    const-string v35, "XEVENT_DM_ABORT"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 615
    iget-object v0, v9, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->param:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;

    move-object/from16 v35, v0

    if-nez v35, :cond_668

    .line 617
    const-string v35, "param is null"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 618
    const/16 v35, 0x0

    goto/16 :goto_b

    .line 621
    :cond_668
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetChangedProtocol()Z

    move-result v35

    if-eqz v35, :cond_671

    .line 623
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbSetBackUpServerUrl()V

    .line 626
    :cond_671
    iget-object v0, v9, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->param:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;->param:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;

    .line 628
    .local v21, pAbortParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 629
    invoke-static {}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpCookieClear()V

    .line 631
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, " pAbortParam.abortCode:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v21

    iget v0, v0, Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;->abortCode:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 632
    move-object/from16 v0, v21

    iget v0, v0, Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;->abortCode:I

    move/from16 v35, v0

    const/16 v36, 0xfb

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_6fa

    .line 635
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDmAgentType(I)V

    .line 636
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 637
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOUpdateMechanism(I)V

    .line 639
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 640
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetServerInitiatedStatus(Z)V

    .line 641
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpClose(I)V

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpCloseNetwork(I)V

    .line 679
    :cond_6e1
    :goto_6e1
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpSetRetryCount(I)V

    .line 680
    move-object/from16 v0, v21

    iget v0, v0, Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;->abortCode:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_1288

    :pswitch_6ef
    goto/16 :goto_19

    .line 687
    :pswitch_6f1
    const/16 v35, 0x0

    const/16 v36, 0x88

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_19

    .line 646
    :cond_6fa
    move-object/from16 v0, v21

    iget v0, v0, Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;->abortCode:I

    move/from16 v35, v0

    const/16 v36, 0xf5

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_722

    .line 648
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentClose()I

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpClose(I)V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpCloseNetwork(I)V

    goto :goto_6e1

    .line 653
    :cond_722
    move-object/from16 v0, v21

    iget v0, v0, Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;->abortCode:I

    move/from16 v35, v0

    const/16 v36, 0xf9

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_769

    .line 655
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDmAgentType()I

    move-result v10

    .line 657
    .local v10, nAgentType:I
    const-string v35, "XEVENT_ABORT_HTTP_ERROR, not implement..."

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 658
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentClose()I

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpClose(I)V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpCloseNetwork(I)V

    .line 663
    const/16 v35, 0x1

    move/from16 v0, v35

    if-ne v10, v0, :cond_6e1

    .line 665
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDmAgentType(I)V

    .line 666
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 667
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOUpdateMechanism(I)V

    goto/16 :goto_6e1

    .line 672
    .end local v10           #nAgentType:I
    :cond_769
    const-string v35, " XEVENT_DM_ABORT : ELSE"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 673
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentClose()I

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpClose(I)V

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpCloseNetwork(I)V

    goto/16 :goto_6e1

    .line 683
    :pswitch_789
    const/16 v35, 0x0

    const/16 v36, 0x84

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_19

    .line 690
    :pswitch_792
    const/16 v35, 0x0

    const/16 v36, 0x87

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_19

    .line 698
    .end local v21           #pAbortParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    :sswitch_79b
    const-string v35, "XEVENT_DM_FINISH"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpClose(I)V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpCloseNetwork(I)V

    .line 701
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpSetRetryCount(I)V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_AgentHandler:Lcom/wssyncmldm/agent/XDMAgentHandler;

    move-object/from16 v35, v0

    const/16 v36, 0x1a

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentHdlrContinueSession(ILjava/lang/Object;)V

    .line 703
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v35

    if-nez v35, :cond_19

    .line 705
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 706
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetPostponeAutoinstall(Z)V

    goto/16 :goto_19

    .line 712
    :sswitch_7e0
    const/16 v33, 0x0

    .line 713
    .local v33, ret:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_HttpDMAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpApnOpen(I)I

    move-result v33

    .line 714
    const/16 v35, -0x2

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_19

    .line 716
    const/16 v35, 0x15

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 723
    .end local v33           #ret:I
    :sswitch_807
    const-string v35, "XEVENT_DM_TCPIP_OPEN"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 725
    const/16 v35, 0x4

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 726
    const/16 v35, 0x8

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 727
    const/16 v35, 0xa

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 728
    const/16 v35, 0x2

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 729
    const/16 v35, 0x17

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 734
    :sswitch_82b
    const-string v35, "XEVENT_DM_TCPIP_SEND"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 737
    :sswitch_832
    const-string v35, "XEVENT_DM_TCPIP_CLOSE"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 740
    :sswitch_839
    const-string v35, "XEVENT_DM_SOCKET_CONNECTED"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 743
    :sswitch_840
    const-string v35, "XEVENT_DM_SOCKET_DISCONNECTED"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 746
    :sswitch_847
    const-string v35, "XEVENT_DM_SOCKET_DATA_RECEIVED"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 749
    :sswitch_84e
    const-string v35, "XEVENT_DM_SOCKET_SSL_TUNNEL_CONNECT"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 752
    :sswitch_855
    const-string v35, "XEVENT_DM_DDF_PARSER_ACTIVE"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 755
    :sswitch_85c
    const-string v35, "XEVENT_DM_DDF_PARSER_PROCESS"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 758
    :sswitch_863
    const-string v35, "XEVENT_DM_CLEAR_SESSION"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 769
    :sswitch_86a
    const-string v35, "XEVENT_DL_CONNECT"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 771
    invoke-static {}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetUserCancel()Z

    move-result v35

    if-eqz v35, :cond_885

    .line 773
    const-string v35, "Do not connect to download server due to user cancel"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 774
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentTaskUserCancelDownload(I)V

    goto/16 :goto_19

    .line 777
    :cond_885
    invoke-static {}, Lcom/wssyncmldm/ui/XUIDownloadProgress;->xuiDownloadTimeInit()V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpInit(I)I

    move-result v16

    .line 780
    .restart local v16       #nRet:I
    if-eqz v16, :cond_8a6

    .line 782
    const-string v35, "xfotaDlTpInit fail!"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 783
    const/16 v35, 0x71

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 787
    :cond_8a6
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 788
    sget-boolean v35, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_OTA_PREFER_MODEL:Z

    if-eqz v35, :cond_8ba

    .line 789
    const/16 v35, 0x7e

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 791
    :cond_8ba
    const/16 v35, 0x75

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 799
    .end local v16           #nRet:I
    :sswitch_8c5
    const/4 v4, 0x0

    .line 800
    .restart local v4       #bRc:Z
    const-string v35, "XEVENT_DL_CONNECTFAIL"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 803
    invoke-static {}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetUserCancel()Z

    move-result v35

    if-eqz v35, :cond_8e1

    .line 805
    const-string v35, "Connect fail due to user cancel"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 806
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentTaskUserCancelDownload(I)V

    goto/16 :goto_19

    .line 810
    :cond_8e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpClose(I)V

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpCloseNetWork(I)V

    .line 812
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownloadSetDrawingPercentage(Z)V

    .line 814
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpCheckRoamingDataConnect()Z

    move-result v35

    if-nez v35, :cond_919

    .line 816
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 817
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpSetRetryCount(I)V

    .line 818
    const/16 v35, 0x0

    const/16 v36, 0x191

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 820
    const/16 v35, 0x2

    sput v35, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    goto/16 :goto_19

    .line 824
    :cond_919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpCheckRetry()Z

    move-result v4

    .line 825
    if-eqz v4, :cond_9b4

    .line 827
    const-wide/16 v35, 0xdac

    invoke-static/range {v35 .. v36}, Ljava/lang/Thread;->sleep(J)V

    .line 828
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v18

    .line 829
    .local v18, nStatus:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetWifiOnlyFlag()Z

    move-result v6

    .line 831
    .local v6, bWifiOnly:Z
    sget-boolean v35, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v35, :cond_93c

    sget-boolean v35, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-nez v35, :cond_93c

    if-eqz v6, :cond_959

    :cond_93c
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v35

    if-nez v35, :cond_959

    .line 834
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 835
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpSetRetryCount(I)V

    .line 836
    const/16 v35, 0x0

    const/16 v36, 0x8a

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 838
    const/16 v35, 0x2

    sput v35, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    goto/16 :goto_19

    .line 840
    :cond_959
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmWifiDownloadSizeCheck()Z

    move-result v35

    if-eqz v35, :cond_97d

    .line 842
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 843
    const/16 v35, 0x0

    const/16 v36, 0x89

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 845
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUiMode()I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_19

    .line 847
    const/16 v35, 0x2

    sput v35, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    goto/16 :goto_19

    .line 850
    :cond_97d
    if-nez v6, :cond_9a9

    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUiMode()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_9a9

    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpGetRetryCount()I

    move-result v35

    rem-int/lit8 v35, v35, 0x3

    if-nez v35, :cond_9a9

    const/16 v35, 0x1e

    move/from16 v0, v18

    move/from16 v1, v35

    if-ne v0, v1, :cond_9a9

    .line 853
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 854
    const/16 v35, 0x0

    const/16 v36, 0x89

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_19

    .line 858
    :cond_9a9
    const/16 v35, 0x70

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 863
    .end local v6           #bWifiOnly:Z
    .end local v18           #nStatus:I
    :cond_9b4
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 864
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpSetRetryCount(I)V

    .line 865
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 866
    const/16 v35, 0x0

    const/16 v36, 0xf1

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 868
    const/16 v35, 0x2

    sput v35, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    .line 871
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpGetRetryFailCount()I

    move-result v17

    .line 872
    .local v17, nRetryFailCnt:I
    const/16 v35, 0x1

    move/from16 v0, v17

    move/from16 v1, v35

    if-ge v0, v1, :cond_9fb

    .line 874
    add-int/lit8 v17, v17, 0x1

    .line 875
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "XEVENT_DL_CONNECTFAIL nRetryFailCnt="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 876
    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpSetRetryFailCount(I)V

    goto/16 :goto_19

    .line 881
    :cond_9fb
    const-string v35, "XEVENT_DL_CONNECTFAIL nRetryFailCntMax OVER. Session reset"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 882
    const/16 v17, 0x0

    .line 883
    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpSetRetryFailCount(I)V

    .line 885
    const-string v35, "500"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOResultCode(Ljava/lang/String;)V

    .line 887
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v19

    .line 888
    .local v19, nfumostatus:I
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Fumo Status = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 889
    if-eqz v19, :cond_19

    .line 891
    const-string v35, "send generic alert for fail to download package"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 894
    const/16 v35, 0xf1

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 895
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgResetUpdateDownloadProgressBar(Z)V

    .line 896
    const/16 v35, 0xb

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 905
    .end local v4           #bRc:Z
    .end local v17           #nRetryFailCnt:I
    .end local v19           #nfumostatus:I
    :sswitch_a44
    const/4 v4, 0x0

    .line 906
    .restart local v4       #bRc:Z
    const-string v35, "XEVENT_DL_SENDFAIL"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpClose(I)V

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpCloseNetWork(I)V

    .line 910
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownloadSetDrawingPercentage(Z)V

    .line 912
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpCheckRoamingDataConnect()Z

    move-result v35

    if-nez v35, :cond_a82

    .line 914
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 915
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpSetRetryCount(I)V

    .line 916
    const/16 v35, 0x0

    const/16 v36, 0x191

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 918
    const/16 v35, 0x2

    sput v35, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    goto/16 :goto_19

    .line 922
    :cond_a82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpCheckRetry()Z

    move-result v4

    .line 923
    if-eqz v4, :cond_b18

    .line 925
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v18

    .line 926
    .restart local v18       #nStatus:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetWifiOnlyFlag()Z

    move-result v6

    .line 928
    .restart local v6       #bWifiOnly:Z
    sget-boolean v35, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v35, :cond_aa0

    sget-boolean v35, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-nez v35, :cond_aa0

    if-eqz v6, :cond_abd

    :cond_aa0
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v35

    if-nez v35, :cond_abd

    .line 931
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 932
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpSetRetryCount(I)V

    .line 933
    const/16 v35, 0x0

    const/16 v36, 0x8a

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 935
    const/16 v35, 0x2

    sput v35, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    goto/16 :goto_19

    .line 937
    :cond_abd
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmWifiDownloadSizeCheck()Z

    move-result v35

    if-eqz v35, :cond_ae1

    .line 939
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 940
    const/16 v35, 0x0

    const/16 v36, 0x89

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 942
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUiMode()I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_19

    .line 944
    const/16 v35, 0x2

    sput v35, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    goto/16 :goto_19

    .line 947
    :cond_ae1
    if-nez v6, :cond_b0d

    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUiMode()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_b0d

    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpGetRetryCount()I

    move-result v35

    rem-int/lit8 v35, v35, 0x3

    if-nez v35, :cond_b0d

    const/16 v35, 0x1e

    move/from16 v0, v18

    move/from16 v1, v35

    if-ne v0, v1, :cond_b0d

    .line 950
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 951
    const/16 v35, 0x0

    const/16 v36, 0x89

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_19

    .line 955
    :cond_b0d
    const/16 v35, 0x70

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 960
    .end local v6           #bWifiOnly:Z
    .end local v18           #nStatus:I
    :cond_b18
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 961
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpSetRetryCount(I)V

    .line 962
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 963
    const/16 v35, 0x0

    const/16 v36, 0xf3

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 965
    const/16 v35, 0x2

    sput v35, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    goto/16 :goto_19

    .line 971
    .end local v4           #bRc:Z
    :sswitch_b34
    const/4 v4, 0x0

    .line 972
    .restart local v4       #bRc:Z
    const-string v35, "XEVENT_DL_RECEIVEFAIL"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpClose(I)V

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpCloseNetWork(I)V

    .line 976
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownloadSetDrawingPercentage(Z)V

    .line 978
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpCheckRoamingDataConnect()Z

    move-result v35

    if-nez v35, :cond_b72

    .line 980
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 981
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpSetRetryCount(I)V

    .line 982
    const/16 v35, 0x0

    const/16 v36, 0x191

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 984
    const/16 v35, 0x2

    sput v35, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    goto/16 :goto_19

    .line 988
    :cond_b72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpCheckRetry()Z

    move-result v4

    .line 989
    if-eqz v4, :cond_c08

    .line 991
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v18

    .line 992
    .restart local v18       #nStatus:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetWifiOnlyFlag()Z

    move-result v6

    .line 995
    .restart local v6       #bWifiOnly:Z
    sget-boolean v35, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v35, :cond_b90

    sget-boolean v35, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-nez v35, :cond_b90

    if-eqz v6, :cond_bad

    :cond_b90
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v35

    if-nez v35, :cond_bad

    .line 998
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 999
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpSetRetryCount(I)V

    .line 1000
    const/16 v35, 0x0

    const/16 v36, 0x8a

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 1002
    const/16 v35, 0x2

    sput v35, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    goto/16 :goto_19

    .line 1004
    :cond_bad
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmWifiDownloadSizeCheck()Z

    move-result v35

    if-eqz v35, :cond_bd1

    .line 1006
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 1007
    const/16 v35, 0x0

    const/16 v36, 0x89

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 1009
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUiMode()I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_19

    .line 1011
    const/16 v35, 0x2

    sput v35, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    goto/16 :goto_19

    .line 1014
    :cond_bd1
    if-nez v6, :cond_bfd

    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUiMode()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_bfd

    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpGetRetryCount()I

    move-result v35

    rem-int/lit8 v35, v35, 0x3

    if-nez v35, :cond_bfd

    const/16 v35, 0x1e

    move/from16 v0, v18

    move/from16 v1, v35

    if-ne v0, v1, :cond_bfd

    .line 1017
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 1018
    const/16 v35, 0x0

    const/16 v36, 0x89

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_19

    .line 1022
    :cond_bfd
    const/16 v35, 0x70

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 1027
    .end local v6           #bWifiOnly:Z
    .end local v18           #nStatus:I
    :cond_c08
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 1028
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpSetRetryCount(I)V

    .line 1029
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1030
    const/16 v35, 0x0

    const/16 v36, 0xf2

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 1032
    const/16 v35, 0x2

    sput v35, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    goto/16 :goto_19

    .line 1038
    .end local v4           #bRc:Z
    :sswitch_c24
    const-string v35, "XEVENT_DL_ABORT"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1040
    iget-object v0, v9, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->param:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;

    move-object/from16 v35, v0

    if-nez v35, :cond_c33

    .line 1041
    const/16 v35, 0x0

    goto/16 :goto_b

    .line 1043
    :cond_c33
    iget-object v0, v9, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->param:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;->param:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;

    .line 1045
    .local v22, pDLAbortParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1046
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownloadSetDrawingPercentage(Z)V

    .line 1049
    move-object/from16 v0, v22

    iget v0, v0, Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;->abortCode:I

    move/from16 v35, v0

    const/16 v36, 0xfb

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_cc2

    .line 1051
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetWifiOnlyFlag()Z

    move-result v6

    .line 1053
    .restart local v6       #bWifiOnly:Z
    sget-boolean v35, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v35, :cond_c65

    sget-boolean v35, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-nez v35, :cond_c65

    if-eqz v6, :cond_c89

    :cond_c65
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v35

    if-nez v35, :cond_c89

    .line 1056
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 1057
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpSetRetryCount(I)V

    .line 1058
    const/16 v35, 0x0

    const/16 v36, 0x8a

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 1060
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetUserCancel(Z)V

    .line 1061
    const/16 v35, 0x2

    sput v35, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    .line 1062
    const/16 v35, 0x0

    goto/16 :goto_b

    .line 1065
    :cond_c89
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDmAgentType(I)V

    .line 1066
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 1067
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOUpdateMechanism(I)V

    .line 1069
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    .line 1070
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 1071
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetServerInitiatedStatus(Z)V

    .line 1072
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpClose(I)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpCloseNetWork(I)V

    goto/16 :goto_19

    .line 1077
    .end local v6           #bWifiOnly:Z
    :cond_cc2
    move-object/from16 v0, v22

    iget v0, v0, Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;->abortCode:I

    move/from16 v35, v0

    const/16 v36, 0xf9

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_19

    .line 1079
    const-string v35, "XEVENT_ABORT_HTTP_ERROR, not implement..."

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1080
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentClose()I

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpClose(I)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpCloseNetWork(I)V

    .line 1085
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 1086
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpSetRetryCount(I)V

    .line 1087
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1089
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v19

    .line 1090
    .restart local v19       #nfumostatus:I
    const/16 v35, 0x28

    move/from16 v0, v19

    move/from16 v1, v35

    if-ne v0, v1, :cond_d17

    .line 1092
    const/16 v35, 0x32

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 1093
    const/16 v35, 0x0

    const/16 v36, 0xcc

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_19

    .line 1099
    :cond_d17
    const-string v35, "send generic alert for fail to download package"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1100
    const-string v35, "500"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOResultCode(Ljava/lang/String;)V

    .line 1101
    const/16 v35, 0xf1

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 1102
    const/16 v35, 0xb

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1103
    const/16 v35, 0x0

    const/16 v36, 0xf1

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_19

    .line 1110
    .end local v19           #nfumostatus:I
    .end local v22           #pDLAbortParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    :sswitch_d38
    const-string v35, "XEVENT_DL_CONNECTRETRY"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 1115
    :sswitch_d3f
    const/16 v33, 0x0

    .line 1116
    .restart local v33       #ret:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    move-object/from16 v35, v0

    sget-object v35, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpApnOpen(I)I

    move-result v33

    .line 1117
    const/16 v35, -0x2

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_19

    .line 1119
    const/16 v35, 0x71

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 1125
    .end local v33           #ret:I
    :sswitch_d62
    const-string v35, "XEVENT_DL_TCPIP_OPEN"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1126
    const/16 v35, 0xa

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1127
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v35

    const/16 v36, 0x1e

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_d7d

    .line 1128
    const/16 v35, 0x2

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1130
    :cond_d7d
    const/16 v33, 0x0

    .line 1133
    .restart local v33       #ret:I
    :try_start_d7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    move-object/from16 v35, v0

    sget-object v35, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpOpen(I)I
    :try_end_d8c
    .catch Ljava/net/SocketTimeoutException; {:try_start_d7f .. :try_end_d8c} :catch_d9a

    move-result v33

    .line 1141
    :goto_d8d
    if-nez v33, :cond_da8

    .line 1142
    const/16 v35, 0x74

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 1135
    :catch_d9a
    move-exception v7

    .line 1137
    .local v7, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v7}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1138
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 1139
    const/16 v33, -0x2

    goto :goto_d8d

    .line 1144
    .end local v7           #e:Ljava/net/SocketTimeoutException;
    :cond_da8
    const/16 v35, 0x71

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 1147
    .end local v33           #ret:I
    :sswitch_db3
    const-string v35, "XEVENT_DL_TCPIP_SEND"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 1150
    :sswitch_dba
    const-string v35, "XEVENT_DL_TCPIP_CLOSE"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpClose(I)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpCloseNetWork(I)V

    goto/16 :goto_19

    .line 1156
    :sswitch_dd7
    const-string v35, "XEVENT_DL_START"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1158
    invoke-static {}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetUserCancel()Z

    move-result v35

    if-eqz v35, :cond_df2

    .line 1160
    const-string v35, "Connect fail due to user cancel"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1161
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentTaskUserCancelDownload(I)V

    goto/16 :goto_19

    .line 1165
    :cond_df2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_DlAgentHandler:Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;

    move-object/from16 v35, v0

    const/16 v35, 0x74

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentHdlrStartOMADLAgent(I)I

    goto/16 :goto_19

    .line 1169
    :sswitch_e05
    const-string v35, "XEVENT_DL_CONTINUE!!"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1172
    invoke-static {}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetUserCancel()Z

    move-result v35

    if-eqz v35, :cond_e20

    .line 1174
    const-string v35, "Connect fail due to user cancel"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1175
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentTaskUserCancelDownload(I)V

    goto/16 :goto_19

    .line 1179
    :cond_e20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_DlAgentHandler:Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;

    move-object/from16 v35, v0

    const/16 v35, 0x78

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentHdlrStartOMADLAgent(I)I

    goto/16 :goto_19

    .line 1183
    :sswitch_e33
    const-string v35, "XEVENT_DL_SOCKET_SSL_TUNNEL_CONNECT"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 1187
    :sswitch_e3a
    const-string v35, "XEVENT_DL_FINISH"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpClose(I)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpCloseNetWork(I)V

    .line 1192
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpSetRetryCount(I)V

    .line 1193
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownloadSetDrawingPercentage(Z)V

    .line 1194
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 1196
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v18

    .line 1197
    .restart local v18       #nStatus:I
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "xdbGetFUMOStatus nStatus"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1200
    invoke-static {}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetUserCancel()Z

    move-result v35

    if-eqz v35, :cond_e98

    .line 1202
    const-string v35, "Connect fail due to user cancel"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1203
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentTaskUserCancelDownload(I)V

    goto/16 :goto_19

    .line 1207
    :cond_e98
    const/16 v35, 0xc8

    move/from16 v0, v18

    move/from16 v1, v35

    if-ne v0, v1, :cond_edc

    .line 1209
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetNotiEvent()I

    move-result v11

    .line 1210
    .restart local v11       #nEvent:I
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "nEvent : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1214
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v35

    const-string v36, "CscFeature_SyncML_EnableNotiDeltaBinarySizeBeforeDownload"

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_ef8

    const/16 v35, 0x4

    move/from16 v0, v35

    if-eq v11, v0, :cond_ed0

    if-nez v11, :cond_ef8

    .line 1217
    :cond_ed0
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    .line 1234
    :cond_ed5
    :goto_ed5
    const/16 v35, 0x0

    const/16 v36, 0xca

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 1240
    .end local v11           #nEvent:I
    :cond_edc
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetNotiReSyncMode(I)Ljava/lang/Boolean;

    .line 1242
    const/16 v35, 0x32

    move/from16 v0, v18

    move/from16 v1, v35

    if-eq v0, v1, :cond_ef1

    const/16 v35, 0x28

    move/from16 v0, v18

    move/from16 v1, v35

    if-ne v0, v1, :cond_19

    .line 1243
    :cond_ef1
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    goto/16 :goto_19

    .line 1219
    .restart local v11       #nEvent:I
    :cond_ef8
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUpdateReport()Z

    move-result v35

    if-eqz v35, :cond_ed5

    .line 1221
    const-string v35, "OPEN"

    const-string v36, "TMO"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_f0e

    .line 1223
    const/16 v35, 0x3

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto :goto_ed5

    .line 1228
    :cond_f0e
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v35

    if-eqz v35, :cond_f1a

    .line 1229
    const/16 v35, 0x3

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto :goto_ed5

    .line 1231
    :cond_f1a
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto :goto_ed5

    .line 1248
    .end local v11           #nEvent:I
    .end local v18           #nStatus:I
    :sswitch_f20
    const-string v35, "XEVENT_DL_FIRMWARE_UPDATE"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1250
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetPostponeCount(I)V

    .line 1251
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentHdlrSWUpdateProcess()I

    move-result v35

    if-nez v35, :cond_f37

    .line 1253
    const-string v35, "xfotaDlAgentHdlrSWUpdateProcess Progress"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 1257
    :cond_f37
    const-string v35, "xfotaDlAgentHdlrSWUpdateProcess fail"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 1268
    :sswitch_f3e
    const-string v35, "XEVENT_DL_USER_CANCEL_DOWNLOAD"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1270
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v35

    const/16 v36, 0x1e

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_f54

    .line 1272
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgResetUpdateDownloadProgressBar(Z)V

    .line 1275
    :cond_f54
    const-string v35, "401"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOResultCode(Ljava/lang/String;)V

    .line 1276
    const/16 v35, 0xe6

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 1278
    const/16 v35, 0xb

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 1284
    :sswitch_f69
    const-string v35, "XEVENT_UIC_REQUEST"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1285
    iget-object v0, v9, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->param:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;->param:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/wssyncmldm/eng/core/XDMUicOption;

    .line 1287
    .local v27, pSrcUICOption:Lcom/wssyncmldm/eng/core/XDMUicOption;
    const/16 v28, 0x0

    .line 1288
    .local v28, pUicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;
    const/16 v30, 0x0

    .line 1290
    .local v30, pUicResultKeep:Lcom/wssyncmldm/eng/core/XDMUicResult;
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicGetResultKeep()Lcom/wssyncmldm/eng/core/XDMUicResult;

    move-result-object v30

    .line 1291
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicCreateUicOption()Lcom/wssyncmldm/eng/core/XDMUicOption;

    move-result-object v28

    .line 1292
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicCopyUicOption(Ljava/lang/Object;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMUicOption;

    move-result-object v28

    .line 1293
    const/16 v35, 0x68

    const/16 v36, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v28

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendUIMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1295
    invoke-static/range {v30 .. v30}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicFreeResult(Lcom/wssyncmldm/eng/core/XDMUicResult;)Ljava/lang/Object;

    goto/16 :goto_19

    .line 1299
    .end local v27           #pSrcUICOption:Lcom/wssyncmldm/eng/core/XDMUicOption;
    .end local v28           #pUicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;
    .end local v30           #pUicResultKeep:Lcom/wssyncmldm/eng/core/XDMUicResult;
    :sswitch_fa0
    const-string v35, "XEVENT_UIC_RESPONSE"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1301
    iget-object v0, v9, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->param:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;->param:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/wssyncmldm/eng/core/XDMUicResult;

    .line 1302
    .local v29, pUicResult:Lcom/wssyncmldm/eng/core/XDMUicResult;
    const/16 v35, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-static {v0, v1}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicSetResultKeep(Lcom/wssyncmldm/eng/core/XDMUicResult;I)Lcom/wssyncmldm/eng/core/XDMUicResult;

    move-result-object v29

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_AgentHandler:Lcom/wssyncmldm/agent/XDMAgentHandler;

    move-object/from16 v35, v0

    const/16 v36, 0x81

    move-object/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentHdlrContinueSession(ILjava/lang/Object;)V

    goto/16 :goto_19

    .line 1307
    .end local v29           #pUicResult:Lcom/wssyncmldm/eng/core/XDMUicResult;
    :sswitch_fd4
    const-string v35, "XEVENT_NOTI_RECEIVED"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1308
    const/16 v25, 0x0

    .line 1309
    .local v25, pPushMsg:Lcom/wssyncmldm/noti/XNOTIMessage;
    new-instance v23, Lcom/wssyncmldm/noti/XNOTIHandler;

    invoke-direct/range {v23 .. v23}, Lcom/wssyncmldm/noti/XNOTIHandler;-><init>()V

    .line 1310
    .local v23, pHandler:Lcom/wssyncmldm/noti/XNOTIHandler;
    new-instance v31, Lcom/wssyncmldm/noti/XNOTI;

    invoke-direct/range {v31 .. v31}, Lcom/wssyncmldm/noti/XNOTI;-><init>()V

    .line 1311
    .local v31, ptMsg:Lcom/wssyncmldm/noti/XNOTI;
    iget-object v0, v9, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->param:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;->param:Ljava/lang/Object;

    check-cast v8, Lcom/wssyncmldm/noti/XNOTIMessage;

    .line 1313
    .local v8, msg1:Lcom/wssyncmldm/noti/XNOTIMessage;
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpVerifyDevID()Z

    move-result v35

    if-nez v35, :cond_ffa

    .line 1315
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushDataHandling()V

    goto/16 :goto_19

    .line 1319
    :cond_ffa
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/wssyncmldm/noti/XNOTIHandler;->xnotiPushHdleMessageCopy(Ljava/lang/Object;)Lcom/wssyncmldm/noti/XNOTIMessage;

    move-result-object v25

    .line 1320
    if-nez v25, :cond_100c

    .line 1322
    const-string v35, "pPushMsg is NULL"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1323
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushDataHandling()V

    goto/16 :goto_19

    .line 1327
    :cond_100c
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/noti/XNOTIHandler;->xnotiPushHdleMsgHandler(Lcom/wssyncmldm/noti/XNOTIMessage;)Lcom/wssyncmldm/noti/XNOTI;

    move-result-object v31

    .line 1328
    if-nez v31, :cond_101b

    .line 1330
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushDataHandling()V

    goto/16 :goto_19

    .line 1334
    :cond_101b
    move-object/from16 v0, v31

    iget v0, v0, Lcom/wssyncmldm/noti/XNOTI;->appId:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_129c

    .line 1416
    const-string v35, "Not Support Application"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 1337
    :pswitch_102b
    const/4 v3, 0x1

    .line 1339
    .local v3, bNotiExecute:Z
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    move-object/from16 v35, v0

    if-nez v35, :cond_103e

    .line 1341
    const-string v35, "triggerHeader is NULL."

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1342
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushDataHandling()V

    goto/16 :goto_19

    .line 1346
    :cond_103e
    new-instance v20, Lcom/wssyncmldm/db/file/XDBNotiInfo;

    invoke-direct/range {v20 .. v20}, Lcom/wssyncmldm/db/file/XDBNotiInfo;-><init>()V

    .line 1347
    .local v20, notiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v20

    iput v0, v1, Lcom/wssyncmldm/db/file/XDBNotiInfo;->appId:I

    .line 1348
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/wssyncmldm/noti/XNOTITriggerheader;->uiMode:I

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, v20

    iput v0, v1, Lcom/wssyncmldm/db/file/XDBNotiInfo;->uiMode:I

    .line 1349
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/wssyncmldm/noti/XNOTITriggerheader;->m_szServerID:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBNotiInfo;->m_szServerId:Ljava/lang/String;

    .line 1350
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/wssyncmldm/noti/XNOTITriggerheader;->m_szSessionID:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBNotiInfo;->m_szSessionId:Ljava/lang/String;

    .line 1354
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->m_szServerId:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbCheckActiveProfileIndexByServerID(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_1097

    .line 1356
    const-string v35, "Not Active Profile Index By ServerID"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1357
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushDataHandling()V

    goto/16 :goto_19

    .line 1362
    :cond_1097
    sget-boolean v35, Lcom/wssyncmldm/XDMService;->XDM_SYSTEM_ROOTING:Z

    if-nez v35, :cond_10da

    .line 1364
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmCheckSystemRooting()I

    .line 1365
    sget v35, Lcom/wssyncmldm/XDMService;->g_nSysScopeState:I

    const/16 v36, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_10b8

    .line 1367
    invoke-static/range {v20 .. v20}, Lcom/wssyncmldm/db/file/XDBNoti;->xdbNotiInsertInfo(Ljava/lang/Object;)V

    .line 1368
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentSetRootingNotScanStatus(Z)V

    .line 1369
    const-string v35, "Rooting Not Sacn - Noti was saved"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1370
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushDataHandling()V

    .line 1372
    :cond_10b8
    sget v35, Lcom/wssyncmldm/XDMService;->g_nSysScopeState:I

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_10da

    .line 1374
    invoke-static {}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentGetRootingNotScanStatus()Z

    move-result v35

    if-eqz v35, :cond_10d0

    .line 1376
    invoke-static {}, Lcom/wssyncmldm/db/sql/XNOTIDbSqlQuery;->xnotiDbSqlInfoDeleteAll()V

    .line 1377
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentSetRootingNotScanStatus(Z)V

    .line 1379
    :cond_10d0
    const-string v35, "System rooting. FOTA not exec"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1380
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushDataHandling()V

    goto/16 :goto_19

    .line 1385
    :cond_10da
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetPushMessageFlag()Z

    move-result v35

    if-nez v35, :cond_10fb

    .line 1387
    const/4 v12, 0x1

    .line 1388
    .local v12, nFotaServerIndex:I
    invoke-static {v12}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrap;->xdbFBGetFactoryBootstrapServerID(I)Ljava/lang/String;

    move-result-object v34

    .line 1389
    .local v34, szFumoServerId:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->m_szServerId:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_10fb

    .line 1391
    const-string v35, "PushMessageFlag False, Noti not Execute"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1392
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushDataHandling()V

    goto/16 :goto_19

    .line 1397
    .end local v12           #nFotaServerIndex:I
    .end local v34           #szFumoServerId:Ljava/lang/String;
    :cond_10fb
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbGetSessionSaveStatus(I)Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;

    move-result-object v26

    .line 1398
    .local v26, pSessionSaveInfo:Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;
    if-eqz v26, :cond_110b

    move-object/from16 v0, v26

    iget v0, v0, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;->nSessionSaveState:I

    move/from16 v35, v0

    if-nez v35, :cond_111d

    :cond_110b
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOInitiatedType()I

    move-result v35

    if-nez v35, :cond_111d

    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v35

    if-nez v35, :cond_111d

    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDownloadPostponeStatus()I

    move-result v35

    if-eqz v35, :cond_1129

    .line 1402
    :cond_111d
    invoke-static/range {v20 .. v20}, Lcom/wssyncmldm/db/file/XDBNoti;->xdbNotiInsertInfo(Ljava/lang/Object;)V

    .line 1403
    const-string v35, "Noti was saved"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1404
    const/4 v3, 0x0

    .line 1405
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushDataHandling()V

    .line 1408
    :cond_1129
    if-eqz v3, :cond_19

    .line 1410
    const/16 v35, 0x34

    const/16 v36, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v20

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 1422
    .end local v3           #bNotiExecute:Z
    .end local v8           #msg1:Lcom/wssyncmldm/noti/XNOTIMessage;
    .end local v20           #notiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;
    .end local v23           #pHandler:Lcom/wssyncmldm/noti/XNOTIHandler;
    .end local v25           #pPushMsg:Lcom/wssyncmldm/noti/XNOTIMessage;
    .end local v26           #pSessionSaveInfo:Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;
    .end local v31           #ptMsg:Lcom/wssyncmldm/noti/XNOTI;
    :sswitch_113a
    const-string v35, "XEVENT_NOTI_EXECUTE"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1423
    iget-object v0, v9, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->param:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;->param:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/wssyncmldm/db/file/XDBNotiInfo;

    .line 1425
    .restart local v20       #notiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;
    if-nez v20, :cond_1152

    .line 1427
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushDataHandling()V

    goto/16 :goto_19

    .line 1431
    :cond_1152
    move-object/from16 v0, v20

    iget v0, v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->appId:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_12a2

    .line 1445
    const-string v35, "Not Support Application"

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1449
    :goto_1160
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushDataHandling()V

    goto/16 :goto_19

    .line 1434
    :pswitch_1165
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetServerInitiatedStatus(Z)V

    .line 1435
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpClearSessionStatus(I)V

    .line 1436
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpSetRetryCount(I)V

    .line 1437
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->m_szServerId:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetActiveProfileIndexByServerID(Ljava/lang/String;)I

    .line 1438
    move-object/from16 v0, v20

    iget v0, v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->appId:I

    move/from16 v35, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->m_szSessionId:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-static/range {v35 .. v36}, Lcom/wssyncmldm/db/file/XDB;->xdbSetNotiSessionID(ILjava/lang/String;)V

    .line 1439
    move-object/from16 v0, v20

    iget v0, v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->uiMode:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/db/file/XDB;->xdbSetNotiEvent(I)V

    .line 1440
    move-object/from16 v0, v20

    iget v0, v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->uiMode:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpProcessNotiMessage(I)V

    goto :goto_1160

    .line 1463
    .end local v20           #notiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;
    :sswitch_119f
    const/4 v14, 0x0

    .line 1464
    .local v14, nID:I
    iget-object v0, v9, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->param:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;->param:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/Integer;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1465
    invoke-static {v14}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpProcessWapPushMsg(I)V

    goto/16 :goto_19

    .line 169
    nop

    :sswitch_data_11b6
    .sparse-switch
        0x0 -> :sswitch_1e
        0x1 -> :sswitch_44
        0x2 -> :sswitch_6c
        0xb -> :sswitch_156
        0xc -> :sswitch_78
        0xd -> :sswitch_72
        0x15 -> :sswitch_4a9
        0x16 -> :sswitch_4a2
        0x17 -> :sswitch_605
        0x18 -> :sswitch_624
        0x19 -> :sswitch_654
        0x1a -> :sswitch_79b
        0x1b -> :sswitch_519
        0x1c -> :sswitch_584
        0x20 -> :sswitch_807
        0x21 -> :sswitch_82b
        0x22 -> :sswitch_832
        0x23 -> :sswitch_839
        0x24 -> :sswitch_840
        0x25 -> :sswitch_847
        0x26 -> :sswitch_84e
        0x28 -> :sswitch_7e0
        0x33 -> :sswitch_fd4
        0x34 -> :sswitch_113a
        0x35 -> :sswitch_19
        0x36 -> :sswitch_19
        0x37 -> :sswitch_19
        0x38 -> :sswitch_19
        0x39 -> :sswitch_119f
        0x3d -> :sswitch_855
        0x3e -> :sswitch_85c
        0x63 -> :sswitch_863
        0x70 -> :sswitch_86a
        0x71 -> :sswitch_8c5
        0x72 -> :sswitch_c24
        0x73 -> :sswitch_d38
        0x74 -> :sswitch_dd7
        0x75 -> :sswitch_d62
        0x76 -> :sswitch_db3
        0x77 -> :sswitch_dba
        0x78 -> :sswitch_e05
        0x7a -> :sswitch_e33
        0x7b -> :sswitch_e3a
        0x7c -> :sswitch_a44
        0x7d -> :sswitch_b34
        0x7e -> :sswitch_d3f
        0x80 -> :sswitch_f69
        0x81 -> :sswitch_fa0
        0x110 -> :sswitch_f20
        0x111 -> :sswitch_19
        0x112 -> :sswitch_19
        0x113 -> :sswitch_f3e
    .end sparse-switch

    .line 680
    :pswitch_data_1288
    .packed-switch 0xf4
        :pswitch_6f1
        :pswitch_6f1
        :pswitch_6ef
        :pswitch_6ef
        :pswitch_6ef
        :pswitch_792
        :pswitch_6ef
        :pswitch_789
    .end packed-switch

    .line 1334
    :pswitch_data_129c
    .packed-switch 0x0
        :pswitch_102b
    .end packed-switch

    .line 1431
    :pswitch_data_12a2
    .packed-switch 0x0
        :pswitch_1165
    .end packed-switch
.end method

.method public xdmAgentTaskInit()V
    .registers 3

    .prologue
    .line 132
    sget-boolean v0, Lcom/wssyncmldm/agent/XDMTask;->g_IsSyncTaskInit:Z

    if-nez v0, :cond_41

    .line 134
    new-instance v0, Lcom/wssyncmldm/agent/XDMAgent;

    invoke-direct {v0}, Lcom/wssyncmldm/agent/XDMAgent;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    .line 135
    iget-object v0, p0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    new-instance v1, Lcom/wssyncmldm/agent/XDMAgentHandler;

    invoke-direct {v1}, Lcom/wssyncmldm/agent/XDMAgentHandler;-><init>()V

    iput-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_AgentHandler:Lcom/wssyncmldm/agent/XDMAgentHandler;

    .line 136
    new-instance v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    invoke-direct {v0}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    .line 137
    iget-object v0, p0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    new-instance v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;

    invoke-direct {v1}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;-><init>()V

    iput-object v1, v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_DlAgentHandler:Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;

    .line 140
    iget-object v0, p0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    iget-object v0, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_AgentHandler:Lcom/wssyncmldm/agent/XDMAgentHandler;

    iget-object v1, p0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    iget-object v1, v1, Lcom/wssyncmldm/agent/XDMAgent;->m_HttpDMAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    iput-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_HttpDMAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    .line 141
    iget-object v0, p0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    iget-object v0, v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_DlAgentHandler:Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;

    iget-object v0, p0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    sput-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    .line 144
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbInit()Z

    .line 145
    invoke-direct {p0}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentTaskDBInit()Z

    .line 147
    const/4 v0, 0x1

    sput-boolean v0, Lcom/wssyncmldm/agent/XDMTask;->g_IsSyncTaskInit:Z

    .line 149
    :cond_41
    return-void
.end method

.method public xdmAgentTaskSetPhonebookInit(Z)V
    .registers 2
    .parameter "initvalue"

    .prologue
    .line 103
    sput-boolean p1, Lcom/wssyncmldm/agent/XDMTask;->g_IsPhoneBookInitialized:Z

    .line 104
    return-void
.end method

.method public xdmAgentTaskUserCancelDownload(I)V
    .registers 7
    .parameter "appId"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1548
    invoke-static {v3}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1549
    invoke-static {v2}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownloadSetDrawingPercentage(Z)V

    .line 1551
    if-nez p1, :cond_35

    .line 1553
    iget-object v0, p0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    invoke-virtual {v0, v2}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpClose(I)V

    .line 1554
    iget-object v0, p0, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    invoke-virtual {v0, v2}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpCloseNetwork(I)V

    .line 1556
    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 1557
    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpSetRetryCount(I)V

    .line 1558
    invoke-static {v2}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetUserCancel(Z)V

    .line 1579
    :goto_34
    return-void

    .line 1564
    :cond_35
    iget-object v0, p0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    invoke-virtual {v0, v3}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpClose(I)V

    .line 1565
    iget-object v0, p0, Lcom/wssyncmldm/agent/XDMTask;->m_DlAgent:Lcom/wssyncmldm/agent/fota/XFOTADlAgent;

    invoke-virtual {v0, v3}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpCloseNetWork(I)V

    .line 1567
    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 1568
    invoke-static {v2}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlTpSetRetryCount(I)V

    .line 1573
    const-string v0, "send generic alert for fail to download package"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1574
    const-string v0, "401"

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOResultCode(Ljava/lang/String;)V

    .line 1575
    const/16 v0, 0xf0

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 1576
    const/16 v0, 0xb

    invoke-static {v0, v4, v4}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1578
    invoke-static {v2}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetUserCancel(Z)V

    goto :goto_34
.end method
