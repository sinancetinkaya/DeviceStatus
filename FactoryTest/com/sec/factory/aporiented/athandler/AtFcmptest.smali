.class public Lcom/sec/factory/aporiented/athandler/AtFcmptest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtFcmptest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 17
    const-string v0, "FCMPTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->CMD_NAME:Ljava/lang/String;

    .line 18
    const-string v0, "AtFcmptest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->CLASS_NAME:Ljava/lang/String;

    .line 19
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->NUM_ARGS:I

    .line 20
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "argu"

    .prologue
    .line 24
    monitor-enter p0

    const/4 v1, 0x0

    .line 26
    .local v1, resData:Ljava/lang/String;
    :try_start_2
    array-length v2, p1

    iget v3, p0, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->NUM_ARGS:I

    if-eq v2, v3, :cond_b

    .line 27
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_124

    .line 82
    :goto_9
    monitor-exit p0

    return-object v2

    .line 30
    :cond_b
    :try_start_b
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->setMode(I)V

    .line 31
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleAudio;->stopMedia()V

    .line 32
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 35
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleDevice;->isMountedStorage(I)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 36
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3d
    .catchall {:try_start_b .. :try_end_3d} :catchall_124

    move-result-object v1

    .line 38
    :try_start_3e
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeZero()V

    .line 39
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleDevice;->getStoragePath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/1kHz.mp3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/factory/modules/ModuleAudio;->playMedia(Ljava/lang/String;Z)V

    .line 42
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeMax()V

    .line 43
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6e
    .catchall {:try_start_3e .. :try_end_6e} :catchall_124
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_6e} :catch_71

    move-result-object v1

    :goto_6f
    move-object v2, v1

    .line 82
    goto :goto_9

    .line 44
    :catch_71
    move-exception v0

    .line 45
    .local v0, e:Ljava/io/IOException;
    :try_start_72
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "handleCommand"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/factory/modules/ModuleDevice;->getStoragePath(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v1

    .line 49
    goto :goto_6f

    .line 51
    .end local v0           #e:Ljava/io/IOException;
    :cond_98
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v1

    goto :goto_6f

    .line 53
    :cond_9d
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "1"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 58
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleDevice;->isMountedStorage(I)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 59
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6f

    .line 61
    :cond_c6
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v1

    goto :goto_6f

    .line 63
    :cond_cb
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 68
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeZero()V

    .line 69
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const v3, 0x7f050007

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/factory/modules/ModuleAudio;->playMedia(IZ)V

    .line 70
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeMax()V

    .line 71
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6f

    .line 72
    :cond_ff
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "1"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_120

    .line 77
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtFcmptest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6f

    .line 79
    :cond_120
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_122
    .catchall {:try_start_72 .. :try_end_122} :catchall_124

    goto/16 :goto_6f

    .line 24
    :catchall_124
    move-exception v2

    monitor-exit p0

    throw v2
.end method
