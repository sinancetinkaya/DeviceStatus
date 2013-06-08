.class public Lcom/sec/factory/aporiented/athandler/AtGyroscop;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtGyroscop.java"


# instance fields
.field private mFeature:Ljava/lang/String;

.field private mSensorID:[I

.field protected mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 15
    sget v0, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GYRO:I

    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    invoke-static {v0, v1}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mFeature:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mSensorID:[I

    .line 21
    const-string v0, "GYROSCOP"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->CMD_NAME:Ljava/lang/String;

    .line 22
    const-string v0, "AtGyroscop"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->CLASS_NAME:Ljava/lang/String;

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->NUM_ARGS:I

    .line 25
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mSensorManager:Landroid/hardware/SensorManager;

    .line 26
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "argu"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 30
    monitor-enter p0

    :try_start_3
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mFeature : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mFeature:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 v4, 0x0

    .line 33
    .local v4, resData:Ljava/lang/String;
    array-length v10, p1

    iget v11, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->NUM_ARGS:I

    if-eq v10, v11, :cond_29

    .line 34
    const-string v8, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_126

    .line 150
    :goto_27
    monitor-exit p0

    return-object v8

    .line 41
    :cond_29
    const/4 v10, 0x2

    :try_start_2a
    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "0"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "0"

    aput-object v12, v10, v11

    invoke-virtual {p0, p1, v10}, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_66

    .line 42
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v8}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 44
    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mFeature:Ljava/lang/String;

    const-string v9, "INVENSENSE_MPU6050"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_55

    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mFeature:Ljava/lang/String;

    const-string v9, "INVENSENSE_MPU6051"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 45
    :cond_55
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_5c
    move-object v8, v4

    .line 150
    goto :goto_27

    .line 47
    :cond_5e
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5c

    .line 54
    :cond_66
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "0"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "1"

    aput-object v12, v10, v11

    invoke-virtual {p0, p1, v10}, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_ca

    .line 55
    const/4 v2, 0x0

    .line 56
    .local v2, isgyropoweron:Z
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mFeature:Ljava/lang/String;

    const-string v11, "INVENSENSE_MPU6050"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8e

    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mFeature:Ljava/lang/String;

    const-string v11, "INVENSENSE_MPU6051"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_96

    .line 57
    :cond_8e
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5c

    .line 59
    :cond_96
    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    sget v12, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_POWER:I

    aput v12, v10, v11

    iput-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mSensorID:[I

    .line 60
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mSensorID:[I

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([I)V

    .line 62
    const-string v10, "GYRO_SENSOR_POWER_ON"

    invoke-static {v10}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c0

    move v2, v8

    .line 64
    :goto_b6
    if-eqz v2, :cond_c2

    .line 65
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5c

    :cond_c0
    move v2, v9

    .line 62
    goto :goto_b6

    .line 67
    :cond_c2
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5c

    .line 75
    .end local v2           #isgyropoweron:Z
    :cond_ca
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "1"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "0"

    aput-object v10, v8, v9

    invoke-virtual {p0, p1, v8}, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14b

    .line 76
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v8}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 77
    const/4 v8, 0x1

    new-array v7, v8, [I

    const/4 v8, 0x0

    sget v9, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_TEMPERATURE:I

    aput v9, v7, v8

    .line 78
    .local v7, senserID:[I
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v8, v7}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([I)V

    .line 80
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v9, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_TEMPERATURE:I

    invoke-virtual {v8, v9}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v8

    if-eqz v8, :cond_13a

    .line 81
    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "handleCommand"

    const-string v10, "1,0 - Sensor On"

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v9, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_TEMPERATURE:I

    invoke-virtual {v8, v9}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, result:[Ljava/lang/String;
    if-eqz v5, :cond_129

    .line 84
    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "handleCommand"

    const-string v10, "1,0 - Temperature : OK"

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v8, 0x0

    aget-object v8, p1, v8

    const/4 v9, 0x2

    aget-object v9, v5, v9

    invoke-virtual {p0, v8, v9}, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .end local v5           #result:[Ljava/lang/String;
    :goto_11f
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v8}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V
    :try_end_124
    .catchall {:try_start_2a .. :try_end_124} :catchall_126

    goto/16 :goto_5c

    .line 30
    .end local v4           #resData:Ljava/lang/String;
    .end local v7           #senserID:[I
    :catchall_126
    move-exception v8

    monitor-exit p0

    throw v8

    .line 87
    .restart local v4       #resData:Ljava/lang/String;
    .restart local v5       #result:[Ljava/lang/String;
    .restart local v7       #senserID:[I
    :cond_129
    :try_start_129
    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "handleCommand"

    const-string v10, "1,0 - Temperature : NG (null)"

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_11f

    .line 91
    .end local v5           #result:[Ljava/lang/String;
    :cond_13a
    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "handleCommand"

    const-string v10, "1,0 - Temperature : NG (Sensor Off)"

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_11f

    .line 103
    .end local v7           #senserID:[I
    :cond_14b
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "1"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v8, v9

    invoke-virtual {p0, p1, v8}, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_244

    .line 104
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v8}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 105
    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mFeature:Ljava/lang/String;

    const-string v9, "INVENSENSE_MPU6050"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_177

    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mFeature:Ljava/lang/String;

    const-string v9, "INVENSENSE_MPU6051"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f1

    .line 106
    :cond_177
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    sget v10, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_SELF:I

    aput v10, v8, v9

    iput-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mSensorID:[I

    .line 112
    :cond_181
    :goto_181
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget-object v9, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mSensorID:[I

    invoke-virtual {v8, v9}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([I)V

    .line 114
    const/4 v5, 0x0

    .line 116
    .restart local v5       #result:[Ljava/lang/String;
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget-object v9, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mSensorID:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v8

    if-eqz v8, :cond_233

    .line 117
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget-object v9, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mSensorID:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v5

    .line 119
    if-eqz v5, :cond_222

    .line 120
    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "handleCommand"

    const-string v10, "1,1 - Test result : OK"

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v6, "NG"

    .line 122
    .local v6, returnValue:Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v5, v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_211

    const-string v6, "OK"

    .line 123
    :goto_1bb
    const-string v3, ""

    .line 124
    .local v3, mData:Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 127
    .local v1, index:I
    move-object v3, v6

    .line 129
    const/4 v0, 0x2

    .local v0, i:I
    :goto_1c6
    if-gt v0, v1, :cond_214

    .line 130
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c6

    .line 107
    .end local v0           #i:I
    .end local v1           #index:I
    .end local v3           #mData:Ljava/lang/String;
    .end local v5           #result:[Ljava/lang/String;
    .end local v6           #returnValue:Ljava/lang/String;
    :cond_1f1
    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mFeature:Ljava/lang/String;

    const-string v9, "STMICRO_SMARTPHONE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_205

    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mFeature:Ljava/lang/String;

    const-string v9, "STMICRO_TABLET"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_181

    .line 109
    :cond_205
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    sget v10, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_SELFTEST:I

    aput v10, v8, v9

    iput-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mSensorID:[I

    goto/16 :goto_181

    .line 122
    .restart local v5       #result:[Ljava/lang/String;
    .restart local v6       #returnValue:Ljava/lang/String;
    :cond_211
    const-string v6, "NG"

    goto :goto_1bb

    .line 135
    .restart local v0       #i:I
    .restart local v1       #index:I
    .restart local v3       #mData:Ljava/lang/String;
    :cond_214
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8, v3}, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    .end local v0           #i:I
    .end local v1           #index:I
    .end local v3           #mData:Ljava/lang/String;
    .end local v6           #returnValue:Ljava/lang/String;
    :goto_21b
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v8}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    goto/16 :goto_5c

    .line 137
    :cond_222
    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "handleCommand"

    const-string v10, "1,1 - Test result : NG (null)"

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_21b

    .line 141
    :cond_233
    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "handleCommand"

    const-string v10, "1,1 - Test result : NG (Sensor Off)"

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/sec/factory/aporiented/athandler/AtGyroscop;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_21b

    .line 147
    .end local v5           #result:[Ljava/lang/String;
    :cond_244
    const-string v4, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_246
    .catchall {:try_start_129 .. :try_end_246} :catchall_126

    goto/16 :goto_5c
.end method
