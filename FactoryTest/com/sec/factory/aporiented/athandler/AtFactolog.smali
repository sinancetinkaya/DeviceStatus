.class public Lcom/sec/factory/aporiented/athandler/AtFactolog;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtFactolog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v0, "FACTOLOG"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFactolog;->CMD_NAME:Ljava/lang/String;

    .line 19
    const-string v0, "AtFactolog"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFactolog;->CLASS_NAME:Ljava/lang/String;

    .line 20
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtFactolog;->NUM_ARGS:I

    .line 21
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "argu"

    .prologue
    .line 27
    monitor-enter p0

    const/4 v1, 0x0

    .line 28
    .local v1, resData:Ljava/lang/String;
    :try_start_2
    array-length v2, p1

    iget v3, p0, Lcom/sec/factory/aporiented/athandler/AtFactolog;->NUM_ARGS:I

    if-eq v2, v3, :cond_b

    .line 29
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_76

    .line 79
    :goto_9
    monitor-exit p0

    return-object v2

    .line 48
    :cond_b
    const/4 v2, 0x2

    :try_start_c
    aget-object v2, p1, v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 49
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtFactolog;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFactolog;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModulePower;->doWakeLock(Z)V

    .line 51
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFactolog;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModulePower;->sendDvfsLockIntent()V

    .line 52
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFactolog;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModulePower;->sendAlarmManagerOnOff(Z)V

    .line 53
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFactolog;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModulePower;->setFactoryModeAtBatteryNode(Z)V

    .line 54
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFactolog;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleCommon;->setSwitchFactoryState()V

    .line 55
    const-string v2, "NEED_NOTI_AUDIO_MANAGER"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 56
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFactolog;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->sendToAudioManagerFTAOnOff(Z)V

    .line 62
    :goto_48
    const-string v2, "ril.factory_mode"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, currentStage:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFactolog;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "handleCommand()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FT TYPE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v0           #currentStage:Ljava/lang/String;
    :goto_6a
    move-object v2, v1

    .line 79
    goto :goto_9

    .line 58
    :cond_6c
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFactolog;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "handleCommand()"

    const-string v4, "sendToAudioManagerFTAOnOff : M0_EUR case"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_c .. :try_end_75} :catchall_76

    goto :goto_48

    .line 27
    :catchall_76
    move-exception v2

    monitor-exit p0

    throw v2

    .line 64
    :cond_79
    const/4 v2, 0x2

    :try_start_7a
    aget-object v2, p1, v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 65
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtFactolog;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFactolog;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModulePower;->setFactoryModeAtBatteryNode(Z)V

    .line 67
    const-string v2, "NEED_NOTI_AUDIO_MANAGER"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 68
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFactolog;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleAudio;->sendToAudioManagerFTAOnOff(Z)V

    goto :goto_6a

    .line 70
    :cond_a1
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFactolog;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "handleCommand()"

    const-string v4, "sendToAudioManagerFTAOnOff : M0_EUR case"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    .line 76
    :cond_ab
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_ad
    .catchall {:try_start_7a .. :try_end_ad} :catchall_76

    goto :goto_6a
.end method
