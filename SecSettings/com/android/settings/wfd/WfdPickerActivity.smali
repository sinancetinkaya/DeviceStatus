.class public Lcom/android/settings/wfd/WfdPickerActivity;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# static fields
.field private static mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# instance fields
.field private final ACTION_ALLSHARE_CAST_START:Ljava/lang/String;

.field private final ACTION_WFD_RESTART:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TEST:Ljava/lang/Boolean;

.field private TICKS_PER_SEC:J

.field private TOT_CONNECT_TIME:I

.field private TOT_CONNECT_TIME_MS:J

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivityStartedByAllShare:Z

.field private mAutoConnStartedFromInv:Z

.field private mAutoConnectDialog:Landroid/app/AlertDialog;

.field private mAutoConnectSysProp:Ljava/lang/String;

.field private mCanShake:Z

.field private mCastEndConnect:Landroid/view/MenuItem;

.field private mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

.field private mConnectingDialogCalled:Z

.field private mControlByWfdService:I

.field private mCurDialog:Landroid/app/AlertDialog;

.field private mCurMenuType:I

.field private mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mEmptyMessage:Landroid/widget/TextView;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableControlByWfdService:Z

.field private mErrorHandlingDialog:Landroid/app/AlertDialog;

.field private mInPickerDialog:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsConnectRequestedFlag:Z

.field private mIsTablet:Z

.field private mLastConnectDeviceAddr:Ljava/lang/String;

.field private mLastConnectDeviceName:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mMenuItemHelp:Landroid/view/MenuItem;

.field private mMenuItemScanStop:Landroid/view/MenuItem;

.field private mMotionHandler:Landroid/os/Handler;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mMultiPaneSwitch:Landroid/preference/SwitchPreference;

.field private mNfcWriteMode:Z

.field private mNoDeviceImage:Landroid/widget/ImageView;

.field private mNoDeviceText:Landroid/widget/TextView;

.field private mNotNfcEntry:Z

.field private mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mPeersConnected:Landroid/preference/PreferenceGroup;

.field private mPeersGroup:Lcom/android/settings/ProgressCategory;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mSRController:Lcom/sec/android/app/screenrecorder/remote/SRServiceController;

.field private mScanningTimer:Landroid/os/CountDownTimer;

.field private mTerminatedFlag:Z

.field private mTickCount:I

.field private mWFDDialogState:I

.field private mWFDSettingState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWfdDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mWfdEnabled:Z

.field private mWfdManager:Lcom/samsung/wfd/WfdManager;

.field private mWfdState:I

.field private mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

.field private mWfdTerminateDialog:Landroid/app/AlertDialog;

.field private final wfdStateArr:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 115
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 90
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 93
    const-string v0, "WfdPickerActivity"

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TAG:Ljava/lang/String;

    .line 94
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TEST:Ljava/lang/Boolean;

    .line 105
    iput v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 117
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 119
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    .line 120
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    .line 121
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    .line 128
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    .line 140
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WFD_PICKER_STATE_UNKNOWN"

    aput-object v1, v0, v4

    const-string v1, "WFD_PICKER_STATE_DISABLED"

    aput-object v1, v0, v5

    const-string v1, "WFD_PICKER_STATE_ENABLED"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "WFD_PICKER_STATE_SCANNING"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "WFD_PICKER_STATE_CONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "WFD_PICKER_STATE_ESTABLISHED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WFD_PICKER_STATE_SCANSTOP"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "WFD_PICKER_STATE_DISCONNECTED"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->wfdStateArr:[Ljava/lang/String;

    .line 147
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME:I

    .line 148
    const-wide/32 v0, 0x9c40

    iput-wide v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME_MS:J

    .line 149
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TICKS_PER_SEC:J

    .line 151
    iput v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 153
    iput v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    .line 155
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    .line 156
    iput v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdState:I

    .line 157
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTerminatedFlag:Z

    .line 158
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    .line 159
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 160
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    .line 161
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    .line 162
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    .line 163
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 165
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    .line 167
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 169
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 170
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 178
    const-string v0, "com.samsung.wfd.PICK_WFD_NETWORK"

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->ACTION_WFD_RESTART:Ljava/lang/String;

    .line 179
    const-string v0, "com.sec.android.allshare.intent.action.CAST_START"

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->ACTION_ALLSHARE_CAST_START:Ljava/lang/String;

    .line 185
    iput v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    .line 186
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 189
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 190
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    .line 192
    iput v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I

    .line 193
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 194
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    .line 195
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    .line 196
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    .line 197
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    .line 199
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    .line 200
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    .line 201
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    .line 203
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    .line 204
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    .line 208
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    .line 211
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 215
    iput-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCanShake:Z

    .line 217
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mSRController:Lcom/sec/android/app/screenrecorder/remote/SRServiceController;

    .line 218
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    .line 220
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdPickerActivity$1;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 415
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdPickerActivity$2;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 433
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdPickerActivity$3;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->cancelWfdConnect()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/settings/wfd/WfdPickerActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCanShake:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/hardware/motion/MotionRecognitionManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/hardware/motion/MRListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/preference/PreferenceGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    return v0
.end method

