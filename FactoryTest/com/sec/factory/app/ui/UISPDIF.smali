.class public Lcom/sec/factory/app/ui/UISPDIF;
.super Landroid/app/Activity;
.source "UISPDIF.java"


# static fields
.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mFacAdap:Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;

.field private static melody_test:Landroid/media/MediaPlayer;


# instance fields
.field private final BACK_KEY_EVENT_TIMELAG:J

.field private final TAG:Ljava/lang/String;

.field private isCharge:Z

.field private isDock:Z

.field private mBatteryStatus:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDigitalHeadsetPlugged:Z

.field private mIsStart:Z

.field private mPrevBackKeyEventTime:J

.field private mSpeakResultText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const-string v0, "SPDIF"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISPDIF;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UISPDIF;->mBatteryStatus:I

    .line 37
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UISPDIF;->isCharge:Z

    .line 38
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UISPDIF;->isDock:Z

    .line 39
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UISPDIF;->mIsDigitalHeadsetPlugged:Z

    .line 40
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UISPDIF;->mIsStart:Z

    .line 42
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UISPDIF;->BACK_KEY_EVENT_TIMELAG:J

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UISPDIF;->mPrevBackKeyEventTime:J

    .line 46
    new-instance v0, Lcom/sec/factory/app/ui/UISPDIF$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UISPDIF$1;-><init>(Lcom/sec/factory/app/ui/UISPDIF;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISPDIF;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private Charge2Pass()V
    .registers 3

    .prologue
    .line 97
    const-string v0, "SPDIF"

    const-string v1, "Charge2Pass "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISPDIF;->mSpeakResultText:Landroid/widget/TextView;

    const v1, 0x7f07005a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 99
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISPDIF;->mSpeakResultText:Landroid/widget/TextView;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->notifyDataSetChanged()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UISPDIF;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UISPDIF;->isDock:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/factory/app/ui/UISPDIF;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UISPDIF;->isDock:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UISPDIF;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UISPDIF;->mIsDigitalHeadsetPlugged:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/factory/app/ui/UISPDIF;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UISPDIF;->mIsDigitalHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UISPDIF;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UISPDIF;->isCharge:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/factory/app/ui/UISPDIF;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UISPDIF;->isCharge:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UISPDIF;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/sec/factory/app/ui/UISPDIF;->mBatteryStatus:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/factory/app/ui/UISPDIF;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/sec/factory/app/ui/UISPDIF;->mBatteryStatus:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UISPDIF;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISPDIF;->Charge2Pass()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/factory/app/ui/UISPDIF;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UISPDIF;->mIsStart:Z

    return v0
.end method

.method private registerBroadcastReceiver()V
    .registers 5

    .prologue
    .line 220
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    .local v2, pogopintIntentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    iget-object v3, p0, Lcom/sec/factory/app/ui/UISPDIF;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/sec/factory/app/ui/UISPDIF;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 225
    .local v1, dockIntentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    iget-object v3, p0, Lcom/sec/factory/app/ui/UISPDIF;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/sec/factory/app/ui/UISPDIF;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 229
    .local v0, dgtlHeadsetIntentFilter:Landroid/content/IntentFilter;
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    iget-object v3, p0, Lcom/sec/factory/app/ui/UISPDIF;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/sec/factory/app/ui/UISPDIF;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    return-void
.end method

.method private speak2testStart()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 165
    const-string v0, "SPDIF"

    const-string v1, "speakerTest Start!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v0, Lcom/sec/factory/app/ui/UISPDIF;->melody_test:Landroid/media/MediaPlayer;

    if-nez v0, :cond_26

    .line 168
    const v0, 0x7f050001

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    sput-object v0, Lcom/sec/factory/app/ui/UISPDIF;->melody_test:Landroid/media/MediaPlayer;

    .line 169
    sget-object v0, Lcom/sec/factory/app/ui/UISPDIF;->mAudioManager:Landroid/media/AudioManager;

    sget-object v1, Lcom/sec/factory/app/ui/UISPDIF;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 171
    sget-object v0, Lcom/sec/factory/app/ui/UISPDIF;->melody_test:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 173
    :cond_26
    return-void
.end method

.method private speak2testStop()V
    .registers 3

    .prologue
    .line 176
    const-string v0, "SPDIF"

    const-string v1, "speakerTest Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sget-object v0, Lcom/sec/factory/app/ui/UISPDIF;->melody_test:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_18

    .line 178
    sget-object v0, Lcom/sec/factory/app/ui/UISPDIF;->melody_test:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 179
    sget-object v0, Lcom/sec/factory/app/ui/UISPDIF;->melody_test:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 180
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/factory/app/ui/UISPDIF;->melody_test:Landroid/media/MediaPlayer;

    .line 186
    :cond_18
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 109
    const-string v0, "SPDIF"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISPDIF;->setContentView(I)V

    .line 112
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISPDIF;->registerBroadcastReceiver()V

    .line 113
    const-string v0, "SPDIF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onCreate - mBroadcastReceiver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISPDIF;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISPDIF;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;

    sput-object v0, Lcom/sec/factory/app/ui/UISPDIF;->mFacAdap:Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;

    .line 115
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISPDIF;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setSystemKeyBlock(Landroid/content/ComponentName;I)V

    .line 116
    sget-object v0, Lcom/sec/factory/app/ui/UISPDIF;->mFacAdap:Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;

    if-nez v0, :cond_49

    .line 117
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/factory/app/ui/UISPDIF;->mFacAdap:Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;

    .line 120
    :cond_49
    const v0, 0x7f0901da

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISPDIF;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISPDIF;->mSpeakResultText:Landroid/widget/TextView;

    .line 122
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISPDIF;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/sec/factory/app/ui/UISPDIF;->mAudioManager:Landroid/media/AudioManager;

    .line 124
    iput-boolean v3, p0, Lcom/sec/factory/app/ui/UISPDIF;->isCharge:Z

    .line 125
    iput-boolean v3, p0, Lcom/sec/factory/app/ui/UISPDIF;->isDock:Z

    .line 126
    iput-boolean v3, p0, Lcom/sec/factory/app/ui/UISPDIF;->mIsDigitalHeadsetPlugged:Z

    .line 127
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISPDIF;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IsStart"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UISPDIF;->mIsStart:Z

    .line 129
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISPDIF;->speak2testStart()V

    .line 131
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 157
    const-string v0, "SPDIF"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISPDIF;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_10

    .line 159
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISPDIF;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISPDIF;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    :cond_10
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 162
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 14
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v9, 0x7d0

    const-wide/16 v7, -0x1

    .line 190
    sparse-switch p1, :sswitch_data_8e

    .line 215
    :goto_7
    iput-wide v7, p0, Lcom/sec/factory/app/ui/UISPDIF;->mPrevBackKeyEventTime:J

    .line 216
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_d
    return v0

    .line 192
    :sswitch_e
    const-string v0, "SPDIF"

    const-string v1, "KEYCODE_VOLUME_UP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 195
    :sswitch_16
    const-string v0, "SPDIF"

    const-string v1, "KEYCODE_VOLUME_DOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 198
    :sswitch_1e
    const-string v0, "UIBase"

    const-string v1, "onKeyDown"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEYCODE_BACK => Prev : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/factory/app/ui/UISPDIF;->mPrevBackKeyEventTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Curr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " => Time Lag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sec/factory/app/ui/UISPDIF;->mPrevBackKeyEventTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-wide v0, p0, Lcom/sec/factory/app/ui/UISPDIF;->mPrevBackKeyEventTime:J

    cmp-long v0, v0, v7

    if-eqz v0, :cond_86

    .line 203
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/factory/app/ui/UISPDIF;->mPrevBackKeyEventTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v9

    if-gez v0, :cond_7f

    .line 204
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISPDIF;->finish()V

    .line 211
    :goto_7d
    const/4 v0, 0x1

    goto :goto_d

    .line 206
    :cond_7f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UISPDIF;->mPrevBackKeyEventTime:J

    goto :goto_7d

    .line 209
    :cond_86
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UISPDIF;->mPrevBackKeyEventTime:J

    goto :goto_7d

    .line 190
    nop

    :sswitch_data_8e
    .sparse-switch
        0x4 -> :sswitch_1e
        0x18 -> :sswitch_e
        0x19 -> :sswitch_16
    .end sparse-switch
.end method

.method public onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 142
    const-string v0, "SPDIF"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 144
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISPDIF;->speak2testStop()V

    .line 145
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UISPDIF;->isCharge:Z

    .line 146
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UISPDIF;->isDock:Z

    .line 147
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UISPDIF;->mIsDigitalHeadsetPlugged:Z

    .line 148
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UISPDIF;->mIsStart:Z

    .line 154
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 135
    const-string v0, "SPDIF"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 138
    return-void
.end method
