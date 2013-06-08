.class public Lcom/sec/factory/aporiented/athandler/AtSpkstest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtSpkstest.java"


# instance fields
.field private final SLEEP_TIME:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 12
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->SLEEP_TIME:I

    .line 16
    const-string v0, "SPKSTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->CMD_NAME:Ljava/lang/String;

    .line 17
    const-string v0, "AtSpkstest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->CLASS_NAME:Ljava/lang/String;

    .line 18
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->NUM_ARGS:I

    .line 19
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "argu"

    .prologue
    .line 23
    monitor-enter p0

    const/4 v0, 0x0

    .line 25
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 26
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_286

    .line 136
    :goto_9
    monitor-exit p0

    return-object v1

    .line 29
    :cond_b
    :try_start_b
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->isPlayingSound()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 30
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->stopMedia()V

    .line 31
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleCommon;->sleepThread(I)V

    .line 34
    :cond_1f
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 37
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeZero()V

    .line 38
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const v2, 0x7f050007

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->playMedia(IZ)V

    .line 39
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleCommon;->sleepThread(I)V

    .line 40
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 41
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeMax()V

    .line 43
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5e
    move-object v1, v0

    .line 136
    goto :goto_9

    .line 44
    :cond_60
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 47
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeZero()V

    .line 48
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const v2, 0x7f050007

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->playMedia(IZ)V

    .line 49
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleCommon;->sleepThread(I)V

    .line 50
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 51
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeMin()V

    .line 53
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5e

    .line 54
    :cond_a0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 58
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeZero()V

    .line 59
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const v2, 0x7f050008

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->playMedia(IZ)V

    .line 60
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleCommon;->sleepThread(I)V

    .line 61
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 62
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeMax()V

    .line 64
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5e

    .line 65
    :cond_e1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 69
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeZero()V

    .line 70
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const v2, 0x7f050008

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->playMedia(IZ)V

    .line 71
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleCommon;->sleepThread(I)V

    .line 72
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 73
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeMin()V

    .line 75
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5e

    .line 76
    :cond_122
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_163

    .line 80
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeZero()V

    .line 81
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const v2, 0x7f050009

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->playMedia(IZ)V

    .line 82
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleCommon;->sleepThread(I)V

    .line 83
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 84
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeMax()V

    .line 86
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5e

    .line 87
    :cond_163
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a4

    .line 91
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeZero()V

    .line 92
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const v2, 0x7f050009

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->playMedia(IZ)V

    .line 93
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleCommon;->sleepThread(I)V

    .line 94
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 95
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeMin()V

    .line 97
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5e

    .line 98
    :cond_1a4
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "3"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e5

    .line 101
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeZero()V

    .line 102
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const v2, 0x7f050007

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->playMedia(IZ)V

    .line 103
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleCommon;->sleepThread(I)V

    .line 104
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 105
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeMax()V

    .line 107
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5e

    .line 108
    :cond_1e5
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "3"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_226

    .line 111
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeZero()V

    .line 112
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const v2, 0x7f050007

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->playMedia(IZ)V

    .line 113
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleCommon;->sleepThread(I)V

    .line 114
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 115
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeMin()V

    .line 117
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5e

    .line 118
    :cond_226
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "4"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24d

    .line 120
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 122
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5e

    .line 123
    :cond_24d
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_282

    .line 126
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 127
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeMax()V

    .line 128
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const v2, 0x7f050006

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->playMedia(IZ)V

    .line 130
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtSpkstest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5e

    .line 133
    :cond_282
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_284
    .catchall {:try_start_b .. :try_end_284} :catchall_286

    goto/16 :goto_5e

    .line 23
    :catchall_286
    move-exception v1

    monitor-exit p0

    throw v1
.end method
