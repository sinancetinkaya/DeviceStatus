.class public Lcom/android/settings/MasterClearModemReset;
.super Landroid/app/Service;
.source "MasterClearModemReset.java"


# static fields
.field private static called:Z


# instance fields
.field private mDelayRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    new-instance v0, Lcom/android/settings/MasterClearModemReset$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClearModemReset$1;-><init>(Lcom/android/settings/MasterClearModemReset;)V

    iput-object v0, p0, Lcom/android/settings/MasterClearModemReset;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClearModemReset;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/MasterClearModemReset;->sendMasterClearIntent()V

    return-void
.end method

.method private sendMasterClearIntent()V
    .registers 3

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/MasterClearModemReset;->called:Z

    .line 88
    sget-boolean v0, Lcom/android/settings/MasterClearModemReset;->called:Z

    if-eqz v0, :cond_8

    .line 92
    :goto_7
    return-void

    .line 90
    :cond_8
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/MasterClearModemReset;->called:Z

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClearModemReset;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_7
.end method

.method private sendResetCommandToRIL()V
    .registers 6

    .prologue
    .line 52
    new-instance v0, Lcom/samsung/android/sec_platform_library/PacketBuilder;

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sec_platform_library/PacketBuilder;-><init>(BB)V

    .line 62
    .local v0, packet:Lcom/samsung/android/sec_platform_library/PacketBuilder;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/sec_platform_library/PacketBuilder;->addData(B)Lcom/samsung/android/sec_platform_library/PacketBuilder;

    .line 68
    iget-object v1, p0, Lcom/android/settings/MasterClearModemReset;->mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/PacketBuilder;->getPacket()[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MasterClearModemReset;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3f0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 69
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 103
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/MasterClearModemReset;->stopSelf()V

    .line 109
    :goto_c
    return-void

    .line 108
    :cond_d
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MasterClearModemReset;->mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    goto :goto_c
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/MasterClearModemReset;->mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    .line 114
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 115
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 9
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v4, 0x0

    .line 118
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 119
    const-string v3, "FACTORY"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 120
    .local v0, callByFactory:Z
    if-nez v0, :cond_10

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/MasterClearModemReset;->stopSelf()V

    .line 148
    :goto_f
    return-void

    .line 129
    :cond_10
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 130
    .local v2, progressDialog:Landroid/app/ProgressDialog;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 131
    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 132
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 133
    const v3, 0x1040187

    invoke-virtual {p0, v3}, Lcom/android/settings/MasterClearModemReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 136
    const-string v3, "MasterClearModemReset"

    const-string v4, "Modem reset started..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Lcom/android/settings/MasterClearModemReset;->sendResetCommandToRIL()V

    .line 139
    new-instance v3, Lcom/android/settings/MasterClearModemReset$2;

    invoke-direct {v3, p0}, Lcom/android/settings/MasterClearModemReset$2;-><init>(Lcom/android/settings/MasterClearModemReset;)V

    iput-object v3, p0, Lcom/android/settings/MasterClearModemReset;->mDelayRunnable:Ljava/lang/Runnable;

    .line 146
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 147
    .local v1, mTimerHandler:Landroid/os/Handler;
    iget-object v3, p0, Lcom/android/settings/MasterClearModemReset;->mDelayRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x4650

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_f
.end method
