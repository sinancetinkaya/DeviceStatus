.class public Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;
.super Ljava/lang/Object;
.source "FactoryTestMainInnerEarphone.java"


# static fields
.field private static mStatusEarJack:I


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandlerFeedback:Landroid/os/Handler;

.field private mHandlerResult:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mTestInnerLoopback:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mStatusEarJack:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Landroid/widget/ListView;Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;)V
    .registers 7
    .parameter "context"
    .parameter "result"
    .parameter "feedback"
    .parameter "listView"
    .parameter "testInnerLoopback"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "FactoryTestMainInnerEarphone"

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->CLASS_NAME:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone$1;-><init>(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;)V

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 34
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mHandlerResult:Landroid/os/Handler;

    .line 36
    iput-object p3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mHandlerFeedback:Landroid/os/Handler;

    .line 37
    iput-object p4, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mListView:Landroid/widget/ListView;

    .line 38
    iput-object p5, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mTestInnerLoopback:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;

    .line 40
    invoke-direct {p0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->registerTestReceiver()V

    .line 41
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 18
    sget v0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mStatusEarJack:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 18
    sput p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mStatusEarJack:I

    return p0
.end method

.method static synthetic access$100(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;)Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mTestInnerLoopback:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private registerTestReceiver()V
    .registers 4

    .prologue
    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    .local v0, filter:Landroid/content/IntentFilter;
    const/16 v1, 0xc

    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getEnable(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 46
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    :cond_12
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    return-void
.end method

.method private sendMessageTestResult(IBB)V
    .registers 9
    .parameter "what"
    .parameter "id"
    .parameter "result"

    .prologue
    .line 153
    const-string v1, "FactoryTestMainInnerEarphone"

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

    .line 155
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mHandlerResult:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 156
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mHandlerResult:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    return-void
.end method

.method private stopSound()V
    .registers 4

    .prologue
    .line 143
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    .line 144
    .local v0, moduleAudio:Lcom/sec/factory/modules/ModuleAudio;
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isPlayingSound()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 145
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->stopMedia()V

    .line 146
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mHandlerFeedback:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 148
    :cond_15
    return-void
.end method


# virtual methods
.method public startEarkey(Z)V
    .registers 7
    .parameter "isPress"

    .prologue
    const/16 v4, 0xd

    const/4 v3, 0x1

    .line 126
    invoke-static {v4}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getEnable(I)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isEarphonePlugged()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 128
    if-eqz p1, :cond_23

    .line 129
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mHandlerFeedback:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mHandlerFeedback:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 138
    :cond_22
    :goto_22
    return-void

    .line 132
    :cond_23
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mHandlerFeedback:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 134
    sget v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT:I

    const/16 v1, 0x50

    invoke-direct {p0, v0, v4, v1}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->sendMessageTestResult(IBB)V

    goto :goto_22
.end method

.method public startEarphone(Z)V
    .registers 8
    .parameter "state"

    .prologue
    const/4 v5, 0x2

    .line 97
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    .line 98
    .local v0, moduleAudio:Lcom/sec/factory/modules/ModuleAudio;
    const-string v1, "FactoryTestMainInnerEarphone"

    const-string v2, "startEarphone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start Earphonestate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "IsEarplugged:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isEarphonePlugged()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6d

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isEarphonePlugged()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 101
    const-string v1, "FactoryTestMainInnerEarphone"

    const-string v2, "startEarphone"

    const-string v3, "Earphone Plugged=true"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->isPlayingSound()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 103
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 105
    :cond_56
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mHandlerFeedback:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mHandlerFeedback:Landroid/os/Handler;

    const-string v3, "Earphone Detected!"

    invoke-virtual {v2, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 107
    sget v1, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT:I

    const/16 v2, 0xc

    const/16 v3, 0x50

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->sendMessageTestResult(IBB)V

    .line 123
    :goto_6c
    return-void

    .line 110
    :cond_6d
    const-string v1, "FactoryTestMainInnerEarphone"

    const-string v2, "stopEarphone"

    const-string v3, "Earphone Plugged=false"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleDevice;->isVibrating()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 112
    invoke-direct {p0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->stopSound()V

    .line 113
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleDevice;->stopVibrate()V

    .line 116
    :cond_8e
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->isPlayingSound()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 117
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 120
    :cond_a4
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mHandlerFeedback:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mHandlerFeedback:Landroid/os/Handler;

    const-string v3, "Earphone Removed!"

    invoke-virtual {v2, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6c
.end method

.method public unregisterTestReceiver()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 52
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_15

    .line 53
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 54
    iput-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    const-string v0, "FactoryTestMainInnerEarphone"

    const-string v1, "unregisterTestReceiver"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_15
    return-void
.end method
