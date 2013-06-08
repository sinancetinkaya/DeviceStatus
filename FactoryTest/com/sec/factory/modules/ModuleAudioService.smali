.class public Lcom/sec/factory/modules/ModuleAudioService;
.super Landroid/app/Service;
.source "ModuleAudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/modules/ModuleAudioService$LocalBinder;
    }
.end annotation


# instance fields
.field private audioSource:I

.field buffer:[B

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private final mBinder:Landroid/os/IBinder;

.field private mBufferSize:I

.field private mConnectionMode:Ljava/lang/String;

.field private mCurrentState:I

.field public mHandler:Landroid/os/Handler;

.field private mIsHeadsetPlugged:Z

.field private mIsPlaying:Z

.field private mIsRecording:Z

.field private mReadBytes:I

.field private mRecorder:Landroid/media/AudioRecord;

.field private mThread:Ljava/lang/Thread;

.field private mWrittenBytes:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->audioSource:I

    .line 37
    iput v1, p0, Lcom/sec/factory/modules/ModuleAudioService;->mCurrentState:I

    .line 39
    iput-object v2, p0, Lcom/sec/factory/modules/ModuleAudioService;->mRecorder:Landroid/media/AudioRecord;

    .line 40
    iput-object v2, p0, Lcom/sec/factory/modules/ModuleAudioService;->mAudioTrack:Landroid/media/AudioTrack;

    .line 42
    iput-boolean v1, p0, Lcom/sec/factory/modules/ModuleAudioService;->mIsHeadsetPlugged:Z

    .line 43
    iput-boolean v1, p0, Lcom/sec/factory/modules/ModuleAudioService;->mIsRecording:Z

    .line 44
    iput-boolean v1, p0, Lcom/sec/factory/modules/ModuleAudioService;->mIsPlaying:Z

    .line 45
    iput v1, p0, Lcom/sec/factory/modules/ModuleAudioService;->mReadBytes:I

    iput v1, p0, Lcom/sec/factory/modules/ModuleAudioService;->mWrittenBytes:I

    .line 47
    iput v1, p0, Lcom/sec/factory/modules/ModuleAudioService;->mBufferSize:I

    .line 48
    iput-object v2, p0, Lcom/sec/factory/modules/ModuleAudioService;->buffer:[B

    .line 49
    iput-object v2, p0, Lcom/sec/factory/modules/ModuleAudioService;->mThread:Ljava/lang/Thread;

    .line 50
    iput-object v2, p0, Lcom/sec/factory/modules/ModuleAudioService;->mConnectionMode:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/sec/factory/modules/ModuleAudioService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/sec/factory/modules/ModuleAudioService$LocalBinder;-><init>(Lcom/sec/factory/modules/ModuleAudioService;)V

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mBinder:Landroid/os/IBinder;

    .line 62
    new-instance v0, Lcom/sec/factory/modules/ModuleAudioService$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/modules/ModuleAudioService$1;-><init>(Lcom/sec/factory/modules/ModuleAudioService;)V

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/modules/ModuleAudioService;)Landroid/media/AudioTrack;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mAudioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/factory/modules/ModuleAudioService;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleAudioService;->mAudioTrack:Landroid/media/AudioTrack;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/factory/modules/ModuleAudioService;)Landroid/media/AudioRecord;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mRecorder:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/factory/modules/ModuleAudioService;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleAudioService;->mRecorder:Landroid/media/AudioRecord;

    return-object p1
.end method

.method private setStreamMusicVolume(I)V
    .registers 8
    .parameter "volume"

    .prologue
    const/16 v1, 0x64

    const/4 v5, 0x3

    const/4 v0, 0x0

    .line 231
    if-le p1, v1, :cond_7

    move p1, v1

    .line 232
    :cond_7
    if-gez p1, :cond_a

    move p1, v0

    .line 234
    :cond_a
    const-string v1, "ModuleAudioService"

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

    .line 236
    if-nez p1, :cond_2c

    .line 237
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleAudioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5, v0, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 242
    :goto_2b
    return-void

    .line 239
    :cond_2c
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleAudioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/sec/factory/modules/ModuleAudioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    mul-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v5, v2, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_2b
.end method

.method private setStreamMusicVolumeMax()V
    .registers 2

    .prologue
    .line 211
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleAudioService;->setStreamMusicVolume(I)V

    .line 212
    return-void
.end method

.method private setStreamVolumeMax()V
    .registers 4

    .prologue
    .line 192
    const-string v0, "ModuleAudioService"

    const-string v1, "ModuleAudioService"

    const-string v2, "setVolumeMax"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleAudioService;->setStreamMusicVolumeMax()V

    .line 196
    return-void
.end method


