.class public Lcom/wssyncmldm/XDMService;
.super Landroid/app/Service;
.source "XDMService.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XEventInterface;
.implements Lcom/wssyncmldm/interfaces/XUIInterface;
.implements Lcom/wssyncmldm/interfaces/XFOTAInterface;
.implements Lcom/wssyncmldm/interfaces/XCommonInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wssyncmldm/XDMService$XDMPhoneStateListener2;,
        Lcom/wssyncmldm/XDMService$XDMPhoneStateListener;,
        Lcom/wssyncmldm/XDMService$XDMTopActivityCheckThread;,
        Lcom/wssyncmldm/XDMService$XDMLocalBinder;
    }
.end annotation


# static fields
.field private static final XDM_APN_EXTENSION_WAIT:I = 0x1f40

.field public static final XDM_CONTEXT_TELEPHONY_SERVICE2:Ljava/lang/String; = "phone2"

.field private static final XDM_DM_SETTING_ROOGINT_KEY:Ljava/lang/String; = "RootingValue"

.field private static final XDM_DM_SETTING_SHARED_PREF:Ljava/lang/String; = "PrefDmSetting"

.field public static final XDM_EVENT_CONTINUE_DM_CONNECTIVITY:I = 0x2

.field public static final XDM_EVENT_DATA_STATE_CHANGED:I = 0x1

.field private static final XDM_SS_ACCOUNT_TYPE:Ljava/lang/String; = "com.osp.app.signin"

.field public static XDM_SYSTEM_ROOTING:Z = false

.field private static final XDM_UPDATE_REPORT_KEY:Ljava/lang/String; = "isUpdateReport"

.field private static final XDM_UPDATE_REPORT_SHARED_PREF:Ljava/lang/String; = "PrefUpdateReport"

.field public static g_Task:Lcom/wssyncmldm/agent/XDMTask;

.field public static g_UITask:Lcom/wssyncmldm/agent/XDMUITask;

.field public static g_bIsInitializing:Z

.field public static g_hApnHandler:Landroid/os/Handler;

.field public static g_nResumeStatus:I

.field public static g_nSysScopeState:I

.field public static mDataState:I

.field public static mDataState2:I

.field private static m_Context:Landroid/content/Context;

.field private static m_PendingData:Ljava/lang/Object;

.field private static m_ToastAlreadyAdded:Landroid/widget/Toast;

.field private static m_TopActivityCheckThread:Lcom/wssyncmldm/XDMService$XDMTopActivityCheckThread;

.field private static m_WakeLock:Landroid/os/PowerManager$WakeLock;

.field private static m_bEnbaleCheckThread:Z

.field private static m_bIsBatteryCheck:Z

.field private static m_bIsRoaming:Z

.field private static m_hDmHandler:Landroid/os/Handler;

.field private static m_nCallState:I

.field private static m_nPendingUIEvent:I

.field private static m_szCurrentReleaseVer:Ljava/lang/String;

.field public static nServiceType:I

.field public static nServiceType2:I

.field public static nSimStatus:I

.field public static nSimStatus2:I

.field public static phoneListener:Lcom/wssyncmldm/XDMService$XDMPhoneStateListener;

.field public static phoneListener2:Lcom/wssyncmldm/XDMService$XDMPhoneStateListener2;

.field public static serviceState:Landroid/telephony/ServiceState;

.field public static serviceState2:Landroid/telephony/ServiceState;

.field public static telephonyManager:Landroid/telephony/TelephonyManager;

.field public static telephonyManager2:Landroid/telephony/TelephonyManager;


# instance fields
.field private m_AlarmReceiver:Landroid/content/BroadcastReceiver;

.field private m_BatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private final m_Binder:Landroid/os/IBinder;

.field private m_MediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private m_TimeTickReceiver:Landroid/content/BroadcastReceiver;

.field private m_WiFiOnlyReceiver:Landroid/content/BroadcastReceiver;

.field private m_WifiReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    sput-object v1, Lcom/wssyncmldm/XDMService;->g_Task:Lcom/wssyncmldm/agent/XDMTask;

    .line 83
    sput-object v1, Lcom/wssyncmldm/XDMService;->g_UITask:Lcom/wssyncmldm/agent/XDMUITask;

    .line 84
    sput-object v1, Lcom/wssyncmldm/XDMService;->g_hApnHandler:Landroid/os/Handler;

    .line 88
    sput-object v1, Lcom/wssyncmldm/XDMService;->serviceState:Landroid/telephony/ServiceState;

    .line 90
    sput v2, Lcom/wssyncmldm/XDMService;->nSimStatus:I

    .line 91
    sput v0, Lcom/wssyncmldm/XDMService;->mDataState:I

    .line 96
    sput-object v1, Lcom/wssyncmldm/XDMService;->serviceState2:Landroid/telephony/ServiceState;

    .line 98
    sput v2, Lcom/wssyncmldm/XDMService;->nSimStatus2:I

    .line 99
    sput v0, Lcom/wssyncmldm/XDMService;->mDataState2:I

    .line 101
    sput v0, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    .line 102
    sput-boolean v0, Lcom/wssyncmldm/XDMService;->g_bIsInitializing:Z

    .line 105
    sput-boolean v0, Lcom/wssyncmldm/XDMService;->XDM_SYSTEM_ROOTING:Z

    .line 106
    sput v2, Lcom/wssyncmldm/XDMService;->g_nSysScopeState:I

    .line 117
    sput v0, Lcom/wssyncmldm/XDMService;->m_nCallState:I

    .line 119
    sput-object v1, Lcom/wssyncmldm/XDMService;->m_hDmHandler:Landroid/os/Handler;

    .line 122
    sput v0, Lcom/wssyncmldm/XDMService;->m_nPendingUIEvent:I

    .line 123
    sput-boolean v0, Lcom/wssyncmldm/XDMService;->m_bIsRoaming:Z

    .line 124
    sput-boolean v0, Lcom/wssyncmldm/XDMService;->m_bEnbaleCheckThread:Z

    .line 126
    const/4 v0, 0x1

    sput-boolean v0, Lcom/wssyncmldm/XDMService;->m_bIsBatteryCheck:Z

    .line 128
    sput-object v1, Lcom/wssyncmldm/XDMService;->m_ToastAlreadyAdded:Landroid/widget/Toast;

    .line 129
    sput-object v1, Lcom/wssyncmldm/XDMService;->m_TopActivityCheckThread:Lcom/wssyncmldm/XDMService$XDMTopActivityCheckThread;

    .line 130
    sput-object v1, Lcom/wssyncmldm/XDMService;->m_PendingData:Ljava/lang/Object;

    .line 131
    const-string v0, ""

    sput-object v0, Lcom/wssyncmldm/XDMService;->m_szCurrentReleaseVer:Ljava/lang/String;

    .line 149
    sput-object v1, Lcom/wssyncmldm/XDMService;->m_WakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 116
    new-instance v0, Lcom/wssyncmldm/XDMService$XDMLocalBinder;

    invoke-direct {v0, p0}, Lcom/wssyncmldm/XDMService$XDMLocalBinder;-><init>(Lcom/wssyncmldm/XDMService;)V

    iput-object v0, p0, Lcom/wssyncmldm/XDMService;->m_Binder:Landroid/os/IBinder;

    .line 1199
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lcom/wssyncmldm/XDMService;->m_PendingData:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 80
    sput-boolean p0, Lcom/wssyncmldm/XDMService;->m_bEnbaleCheckThread:Z

    return p0
