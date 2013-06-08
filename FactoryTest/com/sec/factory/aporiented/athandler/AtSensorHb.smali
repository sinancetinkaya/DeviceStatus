.class public Lcom/sec/factory/aporiented/athandler/AtSensorHb;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtSensorHb.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 24
    const-string v0, "SENSORHB"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->CMD_NAME:Ljava/lang/String;

    .line 25
    const-string v0, "AtSensorHb"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->CLASS_NAME:Ljava/lang/String;

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->NUM_ARGS:I

    .line 27
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter

    .prologue
    const-wide/16 v7, 0x1388

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 30
    monitor-enter p0

    .line 36
    :try_start_5
    array-length v2, p1

    iget v3, p0, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->NUM_ARGS:I

    if-eq v2, v3, :cond_e

    .line 37
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1ae

    .line 117
    :goto_c
    monitor-exit p0

    return-object v0

    .line 40
    :cond_e
    const/4 v2, 0x3

    :try_start_f
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

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_235

    .line 41
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "handleCommand"

    const-string v4, "start SensorHub test"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModulePower;->isHeldWakeLock()Z

    move-result v2

    .line 43
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAcquireWakelock: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v3}, Lcom/sec/factory/modules/ModuleCommon;->isFactorySim()Z

    move-result v3

    if-nez v3, :cond_5f

    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v3}, Lcom/sec/factory/modules/ModuleCommon;->isFactoryMode()Z

    move-result v3

    if-eqz v3, :cond_192

    .line 45
    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "handleCommand"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFactoryMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    if-eqz v1, :cond_90

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.STOP_FACTORY_TEST"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 50
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "handleCommand"

    const-string v4, "AlarmManager Enable"

    invoke-static {v0, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_90
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/factory/modules/ModulePower;->doPartialWakeLock(Z)V

    .line 55
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/factory/modules/ModulePower;->doWakeLock(Z)V

    .line 56
    const-string v0, "NEED_LPA_MODE_SET"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 57
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v3, "0"

    invoke-virtual {v0, v3}, Lcom/sec/factory/modules/ModuleDevice;->setLPAmode(Ljava/lang/String;)V

    .line 60
    :cond_ab
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->startSensorHubTest()V

    .line 62
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->context:Landroid/content/Context;

    const-class v4, Lcom/sec/factory/aporiented/WakeUpService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    const-string v3, "com.sec.factory.aporiented.athandler.AtSensorHb.WakeUp"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v3, "isAcquireWakelock"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 66
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->context:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 67
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v7

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 69
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->context:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V
    :try_end_ef
    .catchall {:try_start_f .. :try_end_ef} :catchall_1ae

    .line 73
    const-wide/16 v2, 0x1388

    :try_start_f1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f4
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_1ae
    .catch Ljava/lang/InterruptedException; {:try_start_f1 .. :try_end_f4} :catch_239

    .line 76
    :goto_f4
    :try_start_f4
    const-string v0, "NEED_LPA_MODE_SET"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 77
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v2, "2"

    invoke-virtual {v0, v2}, Lcom/sec/factory/modules/ModuleDevice;->setLPAmode(Ljava/lang/String;)V

    .line 80
    :cond_103
    if-eqz v1, :cond_11a

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.START_FACTORY_TEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 83
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "handleCommand"

    const-string v2, "AlarmManager disable"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11a
    .catchall {:try_start_f4 .. :try_end_11a} :catchall_1ae

    .line 87
    :cond_11a
    :try_start_11a
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->readSensorHubResult()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_125
    .catchall {:try_start_11a .. :try_end_125} :catchall_1ae
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_125} :catch_195

    move-result-object v0

    .line 95
    :goto_126
    :try_start_126
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "handleCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MCU name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  /  Selftest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  /  INT pin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "OK"

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b1

    const-string v1, "OK"

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b1

    .line 101
    const/4 v1, 0x0

    aget-object v1, p1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OK_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    :cond_192
    move v1, v0

    .line 44
    goto/16 :goto_5f

    .line 88
    :catch_195
    move-exception v0

    .line 89
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "handleCommand"

    const-string v2, "Firmware is broken - no sysfs"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 91
    const/4 v1, 0x1

    const-string v2, "NG"

    aput-object v2, v0, v1

    .line 92
    const/4 v1, 0x2

    const-string v2, "OK"

    aput-object v2, v0, v1
    :try_end_1ac
    .catchall {:try_start_126 .. :try_end_1ac} :catchall_1ae

    goto/16 :goto_126

    .line 30
    :catchall_1ae
    move-exception v0

    monitor-exit p0

    throw v0

    .line 102
    :cond_1b1
    :try_start_1b1
    const-string v1, "NG"

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c7

    .line 103
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string v1, "NG_SELF"

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 104
    :cond_1c7
    const-string v1, "NG"

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e8

    const-string v1, "NG"

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e8

    .line 105
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string v1, "NG_INT"

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 106
    :cond_1e8
    const-string v1, "OK"

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_209

    const-string v1, "NG"

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_209

    .line 107
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string v1, "NG_INT"

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 108
    :cond_209
    const-string v1, "NG"

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22a

    const-string v1, "OK"

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22a

    .line 109
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string v1, "NG_SELF"

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 111
    :cond_22a
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string v1, "NG_SELF"

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/aporiented/athandler/AtSensorHb;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 114
    :cond_235
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_237
    .catchall {:try_start_1b1 .. :try_end_237} :catchall_1ae

    goto/16 :goto_c

    .line 74
    :catch_239
    move-exception v0

    goto/16 :goto_f4
.end method
