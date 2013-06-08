.class public Lcom/sec/factory/aporiented/athandler/AtLooptest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtLooptest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 12
    const-string v0, "LOOPTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtLooptest;->CMD_NAME:Ljava/lang/String;

    .line 13
    const-string v0, "AtLoopback"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtLooptest;->CLASS_NAME:Ljava/lang/String;

    .line 14
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtLooptest;->NUM_ARGS:I

    .line 15
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "argu"

    .prologue
    .line 19
    monitor-enter p0

    const/4 v0, 0x0

    .line 21
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtLooptest;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 22
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_c0

    .line 101
    :goto_9
    monitor-exit p0

    return-object v1

    .line 25
    :cond_b
    const/4 v1, 0x3

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

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtLooptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 26
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtLooptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    .line 29
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtLooptest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_31
    :goto_31
    move-object v1, v0

    .line 101
    goto :goto_9

    .line 30
    :cond_33
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

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtLooptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 32
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtLooptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    .line 35
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtLooptest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 36
    :cond_5a
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "2"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtLooptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 38
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtLooptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    .line 41
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtLooptest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 42
    :cond_81
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "3"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtLooptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 45
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtLooptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v1

    if-nez v1, :cond_b0

    .line 46
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtLooptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    .line 55
    :cond_a8
    :goto_a8
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtLooptest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 50
    :cond_b0
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtLooptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 51
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtLooptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V
    :try_end_bf
    .catchall {:try_start_c .. :try_end_bf} :catchall_c0

    goto :goto_a8

    .line 19
    :catchall_c0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 56
    :cond_c3
    const/4 v1, 0x3

    :try_start_c4
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "4"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtLooptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 58
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtLooptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    .line 61
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtLooptest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    .line 62
    :cond_eb
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "5"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtLooptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_113

    .line 64
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtLooptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    .line 67
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtLooptest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    .line 68
    :cond_113
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "6"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtLooptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 71
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "7"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtLooptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16b

    .line 74
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtLooptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v1

    if-nez v1, :cond_15b

    .line 75
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtLooptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    .line 84
    :cond_152
    :goto_152
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtLooptest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    .line 79
    :cond_15b
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtLooptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v1

    if-eqz v1, :cond_152

    .line 80
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtLooptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x3

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    goto :goto_152

    .line 85
    :cond_16b
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "8"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtLooptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_193

    .line 87
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtLooptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    .line 90
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtLooptest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    .line 93
    :cond_193
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

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtLooptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b9

    .line 94
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtLooptest;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->stopLoopback()V

    .line 96
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtLooptest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    .line 98
    :cond_1b9
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_1bb
    .catchall {:try_start_c4 .. :try_end_1bb} :catchall_c0

    goto/16 :goto_31
.end method
