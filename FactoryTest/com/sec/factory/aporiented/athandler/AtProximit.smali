.class public Lcom/sec/factory/aporiented/athandler/AtProximit;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtProximit.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 15
    const-string v0, "PROXIMIT"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtProximit;->CMD_NAME:Ljava/lang/String;

    .line 16
    const-string v0, "AtProximit"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtProximit;->CLASS_NAME:Ljava/lang/String;

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtProximit;->NUM_ARGS:I

    .line 18
    return-void
.end method

.method private isSharpNonADCChipset()Z
    .registers 5

    .prologue
    .line 153
    sget v2, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_PROXIMITY:I

    sget v3, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_FILE:I

    invoke-static {v2, v3}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, data:Ljava/lang/String;
    const/4 v1, 0x0

    .line 156
    .local v1, isSharp:Z
    if-eqz v0, :cond_14

    .line 157
    const-string v2, "GP2AP002"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 158
    const/4 v1, 0x1

    .line 162
    :cond_14
    return v1
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "argu"

    .prologue
    .line 22
    monitor-enter p0

    const/4 v1, 0x0

    .line 24
    .local v1, resData:Ljava/lang/String;
    :try_start_2
    array-length v4, p1

    iget v5, p0, Lcom/sec/factory/aporiented/athandler/AtProximit;->NUM_ARGS:I

    if-eq v4, v5, :cond_b

    .line 25
    const-string v4, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_283

    .line 149
    :goto_9
    monitor-exit p0

    return-object v4

    .line 32
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

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 33
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtProximit;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v4}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 34
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtProximit;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_PROXIMITY:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 35
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v1

    :goto_31
    move-object v4, v1

    .line 149
    goto :goto_9

    .line 37
    :cond_33
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    .line 45
    :cond_3b
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 46
    const/4 v4, 0x1

    new-array v3, v4, [I

    const/4 v4, 0x0

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_PROXIMITY:I

    aput v5, v3, v4

    .line 49
    .local v3, senserID:[I
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtProximit;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_PROXIMITY:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-nez v4, :cond_65

    .line 50
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtProximit;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v4, v3}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([I)V

    .line 53
    :cond_65
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtProximit;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_PROXIMITY:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 54
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    .line 56
    :cond_77
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    .line 61
    .end local v3           #senserID:[I
    :cond_7c
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "2"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 62
    invoke-direct {p0}, Lcom/sec/factory/aporiented/athandler/AtProximit;->isSharpNonADCChipset()Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 63
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtProximit;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_PROXIMITY:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 64
    const-string v4, "PROXI_SENSOR_OFFSET"

    const-string v5, "0"

    invoke-static {v4, v5}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 65
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    .line 67
    :cond_b1
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31

    .line 70
    :cond_ba
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31

    .line 73
    :cond_c3
    const-string v4, "PROXI_SENSOR_OFFSET"

    const-string v5, "0"

    invoke-static {v4, v5}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e9

    .line 74
    const-string v4, "PROXI_SENSOR_OFFSET"

    const-string v5, "1"

    invoke-static {v4, v5}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e0

    .line 75
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31

    .line 77
    :cond_e0
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31

    .line 80
    :cond_e9
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31

    .line 85
    :cond_f2
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "3"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13a

    invoke-direct {p0}, Lcom/sec/factory/aporiented/athandler/AtProximit;->isSharpNonADCChipset()Z

    move-result v4

    if-eqz v4, :cond_13a

    .line 86
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtProximit;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_PROXIMITY:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-eqz v4, :cond_131

    .line 87
    const-string v4, "PROXI_SENSOR_OFFSET"

    const-string v5, "1"

    invoke-static {v4, v5}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_128

    .line 88
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31

    .line 90
    :cond_128
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31

    .line 93
    :cond_131
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31

    .line 97
    :cond_13a
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "4"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_182

    invoke-direct {p0}, Lcom/sec/factory/aporiented/athandler/AtProximit;->isSharpNonADCChipset()Z

    move-result v4

    if-eqz v4, :cond_182

    .line 98
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtProximit;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_PROXIMITY:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-eqz v4, :cond_179

    .line 99
    const-string v4, "PROXI_SENSOR_OFFSET"

    const-string v5, "2"

    invoke-static {v4, v5}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_170

    .line 100
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31

    .line 102
    :cond_170
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31

    .line 105
    :cond_179
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31

    .line 113
    :cond_182
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "0"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1dc

    .line 114
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtProximit;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_PROXIMITY:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-eqz v4, :cond_1d3

    .line 115
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtProximit;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_PROXIMITY:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, result:[Ljava/lang/String;
    if-eqz v2, :cond_1ca

    .line 117
    const/4 v4, 0x2

    aget-object v4, v2, v4

    const-string v5, "0.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1bf

    .line 118
    const/4 v4, 0x0

    aget-object v4, p1, v4

    const-string v5, "FOUND"

    invoke-virtual {p0, v4, v5}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31

    .line 120
    :cond_1bf
    const/4 v4, 0x0

    aget-object v4, p1, v4

    const-string v5, "NOT FOUND"

    invoke-virtual {p0, v4, v5}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31

    .line 123
    :cond_1ca
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31

    .line 126
    .end local v2           #result:[Ljava/lang/String;
    :cond_1d3
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31

    .line 132
    :cond_1dc
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f5

    .line 133
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31

    .line 134
    :cond_1f5
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "2"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_217

    .line 135
    const/4 v4, 0x0

    aget-object v4, p1, v4

    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtProximit;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v5}, Lcom/sec/factory/modules/ModuleCommon;->readProxiOffset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31

    .line 136
    :cond_217
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "3"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_239

    .line 137
    const/4 v4, 0x0

    aget-object v4, p1, v4

    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtProximit;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v5}, Lcom/sec/factory/modules/ModuleCommon;->readProxiADC()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31

    .line 138
    :cond_239
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "4"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27f

    invoke-direct {p0}, Lcom/sec/factory/aporiented/athandler/AtProximit;->isSharpNonADCChipset()Z

    move-result v4

    if-eqz v4, :cond_27f

    .line 139
    const-string v4, "PROXI_SENSOR_OFFSET"

    invoke-static {v4}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, mode:Ljava/lang/String;
    if-eqz v0, :cond_276

    .line 141
    const/4 v4, 0x0

    aget-object v4, p1, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MODE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31

    .line 143
    :cond_276
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtProximit;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31

    .line 146
    .end local v0           #mode:Ljava/lang/String;
    :cond_27f
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_281
    .catchall {:try_start_c .. :try_end_281} :catchall_283

    goto/16 :goto_31

    .line 22
    :catchall_283
    move-exception v4

    monitor-exit p0

    throw v4
.end method
