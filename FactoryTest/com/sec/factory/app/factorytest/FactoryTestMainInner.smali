.class public Lcom/sec/factory/app/factorytest/FactoryTestMainInner;
.super Ljava/lang/Object;
.source "FactoryTestMainInner.java"


# static fields
.field private static mPluggedChargeUSB:Z


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private final PLAYING_LEFT:I

.field private final PLAYING_RIGHT:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandlerFeedback:Landroid/os/Handler;

.field private mHandlerResult:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mPlayingSpeaker:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mPluggedChargeUSB:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Landroid/widget/ListView;)V
    .registers 6
    .parameter "context"
    .parameter "result"
    .parameter "feedback"
    .parameter "listView"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "FactoryTestMainInner"

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->CLASS_NAME:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mPlayingSpeaker:I

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->PLAYING_LEFT:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->PLAYING_RIGHT:I

    .line 261
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner$1;-><init>(Lcom/sec/factory/app/factorytest/FactoryTestMainInner;)V

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mHandlerResult:Landroid/os/Handler;

    .line 42
    iput-object p3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mHandlerFeedback:Landroid/os/Handler;

    .line 43
    iput-object p4, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mListView:Landroid/widget/ListView;

    .line 45
    invoke-direct {p0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->registerTestReceiver()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/factorytest/FactoryTestMainInner;IBB)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->sendMessageTestResult(IBB)V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mPluggedChargeUSB:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    sput-boolean p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mPluggedChargeUSB:Z

    return p0
.end method

