.class public Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtLooptest_dual.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 17
    const-string v0, "LOOPTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->CMD_NAME:Ljava/lang/String;

    .line 18
    const-string v0, "AtLoopback"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->CLASS_NAME:Ljava/lang/String;

    .line 19
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->NUM_ARGS:I

    .line 20
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
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleCommon;->getCPName()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, currentCP:Ljava/lang/String;
    array-length v2, p1

    iget v3, p0, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->NUM_ARGS:I

    if-eq v2, v3, :cond_11

    .line 28
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_62

    .line 116
    :goto_f
    monitor-exit p0

    return-object v2

    .line 31
    :cond_11
    :try_start_11
    const-string v2, "XMM6262"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 32
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "AtLooptest_dual"

    const-string v4, " is Cp2"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const-string v3, "cp2"

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->setPhoneType(Ljava/lang/String;)V

    .line 40
    :goto_29
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

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 41
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    .line 44
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4f
    :goto_4f
    move-object v2, v1

    .line 116
    goto :goto_f

    .line 36
    :cond_51
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "AtLooptest_dual"

    const-string v4, " is Cp1"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const-string v3, "cp1"

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->setPhoneType(Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_11 .. :try_end_61} :catchall_62

    goto :goto_29

    .line 24
    .end local v0           #currentCP:Ljava/lang/String;
    :catchall_62
    move-exception v2

    monitor-exit p0

    throw v2

    .line 45
    .restart local v0       #currentCP:Ljava/lang/String;
    :cond_65
    const/4 v2, 0x3

    :try_start_66
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

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 47
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    .line 50
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4f

    .line 51
    :cond_8c
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "2"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 53
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    .line 56
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4f

    .line 57
    :cond_b3
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "3"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 60
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v2

    if-nez v2, :cond_e3

    .line 61
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    .line 70
    :cond_da
    :goto_da
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4f

    .line 65
    :cond_e3
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v2

    if-eqz v2, :cond_da

    .line 66
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    goto :goto_da

    .line 71
    :cond_f3
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "4"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 73
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    .line 76
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4f

    .line 77
    :cond_11b
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "5"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_143

    .line 79
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    .line 82
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4f

    .line 83
    :cond_143
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "6"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 86
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "7"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19b

    .line 89
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v2

    if-nez v2, :cond_18b

    .line 90
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    .line 99
    :cond_182
    :goto_182
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4f

    .line 94
    :cond_18b
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v2

    if-eqz v2, :cond_182

    .line 95
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    goto :goto_182

    .line 100
    :cond_19b
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "8"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c3

    .line 102
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    .line 105
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4f

    .line 108
    :cond_1c3
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

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e9

    .line 109
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleAudio;->stopLoopback()V

    .line 111
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4f

    .line 113
    :cond_1e9
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_1eb
    .catchall {:try_start_66 .. :try_end_1eb} :catchall_62

    goto/16 :goto_4f
.end method
