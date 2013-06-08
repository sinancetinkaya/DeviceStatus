.class public Lcom/sec/factory/aporiented/athandler/AtFceptest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtFceptest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 12
    const-string v0, "FCEPTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFceptest;->CMD_NAME:Ljava/lang/String;

    .line 13
    const-string v0, "AtFceptest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFceptest;->CLASS_NAME:Ljava/lang/String;

    .line 14
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtFceptest;->NUM_ARGS:I

    .line 15
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "argu"

    .prologue
    .line 20
    monitor-enter p0

    const/4 v0, 0x0

    .line 22
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtFceptest;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 23
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_50

    .line 136
    :goto_9
    monitor-exit p0

    return-object v1

    .line 26
    :cond_b
    const/4 v1, 0x4

    :try_start_c
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

    const/4 v2, 0x3

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFceptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 31
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFceptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v1

    if-nez v1, :cond_40

    .line 32
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFceptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    .line 40
    :cond_37
    :goto_37
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFceptest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3e
    :goto_3e
    move-object v1, v0

    .line 136
    goto :goto_9

    .line 36
    :cond_40
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFceptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 37
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFceptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x5

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V
    :try_end_4f
    .catchall {:try_start_c .. :try_end_4f} :catchall_50

    goto :goto_37

    .line 20
    :catchall_50
    move-exception v1

    monitor-exit p0

    throw v1

    .line 41
    :cond_53
    const/4 v1, 0x4

    :try_start_54
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

    const/4 v2, 0x3

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFceptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 49
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFceptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v1

    if-nez v1, :cond_87

    .line 50
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFceptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    .line 58
    :cond_7f
    :goto_7f
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFceptest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 54
    :cond_87
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFceptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 55
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFceptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x5

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    goto :goto_7f

    .line 59
    :cond_97
    const/4 v1, 0x4

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

    const/4 v2, 0x3

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFceptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 64
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFceptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->stopLoopback()V

    .line 66
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFceptest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3e

    .line 67
    :cond_c2
    const/4 v1, 0x4

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

    const/4 v2, 0x3

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFceptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 79
    const/4 v1, 0x4

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

    const/4 v2, 0x3

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFceptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 91
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "2"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFceptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 102
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFceptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 109
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFceptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 118
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "2"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFceptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 120
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFceptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->isEarphonePlugged()Z

    move-result v1

    if-eqz v1, :cond_183

    .line 121
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string v2, "FOUND"

    invoke-virtual {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtFceptest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3e

    .line 123
    :cond_183
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string v2, "NOT FOUND"

    invoke-virtual {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtFceptest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3e

    .line 125
    :cond_18e
    const/4 v1, 0x4

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

    const/4 v2, 0x3

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFceptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 133
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_1ad
    .catchall {:try_start_54 .. :try_end_1ad} :catchall_50

    goto/16 :goto_3e
.end method