.method static synthetic access$200(Lcom/sec/factory/app/factorytest/FactoryTestMainInner;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->startTimerForRestFlag(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/factory/app/factorytest/FactoryTestMainInner;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private playSound(IZ)V
    .registers 8
    .parameter "resID"
    .parameter "isDisplayedProgressFeedback"

    .prologue
    .line 316
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    .line 317
    .local v0, moduleAudio:Lcom/sec/factory/modules/ModuleAudio;
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isPlayingSound()Z

    move-result v1

    if-nez v1, :cond_f

    .line 318
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->stopMedia()V

    .line 320
    :cond_f
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/factory/modules/ModuleAudio;->playMedia(IZ)V

    .line 321
    if-eqz p2, :cond_23

    .line 322
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mHandlerFeedback:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mHandlerFeedback:Landroid/os/Handler;

    const/4 v3, 0x3

    const-string v4, "Media playing"

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 324
    :cond_23
    return-void
.end method

.method private registerTestReceiver()V
    .registers 4

    .prologue
    .line 243
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 244
    .local v0, filter:Landroid/content/IntentFilter;
    const/16 v1, 0x12

    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getEnable(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 245
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    :cond_12
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getEnable(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 248
    const-string v1, "com.sec.factory.app.factorytest.CALL_CONNECTION_DETECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    :cond_1f
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    return-void
.end method

.method private sendMessageTestResult(IBB)V
    .registers 9
    .parameter "what"
    .parameter "id"
    .parameter "result"

    .prologue
    .line 337
    const-string v1, "FactoryTestMainInner"

    const-string v2, "sendTestResultMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mHandlerResult:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 340
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mHandlerResult:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 341
    return-void
.end method

.method private startTimerForRestFlag(I)V
    .registers 6
    .parameter "ms"

    .prologue
    .line 350
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner$2;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner$2;-><init>(Lcom/sec/factory/app/factorytest/FactoryTestMainInner;)V

    .line 356
    .local v0, myTask:Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 357
    .local v1, timer:Ljava/util/Timer;
    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 358
    return-void
.end method

.method private stopSound()V
    .registers 4

    .prologue
    .line 327
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    .line 328
    .local v0, moduleAudio:Lcom/sec/factory/modules/ModuleAudio;
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isPlayingSound()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 329
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->stopMedia()V

    .line 330
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mHandlerFeedback:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 332
    :cond_15
    return-void
.end method


# virtual methods
.method public startBattery()V
    .registers 6

    .prologue
    .line 51
    const-string v2, "FactoryTestMainInner"

    const-string v3, "startBattery"

    const-string v4, "Start Battery"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/16 v0, 0x4e

    .line 54
    .local v0, result:B
    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/factory/modules/ModulePower;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModulePower;->isBatteryAuthPass()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 56
    const/16 v0, 0x50

    .line 57
    const-string v1, "Battery auth is PASS!"

    .line 64
    .local v1, resultText:Ljava/lang/String;
    :goto_1b
    sget v2, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT:I

    const/16 v3, 0xe

    invoke-direct {p0, v2, v3, v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->sendMessageTestResult(IBB)V

    .line 65
    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mHandlerFeedback:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mHandlerFeedback:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 67
    return-void

    .line 60
    .end local v1           #resultText:Ljava/lang/String;
    :cond_2f
    const/16 v0, 0x46

    .line 61
    const-string v1, "Battery auth is FAIL!"

    .restart local v1       #resultText:Ljava/lang/String;
    goto :goto_1b
.end method

.method public startLowFrequency()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 70
    const-string v1, "FactoryTestMainInner"

    const-string v2, "startLowFrequency"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->isPlayingSound()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 72
    const-string v1, "FactoryTestMainInner"

    const-string v2, "start low frequency"

    const-string v3, "Stop sound"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->stopSound()V

    .line 75
    :try_start_21
    const-string v1, "FactoryTestMainInner"

    const-string v2, "startLowFrequency : delay"

    const-string v3, " : 500ms"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_2f} :catch_3f

    .line 80
    :goto_2f
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 81
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 98
    :goto_3e
    return-void

    .line 77
    :catch_3f
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2f

    .line 84
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_44
    :try_start_44
    const-string v1, "FactoryTestMainInner"

    const-string v2, "startLowFrequency : delay"

    const-string v3, " : 20ms"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-wide/16 v1, 0x14

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_52} :catch_7a

    .line 89
    :goto_52
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 90
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 91
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeMax()V

    .line 92
    const v1, 0x7f050006

    invoke-direct {p0, v1, v4}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->playSound(IZ)V

    .line 95
    sget v1, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT:I

    const/16 v2, 0x21

    const/16 v3, 0x50

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->sendMessageTestResult(IBB)V

    goto :goto_3e

    .line 86
    :catch_7a
    move-exception v0

    .line 87
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_52
.end method

.method public startSDCard()V
    .registers 7

    .prologue
    .line 101
    const-string v3, "FactoryTestMainInner"

    const-string v4, "startSDCard"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/16 v1, 0x4e

    .line 104
    .local v1, result:B
    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    .line 105
    .local v0, mdevice:Lcom/sec/factory/modules/ModuleDevice;
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->isDetectExternalMemory()Z

    move-result v3

    if-eqz v3, :cond_34

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/factory/modules/ModuleDevice;->isMountedStorage(I)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 108
    const/16 v1, 0x50

    .line 109
    const-string v2, "SD card test is PASS!"

    .line 111
    .local v2, resultText:Ljava/lang/String;
    sget v3, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT:I

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4, v1}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->sendMessageTestResult(IBB)V

    .line 119
    :goto_27
    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mHandlerFeedback:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mHandlerFeedback:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    return-void

    .line 116
    .end local v2           #resultText:Ljava/lang/String;
    :cond_34
    const-string v2, "SD card test is FAIL!"

    .restart local v2       #resultText:Ljava/lang/String;
    goto :goto_27
.end method

.method public startSIMCard()V
    .registers 6

    .prologue
    .line 124
    const-string v2, "FactoryTestMainInner"

    const-string v3, "startSIMCard"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/16 v0, 0x4e

    .line 127
    .local v0, result:B
    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleDevice;->isSimCardExist()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 129
    const/16 v0, 0x50

    .line 130
    const-string v1, "SIM card test is PASS!"

    .line 132
    .local v1, resultText:Ljava/lang/String;
    sget v2, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT:I

    const/16 v3, 0x19

    invoke-direct {p0, v2, v3, v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->sendMessageTestResult(IBB)V

    .line 139
    :goto_21
    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mHandlerFeedback:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mHandlerFeedback:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    return-void

    .line 136
    .end local v1           #resultText:Ljava/lang/String;
    :cond_2e
    const-string v1, "SIM card test is FAIL!"

    .restart local v1       #resultText:Ljava/lang/String;
    goto :goto_21
.end method

.method public startSIMCard2()V
    .registers 6

    .prologue
    .line 144
    const-string v2, "FactoryTestMainInner"

    const-string v3, "startSIMCard2"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/16 v0, 0x4e

    .line 147
    .local v0, result:B
    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleDevice;->isSimCardExist2()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 149
    const/16 v0, 0x50

    .line 150
    const-string v1, "SIM card test 2 is PASS!"

    .line 151
    .local v1, resultText:Ljava/lang/String;
    sget v2, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT:I

    const/16 v3, 0x2f

    invoke-direct {p0, v2, v3, v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->sendMessageTestResult(IBB)V

    .line 158
    :goto_21
    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mHandlerFeedback:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mHandlerFeedback:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 160
    return-void

    .line 155
    .end local v1           #resultText:Ljava/lang/String;
    :cond_2e
    const-string v1, "SIM card test 2 is FAIL!"

    .restart local v1       #resultText:Ljava/lang/String;
    goto :goto_21
.end method

.method public startSpeaker()V
    .registers 9

    .prologue
    const/16 v7, 0x50

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 163
    const-string v0, "FactoryTestMainInner"

    const-string v1, "startSpeaker"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isPlayingSound()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 165
    invoke-direct {p0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->stopSound()V

    .line 166
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 167
    iget v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mPlayingSpeaker:I

    if-ne v0, v4, :cond_4c

    .line 168
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isEarphonePlugged()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 169
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 173
    :goto_3f
    const v0, 0x7f05000a

    invoke-direct {p0, v0, v3}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->playSound(IZ)V

    .line 174
    iput v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mPlayingSpeaker:I

    .line 177
    sget v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT:I

    invoke-direct {p0, v0, v5, v7}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->sendMessageTestResult(IBB)V

    .line 198
    :cond_4c
    :goto_4c
    return-void

    .line 171
    :cond_4d
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    goto :goto_3f

    .line 181
    :cond_57
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isEarphonePlugged()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 182
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 186
    :goto_6c
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeMax()V

    .line 187
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->getSpeakerCount()I

    move-result v0

    if-le v0, v3, :cond_99

    .line 188
    const v0, 0x7f05000a

    invoke-direct {p0, v0, v3}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->playSound(IZ)V

    .line 189
    iput v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mPlayingSpeaker:I

    .line 195
    :goto_89
    sget v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT:I

    invoke-direct {p0, v0, v5, v7}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->sendMessageTestResult(IBB)V

    goto :goto_4c

    .line 184
    :cond_8f
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    goto :goto_6c

    .line 191
    :cond_99
    const v0, 0x7f050001

    invoke-direct {p0, v0, v3}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->playSound(IZ)V

    goto :goto_89
.end method

.method public startSpeaker_r()V
    .registers 9

    .prologue
    const/16 v7, 0x50

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 201
    const-string v0, "FactoryTestMainInner"

    const-string v1, "startSpeaker_r"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isPlayingSound()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 203
    invoke-direct {p0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->stopSound()V

    .line 204
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 205
    iget v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mPlayingSpeaker:I

    if-ne v0, v4, :cond_4d

    .line 206
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isEarphonePlugged()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 207
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 211
    :goto_40
    const v0, 0x7f05000b

    invoke-direct {p0, v0, v4}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->playSound(IZ)V

    .line 212
    iput v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mPlayingSpeaker:I

    .line 215
    sget v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT:I

    invoke-direct {p0, v0, v6, v7}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->sendMessageTestResult(IBB)V

    .line 238
    :cond_4d
    :goto_4d
    return-void

    .line 209
    :cond_4e
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    goto :goto_40

    .line 219
    :cond_58
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isEarphonePlugged()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 220
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 224
    :goto_6d
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeMax()V

    .line 225
    const v0, 0x7f05000b

    invoke-direct {p0, v0, v4}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->playSound(IZ)V

    .line 228
    sget v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT:I

    invoke-direct {p0, v0, v6, v7}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->sendMessageTestResult(IBB)V

    .line 230
    iput v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mPlayingSpeaker:I

    goto :goto_4d

    .line 222
    :cond_84
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    goto :goto_6d
.end method

.method public unregisterTestReceiver()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_15

    .line 255
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 256
    iput-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 257
    const-string v0, "FactoryTestMainInner"

    const-string v1, "unregisterTestReceiver"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_15
    return-void
.end method