.end method

.method static synthetic access$200(Lcom/wssyncmldm/XDMService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/wssyncmldm/XDMService;->xdmCallUiDialogActivity(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/wssyncmldm/XDMService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/wssyncmldm/XDMService;->xdmCallUiFotaBlockDialogActivity(I)V

    return-void
.end method

.method static synthetic access$400()Landroid/content/Context;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lcom/wssyncmldm/XDMService;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lcom/wssyncmldm/XDMService;->m_hDmHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wssyncmldm/XDMService;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/wssyncmldm/XDMService;->xdmBroadcastBatteryInfo(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700()Z
    .registers 1

    .prologue
    .line 80
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmResumeOperation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Z
    .registers 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/wssyncmldm/XDMService;->m_bIsRoaming:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 80
    sput-boolean p0, Lcom/wssyncmldm/XDMService;->m_bIsRoaming:Z

    return p0
.end method

.method public static xdmAppReBoot()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1465
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1466
    const-string v1, "power"

    invoke-static {v1}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1467
    .local v0, mPowerManager:Landroid/os/PowerManager;
    if-nez v0, :cond_15

    .line 1469
    const-string v1, "PowerManager is null!!"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1486
    :goto_14
    return-void

    .line 1475
    :cond_15
    sget-boolean v1, Lcom/wssyncmldm/ui/XUIMainActivity;->g_bIsLocalTest:Z

    if-nez v1, :cond_1e

    .line 1477
    const/16 v1, 0x3c

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 1479
    :cond_1e
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 1480
    const-string v1, "wssStartService: need to implement FOTA Reboot"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1483
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmWakeLockRelease()V

    .line 1484
    const-string v1, "recovery"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_14
.end method

.method private xdmBroadcastBatteryInfo(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 1587
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1589
    .local v1, szAction:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------------ Battery : xdmAgentGetSyncMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetSyncMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1590
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetSyncMode()I

    move-result v2

    if-nez v2, :cond_63

    .line 1592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------------ Battery : getCheckBattery : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetCheckBattery()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1593
    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1594
    .local v0, battLevel:I
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetCheckBattery()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_63

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1596
    sget-boolean v2, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    if-eqz v2, :cond_63

    .line 1597
    invoke-virtual {p0, v0}, Lcom/wssyncmldm/XDMService;->xdmEvtHdlrChangedBatteryLevel(I)V

    .line 1600
    .end local v0           #battLevel:I
    :cond_63
    return-void
.end method

.method private xdmCallUiDialogActivity(I)V
    .registers 7
    .parameter "id"

    .prologue
    .line 1409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1410
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/wssyncmldm/XDMService;->m_Context:Landroid/content/Context;

    const-class v4, Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1411
    .local v0, DialIntent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1412
    invoke-virtual {p0, v0}, Lcom/wssyncmldm/XDMService;->startActivity(Landroid/content/Intent;)V

    .line 1413
    return-void
.end method

.method private xdmCallUiFotaBlockDialogActivity(I)V
    .registers 7
    .parameter "id"

    .prologue
    .line 1417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1418
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/wssyncmldm/XDMService;->m_Context:Landroid/content/Context;

    const-class v4, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1419
    .local v0, DialIntent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1420
    invoke-virtual {p0, v0}, Lcom/wssyncmldm/XDMService;->startActivity(Landroid/content/Intent;)V

    .line 1421
    return-void
.end method

.method public static xdmCheckIdleScreen()Z
    .registers 6

    .prologue
    .line 1030
    const/4 v0, 0x0

    .line 1034
    .local v0, bRet:Z
    :try_start_1
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetTopPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1035
    .local v3, szTopPackage:Ljava/lang/String;
    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_35

    const-string v4, "settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1d

    const-string v4, "fotaclient"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_55

    move-result v4

    if-eqz v4, :cond_35

    .line 1037
    :cond_1d
    const/4 v0, 0x1

    .line 1061
    .end local v3           #szTopPackage:Ljava/lang/String;
    :goto_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Idle Screen : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1063
    return v0

    .line 1039
    .restart local v3       #szTopPackage:Ljava/lang/String;
    :cond_35
    :try_start_35
    sget-object v4, Lcom/wssyncmldm/XDMService;->m_Context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 1041
    const/4 v0, 0x1

    goto :goto_1e

    .line 1045
    :cond_47
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetHomeScreenList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1046
    .local v2, homeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_4e} :catch_55

    move-result v4

    if-eqz v4, :cond_53

    .line 1048
    const/4 v0, 0x1

    goto :goto_1e

    .line 1052
    :cond_53
    const/4 v0, 0x0

    goto :goto_1e

    .line 1056
    .end local v2           #homeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #szTopPackage:Ljava/lang/String;
    :catch_55
    move-exception v1

    .line 1058
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public static xdmCheckSystemRooting()I
    .registers 5

    .prologue
    const/4 v4, -0x1

    .line 1775
    new-instance v2, Lcom/sec/android/app/sysscope/service/SysScope;

    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sysscope/service/SysScope;-><init>(Landroid/content/Context;)V

    .line 1776
    .local v2, sysScope:Lcom/sec/android/app/sysscope/service/SysScope;
    const/4 v1, -0x1

    .line 1778
    .local v1, isSysScopeStatus:I
    invoke-virtual {v2}, Lcom/sec/android/app/sysscope/service/SysScope;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1780
    sput v4, Lcom/wssyncmldm/XDMService;->g_nSysScopeState:I

    .line 1781
    const-string v3, "Device is not connecting... try later"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1811
    :goto_18
    sget v3, Lcom/wssyncmldm/XDMService;->g_nSysScopeState:I

    return v3

    .line 1787
    :cond_1b
    :try_start_1b
    invoke-virtual {v2}, Lcom/sec/android/app/sysscope/service/SysScope;->getLastScanResult()Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->getResult()I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_22} :catch_2f

    move-result v1

    .line 1794
    :goto_23
    const/4 v3, 0x2

    if-ne v1, v3, :cond_38

    .line 1796
    const/4 v3, 0x1

    sput v3, Lcom/wssyncmldm/XDMService;->g_nSysScopeState:I

    .line 1797
    const-string v3, "Device is modified. can not use wssyncmldm"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_18

    .line 1789
    :catch_2f
    move-exception v0

    .line 1791
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_23

    .line 1799
    .end local v0           #e:Ljava/lang/Exception;
    :cond_38
    if-ne v1, v4, :cond_42

    .line 1801
    sput v4, Lcom/wssyncmldm/XDMService;->g_nSysScopeState:I

    .line 1802
    const-string v3, "Device is scanning... try later"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_18

    .line 1806
    :cond_42
    const/4 v3, 0x0

    sput v3, Lcom/wssyncmldm/XDMService;->g_nSysScopeState:I

    .line 1807
    const-string v3, "Device is ok"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_18
.end method

.method public static xdmGetAccountRegistration(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 1616
    const/4 v1, 0x0

    .line 1617
    .local v1, bRegistration:Z
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 1619
    .local v0, account:[Landroid/accounts/Account;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    array-length v3, v0

    if-ge v2, v3, :cond_1f

    .line 1621
    const-string v3, "com.osp.app.signin"

    aget-object v4, v0, v2

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1623
    const-string v3, "Samsung Account Exist !!!"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1624
    const/4 v1, 0x1

    .line 1628
    :cond_1f
    return v1

    .line 1619
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method public static xdmGetCallState()I
    .registers 1

    .prologue
    .line 851
    sget v0, Lcom/wssyncmldm/XDMService;->m_nCallState:I

    return v0
.end method

.method public static xdmGetCheckBattery()Z
    .registers 1

    .prologue
    .line 1606
    sget-boolean v0, Lcom/wssyncmldm/XDMService;->m_bIsBatteryCheck:Z

    return v0
.end method

.method public static xdmGetDataState()I
    .registers 1

    .prologue
    .line 825
    sget v0, Lcom/wssyncmldm/XDMService;->mDataState:I

    return v0
.end method

.method public static xdmGetDataState2()I
    .registers 1

    .prologue
    .line 836
    sget v0, Lcom/wssyncmldm/XDMService;->mDataState2:I

    return v0
.end method

.method public static xdmGetHomeScreenList()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1004
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1008
    .local v3, homeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_5
    sget-object v7, Lcom/wssyncmldm/XDMService;->m_Context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1009
    .local v6, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1010
    .local v2, homeIntent:Landroid/content/Intent;
    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1012
    const/4 v7, 0x1

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1014
    .local v1, homeApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_3b

    .line 1016
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1017
    .local v5, info:Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_30} :catch_33

    .line 1014
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 1020
    .end local v1           #homeApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #homeIntent:Landroid/content/Intent;
    .end local v4           #i:I
    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :catch_33
    move-exception v0

    .line 1022
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1025
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3b
    return-object v3
.end method

.method public static xdmGetPendingUIEvent()I
    .registers 3

    .prologue
    .line 1441
    sget v0, Lcom/wssyncmldm/XDMService;->m_nPendingUIEvent:I

    .line 1442
    .local v0, nEvent:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1444
    const/4 v1, 0x0

    sput v1, Lcom/wssyncmldm/XDMService;->m_nPendingUIEvent:I

    .line 1445
    return v0
.end method

.method public static xdmGetProxyData()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 1491
    new-instance v2, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    sget-object v3, Lcom/wssyncmldm/XDMService;->m_Context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;-><init>(Landroid/content/Context;)V

    .line 1492
    .local v2, netInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;
    iget-object v3, v2, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    if-nez v3, :cond_12

    .line 1493
    new-instance v3, Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    invoke-direct {v3}, Lcom/wssyncmldm/agent/XDMAppConnectSetting;-><init>()V

    iput-object v3, v2, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    .line 1494
    :cond_12
    iget-object v3, v2, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    if-nez v3, :cond_1d

    .line 1495
    new-instance v3, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    invoke-direct {v3}, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;-><init>()V

    iput-object v3, v2, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    .line 1497
    :cond_1d
    sget-boolean v3, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v3, :cond_35

    sget-boolean v3, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-nez v3, :cond_35

    .line 1499
    invoke-static {v2}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpNetGetProfileData(Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;)V

    .line 1500
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetConRef()Lcom/wssyncmldm/db/file/XDBInfoConRef;

    move-result-object v0

    .line 1504
    .local v0, conref:Lcom/wssyncmldm/db/file/XDBInfoConRef;
    :try_start_2c
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->xdmAgentAppGetExistApn()Z

    move-result v3

    if-nez v3, :cond_36

    .line 1506
    invoke-static {}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbResetNetworkTable()V

    .line 1529
    .end local v0           #conref:Lcom/wssyncmldm/db/file/XDBInfoConRef;
    :cond_35
    :goto_35
    return-object v2

    .line 1509
    .restart local v0       #conref:Lcom/wssyncmldm/db/file/XDBInfoConRef;
    :cond_36
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->xdmAgentAppGetExistApn()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1511
    if-eqz v0, :cond_35

    .line 1513
    iget-object v3, v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    iget-object v4, v2, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    iget-object v4, v4, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szApn:Ljava/lang/String;

    iput-object v4, v3, Lcom/wssyncmldm/db/file/XDBConRefNAP;->NetworkProfileName:Ljava/lang/String;

    .line 1514
    iget-object v3, v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    iget-object v4, v2, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->szAccountName:Ljava/lang/String;

    iput-object v4, v3, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Addr:Ljava/lang/String;

    .line 1515
    iget-object v3, v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iget-object v4, v2, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    iget-object v4, v4, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szPrimaryProxyAddr:Ljava/lang/String;

    iput-object v4, v3, Lcom/wssyncmldm/db/file/XDBConRefPX;->Addr:Ljava/lang/String;

    .line 1516
    iget-object v3, v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iget-object v4, v2, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    iget v4, v4, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->nPrimary_proxy_port:I

    iput v4, v3, Lcom/wssyncmldm/db/file/XDBConRefPX;->nPortNbr:I

    .line 1517
    iget-object v3, v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    iget-object v3, v3, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Auth:Lcom/wssyncmldm/db/file/XDBConRefAuth;

    iget-object v4, v2, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    iget-object v4, v4, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;->szId:Ljava/lang/String;

    iput-object v4, v3, Lcom/wssyncmldm/db/file/XDBConRefAuth;->PAP_ID:Ljava/lang/String;

    .line 1518
    iget-object v3, v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    iget-object v3, v3, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Auth:Lcom/wssyncmldm/db/file/XDBConRefAuth;

    iget-object v4, v2, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    iget-object v4, v4, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;->szPasswd:Ljava/lang/String;

    iput-object v4, v3, Lcom/wssyncmldm/db/file/XDBConRefAuth;->PAP_Secret:Ljava/lang/String;

    .line 1520
    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetConRef(Lcom/wssyncmldm/db/file/XDBInfoConRef;)V
    :try_end_73
    .catch Ljava/lang/NullPointerException; {:try_start_2c .. :try_end_73} :catch_74

    goto :goto_35

    .line 1524
    :catch_74
    move-exception v1

    .line 1526
    .local v1, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_35
.end method

.method public static xdmGetReleaseVer()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1662
    sget-object v0, Lcom/wssyncmldm/XDMService;->m_szCurrentReleaseVer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1664
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmSetReleaseVer()V

    .line 1666
    :cond_b
    sget-object v0, Lcom/wssyncmldm/XDMService;->m_szCurrentReleaseVer:Ljava/lang/String;

    return-object v0
.end method

.method public static xdmGetRoamingState()Z
    .registers 1

    .prologue
    .line 820
    sget-boolean v0, Lcom/wssyncmldm/XDMService;->m_bIsRoaming:Z

    return v0
.end method

.method public static xdmGetRootingPrefValue()I
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 1765
    sget-object v2, Lcom/wssyncmldm/XDMService;->m_Context:Landroid/content/Context;

    const-string v3, "PrefDmSetting"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1766
    .local v0, m_RootingPref:Landroid/content/SharedPreferences;
    const-string v2, "RootingValue"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1768
    .local v1, nRet:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1770
    return v1
.end method

.method public static xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .parameter "szServiceName"

    .prologue
    .line 1701
    const/4 v2, 0x0

    .line 1704
    .local v2, manager:Ljava/lang/Object;
    :try_start_1
    sget-object v3, Lcom/wssyncmldm/XDMService;->m_Context:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_3b

    move-result-object v2

    .line 1705
    if-nez v2, :cond_31

    .line 1707
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    const/16 v3, 0xa

    if-ge v1, v3, :cond_31

    .line 1711
    const-wide/16 v3, 0x3e8

    :try_start_10
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_32
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_3b

    .line 1718
    :goto_13
    :try_start_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null, retry..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1719
    sget-object v3, Lcom/wssyncmldm/XDMService;->m_Context:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1720
    if-eqz v2, :cond_44

    .line 1730
    .end local v1           #i:I
    .end local v2           #manager:Ljava/lang/Object;
    :cond_31
    :goto_31
    return-object v2

    .line 1713
    .restart local v1       #i:I
    .restart local v2       #manager:Ljava/lang/Object;
    :catch_32
    move-exception v0

    .line 1715
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3a} :catch_3b

    goto :goto_13

    .line 1725
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #i:I
    .end local v2           #manager:Ljava/lang/Object;
    :catch_3b
    move-exception v0

    .line 1727
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_31

    .line 1707
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    .restart local v2       #manager:Ljava/lang/Object;
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public static xdmGetServiceType()I
    .registers 1

    .prologue
    .line 754
    sget v0, Lcom/wssyncmldm/XDMService;->nServiceType:I

    return v0
.end method

.method public static xdmGetServiceType2()I
    .registers 1

    .prologue
    .line 774
    sget v0, Lcom/wssyncmldm/XDMService;->nServiceType2:I

    return v0
.end method

.method public static xdmGetSimState()I
    .registers 1

    .prologue
    .line 798
    sget v0, Lcom/wssyncmldm/XDMService;->nSimStatus:I

    return v0
.end method

.method public static xdmGetSimState2()I
    .registers 1

    .prologue
    .line 809
    sget v0, Lcom/wssyncmldm/XDMService;->nSimStatus2:I

    return v0
.end method

.method public static xdmGetTopActivityName()Ljava/lang/String;
    .registers 7

    .prologue
    .line 950
    const-string v4, ""

    .line 954
    .local v4, szActivityName:Ljava/lang/String;
    :try_start_2
    const-string v5, "activity"

    invoke-static {v5}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 955
    .local v0, activityManager:Landroid/app/ActivityManager;
    if-nez v0, :cond_14

    .line 957
    const-string v5, "activityManager is null!!"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 958
    const-string v4, "NoActivity"

    .line 972
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    :goto_13
    return-object v4

    .line 962
    .restart local v0       #activityManager:Landroid/app/ActivityManager;
    :cond_14
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 963
    .local v3, runningTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 964
    .local v1, componentName:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_3d

    move-result-object v4

    .line 971
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v1           #componentName:Landroid/content/ComponentName;
    .end local v3           #runningTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_26
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TopActivity : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_13

    .line 966
    :catch_3d
    move-exception v2

    .line 968
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 969
    const-string v4, "NoActivity"

    goto :goto_26
.end method

.method public static xdmGetTopPackageName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 977
    const-string v4, ""

    .line 981
    .local v4, szPackageName:Ljava/lang/String;
    :try_start_2
    const-string v5, "activity"

    invoke-static {v5}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 982
    .local v0, activityManager:Landroid/app/ActivityManager;
    if-nez v0, :cond_14

    .line 984
    const-string v5, "activityManager is null!!"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 985
    const-string v4, "NoPackage"

    .line 999
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    :goto_13
    return-object v4

    .line 989
    .restart local v0       #activityManager:Landroid/app/ActivityManager;
    :cond_14
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 990
    .local v3, runningTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 991
    .local v1, componentName:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_27

    move-result-object v4

    goto :goto_13

    .line 993
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v1           #componentName:Landroid/content/ComponentName;
    .end local v3           #runningTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_27
    move-exception v2

    .line 995
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 996
    const-string v4, "NoPackage"

    goto :goto_13
.end method

.method public static xdmGetUpdateReport()I
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 1745
    sget-object v2, Lcom/wssyncmldm/XDMService;->m_Context:Landroid/content/Context;

    const-string v3, "PrefUpdateReport"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1746
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "isUpdateReport"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1748
    .local v0, bUpdateReport:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wssGetUpdateReport : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1750
    return v0
.end method

.method public static xdmIscheckPostponeVersion()Z
    .registers 4

    .prologue
    .line 1671
    const/4 v0, 0x0

    .line 1672
    .local v0, bRet:Z
    const/4 v1, 0x0

    .line 1674
    .local v1, pPostUpdate:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetPostPoneTime()Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    move-result-object v1

    .line 1675
    if-eqz v1, :cond_1a

    .line 1677
    iget-object v2, v1, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->CurrentVersion:Ljava/lang/String;

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetFirmwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1679
    const-string v2, "pPostUpdate.CurrentVersion == GetFirmwareVersion"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1680
    const/4 v0, 0x1

    .line 1684
    .end local v0           #bRet:Z
    :cond_1a
    return v0
.end method

.method public static xdmProtoIsWIFIConnected()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1557
    const-string v4, "connectivity"

    invoke-static {v4}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1559
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_12

    .line 1561
    const-string v3, "connectivityManager is null!!"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1581
    :goto_11
    return v2

    .line 1565
    :cond_12
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1567
    .local v1, wifiInfo:Landroid/net/NetworkInfo;
    if-nez v1, :cond_1e

    .line 1569
    const-string v3, "wifiInfo is null!!"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_11

    .line 1573
    :cond_1e
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1575
    const-string v2, "WiFi Connected"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    move v2, v3

    .line 1576
    goto :goto_11

    .line 1580
    :cond_2b
    const-string v3, "WiFi DisConnected"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_11
.end method

.method private static xdmResumeOperation()Z
    .registers 11

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x1

    const/16 v9, 0x70

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 861
    const-string v6, ""

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 863
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetWifiOnlyFlag()Z

    move-result v0

    .line 864
    .local v0, bWifiOnly:Z
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v1

    .line 865
    .local v1, bWificonnected:Z
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v2

    .line 866
    .local v2, nFumoStatus:I
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUiMode()I

    move-result v3

    .line 868
    .local v3, nUImode:I
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMInitAdapter;->xdmInitAdpGetNetStatus()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_28

    .line 870
    const-string v5, "already connect to network, return"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 945
    :goto_27
    return v4

    .line 873
    :cond_28
    sget-boolean v6, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v6, :cond_30

    sget-boolean v6, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-eqz v6, :cond_38

    :cond_30
    if-nez v1, :cond_38

    .line 875
    const-string v5, "WIFI_ONLY_MODEL or WIFI_ONLY_BLOCK_3G_MODEL. but Wi-Fi Disconnected, return"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_27

    .line 878
    :cond_38
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpCheckRoamingDataConnect()Z

    move-result v6

    if-nez v6, :cond_44

    .line 880
    const-string v5, "Roaming, WIFI Disconnected, return"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_27

    .line 884
    :cond_44
    sget v6, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    if-ne v6, v10, :cond_84

    .line 886
    if-eqz v0, :cond_52

    if-nez v1, :cond_52

    .line 888
    const-string v5, "WIFI_FEATURE or bWifiOnly, WIFI Disconnected, return"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_27

    .line 892
    :cond_52
    sparse-switch v2, :sswitch_data_96

    .line 943
    :cond_55
    :goto_55
    sput v4, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    move v4, v5

    .line 945
    goto :goto_27

    .line 899
    :sswitch_59
    sget-boolean v6, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v6, :cond_61

    sget-boolean v6, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-eqz v6, :cond_6e

    :cond_61
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 901
    invoke-static {}, Lcom/wssyncmldm/ui/XUIDownloadProgress;->xuiDownloadTimeInit()V

    .line 902
    invoke-static {v9, v8, v8}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_55

    .line 904
    :cond_6e
    if-eq v3, v10, :cond_73

    const/4 v6, 0x3

    if-ne v3, v6, :cond_7a

    .line 906
    :cond_73
    invoke-static {}, Lcom/wssyncmldm/ui/XUIDownloadProgress;->xuiDownloadTimeInit()V

    .line 907
    invoke-static {v9, v8, v8}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_55

    .line 911
    :cond_7a
    const/16 v6, 0x89

    invoke-static {v8, v6}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_55

    .line 917
    :sswitch_80
    invoke-static {v9, v8, v8}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_55

    .line 924
    :cond_84
    sget v6, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    if-ne v6, v5, :cond_55

    .line 926
    sparse-switch v2, :sswitch_data_b0

    .line 939
    invoke-static {v4}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpResumeNotiAction(I)V

    goto :goto_55

    .line 935
    :sswitch_8f
    const/16 v6, 0xb

    invoke-static {v6, v8, v8}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_55

    .line 892
    nop

    :sswitch_data_96
    .sparse-switch
        0xa -> :sswitch_59
        0x14 -> :sswitch_80
        0x1e -> :sswitch_59
        0x28 -> :sswitch_59
        0xc8 -> :sswitch_59
        0xe6 -> :sswitch_80
    .end sparse-switch

    .line 926
    :sswitch_data_b0
    .sparse-switch
        0x41 -> :sswitch_8f
        0x46 -> :sswitch_8f
        0x50 -> :sswitch_8f
        0x5a -> :sswitch_8f
        0x64 -> :sswitch_8f
        0xf0 -> :sswitch_8f
        0xf1 -> :sswitch_8f
    .end sparse-switch
.end method

.method public static xdmSendFcVersionUpdate()V
    .registers 2

    .prologue
    .line 1690
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1691
    sget-object v1, Lcom/wssyncmldm/XDMService;->m_Context:Landroid/content/Context;

    if-nez v1, :cond_a

    .line 1697
    .local v0, intent:Landroid/content/Intent;
    :goto_9
    return-void

    .line 1694
    .end local v0           #intent:Landroid/content/Intent;
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "sec.fota.widget.intent.VERSION_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1695
    .restart local v0       #intent:Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1696
    sget-object v1, Lcom/wssyncmldm/XDMService;->m_Context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_9
.end method

.method public static xdmSendMessageDmHandler(I)V
    .registers 2
    .parameter "nEvent"

    .prologue
    .line 1860
    sget-object v0, Lcom/wssyncmldm/XDMService;->m_hDmHandler:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 1861
    sget-object v0, Lcom/wssyncmldm/XDMService;->m_hDmHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1864
    :goto_9
    return-void

    .line 1863
    :cond_a
    const-string v0, "m_hDmHandler is null!!"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static xdmSetCallState(I)V
    .registers 1
    .parameter "state"

    .prologue
    .line 856
    sput p0, Lcom/wssyncmldm/XDMService;->m_nCallState:I

    .line 857
    return-void
.end method

.method public static xdmSetCheckBattery(Z)V
    .registers 1
    .parameter "isCheck"

    .prologue
    .line 1611
    sput-boolean p0, Lcom/wssyncmldm/XDMService;->m_bIsBatteryCheck:Z

    .line 1612
    return-void
.end method

.method public static xdmSetDataState(I)V
    .registers 1
    .parameter "state"

    .prologue
    .line 830
    sput p0, Lcom/wssyncmldm/XDMService;->mDataState:I

    .line 831
    return-void
.end method

.method public static xdmSetDataState2(I)V
    .registers 1
    .parameter "state"

    .prologue
    .line 844
    sput p0, Lcom/wssyncmldm/XDMService;->mDataState2:I

    .line 845
    return-void
.end method

.method public static xdmSetPendingUIEvent(ILjava/lang/Object;)V
    .registers 4
    .parameter "pendingUIEvent"
    .parameter "data"

    .prologue
    .line 1450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pendingUIEvent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1452
    sget-boolean v0, Lcom/wssyncmldm/XDMService;->m_bEnbaleCheckThread:Z

    if-nez v0, :cond_29

    .line 1454
    const/4 v0, 0x1

    sput-boolean v0, Lcom/wssyncmldm/XDMService;->m_bEnbaleCheckThread:Z

    .line 1455
    new-instance v0, Lcom/wssyncmldm/XDMService$XDMTopActivityCheckThread;

    invoke-direct {v0}, Lcom/wssyncmldm/XDMService$XDMTopActivityCheckThread;-><init>()V

    sput-object v0, Lcom/wssyncmldm/XDMService;->m_TopActivityCheckThread:Lcom/wssyncmldm/XDMService$XDMTopActivityCheckThread;

    .line 1456
    sget-object v0, Lcom/wssyncmldm/XDMService;->m_TopActivityCheckThread:Lcom/wssyncmldm/XDMService$XDMTopActivityCheckThread;

    invoke-virtual {v0}, Lcom/wssyncmldm/XDMService$XDMTopActivityCheckThread;->start()V

    .line 1459
    :cond_29
    sput p0, Lcom/wssyncmldm/XDMService;->m_nPendingUIEvent:I

    .line 1460
    sput-object p1, Lcom/wssyncmldm/XDMService;->m_PendingData:Ljava/lang/Object;

    .line 1461
    return-void
.end method

.method public static xdmSetReleaseVer()V
    .registers 1

    .prologue
    .line 1643
    sget-object v0, Lcom/wssyncmldm/XDMService;->m_Context:Landroid/content/Context;

    if-eqz v0, :cond_9

    .line 1644
    sget-object v0, Lcom/wssyncmldm/XDMService;->m_Context:Landroid/content/Context;

    invoke-static {v0}, Lcom/wssyncmldm/XDMService;->xdmSetReleaseVer(Landroid/content/Context;)V

    .line 1645
    :cond_9
    return-void
.end method

.method public static xdmSetReleaseVer(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 1651
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1652
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Lcom/wssyncmldm/XDMService;->m_szCurrentReleaseVer:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 1658
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :goto_11
    return-void

    .line 1654
    :catch_12
    move-exception v0

    .line 1656
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public static xdmSetRootingPrefValue(I)V
    .registers 6
    .parameter "nValue"

    .prologue
    .line 1755
    sget-object v2, Lcom/wssyncmldm/XDMService;->m_Context:Landroid/content/Context;

    const-string v3, "PrefDmSetting"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1756
    .local v1, m_RootingPref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1757
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "RootingValue"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1758
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1760
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1761
    return-void
.end method

.method public static xdmSetServiceType(I)I
    .registers 3
    .parameter "Type"

    .prologue
    .line 759
    const/4 v0, 0x0

    .line 760
    .local v0, ret:I
    sget v1, Lcom/wssyncmldm/XDMService;->nServiceType:I

    if-eq v1, p0, :cond_8

    .line 762
    sput p0, Lcom/wssyncmldm/XDMService;->nServiceType:I

    .line 768
    :goto_7
    return v0

    .line 766
    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public static xdmSetServiceType2(I)I
    .registers 3
    .parameter "Type"

    .prologue
    .line 782
    const/4 v0, 0x0

    .line 783
    .local v0, ret:I
    sget v1, Lcom/wssyncmldm/XDMService;->nServiceType2:I

    if-eq v1, p0, :cond_8

    .line 785
    sput p0, Lcom/wssyncmldm/XDMService;->nServiceType2:I

    .line 791
    :goto_7
    return v0

    .line 789
    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public static xdmSetSimState(I)V
    .registers 1
    .parameter "state"

    .prologue
    .line 803
    sput p0, Lcom/wssyncmldm/XDMService;->nSimStatus:I

    .line 804
    return-void
.end method

.method public static xdmSetSimState2(I)V
    .registers 1
    .parameter "state"

    .prologue
    .line 814
    sput p0, Lcom/wssyncmldm/XDMService;->nSimStatus2:I

    .line 815
    return-void
.end method

.method public static xdmSetUpdateReport(I)V
    .registers 6
    .parameter "value"

    .prologue
    .line 1735
    sget-object v2, Lcom/wssyncmldm/XDMService;->m_Context:Landroid/content/Context;

    const-string v3, "PrefUpdateReport"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1736
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1737
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "isUpdateReport"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1738
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " wssSetUpdateReport : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1741
    return-void
.end method

.method public static xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4
    .parameter "context"
    .parameter "szText"
    .parameter "duration"

    .prologue
    .line 1633
    sget-object v0, Lcom/wssyncmldm/XDMService;->m_ToastAlreadyAdded:Landroid/widget/Toast;

    if-nez v0, :cond_b

    .line 1635
    const/4 v0, 0x0

    invoke-static {p0, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/wssyncmldm/XDMService;->m_ToastAlreadyAdded:Landroid/widget/Toast;

    .line 1637
    :cond_b
    sget-object v0, Lcom/wssyncmldm/XDMService;->m_ToastAlreadyAdded:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1638
    sget-object v0, Lcom/wssyncmldm/XDMService;->m_ToastAlreadyAdded:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1639
    return-void
.end method

.method public static xdmStopAlarm(I)V
    .registers 8
    .parameter "nID"

    .prologue
    const/high16 v6, 0x1000

    const/4 v5, 0x0

    .line 1534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop Postpone/Sdcard Alarm Alarm id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 1535
    const-string v2, "alarm"

    invoke-static {v2}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1536
    .local v0, am:Landroid/app/AlarmManager;
    if-nez v0, :cond_29

    .line 1538
    const-string v2, "AlarmManager is null!!"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1553
    :goto_28
    return-void

    .line 1542
    :cond_29
    const/4 v1, 0x0

    .line 1543
    .local v1, sender:Landroid/app/PendingIntent;
    const/4 v2, 0x1

    if-ne p0, v2, :cond_3e

    .line 1545
    sget-object v2, Lcom/wssyncmldm/XDMService;->m_Context:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.POSTPONED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1552
    :goto_3a
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_28

    .line 1550
    :cond_3e
    sget-object v2, Lcom/wssyncmldm/XDMService;->m_Context:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SDCARD_MAXTIME_ALARM"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_3a
.end method

.method public static xdmStopPendingUIEvent()V
    .registers 1

    .prologue
    .line 1433
    sget-object v0, Lcom/wssyncmldm/XDMService;->m_TopActivityCheckThread:Lcom/wssyncmldm/XDMService$XDMTopActivityCheckThread;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/wssyncmldm/XDMService;->m_TopActivityCheckThread:Lcom/wssyncmldm/XDMService$XDMTopActivityCheckThread;

    invoke-virtual {v0}, Lcom/wssyncmldm/XDMService$XDMTopActivityCheckThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1434
    sget-object v0, Lcom/wssyncmldm/XDMService;->m_TopActivityCheckThread:Lcom/wssyncmldm/XDMService$XDMTopActivityCheckThread;

    invoke-virtual {v0}, Lcom/wssyncmldm/XDMService$XDMTopActivityCheckThread;->interrupt()V

    .line 1436
    :cond_11
    const/4 v0, 0x0

    sput-object v0, Lcom/wssyncmldm/XDMService;->m_TopActivityCheckThread:Lcom/wssyncmldm/XDMService$XDMTopActivityCheckThread;

    .line 1437
    return-void
.end method

.method public static xdmWakeLockAcquire()V
    .registers 4

    .prologue
    .line 1816
    const-string v2, ""

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1819
    :try_start_5
    sget-object v2, Lcom/wssyncmldm/XDMService;->m_WakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1d

    .line 1821
    const-string v2, "m_WakeLock is acquire!!"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1822
    const-string v2, "power"

    invoke-static {v2}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1823
    .local v1, pm:Landroid/os/PowerManager;
    if-nez v1, :cond_1e

    .line 1825
    const-string v2, "PowerManager is null!!"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1838
    :cond_1d
    :goto_1d
    return-void

    .line 1829
    :cond_1e
    const/4 v2, 0x1

    const-string v3, "wakeLock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/wssyncmldm/XDMService;->m_WakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1830
    sget-object v2, Lcom/wssyncmldm/XDMService;->m_WakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1831
    sget-object v2, Lcom/wssyncmldm/XDMService;->m_WakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_32} :catch_33

    goto :goto_1d

    .line 1834
    :catch_33
    move-exception v0

    .line 1836
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public static xdmWakeLockRelease()V
    .registers 2

    .prologue
    .line 1842
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1845
    :try_start_5
    sget-object v1, Lcom/wssyncmldm/XDMService;->m_WakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_16

    .line 1847
    const-string v1, "m_WakeLock is release!!"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1848
    sget-object v1, Lcom/wssyncmldm/XDMService;->m_WakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1849
    const/4 v1, 0x0

    sput-object v1, Lcom/wssyncmldm/XDMService;->m_WakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_17

    .line 1856
    .local v0, e:Ljava/lang/Exception;
    :cond_16
    :goto_16
    return-void

    .line 1852
    .end local v0           #e:Ljava/lang/Exception;
    :catch_17
    move-exception v0

    .line 1854
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_16
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2
    .parameter "base"

    .prologue
    .line 223
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 224
    sput-object p1, Lcom/wssyncmldm/XDMService;->m_Context:Landroid/content/Context;

    .line 225
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/wssyncmldm/XDMService;->m_Binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 248
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 249
    new-instance v0, Lcom/wssyncmldm/agent/XDMTask;

    invoke-direct {v0}, Lcom/wssyncmldm/agent/XDMTask;-><init>()V

    sput-object v0, Lcom/wssyncmldm/XDMService;->g_Task:Lcom/wssyncmldm/agent/XDMTask;

    .line 250
    new-instance v0, Lcom/wssyncmldm/agent/XDMUITask;

    invoke-direct {v0}, Lcom/wssyncmldm/agent/XDMUITask;-><init>()V

    sput-object v0, Lcom/wssyncmldm/XDMService;->g_UITask:Lcom/wssyncmldm/agent/XDMUITask;

    .line 252
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMFeature;->xdmGetRootingFeature()Z

    move-result v0

    sput-boolean v0, Lcom/wssyncmldm/XDMService;->XDM_SYSTEM_ROOTING:Z

    .line 253
    const/4 v0, 0x0

    invoke-static {v0, v1, v1}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 254
    invoke-static {p0}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiNotiInitialize(Landroid/content/Context;)V

    .line 256
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADl;->g_PostponeTimerStateInfo:Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;

    if-nez v0, :cond_26

    .line 257
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaCreatePostponeTimerStateInfo()V

    .line 259
    :cond_26
    const-string v0, "phone"

    invoke-static {v0}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/wssyncmldm/XDMService;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 260
    sget-object v0, Lcom/wssyncmldm/XDMService;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_3a

    .line 262
    const-string v0, "TelephonyManager is null!!"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 708
    :goto_39
    return-void

    .line 266
    :cond_3a
    new-instance v0, Lcom/wssyncmldm/XDMService$XDMPhoneStateListener;

    invoke-direct {v0, p0}, Lcom/wssyncmldm/XDMService$XDMPhoneStateListener;-><init>(Lcom/wssyncmldm/XDMService;)V

    sput-object v0, Lcom/wssyncmldm/XDMService;->phoneListener:Lcom/wssyncmldm/XDMService$XDMPhoneStateListener;

    .line 267
    sget-object v0, Lcom/wssyncmldm/XDMService;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/wssyncmldm/XDMService;->phoneListener:Lcom/wssyncmldm/XDMService$XDMPhoneStateListener;

    const/16 v2, 0x1f1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 274
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetServiceType()I

    move-result v0

    invoke-static {v0}, Lcom/wssyncmldm/XDMService;->xdmSetServiceType(I)I

    .line 297
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmInitExternalStorageState()V

    .line 299
    new-instance v0, Lcom/wssyncmldm/XDMService$1;

    invoke-direct {v0, p0}, Lcom/wssyncmldm/XDMService$1;-><init>(Lcom/wssyncmldm/XDMService;)V

    sput-object v0, Lcom/wssyncmldm/XDMService;->g_hApnHandler:Landroid/os/Handler;

    .line 355
    new-instance v0, Lcom/wssyncmldm/XDMService$2;

    invoke-direct {v0, p0}, Lcom/wssyncmldm/XDMService$2;-><init>(Lcom/wssyncmldm/XDMService;)V

    sput-object v0, Lcom/wssyncmldm/XDMService;->m_hDmHandler:Landroid/os/Handler;

    .line 465
    new-instance v0, Lcom/wssyncmldm/XDMService$3;

    invoke-direct {v0, p0}, Lcom/wssyncmldm/XDMService$3;-><init>(Lcom/wssyncmldm/XDMService;)V

    iput-object v0, p0, Lcom/wssyncmldm/XDMService;->m_BatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 474
    new-instance v0, Lcom/wssyncmldm/XDMService$4;

    invoke-direct {v0, p0}, Lcom/wssyncmldm/XDMService$4;-><init>(Lcom/wssyncmldm/XDMService;)V

    iput-object v0, p0, Lcom/wssyncmldm/XDMService;->m_TimeTickReceiver:Landroid/content/BroadcastReceiver;

    .line 484
    new-instance v0, Lcom/wssyncmldm/XDMService$5;

    invoke-direct {v0, p0}, Lcom/wssyncmldm/XDMService$5;-><init>(Lcom/wssyncmldm/XDMService;)V

    iput-object v0, p0, Lcom/wssyncmldm/XDMService;->m_WifiReceiver:Landroid/content/BroadcastReceiver;

    .line 507
    new-instance v0, Lcom/wssyncmldm/XDMService$6;

    invoke-direct {v0, p0}, Lcom/wssyncmldm/XDMService$6;-><init>(Lcom/wssyncmldm/XDMService;)V

    iput-object v0, p0, Lcom/wssyncmldm/XDMService;->m_AlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 610
    new-instance v0, Lcom/wssyncmldm/XDMService$7;

    invoke-direct {v0, p0}, Lcom/wssyncmldm/XDMService$7;-><init>(Lcom/wssyncmldm/XDMService;)V

    iput-object v0, p0, Lcom/wssyncmldm/XDMService;->m_MediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 678
    new-instance v0, Lcom/wssyncmldm/XDMService$8;

    invoke-direct {v0, p0}, Lcom/wssyncmldm/XDMService$8;-><init>(Lcom/wssyncmldm/XDMService;)V

    iput-object v0, p0, Lcom/wssyncmldm/XDMService;->m_WiFiOnlyReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_39
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 233
    :try_start_3
    iget-object v1, p0, Lcom/wssyncmldm/XDMService;->m_TimeTickReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/XDMService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 234
    iget-object v1, p0, Lcom/wssyncmldm/XDMService;->m_AlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/XDMService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 235
    iget-object v1, p0, Lcom/wssyncmldm/XDMService;->m_WifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/XDMService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 236
    iget-object v1, p0, Lcom/wssyncmldm/XDMService;->m_MediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/XDMService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    iget-object v1, p0, Lcom/wssyncmldm/XDMService;->m_WiFiOnlyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/XDMService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_1d

    .line 243
    :goto_1c
    return-void

    .line 239
    :catch_1d
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 9
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 200
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 201
    iget-object v3, p0, Lcom/wssyncmldm/XDMService;->m_WifiReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/wssyncmldm/XDMService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    .local v1, alramIntent:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.POSTPONED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v3, "android.intent.action.SDCARD_MAXTIME_ALARM"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    iget-object v3, p0, Lcom/wssyncmldm/XDMService;->m_AlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/wssyncmldm/XDMService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 210
    .local v2, mediaIntent:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 213
    iget-object v3, p0, Lcom/wssyncmldm/XDMService;->m_MediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/wssyncmldm/XDMService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 216
    .local v0, WiFiIntent:Landroid/content/IntentFilter;
    const-string v3, "sec.fota.intent.WIFIONLY"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    iget-object v3, p0, Lcom/wssyncmldm/XDMService;->m_WiFiOnlyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/wssyncmldm/XDMService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 218
    return-void
.end method

.method protected xdmCallUiBootstrapMsg()V
    .registers 4

    .prologue
    .line 1400
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1402
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/wssyncmldm/XDMService;->m_Context:Landroid/content/Context;

    const-class v2, Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1403
    .local v0, BootstrapIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1404
    invoke-virtual {p0, v0}, Lcom/wssyncmldm/XDMService;->startActivity(Landroid/content/Intent;)V

    .line 1405
    return-void
.end method

.method protected xdmCallUiFotaAutoInstall(I)V
    .registers 7
    .parameter "id"

    .prologue
    .line 1376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1378
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/wssyncmldm/XDMService;->m_Context:Landroid/content/Context;

    const-class v4, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1379
    .local v0, FotaUpdateIntent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1380
    invoke-virtual {p0, v0}, Lcom/wssyncmldm/XDMService;->startActivity(Landroid/content/Intent;)V

    .line 1382
    return-void
.end method

.method protected xdmCallUiFotaInstall()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1386
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1388
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wssyncmldm/XDMService;->xdmSetCheckBattery(Z)V

    .line 1390
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetPostponeAutoinstall()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1391
    const/16 v0, 0xe3

    invoke-static {v1, v0}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 1395
    :goto_15
    const/16 v0, 0x267

    invoke-static {v0}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    .line 1396
    return-void

    .line 1393
    :cond_1b
    const/16 v0, 0xd8

    invoke-static {v1, v0}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_15
.end method

.method protected xdmCallUiFotaPostpone()V
    .registers 6

    .prologue
    .line 1360
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1362
    sget-boolean v1, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->FOTA_POSTPONE_STOP:Z

    if-nez v1, :cond_f

    .line 1364
    sget-object v1, Lcom/wssyncmldm/XDMService;->m_Context:Landroid/content/Context;

    invoke-static {v1}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->xuiFotaUpdateReStartTimer(Landroid/content/Context;)V

    .line 1372
    :goto_e
    return-void

    .line 1368
    :cond_f
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/wssyncmldm/XDMService;->m_Context:Landroid/content/Context;

    const-class v4, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1369
    .local v0, FotaUpdateIntent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1370
    invoke-virtual {p0, v0}, Lcom/wssyncmldm/XDMService;->startActivity(Landroid/content/Intent;)V

    goto :goto_e
.end method

.method protected xdmCallUiStorageNotify()V
    .registers 4

    .prologue
    .line 1425
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1426
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1427
    const-string v1, "dlgID"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1428
    invoke-virtual {p0, v0}, Lcom/wssyncmldm/XDMService;->startActivity(Landroid/content/Intent;)V

    .line 1429
    return-void
.end method

.method public xdmEvtHdlrChangedBatteryLevel(I)V
    .registers 5
    .parameter "battLevel"

    .prologue
    .line 1336
    const/4 v0, 0x0

    .line 1338
    .local v0, nFumoStatus:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "battLevel :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1340
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v0

    .line 1341
    sparse-switch v0, :sswitch_data_2c

    .line 1356
    :cond_1e
    :goto_1e
    return-void

    .line 1352
    :sswitch_1f
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpBatteryLifeCheck()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1354
    const/16 v1, 0xcc

    invoke-static {v1}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto :goto_1e

    .line 1341
    nop

    :sswitch_data_2c
    .sparse-switch
        0x28 -> :sswitch_1f
        0x32 -> :sswitch_1f
        0xdc -> :sswitch_1f
    .end sparse-switch
.end method

.method protected xdmSetRegisterBatteryReceiver()V
    .registers 4

    .prologue
    .line 712
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/wssyncmldm/XDMService;->m_BatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/wssyncmldm/XDMService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 714
    return-void
.end method

.method public xdmSetRegisterTimeTickReceiver()V
    .registers 4

    .prologue
    .line 733
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/wssyncmldm/XDMService;->m_TimeTickReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/wssyncmldm/XDMService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 735
    return-void
.end method

.method protected xdmUnRegisterBatteryReceiver()V
    .registers 3

    .prologue
    .line 718
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 722
    :try_start_5
    iget-object v1, p0, Lcom/wssyncmldm/XDMService;->m_BatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/XDMService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 729
    :goto_a
    return-void

    .line 724
    :catch_b
    move-exception v0

    .line 726
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "didn\'t register"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 727
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_a
.end method

.method protected xdmUnRegisterTimeTickReceiver()V
    .registers 3

    .prologue
    .line 739
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 743
    :try_start_5
    iget-object v1, p0, Lcom/wssyncmldm/XDMService;->m_TimeTickReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/XDMService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 750
    :goto_a
    return-void

    .line 745
    :catch_b
    move-exception v0

    .line 747
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "didn\'t register"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_a
.end method
