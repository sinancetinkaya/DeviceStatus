.class public Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtFceptest_dual.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 16
    const-string v0, "FCEPTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->CMD_NAME:Ljava/lang/String;

    .line 17
    const-string v0, "AtFceptest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->CLASS_NAME:Ljava/lang/String;

    .line 18
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->NUM_ARGS:I

    .line 19
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "argu"

    .prologue
    .line 24
    monitor-enter p0

    const/4 v1, 0x0

    .line 25
    .local v1, resData:Ljava/lang/String;
    :try_start_2
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleCommon;->getCPName()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, currentCP:Ljava/lang/String;
    array-length v2, p1

    iget v3, p0, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->NUM_ARGS:I

    if-eq v2, v3, :cond_11

    .line 28
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_6f

    .line 150
    :goto_f
    monitor-exit p0

    return-object v2

    .line 31
    :cond_11
    :try_start_11
    const-string v2, "XMM6262"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 32
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "AtLooptest_dual"

    const-string v4, " is Cp2"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const-string v3, "cp2"

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->setPhoneType(Ljava/lang/String;)V

    .line 40
    :goto_29
    const/4 v2, 0x4

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

    const/4 v3, 0x3

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 45
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v2

    if-nez v2, :cond_72

    .line 46
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    .line 54
    :cond_55
    :goto_55
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5c
    :goto_5c
    move-object v2, v1

    .line 150
    goto :goto_f

    .line 36
    :cond_5e
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "AtLooptest_dual"

    const-string v4, " is Cp1"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const-string v3, "cp1"

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->setPhoneType(Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_11 .. :try_end_6e} :catchall_6f

    goto :goto_29

    .line 24
    .end local v0           #currentCP:Ljava/lang/String;
    :catchall_6f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 50
    .restart local v0       #currentCP:Ljava/lang/String;
    :cond_72
    :try_start_72
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 51
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v3, 0x5

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    goto :goto_55

    .line 55
    :cond_82
    const/4 v2, 0x4

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

    const/4 v3, 0x3

    const-string v4, "1"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 63
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v2

    if-nez v2, :cond_b6

    .line 64
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    .line 72
    :cond_ae
    :goto_ae
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5c

    .line 68
    :cond_b6
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 69
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v3, 0x5

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    goto :goto_ae

    .line 73
    :cond_c6
    const/4 v2, 0x4

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

    const/4 v3, 0x3

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 78
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleAudio;->stopLoopback()V

    .line 80
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5c

    .line 81
    :cond_f1
    const/4 v2, 0x4

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

    const/4 v3, 0x3

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 93
    const/4 v2, 0x4

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

    const/4 v3, 0x3

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 105
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "2"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 116
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 123
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 132
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "2"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1bd

    .line 134
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleAudio;->isEarphonePlugged()Z

    move-result v2

    if-eqz v2, :cond_1b2

    .line 135
    const/4 v2, 0x0

    aget-object v2, p1, v2

    const-string v3, "FOUND"

    invoke-virtual {p0, v2, v3}, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5c

    .line 137
    :cond_1b2
    const/4 v2, 0x0

    aget-object v2, p1, v2

    const-string v3, "NOT FOUND"

    invoke-virtual {p0, v2, v3}, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5c

    .line 139
    :cond_1bd
    const/4 v2, 0x4

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

    const/4 v3, 0x3

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 147
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_1dc
    .catchall {:try_start_72 .. :try_end_1dc} :catchall_6f

    goto/16 :goto_5c
.end method