# virtual methods
.method public InitLoopBack()V
    .registers 8

    .prologue
    const v2, 0xac44

    const/4 v4, 0x2

    const/4 v3, 0x3

    .line 88
    const-string v0, "ModuleAudioService"

    const-string v1, "ModuleAudioService"

    const-string v5, "InitLoopBack"

    invoke-static {v0, v1, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleAudioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mAudioManager:Landroid/media/AudioManager;

    .line 91
    const-string v0, "MODEL_COMMUNICATION_MODE"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mConnectionMode:Ljava/lang/String;

    .line 94
    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mBufferSize:I

    .line 95
    iget v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mBufferSize:I

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mBufferSize:I

    .line 96
    iget v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mBufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->buffer:[B

    .line 99
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lcom/sec/factory/modules/ModuleAudioService;->audioSource:I

    iget v5, p0, Lcom/sec/factory/modules/ModuleAudioService;->mBufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mRecorder:Landroid/media/AudioRecord;

    .line 106
    new-instance v0, Landroid/media/AudioTrack;

    iget v5, p0, Lcom/sec/factory/modules/ModuleAudioService;->mBufferSize:I

    const/4 v6, 0x1

    move v1, v3

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mAudioTrack:Landroid/media/AudioTrack;

    .line 108
    return-void
.end method

.method public StartLoopBack()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 145
    const-string v0, "ModuleAudioService"

    const-string v1, "ModuleAudioService"

    const-string v2, "StartLoopBack"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_21

    .line 147
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleAudioService;->setStreamVolumeMax()V

    .line 148
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 149
    iput-boolean v5, p0, Lcom/sec/factory/modules/ModuleAudioService;->mIsRecording:Z

    .line 153
    :cond_1d
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mRecorder:Landroid/media/AudioRecord;

    if-nez v0, :cond_22

    .line 182
    :cond_21
    :goto_21
    return-void

    .line 156
    :cond_22
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mRecorder:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/sec/factory/modules/ModuleAudioService;->buffer:[B

    iget v2, p0, Lcom/sec/factory/modules/ModuleAudioService;->mBufferSize:I

    invoke-virtual {v0, v1, v4, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    iput v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mReadBytes:I

    .line 157
    const/4 v0, -0x3

    iget v1, p0, Lcom/sec/factory/modules/ModuleAudioService;->mReadBytes:I

    if-eq v0, v1, :cond_90

    .line 158
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_21

    .line 161
    iget v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mWrittenBytes:I

    iget-object v1, p0, Lcom/sec/factory/modules/ModuleAudioService;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/sec/factory/modules/ModuleAudioService;->buffer:[B

    iget v3, p0, Lcom/sec/factory/modules/ModuleAudioService;->mReadBytes:I

    invoke-virtual {v1, v2, v4, v3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mWrittenBytes:I

    .line 162
    const-string v0, "ModuleAudioService"

    const-string v1, "ModuleAudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio recorder written bytes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/factory/modules/ModuleAudioService;->mWrittenBytes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_62
    iget-boolean v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mIsPlaying:Z

    if-nez v0, :cond_8b

    iget v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mWrittenBytes:I

    iget v1, p0, Lcom/sec/factory/modules/ModuleAudioService;->mBufferSize:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_8b

    .line 169
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_9a

    .line 170
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8b

    .line 171
    const-string v0, "ModuleAudioService"

    const-string v1, "ModuleAudioService"

    const-string v2, "AudioTrack start playing..."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 174
    iput-boolean v5, p0, Lcom/sec/factory/modules/ModuleAudioService;->mIsPlaying:Z

    .line 180
    :cond_8b
    :goto_8b
    iget-boolean v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mIsRecording:Z

    if-nez v0, :cond_1d

    goto :goto_21

    .line 165
    :cond_90
    const-string v0, "ModuleAudioService"

    const-string v1, "ModuleAudioService"

    const-string v2, "Audio recording failed!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    .line 177
    :cond_9a
    const-string v0, "ModuleAudioService"

    const-string v1, "ModuleAudioService"

    const-string v2, "AudioTrack create fail"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b
.end method

.method public StopLoopBack()V
    .registers 5

    .prologue
    .line 185
    const-string v0, "ModuleAudioService"

    const-string v1, "ModuleAudioService"

    const-string v2, "StopLoopBack"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mIsRecording:Z

    .line 188
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 189
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .parameter "intent"

    .prologue
    .line 140
    const-string v0, "ModuleAudioService"

    const-string v1, "ModuleAudioService"

    const-string v2, "onBind"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 116
    const-string v0, "ModuleAudioService"

    const-string v1, "ModuleAudioService"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleAudioService;->StopLoopBack()V

    .line 112
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 113
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x1

    .line 120
    const-string v0, "ModuleAudioService"

    const-string v1, "ModuleAudioService"

    const-string v2, "onStartCommand"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "STATE"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mCurrentState:I

    .line 122
    const-string v0, "ModuleAudioService"

    const-string v1, "ModuleAudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/factory/modules/ModuleAudioService;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleAudioService;->InitLoopBack()V

    .line 125
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/factory/modules/ModuleAudioService$2;

    invoke-direct {v1, p0}, Lcom/sec/factory/modules/ModuleAudioService$2;-><init>(Lcom/sec/factory/modules/ModuleAudioService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mThread:Ljava/lang/Thread;

    .line 130
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 132
    return v4
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .parameter "intent"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
