.class public Lcom/sec/factory/modules/ModuleAudio;
.super Lcom/sec/factory/modules/ModuleObject;
.source "ModuleAudio.java"


# static fields
.field private static mInstance:Lcom/sec/factory/modules/ModuleAudio;


# instance fields
.field private final AUDIO_PATH:[Ljava/lang/String;

.field private final LOOPBACK_PATH:[Ljava/lang/String;

.field private final LOOPBACK_TYPE:[Ljava/lang/String;

.field private earKeyState:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mConnectionMode:Ljava/lang/String;

.field private mEarphonePlugged:Z

.field private mIsDoingLoopback:Z

.field private mLoopbackPreviousPath:I

.field private mLoopbackTestPath:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPacketLoop:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/factory/modules/ModuleAudio;->mInstance:Lcom/sec/factory/modules/ModuleAudio;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    const-string v0, "ModuleAudio"

    invoke-direct {p0, p1, v0}, Lcom/sec/factory/modules/ModuleObject;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "spk"

    aput-object v1, v0, v3

    const-string v1, "rcv"

    aput-object v1, v0, v4

    const-string v1, "ear"

    aput-object v1, v0, v5

    const-string v1, "hdmi"

    aput-object v1, v0, v6

    const-string v1, "off"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->AUDIO_PATH:[Ljava/lang/String;

    .line 256
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mic_rcv;"

    aput-object v1, v0, v3

    const-string v1, "mic_spk;"

    aput-object v1, v0, v4

    const-string v1, "mic3_spk;"

    aput-object v1, v0, v5

    const-string v1, "mic_ear;"

    aput-object v1, v0, v6

    const-string v1, "mic2_spk;"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ear_ear;"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dualmic_rcv;"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->LOOPBACK_PATH:[Ljava/lang/String;

    .line 264
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "packet;"

    aput-object v1, v0, v3

    const-string v1, "pcm;"

    aput-object v1, v0, v4

    const-string v1, "realtime"

    aput-object v1, v0, v5

    const-string v1, "codec"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->LOOPBACK_TYPE:[Ljava/lang/String;

    .line 268
    iput-boolean v3, p0, Lcom/sec/factory/modules/ModuleAudio;->mIsDoingLoopback:Z

    .line 269
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mLoopbackTestPath:I

    .line 270
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mLoopbackPreviousPath:I

    .line 271
    iput-boolean v3, p0, Lcom/sec/factory/modules/ModuleAudio;->mEarphonePlugged:Z

    .line 273
    iput-boolean v3, p0, Lcom/sec/factory/modules/ModuleAudio;->mPacketLoop:Z

    .line 383
    iput v3, p0, Lcom/sec/factory/modules/ModuleAudio;->earKeyState:I

    .line 22
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleAudio"

    const-string v2, "Create ModuleAudio"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleAudio;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mAudioManager:Landroid/media/AudioManager;

    .line 25
    const-string v0, "MODEL_COMMUNICATION_MODE"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mConnectionMode:Ljava/lang/String;

    .line 26
    const-string v0, "SUPPORT_PACKET_LOOPBACK"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mPacketLoop:Z

    .line 27
    return-void
.end method

.method public static instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;
    .registers 2
    .parameter "context"

    .prologue
    .line 30
    sget-object v0, Lcom/sec/factory/modules/ModuleAudio;->mInstance:Lcom/sec/factory/modules/ModuleAudio;

    if-nez v0, :cond_b

    .line 31
    new-instance v0, Lcom/sec/factory/modules/ModuleAudio;

    invoke-direct {v0, p0}, Lcom/sec/factory/modules/ModuleAudio;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/factory/modules/ModuleAudio;->mInstance:Lcom/sec/factory/modules/ModuleAudio;

    .line 33
    :cond_b
    sget-object v0, Lcom/sec/factory/modules/ModuleAudio;->mInstance:Lcom/sec/factory/modules/ModuleAudio;

    return-object v0
.end method

.method public static isSupportSecondMicTest()Z
    .registers 3

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, result:Z
    const-string v1, "SUPPORT_SECOND_MIC_TEST"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 376
    return v0
.end method

.method private release()V
    .registers 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "release"

    const-string v2, "release ModuleAudio"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_15

    .line 144
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 147
    :cond_15
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleAudio;->release()V

    .line 401
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 402
    return-void
.end method

.method public getCurrentLoopbackPath()I
    .registers 2

    .prologue
    .line 340
    iget v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mLoopbackTestPath:I

    return v0
.end method

.method public getEarKeyState()I
    .registers 2

    .prologue
    .line 395
    iget v0, p0, Lcom/sec/factory/modules/ModuleAudio;->earKeyState:I

    return v0
.end method

.method public getMicCount()I
    .registers 3

    .prologue
    .line 368
    const/4 v0, 0x2

    .line 369
    .local v0, nMic:I
    const-string v1, "MIC_COUNT"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 370
    return v0
.end method

.method public getPreviousLoopbackPath()I
    .registers 2

    .prologue
    .line 344
    iget v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mLoopbackPreviousPath:I

    return v0
.end method

.method public getStreamMusicVolume()I
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public getStreamMusicVolumeIndex()I
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public isConnectionModeNone()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, ret:Z
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleAudio;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "isConnectionModeNone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mConnectionMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/ModuleAudio;->mConnectionMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v2, "none"

    iget-object v3, p0, Lcom/sec/factory/modules/ModuleAudio;->mConnectionMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    move v0, v1

    .line 361
    :goto_29
    if-ne v0, v1, :cond_30

    iget-boolean v1, p0, Lcom/sec/factory/modules/ModuleAudio;->mPacketLoop:Z

    if-eqz v1, :cond_30

    .line 362
    const/4 v0, 0x0

    .line 364
    :cond_30
    return v0

    .line 359
    :cond_31
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public isDoingLoopback()Z
    .registers 2

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mIsDoingLoopback:Z

    return v0
.end method

.method public isEarphonePlugged()Z
    .registers 3

    .prologue
    .line 348
    const-string v1, "EARJACK_PLUGGED"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, state:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 350
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    :goto_11
    iput-boolean v1, p0, Lcom/sec/factory/modules/ModuleAudio;->mEarphonePlugged:Z

    .line 352
    :cond_13
    iget-boolean v1, p0, Lcom/sec/factory/modules/ModuleAudio;->mEarphonePlugged:Z

    return v1

    .line 350
    :cond_16
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public isPlayingSound()Z
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public playMedia(IZ)V
    .registers 4
    .parameter "resId"
    .parameter "isLoop"

    .prologue
    .line 81
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/factory/modules/ModuleAudio;->playMedia(IZI)V

    .line 82
    return-void
.end method

.method public playMedia(IZI)V
    .registers 8
    .parameter "resId"
    .parameter "isLoop"
    .parameter "direction"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "playMedia"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isLoop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleAudio;->release()V

    .line 93
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleAudio;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 94
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 95
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 96
    return-void
.end method

.method public playMedia(Ljava/lang/String;Z)V
    .registers 4
    .parameter "dataSource"
    .parameter "isLoop"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/factory/modules/ModuleAudio;->playMedia(Ljava/lang/String;ZI)V

    .line 86
    return-void
.end method

.method public playMedia(Ljava/lang/String;ZI)V
    .registers 9
    .parameter "dataSource"
    .parameter "isLoop"
    .parameter "direction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 100
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "playMedia"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataSource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isLoop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleAudio;->release()V

    .line 103
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/factory/modules/ModuleAudio;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 105
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 106
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 107
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 108
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 110
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 111
    return-void
.end method

.method public sendToAudioManagerFTAOnOff(Z)V
    .registers 8
    .parameter "on"

    .prologue
    .line 37
    const-string v1, "com.sec.factory.app.factorytest.FTA_ON"

    .line 38
    .local v1, ON:Ljava/lang/String;
    const-string v0, "com.sec.factory.app.factorytest.FTA_OFF"

    .line 40
    .local v0, OFF:Ljava/lang/String;
    if-nez p1, :cond_1a

    .line 41
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleAudio;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "sendToAudioManagerFTAOnOff"

    const-string v5, " com.sec.factory.app.factorytest.FTA_OFF"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sec/factory/modules/ModuleAudio;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    .end local v2           #intent:Landroid/content/Intent;
    :goto_19
    return-void

    .line 44
    :cond_1a
    const/4 v3, 0x1

    if-ne p1, v3, :cond_31

    .line 45
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleAudio;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "sendToAudioManagerFTAOnOff"

    const-string v5, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sec/factory/modules/ModuleAudio;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_19

    .line 49
    .end local v2           #intent:Landroid/content/Intent;
    :cond_31
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleAudio;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "sendToAudioManagerFTAOnOff"

    const-string v5, "Invalid parameter"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public setAudioPath(I)V
    .registers 6
    .parameter "path"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioPath : factory_test_route="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/ModuleAudio;->AUDIO_PATH:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "factory_test_route="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/modules/ModuleAudio;->AUDIO_PATH:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public setEarKeyState(I)V
    .registers 2
    .parameter "earKeyState"

    .prologue
    .line 391
    iput p1, p0, Lcom/sec/factory/modules/ModuleAudio;->earKeyState:I

    .line 392
    return-void
.end method

.method public setLoopbackPath(I)V
    .registers 6
    .parameter "path"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setLoopbackPath"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change Loopback path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeMax()V

    .line 330
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "factory_test_path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/modules/ModuleAudio;->LOOPBACK_PATH:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 331
    iget v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mLoopbackTestPath:I

    iput v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mLoopbackPreviousPath:I

    .line 332
    iput p1, p0, Lcom/sec/factory/modules/ModuleAudio;->mLoopbackTestPath:I

    .line 333
    return-void
.end method

.method public setMode(I)V
    .registers 6
    .parameter "mode"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMode(I)V

    .line 229
    return-void
.end method

.method public setPhoneType(Ljava/lang/String;)V
    .registers 6
    .parameter "phoneType"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setPhoneType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phone type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public setStreamMusicVolume(I)V
    .registers 8
    .parameter "volume"

    .prologue
    const/16 v1, 0x64

    const/4 v5, 0x3

    const/4 v0, 0x0

    .line 186
    if-le p1, v1, :cond_7

    move p1, v1

    .line 187
    :cond_7
    if-gez p1, :cond_a

    move p1, v0

    .line 189
    :cond_a
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleAudio;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "setStreamMusicVolume"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volme="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 192
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleAudio;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 194
    :cond_30
    if-nez p1, :cond_38

    .line 195
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleAudio;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5, v0, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 200
    :goto_37
    return-void

    .line 197
    :cond_38
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleAudio;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/sec/factory/modules/ModuleAudio;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    mul-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v5, v2, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_37
.end method

.method public setStreamMusicVolumeIndex(I)V
    .registers 8
    .parameter "volumeIndex"

    .prologue
    const/16 v1, 0xf

    const/4 v5, 0x3

    const/4 v0, 0x0

    .line 207
    if-le p1, v1, :cond_7

    move p1, v1

    .line 208
    :cond_7
    if-gez p1, :cond_a

    move p1, v0

    .line 210
    :cond_a
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleAudio;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "setStreamMusicVolumeIndex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volme Index ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 213
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleAudio;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 215
    :cond_30
    if-nez p1, :cond_38

    .line 216
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleAudio;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5, v0, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 220
    :goto_37
    return-void

    .line 218
    :cond_38
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleAudio;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5, p1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_37
.end method

.method public setStreamMusicVolumeMax()V
    .registers 2

    .prologue
    .line 154
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolume(I)V

    .line 155
    return-void
.end method

.method public setStreamMusicVolumeMaxIndex()V
    .registers 2

    .prologue
    .line 166
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeIndex(I)V

    .line 167
    return-void
.end method

.method public setStreamMusicVolumeMin()V
    .registers 2

    .prologue
    .line 158
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolume(I)V

    .line 159
    return-void
.end method

.method public setStreamMusicVolumeZero()V
    .registers 2

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolume(I)V

    .line 163
    return-void
.end method

.method public startLoopback(II)V
    .registers 7
    .parameter "path"
    .parameter "type"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startLoopback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loopback start path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeMax()V

    .line 290
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "factory_test_loopback=on;factory_test_path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/modules/ModuleAudio;->LOOPBACK_PATH:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "factory_test_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/modules/ModuleAudio;->LOOPBACK_TYPE:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mIsDoingLoopback:Z

    .line 294
    iput p1, p0, Lcom/sec/factory/modules/ModuleAudio;->mLoopbackTestPath:I

    .line 296
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v0

    if-eqz v0, :cond_75

    const/4 v0, 0x3

    if-eq p2, v0, :cond_75

    .line 297
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startLoopback"

    const-string v2, "none"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/factory/modules/ModuleAudio$1;

    invoke-direct {v1, p0}, Lcom/sec/factory/modules/ModuleAudio$1;-><init>(Lcom/sec/factory/modules/ModuleAudio;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 307
    :cond_75
    return-void
.end method

.method public stopLoopback()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 310
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startLoopback"

    const-string v2, "Loopback stop"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/sec/factory/modules/ModuleAudio;->isSupportSecondMicTest()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 313
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "dualmic_enabled=false"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 315
    :cond_17
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "factory_test_loopback=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/modules/ModuleAudio;->mIsDoingLoopback:Z

    .line 317
    iput v3, p0, Lcom/sec/factory/modules/ModuleAudio;->mLoopbackTestPath:I

    .line 318
    iput v3, p0, Lcom/sec/factory/modules/ModuleAudio;->mLoopbackPreviousPath:I

    .line 319
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 320
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudio;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "stopLoopback"

    const-string v2, "none"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 322
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleAudio;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/factory/modules/ModuleAudioService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 323
    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleAudio;->stopService(Landroid/content/Intent;)V

    .line 325
    :cond_45
    return-void
.end method

.method public stopMedia()V
    .registers 5

    .prologue
    .line 114
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleAudio;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "stopMedia"

    const-string v3, "Stop media"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleAudio;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_23

    .line 116
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleAudio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 118
    :try_start_12
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleAudio;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "stopMedia : delay"

    const-string v3, " : 10ms"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_20} :catch_24

    .line 123
    :goto_20
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleAudio;->release()V

    .line 125
    :cond_23
    return-void

    .line 120
    :catch_24
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_20
.end method