.method static synthetic access$3110(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->displayConnectionFailed()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/settings/wfd/WfdPickerActivity;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/android/settings/ProgressCategory;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->finishScanDevice(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic access$700()Landroid/net/wifi/p2p/WifiP2pManager;
    .registers 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/wfd/WfdPickerActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->removeDialog(I)V

    return-void
.end method

.method private addActionsTo(Landroid/content/IntentFilter;)V
    .registers 3
    .parameter "intentFilter"

    .prologue
    .line 675
    const-string v0, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 677
    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 678
    const-string v0, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 679
    const-string v0, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 681
    const-string v0, "com.samsung.wfd.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method private addMessagePreference(I)V
    .registers 4
    .parameter

    .prologue
    .line 1880
    const-string v0, "WfdPickerActivity"

    const-string v1, "addMessagePreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1882
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_22

    .line 1883
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1884
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_22

    .line 1885
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1889
    :cond_22
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_39

    .line 1890
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1891
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_39

    .line 1892
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1894
    :cond_39
    return-void
.end method

.method private autoConnecting()V
    .registers 5

    .prologue
    .line 2176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    .line 2178
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->makeConnConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$16;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/WfdPickerActivity$16;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2197
    return-void
.end method

.method private cancelWfdConnect()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1630
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_20

    .line 1634
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 1635
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect if (isWfdConnected() == true)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 1690
    :cond_20
    :goto_20
    return-void

    .line 1639
    :cond_21
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_46

    .line 1640
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect if (isP2pConnected() && isWfdConnected() == false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WfdPickerActivity$11;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WfdPickerActivity$11;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1660
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1662
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    goto :goto_20

    .line 1665
    :cond_46
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WfdPickerActivity$12;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WfdPickerActivity$12;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1676
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1678
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->clearLastConnectedDeviceInfo()V

    .line 1680
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1681
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 1682
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V

    goto :goto_20
.end method

.method private changeActionBar()V
    .registers 6

    .prologue
    const/16 v2, 0x10

    const/4 v4, -0x2

    .line 1207
    const-string v0, "WfdPickerActivity"

    const-string v1, "changeActionBar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_1a

    .line 1210
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1212
    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_1b

    .line 1223
    :cond_1a
    :goto_1a
    return-void

    .line 1216
    :cond_1b
    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1218
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_1a
.end method

.method private clearLastConnectedDeviceInfo()V
    .registers 3

    .prologue
    .line 1751
    const-string v0, "WfdPickerActivity"

    const-string v1, "clearLastConnectedDeviceInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1754
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 1755
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 1757
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->putLastConnectedDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    return-void
.end method

.method private connectByNFC(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/settings/wifi/p2p/WifiP2pPeer;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1366
    invoke-direct {p0, p3}, Lcom/android/settings/wfd/WfdPickerActivity;->getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 1367
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1370
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device is found in the list device name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1372
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1374
    invoke-direct {p0, p2}, Lcom/android/settings/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/settings/wifi/p2p/WifiP2pPeer;)V

    .line 1376
    :cond_3a
    return-void
.end method

.method private connectLastConnection(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/settings/wifi/p2p/WifiP2pPeer;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1358
    :cond_14
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1359
    invoke-direct {p0, p2}, Lcom/android/settings/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/settings/wifi/p2p/WifiP2pPeer;)V

    .line 1361
    :cond_1a
    return-void
.end method

.method private createAutoConnectDialog()Landroid/app/AlertDialog;
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1498
    const-string v0, "WfdPickerActivity"

    const-string v1, "createAutoConnectDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    .line 1502
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1503
    const v0, 0x7f0400fe

    invoke-virtual {v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1504
    const v0, 0x7f0b02ec

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1505
    const v3, 0x7f0903a2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1506
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCustomTitle(Landroid/view/View;)V

    .line 1508
    const v0, 0x7f0400f7

    invoke-virtual {v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1510
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1513
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1515
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v6}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1517
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME:I

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    .line 1519
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$8;

    iget-wide v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME_MS:J

    iget-wide v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TICKS_PER_SEC:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wfd/WfdPickerActivity$8;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;JJ)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    .line 1532
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1534
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_71

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    if-nez v0, :cond_71

    .line 1535
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->autoConnecting()V

    .line 1536
    iput-boolean v6, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 1539
    :cond_71
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/wfd/WfdPickerActivity$9;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WfdPickerActivity$9;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1560
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    const v2, 0x7f0905c5

    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$10;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/WfdPickerActivity$10;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1581
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private createErrorHandlingDialog(I)Landroid/app/AlertDialog;
    .registers 6
    .parameter

    .prologue
    .line 1438
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createErrorHandlingDialog << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    .line 1440
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0903a2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1442
    const/16 v0, 0xd

    if-ne p1, v0, :cond_54

    .line 1443
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0903a5

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1450
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const v2, 0x7f0905c4

    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$7;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/WfdPickerActivity$7;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1470
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    return-object v0

    .line 1445
    :cond_54
    const/16 v0, 0xe

    if-ne p1, v0, :cond_3f

    .line 1446
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0903a6

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3f
.end method

.method private createWfdTerminateDialog()Landroid/app/AlertDialog;
    .registers 5

    .prologue
    .line 1393
    const-string v0, "WfdPickerActivity"

    const-string v1, "createWfdTerminateDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    .line 1396
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0903a2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1398
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0903a4

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1401
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const v2, 0x7f0905c4

    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$5;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/WfdPickerActivity$5;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1424
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    const v2, 0x7f0905c5

    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$6;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/WfdPickerActivity$6;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1433
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private displayConnectionFailed()V
    .registers 3

    .prologue
    .line 1482
    const-string v0, "WfdPickerActivity"

    const-string v1, "displayConnectionFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 1486
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->removeDialog(I)V

    .line 1488
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->cancelWfdConnect()V

    .line 1489
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_20

    .line 1490
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 1494
    :cond_20
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    .line 1495
    return-void
.end method

.method private finishScanDevice(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2068
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishScanDevice << result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 2072
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    if-nez v0, :cond_28

    .line 2073
    const-string v0, "WfdPickerActivity"

    const-string v1, "mWfdDeviceList is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    :cond_27
    :goto_27
    return-void

    .line 2077
    :cond_28
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_36

    .line 2078
    const-string v0, "WfdPickerActivity"

    const-string v1, "finishScanDevice GetActivity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 2082
    :cond_36
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 2083
    packed-switch p1, :pswitch_data_18e

    .line 2111
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check the reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v4}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 2116
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 2118
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_6a

    .line 2119
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->changeToScan()V

    .line 2124
    :cond_6a
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_11f

    .line 2125
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2126
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_27

    .line 2085
    :pswitch_7d
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scan timer expired! peer list num is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 2090
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nfc dev info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v1, :cond_54

    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 2092
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->displayConnectionFailed()V

    goto :goto_54

    .line 2097
    :pswitch_d4
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverPeers received onFailure! peer list num is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 2100
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v4}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    goto/16 :goto_27

    .line 2106
    :pswitch_ff
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverPeers cancel! peer list num is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_54

    .line 2129
    :cond_11f
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    if-nez p1, :cond_27

    .line 2132
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v4}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 2134
    iget-object v1, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->isWifiDisplayDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->isWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 2136
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_156

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2138
    :cond_156
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoconnect prop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2144
    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/settings/wifi/p2p/WifiP2pPeer;)V

    goto/16 :goto_27

    .line 2083
    nop

    :pswitch_data_18e
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_d4
        :pswitch_ff
    .end packed-switch
