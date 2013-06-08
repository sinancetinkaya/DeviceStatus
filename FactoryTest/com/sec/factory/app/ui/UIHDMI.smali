.class public Lcom/sec/factory/app/ui/UIHDMI;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UIHDMI.java"


# instance fields
.field private FLAG_NV_WRITE:Z

.field private final HDMI_MSG:Ljava/lang/String;

.field private isMSM8260A:Z

.field private isMSM8960:Z

.field private isPegaPrime:Z

.field private isPegasus:Z

.field private isPegasusPrime:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIsTurnOffAudioPath:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 93
    const-string v0, "UIHDMI"

    const/16 v1, 0x17

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 20
    const-string v0, "HDMI Pattern Display On"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->HDMI_MSG:Ljava/lang/String;

    .line 21
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIHDMI;->FLAG_NV_WRITE:Z

    .line 22
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIHDMI;->mIsTurnOffAudioPath:Z

    .line 23
    const-string v0, "MSM8960"

    const-string v1, "CHIPSET_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->isMSM8960:Z

    .line 24
    const-string v0, "MSM8260A"

    const-string v1, "CHIPSET_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->isMSM8260A:Z

    .line 25
    const-string v0, "PegasusPrime"

    const-string v1, "CHIPSET_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->isPegasusPrime:Z

    .line 26
    const-string v0, "PegaPrime"

    const-string v1, "CHIPSET_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->isPegaPrime:Z

    .line 27
    const-string v0, "Pegasus"

    const-string v1, "CHIPSET_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->isPegasus:Z

    .line 29
    new-instance v0, Lcom/sec/factory/app/ui/UIHDMI$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIHDMI$1;-><init>(Lcom/sec/factory/app/ui/UIHDMI;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .parameter "className"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 20
    const-string v0, "HDMI Pattern Display On"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->HDMI_MSG:Ljava/lang/String;

    .line 21
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UIHDMI;->FLAG_NV_WRITE:Z

    .line 22
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UIHDMI;->mIsTurnOffAudioPath:Z

    .line 23
    const-string v0, "MSM8960"

    const-string v1, "CHIPSET_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->isMSM8960:Z

    .line 24
    const-string v0, "MSM8260A"

    const-string v1, "CHIPSET_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->isMSM8260A:Z

    .line 25
    const-string v0, "PegasusPrime"

    const-string v1, "CHIPSET_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->isPegasusPrime:Z

    .line 26
    const-string v0, "PegaPrime"

    const-string v1, "CHIPSET_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->isPegaPrime:Z

    .line 27
    const-string v0, "Pegasus"

    const-string v1, "CHIPSET_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->isPegasus:Z

    .line 29
    new-instance v0, Lcom/sec/factory/app/ui/UIHDMI$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIHDMI$1;-><init>(Lcom/sec/factory/app/ui/UIHDMI;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UIHDMI;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->isMSM8960:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UIHDMI;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->isMSM8260A:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UIHDMI;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->isPegasus:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UIHDMI;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->isPegasusPrime:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UIHDMI;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->isPegaPrime:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/factory/app/ui/UIHDMI;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->FLAG_NV_WRITE:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/factory/app/ui/UIHDMI;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UIHDMI;->FLAG_NV_WRITE:Z

    return p1
.end method

.method static synthetic access$602(Lcom/sec/factory/app/ui/UIHDMI;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UIHDMI;->mIsTurnOffAudioPath:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/factory/app/ui/UIHDMI;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIHDMI;->turnOffAudioPath()V

    return-void
.end method

.method private declared-synchronized turnOffAudioPath()V
    .registers 5

    .prologue
    .line 137
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->mIsTurnOffAudioPath:Z

    if-nez v0, :cond_2c

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->mIsTurnOffAudioPath:Z

    .line 139
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 140
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "turnOffAudioPath()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsTurnOffAudioPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/factory/app/ui/UIHDMI;->mIsTurnOffAudioPath:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 143
    :cond_2c
    monitor-exit p0

    return-void

    .line 137
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIHDMI;->setContentView(I)V

    .line 111
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIHDMI;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setRemoveSystemUI(Landroid/view/Window;Z)V

    .line 112
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeMax()V

    .line 113
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIHDMI;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIHDMI;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->stopMedia()V

    .line 149
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIHDMI;->turnOffAudioPath()V

    .line 150
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->stopMedia()V

    .line 152
    const-string v0, "OMAP4430"

    const-string v1, "CHIPSET_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 154
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleCommon;->setHDMIPatternSwitch(Ljava/lang/String;)Z

    .line 156
    :cond_2d
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 157
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 117
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    .local v0, mIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.samsungtest.HDMITEST_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIHDMI;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/factory/app/ui/UIHDMI;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    const-string v1, "OMAP4430"

    const-string v2, "CHIPSET_NAME"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 126
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleCommon;->setHDMIPatternSwitch(Ljava/lang/String;)Z

    .line 129
    :cond_2f
    iput-boolean v5, p0, Lcom/sec/factory/app/ui/UIHDMI;->mIsTurnOffAudioPath:Z

    .line 130
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIHDMI;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onResume()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsTurnOffAudioPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/factory/app/ui/UIHDMI;->mIsTurnOffAudioPath:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v1

    const v2, 0x7f050002

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->playMedia(IZ)V

    .line 133
    const-string v1, "HDMI Pattern Display On"

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 134
    return-void
.end method
