.class public Lcom/sec/factory/aporiented/athandler/AtAcsensor;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtAcsensor.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 13
    const-string v0, "ACSENSOR"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->CMD_NAME:Ljava/lang/String;

    .line 14
    const-string v0, "AtAcsensor"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->CLASS_NAME:Ljava/lang/String;

    .line 15
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->NUM_ARGS:I

    .line 16
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "argu"

    .prologue
    .line 20
    monitor-enter p0

    const/4 v0, 0x0

    .line 22
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v4, p1

    iget v5, p0, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->NUM_ARGS:I

    if-eq v4, v5, :cond_b

    .line 23
    const-string v4, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_21e

    .line 168
    :goto_9
    monitor-exit p0

    return-object v4

    .line 30
    :cond_b
    const/4 v4, 0x2

    :try_start_c
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "0"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 31
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v4}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 33
    const/4 v4, 0x4

    new-array v3, v4, [I

    const/4 v4, 0x0

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER:I

    aput v5, v3, v4

    const/4 v4, 0x1

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_SELF:I

    aput v5, v3, v4

    const/4 v4, 0x2

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_CAL:I

    aput v5, v3, v4

    const/4 v4, 0x3

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_INTPIN:I

    aput v5, v3, v4

    .line 37
    .local v3, senserID:[I
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v4, v3}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([I)V

    .line 39
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 40
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v3           #senserID:[I
    :cond_50
    :goto_50
    move-object v4, v0

    .line 168
    goto :goto_9

    .line 42
    .restart local v3       #senserID:[I
    :cond_52
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v0

    goto :goto_50

    .line 49
    .end local v3           #senserID:[I
    :cond_57
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 50
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v4}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 52
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 53
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v0

    goto :goto_50

    .line 55
    :cond_7e
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_50

    .line 62
    :cond_86
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "2"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_fe

    .line 63
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_CAL:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 64
    const-string v4, "ACCEL_SENSOR_CAL"

    const-string v5, "1"

    invoke-static {v4, v5}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 65
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_50

    .line 67
    :cond_b5
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_50

    .line 70
    :cond_bd
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v4}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 72
    const/4 v4, 0x1

    new-array v3, v4, [I

    const/4 v4, 0x0

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_CAL:I

    aput v5, v3, v4

    .line 73
    .restart local v3       #senserID:[I
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v4, v3}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([I)V

    .line 75
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_CAL:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 76
    const-string v4, "ACCEL_SENSOR_CAL"

    const-string v5, "1"

    invoke-static {v4, v5}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 77
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_50

    .line 79
    :cond_ec
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_50

    .line 82
    :cond_f5
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_50

    .line 90
    .end local v3           #senserID:[I
    :cond_fe
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "0"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_193

    .line 91
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-eqz v4, :cond_18a

    .line 92
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, result:[Ljava/lang/String;
    if-eqz v2, :cond_181

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x2

    aget-object v5, v2, v5

    const/4 v6, 0x6

    const/16 v7, 0x20

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->addDummyValue(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v5, v2, v5

    const/4 v6, 0x6

    const/16 v7, 0x20

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->addDummyValue(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    aget-object v5, v2, v5

    const/4 v6, 0x6

    const/16 v7, 0x20

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->addDummyValue(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, responseData:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(1,0) responseData => ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4, v1}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    goto/16 :goto_50

    .line 101
    .end local v1           #responseData:Ljava/lang/String;
    :cond_181
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_50

    .line 104
    .end local v2           #result:[Ljava/lang/String;
    :cond_18a
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_50

    .line 111
    :cond_193
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "4"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d8

    .line 112
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_SELF:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-eqz v4, :cond_1cf

    .line 113
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_SELF:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v2

    .line 114
    .restart local v2       #result:[Ljava/lang/String;
    if-eqz v2, :cond_1c6

    .line 115
    const/4 v4, 0x0

    aget-object v4, p1, v4

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_50

    .line 117
    :cond_1c6
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_50

    .line 120
    .end local v2           #result:[Ljava/lang/String;
    :cond_1cf
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_50

    .line 127
    :cond_1d8
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "5"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_232

    .line 132
    const-string v4, "ACCEL_SENSOR_CAL"

    invoke-static {v4}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, result:Ljava/lang/String;
    if-eqz v2, :cond_229

    .line 134
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-le v4, v5, :cond_221

    .line 135
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    :goto_203
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-eqz v4, :cond_217

    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_SELF:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-nez v4, :cond_50

    .line 141
    :cond_217
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v4}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V
    :try_end_21c
    .catchall {:try_start_c .. :try_end_21c} :catchall_21e

    goto/16 :goto_50

    .line 20
    .end local v2           #result:Ljava/lang/String;
    :catchall_21e
    move-exception v4

    monitor-exit p0

    throw v4

    .line 137
    .restart local v2       #result:Ljava/lang/String;
    :cond_221
    const/4 v4, 0x0

    :try_start_222
    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_203

    .line 144
    :cond_229
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_50

    .line 149
    .end local v2           #result:Ljava/lang/String;
    :cond_232
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "6"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_288

    .line 150
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_CAL:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-eqz v4, :cond_27f

    .line 151
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_INTPIN:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, result:[Ljava/lang/String;
    if-eqz v2, :cond_276

    .line 154
    const-string v4, "1"

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26d

    .line 155
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_50

    .line 157
    :cond_26d
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_50

    .line 160
    :cond_276
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_50

    .line 163
    .end local v2           #result:[Ljava/lang/String;
    :cond_27f
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_50

    .line 166
    :cond_288
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_28a
    .catchall {:try_start_222 .. :try_end_28a} :catchall_21e

    goto/16 :goto_50
.end method