.end method

.method private getLastConnectedDeviceInfo()V
    .registers 5

    .prologue
    .line 1693
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "WfdPickerActivity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1695
    const-string v1, "wlan.wfd.lastdevicename"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1697
    const-string v2, "wlan.wfd.lastdeviceaddr"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1700
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_25

    .line 1701
    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 1704
    :cond_25
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2f

    .line 1705
    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 1708
    :cond_2f
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastConnectedDeviceInfo Last n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    return-void
.end method

.method private getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1379
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->getNdefMessages(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 1380
    if-eqz v0, :cond_39

    array-length v1, v0

    if-lez v1, :cond_39

    .line 1382
    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    .line 1383
    const-string v0, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connecting by nfc dev addr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1388
    :goto_38
    return-object v0

    :cond_39
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_38
.end method

.method private handleIntentActions(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 9
    .parameter "activity"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 631
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, intentAction:Ljava/lang/String;
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    .line 636
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    .line 638
    if-eqz v0, :cond_36

    .line 639
    const-string v1, "com.sec.android.allshare.intent.action.CAST_START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "com.samsung.wfd.PICK_WFD_NETWORK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 641
    :cond_34
    iput-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    .line 647
    :cond_36
    :goto_36
    return-void

    .line 642
    :cond_37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.wfd.SELECT_DEV"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 643
    iput-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    goto :goto_36
.end method

.method private initConnectedDevUI(Landroid/preference/PreferenceScreen;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1338
    const-string v0, "WfdPickerActivity"

    const-string v1, "show connected devices"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1342
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1343
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1345
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const v1, 0x7f090369

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 1346
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1348
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1350
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_34

    .line 1351
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1352
    :cond_34
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1353
    return-void
.end method

.method private initMemberVariables()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 542
    const-string v0, "WfdPickerActivity"

    const-string v1, "Initializing member variables"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/wfd/WfdPickerDialog;

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    .line 545
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_2e

    .line 546
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInPickerDialog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_2e
    iput v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    .line 549
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 551
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 552
    iput v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I

    .line 553
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCanShake:Z

    .line 556
    const-string v0, "wlan.wfd.autoconnect"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    .line 557
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProp wlan.wfd.autoconnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isNotNfcEntry()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    .line 561
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->addActionsTo(Landroid/content/IntentFilter;)V

    .line 562
    return-void
.end method

.method private initUI()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 613
    const v0, 0x7f070071

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->addPreferencesFromResource(I)V

    .line 615
    const-string v0, "allsharecast_available"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ProgressCategory;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    .line 616
    const-string v0, "allsharecast_connected"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    .line 617
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 619
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setIgnoreNoDevice(Z)V

    .line 620
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setIgnoreMessage(Z)V

    .line 622
    const-string v0, "allsharecast_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    .line 624
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_41

    .line 625
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 627
    :cond_41
    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->setHasOptionsMenu(Z)V

    .line 628
    return-void
.end method

.method private isNotNfcEntry()Z
    .registers 5

    .prologue
    .line 566
    const/4 v0, 0x0

    .line 568
    .local v0, msgs:[Landroid/nfc/NdefMessage;
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 569
    .local v1, rawMsgs:[Landroid/os/Parcelable;
    if-eqz v1, :cond_13

    .line 570
    const/4 v2, 0x0

    .line 572
    :goto_12
    return v2

    :cond_13
    const/4 v2, 0x1

    goto :goto_12
.end method

.method private isP2pConnected()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2253
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2256
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2259
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v2, :cond_28

    .line 2260
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pConnected >> true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    const/4 v0, 0x1

    .line 2270
    :goto_27
    return v0

    .line 2263
    :cond_28
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pConnected >> false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_2f} :catch_31

    move v0, v1

    .line 2264
    goto :goto_27

    .line 2266
    :catch_31
    move-exception v0

    .line 2267
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pConnected - NullPointerException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2270
    goto :goto_27
.end method

.method private isP2pEnabled()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2275
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2278
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2281
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2282
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pEnabled >> true!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    const/4 v0, 0x1

    .line 2292
    :goto_25
    return v0

    .line 2285
    :cond_26
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pEnabled >> false!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_2d} :catch_2f

    move v0, v1

    .line 2286
    goto :goto_25

    .line 2288
    :catch_2f
    move-exception v0

    .line 2289
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pEnabled - NullPointerException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2292
    goto :goto_25
.end method

.method private isWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .registers 5
    .parameter

    .prologue
    .line 2219
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    :cond_a
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v0

    if-nez v0, :cond_32

    .line 2221
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckItemWifiBusy >> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is busy device"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    const/4 v0, 0x1

    .line 2225
    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method private isWifiDisplayDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2200
    .line 2202
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdDevInfo:I

    if-eqz v2, :cond_15

    .line 2203
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdDevInfo:I

    and-int/2addr v2, v0

    .line 2205
    if-ne v2, v0, :cond_c

    .line 2215
    :goto_b
    return v0

    .line 2208
    :cond_c
    const-string v0, "WfdPickerActivity"

    const-string v2, "CheckItemForWifiDisplay >> this peer wasn\'t setted sink flag !"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2210
    goto :goto_b

    .line 2214
    :cond_15
    const-string v0, "WfdPickerActivity"

    const-string v2, "CheckItemForWifiDisplay >> wfdDevInfo is 0 !!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2215
    goto :goto_b
.end method

.method private makeConnConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1591
    const-string v0, "WfdPickerActivity"

    const-string v1, "makeConnConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1595
    if-nez p1, :cond_6e

    .line 1596
    const-string v0, "WfdPickerActivity"

    const-string v1, "try to connect with last connected info..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeConnConfig << n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1602
    const-string v0, "WfdPickerActivity"

    const-string v1, "we do not have mP2pDevice...so set use default WpsInfo info..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1605
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v5, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1606
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v4, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1607
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1625
    :goto_6b
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object v0

    .line 1609
    :cond_6e
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeConnConfig << n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1614
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1615
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_6b

    .line 1616
    :cond_ad
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 1617
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v5, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_6b

    .line 1618
    :cond_ba
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 1619
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v4, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_6b

    .line 1621
    :cond_c7
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_6b
.end method

.method private printWfdSettingState()V
    .registers 4

    .prologue
    .line 1762
    const-string v0, "printWfdSettingState << curr WFDState is "

    .line 1763
    iget v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-ltz v1, :cond_28

    iget v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v2, 0x7

    if-gt v1, v2, :cond_28

    .line 1764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->wfdStateArr:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1769
    :goto_22
    const-string v1, "WfdPickerActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    return-void

    .line 1766
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown! curr WFDState is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22
.end method

.method private putLastConnectedDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1738
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "WfdPickerActivity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1739
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1741
    const-string v1, "wlan.wfd.lastdevicename"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1742
    const-string v1, "wlan.wfd.lastdeviceaddr"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1744
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1746
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastConnectedDeviceInfo Last n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    return-void
.end method

.method private retrieveServiceManagers()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 578
    const-string v1, "WfdPickerActivity"

    const-string v2, "Retrieving Service Managers"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v1, "WfdPickerActivity"

    const-string v2, "try to getSystemService WIFI_DISPLAY_SERVICE..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const-string v1, "wifip2p"

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    sput-object v1, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 583
    sget-object v1, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_66

    .line 584
    sget-object v1, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 587
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v1, :cond_3f

    .line 588
    const-string v1, "WfdPickerActivity"

    const-string v2, "Failed to set up connection with wifi p2p service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    sput-object v5, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 596
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cause"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 598
    .local v0, option:I
    packed-switch v0, :pswitch_data_72

    .line 604
    :goto_50
    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v1, :cond_65

    .line 606
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "motion_recognition"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 607
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->setWfdEnabled()V

    .line 610
    :cond_65
    return-void

    .line 593
    .end local v0           #option:I
    :cond_66
    const-string v1, "WfdPickerActivity"

    const-string v2, "mWifiP2pManager is null !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 600
    .restart local v0       #option:I
    :pswitch_6e
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    goto :goto_50

    .line 598
    nop

    :pswitch_data_72
    .packed-switch 0x22077
        :pswitch_6e
    .end packed-switch
.end method

.method private scanDevice()V
    .registers 7

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x3

    .line 1980
    const-string v0, "WfdPickerActivity"

    const-string v1, "scanDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_18

    .line 1983
    const-string v0, "WfdPickerActivity"

    const-string v1, "scanDevice GetActivity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    :cond_17
    :goto_17
    return-void

    .line 1987
    :cond_18
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-ne v0, v3, :cond_24

    .line 1988
    const-string v0, "WfdPickerActivity"

    const-string v1, "already scanning devices"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 1992
    :cond_24
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1993
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    .line 1995
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1997
    iput v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1999
    const-string v0, "WfdPickerActivity"

    const-string v1, "remove current device list!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 2002
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2003
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v1, 0x7f090368

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setTitle(I)V

    .line 2004
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 2006
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2008
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_71

    .line 2009
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2010
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2013
    :cond_71
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2014
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2016
    invoke-direct {p0, v3}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 2017
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_8b

    .line 2018
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->changeToStop()V

    .line 2021
    :cond_8b
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$13;

    const-wide/16 v2, 0x2710

    iget-wide v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TICKS_PER_SEC:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wfd/WfdPickerActivity$13;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;JJ)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    .line 2031
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 2034
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_17

    .line 2036
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 2037
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WfdPickerActivity$14;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WfdPickerActivity$14;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_17

    .line 2051
    :cond_b4
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$15;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/WfdPickerActivity$15;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeersWithFlush(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_17
.end method

.method private setAllShareCastSwitch()V
    .registers 10

    .prologue
    const/16 v5, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 710
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 711
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    .line 713
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_5b

    move-object v2, v0

    .line 714
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 715
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_49

    .line 717
    :cond_22
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 720
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v7, v7, v1, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 721
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 724
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v8, v8, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 732
    .end local v1           #padding:I
    :cond_49
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 733
    new-instance v3, Lcom/android/settings/wfd/WfdSwitchEnabler;

    iget-object v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-direct {v3, v0, v4, p0}, Lcom/android/settings/wfd/WfdSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    .line 734
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    .line 742
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_5b
    :goto_5b
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    .line 743
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    .line 744
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 746
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v3, :cond_b1

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v3}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_b1

    .line 748
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->updateScreenOnEnabled()V

    .line 754
    :goto_90
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v3, :cond_a4

    .line 755
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 756
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 759
    :cond_a4
    return-void

    .line 736
    .restart local v2       #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_a5
    new-instance v3, Lcom/android/settings/wfd/WfdSwitchEnabler;

    iget-object v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v4, p0}, Lcom/android/settings/wfd/WfdSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    .line 737
    iput-boolean v7, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    goto :goto_5b

    .line 751
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_b1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->updateScreenOnDisabled()V

    goto :goto_90
.end method

.method private setCastMenu(I)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v1, 0x1

    .line 1897
    const-string v0, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCastMenu in with menuType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3d

    move v0, v1

    .line 1901
    :goto_29
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    if-nez v2, :cond_3f

    .line 1902
    :cond_35
    const-string v0, "WfdPickerActivity"

    const-string v1, "setCastMenu menu item is not created yet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    :cond_3c
    :goto_3c
    :pswitch_3c
    return-void

    .line 1899
    :cond_3d
    const/4 v0, 0x0

    goto :goto_29

    .line 1906
    :cond_3f
    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v2, :cond_3c

    .line 1908
    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_49

    if-eqz v0, :cond_88

    .line 1909
    :cond_49
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    const v3, 0x7f020259

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1910
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1918
    :cond_56
    :goto_56
    packed-switch p1, :pswitch_data_11e

    goto :goto_3c

    .line 1923
    :pswitch_5a
    const-string v2, "WfdPickerActivity"

    const-string v3, "MENU_TYPE_SCAN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_67

    if-eqz v0, :cond_97

    .line 1925
    :cond_67
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v2, 0x7f020088

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1926
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1934
    :goto_74
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1935
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v2, 0x7f090376

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1937
    iput p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    goto :goto_3c

    .line 1912
    :cond_88
    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_56

    .line 1913
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1914
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_56

    .line 1930
    :cond_97
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1931
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_74

    .line 1941
    :pswitch_a2
    const-string v2, "WfdPickerActivity"

    const-string v3, "MENU_TYPE_SCAN_STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_af

    if-eqz v0, :cond_d6

    .line 1943
    :cond_af
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v2, 0x7f02008a

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1944
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1952
    :goto_bc
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1953
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v2, 0x7f0905ff

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1955
    iput p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    .line 1957
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    goto/16 :goto_3c

    .line 1948
    :cond_d6
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1949
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_bc

    .line 1961
    :pswitch_e1
    const-string v2, "WfdPickerActivity"

    const-string v3, "MENU_TYPE_ENDCONNECT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_ee

    if-eqz v0, :cond_112

    .line 1963
    :cond_ee
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    const v2, 0x7f020084

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1964
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1969
    :goto_fb
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1970
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    const v2, 0x7f090377

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3c

    .line 1966
    :cond_112
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1967
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_fb

    .line 1918
    nop

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_5a
        :pswitch_a2
        :pswitch_e1
    .end packed-switch
.end method

.method private setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1714
    if-nez p1, :cond_1b

    .line 1715
    const-string v0, "WfdPickerActivity"

    const-string v1, "setLastConnectedDeviceInfo if (mP2pDevice == null) initialize!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 1718
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 1733
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->putLastConnectedDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    return-void

    .line 1720
    :cond_1b
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_35

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_35

    .line 1722
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 1726
    :cond_35
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 1728
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    goto :goto_13
.end method

.method private startWifiDisplayTo(Lcom/android/settings/wifi/p2p/WifiP2pPeer;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2157
    const-string v0, "WfdPickerActivity"

    const-string v1, "startwifidisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 2159
    iget-object v0, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2161
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_28

    .line 2162
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 2163
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    if-eqz v0, :cond_29

    .line 2164
    const-string v0, "WfdPickerActivity"

    const-string v1, "startwifidisplay with ui"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 2166
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->autoConnecting()V

    .line 2173
    :cond_28
    :goto_28
    return-void

    .line 2168
    :cond_29
    const-string v0, "WfdPickerActivity"

    const-string v1, "startwifidisplay without ui"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    goto :goto_28
.end method

.method private stopConnectingCountDown()V
    .registers 2

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_9

    .line 1586
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1588
    :cond_9
    return-void
.end method

.method private terminateWfdActivity()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 926
    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 929
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 931
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTerminatedFlag:Z

    if-ne v0, v2, :cond_13

    .line 976
    :cond_12
    :goto_12
    return-void

    .line 934
    :cond_13
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTerminatedFlag:Z

    .line 937
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_22

    .line 938
    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity >> Since the wfd state is established, do not terminate WfdManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 941
    :cond_22
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    sparse-switch v0, :sswitch_data_8e

    .line 957
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no problem! << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 963
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 964
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 965
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 967
    :cond_57
    const-string v0, "WfdPickerActivity"

    const-string v1, "lock release!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    .line 971
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_12

    .line 972
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 973
    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity >> Wi-Fi Wfd Terminate ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 946
    :sswitch_72
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "terminateWfdActivity >> picker is finished by WfdService! cause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 941
    nop

    :sswitch_data_8e
    .sparse-switch
        0xa -> :sswitch_72
        0x1e -> :sswitch_72
        0x28 -> :sswitch_72
        0x32 -> :sswitch_72
    .end sparse-switch
.end method


# virtual methods
.method finishWfdPickerDialog()V
    .registers 3

    .prologue
    .line 459
    const-string v0, "WfdPickerActivity"

    const-string v1, "finishWfdPickerDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    .line 461
    return-void
.end method

.method getNdefMessages(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;
    .registers 11
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 651
    const/4 v3, 0x0

    .line 653
    .local v3, msgs:[Landroid/nfc/NdefMessage;
    const-string v6, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 654
    .local v4, rawMsgs:[Landroid/os/Parcelable;
    if-eqz v4, :cond_1b

    .line 655
    array-length v6, v4

    new-array v3, v6, [Landroid/nfc/NdefMessage;

    .line 656
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    array-length v6, v4

    if-ge v1, v6, :cond_30

    .line 657
    aget-object v6, v4, v1

    check-cast v6, Landroid/nfc/NdefMessage;

    aput-object v6, v3, v1

    .line 656
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 661
    .end local v1           #i:I
    :cond_1b
    new-array v0, v7, [B

    .line 662
    .local v0, empty:[B
    new-instance v5, Landroid/nfc/NdefRecord;

    const/4 v6, 0x5

    invoke-direct {v5, v6, v0, v0, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 663
    .local v5, record:Landroid/nfc/NdefRecord;
    new-instance v2, Landroid/nfc/NdefMessage;

    new-array v6, v8, [Landroid/nfc/NdefRecord;

    aput-object v5, v6, v7

    invoke-direct {v2, v6}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 666
    .local v2, msg:Landroid/nfc/NdefMessage;
    new-array v3, v8, [Landroid/nfc/NdefMessage;

    .end local v3           #msgs:[Landroid/nfc/NdefMessage;
    aput-object v2, v3, v7

    .line 671
    .end local v0           #empty:[B
    .end local v2           #msg:Landroid/nfc/NdefMessage;
    .end local v5           #record:Landroid/nfc/NdefRecord;
    .restart local v3       #msgs:[Landroid/nfc/NdefMessage;
    :cond_30
    return-object v3
.end method

.method handleP2pStateChanged(I)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1809
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleP2pStateChanged with state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    .line 1812
    iput p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdState:I

    .line 1813
    packed-switch p1, :pswitch_data_8e

    .line 1876
    :cond_24
    :goto_24
    :pswitch_24
    return-void

    .line 1817
    :pswitch_25
    const-string v0, "WfdPickerActivity"

    const-string v1, " onReceive << WIFI_P2P_STATE_DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 1819
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    .line 1821
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->updateScreenOnDisabled()V

    .line 1823
    invoke-direct {p0, v5}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1824
    invoke-direct {p0, v6}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1826
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_42

    .line 1827
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1829
    :cond_42
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1830
    iput v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    goto :goto_24

    .line 1834
    :pswitch_48
    const-string v0, "WfdPickerActivity"

    const-string v1, " onReceive << WIFI_P2P_STATE_ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    .line 1837
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5e

    .line 1838
    const-string v0, "WfdPickerActivity"

    const-string v1, "Wfd state is already established, don\'t need to set Wfd state enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 1842
    :cond_5e
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_65

    .line 1843
    iput v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1844
    :cond_65
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->updateScreenOnEnabled()V

    .line 1847
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 1849
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    if-eqz v0, :cond_7a

    .line 1850
    const-string v0, "WfdPickerActivity"

    const-string v1, "wait... scanDevice is called next time! received on WfdManager.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 1854
    :cond_7a
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V

    goto :goto_24

    .line 1858
    :cond_7e
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_24

    .line 1859
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_24

    .line 1865
    :pswitch_8a
    iput v6, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    goto :goto_24

    .line 1813
    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_24
        :pswitch_25
        :pswitch_48
        :pswitch_8a
        :pswitch_24
        :pswitch_24
    .end packed-switch
.end method

.method isWfdConnected()Z
    .registers 4

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_30

    .line 2231
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfdConnected status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3b

    .line 2234
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    packed-switch v0, :pswitch_data_5a

    .line 2248
    :cond_30
    :goto_30
    const/4 v0, 0x0

    :goto_31
    return v0

    .line 2238
    :pswitch_32
    const-string v0, "WfdPickerActivity"

    const-string v1, "isWfdConnected >> true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    const/4 v0, 0x1

    goto :goto_31

    .line 2242
    :cond_3b
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfdConnected >> false - getWfdState current state - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 2234
    :pswitch_data_5a
    .packed-switch 0x3
        :pswitch_32
        :pswitch_32
        :pswitch_32
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 703
    const-string v0, "WfdPickerActivity"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->setAllShareCastSwitch()V

    .line 706
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 707
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1185
    const-string v0, "WfdPickerActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->changeActionBar()V

    .line 1189
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1191
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1192
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_1f

    .line 1193
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1194
    :cond_1f
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1197
    :cond_23
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1198
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_32

    .line 1199
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1202
    :cond_32
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1203
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    .line 496
    const-string v2, "WfdPickerActivity"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 501
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 504
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TEST:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 518
    :cond_1a
    if-nez v1, :cond_27

    .line 519
    const-string v2, "WfdPickerActivity"

    const-string v3, "intent is null! check!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    .line 539
    :goto_26
    return-void

    .line 524
    :cond_27
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.wfd.STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 527
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 528
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 530
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->initMemberVariables()V

    .line 532
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->retrieveServiceManagers()V

    .line 534
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getLastConnectedDeviceInfo()V

    .line 536
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->initUI()V

    .line 538
    invoke-direct {p0, v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->handleIntentActions(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_26
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 1139
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    iput p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I

    .line 1144
    packed-switch p1, :pswitch_data_3a

    .line 1159
    const/4 v0, 0x0

    .line 1179
    :goto_1e
    return-object v0

    .line 1146
    :pswitch_1f
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->createAutoConnectDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1162
    :goto_23
    if-eqz v0, :cond_2d

    .line 1163
    new-instance v1, Lcom/android/settings/wfd/WfdPickerActivity$4;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WfdPickerActivity$4;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1178
    :cond_2d
    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    goto :goto_1e

    .line 1149
    :pswitch_30
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->createWfdTerminateDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_23

    .line 1153
    :pswitch_35
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->createErrorHandlingDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_23

    .line 1144
    :pswitch_data_3a
    .packed-switch 0xb
        :pswitch_1f
        :pswitch_30
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const v7, 0x7f020087

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 980
    const-string v0, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateOptionsMenu has entered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_b9

    move v0, v1

    .line 983
    :goto_2e
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v3, :cond_b5

    .line 985
    const v3, 0x7f090376

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    .line 989
    const v3, 0x7f090377

    invoke-interface {p1, v2, v6, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    .line 993
    const/4 v3, 0x3

    const v4, 0x7f09037b

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    .line 997
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    if-eqz v3, :cond_75

    .line 998
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1004
    :cond_75
    :try_start_75
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 1005
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1006
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    :try_end_80
    .catch Ljava/lang/NullPointerException; {:try_start_75 .. :try_end_80} :catch_bc

    .line 1012
    :goto_80
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1014
    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_c7

    .line 1015
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v1, 0x7f020088

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1018
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1021
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    const v1, 0x7f020259

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1022
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1023
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1040
    :cond_b5
    :goto_b5
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1041
    return-void

    :cond_b9
    move v0, v2

    .line 981
    goto/16 :goto_2e

    .line 1008
    :catch_bc
    move-exception v3

    .line 1009
    const-string v4, "WfdPickerActivity"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 1025
    :cond_c7
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1026
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1028
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1030
    if-eqz v0, :cond_b5

    .line 1031
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v1, 0x7f020088

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1032
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    const v1, 0x7f020259

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1033
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 1034
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_b5
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 686
    const-string v1, "WfdPickerActivity"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const v1, 0x7f0400f8

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 688
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0b02d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    .line 689
    const v1, 0x7f0b02d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    .line 690
    const v1, 0x7f0b02d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    .line 692
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    const v2, 0x7f02023d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 693
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    const v2, 0x7f090cf3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 694
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const v2, 0x7f0903a9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 696
    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v1, :cond_53

    .line 697
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    :cond_53
    return-object v0
.end method

.method public onDetach()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 885
    const-string v0, "WfdPickerActivity"

    const-string v2, "onDetach"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 895
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 897
    const-string v2, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 898
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "tag_write_if_success"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 899
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "tag_write_if_success"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 900
    const-string v2, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDetach writeIfSuccess="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :goto_55
    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v2, :cond_60

    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    if-eqz v2, :cond_60

    if-eqz v0, :cond_60

    .line 923
    :goto_5f
    return-void

    .line 908
    :cond_60
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a1

    .line 910
    const-string v0, "WfdPickerActivity"

    const-string v2, "onDetach mWFDSettingState != WFD_PICKER_STATE_DISABLED "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    if-nez v0, :cond_9d

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_9d

    .line 912
    const-string v0, "WfdPickerActivity"

    const-string v2, "onDetach P2p is on.. but wfd is not connected..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 919
    :cond_9d
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->terminateWfdActivity()V

    goto :goto_5f

    .line 922
    :cond_a1
    const-string v0, "WfdPickerActivity"

    const-string v1, "onDetach mWFDSettingState = WFD_PICKER_STATE_DISABLED already"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    :cond_a9
    move v0, v1

    goto :goto_55
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 1058
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_e2

    .line 1119
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_e
    return v0

    .line 1060
    :pswitch_f
    const-string v0, "WfdPickerActivity"

    const-string v1, "MENU_ID_SCAN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090376

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1063
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1064
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1065
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V

    :cond_3a
    :goto_3a
    move v0, v7

    .line 1076
    goto :goto_e

    .line 1069
    :cond_3c
    iput-boolean v6, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 1070
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->clearLastConnectedDeviceInfo()V

    .line 1072
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1074
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->finishScanDevice(I)V

    goto :goto_3a

    .line 1080
    :pswitch_49
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1081
    if-eqz v0, :cond_91

    .line 1089
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-ne v0, v7, :cond_b2

    .line 1090
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.samsung.wfd.WRITE_NFC"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1095
    :goto_60
    if-eqz v2, :cond_8e

    .line 1097
    :try_start_62
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1098
    if-eqz v0, :cond_80

    const-string v1, "com.samsung.wfd.PICK_WFD_NETWORK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    const-string v1, "noaction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 1099
    :cond_80
    const-string v0, "called_by_settings"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_86
    .catch Ljava/lang/NullPointerException; {:try_start_62 .. :try_end_86} :catch_c1

    .line 1105
    :goto_86
    const/high16 v0, 0x400

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1106
    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->startActivity(Landroid/content/Intent;)V

    :cond_8e
    move v0, v7

    .line 1108
    goto/16 :goto_e

    .line 1082
    :cond_91
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_aa

    .line 1083
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wfd/WfdHelpFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0903ba

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_60

    .line 1086
    :cond_aa
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.samsung.wfd.DP_HELP"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_60

    .line 1092
    :cond_b2
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.samsung.wfd.DP_HELP"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_60

    .line 1101
    :cond_ba
    :try_start_ba
    const-string v0, "called_by_settings"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_c0
    .catch Ljava/lang/NullPointerException; {:try_start_ba .. :try_end_c0} :catch_c1

    goto :goto_86

    .line 1102
    :catch_c1
    move-exception v0

    .line 1103
    const-string v1, "WfdPickerActivity"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 1111
    :pswitch_cc
    const-string v0, "WfdPickerActivity"

    const-string v1, "MENU_ID_ENDCONNECT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_de

    .line 1114
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    :cond_de
    move v0, v7

    .line 1116
    goto/16 :goto_e

    .line 1058
    nop

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_f
        :pswitch_cc
        :pswitch_49
    .end packed-switch
.end method

.method public onPause()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 816
    const-string v1, "WfdPickerActivity"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 819
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 821
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v1, :cond_19

    .line 822
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 824
    :cond_19
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 825
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 826
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.wfd.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 829
    :cond_3b
    iget v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_42

    .line 832
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 835
    :cond_42
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    if-eqz v1, :cond_4b

    .line 836
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    invoke-virtual {v1}, Lcom/android/settings/wfd/WfdSwitchEnabler;->pause()V

    .line 838
    :cond_4b
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 840
    iget v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_71

    .line 841
    const-string v1, "WfdPickerActivity"

    const-string v2, "onPause stop peer Discovery in Scanning "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    sget-object v1, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 845
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    if-eqz v1, :cond_71

    .line 846
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 847
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 853
    :cond_71
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_9b

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-ne v1, v4, :cond_9b

    .line 854
    iget v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_96

    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    if-ne v1, v4, :cond_96

    iget v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_96

    .line 857
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->cancelWfdConnect()V

    .line 858
    const-string v1, "WfdPickerActivity"

    const-string v2, "onPause cancelWfdConnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_96
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 864
    :cond_9b
    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v1, :cond_ad

    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    if-nez v1, :cond_ad

    .line 865
    const-string v1, "WfdPickerActivity"

    const-string v2, "Dialog finish!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    .line 869
    :cond_ad
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 870
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v1

    if-nez v1, :cond_c0

    .line 872
    const-string v1, "WfdPickerActivity"

    const-string v2, "onPause requestP2pListen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_c0
    :try_start_c0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c9} :catch_ca

    .line 881
    :goto_c9
    return-void

    .line 878
    :catch_ca
    move-exception v0

    .line 879
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c9
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1226
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPeersAvailable "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 1229
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_35

    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-eq v0, v4, :cond_35

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    if-eq v0, v4, :cond_35

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3d

    .line 1234
    :cond_35
    const-string v0, "WfdPickerActivity"

    const-string v1, "onPeersAvailable >> skip!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :cond_3c
    :goto_3c
    return-void

    .line 1238
    :cond_3d
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1240
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1241
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 1243
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 1244
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1246
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v1

    if-nez v1, :cond_146

    .line 1248
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v3, 0x7f090368

    invoke-virtual {v1, v3}, Lcom/android/settings/ProgressCategory;->setTitle(I)V

    .line 1249
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v4}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1251
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1252
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1254
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1255
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1257
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_87

    .line 1258
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->changeToStop()V

    .line 1260
    :cond_87
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8f
    :goto_8f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1261
    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWifiDisplayDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-nez v1, :cond_8f

    .line 1263
    const-string v1, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device Name - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Address - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " peer.wfdDevInfo - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdDevInfo:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iget v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_8f

    .line 1268
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1270
    new-instance v5, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v5, v1, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1271
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v5}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1276
    :try_start_f1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1277
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;
    :try_end_f8
    .catch Ljava/lang/NullPointerException; {:try_start_f1 .. :try_end_f8} :catch_119

    move-result-object v3

    .line 1278
    if-eqz v3, :cond_124

    .line 1279
    :try_start_fb
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    :try_end_fe
    .catch Ljava/lang/NullPointerException; {:try_start_fb .. :try_end_fe} :catch_221

    move-result-object v1

    .line 1285
    :goto_ff
    if-eqz v1, :cond_126

    const-string v6, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_126

    iget-boolean v6, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    if-nez v6, :cond_126

    .line 1286
    const-string v6, "WfdPickerActivity"

    const-string v7, "connect by nfc"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    invoke-direct {p0, v0, v5, v3, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->connectByNFC(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/settings/wifi/p2p/WifiP2pPeer;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_8f

    .line 1281
    :catch_119
    move-exception v1

    move-object v3, v2

    .line 1282
    :goto_11b
    const-string v6, "WfdPickerActivity"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_124
    move-object v1, v2

    goto :goto_ff

    .line 1290
    :cond_126
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 1292
    const-string v1, "WfdPickerActivity"

    const-string v3, "connectLastConnection"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    invoke-direct {p0, v0, v5}, Lcom/android/settings/wfd/WfdPickerActivity;->connectLastConnection(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/settings/wifi/p2p/WifiP2pPeer;)V

    goto/16 :goto_8f

    .line 1301
    :cond_146
    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->initConnectedDevUI(Landroid/preference/PreferenceScreen;)V

    .line 1304
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceList size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_171
    :goto_171
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_218

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1308
    const-string v2, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceList item:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >> peer.status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWifiDisplayDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v2

    if-eqz v2, :cond_171

    iget v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_171

    .line 1312
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_171

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_171

    .line 1315
    const-string v2, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "matched item:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_1f8

    .line 1317
    iput v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1318
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1320
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    goto/16 :goto_171

    .line 1322
    :cond_1f8
    const-string v0, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check!! mPeersConnected.getPreferenceCount():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_171

    .line 1331
    :cond_218
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_3c

    .line 1332
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    goto/16 :goto_3c

    .line 1281
    :catch_221
    move-exception v1

    goto/16 :goto_11b
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1125
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfdConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bStartConnectingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_43

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    if-nez v0, :cond_43

    .line 1128
    instance-of v0, p2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_43

    move-object v0, p2

    .line 1129
    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 1130
    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/settings/wifi/p2p/WifiP2pPeer;)V

    .line 1131
    const-string v0, "WfdPickerActivity"

    const-string v1, "user press to connect!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :cond_43
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 1045
    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v1, :cond_10

    .line 1047
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1048
    .local v0, searchMenu:Landroid/view/MenuItem;
    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    if-eqz v1, :cond_11

    .line 1049
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1054
    .end local v0           #searchMenu:Landroid/view/MenuItem;
    :cond_10
    :goto_10
    return-void

    .line 1051
    .restart local v0       #searchMenu:Landroid/view/MenuItem;
    :cond_11
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_10
.end method

.method public onResume()V
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x3

    .line 763
    const-string v1, "WfdPickerActivity"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 765
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 767
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getLastConnectedDeviceInfo()V

    .line 769
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 771
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    if-eqz v1, :cond_27

    .line 772
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    invoke-virtual {v1}, Lcom/android/settings/wfd/WfdSwitchEnabler;->resume()V

    .line 775
    :cond_27
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v1, :cond_36

    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCanShake:Z

    if-eqz v1, :cond_36

    .line 776
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v1, v2, v5}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 779
    :cond_36
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v1, :cond_6c

    .line 780
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWFDSettingState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    .line 782
    .local v0, state:I
    if-lt v0, v4, :cond_72

    .line 795
    sget-object v1, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_67

    .line 796
    sget-object v1, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 800
    :cond_67
    if-lt v0, v6, :cond_6d

    .line 801
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 812
    .end local v0           #state:I
    :cond_6c
    :goto_6c
    return-void

    .line 803
    .restart local v0       #state:I
    :cond_6d
    if-ne v0, v4, :cond_6c

    .line 804
    iput v6, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    goto :goto_6c

    .line 807
    :cond_72
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v1

    if-eqz v1, :cond_6c

    iget v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-ne v1, v4, :cond_6c

    .line 808
    iput v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 809
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V

    goto :goto_6c
.end method

.method public setAutoConnStarted()V
    .registers 2

    .prologue
    .line 1474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 1475
    return-void
.end method

.method setWfdEnabled()V
    .registers 4

    .prologue
    .line 480
    const-string v1, "WfdPickerActivity"

    const-string v2, "setWfdEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v1, "wfd"

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wfd/WfdManager;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 482
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v1, :cond_31

    .line 483
    const-string v1, "WfdPickerActivity"

    const-string v2, "AllShare Cast is turned on..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    .line 490
    :goto_22
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DISPLAY_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .local v0, actionIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 492
    return-void

    .line 486
    .end local v0           #actionIntent:Landroid/content/Intent;
    :cond_31
    const-string v1, "WfdPickerActivity"

    const-string v2, "mWfdManager is null !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public showDialogp(I)V
    .registers 2
    .parameter "id"

    .prologue
    .line 1478
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    .line 1479
    return-void
.end method

.method startScanningWfdPickerDialog()V
    .registers 3

    .prologue
    .line 472
    const-string v0, "WfdPickerActivity"

    const-string v1, "startScanningWfdPickerDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_10

    .line 474
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V

    .line 476
    :cond_10
    return-void
.end method

.method stopScanningWfdPickerDialog(Z)V
    .registers 5
    .parameter "stopPeerDiscovery"

    .prologue
    .line 464
    const-string v0, "WfdPickerActivity"

    const-string v1, "stopScanningWfdPickerDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    if-eqz p1, :cond_11

    .line 466
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 468
    :cond_11
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->finishScanDevice(I)V

    .line 469
    return-void
.end method

.method updateScreenOnDisabled()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 1775
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1776
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1778
    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_17

    .line 1779
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1780
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1783
    :cond_17
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1784
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1786
    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v1, :cond_2b

    .line 1787
    const v1, 0x7f0903a9

    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->addMessagePreference(I)V

    .line 1789
    :cond_2b
    return-void
.end method

.method updateScreenOnEnabled()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1792
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1794
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1795
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 1798
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1799
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v2, 0x7f090368

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->setTitle(I)V

    .line 1800
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1802
    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_2d

    .line 1803
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1804
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1806
    :cond_2d
    return-void
.end method
